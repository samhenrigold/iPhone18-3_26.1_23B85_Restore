uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA020GlassAppearanceScaleD033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  v74[1] = *(a2 + 16);
  v74[2] = v5;
  v74[0] = *a2;
  v6 = WORD2(v5);
  if ((BYTE4(v5) & 0x20) == 0)
  {
    v7 = *(a2 + 48);
    v70 = *(a2 + 32);
    v71 = v7;
    v72 = *(a2 + 64);
    v73 = *(a2 + 80);
    v8 = *(a2 + 16);
    v68 = *a2;
    v69 = v8;
    return a3(a1, &v68);
  }

  LODWORD(v68) = a1;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(&v68, v74);
  v10 = v68;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v11 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  LODWORD(v11) = specialized CachedEnvironment.attribute<A>(id:_:)(v11, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  v12 = *(a2 + 16);
  v66 = *a2;
  v67 = v12;
  v50 = *(a2 + 32);
  v64 = *(a2 + 36);
  v65 = *(a2 + 52);
  v54 = *(a2 + 76);
  v13 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v13;
  v72 = *(a2 + 64);
  v73 = *(a2 + 80);
  v14 = *(a2 + 16);
  v68 = *a2;
  v69 = v14;
  outlined init with copy of _ViewInputs(a2, v61);
  v15 = CachedEnvironment.animatedCGSize(for:)(&v68);
  v16 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v16;
  v72 = *(a2 + 64);
  v73 = *(a2 + 80);
  v17 = *(a2 + 16);
  v68 = *a2;
  v69 = v17;
  v18 = CachedEnvironment.animatedPosition(for:)(&v68);
  swift_endAccess();
  v19 = *(a2 + 60);
  v47 = v11;
  v48 = v10;
  *&v68 = __PAIR64__(v15, v10);
  *(&v68 + 1) = __PAIR64__(v19, v18);
  LODWORD(v69) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for GeometryEffectTransform);
  lazy protocol witness table accessor for type GeometryEffectTransform<GlassAppearanceScaleEffect> and conformance GeometryEffectTransform<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v21 = *(swift_dynamicCastClassUnconditional() + 248);

  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v24 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v25 = specialized CachedEnvironment.attribute<A>(id:_:)(v24, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
  swift_endAccess();
  *&v68 = __PAIR64__(v23, v22);
  DWORD2(v68) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v27 = v50 | 0x1C;
  v61[0] = v66;
  v61[1] = v67;
  *&v62[4] = v64;
  *&v62[20] = v65;
  *v62 = v50 | 0x1C;
  *&v62[28] = v20;
  *v63 = v21;
  *&v63[4] = v21;
  *&v63[8] = v26;
  *&v63[12] = v54;
  *v59 = *v62;
  *&v59[16] = *&v62[16];
  *v60 = *v63;
  *&v60[16] = HIDWORD(v54);
  v57 = v66;
  v58 = v67;
  v28 = outlined init with copy of _ViewInputs(v61, &v68);
  (a3)(v55, v28, &v57);
  v70 = *v59;
  v71 = *&v59[16];
  v72 = *v60;
  v73 = *&v60[16];
  v68 = v57;
  v69 = v58;
  outlined destroy of _ViewInputs(&v68);
  v29 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  v30 = v54;
  if ((v29 & 1) == 0)
  {
    goto LABEL_17;
  }

  v53 = v20;
  v31 = ++lastIdentity;
  v51 = *&v74[0];
  if ((v6 & 0x100) == 0)
  {
    v32 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v33 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v33;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v34 = *(a2 + 16);
    v57 = *a2;
    v58 = v34;
    swift_beginAccess();
    v35 = CachedEnvironment.animatedPosition(for:)(&v57);
    v36 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v36;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v37 = *(a2 + 16);
    v57 = *a2;
    v58 = v37;
    v38 = CachedEnvironment.animatedCGSize(for:)(&v57);
    swift_endAccess();
    v39 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v55[0]);
    if ((v39 & 0x100000000) != 0)
    {
      v40 = v32;
    }

    else
    {
      v40 = v39;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v41 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v51, v57);
    if (v41)
    {
      v42 = *(v41 + 72);
    }

    else
    {
      v42 = 0;
    }

    v43 = *(a2 + 68);
    *&v57 = __PAIR64__(v48, v31);
    *(&v57 + 1) = __PAIR64__(v38, v35);
    *&v58 = __PAIR64__(v43, v47);
    DWORD2(v58) = v40;
    BYTE12(v58) = v42;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>(0);
    lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>);
    v44 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v57) = 0;
    PreferencesOutputs.subscript.setter(v44, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v30 = v54;
    v20 = v53;
LABEL_17:
    v57 = v66;
    v58 = v67;
    *v59 = v27;
    *&v59[4] = v64;
    *&v59[20] = v65;
    *&v59[28] = v20;
    *v60 = v21;
    *&v60[4] = v21;
    *&v60[8] = v26;
    *&v60[12] = v30;
    result = outlined destroy of _ViewInputs(&v57);
    *a4 = v55[0];
    a4[1] = v55[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*&v74[0], &v57);
  result = AGWeakAttributeGetAttribute();
  v32 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v56[0] = v31;
    v45 = Attribute<A>.subscript.modify(&v57, result);
    v46 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v56);
    (v45)(&v57, 0, v46);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *_s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010_TransformD0VG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n90VtFZAjA01_K0V_APtcfU0_AA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_pD4VTG5AKyAA0sT0VyAA01_jz1_T0VyAA04KickZ033_02B8A9C041E17C70E13F37D6E2D14302LLVGAVGGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = (a2 + 36);
  v5 = *(a2 + 36);
  if ((v5 & 0x20) != 0)
  {
    v45 = *a2;
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v9 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    LODWORD(v9) = specialized CachedEnvironment.attribute<A>(id:_:)(v9, closure #1 in _GraphInputs.layoutDirection.getter, 0);
    v10 = *(a2 + 16);
    v56 = *a2;
    v57 = v10;
    v47 = *(a2 + 32);
    v54 = *v6;
    v55 = *(v6 + 2);
    v48 = *(a2 + 76);
    v11 = *(a2 + 48);
    *v61 = *(a2 + 32);
    *&v61[16] = v11;
    *v62 = *(a2 + 64);
    *&v62[16] = *(a2 + 80);
    v12 = *(a2 + 16);
    v59 = *a2;
    v60 = v12;
    outlined init with copy of _ViewInputs(a2, &v50);
    v13 = CachedEnvironment.animatedCGSize(for:)(&v59);
    v14 = *(a2 + 48);
    *v61 = *(a2 + 32);
    *&v61[16] = v14;
    *v62 = *(a2 + 64);
    *&v62[16] = *(a2 + 80);
    v15 = *(a2 + 16);
    v59 = *a2;
    v60 = v15;
    v16 = CachedEnvironment.animatedPosition(for:)(&v59);
    swift_endAccess();
    v17 = *(a2 + 60);
    v43 = v9;
    v44 = a1;
    *&v59 = __PAIR64__(v13, a1);
    *(&v59 + 1) = __PAIR64__(v17, v16);
    LODWORD(v60) = v9;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<_TransformEffect>, lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect, &type metadata for _TransformEffect, type metadata accessor for GeometryEffectTransform);
    lazy protocol witness table accessor for type GeometryEffectTransform<_TransformEffect> and conformance GeometryEffectTransform<A>();
    v18 = Attribute.init<A>(body:value:flags:update:)();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v19 = *(swift_dynamicCastClassUnconditional() + 248);

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
    *&v59 = __PAIR64__(v21, v20);
    DWORD2(v59) = v23;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
    v24 = Attribute.init<A>(body:value:flags:update:)();
    v59 = v56;
    v60 = v57;
    *&v61[4] = v54;
    *&v61[20] = v55;
    *v61 = v47 | 0x1C;
    *&v61[28] = v18;
    *v62 = v19;
    *&v62[4] = v19;
    *&v62[8] = v24;
    *&v62[12] = v48;
    outlined init with copy of _ViewInputs(&v59, &v50);
    specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v59, v49);
    outlined destroy of _ViewInputs(&v59);
    v25 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
    v26 = v48;
    if (v25)
    {
      v27 = ++lastIdentity;
      v42 = v18;
      if ((v5 & 0x100) != 0)
      {
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v45, &v50);
        result = AGWeakAttributeGetAttribute();
        v28 = *MEMORY[0x1E698D3F8];
        if (result == *MEMORY[0x1E698D3F8])
        {
          __break(1u);
          return result;
        }

        v58[0] = v27;
        v40 = Attribute<A>.subscript.modify(&v50, result);
        v41 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v58);
        (v40)(&v50, 0, v41);
      }

      else
      {
        v28 = *MEMORY[0x1E698D3F8];
      }

      v29 = *(a2 + 48);
      *v52 = *(a2 + 32);
      *&v52[16] = v29;
      *v53 = *(a2 + 64);
      *&v53[16] = *(a2 + 80);
      v30 = *(a2 + 16);
      v50 = *a2;
      v51 = v30;
      swift_beginAccess();
      v31 = CachedEnvironment.animatedPosition(for:)(&v50);
      v32 = *(a2 + 48);
      *v52 = *(a2 + 32);
      *&v52[16] = v32;
      *v53 = *(a2 + 64);
      *&v53[16] = *(a2 + 80);
      v33 = *(a2 + 16);
      v50 = *a2;
      v51 = v33;
      v34 = CachedEnvironment.animatedCGSize(for:)(&v50);
      swift_endAccess();
      v35 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v49[0]);
      if ((v35 & 0x100000000) == 0)
      {
        v28 = v35;
      }

      BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
      v36 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v45, v50);
      if (v36)
      {
        v37 = *(v36 + 72);
      }

      else
      {
        v37 = 0;
      }

      v38 = *(a2 + 68);
      *&v50 = __PAIR64__(v44, v27);
      *(&v50 + 1) = __PAIR64__(v34, v31);
      *&v51 = __PAIR64__(v38, v43);
      DWORD2(v51) = v28;
      BYTE12(v51) = v37;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>(0);
      lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>);
      v39 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v50) = 0;
      PreferencesOutputs.subscript.setter(v39, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      v26 = v48;
      v18 = v42;
    }

    v50 = v56;
    v51 = v57;
    *v52 = v47 | 0x1C;
    *&v52[4] = v54;
    *&v52[20] = v55;
    *&v52[28] = v18;
    *v53 = v19;
    *&v53[4] = v19;
    *&v53[8] = v24;
    *&v53[12] = v26;
    result = outlined destroy of _ViewInputs(&v50);
    *a4 = v49[0];
    a4[1] = v49[1];
    return result;
  }

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a2, a4);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010_TransformD0VG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = (a2 + 36);
  v5 = *(a2 + 36);
  if ((v5 & 0x20) == 0)
  {
    v7 = *(a2 + 48);
    v67 = *(a2 + 32);
    v68 = v7;
    v69 = *(a2 + 64);
    v70 = *(a2 + 80);
    v8 = *(a2 + 16);
    v65 = *a2;
    v66 = v8;
    return a3(a1, &v65);
  }

  v10 = a1;
  v46 = *a2;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v11 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  LODWORD(v11) = specialized CachedEnvironment.attribute<A>(id:_:)(v11, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  v12 = *(a2 + 16);
  v63 = *a2;
  v64 = v12;
  v48 = *(a2 + 32);
  v61 = *v6;
  v62 = *(v6 + 2);
  v50 = *(a2 + 76);
  v13 = *(a2 + 48);
  v67 = *(a2 + 32);
  v68 = v13;
  v69 = *(a2 + 64);
  v70 = *(a2 + 80);
  v14 = *(a2 + 16);
  v65 = *a2;
  v66 = v14;
  outlined init with copy of _ViewInputs(a2, v58);
  v15 = CachedEnvironment.animatedCGSize(for:)(&v65);
  v16 = *(a2 + 48);
  v67 = *(a2 + 32);
  v68 = v16;
  v69 = *(a2 + 64);
  v70 = *(a2 + 80);
  v17 = *(a2 + 16);
  v65 = *a2;
  v66 = v17;
  v18 = CachedEnvironment.animatedPosition(for:)(&v65);
  swift_endAccess();
  v19 = *(a2 + 60);
  v44 = v11;
  v45 = v10;
  *&v65 = __PAIR64__(v15, v10);
  *(&v65 + 1) = __PAIR64__(v19, v18);
  LODWORD(v66) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<_TransformEffect>, lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect, &type metadata for _TransformEffect, type metadata accessor for GeometryEffectTransform);
  lazy protocol witness table accessor for type GeometryEffectTransform<_TransformEffect> and conformance GeometryEffectTransform<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v21 = *(swift_dynamicCastClassUnconditional() + 248);

  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v24 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v25 = specialized CachedEnvironment.attribute<A>(id:_:)(v24, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
  swift_endAccess();
  *&v65 = __PAIR64__(v23, v22);
  DWORD2(v65) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v27 = v48 | 0x1C;
  v58[0] = v63;
  v58[1] = v64;
  *&v59[4] = v61;
  *&v59[20] = v62;
  *v59 = v48 | 0x1C;
  v49 = v20;
  *&v59[28] = v20;
  *v60 = v21;
  *&v60[4] = v21;
  *&v60[8] = v26;
  *&v60[12] = v50;
  *v56 = *v59;
  *&v56[16] = *&v59[16];
  *v57 = *v60;
  *&v57[16] = HIDWORD(v50);
  v54 = v63;
  v55 = v64;
  v28 = outlined init with copy of _ViewInputs(v58, &v65);
  (a3)(v52, v28, &v54);
  v67 = *v56;
  v68 = *&v56[16];
  v69 = *v57;
  v70 = *&v57[16];
  v65 = v54;
  v66 = v55;
  outlined destroy of _ViewInputs(&v65);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v29 = ++lastIdentity;
  if ((v5 & 0x100) == 0)
  {
    v30 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v31 = *(a2 + 48);
    *v56 = *(a2 + 32);
    *&v56[16] = v31;
    *v57 = *(a2 + 64);
    *&v57[16] = *(a2 + 80);
    v32 = *(a2 + 16);
    v54 = *a2;
    v55 = v32;
    swift_beginAccess();
    v33 = CachedEnvironment.animatedPosition(for:)(&v54);
    v34 = *(a2 + 48);
    *v56 = *(a2 + 32);
    *&v56[16] = v34;
    *v57 = *(a2 + 64);
    *&v57[16] = *(a2 + 80);
    v35 = *(a2 + 16);
    v54 = *a2;
    v55 = v35;
    v36 = CachedEnvironment.animatedCGSize(for:)(&v54);
    swift_endAccess();
    v37 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v52[0]);
    if ((v37 & 0x100000000) == 0)
    {
      v30 = v37;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v38 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v46, v54);
    if (v38)
    {
      v39 = *(v38 + 72);
    }

    else
    {
      v39 = 0;
    }

    v40 = *(a2 + 68);
    *&v54 = __PAIR64__(v45, v29);
    *(&v54 + 1) = __PAIR64__(v36, v33);
    *&v55 = __PAIR64__(v40, v44);
    DWORD2(v55) = v30;
    BYTE12(v55) = v39;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>(0);
    lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>);
    v41 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v54) = 0;
    PreferencesOutputs.subscript.setter(v41, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_16:
    v54 = v63;
    v55 = v64;
    *v56 = v27;
    *&v56[4] = v61;
    *&v56[20] = v62;
    *&v56[28] = v49;
    *v57 = v21;
    *&v57[4] = v21;
    *&v57[8] = v26;
    *&v57[12] = v50;
    result = outlined destroy of _ViewInputs(&v54);
    *a4 = v52[0];
    a4[1] = v52[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v46, &v54);
  result = AGWeakAttributeGetAttribute();
  v30 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v53[0] = v29;
    v42 = Attribute<A>.subscript.modify(&v54, result);
    v43 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v53);
    (v42)(&v54, 0, v43);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t RoundedSize.init(position:size:pixelLength:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double RoundedSize.value.getter@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = Value[1];
  v3 = AGGraphGetValue();
  ViewFrame.roundCoordinatesToNearestOrUp(toMultipleOf:)(*v3);
  result = *&v5;
  *a1 = v5;
  a1[1] = v6;
  return result;
}

float64x2_t CGAffineTransform.flipRTL(width:)(double a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 8);
  *(v1 + 32) = a1 - *(v1 + 32) - *v1 * a1;
  *(v1 + 40) = v2 + a1 * v3.f64[0];
  result = vnegq_f64(v3);
  *(v1 + 8) = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _Rotation3DEffect@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA17_Rotation3DEffectV_Tt3B5(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _Rotation3DEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _TransformEffect@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010_TransformD0VG_Tt3B5(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _TransformEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance FlexStateModifier@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA17FlexStateModifier33_404CBE866CEDD57705E9BEB28E77402CLLVG_Tt3B5(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance FlexStateModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ScalePulseEffect@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B5(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ScalePulseEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _IgnoredByLayoutEffect<A>@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for _IgnoredByLayoutEffect<A>, a5);

  return static GeometryEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _IgnoredByLayoutEffect<A>(unsigned int *a1, __int128 *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  swift_getWitnessTable(protocol conformance descriptor for _IgnoredByLayoutEffect<A>, a5);

  return static GeometryEffect._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance GlassAppearanceScaleEffect@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA020GlassAppearanceScaleD033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt3B5(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassAppearanceScaleEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect()
{
  if (!lazy protocol witness table cache variable for type _TransformEffect and conformance _TransformEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _TransformEffect, &type metadata for _TransformEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _TransformEffect and conformance _TransformEffect);
  }
}

{
  if (!lazy protocol witness table cache variable for type _TransformEffect and conformance _TransformEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _TransformEffect, &type metadata for _TransformEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _TransformEffect and conformance _TransformEffect);
  }
}

void lazy protocol witness table accessor for type GeometryEffectTransform<_TransformEffect> and conformance GeometryEffectTransform<A>()
{
  if (!lazy protocol witness table cache variable for type GeometryEffectTransform<_TransformEffect> and conformance GeometryEffectTransform<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectTransform<_TransformEffect>, lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect, &type metadata for _TransformEffect, type metadata accessor for GeometryEffectTransform);
    swift_getWitnessTable(protocol conformance descriptor for GeometryEffectTransform<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GeometryEffectTransform<_TransformEffect> and conformance GeometryEffectTransform<A>);
  }
}

void type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<_TransformEffect>, lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect, &type metadata for _TransformEffect, type metadata accessor for DefaultGeometryEffectProvider);
    v3 = v2;
    lazy protocol witness table accessor for type DefaultGeometryEffectProvider<_TransformEffect> and conformance DefaultGeometryEffectProvider<A>();
    v6 = type metadata accessor for GeometryEffectDisplayList(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_TransformEffect>>);
    }
  }
}

void lazy protocol witness table accessor for type DefaultGeometryEffectProvider<_TransformEffect> and conformance DefaultGeometryEffectProvider<A>()
{
  if (!lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<_TransformEffect> and conformance DefaultGeometryEffectProvider<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<_TransformEffect>, lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect, &type metadata for _TransformEffect, type metadata accessor for DefaultGeometryEffectProvider);
    swift_getWitnessTable("8E\a", v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<_TransformEffect> and conformance DefaultGeometryEffectProvider<A>);
  }
}

void lazy protocol witness table accessor for type GeometryEffectTransform<_Rotation3DEffect> and conformance GeometryEffectTransform<A>()
{
  if (!lazy protocol witness table cache variable for type GeometryEffectTransform<_Rotation3DEffect> and conformance GeometryEffectTransform<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectTransform<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for GeometryEffectTransform);
    swift_getWitnessTable(protocol conformance descriptor for GeometryEffectTransform<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GeometryEffectTransform<_Rotation3DEffect> and conformance GeometryEffectTransform<A>);
  }
}

void lazy protocol witness table accessor for type GeometryEffectDisplayList<_Rotation3DEffect> and conformance GeometryEffectDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type GeometryEffectDisplayList<_Rotation3DEffect> and conformance GeometryEffectDisplayList<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectDisplayList<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for GeometryEffectDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for GeometryEffectDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GeometryEffectDisplayList<_Rotation3DEffect> and conformance GeometryEffectDisplayList<A>);
  }
}

uint64_t getEnumTagSinglePayload for GeometryEffectDisplayList(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 29))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GeometryEffectDisplayList(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
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

  *(result + 29) = v3;
  return result;
}

void lazy protocol witness table accessor for type GeometryEffectTransform<ScalePulseEffect> and conformance GeometryEffectTransform<A>()
{
  if (!lazy protocol witness table cache variable for type GeometryEffectTransform<ScalePulseEffect> and conformance GeometryEffectTransform<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectTransform<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for GeometryEffectTransform);
    swift_getWitnessTable(protocol conformance descriptor for GeometryEffectTransform<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GeometryEffectTransform<ScalePulseEffect> and conformance GeometryEffectTransform<A>);
  }
}

void type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for DefaultGeometryEffectProvider);
    v3 = v2;
    lazy protocol witness table accessor for type DefaultGeometryEffectProvider<ScalePulseEffect> and conformance DefaultGeometryEffectProvider<A>();
    v6 = type metadata accessor for GeometryEffectDisplayList(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>);
    }
  }
}

void lazy protocol witness table accessor for type DefaultGeometryEffectProvider<ScalePulseEffect> and conformance DefaultGeometryEffectProvider<A>()
{
  if (!lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<ScalePulseEffect> and conformance DefaultGeometryEffectProvider<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for DefaultGeometryEffectProvider);
    swift_getWitnessTable("8E\a", v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<ScalePulseEffect> and conformance DefaultGeometryEffectProvider<A>);
  }
}

void lazy protocol witness table accessor for type GeometryEffectTransform<GlassAppearanceScaleEffect> and conformance GeometryEffectTransform<A>()
{
  if (!lazy protocol witness table cache variable for type GeometryEffectTransform<GlassAppearanceScaleEffect> and conformance GeometryEffectTransform<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectTransform<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for GeometryEffectTransform);
    swift_getWitnessTable(protocol conformance descriptor for GeometryEffectTransform<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GeometryEffectTransform<GlassAppearanceScaleEffect> and conformance GeometryEffectTransform<A>);
  }
}

void type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for DefaultGeometryEffectProvider);
    v3 = v2;
    lazy protocol witness table accessor for type DefaultGeometryEffectProvider<GlassAppearanceScaleEffect> and conformance DefaultGeometryEffectProvider<A>();
    v6 = type metadata accessor for GeometryEffectDisplayList(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>);
    }
  }
}

void lazy protocol witness table accessor for type DefaultGeometryEffectProvider<GlassAppearanceScaleEffect> and conformance DefaultGeometryEffectProvider<A>()
{
  if (!lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<GlassAppearanceScaleEffect> and conformance DefaultGeometryEffectProvider<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for DefaultGeometryEffectProvider);
    swift_getWitnessTable("8E\a", v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<GlassAppearanceScaleEffect> and conformance DefaultGeometryEffectProvider<A>);
  }
}

void lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for GeometryEffectDisplayList<A>, v3);
    atomic_store(v4, a1);
  }
}

void lazy protocol witness table accessor for type FlexStateModifier and conformance FlexStateModifier()
{
  if (!lazy protocol witness table cache variable for type FlexStateModifier and conformance FlexStateModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for FlexStateModifier, &type metadata for FlexStateModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type FlexStateModifier and conformance FlexStateModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type FlexStateModifier and conformance FlexStateModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for FlexStateModifier, &type metadata for FlexStateModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type FlexStateModifier and conformance FlexStateModifier);
  }
}

void lazy protocol witness table accessor for type GeometryEffectTransform<FlexStateModifier> and conformance GeometryEffectTransform<A>()
{
  if (!lazy protocol witness table cache variable for type GeometryEffectTransform<FlexStateModifier> and conformance GeometryEffectTransform<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectTransform<FlexStateModifier>, lazy protocol witness table accessor for type FlexStateModifier and conformance FlexStateModifier, &type metadata for FlexStateModifier, type metadata accessor for GeometryEffectTransform);
    swift_getWitnessTable(protocol conformance descriptor for GeometryEffectTransform<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GeometryEffectTransform<FlexStateModifier> and conformance GeometryEffectTransform<A>);
  }
}

void type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<FlexStateModifier>, lazy protocol witness table accessor for type FlexStateModifier and conformance FlexStateModifier, &type metadata for FlexStateModifier, type metadata accessor for DefaultGeometryEffectProvider);
    v3 = v2;
    lazy protocol witness table accessor for type DefaultGeometryEffectProvider<FlexStateModifier> and conformance DefaultGeometryEffectProvider<A>();
    v6 = type metadata accessor for GeometryEffectDisplayList(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>);
    }
  }
}

void lazy protocol witness table accessor for type DefaultGeometryEffectProvider<FlexStateModifier> and conformance DefaultGeometryEffectProvider<A>()
{
  if (!lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<FlexStateModifier> and conformance DefaultGeometryEffectProvider<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<FlexStateModifier>, lazy protocol witness table accessor for type FlexStateModifier and conformance FlexStateModifier, &type metadata for FlexStateModifier, type metadata accessor for DefaultGeometryEffectProvider);
    swift_getWitnessTable("8E\a", v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<FlexStateModifier> and conformance DefaultGeometryEffectProvider<A>);
  }
}

void *static TimeDataFormatting.decode(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    type metadata accessor for AnyCodable<SafelyCodableRequirement>(0, v5, v6, v7);
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>, type metadata accessor for AnyCodable<SafelyCodableRequirement>, protocol conformance descriptor for AnyCodable<A>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    outlined init with copy of Decodable & Encodable(v23, v18);
    type metadata accessor for Decodable & Encodable();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SafelyCodableResolvable, &protocol descriptor for SafelyCodableResolvable);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(v16, v19);
      outlined init with take of AnyTrackedValue(v19, v20);
      v8 = v21;
      v9 = v22;
      v10 = __swift_project_boxed_opaque_existential_1(v20, v21);
      a2[3] = v8;
      a2[4] = *(v9 + 24);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
      outlined destroy of AnyCodable<SafelyCodableRequirement>(v23, type metadata accessor for AnyCodable<SafelyCodableRequirement>);
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      outlined destroy of _DisplayList_AnyEffectAnimator?(v16, &lazy cache variable for type metadata for SafelyCodableResolvable?, &lazy cache variable for type metadata for SafelyCodableResolvable, &protocol descriptor for SafelyCodableResolvable);
      v12 = type metadata accessor for DecodingError();
      swift_allocError();
      v14 = v13;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0, &lazy cache variable for type metadata for (@thick Any.Type, DecodingError.Context), type metadata accessor for @thick Any.Type, MEMORY[0x1E69E6B18]);
      outlined init with copy of Decodable & Encodable(v23, v18);
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v18);
      *v14 = DynamicType;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6AF8], v12);
      swift_willThrow();
      outlined destroy of AnyCodable<SafelyCodableRequirement>(v23, type metadata accessor for AnyCodable<SafelyCodableRequirement>);
    }

    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  return result;
}

void type metadata accessor for AnyCodable<SafelyCodableRequirement>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for AnyCodable<SafelyCodableRequirement>)
  {
    v4 = type metadata accessor for AnyCodable(0, &unk_1F0061960, &protocol witness table for SafelyCodableRequirement, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AnyCodable<SafelyCodableRequirement>);
    }
  }
}

uint64_t outlined init with copy of Decodable & Encodable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t type metadata accessor for Decodable & Encodable()
{
  result = lazy cache variable for type metadata for Decodable & Encodable;
  if (!lazy cache variable for type metadata for Decodable & Encodable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Decodable & Encodable);
  }

  return result;
}

uint64_t TimeDataFormatting.Resolvable.replacingFormat<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v26 = a6;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 16);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v7, v17, v19);
  (*(v13 + 16))(v15, a1, a3);
  v23 = *(v7 + *(a2 + 64));
  v24 = *(a2 + 32);
  default argument 3 of TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:sizeVariant:)(&v27);
  return TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:sizeVariant:)(v21, v15, &v27, v17, a3, v24, a4, a5, v26, v23);
}

uint64_t TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:sizeVariant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v16 = *a3;
  static TimeDataFormatting.Resolvable.makeResolvable(from:format:secondsUpdateFrequencyBudget:sizeVariant:)(a9, a1, a2, &v16, a4, a5, a6, a7, a10, a8);
  (*(*(a5 - 8) + 8))(a2, a5);
  v14 = *(*(a4 - 8) + 8);

  return v14(a1, a4);
}

uint64_t static TimeDataFormatting.Resolvable.makeResolvable(from:format:secondsUpdateFrequencyBudget:sizeVariant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v40 = a1;
  v37 = *(a6 - 8);
  v38 = a3;
  v39 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v34[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41[0] = v23;
  v41[1] = v24;
  v41[2] = v25;
  v41[3] = v26;
  v27 = type metadata accessor for TimeDataFormatting.Configuration(0, v41);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v34[-v28];
  v41[0] = *a4;
  v30 = v41[0];
  v31 = v38;
  v35 = static TimeDataFormatting.Configuration.makeConfiguration(from:format:sizeVariant:secondsUpdateFrequencyBudget:)(&v34[-v28], a2, a9, v38, v41, a5, a6, a7, a8);
  (*(v19 + 16))(v22, a2, a5);
  v32 = v36;
  (*(v37 + 16))(v36, v31, a6);
  v41[0] = v30;
  TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:configuration:sizeVariant:)(v22, v32, v29, v41, a5, a6, a7, a8, v40, a9, v39);
  return v35 & 1;
}

uint64_t TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:configuration:sizeVariant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v19 = *a4;
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a11;
  v20 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v24);
  (*(*(a6 - 8) + 32))(a9 + v20[15], a2, a6);
  *(a9 + v20[16]) = a10;
  v21 = v20[17];
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v22 = type metadata accessor for TimeDataFormatting.Configuration(0, &v24);
  result = (*(*(v22 - 8) + 32))(a9 + v21, a3, v22);
  *(a9 + v20[18]) = v19;
  return result;
}

uint64_t TimeDataFormatting.Resolvable.resolve(in:)@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v70 = type metadata accessor for Locale();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v64 - v7;
  v8 = *(a2 + 4);
  v9 = *(a2 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  v75 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v64 - v11;
  v13 = *(a2 + 5);
  v83 = a2;
  v14 = *(a2 + 3);
  v76 = swift_getAssociatedTypeWitness();
  v73 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v64 - v15;
  v16 = type metadata accessor for AttributedString();
  v78 = *(v16 - 8);
  v79 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v81 = *(v18 - 8);
  v82 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  v24 = a1;
  v25 = a1 + *(type metadata accessor for ResolvableStringResolutionContext(0) + 20);
  v26 = *v25;
  v68 = *(v25 + 8);
  v67 = v26;
  v27 = v9;
  if (v68)
  {

    v28 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v26);

    if ((v28 & 1) == 0)
    {
LABEL_7:
      v30 = v8;
      ResolvableStringResolutionContext.date.getter(v20);
      specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.0, 0.0333333333);
      static Date.+ infix(_:_:)();
      v32 = v20;
      v31 = v24;
      (*(v81 + 8))(v32, v82);
      v71 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v29 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(v26);
    if (!v29 || *(v29 + 72) != 1)
    {
      goto LABEL_7;
    }
  }

  v30 = v8;
  v31 = v24;
  ResolvableStringResolutionContext.date.getter(v23);
  v71 = 1;
LABEL_8:
  v33 = v27;
  *&v34 = v27;
  *(&v34 + 1) = v14;
  v35 = v83;
  *&v36 = v30;
  *(&v36 + 1) = v13;
  v86 = v34;
  v87 = v36;
  v37 = type metadata accessor for TimeDataFormatting.Configuration(0, &v86);
  TimeDataFormatting.Configuration.formatAndFrequency(for:)(&v86, &v85, v31, v37);
  v38 = v85;
  __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
  (*(v30 + 40))(v23, v27, v30);
  v39 = v72;
  dispatch thunk of FormatStyle.format(_:)();
  (*(v74 + 8))(v12, v75);
  v40 = v76;
  v41 = v77;
  (*(*(v35 + 6) + 8))(v76);
  (*(v73 + 8))(v39, v40);
  v42 = v23;
  if (v38 != 3)
  {
    v43 = *(&v87 + 1);
    v44 = v88;
    __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
    LOBYTE(v85) = v38;
    if (DiscreteFormatStyle.needsRedaction<A>(for:evaluating:at:)(&v85, v84, v23, v43, v33, v44, v30))
    {
      v45 = v23;
      LOBYTE(v85) = v38;
      if (v68)
      {

        v46 = v65;
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v67, v65);

        v48 = v70;
        v49 = v69;
      }

      else
      {
        v50 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v67);
        v48 = v70;
        v49 = v69;
        v46 = v65;
        if (v50)
        {
          (*(v69 + 16))(v65, &v50[*(*v50 + 248)], v70);
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v51 = __swift_project_value_buffer(v48, static LocaleKey.defaultValue);
          v47 = (*(v49 + 16))(v46, v51, v48);
        }
      }

      AttributedString.redact(for:locale:)(&v85, v46, v47);
      (*(v49 + 8))(v46, v48);
      v42 = v45;
    }
  }

  v52 = v79;
  v53 = v41;
  if (v40 != v79)
  {
    goto LABEL_27;
  }

  v54 = v42;
  v85 = 0x3FF0000000000000;
  if (v68)
  {

    v55 = v66;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v67, v66);

    v56 = v70;
    v57 = v69;
  }

  else
  {
    v58 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v67);
    v56 = v70;
    v57 = v69;
    v55 = v66;
    if (v58)
    {
      (*(v69 + 16))(v66, &v58[*(*v58 + 248)], v70);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v59 = __swift_project_value_buffer(v56, static LocaleKey.defaultValue);
      (*(v57 + 16))(v55, v59, v56);
    }
  }

  v60 = AttributedString.disableContentTransition(for:locale:)(&v85, v55);
  (*(v57 + 8))(v55, v56);
  v42 = v54;
  if ((v60 & 1) == 0)
  {
LABEL_27:
    v85 = 0x3FF0000000000000;
    TimeDataFormatting.Resolvable.disableContentTransition(on:for:date:isLuminanceReduced:)(v53, &v85, v42, v71, v83);
  }

  (*(v81 + 8))(v42, v82);
  v61 = v78;
  v62 = v80;
  (*(v78 + 32))(v80, v53, v52);
  (*(v61 + 56))(v62, 0, 1, v52);
  return __swift_destroy_boxed_opaque_existential_1(&v86);
}

BOOL DiscreteFormatStyle.needsRedaction<A>(for:evaluating:at:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a3;
  v13 = type metadata accessor for Date();
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v55[-v16];
  v68 = a6;
  v67 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55[-v22];
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v55[-v27];
  v33 = MEMORY[0x1EEE9AC00](v29);
  v35 = &v55[-v34];
  v36 = *a1;
  if (!v36)
  {
    return 0;
  }

  v59 = v32;
  v60 = v31;
  v61 = v30;
  v37 = *(a7 + 40);
  v38 = v66;
  v57 = a2;
  v58 = a5;
  v66 = a7;
  v37(v38, a5, a7, v33);
  dispatch thunk of DiscreteFormatStyle.discreteInput(after:)();
  v39 = *(v24 + 48);
  if (v39(v23, 1, AssociatedTypeWitness) == 1)
  {
    (*(v24 + 8))(v35, AssociatedTypeWitness);
    (*(v60 + 8))(v23, v61);
    return 0;
  }

  v56 = v36;
  v41 = v23;
  v42 = *(v24 + 32);
  v42(v28, v41, AssociatedTypeWitness);
  dispatch thunk of DiscreteFormatStyle.discreteInput(before:)();
  if (v39(v20, 1, AssociatedTypeWitness) == 1)
  {
    v43 = *(v24 + 8);
    v43(v28, AssociatedTypeWitness);
    v43(v35, AssociatedTypeWitness);
    (*(v60 + 8))(v20, v61);
    return 0;
  }

  v42(v59, v20, AssociatedTypeWitness);
  v44 = v66;
  v45 = *(v66 + 48);
  v46 = v58;
  v45(v28, v58, v66);
  v47 = v62;
  v45(v59, v46, v44);
  v48 = v65;
  Date.timeIntervalSince(_:)();
  v50 = v49;
  v51 = v64;
  v52 = *(v63 + 8);
  v52(v47, v64);
  v52(v48, v51);
  v53 = *(v24 + 8);
  v53(v59, AssociatedTypeWitness);
  v53(v28, AssociatedTypeWitness);
  v53(v35, AssociatedTypeWitness);
  v54 = 60.0;
  if (v56 != 2)
  {
    v54 = 1.0;
  }

  return v50 < v54;
}

void AttributedString.redact(for:locale:)(_BYTE *a1, uint64_t a2, double a3)
{
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0, a3);
  v164 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v163 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v161 = &v159 - v9;
  v167 = type metadata accessor for AttributedString.Index();
  v162 = *(v167 - 1);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v165 = &v159 - v12;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)(0, &lazy cache variable for type metadata for (Range<AttributedString.Index>, Calendar.Component.Magnitude?), type metadata accessor for Range<AttributedString.Index>, type metadata accessor for Calendar.Component.Magnitude?);
  v176 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v175 = &v159 - v15;
  type metadata accessor for Range<AttributedString.Index>(0, v14);
  v160 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v180 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v185 = &v159 - v19;
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)?, type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?));
  MEMORY[0x1EEE9AC00](v20 - 8);
  v177 = (&v159 - v21);
  type metadata accessor for (Calendar.Component.Magnitude, (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)(0);
  v182 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v181 = (&v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
  MEMORY[0x1EEE9AC00](v24 - 8);
  v178 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v173 = &v159 - v28;
  type metadata accessor for ReversedCollection<AttributedString.Runs>(0, v27);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v187 = (&v159 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ReversedCollection<AttributedString.Runs>.Iterator(0, v30);
  v172 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v179 = &v159 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for AttributedString.Runs.Run();
  v34 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v199 = &v159 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v192 = &v159 - v37;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v191 = &v159 - v40;
  type metadata accessor for IndexingIterator<AttributedString.Runs>(0, v39);
  v194 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v186 = &v159 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0]);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v184 = &v159 - v44;
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field?, MEMORY[0x1E69684A8]);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v159 - v46;
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v171 = &v159 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v193 = &v159 - v51;
  v52 = type metadata accessor for AttributedString.Runs.Index();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v159 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v159 - v57;
  v59 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v59);
  v188 = (&v159 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v61);
  v64 = *a1;
  if (*a1)
  {
    v159 = v47;
    v170 = v34;
    v183 = v64;
    v65 = (&v159 - v62);
    v189 = v63;
    AttributedString.runs.getter();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
    v198 = v3;
    v67 = v66;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v197 = v67;
    v68 = dispatch thunk of Collection.distance(from:to:)();
    v69 = *(v53 + 8);
    v69(v55, v52);
    v195 = v69;
    v196 = v53 + 8;
    v69(v58, v52);
    v70 = v189;
    v71 = *(v189 + 8);
    v190 = v65;
    v169 = v189 + 8;
    v168 = v71;
    v71(v65, v59);
    v72 = v68 == 1;
    v73 = v58;
    if (v72)
    {
      type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute();
      lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute, MEMORY[0x1E6968438], MEMORY[0x1E6968420]);
      v74 = v193;
      AttributedString.subscript.getter();
      v75 = type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component();
      v76 = (*(*(v75 - 8) + 48))(v74, 1, v75);
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v74, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
      if (v76 == 1)
      {
        lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute();
        v77 = v159;
        AttributedString.subscript.getter();
        v78 = type metadata accessor for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field();
        v79 = (*(*(v78 - 8) + 48))(v77, 1, v78);
        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v77, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field?, MEMORY[0x1E69684A8]);
        if (v79 == 1)
        {
          lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute();
          v80 = v184;
          AttributedString.subscript.getter();
          v81 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
          v82 = (*(*(v81 - 8) + 48))(v80, 1, v81);
          outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v80, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0]);
          if (v82 == 1)
          {
            v83 = v165;
            AttributedString.startIndex.getter();
            v84 = v166;
            AttributedString.endIndex.getter();
            lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
            v85 = v167;
            if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
            {
              __break(1u);
              return;
            }

            v86 = v162;
            v87 = *(v162 + 32);
            v88 = v161;
            v87(v161, v83, v85);
            v89 = v164;
            v87((v88 + *(v164 + 48)), v84, v85);
            v90 = v163;
            outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v88, v163, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
            v91 = *(v89 + 48);
            v92 = v185;
            v87(v185, v90, v85);
            v93 = *(v86 + 8);
            v93(v90 + v91, v85);
            outlined init with take of Range<AttributedString.Index>(v88, v90, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
            v87((v92 + *(v160 + 36)), (v90 + *(v89 + 48)), v85);
            v94 = v93(v90, v85);
            AttributedString.redactNumbers(in:)(v92, v94);
            v95 = type metadata accessor for Range<AttributedString.Index>;
            v96 = v92;
            goto LABEL_43;
          }
        }
      }
    }

    v97 = v188;
    AttributedString.runs.getter();
    v98 = *(v70 + 16);
    v189 = v70 + 16;
    v167 = v98;
    (v98)(v190, v97, v59);
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687D8]);
    v99 = v186;
    dispatch thunk of Sequence.makeIterator()();
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v193 = v100;
    v101 = dispatch thunk of static Equatable.== infix(_:_:)();
    v194 = v73;
    v184 = v52;
    v195(v73, v52);
    v102 = v200;
    v103 = v171;
    if (v101)
    {
LABEL_13:
      outlined destroy of AnyCodable<SafelyCodableRequirement>(v99, type metadata accessor for IndexingIterator<AttributedString.Runs>);
      v111 = v168;
      v168(v188, v59);
      LODWORD(v186) = 0;
    }

    else
    {
      v190 = (v170 + 16);
      v104 = (v170 + 8);
      while (1)
      {
        v105 = dispatch thunk of Collection.subscript.read();
        v106 = v191;
        (*v190)(v191);
        v105(v202, 0);
        dispatch thunk of Collection.formIndex(after:)();
        type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute();
        lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute, MEMORY[0x1E6968438], MEMORY[0x1E6968420]);
        AttributedString.Runs.Run.subscript.getter();
        (*v104)(v106, v102);
        v107 = type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component();
        if ((*(*(v107 - 8) + 48))(v103, 1, v107) != 1)
        {
          break;
        }

        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v103, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
        v108 = v194;
        dispatch thunk of Collection.endIndex.getter();
        v109 = v184;
        v110 = dispatch thunk of static Equatable.== infix(_:_:)();
        v195(v108, v109);
        if (v110)
        {
          goto LABEL_13;
        }
      }

      outlined destroy of AnyCodable<SafelyCodableRequirement>(v99, type metadata accessor for IndexingIterator<AttributedString.Runs>);
      v111 = v168;
      v168(v188, v59);
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v103, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
      LODWORD(v186) = 1;
    }

    v201 = 2;
    v112 = v187;
    AttributedString.runs.getter();
    v113 = v179;
    (v167)(v179, v112, v59);
    v114 = *(v172 + 36);
    dispatch thunk of Collection.endIndex.getter();
    v111(v112, v59);
    v115 = v114;
    v116 = v194;
    dispatch thunk of Collection.startIndex.getter();
    v117 = v184;
    v118 = dispatch thunk of static Equatable.== infix(_:_:)();
    v195(v116, v117);
    v119 = v177;
    v120 = v173;
    if (v118)
    {
LABEL_42:
      v95 = type metadata accessor for ReversedCollection<AttributedString.Runs>.Iterator;
      v96 = v113;
LABEL_43:
      outlined destroy of AnyCodable<SafelyCodableRequirement>(v96, v95);
      return;
    }

    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687D0]);
    v190 = v121;
    v188 = (v170 + 32);
    v189 = v170 + 16;
    v187 = (v170 + 8);
    v174 = a2;
    v191 = v115;
    while (1)
    {
      dispatch thunk of BidirectionalCollection.formIndex(before:)();
      v127 = v59;
      v128 = dispatch thunk of Collection.subscript.read();
      v129 = v192;
      v130 = v200;
      (*v189)(v192);
      v128(v202, 0);
      v131 = v199;
      (*v188)(v199, v129, v130);
      v132 = specialized getter of localeUsesDecimalSystem #1 in AttributedString.disableContentTransition(for:locale:)(&v201);
      v133 = v198;
      AttributedString.magnitude(of:locale:localeUsesDecimalSystem:)(v131, a2, v132 & 1, v119);
      type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)(0);
      v135 = v134;
      if ((*(*(v134 - 8) + 48))(v119, 1, v134) == 1)
      {
        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v119, &lazy cache variable for type metadata for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)?, type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?));
        v122 = a2;
        v123 = v185;
        AttributedString.Runs.Run.range.getter();
        redact #1 (_:) in AttributedString.redact(for:locale:)(v123, v186, v133);
        v124 = v123;
        a2 = v122;
        v117 = v184;
        outlined destroy of AnyCodable<SafelyCodableRequirement>(v124, type metadata accessor for Range<AttributedString.Index>);
        (*v187)(v131, v130);
        v59 = v127;
      }

      else
      {
        v136 = *(v135 + 48);
        v137 = v182;
        v138 = *(v182 + 48);
        v139 = v181;
        *v181 = *v119;
        outlined init with take of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v119 + v136, v139 + v138);
        v140 = *v139;
        outlined init with take of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v139 + *(v137 + 48), v120);
        if (v183)
        {
          v59 = v127;
          if (v183 == 1)
          {
            if (v140 < 1.0)
            {
              goto LABEL_23;
            }
          }

          else if (v140 < 60.0)
          {
LABEL_23:
            v141 = v185;
            v142 = v199;
            AttributedString.Runs.Run.range.getter();
            redact #1 (_:) in AttributedString.redact(for:locale:)(v141, v186, v198);
            outlined destroy of AnyCodable<SafelyCodableRequirement>(v141, type metadata accessor for Range<AttributedString.Index>);
            outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v120, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
            (*v187)(v142, v200);
            goto LABEL_18;
          }
        }

        else
        {
          v59 = v127;
          if (v140 < 0.0333333333)
          {
            goto LABEL_23;
          }
        }

        v143 = v120;
        v144 = v120;
        v145 = v178;
        outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v143, v178, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
        type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)(0, v146);
        v148 = v147;
        if ((*(*(v147 - 8) + 48))(v145, 1, v147) != 1)
        {
          v149 = v145 + *(v148 + 48);
          v150 = *v149;
          v151 = *(v149 + 8);
          v152 = v176;
          v153 = v175;
          v154 = v175 + *(v176 + 48);
          outlined init with take of Range<AttributedString.Index>(v145, v175, type metadata accessor for Range<AttributedString.Index>);
          *v154 = v150;
          *(v154 + 8) = v151;
          v155 = v153 + *(v152 + 48);
          v156 = *v155;
          v157 = *(v155 + 8);
          outlined init with take of Range<AttributedString.Index>(v153, v180, type metadata accessor for Range<AttributedString.Index>);
          v120 = v144;
          v113 = v179;
          if (v157 == 1)
          {
            if (one-time initialization token for zero != -1)
            {
              swift_once();
            }

            v156 = *&static Calendar.Component.Magnitude.zero;
          }

          if (v183)
          {
            v158 = v174;
            v119 = v177;
            v117 = v184;
            v59 = v127;
            if (v183 == 1)
            {
              if (v156 >= 1.0)
              {
                goto LABEL_39;
              }
            }

            else if (v156 >= 60.0)
            {
              goto LABEL_39;
            }

LABEL_38:
            redact #1 (_:) in AttributedString.redact(for:locale:)(v180, v186, v198);
          }

          else
          {
            v158 = v174;
            v119 = v177;
            v117 = v184;
            v59 = v127;
            if (v156 < 0.0333333333)
            {
              goto LABEL_38;
            }
          }

LABEL_39:
          outlined destroy of AnyCodable<SafelyCodableRequirement>(v180, type metadata accessor for Range<AttributedString.Index>);
          outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v120, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
          (*v187)(v199, v200);
          a2 = v158;
          goto LABEL_18;
        }

        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v144, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
        (*v187)(v199, v200);
        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v145, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
        v120 = v144;
        v113 = v179;
      }

LABEL_18:
      v125 = v194;
      dispatch thunk of Collection.startIndex.getter();
      v126 = dispatch thunk of static Equatable.== infix(_:_:)();
      v195(v125, v117);
      if (v126)
      {
        goto LABEL_42;
      }
    }
  }
}

uint64_t AttributedString.disableContentTransition(for:locale:)(double *a1, uint64_t a2)
{
  v80 = a2;
  v81 = a1;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)(0, &lazy cache variable for type metadata for (Range<AttributedString.Index>, Calendar.Component.Magnitude?), type metadata accessor for Range<AttributedString.Index>, type metadata accessor for Calendar.Component.Magnitude?);
  v70 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v66 = &v63 - v5;
  type metadata accessor for Range<AttributedString.Index>(0, v4);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v63 - v9;
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)?, type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?));
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v63 - v11);
  type metadata accessor for (Calendar.Component.Magnitude, (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)(0);
  v73 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v72 = (&v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
  MEMORY[0x1EEE9AC00](v15 - 8);
  v67 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v63 - v18;
  v19 = type metadata accessor for AttributedString.Runs.Index();
  v82 = *(v19 - 8);
  v83 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AttributedString.Runs.Run();
  v76 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v79 = &v63 - v26;
  v27 = type metadata accessor for AttributedString.Runs();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.Runs>(0, v29);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v81;
  v86[0] = 2;
  v81 = v2;
  AttributedString.runs.getter();
  (*(v28 + 16))(v34, v31, v27);
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  dispatch thunk of Collection.startIndex.getter();
  (*(v28 + 8))(v31, v27);
  LODWORD(v75) = 0;
  ++v82;
  v77 = (v76 + 4);
  v78 = (v76 + 2);
  ++v76;
LABEL_2:
  for (i = v12; ; outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(i, &lazy cache variable for type metadata for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)?, type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)))
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v37 = v83;
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v82)(v21, v37);
    if (v38)
    {
      break;
    }

    v39 = dispatch thunk of Collection.subscript.read();
    v40 = v79;
    (*v78)(v79);
    v39(v85, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v77)(v24, v40, v22);
    v41 = v80;
    v42 = specialized getter of localeUsesDecimalSystem #1 in AttributedString.disableContentTransition(for:locale:)(v86);
    v12 = i;
    AttributedString.magnitude(of:locale:localeUsesDecimalSystem:)(v24, v41, v42 & 1, i);
    type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)(0);
    v44 = v43;
    if ((*(*(v43 - 8) + 48))(i, 1, v43) != 1)
    {
      v45 = *(v44 + 48);
      v46 = v72;
      v47 = v73;
      v48 = *(v73 + 48);
      *v72 = *v12;
      outlined init with take of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v12 + v45, v46 + v48);
      v49 = *v46;
      v50 = v46 + *(v47 + 48);
      v51 = v74;
      outlined init with take of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v50, v74);
      if (v35 >= v49)
      {
        v56 = v68;
        AttributedString.Runs.Run.range.getter();
        lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
LABEL_10:
        v65 = AttributedString.subscript.modify();
        LODWORD(v75) = 1;
        v84 = 1;
        lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy();
        AttributedSubstring.subscript.setter();
        v65(v85, 0);
        outlined destroy of AnyCodable<SafelyCodableRequirement>(v56, type metadata accessor for Range<AttributedString.Index>);
        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v74, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
        (*v76)(v24, v22);
        goto LABEL_2;
      }

      v52 = v67;
      outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v51, v67, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
      type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)(0, v53);
      v55 = v54;
      if ((*(*(v54 - 8) + 48))(v52, 1, v54) == 1)
      {
        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v74, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
        (*v76)(v24, v22);
        outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v52, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
        goto LABEL_17;
      }

      v57 = v52 + *(v55 + 48);
      v75 = *v57;
      LODWORD(v65) = *(v57 + 8);
      v58 = v66;
      v64 = (v66 + *(v70 + 48));
      outlined init with take of Range<AttributedString.Index>(v52, v66, type metadata accessor for Range<AttributedString.Index>);
      v59 = v64;
      *v64 = v75;
      *(v59 + 8) = v65;
      v60 = v58 + *(v70 + 48);
      v61 = *v60;
      LODWORD(v75) = *(v60 + 8);
      outlined init with take of Range<AttributedString.Index>(v58, v69, type metadata accessor for Range<AttributedString.Index>);
      if (v75 == 1)
      {
        if (one-time initialization token for zero != -1)
        {
          swift_once();
        }

        v61 = *&static Calendar.Component.Magnitude.zero;
      }

      if (v35 >= v61)
      {
        lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
        v56 = v69;
        goto LABEL_10;
      }

      outlined destroy of AnyCodable<SafelyCodableRequirement>(v69, type metadata accessor for Range<AttributedString.Index>);
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v74, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
      (*v76)(v24, v22);
LABEL_17:
      LODWORD(v75) = 1;
      goto LABEL_2;
    }

    (*v76)(v24, v22);
  }

  outlined destroy of AnyCodable<SafelyCodableRequirement>(v34, type metadata accessor for IndexingIterator<AttributedString.Runs>);
  return v75 & 1;
}

uint64_t TimeDataFormatting.Resolvable.disableContentTransition(on:for:date:isLuminanceReduced:)(uint64_t a1, double *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v26 = a4;
  v27 = a3;
  v25[1] = a1;
  v28 = type metadata accessor for Date();
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - v14;
  v16 = *(a5 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  (*(v16 + 16))(v15, v6, a5, v18);
  (*(v16 + 56))(v15, 0, 1, a5);
  if ((*(v16 + 48))(v15, 1, a5) == 1)
  {
    return (*(v13 + 8))(v15, v12);
  }

  (*(v16 + 32))(v20, v15, a5);
  v30 = v26 & 1;
  swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>, a5);
  TimelineSchedule.nextEntry(after:mode:limit:)(v27, &v30, 60, 0, a5, v23, v11);
  Date.timeIntervalSince(_:)();
  if (v21 >= v24)
  {
    v29 = 1;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy();
    AttributedString.subscript.setter();
  }

  (*(v9 + 8))(v11, v28);
  return (*(v16 + 8))(v20, a5);
}

uint64_t TimeDataFormatting.Resolvable.schedule.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v3, a1);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, a1);
}

uint64_t TimeDataFormatting.Resolvable.sizeVariant(_:)(uint64_t result, void *a2, uint64_t a3)
{
  v4 = *(v3 + *(a3 + 72));
  if (__OFADD__(v4, *a2))
  {
    __break(1u);
  }

  else
  {
    v5 = *(a3 + 60);
    v6 = *(v3 + *(a3 + 64));
    v7 = v4 + *a2;
    return static TimeDataFormatting.Resolvable.makeResolvable(from:format:secondsUpdateFrequencyBudget:sizeVariant:)(result, v3, v3 + v5, &v7, *(a3 + 16), *(a3 + 24), *(a3 + 32), *(a3 + 40), v6, *(a3 + 48)) & 1;
  }

  return result;
}

uint64_t TimeDataFormatting.Resolvable.makePlatformAttributes(resolver:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v18 + 16))(&v28 - v19, v3 + *(v17 + 60), v11, v16);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for StyledFormatStyle, &protocol descriptor for StyledFormatStyle);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v30, v32);
    v28 = v14;
    v20 = v6;
    v21 = v33;
    v22 = v34;
    __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    (*(v22 + 16))(a1, v21, v22);
    v23 = v9;
    (*(v7 + 16))(v9, v3, v20);
    outlined init with copy of AnyTrackedValue(v32, v30);
    v24 = v28;
    swift_dynamicCast();
    v25 = *(v3 + *(a2 + 64));
    v26 = *(v3 + *(a2 + 72));
    (*(*(a2 - 8) + 8))(v3, a2);
    v29 = v26;
    TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:sizeVariant:)(v23, v24, &v29, v20, v11, *(a2 + 32), *(a2 + 40), *(a2 + 48), v3, v25);
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    return outlined destroy of _DisplayList_AnyEffectAnimator?(v30, &lazy cache variable for type metadata for StyledFormatStyle?, &lazy cache variable for type metadata for StyledFormatStyle, &protocol descriptor for StyledFormatStyle);
  }
}

BOOL static TimeDataFormatting.Resolvable.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (v16[0] = a3, v16[1] = a4, v16[2] = a5, v16[3] = a6, v16[4] = a7, v14 = type metadata accessor for TimeDataFormatting.Resolvable(0, v16), (dispatch thunk of static Equatable.== infix(_:_:)()) && *(a1 + v14[16]) == *(a2 + v14[16]) && (static TimeDataFormatting.Configuration.== infix(_:_:)(a1 + v14[17], a2 + v14[17], a3, a4, a5, a6))
  {
    return *(a1 + v14[18]) == *(a2 + v14[18]);
  }

  else
  {
    return 0;
  }
}

uint64_t TimeDataFormatting.Resolvable.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  dispatch thunk of Hashable.hash(into:)();
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  dispatch thunk of Hashable.hash(into:)();
  v9 = *(v2 + *(a2 + 64));
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v9);
  *&v10 = v5;
  *(&v10 + 1) = v7;
  *&v11 = v6;
  *(&v11 + 1) = v8;
  v15[0] = v10;
  v15[1] = v11;
  v12 = type metadata accessor for TimeDataFormatting.Configuration(0, v15);
  v13 = TimeDataFormatting.Configuration.hash(into:)(a1, v12);
  return MEMORY[0x193AC11A0](*(v2 + *(a2 + 72)), v13);
}

Swift::Int TimeDataFormatting.Resolvable.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  TimeDataFormatting.Resolvable.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeDataFormatting.Resolvable<A, B>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  TimeDataFormatting.Resolvable.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t static TimeDataFormatting.Resolvable.encode(_:to:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a7;
  v9 = type metadata accessor for TimeDataFormatting.Resolvable(0, v22);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-1] - v11;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  (*(v10 + 16))(v12, a1, v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>, v9);
  v15 = v14;
  swift_getWitnessTable("݆\ra@C\a", v9, WitnessTable);
  AnyCodable.init<A>(_:)(v12, v9, v15, v16, v22);
  __swift_mutable_project_boxed_opaque_existential_1(v23, v23[3]);
  type metadata accessor for AnyCodable<SafelyCodableRequirement>(0, v17, v18, v19);
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>, type metadata accessor for AnyCodable<SafelyCodableRequirement>, protocol conformance descriptor for AnyCodable<A>);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  outlined destroy of AnyCodable<SafelyCodableRequirement>(v22, type metadata accessor for AnyCodable<SafelyCodableRequirement>);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t TimeDataFormatting.Resolvable.representation(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v11 = *v10;
  v12 = *(v7 + 16);
  v12(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2, v8);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SafelyCodableResolvable, &protocol descriptor for SafelyCodableResolvable);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v17, v19);
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    LOBYTE(v17[0]) = v11;
    (*(v14 + 48))(v17, v13, v14);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    outlined destroy of _DisplayList_AnyEffectAnimator?(v17, &lazy cache variable for type metadata for SafelyCodableResolvable?, &lazy cache variable for type metadata for SafelyCodableResolvable, &protocol descriptor for SafelyCodableResolvable);
    a3[3] = a2;
    a3[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (v12)(boxed_opaque_existential_1, v4, a2);
  }
}

uint64_t AttributedString.magnitude(of:locale:localeUsesDecimalSystem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, double *a4@<X8>)
{
  v105 = a2;
  v98 = a3;
  v107 = a4;
  v5 = type metadata accessor for AttributedString.CharacterView();
  v93 = *(v5 - 8);
  v94 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for AttributedSubstring();
  v90 = *(v91 - 8);
  v7 = MEMORY[0x1EEE9AC00](v91);
  v89 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0, v7);
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v88 - v12;
  v13 = type metadata accessor for AttributedString.Index();
  v102 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0, v17);
  v108 = v20;
  v104 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v100 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v99 = &v88 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v103 = &v88 - v25;
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0]);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v88 - v27;
  v29 = type metadata accessor for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field?, MEMORY[0x1E69684A8]);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v88 - v34;
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v88 - v38;
  v40 = *(v16 + 56);
  v109 = v39;
  v40(v37);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute();
  AttributedString.Runs.Run.subscript.getter();
  if ((*(v30 + 48))(v35, 1, v29) != 1)
  {
    (*(v30 + 16))(v32, v35, v29);
    v45 = (*(v30 + 88))(v32, v29);
    if (v45 == *MEMORY[0x1E6968490])
    {
      v46 = 0x4122750000000000;
    }

    else if (v45 == *MEMORY[0x1E6968480])
    {
      v46 = 0x40F5180000000000;
    }

    else if (v45 == *MEMORY[0x1E6968488])
    {
      v46 = 0x40AC200000000000;
    }

    else if (v45 == *MEMORY[0x1E6968498])
    {
      v46 = 0x404E000000000000;
    }

    else
    {
      v47 = 1.0;
      if (v45 == *MEMORY[0x1E69684A0])
      {
        goto LABEL_14;
      }

      if (v45 == *MEMORY[0x1E6968470])
      {
        v47 = 0.000001;
        goto LABEL_14;
      }

      if (v45 == *MEMORY[0x1E6968478])
      {
        v47 = 0.001;
        goto LABEL_14;
      }

      if (v45 == *MEMORY[0x1E6968468])
      {
        v47 = 0.000000001;
        goto LABEL_14;
      }

      (*(v30 + 8))(v32, v29);
      v46 = 0x7FF0000000000000;
    }

    v47 = *&v46;
LABEL_14:
    (*(v30 + 8))(v35, v29);
    goto LABEL_15;
  }

  outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v35, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field?, MEMORY[0x1E69684A8]);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute();
  AttributedString.Runs.Run.subscript.getter();
  v41 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v28, 1, v41) == 1)
  {
    outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v28, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0]);
    outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v109, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
    type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)(0);
    return (*(*(v43 - 8) + 56))(v107, 1, 1, v43);
  }

  AttributeScopes.FoundationAttributes.DateFieldAttribute.Field.magnitude.getter(v110);
  v47 = v110[0];
  (*(v42 + 8))(v28, v41);
LABEL_15:
  v48 = v109;
  specialized getter of decimalSeparatorRange #1 in AttributedString.magnitude(of:locale:localeUsesDecimalSystem:)(v109, v105, v106, a1, v19);
  v49 = v108;
  if ((*(v104 + 48))(v19, 1, v108) == 1)
  {
    outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v48, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
    outlined destroy of AnyCodable<SafelyCodableRequirement>(v19, type metadata accessor for Range<AttributedString.Index>?);
    type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)(0);
    v51 = v50;
    v52 = *(v50 + 48);
    v53 = v107;
    *v107 = v47;
    type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)(0, v54);
    (*(*(v55 - 8) + 56))(v53 + v52, 1, 1, v55);
    v56 = *(*(v51 - 8) + 56);
    v57 = v53;
    return v56(v57, 0, 1, v51);
  }

  v58 = v19;
  v59 = v103;
  outlined init with take of Range<AttributedString.Index>(v58, v103, type metadata accessor for Range<AttributedString.Index>);
  v60 = *(v49 + 36);
  v61 = v100;
  AttributedString.Runs.Run.range.getter();
  v62 = v101;
  v63 = v102;
  v64 = *(v102 + 16);
  v64(v101, v61 + *(v49 + 36), v13);
  outlined destroy of AnyCodable<SafelyCodableRequirement>(v61, type metadata accessor for Range<AttributedString.Index>);
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v65 = v95;
    v64(v95, v59 + v60, v13);
    v66 = v97;
    v67 = *(v63 + 32);
    v67(v65 + *(v97 + 48), v62, v13);
    v68 = v96;
    outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v65, v96, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v69 = *(v66 + 48);
    v70 = v99;
    v67(v99, v68, v13);
    v71 = *(v63 + 8);
    v71(v68 + v69, v13);
    v72 = v108;
    outlined init with take of Range<AttributedString.Index>(v65, v68, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v67(v70 + *(v72 + 36), (v68 + *(v66 + 48)), v13);
    v71(v68, v13);
    if ((v98 & 1) == 0)
    {
      outlined destroy of AnyCodable<SafelyCodableRequirement>(v103, type metadata accessor for Range<AttributedString.Index>);
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v109, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
      type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)(0);
      v51 = v84;
      v78 = v107;
      v79 = v107 + *(v84 + 48);
      *v107 = v47;
      type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)(0, v85);
      v82 = v86;
      v87 = v79 + *(v86 + 48);
      outlined init with take of Range<AttributedString.Index>(v70, v79, type metadata accessor for Range<AttributedString.Index>);
      *v87 = 0;
      *(v87 + 8) = 1;
LABEL_25:
      (*(*(v82 - 8) + 56))(v79, 0, 1, v82);
      v56 = *(*(v51 - 8) + 56);
      v57 = v78;
      return v56(v57, 0, 1, v51);
    }

    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    v73 = v89;
    AttributedString.subscript.getter();
    v74 = v92;
    AttributedSubstring.characters.getter();
    (*(v90 + 8))(v73, v91);
    v75 = AttributedString.CharacterView._count.getter();
    (*(v93 + 8))(v74, v94);
    outlined destroy of AnyCodable<SafelyCodableRequirement>(v103, type metadata accessor for Range<AttributedString.Index>);
    result = outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v109, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
    if ((v75 & 0x8000000000000000) == 0)
    {
      v76 = v47;
      if (v75)
      {
        v76 = v47;
        do
        {
          v76 = v76 / 10.0;
          --v75;
        }

        while (v75);
      }

      type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)(0);
      v51 = v77;
      v78 = v107;
      v79 = v107 + *(v77 + 48);
      *v107 = v47;
      type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)(0, v80);
      v82 = v81;
      v83 = v79 + *(v81 + 48);
      outlined init with take of Range<AttributedString.Index>(v70, v79, type metadata accessor for Range<AttributedString.Index>);
      *v83 = v76;
      *(v83 + 8) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AttributedString.redactNumbers(in:)(uint64_t a1, double a2)
{
  v49 = a1;
  v3 = type metadata accessor for AttributedString.Index();
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = type metadata accessor for AttributedString.CharacterView();
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for AttributedSubstring();
  v12 = *(v45 - 1);
  MEMORY[0x1EEE9AC00](v45);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>(0, &lazy cache variable for type metadata for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>, MEMORY[0x1E69E6EA0]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  type metadata accessor for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>(0, &lazy cache variable for type metadata for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>.Iterator, MEMORY[0x1E69E6E98]);
  v48 = v18 - 8;
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v40 - v20;
  type metadata accessor for Range<AttributedString.Index>(0, v19);
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
  v49 = v2;
  AttributedString.subscript.getter();
  AttributedSubstring.characters.getter();
  (*(v12 + 8))(v14, v45);
  v22 = *(v9 + 16);
  v23 = v46;
  v22(v17, v11, v46);
  type metadata accessor for DefaultIndices<AttributedString.CharacterView>(0);
  v25 = v24;
  v44 = v24;
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968690]);
  dispatch thunk of Collection.startIndex.getter();
  v26 = *(v25 + 40);
  dispatch thunk of Collection.endIndex.getter();
  v27 = *(v47 + 8);
  v47 += 8;
  v45 = v27;
  v27(v11, v23);
  outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v17, v21, type metadata accessor for DefaultIndices<AttributedString.CharacterView>);
  v28 = *(v48 + 44);
  v29 = v40;
  v30 = *(v40 + 16);
  v48 = v40 + 16;
  v31 = v30;
  v30(&v21[v28], &v17[v26], v3);
  outlined destroy of AnyCodable<SafelyCodableRequirement>(v17, type metadata accessor for DefaultIndices<AttributedString.CharacterView>);
  v32 = *(v44 + 36);
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
  v43 = v33;
  v44 = v32;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968680]);
    v42 = v34;
    v35 = (v29 + 8);
    do
    {
      v36 = v46;
      dispatch thunk of BidirectionalCollection.formIndex(before:)();
      v31(v7, &v21[v28], v3);
      AttributedString.characters.getter();
      AttributedString.CharacterView.subscript.getter();
      v45(v11, v36);
      v37 = Character.isNumber.getter();

      if (v37)
      {
        v31(v41, v7, v3);
        v38 = AttributedString.characters.modify();
        AttributedString.CharacterView.subscript.setter();
        v38(v50, 0);
      }

      (*v35)(v7, v3);
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  }

  return outlined destroy of ReversedCollection<DefaultIndices<AttributedString.CharacterView>>.Iterator(v21);
}

uint64_t redact #1 (_:) in AttributedString.redact(for:locale:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?)(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v44 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v42 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v42 - v18;
  v20 = type metadata accessor for AttributedSubstring();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return AttributedString.redactNumbers(in:)(a1, v22);
  }

  type metadata accessor for Range<AttributedString.Index>(0, v22);
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
  v42[0] = a1;
  v42[1] = a3;
  AttributedString.subscript.getter();
  type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute();
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute, MEMORY[0x1E6968438], MEMORY[0x1E6968420]);
  AttributedSubstring.subscript.getter();
  (*(v21 + 8))(v24, v20);
  v26 = v45;
  v25 = v46;
  (*(v45 + 104))(v16, *MEMORY[0x1E69683F8], v46);
  (*(v26 + 56))(v16, 0, 1, v25);
  v27 = *(v9 + 48);
  v28 = MEMORY[0x1E6968400];
  outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v19, v11, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
  outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v16, &v11[v27], &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, v28);
  v29 = *(v26 + 48);
  if (v29(v11, 1, v25) != 1)
  {
    v33 = v26;
    v34 = v44;
    outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(v11, v44, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
    if (v29(&v11[v27], 1, v46) != 1)
    {
      v36 = &v11[v27];
      v37 = v43;
      v38 = v46;
      (*(v33 + 32))(v43, v36, v46);
      lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component, MEMORY[0x1E6968400], MEMORY[0x1E6968410]);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v33 + 8);
      v40(v37, v38);
      v41 = MEMORY[0x1E6968400];
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v16, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v19, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, v41);
      v40(v34, v38);
      result = outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v11, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, v41);
      if ((v39 & 1) == 0)
      {
        return result;
      }

      return AttributedString.redact(_:)(v42[0], v31);
    }

    v35 = MEMORY[0x1E6968400];
    outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v16, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
    outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v19, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, v35);
    (*(v33 + 8))(v34, v46);
    return outlined destroy of AnyCodable<SafelyCodableRequirement>(v11, type metadata accessor for (AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?));
  }

  v30 = MEMORY[0x1E6968400];
  outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v16, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
  outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v19, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, v30);
  if (v29(&v11[v27], 1, v46) != 1)
  {
    return outlined destroy of AnyCodable<SafelyCodableRequirement>(v11, type metadata accessor for (AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?));
  }

  outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v11, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
  return AttributedString.redact(_:)(v42[0], v31);
}

uint64_t AttributedString.redact(_:)(uint64_t a1, double a2)
{
  v44 = a1;
  v3 = type metadata accessor for AttributedString.Index();
  v41 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString.CharacterView();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for AttributedSubstring();
  v9 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>(0, &lazy cache variable for type metadata for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>, MEMORY[0x1E69E6EA0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - v13;
  type metadata accessor for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>(0, &lazy cache variable for type metadata for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>.Iterator, MEMORY[0x1E69E6E98]);
  v42 = v15 - 8;
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v39 - v17;
  type metadata accessor for Range<AttributedString.Index>(0, v16);
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
  v44 = v2;
  AttributedString.subscript.getter();
  AttributedSubstring.characters.getter();
  (*(v9 + 8))(v11, v40);
  v19 = v8;
  (*(v6 + 16))(v14, v8, v5);
  type metadata accessor for DefaultIndices<AttributedString.CharacterView>(0);
  v21 = v20;
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968690]);
  dispatch thunk of Collection.startIndex.getter();
  v22 = *(v21 + 40);
  v23 = v41;
  dispatch thunk of Collection.endIndex.getter();
  (*(v6 + 8))(v19, v5);
  outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v14, v18, type metadata accessor for DefaultIndices<AttributedString.CharacterView>);
  v24 = *(v42 + 44);
  v26 = *(v23 + 16);
  v25 = v23 + 16;
  v27 = &v14[v22];
  v28 = v26;
  v26(&v18[v24], v27, v3);
  outlined destroy of AnyCodable<SafelyCodableRequirement>(v14, type metadata accessor for DefaultIndices<AttributedString.CharacterView>);
  lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
  v30 = v29;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968680]);
    v41 = v31;
    v42 = v24;
    do
    {
      dispatch thunk of BidirectionalCollection.formIndex(before:)();
      v28(v43, &v18[v24], v3);
      v32 = v18;
      v33 = v30;
      v34 = v3;
      v35 = v28;
      v36 = v25;
      v37 = AttributedString.characters.modify();
      AttributedString.CharacterView.subscript.setter();
      v37(v45, 0);
      v25 = v36;
      v28 = v35;
      v3 = v34;
      v30 = v33;
      v18 = v32;
      v24 = v42;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  }

  return outlined destroy of ReversedCollection<DefaultIndices<AttributedString.CharacterView>>.Iterator(v18);
}

uint64_t specialized getter of localeUsesDecimalSystem #1 in AttributedString.disableContentTransition(for:locale:)(_BYTE *a1)
{
  v2 = type metadata accessor for Locale.NumberingSystem();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = *a1;
  if (v9 == 2)
  {
    Locale.numberingSystem.getter();
    MEMORY[0x193ABDAD0](1853120876, 0xE400000000000000);
    LOBYTE(v9) = MEMORY[0x193ABDAB0](v8, v5);
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
    swift_beginAccess();
    *a1 = v9 & 1;
  }

  return v9 & 1;
}

uint64_t specialized getter of decimalSeparatorRange #1 in AttributedString.magnitude(of:locale:localeUsesDecimalSystem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39[1] = a4;
  v42 = a3;
  v47 = a2;
  v52 = a5;
  v6 = type metadata accessor for AttributedString.CharacterView();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedSubstring();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0, v9);
  v51 = v12;
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v48 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v39 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v39 - v26;
  v50 = a1;
  outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(a1, v39 - v26, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
  v49 = v17;
  v28 = *(v17 + 48);
  if (v28(v27, 1, v16) == 1)
  {
    outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v27, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
    v29 = Locale.decimalSeparator.getter();
    if (v30)
    {
      v31 = v29;
      v32 = v30;
      AttributedString.Runs.Run.range.getter();
      lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
      AttributedString.subscript.getter();
      outlined destroy of AnyCodable<SafelyCodableRequirement>(v14, type metadata accessor for Range<AttributedString.Index>);
      v33 = v43;
      AttributedSubstring.characters.getter();
      (*(v40 + 8))(v11, v41);
      v53 = v31;
      v54 = v32;
      lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968680]);
      lazy protocol witness table accessor for type String and conformance String();
      v34 = v45;
      BidirectionalCollection<>.firstRange<A>(of:)();
      (*(v44 + 8))(v33, v34);
      v35 = *(v49 + 56);
      v35(v24, 0, 1, v16);

      if (v28(v24, 1, v16) != 1)
      {
        outlined init with take of Range<AttributedString.Index>(v24, v19, type metadata accessor for Range<AttributedString.Index>?);
LABEL_9:
        v36 = v48;
        outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v19, v48, type metadata accessor for Range<AttributedString.Index>?);
        v35(v36, 0, 1, v16);
        v37 = v50;
        swift_beginAccess();
        outlined assign with take of Range<AttributedString.Index>??(v36, v37);
        return outlined init with take of Range<AttributedString.Index>(v19, v52, type metadata accessor for Range<AttributedString.Index>?);
      }
    }

    else
    {
      v35 = *(v49 + 56);
      v35(v24, 1, 1, v16);
    }

    (*(v46 + 56))(v19, 1, 1, v51);
    if (v28(v24, 1, v16) != 1)
    {
      outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(v24, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
    }

    goto LABEL_9;
  }

  v19 = v27;
  return outlined init with take of Range<AttributedString.Index>(v19, v52, type metadata accessor for Range<AttributedString.Index>?);
}

double TimeDataFormattingContainer.init(resolvable:)@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SafelyCodableResolvable, &protocol descriptor for SafelyCodableResolvable);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v5, v7);
    outlined init with take of AnyTrackedValue(v7, v8);
    result = *v8;
    v4 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v4;
    *(a2 + 32) = v9;
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    outlined destroy of _DisplayList_AnyEffectAnimator?(v5, &lazy cache variable for type metadata for SafelyCodableResolvable?, &lazy cache variable for type metadata for SafelyCodableResolvable, &protocol descriptor for SafelyCodableResolvable);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t TimeDataFormattingContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  static TimeDataFormatting.decode(from:)(a1, v16);
  if (!v2)
  {
    outlined init with copy of ResolvableStringAttribute?(v16, v10);
    if (v11)
    {
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SafelyCodableResolvable, &protocol descriptor for SafelyCodableResolvable);
      if (swift_dynamicCast())
      {
        if (*(&v13 + 1))
        {
          outlined destroy of _DisplayList_AnyEffectAnimator?(v16, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
          outlined init with take of AnyTrackedValue(&v12, v15);
          outlined init with take of AnyTrackedValue(v15, v17);
          v5 = v17[1];
          *a2 = v17[0];
          *(a2 + 16) = v5;
          *(a2 + 32) = v18;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }

      else
      {
        v14 = 0;
        v12 = 0u;
        v13 = 0u;
      }
    }

    else
    {
      outlined destroy of _DisplayList_AnyEffectAnimator?(v10, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
    }

    outlined destroy of _DisplayList_AnyEffectAnimator?(&v12, &lazy cache variable for type metadata for SafelyCodableResolvable?, &lazy cache variable for type metadata for SafelyCodableResolvable, &protocol descriptor for SafelyCodableResolvable);
    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v8 = v7;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0, &lazy cache variable for type metadata for (@thick Any.Type, DecodingError.Context), type metadata accessor for @thick Any.Type, MEMORY[0x1E69E6B18]);
    *v8 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SafelyCodableResolvable, &protocol descriptor for SafelyCodableResolvable);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6AF8], v6);
    swift_willThrow();
    outlined destroy of _DisplayList_AnyEffectAnimator?(v16, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TimeDataFormattingContainer.encode(to:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 40))(a1, v3, v4);
}

uint64_t TimeDataFormattingContainer.text.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t TimeDataFormattingContainer.representation(for:)(char *a1)
{
  v2 = *a1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v6 = v2;
  return (*(*(*(v4 + 24) + 16) + 32))(&v6, v3);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TimeDataFormattingContainer(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 40))(a1, v3, v4);
}

uint64_t TimeDataFormatting.Resolvable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v39 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v36 - v9;
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v44 = v14;
  v45 = &v36 - v15;
  v49[0] = v16;
  v49[1] = v17;
  v49[2] = v14;
  v49[3] = v18;
  v40 = v18;
  v38 = v19;
  v49[4] = v19;
  v20 = type metadata accessor for TimeDataFormatting.Resolvable.CodingKeys(255, v49);
  swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>.CodingKeys, v20);
  v47 = type metadata accessor for KeyedDecodingContainer();
  v21 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v23 = &v36 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v46 = v23;
  v24 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    v25 = v42;
    v26 = v43;
    v48 = v21;
    v27 = v41;
    LOBYTE(v49[0]) = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v49[0]) = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v49[0]) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v28 = v27;
    v29 = v26;
    v30 = v45;
    v32 = v31;
    (*(v27 + 16))(v29, v45, a2);
    v33 = v39;
    v34 = v36;
    (*(v39 + 16))(v36, v25, a3);
    v49[0] = 0;
    TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:sizeVariant:)(v43, v34, v49, a2, a3, v44, v40, v38, v37, v32);
    (*(v33 + 8))(v25, a3);
    (*(v28 + 8))(v30, a2);
    (*(v48 + 8))(v46, v47);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TimeDataFormatting.Resolvable.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v15 = *(a2 + 16);
  v16[0] = v15;
  v4 = *(a2 + 32);
  v13 = v3;
  v14 = v4;
  v16[1] = v3;
  v16[2] = v4;
  *v12 = *(a2 + 40);
  v17 = *v12;
  v5 = type metadata accessor for TimeDataFormatting.Resolvable.CodingKeys(255, v16);
  swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>.CodingKeys, v5);
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16[0]) = 0;
  v10 = v18;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v10)
  {
    LOBYTE(v16[0]) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t TimeDataFormatting.Resolvable.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TimeDataFormatting.Resolvable.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>.CodingKeys, a3);
  v8 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, v6, v8, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys(uint64_t a1, uint64_t a2)
{
  v5.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>.CodingKeys, a1);
  v6 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, v4, v6, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>.CodingKeys);
  v8 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, v6, v8, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>.CodingKeys);
  v8 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, v6, v8, v7);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v5._countAndFlagsBits = *a1;
  v5._object = v3;
  result = TimeDataFormatting.Resolvable.CodingKeys.init(rawValue:)(v5);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18D3A7A28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = TimeDataFormatting.Resolvable.CodingKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys@<X0>(_BYTE *a2@<X8>)
{
  result = specialized TimeDataFormatting.Resolvable.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataFormatting.Resolvable<A, B>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static SafelyCodableRequirement.checkedCodableType<A>(_:)(uint64_t a1)
{
  v2 = swift_conformsToProtocol2();
  result = 0;
  if (v2)
  {
    if (a1)
    {
      return a1;
    }
  }

  return result;
}

void specialized static BinaryFloatingPoint<>.random<A>(in:using:)(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x193AC4840](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(a1, a2);
  }
}

void type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (lower: AttributedString.Index, upper: AttributedString.Index))
  {
    type metadata accessor for AttributedString.Index();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (lower: AttributedString.Index, upper: AttributedString.Index));
    }
  }
}

void type metadata accessor for (@thick Any.Type, DecodingError.Context)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void type metadata accessor for Range<AttributedString.Index>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for Range<AttributedString.Index>)
  {
    type metadata accessor for AttributedString.Index();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v2 = type metadata accessor for Range();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for Range<AttributedString.Index>);
    }
  }
}

void lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for Calendar.Component.Magnitude?()
{
  if (!lazy cache variable for type metadata for Calendar.Component.Magnitude?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Calendar.Component.Magnitude?);
    }
  }
}

void type metadata accessor for Range<AttributedString.Index>??(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata accessor for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?))
  {
    type metadata accessor for Range<AttributedString.Index>??(255, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (general: Calendar.Component.Magnitude, fractionals: (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?));
    }
  }
}

void type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?))
  {
    type metadata accessor for Range<AttributedString.Index>(255, a2);
    type metadata accessor for Calendar.Component.Magnitude?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
    }
  }
}

void type metadata accessor for (Calendar.Component.Magnitude, (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Calendar.Component.Magnitude, (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?))
  {
    type metadata accessor for Range<AttributedString.Index>??(255, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Calendar.Component.Magnitude, (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?));
    }
  }
}

void type metadata accessor for ReversedCollection<AttributedString.Runs>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ReversedCollection<AttributedString.Runs>)
  {
    type metadata accessor for AttributedString.Runs();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687D0]);
    v2 = type metadata accessor for ReversedCollection();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ReversedCollection<AttributedString.Runs>);
    }
  }
}

void type metadata accessor for ReversedCollection<AttributedString.Runs>.Iterator(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ReversedCollection<AttributedString.Runs>.Iterator)
  {
    type metadata accessor for AttributedString.Runs();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687D0]);
    v2 = type metadata accessor for ReversedCollection.Iterator();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ReversedCollection<AttributedString.Runs>.Iterator);
    }
  }
}

void type metadata accessor for IndexingIterator<AttributedString.Runs>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for IndexingIterator<AttributedString.Runs>)
  {
    type metadata accessor for AttributedString.Runs();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
    v2 = type metadata accessor for IndexingIterator();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for IndexingIterator<AttributedString.Runs>);
    }
  }
}

uint64_t outlined destroy of AnyCodable<SafelyCodableRequirement>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?, type metadata accessor for (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?));
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute)
  {
    swift_getWitnessTable(MEMORY[0x1E69684B8], MEMORY[0x1E69684C0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute)
  {
    swift_getWitnessTable(MEMORY[0x1E69685D8], MEMORY[0x1E69685F0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute)
  {
    swift_getWitnessTable(MEMORY[0x1E69685E0], MEMORY[0x1E69685F0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute)
  {
    swift_getWitnessTable(MEMORY[0x1E69685E8], MEMORY[0x1E69685F0], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute);
  }
}

uint64_t outlined init with take of Range<AttributedString.Index>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ResolvableStringAttribute?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollStateRequest?(0, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void instantiation function for generic protocol witness table for <> TimeDataFormatting.Resolvable<A, B>(void *a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>);
  a1[1] = v5;
  v6 = swift_getWitnessTable("݆\ra@C\a", a2, WitnessTable);
  a1[2] = v7;
  swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>, a2, v6);
  a1[3] = v8;
}

uint64_t type metadata completion function for TimeDataFormatting.Resolvable(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    v10 = *(result - 8) + 64;
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = MEMORY[0x1E69E5D08] + 64;
      v11 = *(result - 8) + 64;
      v12 = MEMORY[0x1E69E5D08] + 64;
      v8[0] = v4;
      v8[1] = result;
      v9 = *(a1 + 32);
      result = type metadata accessor for TimeDataFormatting.Configuration(319, v8);
      if (v7 <= 0x3F)
      {
        v13 = *(result - 8) + 64;
        v14 = v6;
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TimeDataFormatting.Resolvable(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  v9 = v6 + v8;
  v10 = (v6 + v8) & ~v8;
  v11 = *(v7 + 64);
  v12 = *(v5 + 80);
  v13 = v12 & 0xF8 | 7;
  v14 = v6 + 7;
  v15 = (((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((((-8 - v11 - v10) | 7) - v13 - 8) | v13) - v15 - 48;
  if ((v13 | v8) == 7 && ((v12 | *(v7 + 80)) & 0x100000) == 0 && v16 >= 0xFFFFFFFFFFFFFFE7)
  {
    v21 = ~v8;
    v37 = *(a3 + 16);
    v38 = v15 + 40;
    v22 = *(v5 + 16);
    v22(a1, a2, v37);
    v39 = a1;
    v24 = (a1 + v9) & v21;
    v25 = (a2 + v9) & v21;
    (*(v7 + 16))(v24, v25, v4);
    *((v24 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v25 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    v26 = v24 + v11 + 15;
    v27 = v25 + v11 + 15;
    v22((v26 & 0xFFFFFFFFFFFFFFF8), (v27 & 0xFFFFFFFFFFFFFFF8), v37);
    v28 = (v14 + (v26 & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v14 + (v27 & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFF8;
    v30 = *(v29 + 24);
    *(v28 + 24) = v30;
    *(v28 + 32) = *(v29 + 32);
    (**(v30 - 8))(v28, v29);
    v31 = (v28 + 47) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v29 + 47) & 0xFFFFFFFFFFFFFFF8;
    v33 = *(v32 + 24);
    if (v33 < 0xFFFFFFFF)
    {
      v34 = *v32;
      v35 = *(v32 + 16);
      *(v31 + 32) = *(v32 + 32);
      *v31 = v34;
      *(v31 + 16) = v35;
    }

    else
    {
      *(v31 + 24) = v33;
      *(v31 + 32) = *(v32 + 32);
      (**(v33 - 8))();
    }

    v20 = v39;
    *((v26 + v38) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v38) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v19 = *a2;
    *a1 = *a2;
    v20 = (v19 + (((v13 | v8) + 16) & ~(v13 | v8)));
  }

  return v20;
}

void *destroy for TimeDataFormatting.Resolvable(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(a1, v4);
  v7 = *(v5 + 64);
  v8 = v7 + a1;
  v9 = *(*(a2 + 24) - 8);
  v10 = v9 + 8;
  v11 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  (*(v9 + 8))(v11);
  v12 = *(v5 + 80) & 0xF8 | 7;
  v13 = (((*(v10 + 56) + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
  v6(v13, v4);
  v14 = ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  __swift_destroy_boxed_opaque_existential_1(v14);
  result = ((v14 + 47) & 0xFFFFFFFFFFFFFFF8);
  if (result[3] >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t initializeWithCopy for TimeDataFormatting.Resolvable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 16))(v13, v14);
  v15 = *(v11 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = *(v7 + 80) & 0xF8;
  v19 = v18 + 15;
  v20 = v16 + v18 + 15;
  v21 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 & v21;
  v23 = (v17 + v19) & v21;
  v8(v20 & v21, v23, v6);
  v24 = (v9 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v9 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 24);
  *(v24 + 24) = v26;
  *(v24 + 32) = *(v25 + 32);
  (**(v26 - 8))(v24, v25);
  v27 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v28 + 24);
  if (v29 < 0xFFFFFFFF)
  {
    v30 = *v28;
    v31 = *(v28 + 16);
    *(v27 + 32) = *(v28 + 32);
    *v27 = v30;
    *(v27 + 16) = v31;
  }

  else
  {
    *(v27 + 24) = v29;
    *(v27 + 32) = *(v28 + 32);
    (**(v29 - 8))();
  }

  v32 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(v22 + v32) = *(v23 + v32);
  return a1;
}

uint64_t assignWithCopy for TimeDataFormatting.Resolvable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 24);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 24))(v13, v14);
  v15 = *(v11 + 40) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = *(v7 + 80) & 0xF8;
  v19 = v18 + 15;
  v20 = v16 + v18 + 15;
  v21 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 & v21;
  v23 = (v17 + v19) & v21;
  v24.n128_f64[0] = v8(v20 & v21, v23, v6);
  v25 = ((v9 + 7 + v23) & 0xFFFFFFFFFFFFFFF8);
  v26.n128_f64[0] = __swift_assign_boxed_opaque_existential_1(((v9 + 7 + v22) & 0xFFFFFFFFFFFFFFF8), v25, v24);
  v27 = (((v9 + 7 + v22) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v28 + 24);
  if (*(v27 + 24) < 0xFFFFFFFFuLL)
  {
    if (v29 < 0xFFFFFFFF)
    {
      v33 = *v28;
      v34 = *(v28 + 16);
      *(v27 + 32) = *(v28 + 32);
      *v27 = v33;
      *(v27 + 16) = v34;
    }

    else
    {
      *(v27 + 24) = v29;
      *(v27 + 32) = *(v28 + 32);
      (**(v29 - 8))(v26.n128_f64[0]);
    }
  }

  else if (v29 < 0xFFFFFFFF)
  {
    v30 = (((v9 + 7 + v22) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
    __swift_destroy_boxed_opaque_existential_1(v27);
    v31 = *v28;
    v32 = *(v28 + 16);
    *(v30 + 32) = *(v28 + 32);
    *v30 = v31;
    *(v30 + 16) = v32;
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1(v27, ((v25 + 47) & 0xFFFFFFFFFFFFFFF8), v26);
  }

  v35 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(v22 + v35) = *(v23 + v35);
  return a1;
}

uint64_t initializeWithTake for TimeDataFormatting.Resolvable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 32);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 32))(v13, v14);
  v15 = *(v11 + 32) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = *(v7 + 80) & 0xF8;
  v19 = v18 + 15;
  v20 = v16 + v18 + 15;
  v21 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 & v21;
  v23 = (v17 + v19) & v21;
  v8(v20 & v21, v23, v6);
  v24 = (v9 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v9 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 32);
  v27 = *(v25 + 16);
  *v24 = *v25;
  *(v24 + 16) = v27;
  *(v24 + 32) = v26;
  v28 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v29;
  v30 = *(v29 + 16);
  *(v28 + 32) = *(v29 + 32);
  *v28 = v31;
  *(v28 + 16) = v30;
  v32 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(v22 + v32) = *(v23 + v32);
  return a1;
}

uint64_t assignWithTake for TimeDataFormatting.Resolvable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 40);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = *(v7 + 80) & 0xF8;
  v19 = v18 + 15;
  v20 = v16 + v18 + 15;
  v21 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 & v21;
  v23 = (v17 + v19) & v21;
  v8(v20 & v21, v23, v6);
  v24 = (v9 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v9 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v24);
  v26 = *v25;
  v27 = *(v25 + 16);
  *(v24 + 32) = *(v25 + 32);
  *v24 = v26;
  *(v24 + 16) = v27;
  v28 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (*(v28 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v29 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v31 = *(v29 + 16);
  *(v28 + 32) = *(v29 + 32);
  *v28 = v30;
  *(v28 + 16) = v31;
  v32 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  *(v22 + v32) = *(v23 + v32);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimeDataFormatting.Resolvable(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v10 + v11;
  v15 = *(*(v7 - 8) + 64) + 7;
  v16 = *(v5 + 80) & 0xF8 | 7;
  v17 = v10 + 7;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v18 = (((v17 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + ((v16 + ((v15 + (v14 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + 48;
  v19 = a2 - v13;
  v20 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = v19 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = *(a1 + v18);
    if (!v24)
    {
      goto LABEL_30;
    }

LABEL_27:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v13 + (v27 | v26) + 1;
  }

  if (v23 == 2)
  {
    v24 = *(a1 + v18);
    if (v24)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v24 = *(a1 + v18);
    if (v24)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v6 == v13)
  {
LABEL_31:
    v28 = *(v5 + 48);

    return v28(a1);
  }

  v29 = (a1 + v14) & ~v11;
  if (v9 >= v12)
  {
    v31 = *(v8 + 48);

    return v31(v29, v9, v7);
  }

  else
  {
    a1 = ((((v15 + v29) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16);
    if (v6 >= 0x7FFFFFFF)
    {
      goto LABEL_31;
    }

    v30 = *(((a1 + v17) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    return (v30 + 1);
  }
}

void storeEnumTagSinglePayload for TimeDataFormatting.Resolvable(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = v12;
  }

  v14 = v9 + v10;
  v15 = v11 + 7;
  v16 = *(v5 + 80) & 0xF8 | 7;
  v17 = (v16 + ((v11 + 7 + ((v9 + v10) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16;
  v18 = v9 + 7;
  v19 = (((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = v19 + v17 + 48;
  if (v13 >= a3)
  {
    v24 = 0;
    v25 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v20)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    if (v20)
    {
      v27 = ~v13 + a2;
      v28 = a1;
      bzero(a1, v20);
      a1 = v28;
      *v28 = v27;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v20) = v26;
      }

      else
      {
        *(a1 + v20) = v26;
      }
    }

    else if (v24)
    {
      *(a1 + v20) = v26;
    }

    return;
  }

  v21 = a3 - v13;
  if (v19 + v17 == -48)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 2;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = a2 - v13;
  if (a2 > v13)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v20) = 0;
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v24)
  {
    goto LABEL_35;
  }

  *(a1 + v20) = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v6 == v13)
  {
    v29 = *(v5 + 56);
LABEL_38:

    v29();
    return;
  }

  v30 = (a1 + v14) & ~v10;
  if (v8 >= v12)
  {
    v33 = *(v7 + 56);

    v33(v30);
  }

  else
  {
    v31 = ((((v15 + v30) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16);
    if (v12 >= a2)
    {
      if (v6 < 0x7FFFFFFF)
      {
        v34 = (v31 + v18) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v34 + 8) = 0u;
          *(v34 + 24) = 0u;
          *v34 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v34 + 24) = a2 - 1;
        }

        return;
      }

      v29 = *(v5 + 56);
      goto LABEL_38;
    }

    if (v19 != -40)
    {
      v32 = ~v12 + a2;
      bzero(((((v15 + v30) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16), (v19 + 40));
      *v31 = v32;
    }
  }
}

void type metadata accessor for DefaultIndices<AttributedString.CharacterView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DefaultIndices<AttributedString.CharacterView>)
  {
    type metadata accessor for AttributedString.CharacterView();
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968690]);
    v1 = type metadata accessor for DefaultIndices();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for DefaultIndices<AttributedString.CharacterView>);
    }
  }
}

void lazy protocol witness table accessor for type DefaultIndices<AttributedString.CharacterView> and conformance <> DefaultIndices<A>()
{
  if (!lazy protocol witness table cache variable for type DefaultIndices<AttributedString.CharacterView> and conformance <> DefaultIndices<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for DefaultIndices<AttributedString.CharacterView>(255);
    v3 = v2;
    lazy protocol witness table accessor for type AnyCodable<SafelyCodableRequirement> and conformance AnyCodable<A>(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968680]);
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E5EB0], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type DefaultIndices<AttributedString.CharacterView> and conformance <> DefaultIndices<A>);
  }
}

void type metadata accessor for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for DefaultIndices<AttributedString.CharacterView>(255);
    v7 = v6;
    lazy protocol witness table accessor for type DefaultIndices<AttributedString.CharacterView> and conformance <> DefaultIndices<A>();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ReversedCollection<DefaultIndices<AttributedString.CharacterView>>.Iterator(uint64_t a1)
{
  type metadata accessor for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>(0, &lazy cache variable for type metadata for ReversedCollection<DefaultIndices<AttributedString.CharacterView>>.Iterator, MEMORY[0x1E69E6E98]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?))
  {
    type metadata accessor for Range<AttributedString.Index>??(255, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, MEMORY[0x1E6968400]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?, AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?));
    }
  }
}

uint64_t outlined destroy of AttributeScopes.FoundationAttributes.MeasurementAttribute.Component?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for Range<AttributedString.Index>??(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of (range: Range<AttributedString.Index>, magnitude: Calendar.Component.Magnitude?)?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Range<AttributedString.Index>??(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of Range<AttributedString.Index>??(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Range<AttributedString.Index>??(0, &lazy cache variable for type metadata for Range<AttributedString.Index>??, type metadata accessor for Range<AttributedString.Index>?);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy, &type metadata for AttributeScopes.SwiftUIAttributes.InterpolationStrategy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy, &type metadata for AttributeScopes.SwiftUIAttributes.InterpolationStrategy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy, &type metadata for AttributeScopes.SwiftUIAttributes.InterpolationStrategy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy, &type metadata for AttributeScopes.SwiftUIAttributes.InterpolationStrategy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes.InterpolationStrategy, &type metadata for AttributeScopes.SwiftUIAttributes.InterpolationStrategy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.InterpolationStrategy and conformance AttributeScopes.SwiftUIAttributes.InterpolationStrategy);
  }
}

double _ColorInvertEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  _s7SwiftUI14GraphicsFilterOWOi24_(v7);
  v3 = v11;
  v2[5] = v10;
  v2[6] = v3;
  v2[7] = v12[0];
  *(v2 + 124) = *(v12 + 12);
  v4 = v7[1];
  v2[1] = v7[0];
  v2[2] = v4;
  result = *&v8;
  v6 = v9;
  v2[3] = v8;
  v2[4] = v6;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double _s7SwiftUI14GraphicsFilterOWOi24_(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 746586112;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _ColorInvertEffect@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  _s7SwiftUI14GraphicsFilterOWOi24_(v7);
  v3 = v11;
  v2[5] = v10;
  v2[6] = v3;
  v2[7] = v12[0];
  *(v2 + 124) = *(v12 + 12);
  v4 = v7[1];
  v2[1] = v7[0];
  v2[2] = v4;
  result = *&v8;
  v6 = v9;
  v2[3] = v8;
  v2[4] = v6;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

void lazy protocol witness table accessor for type _ColorInvertEffect and conformance _ColorInvertEffect()
{
  if (!lazy protocol witness table cache variable for type _ColorInvertEffect and conformance _ColorInvertEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ColorInvertEffect, &type metadata for _ColorInvertEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ColorInvertEffect and conformance _ColorInvertEffect);
  }
}

double static GlassEffectBackdropProxyModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v49 = a2[2];
  v50 = v5;
  v51 = a2[4];
  v52 = *(a2 + 20);
  v6 = a2[1];
  v48[0] = *a2;
  v48[1] = v6;
  v28 = v49;
  v7 = v6;
  v8 = *(a2 + 52);
  v44 = *(a2 + 36);
  v45 = v8;
  v46 = *(a2 + 68);
  v47 = v48[0];
  LODWORD(v35) = 2143289344;
  outlined init with copy of _ViewInputs(v48, &v38);
  Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for GlassEffectBackdropObserver();
  v9 = swift_allocObject();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_weakInit();

  *(v9 + 24) = 0;
  *(v9 + 24) = AGCreateWeakAttribute();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  swift_beginAccess();
  LODWORD(v38) = *(v7 + 16);
  DWORD1(v38) = OffsetAttribute2;
  *(&v38 + 1) = v9;
  *&v39 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type BackdropProxyEnvironment and conformance BackdropProxyEnvironment();

  v11 = Attribute.init<A>(body:value:flags:update:)();

  v12 = MEMORY[0x1E69E7CC0];
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 256;
  *(v14 + 88) = v13;

  *&v36 = v14;
  *(&v36 + 1) = *(&v7 + 1);
  *v37 = v28 | 0x20;
  *&v37[36] = *(a2 + 68);
  *&v37[20] = *(a2 + 52);
  *&v37[4] = *(a2 + 36);
  *v34 = *v37;
  *&v34[16] = *&v37[16];
  *&v34[32] = *&v37[32];
  v35 = *a2;
  *&v34[48] = *&v37[48];
  v32 = v35;
  v33 = v36;
  v15 = outlined init with copy of _ViewInputs(&v35, &v38);
  a3(&v30, v15, &v32);
  v40 = *v34;
  v41 = *&v34[16];
  v42 = *&v34[32];
  v43 = *&v34[48];
  v38 = v32;
  v39 = v33;
  outlined destroy of _ViewInputs(&v38);
  v16 = v50;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA14GlassContainerO4ItemV0I0V_TtB5Tf4dn_n(v50) & 1) == 0)
  {
    v32 = *a2;
    *&v33 = v14;
    *(&v33 + 1) = *(&v7 + 1);
    *v34 = v28 | 0x20;
    *&v34[4] = *(a2 + 36);
    *&v34[20] = *(a2 + 52);
    *&v34[36] = *(a2 + 68);
    goto LABEL_7;
  }

  LODWORD(v32) = OffsetAttribute2;
  *(&v32 + 1) = v9;
  LODWORD(v33) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type BackdropProxyTransform and conformance BackdropProxyTransform();

  v17 = Attribute.init<A>(body:value:flags:update:)();

  *&v32 = v16;
  v18 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  v19 = *(v16 + 16);
  if (v18 == v19)
  {
LABEL_11:

    v32 = v47;
    *&v33 = v14;
    *(&v33 + 1) = *(&v7 + 1);
    *v34 = v28 | 0x20;
    *&v34[4] = v44;
    *&v34[20] = v45;
    *&v34[36] = v46;
    outlined destroy of _ViewInputs(&v32);
    goto LABEL_12;
  }

  if (v18 >= v19)
  {
    __break(1u);
  }

  if (*(v16 + 16 * v18 + 32) == &type metadata for GlassContainer.Item.Key)
  {
    v20 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(v30);
    v21 = *MEMORY[0x1E698D3F8];
    if ((v20 & 0x100000000) == 0)
    {
      v21 = v20;
    }

    *&v32 = __PAIR64__(v21, v17);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_0(0, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    type metadata accessor for PreferenceTransform<GlassContainer.Item.Key>(0, v22, v23, v24);
    lazy protocol witness table accessor for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>();
    v25 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v32) = 0;
    PreferencesOutputs.subscript.setter(v25, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
    goto LABEL_11;
  }

  v32 = v47;
  *&v33 = v14;
  *(&v33 + 1) = *(&v7 + 1);
  *v34 = v28 | 0x20;
  *&v34[4] = v44;
  *&v34[20] = v45;
  *&v34[36] = v46;
LABEL_7:
  outlined destroy of _ViewInputs(&v32);

LABEL_12:
  *a4 = v30;
  result = v31;
  a4[1] = v31;
  return result;
}

double BackdropProxyEnvironment.updateValue()()
{
  v9[2] = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  v9[0] = *Value;
  v9[1] = v3;
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_0(0, &lazy cache variable for type metadata for MaterialBackdropProxy?, &type metadata for MaterialBackdropProxy, MEMORY[0x1E69E6720]);

  v4 = *AGGraphGetValue();
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_17;
    }

LABEL_14:

    v7 = *(v0 + 16);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  if (v4 != v6)
  {
    v7 = *(v0 + 16);
    if (!v7)
    {
LABEL_6:
      if (!v4)
      {

        *(v0 + 16) = 0;
        goto LABEL_17;
      }

      os_unfair_lock_lock(v4 + 4);
      _s7SwiftUI21MaterialBackdropProxyV11addObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(&v4[6], v5, &protocol witness table for SDFShape.BackdropObserver);
      os_unfair_lock_unlock(v4 + 4);

      *(v0 + 16) = v4;
      goto LABEL_8;
    }

LABEL_5:

    os_unfair_lock_lock(v7 + 4);
    _s7SwiftUI21MaterialBackdropProxyV14removeObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(&v7[6], v5);
    os_unfair_lock_unlock(v7 + 4);

    goto LABEL_6;
  }

LABEL_8:
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt2g5(v9, v5);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Ttg5(v2, v9[0]);
  }

LABEL_17:

  AGGraphSetOutputValue();

  return result;
}

double BackdropProxyTransform.updateValue()()
{
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_0(0, &lazy cache variable for type metadata for MaterialBackdropProxy?, &type metadata for MaterialBackdropProxy, MEMORY[0x1E69E6720]);
  v1 = *AGGraphGetValue();
  if ((v2 & 1) != 0 || (type metadata accessor for (_:)(), !AGGraphGetOutputValue()))
  {
    v4 = *(v0 + 16) + 1;
    *(v0 + 16) = v4;
    v5 = *(v0 + 8);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v1;
    *(v6 + 32) = v5;
    type metadata accessor for (_:)();

    AGGraphSetOutputValue();
  }

  return result;
}

void closure #1 in BackdropProxyTransform.updateValue()(char **a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(*a1 + 2);
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = ~(a2 << 32) + a2;
    while (1)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      }

      if (v10 >= *(v4 + 2))
      {
        break;
      }

      *&v4[v9 + 232] = a3;

      if (a3)
      {

        v12 = a4;
      }

      else
      {
        v12 = 0;
      }

      if (v10 >= *(v4 + 2))
      {
        goto LABEL_21;
      }

      v13 = &v4[v9];
      *&v4[v9 + 240] = v12;

      if (v10 >= *(v4 + 2))
      {
        goto LABEL_22;
      }

      v14 = *(v13 + 38);
      if (v14 != -1 && a2)
      {
        v15 = a2;
        if (v14)
        {
          v15 = a2;
          if (a2 != -1)
          {
            v16 = (v11 + (v14 << 32)) ^ ((v11 + (v14 << 32)) >> 22);
            v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
            v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
            v15 = (v18 >> 31) ^ v18;
          }
        }

        *(v13 + 38) = v15;
      }

      ++v10;
      v9 += 656;
      if (v5 == v10)
      {
        *a1 = v4;
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t one-time initialization function for glassEffectBackdropObserver(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.glassEffectBackdropObserver = result;
  return result;
}

void specialized implicit closure #1 in _GraphInputs.glassEffectBackdropObserver.getter(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    swift_retain_n();
    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt1g5(v3);
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt2g5(v5);
    v4 = v6;
  }

  *a2 = v4;
}

double View._glassEffectBackdropProxy(_:)(uint64_t *a1)
{
  View.modifier<A>(_:)();

  return result;
}

void lazy protocol witness table accessor for type BackdropProxyEnvironment and conformance BackdropProxyEnvironment()
{
  if (!lazy protocol witness table cache variable for type BackdropProxyEnvironment and conformance BackdropProxyEnvironment)
  {
    swift_getWitnessTable(protocol conformance descriptor for BackdropProxyEnvironment, &unk_1F0061C00, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BackdropProxyEnvironment and conformance BackdropProxyEnvironment);
  }
}

void lazy protocol witness table accessor for type BackdropProxyTransform and conformance BackdropProxyTransform()
{
  if (!lazy protocol witness table cache variable for type BackdropProxyTransform and conformance BackdropProxyTransform)
  {
    swift_getWitnessTable(protocol conformance descriptor for BackdropProxyTransform, &unk_1F0061B78, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BackdropProxyTransform and conformance BackdropProxyTransform);
  }
}

void type metadata accessor for PreferenceTransform<GlassContainer.Item.Key>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for PreferenceTransform<GlassContainer.Item.Key>)
  {
    v4 = type metadata accessor for PreferenceTransform(0, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for PreferenceTransform<GlassContainer.Item.Key>);
    }
  }
}

uint64_t assignWithCopy for BackdropProxyTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for BackdropProxyTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for BackdropProxyTransform(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t storeEnumTagSinglePayload for BackdropProxyTransform(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for BackdropProxyEnvironment(uint64_t a1)
{

  return result;
}

void *initializeBufferWithCopyOfBuffer for BackdropProxyEnvironment(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;

  return a1;
}

uint64_t assignWithCopy for BackdropProxyEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *assignWithTake for BackdropProxyEnvironment(void *a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 8);

  return a1;
}

uint64_t LinkDestination.Configuration.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LinkDestination.Configuration.url.setter(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LinkDestination.Configuration.isSensitive.setter(char a1)
{
  result = type metadata accessor for LinkDestination.Configuration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t LinkDestination.Configuration.init(url:isSensitive:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for LinkDestination.Configuration(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

void protocol witness for CodingKey.init(stringValue:) in conformance LinkDestination.Configuration.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7469736E65537369 && a2 == 0xEB00000000657669)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LinkDestination.Configuration.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinkDestination.Configuration.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkDestination.Configuration.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<LinkDestination.Configuration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<LinkDestination.Configuration.CodingKeys>, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for LinkDestination.Configuration(0);
    v9[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t LinkDestination.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LinkDestination(0) + 24);

  return outlined init with copy of LinkDestination.Configuration(v3, a1);
}

uint64_t LinkDestination.configuration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LinkDestination(0) + 24);

  return outlined assign with take of LinkDestination.Configuration(a1, v3);
}

uint64_t outlined assign with take of LinkDestination.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkDestination.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall LinkDestination.open()()
{
  v1 = type metadata accessor for LinkDestination.Configuration(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for LinkDestination(0) + 24);
  if (*(v5 + *(v2 + 28)) == 1)
  {
    v6 = *(v0 + 56);
    v22 = *(v0 + 40);
    v23[0] = v6;
    v7 = *(v0 + 71);
  }

  else
  {
    v8 = v0[1];
    v22 = *v0;
    v23[0] = v8;
    v7 = *(v0 + 31);
  }

  *(v23 + 15) = v7;
  specialized Environment.wrappedValue.getter(v19);
  v9 = v19[0];
  v10 = v19[1];
  v11 = v19[2];
  v12 = v19[3];
  v13 = v20;
  v14 = v21;
  outlined init with copy of LinkDestination.Configuration(v5, v4);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v17 = v13;
  v18 = v14;
  specialized OpenURLAction._open(_:prefersInApp:completion:)(v4, 2, v16);
  outlined consume of OpenURLAction.Handler(v9, v10, v11, v12, v13);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 8))(v4, v15);
}

unint64_t initializeBufferWithCopyOfBuffer for LinkDestination(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = v24 + ((v4 + 16) & ~v4);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = *(a2 + 34);
    v11 = *(a2 + 32);
    outlined copy of Environment<OpenURLAction>.Content(*a2, v7, v8, v9, v11, v10);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;
    *(a1 + 34) = v10;
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v15 = *(a2 + 56);
    v16 = *(a2 + 64);
    v17 = *(a2 + 74);
    v18 = *(a2 + 72);
    outlined copy of Environment<OpenURLAction>.Content(v13, v14, v15, v16, v18, v17);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = v15;
    *(a1 + 64) = v16;
    *(a1 + 72) = v18;
    *(a1 + 74) = v17;
    v19 = *(a3 + 24);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 16))(v20, v21, v22);
    v23 = type metadata accessor for LinkDestination.Configuration(0);
    *(v20 + *(v23 + 20)) = *(v21 + *(v23 + 20));
  }

  return a1;
}

uint64_t destroy for LinkDestination(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<OpenURLAction>.Content(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 34));
  outlined consume of Environment<OpenURLAction>.Content(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 74));
  v4 = *(a2 + 24);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

double outlined consume of Environment<OpenURLAction>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    return outlined consume of OpenURLAction.Handler(a1, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t assignWithCopy for LinkDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 34);
  v11 = *(a2 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*a2, v7, v8, v9, v11, v10);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 34);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v17 = *(a1 + 32);
  *(a1 + 32) = v11;
  *(a1 + 34) = v10;
  outlined consume of Environment<OpenURLAction>.Content(v12, v13, v14, v15, v17, v16);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v20 = *(a2 + 56);
  v21 = *(a2 + 64);
  v22 = *(a2 + 74);
  v23 = *(a2 + 72);
  outlined copy of Environment<OpenURLAction>.Content(v18, v19, v20, v21, v23, v22);
  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  v27 = *(a1 + 64);
  v28 = *(a1 + 74);
  *(a1 + 40) = v18;
  *(a1 + 48) = v19;
  *(a1 + 56) = v20;
  *(a1 + 64) = v21;
  v29 = *(a1 + 72);
  *(a1 + 72) = v23;
  *(a1 + 74) = v22;
  outlined consume of Environment<OpenURLAction>.Content(v24, v25, v26, v27, v29, v28);
  v30 = *(a3 + 24);
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = type metadata accessor for URL();
  (*(*(v33 - 8) + 24))(v31, v32, v33);
  v34 = type metadata accessor for LinkDestination.Configuration(0);
  *(v31 + *(v34 + 20)) = *(v32 + *(v34 + 20));
  return a1;
}

uint64_t initializeWithTake for LinkDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 31) = *(a2 + 31);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a3 + 24);
  v6 = a2 + v5;
  v7 = a1 + v5;
  *(a1 + 71) = *(a2 + 71);
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 32))(v7, v6, v8);
  v9 = type metadata accessor for LinkDestination.Configuration(0);
  *(v7 + *(v9 + 20)) = *(v6 + *(v9 + 20));
  return a1;
}

uint64_t assignWithTake for LinkDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 34);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 34);
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v13;
  v14 = *(a1 + 32);
  *(a1 + 32) = v6;
  *(a1 + 34) = v7;
  outlined consume of Environment<OpenURLAction>.Content(v8, v9, v10, v11, v14, v12);
  v15 = *(a2 + 72);
  v16 = *(a2 + 74);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 74);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v22 = *(a1 + 72);
  *(a1 + 72) = v15;
  *(a1 + 74) = v16;
  outlined consume of Environment<OpenURLAction>.Content(v17, v18, v19, v20, v22, v21);
  v23 = *(a3 + 24);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = type metadata accessor for URL();
  (*(*(v26 - 8) + 40))(v24, v25, v26);
  v27 = type metadata accessor for LinkDestination.Configuration(0);
  *(v24 + *(v27 + 20)) = *(v25 + *(v27 + 20));
  return a1;
}

void *initializeBufferWithCopyOfBuffer for LinkDestination.Configuration(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t assignWithCopy for LinkDestination.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for LinkDestination.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for LinkDestination.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t Color.gradient.getter(uint64_t a1)
{
  type metadata accessor for GradientBox<ColorGradientProvider>(0);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  return v2;
}

void type metadata accessor for GradientBox<ColorGradientProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GradientBox<ColorGradientProvider>)
  {
    lazy protocol witness table accessor for type ColorGradientProvider and conformance ColorGradientProvider();
    v4 = type metadata accessor for GradientBox(a1, &type metadata for ColorGradientProvider, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for GradientBox<ColorGradientProvider>);
    }
  }
}

void lazy protocol witness table accessor for type ColorGradientProvider and conformance ColorGradientProvider()
{
  if (!lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ColorGradientProvider, &type metadata for ColorGradientProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ColorGradientProvider, &type metadata for ColorGradientProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ColorGradientProvider, &type metadata for ColorGradientProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ColorGradientProvider and conformance ColorGradientProvider);
  }
}

uint64_t ResolvedGradient.init(standardColor:style:)@<X0>(__n128 *a1@<X0>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v8 = *a1;
  RBColorMakeGradient();
  type metadata accessor for _ContiguousArrayStorage<ResolvedGradient.Stop>();
  result = swift_allocObject();
  *(result + 16) = xmmword_18DDAB4C0;
  *(result + 32) = v7;
  *(result + 48) = 0uLL;
  *(result + 64) = 0;
  *(result + 72) = 1;
  *(result + 80) = v8;
  *(result + 96) = 0x3FF0000000000000;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = 1;
  v6 = a1[1].n128_u32[0];
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 12) = v6;
  *(a3 + 16) = 0;
  return result;
}

uint64_t protocol witness for GradientProvider.resolve(in:) in conformance ColorGradientProvider@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v6 = *a1;
  (*(*v4 + 120))(&v7, &v6);
  return ResolvedGradient.init(standardColor:style:)(&v7, a2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ColorGradientProvider(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  (*(*v2 + 152))(v4);
  return Hasher._finalize()();
}

void type metadata accessor for _ContiguousArrayStorage<ResolvedGradient.Stop>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradient.Stop>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradient.Stop>);
    }
  }
}

void *_s7SwiftUI11UnaryLayoutPA2A16PlacementContextV0eF4TypeRtzrlE12makeViewImpl8modifier6inputs4bodyAA01_I7OutputsVAA11_GraphValueVyxG_AA01_I6InputsVAmA01_O0V_ARtctFZAA0d8PriorityD0V_Tt3B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a5@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 9);
  if ((v6 & 0x22) != 0)
  {
    v7 = a1;
    v8 = *(a2 + 2);
    swift_beginAccess();
    v9 = *MEMORY[0x1E698D3F8];
    *&v51 = __PAIR64__(*(v8 + 16), v7);
    DWORD2(v51) = v9;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<LayoutPriorityLayout> and conformance UnaryLayoutComputer<A>();
    v36 = Attribute.init<A>(body:value:flags:update:)();
    v10 = a2[1];
    v49 = *a2;
    v50 = v10;
    v11 = *(a2 + 8);
    v12 = *(a2 + 9);
    v47 = *(a2 + 40);
    v48 = *(a2 + 7);
    v13 = *(a2 + 17);
    v14 = *(a2 + 76);
    if ((v6 & 0x20) != 0)
    {
      v20 = v11;
      outlined init with copy of _ViewInputs(a2, &v51);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v21 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v22 = specialized CachedEnvironment.attribute<A>(id:_:)(v21, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      swift_endAccess();
      LODWORD(v51) = *(a2 + 18);
      *(&v51 + 4) = __PAIR64__(v36, v22);
      HIDWORD(v51) = v9;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<LayoutPriorityLayout> and conformance UnaryChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v23 = *(a2 + 16);
      *&v51 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v23);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v16 = Attribute.init<A>(body:value:flags:update:)();
      v11 = v20 | 0x18;
      v12 = v6 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 18);
      v16 = *(a2 + 16);
      outlined init with copy of _ViewInputs(a2, &v51);
    }

    v44[0] = v49;
    v44[1] = v50;
    v33 = v11;
    v34 = v13;
    *&v45[0] = __PAIR64__(v12, v11);
    *(v45 + 8) = v47;
    *(&v45[1] + 1) = v48;
    *&v46[0] = __PAIR64__(v13, v16);
    DWORD2(v46[0]) = OffsetAttribute2;
    *(v46 + 12) = v14;
    v42[0] = v45[0];
    v42[1] = v45[1];
    v43[0] = v46[0];
    LODWORD(v43[1]) = HIDWORD(v14);
    v40 = v49;
    v41 = v50;
    v24 = outlined init with copy of _ViewInputs(v44, &v51);
    (a3)(&v37, v24, &v40);
    v53 = v42[0];
    v54 = v42[1];
    v55 = v43[0];
    v56 = v43[1];
    v51 = v40;
    v52 = v41;
    v25 = outlined destroy of _ViewInputs(&v51);
    v26 = v37;
    v28 = v38;
    v27 = v39;
    if ((v6 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v25);
      MEMORY[0x1EEE9AC00](v29);
      v30 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v30);
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v31);
      AGGraphMutateAttribute();
    }

    if ((v6 & 2) != 0)
    {
      v27 = v36;
    }

    v40 = v49;
    v41 = v50;
    *&v42[0] = __PAIR64__(v12, v33);
    *(v42 + 8) = v47;
    *(&v42[1] + 1) = v48;
    *&v43[0] = __PAIR64__(v34, v16);
    DWORD2(v43[0]) = OffsetAttribute2;
    *(v43 + 12) = v14;
    result = outlined destroy of _ViewInputs(&v40);
    *a5 = v26;
    *(a5 + 2) = v28 | ((v6 & 2) << 6);
    *(a5 + 3) = v27;
  }

  else
  {
    v17 = a2[3];
    v53 = a2[2];
    v54 = v17;
    v55 = a2[4];
    v56 = *(a2 + 20);
    v18 = a2[1];
    v51 = *a2;
    v52 = v18;
    return a3(a1, &v51);
  }

  return result;
}

void specialized Set.contains(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = a3;
    v5 = a1;
    v6 = HIDWORD(a1);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v5);
    Hasher._combine(_:)(v6);
    v39 = *(a2 + 16);
    v40 = a2;
    if (v39)
    {
      v7 = *(a2 + 16);
      v8 = (a2 + 48);
      do
      {
        v9 = *(v8 - 2);
        v10 = *v8;
        v8 += 6;
        v11 = *(*v9 + 120);

        v11(v45);
        Hasher._combine(_:)(v10);

        --v7;
      }

      while (v7);
    }

    v12 = Hasher._finalize()();
    v13 = v3 + 56;
    v14 = -1 << *(v3 + 32);
    v15 = v12 & ~v14;
    if ((*(v3 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      v17 = v39;
      v18 = v40;
      v36 = v5;
      v37 = v3;
      v34 = v3 + 56;
      v35 = v6;
      v33 = ~v14;
      while (1)
      {
        v19 = *(v3 + 48) + 16 * v15;
        if (*v19 == v5 && *(v19 + 4) == v6)
        {
          v21 = *(v19 + 8);
          if (*(v21 + 16) == v17)
          {
            break;
          }
        }

LABEL_8:
        v15 = (v15 + 1) & v16;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return;
        }
      }

      if (v17 && v21 != v18)
      {
        v38 = v15;

        v22 = 0;
        v41 = v21;
        do
        {
          v23 = *(v21 + v22 + 32);
          v24 = *(v21 + v22 + 40);
          v25 = *(v21 + v22 + 48);
          v26 = *(v18 + v22 + 48);
          if (v23 == *(v18 + v22 + 32))
          {
            v31 = v18;
            v32 = v24 == *(v18 + v22 + 40) && v25 == v26;
            if (!v32 || ((*(v21 + v22 + 52) ^ *(v18 + v22 + 52)) & 1) != 0)
            {
LABEL_7:

              v18 = v31;

              v5 = v36;
              v3 = v37;
              v13 = v34;
              LODWORD(v6) = v35;
              v15 = v38;
              v17 = v39;
              v16 = v33;
              goto LABEL_8;
            }
          }

          else
          {
            v42 = *(v18 + v22 + 40);
            v27 = *(*v23 + 112);
            v44 = *(v21 + v22 + 52);
            v28 = *(v18 + v22 + 52);

            v30 = v27(v29);
            v31 = v40;
            v43 = v30;

            if (v43 & 1) == 0 || v24 != v42 || v25 != v26 || ((v44 ^ v28))
            {
              goto LABEL_7;
            }
          }

          v22 += 24;
          --v17;
          v21 = v41;
          v18 = v31;
        }

        while (v17);
      }
    }
  }
}

uint64_t specialized Set.contains(_:)(Swift::UInt32 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  if (a2)
  {
    Hasher._combine(_:)(1u);
    (*(*a2 + 120))(v18);
    MEMORY[0x193AC11A0](a3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = Hasher._finalize()();
  v10 = -1 << *(a4 + 32);
  v11 = v9 & ~v10;
  if (((*(a4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(a4 + 48) + 24 * v11;
    if (*v13 != a1)
    {
      goto LABEL_11;
    }

    v14 = *(v13 + 8);
    if (!v14)
    {
      if (!a2)
      {
        return 1;
      }

      goto LABEL_9;
    }

    if (a2)
    {
      break;
    }

LABEL_9:

LABEL_10:

LABEL_11:
    v11 = (v11 + 1) & v12;
    if (((*(a4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *(v13 + 16);
  if (v14 != a2)
  {
    v15 = *(*v14 + 112);
    swift_retain_n();

    LOBYTE(v15) = v15(v16);

    if (v15)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  swift_retain_n();
LABEL_20:

  if (v17 != a3)
  {
    goto LABEL_11;
  }

  return 1;
}

uint64_t specialized Set.contains(_:)(int8x16_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v3 = a1;
  v4 = a1[2].u8[0];
  v415 = a1[1];
  v416 = *a1;
  v426[0] = *a1;
  v426[1] = v415;
  v427 = a1[2].i8[0];
  Hasher.init(_seed:)();
  GlassContainer.Entry.ModelID.hash(into:)(v421);
  v5 = Hasher._finalize()();
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  v8 = v5 & ~v7;
  if (((*(v2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v413 = v2 + 56;
  v414 = ~v7;
  v412 = v2;
  while (1)
  {
    v9 = *(v2 + 48) + 40 * v8;
    v10 = *v9;
    v11 = *(v9 + 8);
    v13 = *(v9 + 16);
    v12 = *(v9 + 24);
    v14 = *(v9 + 32);
    v421[0] = v10;
    v421[1] = v11;
    v421[2] = v13;
    v421[3] = v12;
    v422 = v14;
    v423 = v416;
    v424 = v415;
    v425 = v4;
    if (!v14)
    {
      if (v3[2].i8[0])
      {
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
        v16 = v10;
        v17 = v11;
        v18 = v13;
        v19 = v12;
        v20 = 0;
        goto LABEL_21;
      }

      v22 = v3->i64[0];
      v23 = v3->u8[8];
      if (v11 >> 6)
      {
        if (v11 >> 6 == 1)
        {
          if ((v23 & 0xC0) != 0x40)
          {
            goto LABEL_33;
          }

          v407 = v3->i8[9];
          v408 = v3[1].i64[0];
          v390 = v3[1].i64[1];
          v419 = v10;
          v420 = v11 & 0x3F;
          v417 = v22;
          v418 = v23 & 0x3F;
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v22, v23);
          outlined copy of _Glass.Variant.ID(v10, v11);
          if ((specialized static Material.ID.== infix(_:_:)(&v419, &v417) & 1) == 0)
          {
            outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
LABEL_67:
            outlined consume of _Glass.Variant.ID(v10, v11);
            outlined consume of _Glass.Variant.ID(v22, v23);
            outlined destroy of GlassContainer.Entry.ModelID(v3);
            v43 = v10;
            v44 = v11;
            v45 = v13;
            v46 = v12;
            v47 = 0;
LABEL_68:
            outlined consume of GlassContainer.Entry.ModelID(v43, v44, v45, v46, v47);
            goto LABEL_69;
          }

          outlined consume of _Glass.Variant.ID(v10, v11);
          v24 = v22;
          v25 = v23;
        }

        else
        {
          if (v10 | v11 ^ 0x80)
          {
            v40 = v23 & 0xC0;
            if (v11 == 128 && v10 == 1)
            {
              if (v40 != 128 || v22 != 1 || v23 != 128)
              {
                goto LABEL_65;
              }

              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined consume of _Glass.Variant.ID(v10, v11);
              v24 = 1;
            }

            else
            {
              if (v40 != 128 || v22 != 2 || v23 != 128)
              {
                goto LABEL_65;
              }

              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined consume of _Glass.Variant.ID(v10, v11);
              v24 = 2;
            }
          }

          else
          {
            if ((v23 & 0xC0) != 0x80 || v22 || v23 != 128)
            {
LABEL_65:
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              v38 = v22;
              v39 = v23;
              goto LABEL_66;
            }

            v407 = v3->i8[9];
            v408 = v3[1].i64[0];
            v390 = v3[1].i64[1];
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined consume of _Glass.Variant.ID(v10, v11);
            v24 = 0;
          }

          v25 = 0x80;
        }

        outlined consume of _Glass.Variant.ID(v24, v25);
        goto LABEL_62;
      }

      if (v23 >= 0x40)
      {
LABEL_33:
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
        outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
        outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
        outlined copy of _Glass.Variant.ID(v22, v23);
        v38 = v10;
        v39 = v11;
LABEL_66:
        outlined copy of _Glass.Variant.ID(v38, v39);
        outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
        goto LABEL_67;
      }

      v411 = v3->u8[8];
      v26 = *(v10 + 16);
      v27 = *(v10 + 24);
      v28 = *(v10 + 48);
      v29 = *(v22 + 16);
      v30 = *(v22 + 24);
      v404 = v3->i64[0];
      v31 = *(v22 + 48);
      v405 = v4;
      if (v27 >> 6)
      {
        if (v27 >> 6 == 1)
        {
          if ((v30 & 0xC0) != 0x40)
          {
            goto LABEL_106;
          }

          v369 = *(v10 + 32);
          v370 = *(v22 + 32);
          v367 = *(v22 + 40);
          v368 = *(v10 + 40);
          v407 = v3->i8[9];
          v408 = v3[1].i64[0];
          v390 = v3[1].i64[1];
          v419 = *(v10 + 16);
          v420 = v27 & 0x3F;
          v417 = v29;
          v418 = v30 & 0x3F;
          v32 = v26;
          v380 = v26;
          v33 = v29;
          v371 = v29;
          v34 = v27;
          v35 = v30;
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          v36 = v32;
          LOBYTE(v32) = v34;
          v375 = v34;
          outlined copy of _Glass.Variant.ID(v36, v34);
          outlined copy of _Glass.Variant.ID(v33, v35);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          v37 = v411;
          outlined copy of _Glass.Variant.ID(v404, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined copy of _Glass.Variant.ID(v380, v32);
          outlined copy of _Glass.Variant.ID(v371, v35);
          v391 = specialized static Material.ID.== infix(_:_:)(&v419, &v417);
          outlined consume of _Glass.Variant.ID(v380, v375);
          outlined consume of _Glass.Variant.ID(v371, v35);
          outlined consume of _Glass.Variant.ID(v371, v35);
          v22 = v404;
          outlined consume of _Glass.Variant.ID(v380, v375);
          v2 = v412;
          if ((v391 & 1) == 0)
          {
            goto LABEL_359;
          }
        }

        else
        {
          if (v26 | v27 ^ 0x80)
          {
            v59 = v30 & 0xC0;
            if (*(v10 + 24) == 128 && v26 == 1)
            {
              if (v59 != 128 || v29 != 1 || v30 != 128)
              {
                goto LABEL_106;
              }

              v377 = *(v10 + 24);
              v382 = *(v10 + 16);
              v369 = *(v10 + 32);
              v370 = *(v22 + 32);
              v367 = *(v22 + 40);
              v368 = *(v10 + 40);
              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v61 = 1;
            }

            else
            {
              if (v59 != 128 || v29 != 2 || v30 != 128)
              {
                goto LABEL_106;
              }

              v377 = *(v10 + 24);
              v382 = *(v10 + 16);
              v369 = *(v10 + 32);
              v370 = *(v22 + 32);
              v367 = *(v22 + 40);
              v368 = *(v10 + 40);
              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v61 = 2;
            }
          }

          else
          {
            if ((v30 & 0xC0) != 0x80 || v29 || v30 != 128)
            {
LABEL_106:
              v70 = *(v22 + 16);
              v71 = v10;
              v394 = v3;
              v72 = v10;
              v73 = v13;
              v74 = v12;
              v75 = v27;
              v386 = *(v22 + 24);
              outlined copy of GlassContainer.Entry.ModelID(v71, v11, v73, v74, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v394, v426);
              outlined copy of GlassContainer.Entry.ModelID(v72, v11, v73, v74, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v394, v426);
              outlined copy of GlassContainer.Entry.ModelID(v72, v11, v73, v74, 0);
              outlined copy of _Glass.Variant.ID(v22, v411);
              outlined copy of _Glass.Variant.ID(v72, v11);
              outlined copy of _Glass.Variant.ID(v26, v75);
              outlined copy of _Glass.Variant.ID(v29, v386);
              v76 = v75;
              v12 = v74;
              v13 = v73;
              v10 = v72;
              v3 = v394;
              outlined consume of _Glass.Variant.ID(v26, v76);
              v37 = v411;
              outlined consume of _Glass.Variant.ID(v70, v386);
              goto LABEL_358;
            }

            v377 = *(v10 + 24);
            v382 = *(v10 + 16);
            v369 = *(v10 + 32);
            v370 = *(v22 + 32);
            v367 = *(v22 + 40);
            v368 = *(v10 + 40);
            v407 = v3->i8[9];
            v408 = v3[1].i64[0];
            v390 = v3[1].i64[1];
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            v61 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v22, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined consume of _Glass.Variant.ID(v382, v377);
          outlined consume of _Glass.Variant.ID(v61, 0x80u);
          v2 = v412;
        }

LABEL_101:
        if (v368 >> 6)
        {
          v66 = v369;
          v67 = v367;
          if (v368 >> 6 == 1)
          {
            if ((v367 & 0xC0) != 0x40)
            {
              goto LABEL_150;
            }

            *&v426[0] = v369;
            BYTE8(v426[0]) = v368 & 0x3F;
            v419 = v370;
            v420 = v367 & 0x3F;
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            v393 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v369, v368);
            outlined consume of _Glass.Variant.ID(v370, v367);
            outlined consume of _Glass.Variant.ID(v370, v367);
            v68 = v411;
            outlined consume of _Glass.Variant.ID(v369, v368);
            v69 = v404;
            if ((v393 & 1) == 0)
            {
              goto LABEL_413;
            }
          }

          else
          {
            if (v369 | v368 ^ 0x80)
            {
              v84 = v367 & 0xC0;
              if (v368 == 128 && v369 == 1)
              {
                if (v84 != 128 || v370 != 1 || v367 != 128)
                {
                  goto LABEL_150;
                }

                v86 = v411;
                v87 = 1;
              }

              else
              {
                if (v84 != 128 || v370 != 2 || v367 != 128)
                {
                  goto LABEL_150;
                }

                v86 = v411;
                v87 = 2;
              }
            }

            else
            {
              if ((v367 & 0xC0) != 0x80 || v370 || v367 != 128)
              {
LABEL_150:
                v98 = v66;
                v99 = v67;
                outlined copy of _Glass.Variant.ID(v66, v368);
                outlined copy of _Glass.Variant.ID(v370, v99);
                v68 = v411;
                outlined consume of _Glass.Variant.ID(v98, v368);
                outlined consume of _Glass.Variant.ID(v370, v99);
                v69 = v404;
                goto LABEL_413;
              }

              v86 = v411;
              v87 = 0;
            }

            outlined consume of _Glass.Variant.ID(v369, v368);
            outlined consume of _Glass.Variant.ID(v87, 0x80u);
            v69 = v404;
            v68 = v86;
          }

          goto LABEL_148;
        }

        v67 = v367;
        v66 = v369;
        if (v367 >= 0x40)
        {
          goto LABEL_150;
        }

        v77 = *(v369 + 16);
        v78 = *(v369 + 24);
        v79 = *(v369 + 48);
        v80 = *(v370 + 16);
        v81 = *(v370 + 24);
        v373 = v80;
        v82 = *(v370 + 48);
        v383 = *(v369 + 24);
        v387 = v77;
        v378 = *(v370 + 24);
        if (v78 >> 6)
        {
          if (v78 >> 6 == 1)
          {
            if ((v81 & 0xC0) != 0x40)
            {
              goto LABEL_243;
            }

            v349 = *(v369 + 40);
            v351 = *(v370 + 32);
            v357 = *(v370 + 40);
            v361 = *(v369 + 32);
            *&v426[0] = *(v369 + 16);
            BYTE8(v426[0]) = v78 & 0x3F;
            v419 = v80;
            v420 = v81 & 0x3F;
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v77, v78);
            outlined copy of _Glass.Variant.ID(v373, v378);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v77, v78);
            outlined copy of _Glass.Variant.ID(v373, v378);
            v395 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v77, v78);
            outlined consume of _Glass.Variant.ID(v373, v378);
            v83 = v370;
            outlined consume of _Glass.Variant.ID(v373, v378);
            outlined consume of _Glass.Variant.ID(v77, v383);
            if ((v395 & 1) == 0)
            {
              goto LABEL_411;
            }
          }

          else
          {
            if (v77 | v78 ^ 0x80)
            {
              v134 = v81 & 0xC0;
              if (*(v369 + 24) == 128 && v77 == 1)
              {
                if (v134 != 128 || v80 != 1 || v81 != 128)
                {
                  goto LABEL_243;
                }

                v349 = *(v369 + 40);
                v351 = *(v370 + 32);
                v357 = *(v370 + 40);
                v361 = *(v369 + 32);
                v136 = 1;
              }

              else
              {
                if (v134 != 128 || v80 != 2 || v81 != 128)
                {
                  goto LABEL_243;
                }

                v349 = *(v369 + 40);
                v351 = *(v370 + 32);
                v357 = *(v370 + 40);
                v361 = *(v369 + 32);
                v136 = 2;
              }

              v399 = v136;
            }

            else
            {
              if ((v81 & 0xC0) != 0x80 || v80 || v81 != 128)
              {
LABEL_243:
                outlined copy of _Glass.Variant.ID(v369, v368);
                outlined copy of _Glass.Variant.ID(v370, v367);
                outlined copy of _Glass.Variant.ID(v369, v368);
                outlined copy of _Glass.Variant.ID(v370, v367);
                outlined copy of _Glass.Variant.ID(v77, v78);
                outlined copy of _Glass.Variant.ID(v373, v378);
                v83 = v370;
                outlined consume of _Glass.Variant.ID(v77, v383);
                outlined consume of _Glass.Variant.ID(v373, v378);
                goto LABEL_411;
              }

              v349 = *(v369 + 40);
              v351 = *(v370 + 32);
              v357 = *(v370 + 40);
              v361 = *(v369 + 32);
              v399 = 0;
            }

            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined consume of _Glass.Variant.ID(v77, v383);
            outlined consume of _Glass.Variant.ID(v399, 0x80u);
          }

LABEL_237:
          if (v349 >> 6)
          {
            v152 = v357;
            if (v349 >> 6 == 1)
            {
              if ((v357 & 0xC0) != 0x40)
              {
                goto LABEL_372;
              }

              *&v426[0] = v361;
              BYTE8(v426[0]) = v349 & 0x3F;
              v419 = v351;
              v420 = v357 & 0x3F;
              outlined copy of _Glass.Variant.ID(v361, v349);
              outlined copy of _Glass.Variant.ID(v351, v357);
              outlined copy of _Glass.Variant.ID(v361, v349);
              outlined copy of _Glass.Variant.ID(v351, v357);
              v400 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
              outlined consume of _Glass.Variant.ID(v361, v349);
              outlined consume of _Glass.Variant.ID(v351, v357);
              outlined consume of _Glass.Variant.ID(v351, v357);
              outlined consume of _Glass.Variant.ID(v361, v349);
              outlined consume of _Glass.Variant.ID(v369, v368);
              outlined consume of _Glass.Variant.ID(v370, v367);
              outlined consume of _Glass.Variant.ID(v370, v367);
              outlined consume of _Glass.Variant.ID(v369, v368);
              v69 = v404;
              v68 = v411;
              if ((v400 & 1) == 0 || v79 != v82)
              {
                goto LABEL_413;
              }

              goto LABEL_148;
            }

            if (v361 | v349 ^ 0x80)
            {
              v168 = v357 & 0xC0;
              if (v349 == 128 && v361 == 1)
              {
                if (v168 != 128 || v351 != 1 || v357 != 128)
                {
                  goto LABEL_372;
                }

                v170 = v349;
                v171 = 1;
              }

              else
              {
                if (v168 != 128 || v351 != 2 || v357 != 128)
                {
                  goto LABEL_372;
                }

                v170 = v349;
                v171 = 2;
              }
            }

            else
            {
              if ((v357 & 0xC0) != 0x80 || v351 || v357 != 128)
              {
LABEL_372:
                outlined copy of _Glass.Variant.ID(v361, v349);
                outlined copy of _Glass.Variant.ID(v351, v152);
                outlined consume of _Glass.Variant.ID(v361, v349);
                v201 = v351;
                v202 = v152;
                goto LABEL_410;
              }

              v170 = v349;
              v171 = 0;
            }

            outlined consume of _Glass.Variant.ID(v361, v170);
            outlined consume of _Glass.Variant.ID(v171, 0x80u);
            outlined consume of _Glass.Variant.ID(v369, v368);
            outlined consume of _Glass.Variant.ID(v370, v367);
            outlined consume of _Glass.Variant.ID(v370, v367);
            v69 = v404;
          }

          else
          {
            v152 = v357;
            if (v357 >= 0x40)
            {
              goto LABEL_372;
            }

            v401 = v3;
            v261 = v13;
            v163 = *(v361 + 16);
            v374 = *(v361 + 32);
            v344 = *(v361 + 40);
            v164 = *(v361 + 48);
            v384 = *(v351 + 16);
            v388 = *(v361 + 24);
            v165 = *(v351 + 24);
            v339 = *(v351 + 32);
            v335 = *(v351 + 40);
            v166 = *(v351 + 48);
            v379 = v165;
            if (v388 >> 6)
            {
              if (v388 >> 6 == 1)
              {
                if ((v165 & 0xC0) != 0x40)
                {
                  goto LABEL_517;
                }

                *&v426[0] = *(v361 + 16);
                BYTE8(v426[0]) = v388 & 0x3F;
                v419 = v384;
                v420 = v165 & 0x3F;
                outlined copy of _Glass.Variant.ID(v361, v349);
                outlined copy of _Glass.Variant.ID(v351, v357);
                outlined copy of _Glass.Variant.ID(v163, v388);
                outlined copy of _Glass.Variant.ID(v384, v379);
                outlined copy of _Glass.Variant.ID(v361, v349);
                outlined copy of _Glass.Variant.ID(v351, v357);
                outlined copy of _Glass.Variant.ID(v163, v388);
                outlined copy of _Glass.Variant.ID(v384, v379);
                v167 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
                outlined consume of _Glass.Variant.ID(v163, v388);
                outlined consume of _Glass.Variant.ID(v384, v379);
                outlined consume of _Glass.Variant.ID(v384, v379);
                outlined consume of _Glass.Variant.ID(v163, v388);
                if ((v167 & 1) == 0)
                {
                  goto LABEL_518;
                }
              }

              else
              {
                if (v163 | v388 ^ 0x80)
                {
                  if (v388 == 128 && v163 == 1)
                  {
                    v2 = v412;
                    if ((v165 & 0xC0) != 0x80 || v384 != 1 || v165 != 128)
                    {
                      goto LABEL_517;
                    }

                    v245 = 1;
                  }

                  else
                  {
                    v2 = v412;
                    if ((v165 & 0xC0) != 0x80 || v384 != 2 || v165 != 128)
                    {
                      goto LABEL_517;
                    }

                    v245 = 2;
                  }
                }

                else
                {
                  v2 = v412;
                  if ((v165 & 0xC0) != 0x80 || v384 || v165 != 128)
                  {
LABEL_517:
                    outlined copy of _Glass.Variant.ID(v361, v349);
                    outlined copy of _Glass.Variant.ID(v351, v357);
                    outlined copy of _Glass.Variant.ID(v361, v349);
                    outlined copy of _Glass.Variant.ID(v351, v357);
                    outlined copy of _Glass.Variant.ID(v163, v388);
                    outlined copy of _Glass.Variant.ID(v384, v379);
                    outlined consume of _Glass.Variant.ID(v163, v388);
                    outlined consume of _Glass.Variant.ID(v384, v379);
                    goto LABEL_518;
                  }

                  v245 = 0;
                }

                outlined copy of _Glass.Variant.ID(v361, v349);
                outlined copy of _Glass.Variant.ID(v351, v357);
                outlined copy of _Glass.Variant.ID(v361, v349);
                outlined copy of _Glass.Variant.ID(v351, v357);
                outlined consume of _Glass.Variant.ID(v163, v388);
                outlined consume of _Glass.Variant.ID(v245, 0x80u);
                v2 = v412;
              }
            }

            else
            {
              if (v165 >= 0x40)
              {
                goto LABEL_517;
              }

              v296 = *(v163 + 32);
              v290 = *(v163 + 40);
              v237 = *(v163 + 48);
              v238 = *(v384 + 16);
              v286 = *(v384 + 32);
              v279 = *(v384 + 40);
              v239 = *(v384 + 48);
              v240 = *(v163 + 24);
              v300 = v240;
              v241 = *(v384 + 24);
              v309 = v241;
              *&v426[0] = *(v163 + 16);
              v304 = *&v426[0];
              BYTE8(v426[0]) = v240;
              v419 = v238;
              v420 = v241;
              outlined copy of _Glass.Variant.ID(v361, v349);
              outlined copy of _Glass.Variant.ID(v351, v357);
              outlined copy of _Glass.Variant.ID(v163, v388);
              outlined copy of _Glass.Variant.ID(v384, v379);
              outlined copy of _Glass.Variant.ID(v361, v349);
              outlined copy of _Glass.Variant.ID(v351, v357);
              outlined copy of _Glass.Variant.ID(v163, v388);
              outlined copy of _Glass.Variant.ID(v384, v379);
              outlined copy of _Glass.Variant.ID(v304, v300);
              outlined copy of _Glass.Variant.ID(v238, v309);
              v242 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
              outlined consume of _Glass.Variant.ID(v419, v420);
              outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
              if ((v242 & 1) == 0)
              {
                outlined consume of _Glass.Variant.ID(v163, v388);
                outlined consume of _Glass.Variant.ID(v384, v379);
                outlined consume of _Glass.Variant.ID(v384, v379);
                outlined consume of _Glass.Variant.ID(v163, v388);
                v2 = v412;
LABEL_518:
                outlined consume of _Glass.Variant.ID(v361, v349);
                outlined consume of _Glass.Variant.ID(v351, v357);
                outlined consume of _Glass.Variant.ID(v351, v357);
                outlined consume of _Glass.Variant.ID(v361, v349);
                v83 = v370;
                v13 = v261;
                v3 = v401;
LABEL_411:
                outlined consume of _Glass.Variant.ID(v369, v368);
                outlined consume of _Glass.Variant.ID(v83, v367);
                outlined consume of _Glass.Variant.ID(v83, v367);
                v69 = v404;
LABEL_412:
                outlined consume of _Glass.Variant.ID(v369, v368);
                v68 = v411;
LABEL_413:
                outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
                outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
                outlined consume of _Glass.Variant.ID(v10, v11);
                v199 = v69;
                v200 = v68;
LABEL_360:
                outlined consume of _Glass.Variant.ID(v199, v200);
                outlined destroy of GlassContainer.Entry.ModelID(v3);
                outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
                v4 = v405;
LABEL_69:
                v6 = v413;
                goto LABEL_6;
              }

              *&v426[0] = v296;
              BYTE8(v426[0]) = v290;
              v419 = v286;
              v420 = v279;
              outlined copy of _Glass.Variant.ID(v296, v290);
              outlined copy of _Glass.Variant.ID(v286, v279);
              v243 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
              outlined consume of _Glass.Variant.ID(v419, v420);
              outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
              outlined consume of _Glass.Variant.ID(v163, v388);
              outlined consume of _Glass.Variant.ID(v384, v379);
              outlined consume of _Glass.Variant.ID(v384, v379);
              outlined consume of _Glass.Variant.ID(v163, v388);
              v2 = v412;
              if ((v243 & 1) == 0 || v237 != v239)
              {
                goto LABEL_518;
              }
            }

            *&v426[0] = v374;
            BYTE8(v426[0]) = v344;
            v419 = v339;
            v420 = v335;
            outlined copy of _Glass.Variant.ID(v374, v344);
            outlined copy of _Glass.Variant.ID(v339, v335);
            v389 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v419, v420);
            outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
            outlined consume of _Glass.Variant.ID(v361, v349);
            outlined consume of _Glass.Variant.ID(v351, v357);
            outlined consume of _Glass.Variant.ID(v351, v357);
            outlined consume of _Glass.Variant.ID(v361, v349);
            outlined consume of _Glass.Variant.ID(v369, v368);
            outlined consume of _Glass.Variant.ID(v370, v367);
            outlined consume of _Glass.Variant.ID(v370, v367);
            v3 = v401;
            v69 = v404;
            v13 = v261;
            if ((v389 & 1) == 0 || v164 != v166)
            {
              goto LABEL_412;
            }
          }

          outlined consume of _Glass.Variant.ID(v369, v368);
          v68 = v411;
          if (v79 != v82)
          {
            goto LABEL_413;
          }

LABEL_148:
          if (v28 != v31)
          {
            goto LABEL_413;
          }

          outlined consume of _Glass.Variant.ID(v10, v11);
          outlined consume of _Glass.Variant.ID(v69, v68);
          v4 = v405;
LABEL_62:
          v6 = v413;
          if (((v11 & 0x100) == 0) == (v407 & 1))
          {
            outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined destroy of GlassContainer.Entry.ModelID(v3);
            outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          }

          else
          {
            v428[0] = v408;
            if (v13 == v408)
            {

              outlined init with copy of AnyHashable2(v428, v426);
              outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
              outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined destroy of AnyHashable2(v428);

              outlined destroy of GlassContainer.Entry.ModelID(v3);
              outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            }

            else
            {
              v406 = v4;
              v62 = v2;
              v63 = *(*v13 + 112);

              outlined init with copy of AnyHashable2(v428, v426);
              v64 = v63(v408);
              v6 = v413;
              v2 = v62;
              v4 = v406;
              v65 = v64;
              outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
              outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined destroy of AnyHashable2(v428);

              outlined destroy of GlassContainer.Entry.ModelID(v3);
              outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              if ((v65 & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            if (v12 == v390)
            {
              return 1;
            }
          }

          goto LABEL_6;
        }

        if (v81 >= 0x40)
        {
          goto LABEL_243;
        }

        v127 = *(v77 + 16);
        v128 = *(v77 + 24);
        v129 = *(v77 + 48);
        v130 = *(v80 + 16);
        v131 = *(v80 + 24);
        v132 = *(v80 + 48);
        v343 = *(v77 + 24);
        v398 = v127;
        v338 = *(v80 + 24);
        v334 = v130;
        if (v128 >> 6)
        {
          if (v128 >> 6 == 1)
          {
            if ((v131 & 0xC0) != 0x40)
            {
              goto LABEL_406;
            }

            v299 = *(v80 + 32);
            v303 = *(v80 + 40);
            v307 = *(v77 + 32);
            v312 = *(v77 + 40);
            v349 = *(v369 + 40);
            v351 = *(v370 + 32);
            v357 = *(v370 + 40);
            v361 = *(v369 + 32);
            *&v426[0] = *(v77 + 16);
            BYTE8(v426[0]) = v128 & 0x3F;
            v419 = v130;
            v420 = v131 & 0x3F;
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v77, v383);
            outlined copy of _Glass.Variant.ID(v373, v378);
            outlined copy of _Glass.Variant.ID(v398, v343);
            outlined copy of _Glass.Variant.ID(v334, v338);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v77, v383);
            outlined copy of _Glass.Variant.ID(v373, v378);
            outlined copy of _Glass.Variant.ID(v398, v343);
            outlined copy of _Glass.Variant.ID(v334, v338);
            v322 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v398, v343);
            outlined consume of _Glass.Variant.ID(v334, v338);
            outlined consume of _Glass.Variant.ID(v334, v338);
            outlined consume of _Glass.Variant.ID(v398, v343);
            v133 = v77;
            if ((v322 & 1) == 0)
            {
              goto LABEL_408;
            }
          }

          else
          {
            if (v127 | v128 ^ 0x80)
            {
              v188 = v131 & 0xC0;
              if (*(v77 + 24) == 128 && v127 == 1)
              {
                if (v188 != 128 || v130 != 1 || v131 != 128)
                {
                  goto LABEL_406;
                }

                v299 = *(v80 + 32);
                v303 = *(v80 + 40);
                v307 = *(v77 + 32);
                v312 = *(v77 + 40);
                v349 = *(v369 + 40);
                v351 = *(v370 + 32);
                v357 = *(v370 + 40);
                v361 = *(v369 + 32);
                v190 = 1;
              }

              else
              {
                if (v188 != 128 || v130 != 2 || v131 != 128)
                {
                  goto LABEL_406;
                }

                v299 = *(v80 + 32);
                v303 = *(v80 + 40);
                v307 = *(v77 + 32);
                v312 = *(v77 + 40);
                v349 = *(v369 + 40);
                v351 = *(v370 + 32);
                v357 = *(v370 + 40);
                v361 = *(v369 + 32);
                v190 = 2;
              }

              v340 = v190;
            }

            else
            {
              if ((v131 & 0xC0) != 0x80 || v130 || v131 != 128)
              {
LABEL_406:
                outlined copy of _Glass.Variant.ID(v369, v368);
                outlined copy of _Glass.Variant.ID(v370, v367);
                outlined copy of _Glass.Variant.ID(v77, v383);
                outlined copy of _Glass.Variant.ID(v373, v378);
                outlined copy of _Glass.Variant.ID(v369, v368);
                outlined copy of _Glass.Variant.ID(v370, v367);
                outlined copy of _Glass.Variant.ID(v77, v383);
                outlined copy of _Glass.Variant.ID(v373, v378);
                outlined copy of _Glass.Variant.ID(v398, v343);
                outlined copy of _Glass.Variant.ID(v334, v338);
                outlined consume of _Glass.Variant.ID(v398, v343);
                v207 = v334;
                v208 = v338;
                goto LABEL_407;
              }

              v299 = *(v80 + 32);
              v303 = *(v80 + 40);
              v307 = *(v77 + 32);
              v312 = *(v77 + 40);
              v349 = *(v369 + 40);
              v351 = *(v370 + 32);
              v357 = *(v370 + 40);
              v361 = *(v369 + 32);
              v340 = 0;
            }

            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v77, v383);
            outlined copy of _Glass.Variant.ID(v373, v378);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v77, v383);
            outlined copy of _Glass.Variant.ID(v373, v378);
            outlined consume of _Glass.Variant.ID(v398, v343);
            outlined consume of _Glass.Variant.ID(v340, 0x80u);
          }
        }

        else
        {
          if (v131 >= 0x40)
          {
            goto LABEL_406;
          }

          v299 = *(v80 + 32);
          v303 = *(v80 + 40);
          v307 = *(v77 + 32);
          v312 = *(v77 + 40);
          v349 = *(v369 + 40);
          v351 = *(v370 + 32);
          v357 = *(v370 + 40);
          v361 = *(v369 + 32);
          v278 = *(v127 + 40);
          v182 = *(v127 + 48);
          v284 = *(v127 + 32);
          v329 = *(v130 + 16);
          v274 = *(v130 + 32);
          v270 = *(v130 + 40);
          v183 = *(v130 + 48);
          v184 = *(v127 + 24);
          v293 = v184;
          v185 = *(v130 + 24);
          v317 = v185;
          *&v426[0] = *(v127 + 16);
          v289 = *&v426[0];
          BYTE8(v426[0]) = v184;
          v419 = v329;
          v420 = v185;
          v186 = v127;
          outlined copy of _Glass.Variant.ID(v369, v368);
          outlined copy of _Glass.Variant.ID(v370, v367);
          outlined copy of _Glass.Variant.ID(v77, v383);
          outlined copy of _Glass.Variant.ID(v373, v378);
          outlined copy of _Glass.Variant.ID(v186, v343);
          outlined copy of _Glass.Variant.ID(v334, v338);
          outlined copy of _Glass.Variant.ID(v369, v368);
          outlined copy of _Glass.Variant.ID(v370, v367);
          outlined copy of _Glass.Variant.ID(v77, v383);
          outlined copy of _Glass.Variant.ID(v373, v378);
          outlined copy of _Glass.Variant.ID(v398, v343);
          outlined copy of _Glass.Variant.ID(v334, v338);
          outlined copy of _Glass.Variant.ID(v289, v293);
          outlined copy of _Glass.Variant.ID(v329, v317);
          v187 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          if ((v187 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v398, v343);
            outlined consume of _Glass.Variant.ID(v334, v338);
            outlined consume of _Glass.Variant.ID(v334, v338);
            v207 = v398;
            v208 = v343;
LABEL_407:
            outlined consume of _Glass.Variant.ID(v207, v208);
            v133 = v77;
LABEL_408:
            outlined consume of _Glass.Variant.ID(v133, v383);
            v205 = v378;
            outlined consume of _Glass.Variant.ID(v373, v378);
            v206 = v373;
LABEL_409:
            outlined consume of _Glass.Variant.ID(v206, v205);
            v201 = v133;
            v202 = v383;
LABEL_410:
            outlined consume of _Glass.Variant.ID(v201, v202);
            v83 = v370;
            goto LABEL_411;
          }

          *&v426[0] = v284;
          BYTE8(v426[0]) = v278;
          v419 = v274;
          v420 = v270;
          outlined copy of _Glass.Variant.ID(v284, v278);
          outlined copy of _Glass.Variant.ID(v274, v270);
          v330 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          outlined consume of _Glass.Variant.ID(v398, v343);
          outlined consume of _Glass.Variant.ID(v334, v338);
          outlined consume of _Glass.Variant.ID(v334, v338);
          outlined consume of _Glass.Variant.ID(v398, v343);
          v133 = v77;
          if ((v330 & 1) == 0 || v182 != v183)
          {
            goto LABEL_408;
          }
        }

        v403 = v3;
        v319 = v10;
        v332 = v11;
        v263 = v13;
        if (v312 >> 6)
        {
          if (v312 >> 6 == 1)
          {
            v204 = v303;
            if ((v303 & 0xC0) != 0x40)
            {
              goto LABEL_453;
            }

            *&v426[0] = v307;
            BYTE8(v426[0]) = v312 & 0x3F;
            v419 = v299;
            v420 = v303 & 0x3F;
            outlined copy of _Glass.Variant.ID(v299, v303);
            outlined copy of _Glass.Variant.ID(v307, v312);
            outlined copy of _Glass.Variant.ID(v299, v303);
            outlined copy of _Glass.Variant.ID(v307, v312);
            v345 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v307, v312);
            outlined consume of _Glass.Variant.ID(v299, v303);
            outlined consume of _Glass.Variant.ID(v299, v303);
            outlined consume of _Glass.Variant.ID(v307, v312);
            v133 = v387;
            outlined consume of _Glass.Variant.ID(v387, v383);
            v205 = v378;
            outlined consume of _Glass.Variant.ID(v373, v378);
            v206 = v373;
            if ((v345 & 1) == 0)
            {
              goto LABEL_409;
            }

            goto LABEL_503;
          }

          v234 = v2;
          if (v307 | v312 ^ 0x80)
          {
            if (v312 == 128 && v307 == 1)
            {
              v231 = v303;
              v232 = v299;
              if ((v303 & 0xC0) != 0x80 || v299 != 1 || v303 != 128)
              {
                goto LABEL_454;
              }

              v236 = 1;
            }

            else
            {
              v231 = v303;
              v232 = v299;
              if ((v303 & 0xC0) != 0x80 || v299 != 2 || v303 != 128)
              {
                goto LABEL_454;
              }

              v236 = 2;
            }
          }

          else
          {
            v231 = v303;
            v232 = v299;
            if ((v303 & 0xC0) != 0x80 || v299 || v303 != 128)
            {
              goto LABEL_454;
            }

            v236 = 0;
          }

          outlined copy of _Glass.Variant.ID(v236, 0x80u);
          outlined consume of _Glass.Variant.ID(v307, v312);
          outlined consume of _Glass.Variant.ID(v236, 0x80u);
          outlined consume of _Glass.Variant.ID(v307, v312);
          v2 = v234;
          v133 = v77;
        }

        else
        {
          v204 = v303;
          if (v303 >= 0x40)
          {
LABEL_453:
            outlined copy of _Glass.Variant.ID(v307, v312);
            v231 = v204;
            v232 = v299;
LABEL_454:
            v233 = v231;
            outlined copy of _Glass.Variant.ID(v232, v231);
            outlined consume of _Glass.Variant.ID(v307, v312);
            outlined consume of _Glass.Variant.ID(v232, v233);
            goto LABEL_455;
          }

          v346 = *(v307 + 32);
          v341 = *(v307 + 40);
          v224 = *(v307 + 48);
          v226 = *(v299 + 16);
          v336 = *(v299 + 32);
          v295 = *(v299 + 40);
          v227 = *(v299 + 48);
          v228 = *(v307 + 24);
          v229 = *(v299 + 24);
          *&v426[0] = *(v307 + 16);
          v225 = *&v426[0];
          BYTE8(v426[0]) = v228;
          v419 = v226;
          v420 = v229;
          outlined copy of _Glass.Variant.ID(v299, v303);
          outlined copy of _Glass.Variant.ID(v307, v312);
          outlined copy of _Glass.Variant.ID(v299, v303);
          outlined copy of _Glass.Variant.ID(v307, v312);
          outlined copy of _Glass.Variant.ID(v225, v228);
          outlined copy of _Glass.Variant.ID(v226, v229);
          v230 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          if ((v230 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v307, v312);
            outlined consume of _Glass.Variant.ID(v299, v303);
            outlined consume of _Glass.Variant.ID(v299, v303);
            outlined consume of _Glass.Variant.ID(v307, v312);
            v2 = v412;
LABEL_455:
            v133 = v387;
            v13 = v263;
            v10 = v319;
            v11 = v332;
            v3 = v403;
            goto LABEL_408;
          }

          *&v426[0] = v346;
          BYTE8(v426[0]) = v341;
          v419 = v336;
          v420 = v295;
          outlined copy of _Glass.Variant.ID(v346, v341);
          outlined copy of _Glass.Variant.ID(v336, v295);
          v347 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          outlined consume of _Glass.Variant.ID(v307, v312);
          outlined consume of _Glass.Variant.ID(v299, v303);
          outlined consume of _Glass.Variant.ID(v299, v303);
          outlined consume of _Glass.Variant.ID(v307, v312);
          v2 = v412;
          v133 = v387;
          v13 = v263;
          v10 = v319;
          v11 = v332;
          v3 = v403;
          if ((v347 & 1) == 0 || v224 != v227)
          {
            goto LABEL_408;
          }
        }

        outlined consume of _Glass.Variant.ID(v133, v383);
        v205 = v378;
        outlined consume of _Glass.Variant.ID(v373, v378);
        v206 = v373;
LABEL_503:
        outlined consume of _Glass.Variant.ID(v206, v205);
        outlined consume of _Glass.Variant.ID(v133, v383);
        v83 = v370;
        if (v129 != v132)
        {
          goto LABEL_411;
        }

        goto LABEL_237;
      }

      if (v30 >= 0x40)
      {
        goto LABEL_106;
      }

      v49 = *(v26 + 16);
      v50 = *(v26 + 24);
      v51 = *(v26 + 48);
      v52 = *(v29 + 16);
      v53 = *(v29 + 24);
      v54 = *(v29 + 48);
      v376 = *(v10 + 24);
      v381 = *(v10 + 16);
      v385 = *(v22 + 24);
      v372 = *(v22 + 16);
      v360 = *(v26 + 24);
      v392 = v49;
      v356 = *(v29 + 24);
      v350 = v52;
      if (v50 >> 6)
      {
        if (v50 >> 6 == 1)
        {
          if ((v53 & 0xC0) != 0x40)
          {
            goto LABEL_166;
          }

          v342 = *(v26 + 32);
          v348 = *(v29 + 32);
          v333 = *(v29 + 40);
          v337 = *(v26 + 40);
          v369 = *(v10 + 32);
          v370 = *(v22 + 32);
          v367 = *(v22 + 40);
          v368 = *(v10 + 40);
          v407 = v3->i8[9];
          v408 = v3[1].i64[0];
          v390 = v3[1].i64[1];
          v419 = *(v26 + 16);
          v420 = v50 & 0x3F;
          v417 = v52;
          v418 = v53 & 0x3F;
          v55 = v29;
          v56 = v27;
          v57 = v30;
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v26, v56);
          outlined copy of _Glass.Variant.ID(v55, v57);
          outlined copy of _Glass.Variant.ID(v392, v360);
          outlined copy of _Glass.Variant.ID(v350, v356);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v404, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined copy of _Glass.Variant.ID(v26, v376);
          outlined copy of _Glass.Variant.ID(v55, v57);
          outlined copy of _Glass.Variant.ID(v392, v360);
          outlined copy of _Glass.Variant.ID(v350, v356);
          v320 = specialized static Material.ID.== infix(_:_:)(&v419, &v417);
          outlined consume of _Glass.Variant.ID(v392, v360);
          outlined consume of _Glass.Variant.ID(v350, v356);
          v58 = v376;
          outlined consume of _Glass.Variant.ID(v350, v356);
          outlined consume of _Glass.Variant.ID(v392, v360);
          if ((v320 & 1) == 0)
          {
            goto LABEL_356;
          }
        }

        else
        {
          if (v49 | v50 ^ 0x80)
          {
            v92 = v53 & 0xC0;
            if (*(v26 + 24) == 128 && v49 == 1)
            {
              if (v92 != 128 || v52 != 1 || v53 != 128)
              {
                goto LABEL_166;
              }

              v342 = *(v26 + 32);
              v348 = *(v29 + 32);
              v333 = *(v29 + 40);
              v337 = *(v26 + 40);
              v369 = *(v10 + 32);
              v370 = *(v22 + 32);
              v367 = *(v22 + 40);
              v368 = *(v10 + 40);
              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              v94 = *(v10 + 16);
              v95 = *(v10 + 24);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              v96 = v95;
              outlined copy of _Glass.Variant.ID(v94, v95);
              outlined copy of _Glass.Variant.ID(v29, v385);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v97 = 1;
            }

            else
            {
              if (v92 != 128 || v52 != 2 || v53 != 128)
              {
                goto LABEL_166;
              }

              v342 = *(v26 + 32);
              v348 = *(v29 + 32);
              v333 = *(v29 + 40);
              v337 = *(v26 + 40);
              v369 = *(v10 + 32);
              v370 = *(v22 + 32);
              v367 = *(v22 + 40);
              v368 = *(v10 + 40);
              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              v102 = *(v10 + 16);
              v103 = *(v10 + 24);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              v96 = v103;
              outlined copy of _Glass.Variant.ID(v102, v103);
              outlined copy of _Glass.Variant.ID(v29, v385);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v97 = 2;
            }
          }

          else
          {
            if ((v53 & 0xC0) != 0x80 || v52 || v53 != 128)
            {
LABEL_166:
              v107 = *(v22 + 16);
              v108 = *(v10 + 24);
              v109 = v30;
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v26, v108);
              outlined copy of _Glass.Variant.ID(v107, v109);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v404, v411);
              outlined copy of _Glass.Variant.ID(v10, v11);
              outlined copy of _Glass.Variant.ID(v26, v108);
              outlined copy of _Glass.Variant.ID(v107, v109);
              outlined copy of _Glass.Variant.ID(v392, v360);
              outlined copy of _Glass.Variant.ID(v350, v356);
              v58 = v376;
              outlined consume of _Glass.Variant.ID(v392, v360);
              outlined consume of _Glass.Variant.ID(v350, v356);
              goto LABEL_356;
            }

            v342 = *(v26 + 32);
            v348 = *(v29 + 32);
            v333 = *(v29 + 40);
            v337 = *(v26 + 40);
            v369 = *(v10 + 32);
            v370 = *(v22 + 32);
            v367 = *(v22 + 40);
            v368 = *(v10 + 40);
            v407 = v3->i8[9];
            v408 = v3[1].i64[0];
            v390 = v3[1].i64[1];
            v100 = *(v10 + 16);
            v101 = *(v10 + 24);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            v96 = v101;
            outlined copy of _Glass.Variant.ID(v100, v101);
            outlined copy of _Glass.Variant.ID(v29, v385);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            v97 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v404, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined copy of _Glass.Variant.ID(v381, v96);
          outlined copy of _Glass.Variant.ID(v29, v385);
          outlined consume of _Glass.Variant.ID(v392, v360);
          outlined consume of _Glass.Variant.ID(v97, 0x80u);
        }

LABEL_160:
        if (v337 >> 6)
        {
          v105 = v342;
          v104 = v348;
          v106 = v333;
          if (v337 >> 6 == 1)
          {
            if ((v333 & 0xC0) != 0x40)
            {
              goto LABEL_226;
            }

            *&v426[0] = v342;
            BYTE8(v426[0]) = v337 & 0x3F;
            v419 = v348;
            v420 = v333 & 0x3F;
            outlined copy of _Glass.Variant.ID(v342, v337);
            outlined copy of _Glass.Variant.ID(v348, v333);
            outlined copy of _Glass.Variant.ID(v342, v337);
            outlined copy of _Glass.Variant.ID(v348, v333);
            v396 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v342, v337);
            outlined consume of _Glass.Variant.ID(v348, v333);
            outlined consume of _Glass.Variant.ID(v348, v333);
            outlined consume of _Glass.Variant.ID(v342, v337);
            outlined consume of _Glass.Variant.ID(v381, v376);
            outlined consume of _Glass.Variant.ID(v372, v385);
            outlined consume of _Glass.Variant.ID(v372, v385);
            outlined consume of _Glass.Variant.ID(v381, v376);
            v37 = v411;
            v22 = v404;
            v2 = v412;
            if ((v396 & 1) == 0 || v51 != v54)
            {
              goto LABEL_359;
            }

            goto LABEL_101;
          }

          if (v342 | v337 ^ 0x80)
          {
            v124 = v333 & 0xC0;
            if (v337 == 128 && v342 == 1)
            {
              if (v124 != 128 || v348 != 1 || v333 != 128)
              {
                goto LABEL_226;
              }

              v126 = 1;
            }

            else
            {
              if (v124 != 128 || v348 != 2 || v333 != 128)
              {
                goto LABEL_226;
              }

              v126 = 2;
            }
          }

          else
          {
            if ((v333 & 0xC0) != 0x80 || v348 || v333 != 128)
            {
LABEL_226:
              outlined copy of _Glass.Variant.ID(v105, v337);
              outlined copy of _Glass.Variant.ID(v104, v106);
              outlined consume of _Glass.Variant.ID(v105, v337);
              v150 = v104;
              v151 = v106;
              goto LABEL_355;
            }

            v126 = 0;
          }

          v149 = v411;
          outlined consume of _Glass.Variant.ID(v342, v337);
          outlined consume of _Glass.Variant.ID(v126, 0x80u);
          v58 = v376;
          outlined consume of _Glass.Variant.ID(v381, v376);
          outlined consume of _Glass.Variant.ID(v372, v385);
          outlined consume of _Glass.Variant.ID(v372, v385);
LABEL_224:
          outlined consume of _Glass.Variant.ID(v381, v58);
          v22 = v404;
          v37 = v149;
          v2 = v412;
          if (v51 != v54)
          {
            goto LABEL_359;
          }

          goto LABEL_101;
        }

        v106 = v333;
        v105 = v342;
        v104 = v348;
        if (v333 >= 0x40)
        {
          goto LABEL_226;
        }

        v110 = *(v342 + 16);
        v111 = *(v342 + 24);
        v112 = *(v342 + 48);
        v113 = *(v348 + 16);
        v114 = *(v348 + 24);
        v115 = *(v348 + 48);
        v397 = *(v342 + 24);
        v362 = v113;
        v358 = *(v348 + 24);
        if (v111 >> 6)
        {
          if (v111 >> 6 == 1)
          {
            if ((v114 & 0xC0) != 0x40)
            {
              goto LABEL_388;
            }

            v306 = *(v342 + 32);
            v311 = *(v348 + 32);
            v302 = *(v348 + 40);
            v298 = *(v342 + 40);
            *&v426[0] = *(v342 + 16);
            BYTE8(v426[0]) = v111 & 0x3F;
            v419 = v113;
            v420 = v114 & 0x3F;
            v116 = v111;
            v117 = v110;
            v118 = v113;
            outlined copy of _Glass.Variant.ID(v342, v337);
            outlined copy of _Glass.Variant.ID(v348, v333);
            outlined copy of _Glass.Variant.ID(v117, v116);
            outlined copy of _Glass.Variant.ID(v118, v358);
            outlined copy of _Glass.Variant.ID(v342, v337);
            outlined copy of _Glass.Variant.ID(v348, v333);
            v119 = v117;
            outlined copy of _Glass.Variant.ID(v117, v397);
            outlined copy of _Glass.Variant.ID(v362, v358);
            v120 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v117, v397);
            outlined consume of _Glass.Variant.ID(v362, v358);
            v121 = v348;
            outlined consume of _Glass.Variant.ID(v362, v358);
            v122 = v119;
            v123 = v333;
            outlined consume of _Glass.Variant.ID(v122, v397);
            if ((v120 & 1) == 0)
            {
              goto LABEL_389;
            }
          }

          else
          {
            if (v110 | v111 ^ 0x80)
            {
              v179 = v114 & 0xC0;
              if (*(v342 + 24) == 128 && v110 == 1)
              {
                if (v179 != 128 || v113 != 1 || v114 != 128)
                {
                  goto LABEL_388;
                }

                v353 = *(v342 + 16);
                v306 = *(v342 + 32);
                v311 = *(v348 + 32);
                v302 = *(v348 + 40);
                v298 = *(v342 + 40);
                v181 = 1;
              }

              else
              {
                if (v179 != 128 || v113 != 2 || v114 != 128)
                {
                  goto LABEL_388;
                }

                v353 = *(v342 + 16);
                v306 = *(v342 + 32);
                v311 = *(v348 + 32);
                v302 = *(v348 + 40);
                v298 = *(v342 + 40);
                v181 = 2;
              }

              v363 = v181;
            }

            else
            {
              if ((v114 & 0xC0) != 0x80 || v113 || v114 != 128)
              {
LABEL_388:
                v354 = *(v342 + 16);
                outlined copy of _Glass.Variant.ID(v342, v337);
                v123 = v333;
                outlined copy of _Glass.Variant.ID(v348, v333);
                outlined copy of _Glass.Variant.ID(v342, v337);
                outlined copy of _Glass.Variant.ID(v348, v333);
                outlined copy of _Glass.Variant.ID(v354, v397);
                outlined copy of _Glass.Variant.ID(v362, v358);
                v121 = v348;
                outlined consume of _Glass.Variant.ID(v354, v397);
                outlined consume of _Glass.Variant.ID(v362, v358);
LABEL_389:
                outlined consume of _Glass.Variant.ID(v342, v337);
                outlined consume of _Glass.Variant.ID(v121, v123);
LABEL_390:
                outlined consume of _Glass.Variant.ID(v121, v123);
                v151 = v337;
                v150 = v342;
                goto LABEL_355;
              }

              v353 = *(v342 + 16);
              v306 = *(v342 + 32);
              v311 = *(v348 + 32);
              v302 = *(v348 + 40);
              v298 = *(v342 + 40);
              v363 = 0;
            }

            outlined copy of _Glass.Variant.ID(v342, v337);
            outlined copy of _Glass.Variant.ID(v348, v333);
            outlined copy of _Glass.Variant.ID(v342, v337);
            outlined copy of _Glass.Variant.ID(v348, v333);
            outlined consume of _Glass.Variant.ID(v353, v397);
            outlined consume of _Glass.Variant.ID(v363, 0x80u);
          }
        }

        else
        {
          if (v114 >= 0x40)
          {
            goto LABEL_388;
          }

          v306 = *(v342 + 32);
          v311 = *(v348 + 32);
          v302 = *(v348 + 40);
          v283 = *(v110 + 32);
          v277 = *(v110 + 40);
          v172 = *(v110 + 48);
          v298 = *(v342 + 40);
          v327 = *(v113 + 16);
          v273 = *(v113 + 32);
          v269 = *(v113 + 40);
          v173 = *(v113 + 48);
          v174 = *(v110 + 24);
          v288 = v174;
          v175 = *(v113 + 24);
          v316 = v175;
          *&v426[0] = *(v110 + 16);
          v292 = *&v426[0];
          BYTE8(v426[0]) = v174;
          v419 = v327;
          v420 = v175;
          v176 = v110;
          v352 = v110;
          v177 = v113;
          outlined copy of _Glass.Variant.ID(v342, v337);
          outlined copy of _Glass.Variant.ID(v348, v333);
          outlined copy of _Glass.Variant.ID(v176, v397);
          outlined copy of _Glass.Variant.ID(v177, v358);
          outlined copy of _Glass.Variant.ID(v342, v337);
          outlined copy of _Glass.Variant.ID(v348, v333);
          outlined copy of _Glass.Variant.ID(v352, v397);
          outlined copy of _Glass.Variant.ID(v177, v358);
          outlined copy of _Glass.Variant.ID(v292, v288);
          outlined copy of _Glass.Variant.ID(v327, v316);
          v178 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          if ((v178 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v352, v397);
            outlined consume of _Glass.Variant.ID(v362, v358);
            outlined consume of _Glass.Variant.ID(v362, v358);
            outlined consume of _Glass.Variant.ID(v352, v397);
            v123 = v333;
            v121 = v348;
            goto LABEL_389;
          }

          *&v426[0] = v283;
          BYTE8(v426[0]) = v277;
          v419 = v273;
          v420 = v269;
          outlined copy of _Glass.Variant.ID(v283, v277);
          outlined copy of _Glass.Variant.ID(v273, v269);
          v328 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          outlined consume of _Glass.Variant.ID(v352, v397);
          outlined consume of _Glass.Variant.ID(v362, v358);
          outlined consume of _Glass.Variant.ID(v362, v358);
          outlined consume of _Glass.Variant.ID(v352, v397);
          v123 = v333;
          v121 = v348;
          if ((v328 & 1) == 0 || v172 != v173)
          {
            goto LABEL_389;
          }
        }

        v402 = v3;
        v318 = v10;
        v331 = v11;
        v262 = v13;
        if (v298 >> 6)
        {
          if (v298 >> 6 == 1)
          {
            v203 = v302;
            if ((v302 & 0xC0) != 0x40)
            {
              goto LABEL_435;
            }

            *&v426[0] = v306;
            BYTE8(v426[0]) = v298 & 0x3F;
            v419 = v311;
            v420 = v302 & 0x3F;
            outlined copy of _Glass.Variant.ID(v311, v302);
            outlined copy of _Glass.Variant.ID(v306, v298);
            outlined copy of _Glass.Variant.ID(v311, v302);
            outlined copy of _Glass.Variant.ID(v306, v298);
            v364 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v306, v298);
            outlined consume of _Glass.Variant.ID(v311, v302);
            outlined consume of _Glass.Variant.ID(v311, v302);
            outlined consume of _Glass.Variant.ID(v306, v298);
            outlined consume of _Glass.Variant.ID(v342, v337);
            v121 = v348;
            v123 = v333;
            outlined consume of _Glass.Variant.ID(v348, v333);
            if ((v364 & 1) == 0)
            {
              goto LABEL_390;
            }

            goto LABEL_491;
          }

          if (v306 | v298 ^ 0x80)
          {
            v221 = v298;
            if (v298 == 128 && v306 == 1)
            {
              v217 = v302;
              if ((v302 & 0xC0) != 0x80 || v311 != 1 || v302 != 128)
              {
                goto LABEL_436;
              }

              v223 = 1;
            }

            else
            {
              v217 = v302;
              if ((v302 & 0xC0) != 0x80 || v311 != 2 || v302 != 128)
              {
                goto LABEL_436;
              }

              v223 = 2;
            }
          }

          else
          {
            v217 = v302;
            if ((v302 & 0xC0) != 0x80 || v311 || v302 != 128)
            {
              goto LABEL_436;
            }

            v221 = v298;
            v223 = 0;
          }

          outlined copy of _Glass.Variant.ID(v223, 0x80u);
          outlined consume of _Glass.Variant.ID(v306, v221);
          outlined consume of _Glass.Variant.ID(v223, 0x80u);
          outlined consume of _Glass.Variant.ID(v306, v221);
          v123 = v333;
          v121 = v348;
        }

        else
        {
          v203 = v302;
          if (v302 >= 0x40)
          {
LABEL_435:
            v216 = v203;
            outlined copy of _Glass.Variant.ID(v306, v298);
            v217 = v216;
LABEL_436:
            v218 = v217;
            outlined copy of _Glass.Variant.ID(v311, v217);
            outlined consume of _Glass.Variant.ID(v306, v298);
            v219 = v311;
            v220 = v218;
            goto LABEL_437;
          }

          v365 = *(v306 + 32);
          v359 = *(v306 + 40);
          v209 = *(v306 + 48);
          v211 = *(v311 + 16);
          v355 = *(v311 + 32);
          v294 = *(v311 + 40);
          v212 = *(v311 + 48);
          v213 = *(v306 + 24);
          v214 = *(v311 + 24);
          *&v426[0] = *(v306 + 16);
          v210 = *&v426[0];
          BYTE8(v426[0]) = v213;
          v419 = v211;
          v420 = v214;
          outlined copy of _Glass.Variant.ID(v311, v302);
          outlined copy of _Glass.Variant.ID(v306, v298);
          outlined copy of _Glass.Variant.ID(v311, v302);
          outlined copy of _Glass.Variant.ID(v306, v298);
          outlined copy of _Glass.Variant.ID(v210, v213);
          outlined copy of _Glass.Variant.ID(v211, v214);
          v215 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          if ((v215 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v306, v298);
            outlined consume of _Glass.Variant.ID(v311, v302);
            outlined consume of _Glass.Variant.ID(v311, v302);
            v219 = v306;
            v220 = v298;
LABEL_437:
            outlined consume of _Glass.Variant.ID(v219, v220);
            v123 = v333;
            v121 = v348;
            v13 = v262;
            v10 = v318;
            v11 = v331;
            v3 = v402;
            goto LABEL_389;
          }

          *&v426[0] = v365;
          BYTE8(v426[0]) = v359;
          v419 = v355;
          v420 = v294;
          outlined copy of _Glass.Variant.ID(v365, v359);
          outlined copy of _Glass.Variant.ID(v355, v294);
          v366 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          outlined consume of _Glass.Variant.ID(v306, v298);
          outlined consume of _Glass.Variant.ID(v311, v302);
          outlined consume of _Glass.Variant.ID(v311, v302);
          outlined consume of _Glass.Variant.ID(v306, v298);
          v123 = v333;
          v121 = v348;
          v13 = v262;
          v10 = v318;
          v11 = v331;
          v3 = v402;
          if ((v366 & 1) == 0 || v209 != v212)
          {
            goto LABEL_389;
          }
        }

        outlined consume of _Glass.Variant.ID(v342, v337);
        outlined consume of _Glass.Variant.ID(v121, v123);
LABEL_491:
        v246 = v121;
        v149 = v411;
        outlined consume of _Glass.Variant.ID(v246, v123);
        outlined consume of _Glass.Variant.ID(v342, v337);
        v58 = v376;
        outlined consume of _Glass.Variant.ID(v381, v376);
        outlined consume of _Glass.Variant.ID(v372, v385);
        outlined consume of _Glass.Variant.ID(v372, v385);
        if (v112 != v115)
        {
          goto LABEL_357;
        }

        goto LABEL_224;
      }

      if (v53 >= 0x40)
      {
        goto LABEL_166;
      }

      v310 = *(v49 + 16);
      v297 = *(v49 + 32);
      v88 = *(v49 + 48);
      v314 = *(v52 + 16);
      v321 = *(v52 + 24);
      v301 = *(v52 + 32);
      v305 = *(v49 + 24);
      v291 = *(v52 + 40);
      v89 = *(v52 + 48);
      if (v305 >> 6)
      {
        if (v305 >> 6 == 1)
        {
          if ((v321 & 0xC0) != 0x40)
          {
            goto LABEL_260;
          }

          v287 = *(v49 + 40);
          v342 = *(v26 + 32);
          v348 = *(v29 + 32);
          v333 = *(v29 + 40);
          v337 = *(v26 + 40);
          v369 = *(v10 + 32);
          v370 = *(v22 + 32);
          v367 = *(v22 + 40);
          v368 = *(v10 + 40);
          v407 = v3->i8[9];
          v408 = v3[1].i64[0];
          v390 = v3[1].i64[1];
          v419 = *(v49 + 16);
          v420 = v305 & 0x3F;
          v417 = v314;
          v418 = v321 & 0x3F;
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v26, v376);
          outlined copy of _Glass.Variant.ID(v372, v385);
          outlined copy of _Glass.Variant.ID(v392, v360);
          outlined copy of _Glass.Variant.ID(v350, v356);
          outlined copy of _Glass.Variant.ID(v310, v305);
          outlined copy of _Glass.Variant.ID(v314, v321);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v22, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined copy of _Glass.Variant.ID(v26, v376);
          outlined copy of _Glass.Variant.ID(v372, v385);
          outlined copy of _Glass.Variant.ID(v392, v360);
          outlined copy of _Glass.Variant.ID(v350, v356);
          outlined copy of _Glass.Variant.ID(v310, v305);
          outlined copy of _Glass.Variant.ID(v314, v321);
          v280 = specialized static Material.ID.== infix(_:_:)(&v419, &v417);
          outlined consume of _Glass.Variant.ID(v310, v305);
          outlined consume of _Glass.Variant.ID(v314, v321);
          v90 = v360;
          outlined consume of _Glass.Variant.ID(v314, v321);
          v91 = v392;
          outlined consume of _Glass.Variant.ID(v310, v305);
          if ((v280 & 1) == 0)
          {
            goto LABEL_353;
          }
        }

        else
        {
          if (v310 | v305 ^ 0x80)
          {
            if (*(v49 + 24) == 128 && v310 == 1)
            {
              if ((v321 & 0xC0) != 0x80 || v314 != 1 || v321 != 128)
              {
                goto LABEL_260;
              }

              v287 = *(v49 + 40);
              v342 = *(v26 + 32);
              v348 = *(v29 + 32);
              v333 = *(v29 + 40);
              v337 = *(v26 + 40);
              v369 = *(v10 + 32);
              v370 = *(v22 + 32);
              v367 = *(v22 + 40);
              v368 = *(v10 + 40);
              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v26, v376);
              v144 = v29;
              v145 = v385;
              outlined copy of _Glass.Variant.ID(v372, v385);
              v146 = v360;
              outlined copy of _Glass.Variant.ID(v392, v360);
              v147 = v350;
              outlined copy of _Glass.Variant.ID(v350, v356);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v148 = 1;
            }

            else
            {
              if ((v321 & 0xC0) != 0x80 || v314 != 2 || v321 != 128)
              {
                goto LABEL_260;
              }

              v287 = *(v49 + 40);
              v342 = *(v26 + 32);
              v348 = *(v29 + 32);
              v333 = *(v29 + 40);
              v337 = *(v26 + 40);
              v369 = *(v10 + 32);
              v370 = *(v22 + 32);
              v367 = *(v22 + 40);
              v368 = *(v10 + 40);
              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v26, v376);
              v144 = v29;
              v145 = v385;
              outlined copy of _Glass.Variant.ID(v372, v385);
              v146 = v360;
              outlined copy of _Glass.Variant.ID(v392, v360);
              v147 = v350;
              outlined copy of _Glass.Variant.ID(v350, v356);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v148 = 2;
            }

            v323 = v148;
          }

          else
          {
            if ((v321 & 0xC0) != 0x80 || v314 || v321 != 128)
            {
LABEL_260:
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v26, v376);
              outlined copy of _Glass.Variant.ID(v372, v385);
              outlined copy of _Glass.Variant.ID(v392, v360);
              outlined copy of _Glass.Variant.ID(v350, v356);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v22, v411);
              outlined copy of _Glass.Variant.ID(v10, v11);
              outlined copy of _Glass.Variant.ID(v26, v376);
              outlined copy of _Glass.Variant.ID(v372, v385);
              outlined copy of _Glass.Variant.ID(v392, v360);
              outlined copy of _Glass.Variant.ID(v350, v356);
              outlined copy of _Glass.Variant.ID(v310, v305);
              outlined copy of _Glass.Variant.ID(v314, v321);
              v90 = v360;
              v91 = v392;
              outlined consume of _Glass.Variant.ID(v310, v305);
              outlined consume of _Glass.Variant.ID(v314, v321);
              goto LABEL_353;
            }

            v287 = *(v49 + 40);
            v342 = *(v26 + 32);
            v348 = *(v29 + 32);
            v333 = *(v29 + 40);
            v337 = *(v26 + 40);
            v369 = *(v10 + 32);
            v370 = *(v22 + 32);
            v367 = *(v22 + 40);
            v368 = *(v10 + 40);
            v407 = v3->i8[9];
            v408 = v3[1].i64[0];
            v390 = v3[1].i64[1];
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined copy of _Glass.Variant.ID(v26, v376);
            v144 = v29;
            v145 = v385;
            outlined copy of _Glass.Variant.ID(v372, v385);
            v146 = v360;
            outlined copy of _Glass.Variant.ID(v392, v360);
            v147 = v350;
            outlined copy of _Glass.Variant.ID(v350, v356);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            v323 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v404, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined copy of _Glass.Variant.ID(v381, v376);
          outlined copy of _Glass.Variant.ID(v144, v145);
          outlined copy of _Glass.Variant.ID(v392, v146);
          outlined copy of _Glass.Variant.ID(v147, v356);
          outlined consume of _Glass.Variant.ID(v310, v305);
          outlined consume of _Glass.Variant.ID(v323, 0x80u);
        }
      }

      else
      {
        if (v321 >= 0x40)
        {
          goto LABEL_260;
        }

        v342 = *(v26 + 32);
        v348 = *(v29 + 32);
        v333 = *(v29 + 40);
        v337 = *(v26 + 40);
        v369 = *(v10 + 32);
        v370 = *(v22 + 32);
        v367 = *(v22 + 40);
        v368 = *(v10 + 40);
        v407 = v3->i8[9];
        v408 = v3[1].i64[0];
        v390 = v3[1].i64[1];
        v281 = *(v310 + 16);
        v287 = *(v49 + 40);
        v137 = *(v310 + 24);
        v266 = *(v310 + 40);
        v138 = *(v310 + 48);
        v267 = *(v310 + 32);
        v271 = *(v314 + 16);
        v139 = *(v314 + 24);
        v265 = *(v314 + 32);
        v264 = *(v314 + 40);
        v140 = *(v314 + 48);
        outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
        v275 = v137;
        if (v137 >> 6)
        {
          if (v137 >> 6 == 1)
          {
            v141 = v139;
            if ((v139 & 0xC0) != 0x40)
            {
              goto LABEL_327;
            }

            v419 = v281;
            v420 = v137 & 0x3F;
            v417 = v271;
            v418 = v139 & 0x3F;
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            v260 = v139;
            outlined copy of _Glass.Variant.ID(v381, v376);
            outlined copy of _Glass.Variant.ID(v372, v385);
            outlined copy of _Glass.Variant.ID(v392, v360);
            outlined copy of _Glass.Variant.ID(v350, v356);
            outlined copy of _Glass.Variant.ID(v310, v305);
            outlined copy of _Glass.Variant.ID(v314, v321);
            outlined copy of _Glass.Variant.ID(v271, v139);
            outlined copy of _Glass.Variant.ID(v281, v137);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined copy of _Glass.Variant.ID(v22, v411);
            outlined copy of _Glass.Variant.ID(v10, v11);
            v142 = v310;
            outlined copy of _Glass.Variant.ID(v381, v376);
            outlined copy of _Glass.Variant.ID(v372, v385);
            outlined copy of _Glass.Variant.ID(v392, v360);
            outlined copy of _Glass.Variant.ID(v350, v356);
            outlined copy of _Glass.Variant.ID(v310, v305);
            outlined copy of _Glass.Variant.ID(v314, v321);
            outlined copy of _Glass.Variant.ID(v271, v260);
            outlined copy of _Glass.Variant.ID(v281, v137);
            v257 = specialized static Material.ID.== infix(_:_:)(&v419, &v417);
            outlined consume of _Glass.Variant.ID(v281, v137);
            outlined consume of _Glass.Variant.ID(v271, v260);
            outlined consume of _Glass.Variant.ID(v271, v260);
            outlined consume of _Glass.Variant.ID(v281, v137);
            if ((v257 & 1) == 0)
            {
              goto LABEL_329;
            }
          }

          else
          {
            if (v281 | v137 ^ 0x80)
            {
              v195 = v137 == 128 && v281 == 1;
              v192 = v321;
              v141 = v139;
              v196 = v139 & 0xC0;
              if (v195)
              {
                if (v196 != 128 || v271 != 1 || v139 != 128)
                {
                  goto LABEL_328;
                }

                outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
                outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
                outlined copy of _Glass.Variant.ID(v381, v376);
                outlined copy of _Glass.Variant.ID(v372, v385);
                outlined copy of _Glass.Variant.ID(v392, v360);
                v197 = v356;
                outlined copy of _Glass.Variant.ID(v350, v356);
                outlined copy of _Glass.Variant.ID(v310, v305);
                outlined copy of _Glass.Variant.ID(v314, v321);
                outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
                v198 = 1;
              }

              else
              {
                if (v196 != 128 || v271 != 2 || v139 != 128)
                {
                  goto LABEL_328;
                }

                outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
                outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
                outlined copy of _Glass.Variant.ID(v381, v376);
                outlined copy of _Glass.Variant.ID(v372, v385);
                outlined copy of _Glass.Variant.ID(v392, v360);
                v197 = v356;
                outlined copy of _Glass.Variant.ID(v350, v356);
                outlined copy of _Glass.Variant.ID(v310, v305);
                outlined copy of _Glass.Variant.ID(v314, v321);
                outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
                v198 = 2;
              }
            }

            else
            {
              v141 = v139;
              v192 = v321;
              if ((v139 & 0xC0) != 0x80 || v271 || v139 != 128)
              {
                goto LABEL_328;
              }

              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v381, v376);
              outlined copy of _Glass.Variant.ID(v372, v385);
              outlined copy of _Glass.Variant.ID(v392, v360);
              v197 = v356;
              outlined copy of _Glass.Variant.ID(v350, v356);
              outlined copy of _Glass.Variant.ID(v310, v305);
              outlined copy of _Glass.Variant.ID(v314, v321);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v198 = 0;
            }

            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined copy of _Glass.Variant.ID(v22, v411);
            outlined copy of _Glass.Variant.ID(v10, v11);
            outlined copy of _Glass.Variant.ID(v381, v376);
            outlined copy of _Glass.Variant.ID(v372, v385);
            outlined copy of _Glass.Variant.ID(v392, v360);
            outlined copy of _Glass.Variant.ID(v350, v197);
            outlined copy of _Glass.Variant.ID(v310, v305);
            outlined copy of _Glass.Variant.ID(v314, v192);
            outlined copy of _Glass.Variant.ID(v198, 0x80u);
            outlined consume of _Glass.Variant.ID(v281, v275);
            outlined consume of _Glass.Variant.ID(v198, 0x80u);
            v142 = v310;
          }
        }

        else
        {
          v141 = v139;
          if (v139 >= 0x40)
          {
LABEL_327:
            outlined copy of _Glass.Variant.ID(v281, v137);
            v192 = v321;
LABEL_328:
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined copy of _Glass.Variant.ID(v381, v376);
            outlined copy of _Glass.Variant.ID(v372, v385);
            outlined copy of _Glass.Variant.ID(v392, v360);
            outlined copy of _Glass.Variant.ID(v350, v356);
            outlined copy of _Glass.Variant.ID(v310, v305);
            outlined copy of _Glass.Variant.ID(v314, v192);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined copy of _Glass.Variant.ID(v22, v411);
            outlined copy of _Glass.Variant.ID(v10, v11);
            outlined copy of _Glass.Variant.ID(v381, v376);
            outlined copy of _Glass.Variant.ID(v372, v385);
            outlined copy of _Glass.Variant.ID(v392, v360);
            outlined copy of _Glass.Variant.ID(v350, v356);
            v142 = v310;
            outlined copy of _Glass.Variant.ID(v310, v305);
            outlined copy of _Glass.Variant.ID(v314, v321);
            outlined copy of _Glass.Variant.ID(v271, v141);
            outlined consume of _Glass.Variant.ID(v281, v275);
            outlined consume of _Glass.Variant.ID(v271, v141);
            goto LABEL_329;
          }

          v253 = *(v281 + 32);
          v252 = *(v281 + 40);
          v258 = *(v271 + 16);
          v251 = *(v271 + 32);
          v250 = *(v271 + 40);
          v248 = *(v271 + 48);
          v249 = *(v281 + 48);
          v254 = *(v281 + 24);
          v256 = *(v271 + 24);
          v419 = *(v281 + 16);
          v255 = v419;
          v420 = v254;
          v417 = v258;
          v418 = v256;
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v381, v376);
          outlined copy of _Glass.Variant.ID(v372, v385);
          outlined copy of _Glass.Variant.ID(v392, v360);
          outlined copy of _Glass.Variant.ID(v350, v356);
          outlined copy of _Glass.Variant.ID(v310, v305);
          outlined copy of _Glass.Variant.ID(v314, v321);
          outlined copy of _Glass.Variant.ID(v271, v139);
          outlined copy of _Glass.Variant.ID(v281, v137);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v22, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined copy of _Glass.Variant.ID(v381, v376);
          outlined copy of _Glass.Variant.ID(v372, v385);
          outlined copy of _Glass.Variant.ID(v392, v360);
          outlined copy of _Glass.Variant.ID(v350, v356);
          outlined copy of _Glass.Variant.ID(v310, v305);
          outlined copy of _Glass.Variant.ID(v314, v321);
          outlined copy of _Glass.Variant.ID(v271, v139);
          outlined copy of _Glass.Variant.ID(v281, v137);
          outlined copy of _Glass.Variant.ID(v255, v254);
          outlined copy of _Glass.Variant.ID(v258, v256);
          v191 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v419, &v417);
          outlined consume of _Glass.Variant.ID(v417, v418);
          outlined consume of _Glass.Variant.ID(v419, v420);
          if ((v191 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v281, v137);
            outlined consume of _Glass.Variant.ID(v271, v139);
            outlined consume of _Glass.Variant.ID(v271, v139);
            outlined consume of _Glass.Variant.ID(v281, v137);
            v142 = v310;
LABEL_329:
            outlined consume of _Glass.Variant.ID(v142, v305);
            outlined consume of _Glass.Variant.ID(v314, v321);
            outlined consume of _Glass.Variant.ID(v314, v321);
            v193 = v142;
            v194 = v305;
            goto LABEL_352;
          }

          *&v426[0] = v253;
          BYTE8(v426[0]) = v252;
          v419 = v251;
          v420 = v250;
          outlined copy of _Glass.Variant.ID(v253, v252);
          outlined copy of _Glass.Variant.ID(v251, v250);
          v259 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          outlined consume of _Glass.Variant.ID(v281, v137);
          outlined consume of _Glass.Variant.ID(v271, v139);
          outlined consume of _Glass.Variant.ID(v271, v139);
          outlined consume of _Glass.Variant.ID(v281, v137);
          v142 = v310;
          if ((v259 & 1) == 0 || v249 != v248)
          {
            goto LABEL_329;
          }
        }

        *&v426[0] = v267;
        BYTE8(v426[0]) = v266;
        v419 = v265;
        v420 = v264;
        outlined copy of _Glass.Variant.ID(v267, v266);
        outlined copy of _Glass.Variant.ID(v265, v264);
        v285 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
        outlined consume of _Glass.Variant.ID(v419, v420);
        outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
        outlined consume of _Glass.Variant.ID(v142, v305);
        outlined consume of _Glass.Variant.ID(v314, v321);
        outlined consume of _Glass.Variant.ID(v314, v321);
        outlined consume of _Glass.Variant.ID(v142, v305);
        v90 = v360;
        v91 = v392;
        if ((v285 & 1) == 0 || v138 != v140)
        {
          goto LABEL_353;
        }
      }

      if (v287 >> 6)
      {
        v153 = v291;
        if (v287 >> 6 == 1)
        {
          if ((v291 & 0xC0) != 0x40)
          {
            goto LABEL_351;
          }

          *&v426[0] = v297;
          BYTE8(v426[0]) = v287 & 0x3F;
          v419 = v301;
          v420 = v291 & 0x3F;
          outlined copy of _Glass.Variant.ID(v297, v287);
          outlined copy of _Glass.Variant.ID(v301, v291);
          outlined copy of _Glass.Variant.ID(v297, v287);
          outlined copy of _Glass.Variant.ID(v301, v291);
          v324 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v297, v287);
          outlined consume of _Glass.Variant.ID(v301, v291);
          outlined consume of _Glass.Variant.ID(v301, v291);
          outlined consume of _Glass.Variant.ID(v297, v287);
          outlined consume of _Glass.Variant.ID(v392, v360);
          outlined consume of _Glass.Variant.ID(v350, v356);
          outlined consume of _Glass.Variant.ID(v350, v356);
          outlined consume of _Glass.Variant.ID(v392, v360);
          v58 = v376;
          if ((v324 & 1) == 0 || v88 != v89)
          {
            goto LABEL_356;
          }

          goto LABEL_160;
        }

        if (v297 | v287 ^ 0x80)
        {
          v160 = v291 & 0xC0;
          if (v287 == 128 && v297 == 1)
          {
            if (v160 != 128 || v301 != 1 || v291 != 128)
            {
              goto LABEL_351;
            }

            v162 = 1;
          }

          else
          {
            if (v160 != 128 || v301 != 2 || v291 != 128)
            {
              goto LABEL_351;
            }

            v162 = 2;
          }
        }

        else
        {
          if ((v291 & 0xC0) != 0x80 || v301 || v291 != 128)
          {
LABEL_351:
            outlined copy of _Glass.Variant.ID(v297, v287);
            outlined copy of _Glass.Variant.ID(v301, v153);
            outlined consume of _Glass.Variant.ID(v297, v287);
            v193 = v301;
            v194 = v153;
            goto LABEL_352;
          }

          v162 = 0;
        }

        outlined consume of _Glass.Variant.ID(v297, v287);
        outlined consume of _Glass.Variant.ID(v162, 0x80u);
        outlined consume of _Glass.Variant.ID(v392, v360);
        outlined consume of _Glass.Variant.ID(v350, v356);
        v159 = v392;
        v90 = v360;
        outlined consume of _Glass.Variant.ID(v350, v356);
      }

      else
      {
        v153 = v291;
        if (v291 >= 0x40)
        {
          goto LABEL_351;
        }

        v282 = *(v297 + 32);
        v276 = *(v297 + 40);
        v154 = *(v297 + 48);
        v325 = *(v301 + 16);
        v272 = *(v301 + 32);
        v268 = *(v301 + 40);
        v155 = *(v301 + 48);
        v156 = *(v297 + 24);
        v308 = v156;
        v157 = *(v301 + 24);
        v315 = v157;
        *&v426[0] = *(v297 + 16);
        v313 = *&v426[0];
        BYTE8(v426[0]) = v156;
        v419 = v325;
        v420 = v157;
        outlined copy of _Glass.Variant.ID(v297, v287);
        outlined copy of _Glass.Variant.ID(v301, v291);
        outlined copy of _Glass.Variant.ID(v297, v287);
        outlined copy of _Glass.Variant.ID(v301, v291);
        outlined copy of _Glass.Variant.ID(v313, v308);
        outlined copy of _Glass.Variant.ID(v325, v315);
        v158 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
        outlined consume of _Glass.Variant.ID(v419, v420);
        outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
        if ((v158 & 1) == 0)
        {
          outlined consume of _Glass.Variant.ID(v297, v287);
          outlined consume of _Glass.Variant.ID(v301, v291);
          outlined consume of _Glass.Variant.ID(v301, v291);
          v193 = v297;
          v194 = v287;
LABEL_352:
          outlined consume of _Glass.Variant.ID(v193, v194);
          v90 = v360;
          v91 = v392;
LABEL_353:
          outlined consume of _Glass.Variant.ID(v91, v90);
          v159 = v91;
          outlined consume of _Glass.Variant.ID(v350, v356);
          outlined consume of _Glass.Variant.ID(v350, v356);
LABEL_354:
          v150 = v159;
          v151 = v90;
LABEL_355:
          outlined consume of _Glass.Variant.ID(v150, v151);
          v58 = v376;
LABEL_356:
          v149 = v411;
          outlined consume of _Glass.Variant.ID(v381, v58);
          outlined consume of _Glass.Variant.ID(v372, v385);
          outlined consume of _Glass.Variant.ID(v372, v385);
LABEL_357:
          outlined consume of _Glass.Variant.ID(v381, v58);
          v22 = v404;
          v37 = v149;
LABEL_358:
          v2 = v412;
LABEL_359:
          outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined consume of _Glass.Variant.ID(v10, v11);
          v199 = v22;
          v200 = v37;
          goto LABEL_360;
        }

        *&v426[0] = v282;
        BYTE8(v426[0]) = v276;
        v419 = v272;
        v420 = v268;
        outlined copy of _Glass.Variant.ID(v282, v276);
        outlined copy of _Glass.Variant.ID(v272, v268);
        v326 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
        outlined consume of _Glass.Variant.ID(v419, v420);
        outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
        outlined consume of _Glass.Variant.ID(v297, v287);
        outlined consume of _Glass.Variant.ID(v301, v291);
        outlined consume of _Glass.Variant.ID(v301, v291);
        outlined consume of _Glass.Variant.ID(v297, v287);
        v90 = v360;
        outlined consume of _Glass.Variant.ID(v392, v360);
        outlined consume of _Glass.Variant.ID(v350, v356);
        v159 = v392;
        outlined consume of _Glass.Variant.ID(v350, v356);
        if ((v326 & 1) == 0 || v154 != v155)
        {
          goto LABEL_354;
        }
      }

      outlined consume of _Glass.Variant.ID(v159, v90);
      v58 = v376;
      if (v88 != v89)
      {
        goto LABEL_356;
      }

      goto LABEL_160;
    }

    if (v14 != 1)
    {
      if (v3[2].i8[0] == 2)
      {
        v21 = vorrq_s8(*v3, v3[1]);
        if (!*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)))
        {
          outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          return 1;
        }
      }

      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      goto LABEL_5;
    }

    if (v3[2].i8[0] != 1 || v3->i32[0] != v10)
    {
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      v16 = v10;
      v17 = v11;
      v18 = v13;
      v19 = v12;
      v20 = 1;
LABEL_21:
      outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, v20);
LABEL_5:
      outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
      goto LABEL_6;
    }

    v15 = v3->i64[1];
    if (!v11)
    {
      break;
    }

    if (!v15)
    {
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      v42 = v11;
      goto LABEL_47;
    }

    v410 = v3[1].i64[0];
    if (v11 == v15)
    {
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
    }

    else
    {
      v409 = *(*v11 + 112);
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      swift_retain_n();
      v2 = v412;
      v48 = v409(v15);

      if ((v48 & 1) == 0)
      {

        goto LABEL_48;
      }
    }

    outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
    outlined destroy of GlassContainer.Entry.ModelID(v3);
    outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
    v6 = v413;
    if (v13 == v410)
    {
      return 1;
    }

LABEL_6:
    v8 = (v8 + 1) & v414;
    if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  outlined copy of GlassContainer.Entry.ModelID(v10, 0, v13, v12, 1);
  if (v15)
  {
    outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
    outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
    outlined copy of GlassContainer.Entry.ModelID(v10, 0, v13, v12, 1);
    outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
    v42 = 0;
LABEL_47:
    outlined copy of GlassContainer.Entry.ModelID(v10, v42, v13, v12, 1);

LABEL_48:
    outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
    outlined destroy of GlassContainer.Entry.ModelID(v3);
    v43 = v10;
    v44 = v11;
    v45 = v13;
    v46 = v12;
    v47 = 1;
    goto LABEL_68;
  }

  outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
  outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
  outlined copy of GlassContainer.Entry.ModelID(v10, 0, v13, v12, 1);
  outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
  outlined copy of GlassContainer.Entry.ModelID(v10, 0, v13, v12, 1);
  outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
  outlined destroy of GlassContainer.Entry.ModelID(v3);
  outlined consume of GlassContainer.Entry.ModelID(v10, 0, v13, v12, 1);
  return 1;
}

uint64_t _TraitWritingModifier.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a4, a1, AssociatedTypeWitness);
}

uint64_t _TraitWritingModifier.value.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t _ConditionalTraitWritingModifier.value.setter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

void *static _ConditionalTraitWritingModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X3>, ValueMetadata *a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 48);
  v38 = *(a1 + 32);
  v39 = v11;
  v40 = *(a1 + 64);
  v41 = *(a1 + 80);
  v12 = *(a1 + 16);
  v36 = *a1;
  v37 = v12;
  v13 = *MEMORY[0x1E698D3F8];
  type metadata accessor for _TraitWritingModifier(0, a4, a5, a3);
  _GraphValue.init(_:)(v13, &v19);
  v14 = v19;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v28 = v38;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v26 = v36;
  v27 = v37;
  v33 = v41;
  v16 = v38;
  LODWORD(v28) = 0;
  v18 = v14;
  v32[0] = v36;
  v32[1] = v37;
  v32[3] = v39;
  v32[4] = v40;
  v32[2] = v28;
  v22 = v28;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v20 = v36;
  v21 = v37;
  outlined init with copy of _ViewInputs(&v36, v34);
  outlined init with copy of _ViewInputs(v32, v34);
  static _TraitWritingModifier._makeView(modifier:inputs:body:)(&v18, &v20, a2, a3, a4, a5, a6);
  v34[2] = v22;
  v34[3] = v23;
  v34[4] = v24;
  v35 = v25;
  v34[0] = v20;
  v34[1] = v21;
  outlined destroy of _ViewInputs(v34);
  LODWORD(v28) = v16;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a6, &v26);
    AGSubgraphEndTreeElement();
  }

  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v20 = v26;
  v21 = v27;
  return outlined destroy of _ViewInputs(&v20);
}

uint64_t _ConditionalTraitWritingModifier.ConditionalAddTrait.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v21 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v20 - v9;
  v12 = type metadata accessor for _ConditionalTraitWritingModifier(0, a2, a3, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  _TraitWritingModifier.AddTrait.traits.getter(a1, &v22);
  v16 = v22;
  if (!v22)
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v23 = v16;
  _TraitWritingModifier.AddTrait.modifier.getter(type metadata accessor for _ConditionalTraitWritingModifier, v15);
  v17 = v15[*(v12 + 36)];
  result = (*(v13 + 8))(v15, v12);
  if (v17 == 1)
  {
    _TraitWritingModifier.AddTrait.modifier.getter(type metadata accessor for _ConditionalTraitWritingModifier, v15);
    (*(v8 + 32))(v10, v15, AssociatedTypeWitness);
    result = ViewTraitCollection.subscript.setter(v10, v19, a2, a3);
  }

  *v21 = v23;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ConditionalTraitWritingModifier<A>.ConditionalAddTrait(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _ConditionalTraitWritingModifier<A>.ConditionalAddTrait, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t ViewTraitCollection.contains<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  result = *v2 + 32;
  v6 = -*(*v2 + 16);
  v7 = -1;
  while (1)
  {
    v8 = v6 + v7;
    if (v6 + v7 == -1)
    {
      return v8 != -1;
    }

    if (++v7 >= *(v4 + 16))
    {
      break;
    }

    v9 = result + 40;
    outlined init with copy of AnyTrackedValue(result, v13);
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = (*(v11 + 8))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v13);
    result = v9;
    if (v12 == a2)
    {
      return v8 != -1;
    }
  }

  __break(1u);
  return result;
}

void (*ViewTraitCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  ViewTraitCollection.value<A>(for:)(a3, a4, v15);
  return ViewTraitCollection.subscript.modify;
}

void ViewTraitCollection.subscript.modify(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];
    v8 = v2[1];
    (*(v6 + 16))((*a1)[6], v4, v5);
    ViewTraitCollection.subscript.setter(v3, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ViewTraitCollection.subscript.setter((*a1)[7], a2, v2[1], v2[2]);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall ViewTraitCollection.mergeValues(_:)(SwiftUI::ViewTraitCollection a1)
{
  v1 = *(*a1.storage._rawValue + 16);
  if (v1)
  {
    v2 = *a1.storage._rawValue + 32;
    do
    {
      outlined init with copy of AnyTrackedValue(v2, v6);
      v3 = v7;
      v4 = v8;
      v5 = __swift_project_boxed_opaque_existential_1(v6, v7);
      ViewTraitCollection.setErasedValue<A>(trait:)(v5, v3, v4);
      __swift_destroy_boxed_opaque_existential_1(v6);
      v2 += 40;
      --v1;
    }

    while (v1);
  }
}

void ViewTraitKeys.formUnion(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);

  specialized Set.formUnion<A>(_:)(v3);
  *(v1 + 8) = (*(v1 + 8) | v2) & 1;
}

double ViewTraitKeys.withDataDependency()@<D0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 1;

  return result;
}

uint64_t specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(uint64_t a1, __int128 *a2, uint64_t (*a3)(void), uint64_t a4)
{
  outlined init with copy of _ViewListOutputs.Views(v4, v36);
  if (v37)
  {
    v8 = v36[0];
    v9 = *(&v36[0] + 1);
    v10 = a2[1];
    v25 = *a2;
    v26 = v10;
    v27 = a2[2];
    type metadata accessor for ModifiedViewList.ListModifier();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = a3(0);
    *(v11 + 32) = a4;
    outlined init with copy of _GraphInputs(&v25, &v33);
    *(v11 + 40) = AGCreateWeakAttribute();
    v12 = v26;
    *(v11 + 48) = v25;
    *(v11 + 64) = v12;
    *(v11 + 80) = v27;
    LODWORD(v33) = v8;
    *(&v33 + 1) = v11;
    BYTE8(v35) = 1;
    v13 = &v33;
  }

  else
  {
    outlined init with take of AnyTrackedValue(v36, v32);
    outlined init with copy of AnyTrackedValue(v32, v24);
    v14 = a2[1];
    v33 = *a2;
    v34 = v14;
    v35 = a2[2];
    outlined init with copy of AnyTrackedValue(v24, &v25);
    outlined init with copy of _GraphInputs(&v33, v22);
    v15 = AGCreateWeakAttribute();
    __swift_destroy_boxed_opaque_existential_1(v24);
    *(&v27 + 1) = v15;
    *&v28 = a3(0);
    *(&v28 + 1) = a4;
    v29 = v33;
    v30 = v34;
    v31 = v35;
    v22[3] = &type metadata for ModifiedElements;
    v22[4] = &protocol witness table for ModifiedElements;
    v16 = swift_allocObject();
    v22[0] = v16;
    v17 = v28;
    v18 = v30;
    v19 = v31;
    v16[5] = v29;
    v16[6] = v18;
    v16[7] = v19;
    v20 = v26;
    v16[1] = v25;
    v16[2] = v20;
    v16[3] = v27;
    v16[4] = v17;
    __swift_destroy_boxed_opaque_existential_1(v32);
    v23 = 0;
    v13 = v22;
  }

  return outlined assign with take of _ViewListOutputs.Views(v13, v4);
}

uint64_t type metadata completion function for _ConditionalTraitWritingModifier(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _ConditionalTraitWritingModifier(void *a1, void *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if (v8 <= 7 && (v7 + 1) <= 0x18 && (*(v6 + 80) & 0x100000) == 0)
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v7) = *(a2 + v7);
  }

  else
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v8 + 16) & ~v8));
  }

  return a1;
}

uint64_t initializeWithCopy for _ConditionalTraitWritingModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *(*(v6 + 48) + a1) = *(*(v6 + 48) + a2);
  return a1;
}

uint64_t assignWithCopy for _ConditionalTraitWritingModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *(*(v6 + 40) + a1) = *(*(v6 + 40) + a2);
  return a1;
}

uint64_t initializeWithTake for _ConditionalTraitWritingModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *(*(v6 + 32) + a1) = *(*(v6 + 32) + a2);
  return a1;
}

uint64_t assignWithTake for _ConditionalTraitWritingModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *(*(v6 + 24) + a1) = *(*(v6 + 24) + a2);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ConditionalTraitWritingModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v10 = v9 + 1;
    v11 = 8 * (v9 + 1);
    if ((v9 + 1) > 3)
    {
      goto LABEL_7;
    }

    v13 = ((a2 - v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 >= 2)
    {
LABEL_7:
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_25;
      }

LABEL_14:
      v14 = (v12 - 1) << v11;
      if (v10 > 3)
      {
        v14 = 0;
      }

      if (v10)
      {
        if (v10 > 3)
        {
          LODWORD(v10) = 4;
        }

        if (v10 > 2)
        {
          if (v10 == 3)
          {
            LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        else if (v10 == 1)
        {
          LODWORD(v10) = *a1;
        }

        else
        {
          LODWORD(v10) = *a1;
        }
      }

      v18 = v8 + (v10 | v14);
      return (v18 + 1);
    }
  }

LABEL_25:
  if (v7 < 0xFE)
  {
    v17 = *(a1 + v9);
    if (v17 < 2)
    {
      return 0;
    }

    v18 = (v17 + 2147483646) & 0x7FFFFFFF;
    return (v18 + 1);
  }

  v15 = *(v6 + 48);

  return v15(a1);
}

void storeEnumTagSinglePayload for _ConditionalTraitWritingModifier(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = v9 + 1;
  v12 = a3 - v10;
  if (a3 <= v10)
  {
    v13 = 0;
    if (v10 < a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = 1;
    if (v11 <= 3)
    {
      v14 = ((v12 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      v15 = HIWORD(v14);
      if (v14 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v14 >= 2)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v15)
      {
        v13 = 4;
      }

      else
      {
        v13 = v17;
      }
    }

    if (v10 < a2)
    {
LABEL_16:
      v18 = ~v10 + a2;
      if (v11 < 4)
      {
        v19 = (v18 >> (8 * v11)) + 1;
        if (v9 != -1)
        {
          v20 = v18 & ~(-1 << (8 * v11));
          bzero(a1, v11);
          if (v11 != 3)
          {
            if (v11 == 2)
            {
              *a1 = v20;
              if (v13 > 1)
              {
LABEL_44:
                if (v13 == 2)
                {
                  *&a1[v11] = v19;
                }

                else
                {
                  *&a1[v11] = v19;
                }

                return;
              }
            }

            else
            {
              *a1 = v18;
              if (v13 > 1)
              {
                goto LABEL_44;
              }
            }

            goto LABEL_41;
          }

          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        if (v13 > 1)
        {
          goto LABEL_44;
        }
      }

      else
      {
        bzero(a1, v11);
        *a1 = v18;
        v19 = 1;
        if (v13 > 1)
        {
          goto LABEL_44;
        }
      }

LABEL_41:
      if (v13)
      {
        a1[v11] = v19;
      }

      return;
    }
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    *&a1[v11] = 0;
  }

  else if (v13)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return;
  }

LABEL_32:
  if (v8 < 0xFE)
  {
    a1[v9] = a2 + 1;
  }

  else
  {
    v21 = *(v7 + 56);

    v21(a1, a2);
  }
}

uint64_t *assignWithCopy for ViewTraitKeys(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t *assignWithTake for ViewTraitKeys(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

double get_witness_table_7SwiftUI4ViewRzAA01_C8TraitKeyRd__r__lAA15ModifiedContentVyxAA01_D15WritingModifierVyqd__GGAaBHPxAaBHD1__AhA0cI0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a2(255, a1[1], a1[3]);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t initializeWithTake for _TraitWritingModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for _TraitWritingModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

void storeEnumTagSinglePayload for _TraitWritingModifier(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

void lazy protocol witness table accessor for type UnaryLayoutComputer<IgnoresAutomaticPaddingLayout> and conformance UnaryLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<IgnoresAutomaticPaddingLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryLayoutComputer<IgnoresAutomaticPaddingLayout> and conformance UnaryLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryChildGeometry<IgnoresAutomaticPaddingLayout> and conformance UnaryChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<IgnoresAutomaticPaddingLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryChildGeometry<IgnoresAutomaticPaddingLayout> and conformance UnaryChildGeometry<A>);
  }
}

void lazy protocol witness table accessor for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryChildGeometry<A>);
  }
}

void lazy protocol witness table accessor for type UnaryLayoutComputer<MoveTransition.MoveLayout> and conformance UnaryLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<MoveTransition.MoveLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryLayoutComputer<MoveTransition.MoveLayout> and conformance UnaryLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryChildGeometry<MoveTransition.MoveLayout> and conformance UnaryChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<MoveTransition.MoveLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryChildGeometry<MoveTransition.MoveLayout> and conformance UnaryChildGeometry<A>);
  }
}

void lazy protocol witness table accessor for type UnaryLayoutComputer<ConcentricPaddingLayout> and conformance UnaryLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<ConcentricPaddingLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryLayoutComputer<ConcentricPaddingLayout> and conformance UnaryLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryChildGeometry<ConcentricPaddingLayout> and conformance UnaryChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<ConcentricPaddingLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryChildGeometry<ConcentricPaddingLayout> and conformance UnaryChildGeometry<A>);
  }
}

void lazy protocol witness table accessor for type UnaryLayoutComputer<_AlignmentLayout> and conformance UnaryLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_AlignmentLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_AlignmentLayout> and conformance UnaryLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryChildGeometry<_AlignmentLayout> and conformance UnaryChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_AlignmentLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryChildGeometry<_AlignmentLayout> and conformance UnaryChildGeometry<A>);
  }
}

void lazy protocol witness table accessor for type UnaryLayoutComputer<_PositionLayout> and conformance UnaryLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_PositionLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_PositionLayout> and conformance UnaryLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryChildGeometry<_PositionLayout> and conformance UnaryChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_PositionLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryChildGeometry<_PositionLayout> and conformance UnaryChildGeometry<A>);
  }
}