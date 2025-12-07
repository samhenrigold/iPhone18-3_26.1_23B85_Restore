void _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<GlassEffectLayout> and conformance DynamicLayoutComputer<A>();
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for DynamicLayoutComputer);
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
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v73, v72, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
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

void _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_HStackC0V_Tt2t4B5(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<_HStackLayout> and conformance DynamicLayoutComputer<A>();
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for DynamicLayoutComputer);
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
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v73, v72, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
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

void _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_VStackC0V_Tt2t4B5(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<_VStackLayout> and conformance DynamicLayoutComputer<A>();
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for DynamicLayoutComputer);
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
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v73, v72, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
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

void _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA019FlexibleButtonFrameC0V_Tt2t4B5(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<FlexibleButtonFrameLayout> and conformance DynamicLayoutComputer<A>();
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for DynamicLayoutComputer);
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
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v73, v72, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
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

void _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA03AnyC0V_Tt2t4B5(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<AnyLayout> and conformance DynamicLayoutComputer<A>();
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for DynamicLayoutComputer);
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
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v73, v72, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
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

void _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA06ZStackC0V_Tt2t4B5(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<ZStackLayout> and conformance DynamicLayoutComputer<A>();
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for DynamicLayoutComputer);
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
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v73, v72, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
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

void _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA06VStackC0V_Tt2t4B5(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<VStackLayout> and conformance DynamicLayoutComputer<A>();
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for DynamicLayoutComputer);
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
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v73, v72, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
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

double specialized static Layout.makeLayoutView(root:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, _OWORD *), uint64_t a5)
{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, a5, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, a5, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5);
}

void *specialized static Layout.makeLayoutView(root:inputs:body:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:), _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:), _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5);
}

double specialized static Layout.makeLayoutView(root:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, _OWORD *), uint64_t a5, void (*a6)(void, void, void), void (*a7)(uint64_t, __int128 *, uint64_t, void *))
{
  v57 = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v12 = *(a2 + 36);
  v13 = *(a2 + 48);
  v14 = *(a2 + 64);
  v46 = *(a2 + 32);
  v47 = v13;
  v48 = v14;
  v49 = *(a2 + 80);
  v15 = *(a2 + 16);
  v44 = *a2;
  v45 = v15;
  DWORD1(v46) = v12 & 0xFFFFFFF3;
  v50 = v11;
  v16 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, &v51);
  outlined init with copy of PropertyList(&v50, &v51);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v44, v16);
  outlined destroy of PropertyList(&v50);
  v17 = v44;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v18 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v17, v51);
  if (v18)
  {
    if ((*(v18 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v12 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v21 = a1;
  v22 = a6;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v23 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v17, v51);
  if (v23)
  {
    v24 = *(v23 + 72) | 0x4000;
  }

  else
  {
    v24 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v44, v24);

  a6 = v22;
  a1 = v21;
  if ((v12 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v46) = v12 & 0xFFFFFFF3;
  }

LABEL_5:
  v40[2] = v46;
  v40[3] = v47;
  v40[4] = v48;
  v41 = v49;
  v40[0] = v44;
  v40[1] = v45;
  v53 = v46;
  v54 = v47;
  v55 = v48;
  v56 = v49;
  v51 = v44;
  v52 = v45;
  v19 = outlined init with copy of _ViewInputs(v40, v42);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v19, &v51, a4);
  v42[2] = v53;
  v42[3] = v54;
  v42[4] = v55;
  v43 = v56;
  v42[0] = v51;
  v42[1] = v52;
  outlined destroy of _ViewInputs(v42);
  outlined init with copy of _ViewListOutputs.Views(v39, v37);
  if (v38)
  {
    v20 = LODWORD(v37[0]);
    if (*(&v37[0] + 1))
    {
      LODWORD(v51) = v37[0];
      *(&v51 + 1) = *(&v37[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v20 = Attribute.init<A>(body:value:flags:update:)();
    }

    v53 = v46;
    v54 = v47;
    v55 = v48;
    v56 = v49;
    v51 = v44;
    v52 = v45;
    a6(a1, &v51, v20);
  }

  else
  {
    outlined init with take of _ViewList_Elements(v37, v30);
    v53 = v46;
    v54 = v47;
    v55 = v48;
    v56 = v49;
    v51 = v44;
    v52 = v45;
    if ((v12 & 0x800) != 0)
    {
      v25 = *(a2 + 48);
      v33 = *(a2 + 32);
      v34 = v25;
      v35 = *(a2 + 64);
      v36 = *(a2 + 80);
      v26 = *(a2 + 16);
      v31 = *a2;
      v32 = v26;
      v27 = _ViewListOutputs.makeAttribute(viewInputs:)(&v31);
      a6(a1, &v51, v27);
    }

    else
    {
      a7(a1, &v51, 2, v30);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  outlined destroy of _ViewListOutputs(v39);
  v33 = v46;
  v34 = v47;
  v35 = v48;
  v36 = v49;
  v31 = v44;
  v32 = v45;
  outlined destroy of _ViewInputs(&v31);

  return result;
}

void *specialized static Layout.makeLayoutView(root:inputs:body:)(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int a4, void (*a5)(void *__return_ptr, _OWORD *, void), void (*a6)(void, void, void), void (*a7)(uint64_t, __int128 *, uint64_t, void *))
{
  v55 = *MEMORY[0x1E69E9840];
  v12 = *a2;
  v13 = *(a2 + 9);
  v14 = a2[3];
  v15 = a2[4];
  v42 = a2[2];
  v43 = v14;
  v44 = v15;
  v45 = *(a2 + 20);
  v16 = a2[1];
  v40 = *a2;
  v41 = v16;
  DWORD1(v42) = v13 & 0xFFFFFFF3;
  v46 = v12;
  v17 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, v53);
  outlined init with copy of PropertyList(&v46, v53);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v40, v17);
  outlined destroy of PropertyList(&v46);
  v18 = v40;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v19 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v18, *&v53[0]);
  if (v19)
  {
    if ((*(v19 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v13 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v21 = a1;
  v22 = a6;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v23 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v18, *&v53[0]);
  if (v23)
  {
    v24 = *(v23 + 72) | 0x4000;
  }

  else
  {
    v24 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v40, v24);

  a6 = v22;
  a1 = v21;
  if ((v13 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v42) = v13 & 0xFFFFFFF3;
  }

LABEL_5:
  v53[2] = v42;
  v53[3] = v43;
  v53[4] = v44;
  v54 = v45;
  v53[0] = v40;
  v53[1] = v41;
  outlined init with copy of _ViewInputs(v53, &v47);
  a5(v39, v53, a4);
  outlined destroy of _ViewInputs(v53);
  outlined init with copy of _ViewListOutputs.Views(v39, v37);
  if (v38)
  {
    v20 = LODWORD(v37[0]);
    if (*(&v37[0] + 1))
    {
      LODWORD(v47) = v37[0];
      *(&v47 + 1) = *(&v37[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v20 = Attribute.init<A>(body:value:flags:update:)();
    }

    v49 = v42;
    v50 = v43;
    v51 = v44;
    v52 = v45;
    v47 = v40;
    v48 = v41;
    a6(a1, &v47, v20);
  }

  else
  {
    outlined init with take of _ViewList_Elements(v37, v30);
    v49 = v42;
    v50 = v43;
    v51 = v44;
    v52 = v45;
    v47 = v40;
    v48 = v41;
    if ((v13 & 0x800) != 0)
    {
      v25 = a2[3];
      v33 = a2[2];
      v34 = v25;
      v35 = a2[4];
      v36 = *(a2 + 20);
      v26 = a2[1];
      v31 = *a2;
      v32 = v26;
      v27 = _ViewListOutputs.makeAttribute(viewInputs:)(&v31);
      a6(a1, &v47, v27);
    }

    else
    {
      a7(a1, &v47, 2, v30);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  outlined destroy of _ViewListOutputs(v39);
  v33 = v42;
  v34 = v43;
  v35 = v44;
  v36 = v45;
  v31 = v40;
  v32 = v41;
  return outlined destroy of _ViewInputs(&v31);
}

void *specialized static Layout.makeLayoutView(root:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a4, specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:), x8_0);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a4, specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:), x8_0);
}

void *specialized static Layout.makeLayoutView(root:inputs:body:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void (*a4)(void *__return_ptr, void, void)@<X4>, uint64_t a5@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 48);
  v44 = *(a2 + 32);
  v45 = v10;
  v46 = *(a2 + 64);
  v47 = *(a2 + 80);
  v11 = *(a2 + 16);
  v42 = *a2;
  v43 = v11;
  outlined init with copy of _ViewInputs(a2, v55);
  if (one-time initialization token for v2 != -1)
  {
    swift_once();
  }

  v12 = static Semantics.v2;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    v13 = dyld_program_sdk_at_least();
  }

  else
  {
    v13 = static Semantics.forced >= v12;
  }

  v14 = *a2;
  v15 = *(a2 + 36);
  DWORD1(v44) = v15 & 0xFFFFFFF3;
  v48 = v14;
  v16 = *MEMORY[0x1E698D3F8];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v42, v16);
  outlined destroy of PropertyList(&v48);
  v17 = v42;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v18 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v17, *&v55[0]);
  if (v18)
  {
    if ((*(v18 + 72) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_10:
      if ((v15 & 0x800) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v31 = a3;
  v21 = a4;
  v22 = v13;
  v23 = a5;
  v24 = a1;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v25 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v17, *&v55[0]);
  if (v25)
  {
    v26 = *(v25 + 72) | 0x4000;
  }

  else
  {
    v26 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v42, v26);

  a1 = v24;
  a5 = v23;
  v13 = v22;
  a4 = v21;
  a3 = v31;
  if ((v15 & 0x800) == 0)
  {
LABEL_11:
    DWORD1(v44) = v15 & 0xFFFFFFF3;
  }

LABEL_12:
  v55[2] = v44;
  v55[3] = v45;
  v55[4] = v46;
  v56 = v47;
  v55[0] = v42;
  v55[1] = v43;
  outlined init with copy of _ViewInputs(v55, &v49);
  a4(v41, v55, a3);
  outlined destroy of _ViewInputs(v55);
  outlined init with copy of _ViewListOutputs.Views(v41, v39);
  if (v40)
  {
    v19 = v39[0];
    if (*(&v39[0] + 1))
    {
      LODWORD(v49) = v39[0];
      *(&v49 + 1) = *(&v39[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v19 = Attribute.init<A>(body:value:flags:update:)();
    }

    v51 = v44;
    v52 = v45;
    v53 = v46;
    v54 = v47;
    v49 = v42;
    v50 = v43;
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt2t4B5(a1, &v49, v19, a5);
  }

  else
  {
    outlined init with take of _ViewList_Elements(v39, v32);
    if ((v15 & 0x800) != 0)
    {
      v51 = v44;
      v52 = v45;
      v53 = v46;
      v54 = v47;
      v49 = v42;
      v50 = v43;
      v27 = *(a2 + 48);
      v35 = *(a2 + 32);
      v36 = v27;
      v37 = *(a2 + 64);
      v38 = *(a2 + 80);
      v28 = *(a2 + 16);
      v33 = *a2;
      v34 = v28;
      v29 = _ViewListOutputs.makeAttribute(viewInputs:)(&v33);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt2t4B5(a1, &v49, v29, a5);
    }

    else
    {
      v51 = v44;
      v52 = v45;
      v53 = v46;
      v54 = v47;
      if (v13)
      {
        v20 = 2;
      }

      else
      {
        v20 = 65794;
      }

      v49 = v42;
      v50 = v43;
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt4B5(a1, &v49, v20, v32, a5);
    }

    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  outlined destroy of _ViewListOutputs(v41);
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v38 = v47;
  v33 = v42;
  v34 = v43;
  return outlined destroy of _ViewInputs(&v33);
}

double _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA07_ZStackC0V_Tt3B503_s7a14UI019_Variadice19_UnaryD4RootPAAE05_ds29List4root6inputs4bodyAA01_dH7i6VAA11_jk5VyxG_w4_dH6L52VAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AiP_ATtXEfU_ArA01_emL0VAPIegnnr_Tf1nnnc_n@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X2>, uint64_t a5@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(a2 + 36);
  v11 = *(a2 + 48);
  v12 = *(a2 + 64);
  v41 = *(a2 + 32);
  v42 = v11;
  v43 = v12;
  v44 = *(a2 + 80);
  v13 = *(a2 + 16);
  v39 = *a2;
  v40 = v13;
  DWORD1(v41) = v10 & 0xFFFFFFF3;
  v45 = v9;
  v14 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, &v46);
  outlined init with copy of PropertyList(&v45, &v46);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v39, v14);
  outlined destroy of PropertyList(&v45);
  v15 = v39;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v15, v46);
  if (v16)
  {
    if ((*(v16 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v10 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v19 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v15, v46);
  if (v19)
  {
    v20 = *(v19 + 72) | 0x4000;
  }

  else
  {
    v20 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v39, v20);

  if ((v10 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v41) = v10 & 0xFFFFFFF3;
  }

LABEL_5:
  v35[2] = v41;
  v35[3] = v42;
  v35[4] = v43;
  v36 = v44;
  v35[0] = v39;
  v35[1] = v40;
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = v44;
  v46 = v39;
  v47 = v40;
  v17 = outlined init with copy of _ViewInputs(v35, v37);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v17, &v46, a3);
  v37[2] = v48;
  v37[3] = v49;
  v37[4] = v50;
  v38 = v51;
  v37[0] = v46;
  v37[1] = v47;
  outlined destroy of _ViewInputs(v37);
  outlined init with copy of _ViewListOutputs.Views(v34, v32);
  if (v33)
  {
    v18 = v32[0];
    if (*(&v32[0] + 1))
    {
      LODWORD(v46) = v32[0];
      *(&v46 + 1) = *(&v32[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v18 = Attribute.init<A>(body:value:flags:update:)();
    }

    v48 = v41;
    v49 = v42;
    v50 = v43;
    v51 = v44;
    v46 = v39;
    v47 = v40;
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_ZStackC0V_Tt2t4B5(a1, &v46, v18, a5);
  }

  else
  {
    outlined init with take of _ViewList_Elements(v32, v25);
    v48 = v41;
    v49 = v42;
    v50 = v43;
    v51 = v44;
    v46 = v39;
    v47 = v40;
    if ((v10 & 0x800) != 0)
    {
      v21 = *(a2 + 48);
      v28 = *(a2 + 32);
      v29 = v21;
      v30 = *(a2 + 64);
      v31 = *(a2 + 80);
      v22 = *(a2 + 16);
      v26 = *a2;
      v27 = v22;
      v23 = _ViewListOutputs.makeAttribute(viewInputs:)(&v26);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_ZStackC0V_Tt2t4B5(a1, &v46, v23, a5);
    }

    else
    {
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_ZStackC0V_Tt4B5(a1, &v46, 65538, v25, a5);
    }

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  outlined destroy of _ViewListOutputs(v34);
  v28 = v41;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v26 = v39;
  v27 = v40;
  outlined destroy of _ViewInputs(&v26);

  return result;
}

double specialized static Layout.makeLayoutView(root:inputs:body:)@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X3>, uint64_t a5@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 36);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v39 = *(a2 + 32);
  v40 = v10;
  v41 = v11;
  v42 = *(a2 + 80);
  v12 = *(a2 + 16);
  v37 = *a2;
  v38 = v12;
  DWORD1(v39) = v9 | 0xC;
  outlined init with copy of _ViewInputs(a2, &v43);
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v37, v43);
  if (v13)
  {
    if ((*(v13 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v9 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v37, v43);
  if (v16)
  {
    v17 = *(v16 + 72) | 0x4000;
  }

  else
  {
    v17 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v37, v17);

  if ((v9 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v39) = v9 | 0xC;
  }

LABEL_5:
  v33[2] = v39;
  v33[3] = v40;
  v33[4] = v41;
  v34 = v42;
  v33[0] = v37;
  v33[1] = v38;
  v45 = v39;
  v46 = v40;
  v47 = v41;
  v48 = v42;
  v43 = v37;
  v44 = v38;
  v14 = outlined init with copy of _ViewInputs(v33, v35);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v14, &v43, a3);
  v35[2] = v45;
  v35[3] = v46;
  v35[4] = v47;
  v36 = v48;
  v35[0] = v43;
  v35[1] = v44;
  outlined destroy of _ViewInputs(v35);
  outlined init with copy of _ViewListOutputs.Views(v32, v30);
  if (v31)
  {
    v15 = v30[0];
    if (*(&v30[0] + 1))
    {
      LODWORD(v43) = v30[0];
      *(&v43 + 1) = *(&v30[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v15 = Attribute.init<A>(body:value:flags:update:)();
    }

    v45 = v39;
    v46 = v40;
    v47 = v41;
    v48 = v42;
    v43 = v37;
    v44 = v38;
    outlined init with copy of _ViewInputs(&v43, &v24);
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_HStackC0V_Tt2t4B5(a1, &v43, v15, a5);

    outlined destroy of _ViewInputs(&v43);
  }

  else
  {
    outlined init with take of _ViewList_Elements(v30, v23);
    v45 = v39;
    v46 = v40;
    v47 = v41;
    v48 = v42;
    v43 = v37;
    v44 = v38;
    if ((v9 & 0x800) != 0)
    {
      v18 = *(a2 + 48);
      v26 = *(a2 + 32);
      v27 = v18;
      v28 = *(a2 + 64);
      v29 = *(a2 + 80);
      v19 = *(a2 + 16);
      v24 = *a2;
      v25 = v19;
      outlined init with copy of _ViewInputs(&v43, v22);
      v20 = _ViewListOutputs.makeAttribute(viewInputs:)(&v24);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_HStackC0V_Tt2t4B5(a1, &v43, v20, a5);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v43, &v24);
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_HStackC0V_Tt4B5(a1, &v43, 0x10000, v23, a5);
    }

    outlined destroy of _ViewInputs(&v43);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  outlined destroy of _ViewListOutputs(v32);
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v24 = v37;
  v25 = v38;
  outlined destroy of _ViewInputs(&v24);

  return result;
}

{
  v49 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 36);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v39 = *(a2 + 32);
  v40 = v10;
  v41 = v11;
  v42 = *(a2 + 80);
  v12 = *(a2 + 16);
  v37 = *a2;
  v38 = v12;
  DWORD1(v39) = v9 & 0xFFFFFFF3 | 4;
  outlined init with copy of _ViewInputs(a2, &v43);
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v37, v43);
  if (v13)
  {
    if ((*(v13 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v9 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v37, v43);
  if (v16)
  {
    v17 = *(v16 + 72) | 0x4000;
  }

  else
  {
    v17 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v37, v17);

  if ((v9 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v39) = v9 & 0xFFFFFFF3 | 4;
  }

LABEL_5:
  v33[2] = v39;
  v33[3] = v40;
  v33[4] = v41;
  v34 = v42;
  v33[0] = v37;
  v33[1] = v38;
  v45 = v39;
  v46 = v40;
  v47 = v41;
  v48 = v42;
  v43 = v37;
  v44 = v38;
  v14 = outlined init with copy of _ViewInputs(v33, v35);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v14, &v43, a3);
  v35[2] = v45;
  v35[3] = v46;
  v35[4] = v47;
  v36 = v48;
  v35[0] = v43;
  v35[1] = v44;
  outlined destroy of _ViewInputs(v35);
  outlined init with copy of _ViewListOutputs.Views(v32, v30);
  if (v31)
  {
    v15 = v30[0];
    if (*(&v30[0] + 1))
    {
      LODWORD(v43) = v30[0];
      *(&v43 + 1) = *(&v30[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v15 = Attribute.init<A>(body:value:flags:update:)();
    }

    v45 = v39;
    v46 = v40;
    v47 = v41;
    v48 = v42;
    v43 = v37;
    v44 = v38;
    outlined init with copy of _ViewInputs(&v43, &v24);
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_VStackC0V_Tt2t4B5(a1, &v43, v15, a5);

    outlined destroy of _ViewInputs(&v43);
  }

  else
  {
    outlined init with take of _ViewList_Elements(v30, v23);
    v45 = v39;
    v46 = v40;
    v47 = v41;
    v48 = v42;
    v43 = v37;
    v44 = v38;
    if ((v9 & 0x800) != 0)
    {
      v18 = *(a2 + 48);
      v26 = *(a2 + 32);
      v27 = v18;
      v28 = *(a2 + 64);
      v29 = *(a2 + 80);
      v19 = *(a2 + 16);
      v24 = *a2;
      v25 = v19;
      outlined init with copy of _ViewInputs(&v43, v22);
      v20 = _ViewListOutputs.makeAttribute(viewInputs:)(&v24);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_VStackC0V_Tt2t4B5(a1, &v43, v20, a5);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v43, &v24);
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_VStackC0V_Tt4B5(a1, &v43, 65537, v23, a5);
    }

    outlined destroy of _ViewInputs(&v43);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  outlined destroy of _ViewListOutputs(v32);
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v24 = v37;
  v25 = v38;
  outlined destroy of _ViewInputs(&v24);

  return result;
}

void *_s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA019FlexibleButtonFrameC0V_Tt3B503_s7a13UI13_Variadice38O4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_d21D04view6inputsAA01_D7i6VAA11_jk19VyAEy_xq_GG_AA01_D6l11VtFZAA01_d4m26J0VAA01_K0V_ARtXEfU0_AA07_c9F0VyAA019noP44O0VG_AA01_D16Modifier_ContentVyAA0pqrS0VGTG5AKyAA01_sE0O0U0Vy_AA01_cZ0VyATGAA01_E16Modifier_ContentVyAA0noP8ModifierVGGGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(a2 + 36);
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  v36 = *(a2 + 32);
  v37 = v9;
  v38 = v10;
  v11 = *(a2 + 80);
  v12 = *(a2 + 16);
  v34 = *a2;
  v35 = v12;
  v39 = v11;
  DWORD1(v36) = v8 & 0xFFFFFFF3;
  v40 = v7;
  v13 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, v47);
  outlined init with copy of PropertyList(&v40, v47);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v34, v13);
  outlined destroy of PropertyList(&v40);
  v14 = v34;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v15 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v14, *&v47[0]);
  if (v15)
  {
    if ((*(v15 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v8 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v17 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v14, *&v47[0]);
  if (v17)
  {
    v18 = *(v17 + 72) | 0x4000;
  }

  else
  {
    v18 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v34, v18);

  if ((v8 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v36) = v8 & 0xFFFFFFF3;
  }

LABEL_5:
  v47[2] = v36;
  v47[3] = v37;
  v47[4] = v38;
  v48 = v39;
  v47[0] = v34;
  v47[1] = v35;
  outlined init with copy of _ViewInputs(v47, &v41);
  specialized closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(v47, v33);
  outlined destroy of _ViewInputs(v47);
  outlined init with copy of _ViewListOutputs.Views(v33, v31);
  if (v32)
  {
    v16 = v31[0];
    if (*(&v31[0] + 1))
    {
      LODWORD(v41) = v31[0];
      *(&v41 + 1) = *(&v31[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v16 = Attribute.init<A>(body:value:flags:update:)();
    }

    v43 = v36;
    v44 = v37;
    v45 = v38;
    v46 = v39;
    v41 = v34;
    v42 = v35;
    outlined init with copy of _ViewInputs(&v41, &v25);
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA019FlexibleButtonFrameC0V_Tt2t4B5(a1, &v41, v16, a4);

    outlined destroy of _ViewInputs(&v41);
  }

  else
  {
    outlined init with take of _ViewList_Elements(v31, v24);
    v43 = v36;
    v44 = v37;
    v45 = v38;
    v46 = v39;
    v41 = v34;
    v42 = v35;
    if ((v8 & 0x800) != 0)
    {
      v19 = *(a2 + 48);
      v27 = *(a2 + 32);
      v28 = v19;
      v29 = *(a2 + 64);
      v30 = *(a2 + 80);
      v20 = *(a2 + 16);
      v25 = *a2;
      v26 = v20;
      outlined init with copy of _ViewInputs(&v41, v23);
      v21 = _ViewListOutputs.makeAttribute(viewInputs:)(&v25);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA019FlexibleButtonFrameC0V_Tt2t4B5(a1, &v41, v21, a4);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v41, &v25);
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA019FlexibleButtonFrameC0V_Tt4B5(a1, &v41, 2, v24, a4);
    }

    outlined destroy of _ViewInputs(&v41);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  outlined destroy of _ViewListOutputs(v33);
  v27 = v36;
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v25 = v34;
  v26 = v35;
  return outlined destroy of _ViewInputs(&v25);
}

double _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA019FlexibleButtonFrameC0V_Tt3B503_s7a14UI019_Variadice19_UnaryD4RootPAAE05_du29List4root6inputs4bodyAA01_dH7i6VAA11_jk5VyxG_y4_dH6L52VAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AiP_ATtXEfU_ArA01_emL0VAPIegnnr_Tf1nnnc_n@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X2>, uint64_t a5@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(a2 + 36);
  v11 = *(a2 + 48);
  v12 = *(a2 + 64);
  v45 = *(a2 + 32);
  v46 = v11;
  v47 = v12;
  v13 = *(a2 + 80);
  v14 = *(a2 + 16);
  v43 = *a2;
  v44 = v14;
  v48 = v13;
  DWORD1(v45) = v10 & 0xFFFFFFF3;
  v49 = v9;
  v15 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, &v50);
  outlined init with copy of PropertyList(&v49, &v50);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v43, v15);
  outlined destroy of PropertyList(&v49);
  v16 = v43;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v17 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v16, v50);
  if (v17)
  {
    if ((*(v17 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v10 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v20 = a5;
  v21 = a1;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v22 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v16, v50);
  if (v22)
  {
    v23 = *(v22 + 72) | 0x4000;
  }

  else
  {
    v23 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v43, v23);

  a1 = v21;
  a5 = v20;
  if ((v10 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v45) = v10 & 0xFFFFFFF3;
  }

LABEL_5:
  v39[2] = v45;
  v39[3] = v46;
  v39[4] = v47;
  v40 = v48;
  v39[0] = v43;
  v39[1] = v44;
  v52 = v45;
  v53 = v46;
  v54 = v47;
  v55 = v48;
  v50 = v43;
  v51 = v44;
  v18 = outlined init with copy of _ViewInputs(v39, v41);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v18, &v50, a3);
  v41[2] = v52;
  v41[3] = v53;
  v41[4] = v54;
  v42 = v55;
  v41[0] = v50;
  v41[1] = v51;
  outlined destroy of _ViewInputs(v41);
  outlined init with copy of _ViewListOutputs.Views(v38, v36);
  if (v37)
  {
    v19 = v36[0];
    if (*(&v36[0] + 1))
    {
      LODWORD(v50) = v36[0];
      *(&v50 + 1) = *(&v36[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v19 = Attribute.init<A>(body:value:flags:update:)();
    }

    v52 = v45;
    v53 = v46;
    v54 = v47;
    v55 = v48;
    v50 = v43;
    v51 = v44;
    outlined init with copy of _ViewInputs(&v50, &v30);
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA019FlexibleButtonFrameC0V_Tt2t4B5(a1, &v50, v19, a5);

    outlined destroy of _ViewInputs(&v50);
  }

  else
  {
    outlined init with take of _ViewList_Elements(v36, v29);
    v52 = v45;
    v53 = v46;
    v54 = v47;
    v55 = v48;
    v50 = v43;
    v51 = v44;
    if ((v10 & 0x800) != 0)
    {
      v24 = *(a2 + 48);
      v32 = *(a2 + 32);
      v33 = v24;
      v34 = *(a2 + 64);
      v35 = *(a2 + 80);
      v25 = *(a2 + 16);
      v30 = *a2;
      v31 = v25;
      outlined init with copy of _ViewInputs(&v50, v28);
      v26 = _ViewListOutputs.makeAttribute(viewInputs:)(&v30);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA019FlexibleButtonFrameC0V_Tt2t4B5(a1, &v50, v26, a5);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v50, &v30);
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA019FlexibleButtonFrameC0V_Tt4B5(a1, &v50, 2, v29, a5);
    }

    outlined destroy of _ViewInputs(&v50);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  outlined destroy of _ViewListOutputs(v38);
  v32 = v45;
  v33 = v46;
  v34 = v47;
  v35 = v48;
  v30 = v43;
  v31 = v44;
  outlined destroy of _ViewInputs(&v30);

  return result;
}

uint64_t _ViewInputs.needsDynamicLayout.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2048;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFF7FF | v2;
  return result;
}

SwiftUI::ViewSpacing __swiftcall ViewSpacing.init()()
{
  v1 = v0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v1 = v2;
  *(v1 + 8) = 2;
  result.spacing.minima._rawValue = v2;
  result.layoutDirection.value = v3;
  return result;
}

double ViewSpacing.formUnion(_:edges:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(v1 + 8) != 2)
  {
    v3 = *(v1 + 8);
  }

  *(v1 + 8) = v3;
  v7 = v3 & 1;
  AbsoluteEdge.Set.init(_:layoutDirection:)(&v7, &v6);
  v5 = v2;

  Spacing.incorporate(_:of:)(&v6, &v5);

  return result;
}

uint64_t ProposedViewSize.width.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ProposedViewSize.height.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ProposedViewSize.subscript.setter(uint64_t result, char a2, char a3)
{
  v4 = 24;
  if ((a3 & 1) == 0)
  {
    v4 = 8;
  }

  *(v3 + 16 * (a3 & 1)) = result;
  *(v3 + v4) = a2 & 1;
  return result;
}

uint64_t (*ProposedViewSize.subscript.modify(uint64_t a1, char a2))(uint64_t result)
{
  *(a1 + 16) = v2;
  *(a1 + 9) = a2;
  v3 = (v2 + 8);
  v4 = (v2 + 16);
  if ((a2 & 1) == 0)
  {
    v4 = v2;
  }

  v5 = *v4;
  if (a2)
  {
    v3 = (v2 + 24);
  }

  v6 = *v3;
  *a1 = v5;
  *(a1 + 8) = v6;
  return _ProposedSize.subscript.modify;
}

uint64_t static ProposedViewSize.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if ((a2 & 1) == 0)
  {
    if ((a6 & 1) != 0 || *&a1 != *&a5)
    {
      return 0;
    }

LABEL_6:
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || *&a3 != *&a7)
    {
      return 0;
    }

    return 1;
  }

  if (a6)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ProposedViewSize(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

double ViewSpacing.spacing.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void ViewSpacing.spacing.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

SwiftUI::ViewSpacing __swiftcall ViewSpacing.init(_:)(SwiftUI::Spacing a1)
{
  *v1 = *a1.minima._rawValue;
  *(v1 + 8) = 2;
  result.spacing = a1;
  return result;
}

double static ViewSpacing.zero.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = byte_1ED52A120;
  *a1 = static ViewSpacing.zero;
  *(a1 + 8) = v2;

  return result;
}

double ViewSpacing.union(_:edges:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v2 + 8);
  *a2 = *v2;
  *(a2 + 8) = v6;
  v8 = v4;
  v9 = v5;

  return ViewSpacing.formUnion(_:edges:)(&v8);
}

double ViewSpacing.distance(to:along:)(uint64_t *a1, char a2)
{
  v3 = *a1;
  v10 = *(v2 + 8) & 1;
  v9 = v3;
  v4 = a2 & 1;

  v5 = Spacing.distanceToSuccessorView(along:layoutDirection:preferring:)(v4, &v10, &v9);
  LOBYTE(v3) = v6;

  if ((v3 & 1) == 0)
  {
    return *&v5;
  }

  swift_beginAccess();
  v7 = &dbl_1EAB21528;
  if (!v4)
  {
    v7 = static Spacing.defaultValue;
  }

  return *v7;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LayoutSubviews.Storage(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14LayoutSubviewsV7Storage33_57DDCF0A00C1B77B475771403C904EF9LLO17IndexedAttributesV_Tt1g5(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21LayoutProxyAttributesV_Tt1g5(v4, v5);
}

char *LayoutSubviews.subscript.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return specialized LayoutSubviews.selecting<A>(indices:)(a1, a2, *v3, *(v3 + 8), v4 | *(v3 + 16), a3);
}

char *specialized LayoutSubviews.selecting<A>(indices:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = a2;
  v7 = result;
  v22 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = a6;
  v13 = v22;
  if (v8)
  {
    if (v6 < v7)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v14 = a4 + 32 + 12 * v7;
    while (v6 != v7)
    {
      if (a5)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v7 >= *(a4 + 16))
        {
          goto LABEL_24;
        }

        v15 = *(v14 + 8);
        v16 = v14;
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (v7 >= *(a4 + 16))
        {
          goto LABEL_23;
        }

        v16 = (a4 + 32 + 8 * v7);
        v15 = v7;
      }

      v17 = *v16;
      v23 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v13 = v23;
      }

      ++v7;
      *(v13 + 16) = v19 + 1;
      v20 = v13 + 12 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v15;
      v14 += 12;
      if (v6 == v7)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 == v6)
  {
LABEL_19:
    *v21 = a3;
    *(v21 + 8) = v13;
    *(v21 + 16) = 1;
    *(v21 + 17) = HIBYTE(a5) & 1;
    return result;
  }

LABEL_28:
  if (v6 < v7)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v7 < v6)
  {
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t LayoutSubviews.selecting<A>(indices:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t x7_0@<X7>)
{
  v8 = *(v5 + 1);
  v9 = *(v5 + 16);
  v10 = *(v5 + 17);
  v13 = *v5;
  v7 = v13;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  result = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in LayoutSubviews.selecting<A>(indices:), &v12, a1, &type metadata for LayoutSubviews.Storage.IndexedAttributes, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], x7_0);
  *a3 = v7;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = v10;
  return result;
}

unint64_t *closure #1 in LayoutSubviews.selecting<A>(indices:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v4 = *result;
  if (a3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4 < *(a2 + 16))
      {
        v4 = a2 + 12 * v4;
        v5 = (v4 + 32);
        LODWORD(v4) = *(v4 + 40);
LABEL_8:
        *a4 = *v5;
        *(a4 + 8) = v4;
        return result;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if (v4 < *(a2 + 16))
  {
    v5 = (a2 + 8 * v4 + 32);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

char *protocol witness for Collection.subscript.getter in conformance LayoutSubviews@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return specialized LayoutSubviews.selecting<A>(indices:)(*a1, a1[1], *v2, *(v2 + 8), v3 | *(v2 + 16), a2);
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance LayoutSubviews()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

double LayoutSubview.proxy.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  result = *v1;
  *a1 = *v1;
  *(a1 + 8) = v2;
  return result;
}

void LayoutSubview.lengthThatFits(_:in:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  v6 = *(v5 + 2);
  v11 = *v5;
  v12 = v6;
  v7 = a1;
  v8 = a2 & 1;
  v9 = a3;
  v10 = a4 & 1;
  LayoutProxy.lengthThatFits(_:in:)(&v7, a5 & 1);
}

uint64_t AnyLayoutProperties.value.getter()
{
  v0 = *(**AGGraphGetValue() + 80);

  v0(&v3, v1);

  return v3;
}

void protocol witness for Rule.value.getter in conformance AnyLayoutProperties(_BYTE *a1@<X8>)
{
  v2 = *(**AGGraphGetValue() + 80);

  v2(&v4, v3);

  *a1 = v4;
}

Swift::Void __swiftcall ViewLayoutEngine.updateCache()()
{
  v2 = v0;
  v3 = *(v1 + *(v0 + 44));
  v4 = *(v1 + *(v0 + 40));

  v6 = 0;
  v7 = v3;
  (*(*(v2 + 24) + 40))(v1 + *(v2 + 36), &v4, *(v2 + 16));
}

uint64_t _GraphInputs.needsDynamicLayout.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2048;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFF7FF | v2;
  return result;
}

uint64_t (*_GraphInputs.needsDynamicLayout.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x800) != 0;
  return _GraphInputs.needsDynamicLayout.modify;
}

uint64_t (*_ViewInputs.needsDynamicLayout.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x800) != 0;
  return _ViewInputs.needsDynamicLayout.modify;
}

uint64_t _ViewInputs.needsDynamicLayout.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 2048;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 36) = v1 | *(result + 8) & 0xFFFFF7FF;
  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA14GeometryReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0qR0O6EffectVGAZ15DisplayMaterialV2IDVACyAA0qwE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0qr10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_AA01_o5GroupW0VTt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>(0, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>, lazy protocol witness table accessor for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>, type metadata accessor for GeometryReader);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA14GeometryReaderVyAA15ModifiedContentVyAA22GlassContainerResolverVyAPyAA6ZStackVyAA7ForEachVySayAA0pQ0O6EffectVGAX15DisplayMaterialV2IDVAPyAA0pvC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0pQ18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_Tt2B5(a2, a3);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA14GeometryReaderVyAA15ModifiedContentVyAA22GlassContainerResolverVyAPyAA6ZStackVyAA7ForEachVySayAA0pQ0O6EffectVGAX15DisplayMaterialV2IDVAPyAA0pvC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0pQ18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_Tt2B5(a2, a3);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

double _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVGAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGTt2B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  if (AGSubgraphShouldRecordTree())
  {
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
  }

  return result;
}

double _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGAA0pF0ATLLVG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  if (AGSubgraphShouldRecordTree())
  {
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
  }

  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_AA01_M15ActionModifier2VySiGTt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v7 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for _ValueActionModifier2<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for _ValueActionModifier2);
    AGSubgraphBeginTreeElement();
  }

  v8 = *(a2 + 24);
  v9 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v10 = *(v9 + 64);

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ValueActionDispatcher<_ValueActionModifier2<Int>>(0);
  lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait(&lazy protocol witness table cache variable for type ValueActionDispatcher<_ValueActionModifier2<Int>> and conformance ValueActionDispatcher<A>, type metadata accessor for ValueActionDispatcher<_ValueActionModifier2<Int>>, protocol conformance descriptor for ValueActionDispatcher<A>);
  Attribute.init<A>(body:value:flags:update:)();
  v12[0] = OffsetAttribute2;
  v12[1] = v8;
  v13 = 0;
  v14 = 0u;
  v15 = 0;
  v16 = v10;
  v17 = 0xFFFFFFFFLL;
  v18 = 0;
  outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(v12);
  AGGraphSetFlags();
  AGGraphCreateOffsetAttribute2();
  if ((v7 & 1) == 0)
  {
    return _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationV033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t3g5, a3);
  }

  type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>(0);
  AGSubgraphBeginTreeElement();
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationV033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t3g5, a3);
  AGSubgraphEndTreeElement();
  return AGSubgraphEndTreeElement();
}

double _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_AA0pF0ATLLVTt2B5@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    v8 = a2[1];
    v12 = *a2;
    v13 = v8;
    v14 = a2[2];
    v11 = OffsetAttribute2;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt1B5(&v11, &v12);
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA04KickD033_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt3B5(v11, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    v9 = a2[1];
    v12 = *a2;
    v13 = v9;
    v14 = a2[2];
    v11 = OffsetAttribute2;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt1B5(&v11, &v12);
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA04KickD033_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt3B5(v11, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
  }

  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_TransformEffectVTt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickV033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA04KickL033_02B8A9C041E17C70E13F37D6E2D14302LLVG_Tt0t3g5, a3);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickV033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA04KickL033_02B8A9C041E17C70E13F37D6E2D14302LLVG_Tt0t3g5, a3);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

double _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVG_AA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGTt2B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  if (AGSubgraphShouldRecordTree())
  {
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
  }

  return result;
}

double _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYGAYGAA05_BlurZ0VG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  if (AGSubgraphShouldRecordTree())
  {
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
  }

  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYGAYG_AA05_BlurZ0VTt2B5@<X0>(__int128 *a2@<X1>, uint64_t x8_0@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYG_AYTt2B5(a2, x8_0);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYG_AYTt2B5(a2, x8_0);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYG_AYTt2B5@<X0>(__int128 *a2@<X1>, uint64_t x8_0@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYG_AYTt2B5(a2, x8_0);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYG_AYTt2B5(a2, x8_0);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYG_AYTt2B5@<X0>(__int128 *a2@<X1>, uint64_t x8_0@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVG_AYTt2B5(a2, x8_0);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVG_AYTt2B5(a2, x8_0);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVG_AYTt2B5@<X0>(__int128 *a2@<X1>, uint64_t x8_0@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA0oP6EffectATLLVTt2B5(a2, x8_0);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA0oP6EffectATLLVTt2B5(a2, x8_0);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA0oP6EffectATLLVTt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA010ScalePulseV033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA010ScalePulseL033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_Tt0t3g5, a3);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA010ScalePulseV033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA010ScalePulseL033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_Tt0t3g5, a3);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVG_AA0O21AppearanceScaleEffectATLLVTt2B5@<X0>(__int128 *a2@<X1>, uint64_t x8_0@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVG_AA11_BlurEffectVTt2B5(a2, x8_0);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVG_AA11_BlurEffectVTt2B5(a2, x8_0);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVG_AA11_BlurEffectVTt2B5@<X0>(__int128 *a2@<X1>, uint64_t x8_0@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_OpacityEffectVTt2B5(a2, x8_0);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_OpacityEffectVTt2B5(a2, x8_0);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_OpacityEffectVTt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier, &type metadata for GlassTransitionStateModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateV033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA020GlassTransitionStateL033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt0t3g5, a3);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateV033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA020GlassTransitionStateL033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt0t3g5, a3);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA014_AnchorWritingF0VySo6CGRectVAA0o8MaterialQ3KeyATLLVGTt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    type metadata accessor for _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>(0);
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeV033_62A32D59B8A902A88963544196023CF7LLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA016GlassEffectShapeL033_62A32D59B8A902A88963544196023CF7LLVG_Tt0t3g5, a3);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeV033_62A32D59B8A902A88963544196023CF7LLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA016GlassEffectShapeL033_62A32D59B8A902A88963544196023CF7LLVG_Tt0t3g5, a3);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

double _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVGAA0op9ContainerF0ATLLVG_AaW33_0D94FA50AC33D329AB9E24A7FB1C1182LLVTt2B5@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19UnaryGlassContainer33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Ttg5() & 1) == 0)
  {
    AGGraphCreateOffsetAttribute2();
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>(0);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVG_AA0op9ContainerF0ATLLVTt2B5(a2, a3);
      AGSubgraphEndTreeElement();
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVG_AA0op9ContainerF0ATLLVTt2B5(a2, a3);
    }

    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
    if (!ShouldRecordTree)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = AGCreateWeakAttribute();
  v10 = v9;
  v11 = HIDWORD(v9);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 20) = v11;
  *(v12 + 24) = partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:);
  *(v12 + 32) = v7;

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA28GlassEffectContainerModifier33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Tt0t3g5(a2, _s7SwiftUI12ViewModifierPAAE09makeUnaryC4List8modifier6inputs4bodyAA01_cG7OutputsVAA11_GraphValueVyxG_AA01_cG6InputsVAiA01_L0V_ANtctFZAA01_cK0VAA01_cN0VcfU_AA020GlassEffectContainerD033_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Tt2G5TA, v12, a3);

  if (ShouldRecordTree)
  {
LABEL_10:
    AGSubgraphEndTreeElement();
  }

LABEL_11:

  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVG_AA0op9ContainerF0ATLLVTt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalV033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA016GlassEffectLocalL008_3DF70D9R23D7473F4D189A049B764CFEFLLVG_Tt0t3g5, a3);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalV033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA016GlassEffectLocalL008_3DF70D9R23D7473F4D189A049B764CFEFLLVG_Tt0t3g5, a3);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA015FlexInteractionF0VG_AA0o5StateF033_404CBE866CEDD57705E9BEB28E77402CLLVTt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<FlexInteractionModifier>, lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier, &type metadata for FlexInteractionModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015FlexInteractionL0VG_Tt0t3g5, a3);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015FlexInteractionL0VG_Tt0t3g5, a3);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

double _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA011GlassEffectQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO5EntryVGA4_8StableIDVACyACyAA6ZStackVyAA0s14EntryContainerE0AXLLVGAA013_TraitWritingF0VyAA01_Q5TraitVyAY3KeyVGGGA14_yAA18TransitionTraitKeyVGGGG_AA0s8MaterialT033_62A32D59B8A902A88963544196023CF7LLVTt2B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  AGGraphCreateOffsetAttribute2();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v10 = HIDWORD(v8);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 20) = v10;
  *(v11 + 24) = &type metadata for GlassMaterialEffect;
  *(v11 + 32) = partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:);
  *(v11 + 40) = v6;

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA19GlassMaterialEffect33_62A32D59B8A902A88963544196023CF7LLV_Tt3g5(&type metadata for GlassMaterialEffect, a2, partial apply for specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:), v11, a3);

  if (ShouldRecordTree)
  {
    AGSubgraphEndTreeElement();
  }

  return result;
}

double _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVGAA0s15TransitionStateF0AXLLVG_AA018ScheduledAnimationF0020_94C2570E898B27608B6V11D65EF8A1A07LLVySiGTt2B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5(OffsetAttribute2, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, a3);
  }

  return result;
}

void _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVG_AA0s15TransitionStateF0AXLLVTt2B5(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVG_AA0s15TransitionStateF0AXLLVTt2B5Tm(a1, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), a3);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVG_AA0st15FlexInteractionF0AXLLVTt2B5@<X0>(__int128 *a2@<X1>, uint64_t x8_0@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    v6 = AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVG_AA0st11InteractionF0AXLLVTt2B5(v6, a2, x8_0);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    v8 = AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVG_AA0st11InteractionF0AXLLVTt2B5(v8, a2, x8_0);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

double _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVG_AA0st11InteractionF0AXLLVTt2B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  AGGraphCreateOffsetAttribute2();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v10 = HIDWORD(v8);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 20) = v10;
  *(v11 + 24) = &type metadata for GlassEntryInteractionModifier;
  *(v11 + 32) = partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:);
  *(v11 + 40) = v6;

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA19GlassMaterialEffect33_62A32D59B8A902A88963544196023CF7LLV_Tt3g5(&type metadata for GlassEntryInteractionModifier, a2, partial apply for specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:), v11, a3);

  if (ShouldRecordTree)
  {
    AGSubgraphEndTreeElement();
  }

  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA0s18EffectPlatformItemF0AXLLVTt2B5@<X0>(__int128 *a2@<X1>, uint64_t x8_0@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    v6 = AGGraphCreateOffsetAttribute2();
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGG_AA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVTt2B5(v6, a2, x8_0);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    v8 = AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGG_AA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVTt2B5(v8, a2, x8_0);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

void _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGG_AA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVTt2B5(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v29 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v9 = a2[1];
  v28[0] = *a2;
  v28[1] = v9;
  v28[2] = a2[2];
  LODWORD(v25) = OffsetAttribute2;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA24GlassEffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLV_Tt1B5(&v25, v28);
  v10 = v25;
  static DynamicPropertyCache.fields(of:)(&type metadata for GlassEffectShapeModifier, &v25);
  v11 = v25;
  v12 = v26;
  v13 = v27;
  outlined init with copy of _ViewListInputs(a2, &v25);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  LOBYTE(v20) = v12;
  v19 = v10;
  specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v25, v11, *(&v11 + 1), v12 | (v13 << 32), v10, &v20);
  v17 = v21;
  v18 = *(&v20 + 1);
  v14 = BYTE8(v21);
  _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeW033_62A32D59B8A902A88963544196023CF7LLVGG_AA0kG7ElementANLLOTt0g5(partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v7, 1);
  if (!ShouldRecordTree)
  {
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA014_AnchorWritingF0VySo6CGRectVAA0o8MaterialQ3KeyATLLVGTt2B5(&v25, &v20);
    if ((v14 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of _ViewListInputs(&v25);
    outlined consume of DynamicPropertyCache.Fields.Layout(v11, *(&v11 + 1), v12);
    goto LABEL_9;
  }

  type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>(0);
  AGSubgraphBeginTreeElement();
  _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA014_AnchorWritingF0VySo6CGRectVAA0o8MaterialQ3KeyATLLVGTt2B5(&v25, &v20);
  AGSubgraphEndTreeElement();
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_6:
  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v19, v11, *(&v11 + 1), (v13 << 32) | v12, v18, v17);
  outlined consume of DynamicPropertyCache.Fields.Layout(v11, *(&v11 + 1), v12);
  outlined destroy of _ViewListInputs(&v25);
LABEL_9:
  v15 = v23;
  *(a3 + 32) = v22;
  *(a3 + 48) = v15;
  *(a3 + 64) = v24;
  v16 = v21;
  *a3 = v20;
  *(a3 + 16) = v16;
  if (ShouldRecordTree)
  {
    AGSubgraphEndTreeElement();
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVGAA013_TraitWritingF0VyAA18TransitionTraitKeyVGG_A_yAA12_LayoutTraitVyAA0P11EntryLayoutARLLV3KeyVGGTt2B5@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>(0);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v7 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  outlined init with copy of _ViewListInputs(a2, v17);
  v15 = __PAIR64__(*(a2 + 64), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait(0);
  lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait(&lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait, protocol conformance descriptor for _TraitWritingModifier<A>.AddTrait);
  v18 = Attribute.init<A>(body:value:flags:update:)();
  v8 = v19;
  if (v19)
  {
    v9 = v20;
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for _LayoutTrait<GlassEntryLayout.Key>, &type metadata for GlassEntryLayout.Key, &protocol witness table for GlassEntryLayout.Key, type metadata accessor for _LayoutTrait);
    v15 = v8;
    v16 = v9 & 1;
    v19 = 0;
    v20 = 0;
    specialized Set._Variant.insert(_:)(&v14, v10);
    v11 = v15;
    v12 = v16;

    v19 = v11;
    v20 = v12;
  }

  AGGraphCreateOffsetAttribute2();
  if (v7)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVG_AA013_TraitWritingF0VyAA18TransitionTraitKeyVGTt2B5(v17, x8_0);
    AGSubgraphEndTreeElement();
    outlined destroy of _ViewListInputs(v17);
    return AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVG_AA013_TraitWritingF0VyAA18TransitionTraitKeyVGTt2B5(v17, x8_0);
    return outlined destroy of _ViewListInputs(v17);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVG_AA013_TraitWritingF0VyAA18TransitionTraitKeyVGTt2B5@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v7 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  outlined init with copy of _ViewListInputs(a2, v14);
  v12 = __PAIR64__(*(a2 + 64), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>.AddTrait, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier.AddTrait);
  lazy protocol witness table accessor for type _TraitWritingModifier<TransitionTraitKey>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait();
  v15 = Attribute.init<A>(body:value:flags:update:)();
  if (v16)
  {
    v12 = v16;
    v13 = v17 & 1;
    v16 = 0;
    v17 = 0;
    specialized Set._Variant.insert(_:)(&v11, &type metadata for TransitionTraitKey);
    v8 = v12;
    v9 = v13;

    v16 = v8;
    v17 = v9;
  }

  AGGraphCreateOffsetAttribute2();
  if (v7)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>(0);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVG_AA20_GeometryGroupEffectVTt2B5(v14, x8_0);
    AGSubgraphEndTreeElement();
    outlined destroy of _ViewListInputs(v14);
    return AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVG_AA20_GeometryGroupEffectVTt2B5(v14, x8_0);
    return outlined destroy of _ViewListInputs(v14);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVG_AA20_GeometryGroupEffectVTt2B5@<X0>(__int128 *a2@<X1>, uint64_t x8_0@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    v6 = AGGraphCreateOffsetAttribute2();
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, &type metadata for PrimitiveGlassItemView, &type metadata for GlassTransitionStateModifier, type metadata accessor for ModifiedContent);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVG_AA0s15TransitionStateF0AXLLVTt2B5Tm(v6, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), x8_0);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    v8 = AGGraphCreateOffsetAttribute2();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVG_AA0s15TransitionStateF0AXLLVTt2B5Tm(v8, a2, partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), x8_0);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

void _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVG_AA0s15TransitionStateF0AXLLVTt2B5Tm(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1;
  v31 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  static DynamicPropertyCache.fields(of:)(&type metadata for GlassTransitionStateModifier, v28);
  v12 = v28[0];
  v11 = v28[1];
  v13 = v29;
  v14 = v30;
  outlined init with copy of _ViewListInputs(a2, v28);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  LOBYTE(v23) = v13;
  specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v28, v12, v11, v13 | (v14 << 32), OffsetAttribute2, &v23);
  v15 = v23;
  v19 = v24;
  v20 = *(&v23 + 1);
  v16 = BYTE8(v24);
  _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateW033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_AA0kG7ElementANLLOTt0g5(a5, v9, 1);
  if (!ShouldRecordTree)
  {
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVGAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGTt2B5(v15, v28, &v23);
    if ((v16 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of _ViewListInputs(v28);
    outlined consume of DynamicPropertyCache.Fields.Layout(v12, v11, v13);
    goto LABEL_9;
  }

  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>(0);
  AGSubgraphBeginTreeElement();
  _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVGAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGTt2B5(v15, v28, &v23);
  AGSubgraphEndTreeElement();
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_6:
  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(OffsetAttribute2, v12, v11, (v14 << 32) | v13, v20, v19);
  outlined consume of DynamicPropertyCache.Fields.Layout(v12, v11, v13);
  outlined destroy of _ViewListInputs(v28);
LABEL_9:
  v17 = v26;
  *(a6 + 32) = v25;
  *(a6 + 48) = v17;
  *(a6 + 64) = v27;
  v18 = v24;
  *a6 = v23;
  *(a6 + 16) = v18;
  if (ShouldRecordTree)
  {
    AGSubgraphEndTreeElement();
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0oP0O6EffectVGAX15DisplayMaterialV2IDVACyAA0ouE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0op10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGG_AA21_BackdropGroupEffect2VTt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>(0, &lazy cache variable for type metadata for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, type metadata accessor for ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>, lazy protocol witness table accessor for type ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for GlassContainerResolver);
    AGSubgraphBeginTreeElement();
    _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA22GlassContainerResolverVyAA15ModifiedContentVyAA6ZStackVyAA7ForEachVySayAA0lM0O6EffectVGAV15DisplayMaterialV2IDVAPyAA0ltC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0lM18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGG_Tt2B5(a2, a3);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA22GlassContainerResolverVyAA15ModifiedContentVyAA6ZStackVyAA7ForEachVySayAA0lM0O6EffectVGAV15DisplayMaterialV2IDVAPyAA0ltC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0lM18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGG_Tt2B5(a2, a3);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA0d17CaptureProtectioneF0VG_AA0doP16PreferenceWriter33_0D6CD02499D969DD550B3CDDD0903EA3LLVTt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v7 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier, &type metadata for ContentCaptureProtectionViewModifier, type metadata accessor for _ViewModifier_Content);
  AGGraphCreateOffsetAttribute2();
  if (v7)
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0w17CaptureProtectionuV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA0m17CaptureProtectioncL0VG_Tt0t3g5, a3);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0w17CaptureProtectionuV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA0m17CaptureProtectioncL0VG_Tt0t3g5, a3);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGA1_GA1_G_A1_Tt2B5(uint64_t a1, __int128 *a2)
{
  type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>(0);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v5 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>);
  v6 = AGGraphCreateOffsetAttribute2();
  if (v5)
  {
    v7 = v6;
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGG_A1_Tt2B5Tm(v7, a2, 176, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGG_A1_Tt2B5);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGG_A1_Tt2B5Tm(v6, a2, 176, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGG_A1_Tt2B5);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGG_A1_Tt2B5Tm(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, __int128 *))
{
  type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>(0);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v10 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  a4(0);
  v11 = AGGraphCreateOffsetAttribute2();
  if (v10)
  {
    v12 = v11;
    AGSubgraphBeginTreeElement();
    a5(v12, a2);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    a5(v11, a2);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA015SafeAreaPaddingF0VG_AA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGTt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>(0);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v7 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier, type metadata accessor for _ViewModifier_Content);
  AGGraphCreateOffsetAttribute2();
  if (v7)
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingV0VGG_AA0jG7ElementAMLLOTt0g5, _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cV0VAA01_cY0VcfU_TA_0, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5, a3);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a2, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingV0VGG_AA0jG7ElementAMLLOTt0g5, _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cV0VAA01_cY0VcfU_TA_0, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5, a3);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_m11TransactionF0VySbGG_AA022_EnvironmentKeyWritingF0VyAA4FontVSgGTt2B5@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  _s7SwiftUI16ChildEnvironment33_3B04936F6043A290A3E53AE94FE09355LLVyAA4FontVSgGMaTm_0(0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, type metadata accessor for _EnvironmentKeyWritingModifier);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v7 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  outlined init with copy of _ViewListInputs(a2, v15);
  v8 = v16;
  swift_beginAccess();
  v14 = *(v8 + 16);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI16ChildEnvironment33_3B04936F6043A290A3E53AE94FE09355LLVyAA4FontVSgGMaTm_0(0, &lazy cache variable for type metadata for ChildEnvironment<Font?>, type metadata accessor for ChildEnvironment);
  lazy protocol witness table accessor for type ChildEnvironment<Font?> and conformance ChildEnvironment<A>();
  v9 = Attribute.init<A>(body:value:flags:update:)();
  v10 = MEMORY[0x1E69E7CC0];
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Axis?(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 256;
  *(v12 + 82) = OffsetAttribute2;
  *(v12 + 86) = v14;
  *(v12 + 88) = v11;

  v16 = v12;
  if ((v17 & 0x20) == 0)
  {
    v17 |= 0x20u;
  }

  _s7SwiftUI15ModifiedContentVyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySbGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, &lazy cache variable for type metadata for _ValueTransactionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
  AGGraphCreateOffsetAttribute2();
  if (v7)
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_AA01_m11TransactionF0VySbGTt2B5(v15, x8_0);
    AGSubgraphEndTreeElement();
    outlined destroy of _ViewListInputs(v15);
    return AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_AA01_m11TransactionF0VySbGTt2B5(v15, x8_0);
    return outlined destroy of _ViewListInputs(v15);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_AA01_m11TransactionF0VySbGTt2B5@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for _ValueTransactionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for _ValueTransactionModifier);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  outlined init with copy of _ViewListInputs(a2, &v11);
  _s7SwiftUI25_ValueTransactionModifierV11_makeInputs8modifier6inputsyAA06_GraphC0VyACyxGG_AA01_jG0VztFZSb_Tt1B5(OffsetAttribute2, &v11);
  v7 = AGGraphCreateOffsetAttribute2();
  if (ShouldRecordTree)
  {
    v8 = v7;
    AGSubgraphBeginTreeElement();
    v14 = v11;
    v15 = v12;
    v16 = v13;
    v10 = v8;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt1B5(&v10, &v14);
    _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt2B5(v10, &v11, x8_0);
    AGSubgraphEndTreeElement();
    outlined destroy of _ViewListInputs(&v11);
    return AGSubgraphEndTreeElement();
  }

  else
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
    v10 = v7;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt1B5(&v10, &v14);
    _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt2B5(v10, &v11, x8_0);
    return outlined destroy of _ViewListInputs(&v11);
  }
}

uint64_t _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA4TextV_AA018_OverlayPreferenceF0VyAR9LayoutKeyVAA7ForEachVySnySiGSiACyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_m11TransactionF0VySdGGAA13_OffsetEffectVGGGTt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>(0);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    AGGraphCreateOffsetAttribute2();
    AGSubgraphBeginTreeElement();
    static Text._makeViewList(view:inputs:)(a2, a3);
    AGSubgraphEndTreeElement();
    specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    static Text._makeViewList(view:inputs:)(a2, a3);
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(OffsetAttribute2, a2);
  }
}

void *protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance GlassEffectLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
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
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

void *protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance GlassEntryLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
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
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

uint64_t _s7SwiftUI25_ValueTransactionModifierV11_makeInputs8modifier6inputsyAA06_GraphC0VyACyxGG_AA01_jG0VztFZSb_Tt1B5(uint64_t a1, uint64_t a2)
{
  AGGraphCreateOffsetAttribute2();
  specialized static GraphHost.currentHost.getter();
  swift_beginAccess();

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for ValueTransactionSeed<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for ValueTransactionSeed);
  lazy protocol witness table accessor for type ValueTransactionSeed<Bool> and conformance ValueTransactionSeed<A>();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (_:)();
  type metadata accessor for Map<_ValueTransactionModifier<Bool>, (_:)>(0);
  lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait(&lazy protocol witness table cache variable for type Map<_ValueTransactionModifier<Bool>, (_:)> and conformance Map<A, B>, type metadata accessor for Map<_ValueTransactionModifier<Bool>, (_:)>, MEMORY[0x1E698D3A0]);
  Attribute.init<A>(body:value:flags:update:)();

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ChildValueTransaction and conformance ChildValueTransaction();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(a2 + 28) = result;
  return result;
}

double specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)@<D0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  return specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)(a1, a4, a5, _s7SwiftUI12ViewModifierPAAE16makeImplicitRoot8modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListK0VAA01_L0V_AA01_coN0VtctFZApR_ANtcfU_TA_0, _s7SwiftUI12_ViewOutputsVAAE05multiC033_DC167C463E6601B3880A23A75ACAA63BLL8applying6inputs4bodyAcA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListD0VAA01_P0V_AMtctAA0C8ModifierRzlFZAA19GlassMaterialEffect33_62A32D59B8A902A88963544196023CF7LLV_Tt3B5, x8_0);
}

{
  return specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)(a1, a4, a5, closure #1 in static ViewModifier.makeImplicitRoot(modifier:inputs:body:)partial apply, _s7SwiftUI12_ViewOutputsVAAE05multiC033_DC167C463E6601B3880A23A75ACAA63BLL8applying6inputs4bodyAcA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListD0VAA01_P0V_AMtctAA0C8ModifierRzlFZAA021GlassEntryInteractionT033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt3B5, x8_0);
}

double specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X6>, void (*a7)(uint64_t, _OWORD *, uint64_t, uint64_t, __n128)@<X7>, uint64_t a8@<X8>)
{
  v13 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v13;
  v19[4] = *(a1 + 64);
  v20 = *(a1 + 80);
  v14 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v14;
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    *a8 = MEMORY[0x1E69E7CC0];
    *(a8 + 8) = 0;
    *(a8 + 12) = Attribute;
  }

  else
  {
    v17 = Attribute;
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;

    (a7)(v17, v19, a6, v18);
  }

  return result;
}

uint64_t specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  AGGraphCreateOffsetAttribute2();
  if (!AGSubgraphShouldRecordTree())
  {
    return _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015TranslationKickV033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015TranslationKickL033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_Tt0t3g5, a3);
  }

  type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>(0);
  AGSubgraphBeginTreeElement();
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t2g5Tm(a1, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015TranslationKickV033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)partial apply, _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015TranslationKickL033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_Tt0t3g5, a3);

  return AGSubgraphEndTreeElement();
}

{
  AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA018PrimitiveGlassItemC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2B5(a1, a3);

    return AGSubgraphEndTreeElement();
  }

  else
  {

    return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA018PrimitiveGlassItemC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2B5(a1, a3);
  }
}

uint64_t specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t))
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    a5(0);
    AGSubgraphBeginTreeElement();
    a6(OffsetAttribute2, a2);

    return AGSubgraphEndTreeElement();
  }

  else
  {

    return a6(OffsetAttribute2, a2);
  }
}

uint64_t specialized static LayoutSubview.== infix(_:_:)(int32x4_t *a1, int32x4_t *a2)
{
  if (vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))))
  {
    return (a2[1].u8[0] ^ a1[1].u8[0] ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static LayoutSubviews.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 17);
  v6 = *(a2 + 8);
  v7 = *(a2 + 17);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) != 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21LayoutProxyAttributesV_Tt1g5(v3, v6) & 1) == 0)
    {
      return 0;
    }

    return v4 ^ v7 ^ 1u;
  }

  if (*(a2 + 16) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14LayoutSubviewsV7Storage33_57DDCF0A00C1B77B475771403C904EF9LLO17IndexedAttributesV_Tt1g5(v3, v6))
  {
    return v4 ^ v7 ^ 1u;
  }

  return 0;
}

void lazy protocol witness table accessor for type IndexingIterator<LayoutSubviews> and conformance IndexingIterator<A>()
{
  if (!lazy protocol witness table cache variable for type IndexingIterator<LayoutSubviews> and conformance IndexingIterator<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for IndexingIterator<LayoutSubviews>, lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews, &type metadata for LayoutSubviews, MEMORY[0x1E69E6CF0]);
    swift_getWitnessTable(MEMORY[0x1E69E6CF8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type IndexingIterator<LayoutSubviews> and conformance IndexingIterator<A>);
  }
}

uint64_t dispatch thunk of Layout.explicitAlignment(of:in:proposal:subviews:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return (*(a9 + 72))(a1, a2);
}

{
  return (*(a9 + 80))(a1, a2);
}

uint64_t getEnumTagSinglePayload for LayoutProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for LayoutProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t assignWithCopy for LayoutSubviews(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithTake for LayoutSubviews(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for LayoutSubviews(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewSizeCache(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 161))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ViewSizeCache(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
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

  *(result + 161) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewPlacementCache(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 305))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ViewPlacementCache(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 296) = 0;
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
    *(result + 304) = 0;
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

  *(result + 305) = v3;
  return result;
}

uint64_t assignWithCopy for LayoutSubviews.Storage(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for ViewLayoutEngine(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = (v7 + v10) & ~v10;
  v13 = *(v9 + 64);
  v14 = ((((((v13 + v12 + 199) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v10 | *(v6 + 80) & 0xF8;
  if (v15 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || v14 > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + (((v15 | 7) + 16) & ~(v15 | 7)));
  }

  else
  {
    v19 = AssociatedTypeWitness;
    v20 = ~v10;
    (*(v6 + 16))(a1, a2, v5);
    v21 = (a1 + v11) & v20;
    v22 = (a2 + v11) & v20;
    (*(v9 + 16))(v21, v22, v19);
    v23 = (v21 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v22 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v23 = *v24;
    *(v23 + 8) = *(v24 + 8);
    *(v23 + 16) = *(v24 + 16);
    v25 = (v21 + v13 + 31) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v22 + v13 + 31) & 0xFFFFFFFFFFFFFFF8;
    v27 = *(v26 + 112);
    v28 = *(v26 + 128);
    v29 = *(v26 + 144);
    *(v25 + 160) = *(v26 + 160);
    *(v25 + 128) = v28;
    *(v25 + 144) = v29;
    *(v25 + 112) = v27;
    v30 = *(v26 + 48);
    v31 = *(v26 + 64);
    v32 = *(v26 + 96);
    *(v25 + 80) = *(v26 + 80);
    *(v25 + 96) = v32;
    *(v25 + 48) = v30;
    *(v25 + 64) = v31;
    v33 = *v26;
    v34 = *(v26 + 32);
    *(v25 + 16) = *(v26 + 16);
    *(v25 + 32) = v34;
    *v25 = v33;
    v35 = ((v21 + v13 + 199) & 0xFFFFFFFFFFFFFFF8);
    v36 = ((v22 + v13 + 199) & 0xFFFFFFFFFFFFFFF8);
    v37 = v36[1];
    *v35 = *v36;
    v35[1] = v37;
    v38 = ((v35 + 39) & 0xFFFFFFFFFFFFFFF8);
    v39 = ((v36 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v38 = *v39;
    v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
    v42 = *(v41 + 16);
    v43 = *(v41 + 32);
    v44 = *(v41 + 48);
    *(v40 + 64) = *(v41 + 64);
    *(v40 + 32) = v43;
    *(v40 + 48) = v44;
    *(v40 + 16) = v42;
    *v40 = *v41;
    *((v38 + 87) & 0xFFFFFFFFFFFFFFF8) = *((v39 + 87) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t assignWithCopy for ViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + a1) & ~v10;
  v12 = (v6 + v10 + a2) & ~v10;
  (*(v8 + 24))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 40);
  v14 = v13 + v11;
  v15 = v13 + v12;
  v16 = (v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  *(v16 + 16) = *(v17 + 16);
  v18 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = *(v19 + 16);
  v22 = *(v19 + 32);
  *(v18 + 48) = *(v19 + 48);
  *(v18 + 16) = v21;
  *(v18 + 32) = v22;
  *v18 = v20;
  v23 = *(v19 + 56);
  v24 = *(v19 + 72);
  v25 = *(v19 + 88);
  *(v18 + 104) = *(v19 + 104);
  *(v18 + 88) = v25;
  *(v18 + 72) = v24;
  *(v18 + 56) = v23;
  v26 = *(v19 + 112);
  v27 = *(v19 + 128);
  v28 = *(v19 + 144);
  *(v18 + 160) = *(v19 + 160);
  *(v18 + 128) = v27;
  *(v18 + 144) = v28;
  *(v18 + 112) = v26;
  v29 = (v14 + 199) & 0xFFFFFFFFFFFFFFF8;
  v30 = ((v15 + 199) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;
  *(v29 + 8) = v30[1];
  *(v29 + 16) = v30[2];
  *(v29 + 24) = v30[3];
  v29 += 39;
  v31 = ((v30 + 39) & 0xFFFFFFFFFFFFFFF8);
  v32 = (v29 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v29 & 0xFFFFFFFFFFFFFFF8) = *v31;
  v33 = (v29 & 0xFFFFFFFFFFFFFFF8) + 87;

  v34 = v32 & 0xFFFFFFFFFFFFFFF8;
  v35 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  *(v34 + 16) = *(v35 + 16);
  *v34 = v36;
  v37 = *(v35 + 24);
  *(v34 + 40) = *(v35 + 40);
  *(v34 + 24) = v37;
  v38 = *(v35 + 48);
  *(v34 + 64) = *(v35 + 64);
  *(v34 + 48) = v38;
  *(v33 & 0xFFFFFFFFFFFFFFF8) = *((v31 + 87) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for ViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + a1) & ~v10;
  v12 = (v6 + v10 + a2) & ~v10;
  (*(v8 + 32))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 32);
  v14 = v13 + v11;
  v15 = v13 + v12;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 16) = *(v17 + 16);
  v18 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v19 + 112);
  v21 = *(v19 + 128);
  v22 = *(v19 + 144);
  *(v18 + 160) = *(v19 + 160);
  *(v18 + 128) = v21;
  *(v18 + 144) = v22;
  *(v18 + 112) = v20;
  v23 = *(v19 + 48);
  v24 = *(v19 + 64);
  v25 = *(v19 + 96);
  *(v18 + 80) = *(v19 + 80);
  *(v18 + 96) = v25;
  *(v18 + 48) = v23;
  *(v18 + 64) = v24;
  v26 = *v19;
  v27 = *(v19 + 32);
  *(v18 + 16) = *(v19 + 16);
  *(v18 + 32) = v27;
  *v18 = v26;
  v28 = ((v14 + 199) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v15 + 199) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29[1];
  *v28 = *v29;
  v28[1] = v30;
  v31 = ((v28 + 39) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v29 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v34 + 16);
  v36 = *(v34 + 32);
  v37 = *(v34 + 48);
  *(v33 + 64) = *(v34 + 64);
  *(v33 + 32) = v36;
  *(v33 + 48) = v37;
  *(v33 + 16) = v35;
  *v33 = *v34;
  *((v31 + 87) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 87) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + a1) & ~v10;
  v12 = (v6 + v10 + a2) & ~v10;
  (*(v8 + 40))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 24);
  v14 = v13 + v11;
  v15 = v13 + v12;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  *(v16 + 16) = *(v17 + 16);
  v18 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = *(v19 + 16);
  v22 = *(v19 + 32);
  *(v18 + 48) = *(v19 + 48);
  *(v18 + 16) = v21;
  *(v18 + 32) = v22;
  *v18 = v20;
  v23 = *(v19 + 56);
  v24 = *(v19 + 72);
  v25 = *(v19 + 88);
  *(v18 + 104) = *(v19 + 104);
  *(v18 + 88) = v25;
  *(v18 + 72) = v24;
  *(v18 + 56) = v23;
  v26 = *(v19 + 112);
  v27 = *(v19 + 128);
  v28 = *(v19 + 144);
  *(v18 + 160) = *(v19 + 160);
  *(v18 + 128) = v27;
  *(v18 + 144) = v28;
  *(v18 + 112) = v26;
  v29 = (v14 + 199) & 0xFFFFFFFFFFFFFFF8;
  v30 = ((v15 + 199) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;
  *(v29 + 8) = v30[1];
  *(v29 + 16) = v30[2];
  *(v29 + 24) = v30[3];
  v29 += 39;
  v31 = ((v30 + 39) & 0xFFFFFFFFFFFFFFF8);
  v32 = (v29 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v29 & 0xFFFFFFFFFFFFFFF8) = *v31;
  v33 = (v29 & 0xFFFFFFFFFFFFFFF8) + 87;

  v34 = v32 & 0xFFFFFFFFFFFFFFF8;
  v35 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  *(v34 + 16) = *(v35 + 16);
  *v34 = v36;
  v37 = *(v35 + 24);
  *(v34 + 40) = *(v35 + 40);
  *(v34 + 24) = v37;
  v38 = *(v35 + 48);
  *(v34 + 64) = *(v35 + 64);
  *(v34 + 48) = v38;
  *(v33 & 0xFFFFFFFFFFFFFFF8) = *((v31 + 87) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ViewLayoutEngine(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v10;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v14 = ((((((v11 + (v13 & ~v10) + 199) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v12 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v23 = *(v6 + 48);

    return v23(a1, v7, v5);
  }

  else
  {
    v24 = (a1 + v13) & ~v10;
    if (v9 == v12)
    {
      v25 = *(v8 + 48);

      return v25(v24);
    }

    else
    {
      v26 = *(((v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}

void storeEnumTagSinglePayload for ViewLayoutEngine(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  v13 = *(v10 + 64);
  if (v11 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v8 + 64) + v12;
  v16 = ((((((v13 + (v15 & ~v12) + 199) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v19 = 0;
    v20 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((v13 + (v15 & ~v12) + 199) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v14 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v14)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = (a1 + v15) & ~v12;
        if (v11 == v14)
        {
          v25 = *(v10 + 56);

          v25(v24, a2);
        }

        else
        {
          v26 = ((v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v26 = a2 & 0x7FFFFFFF;
            v26[1] = 0;
          }

          else
          {
            v26[1] = (a2 - 1);
          }
        }
      }

      return;
    }
  }

  if (((((((v13 + (v15 & ~v12) + 199) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((((v13 + (v15 & ~v12) + 199) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v14 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>(255);
    v8 = type metadata accessor for ModifiedContent(a1, v5, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _s7SwiftUI16ChildEnvironment33_3B04936F6043A290A3E53AE94FE09355LLVyAA4FontVSgGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Axis?(255, &lazy cache variable for type metadata for Font?, &type metadata for Font, MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void lazy protocol witness table accessor for type ValueTransactionSeed<Bool> and conformance ValueTransactionSeed<A>()
{
  if (!lazy protocol witness table cache variable for type ValueTransactionSeed<Bool> and conformance ValueTransactionSeed<A>)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for ValueTransactionSeed<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for ValueTransactionSeed);
    swift_getWitnessTable(protocol conformance descriptor for ValueTransactionSeed<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ValueTransactionSeed<Bool> and conformance ValueTransactionSeed<A>);
  }
}

double partial apply for specialized closure #1 in Attribute.subscript.getter@<D0>(_OWORD *a2@<X8>)
{
  swift_getAtKeyPath();
  result = *&v4;
  *a2 = v4;
  return result;
}

void type metadata accessor for Map<_ValueTransactionModifier<Bool>, (_:)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<_ValueTransactionModifier<Bool>, (_:)>)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for _ValueTransactionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for _ValueTransactionModifier);
    type metadata accessor for (_:)();
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<_ValueTransactionModifier<Bool>, (_:)>);
    }
  }
}

void _s7SwiftUI15ModifiedContentVyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySbGGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    _sSnySiGMaTm_1(255, a3, a4, a5, type metadata accessor for _ValueTransactionModifier);
    v9 = type metadata accessor for ModifiedContent(a1, &type metadata for SummarySymbol, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void lazy protocol witness table accessor for type DynamicLayoutComputer<AnyLayout> and conformance DynamicLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<AnyLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for DynamicLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicLayoutComputer<AnyLayout> and conformance DynamicLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type StaticLayoutComputer<HStackLayout> and conformance StaticLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<HStackLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for StaticLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type StaticLayoutComputer<HStackLayout> and conformance StaticLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type StaticLayoutComputer<FlexibleButtonFrameLayout> and conformance StaticLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<FlexibleButtonFrameLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for StaticLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type StaticLayoutComputer<FlexibleButtonFrameLayout> and conformance StaticLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type DynamicLayoutComputer<FlexibleButtonFrameLayout> and conformance DynamicLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<FlexibleButtonFrameLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for DynamicLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicLayoutComputer<FlexibleButtonFrameLayout> and conformance DynamicLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type StaticLayoutComputer<VStackLayout> and conformance StaticLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<VStackLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for StaticLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type StaticLayoutComputer<VStackLayout> and conformance StaticLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type DynamicLayoutComputer<VStackLayout> and conformance DynamicLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<VStackLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for DynamicLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicLayoutComputer<VStackLayout> and conformance DynamicLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type StaticLayoutComputer<ZStackLayout> and conformance StaticLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<ZStackLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for StaticLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type StaticLayoutComputer<ZStackLayout> and conformance StaticLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type DynamicLayoutComputer<ZStackLayout> and conformance DynamicLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<ZStackLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicLayoutComputer<ZStackLayout> and conformance DynamicLayoutComputer<A>);
  }
}

uint64_t partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 57, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVG_AA0op9ContainerF0ATLLVTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 136, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA011GlassEffectO033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA7ForEachVySayAA0P9ContainerO5EntryVGA2_8StableIDVAA15ModifiedContentVyA7_yAA6ZStackVyAA0p14EntryContainerD0AVLLVGAA21_TraitWritingModifierVyAA01_O5TraitVyAW3KeyVGGGA14_yAA18TransitionTraitKeyVGGGTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 2480, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVG_AA0s15TransitionStateF0AXLLVTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 2092, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVG_AA0st15FlexInteractionF0AXLLVTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 320, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVG_AA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 16, type metadata accessor for ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_AA0pF0ATLLVTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 72, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVG_AA0O21AppearanceScaleEffectATLLVTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 265, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYGAYG_AA05_BlurZ0VTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 1220, type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA0s18EffectPlatformItemF0AXLLVTt2B5);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2, *(v2 + 16), 536, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA010GlassEntryO033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA7ForEachVySayAA0P9ContainerO4ItemVGA2_2IDVAA0p4ItemD0AVLLVGTt2B5);
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier);
    v8 = type metadata accessor for ModifiedContent(a1, v5, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void lazy protocol witness table accessor for type StaticLayoutComputer<GlassEffectLayout> and conformance StaticLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<GlassEffectLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for StaticLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type StaticLayoutComputer<GlassEffectLayout> and conformance StaticLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type DynamicLayoutComputer<GlassEffectLayout> and conformance DynamicLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<GlassEffectLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for DynamicLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicLayoutComputer<GlassEffectLayout> and conformance DynamicLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(uint64_t a1)
{
  type metadata accessor for ValueActionDispatcher<_ValueActionModifier2<Int>>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2);
}

{
  return specialized closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(a1, a2);
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for ModifiedContent(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void lazy protocol witness table accessor for type StaticLayoutComputer<GlassEntryLayout> and conformance StaticLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<GlassEntryLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for StaticLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type StaticLayoutComputer<GlassEntryLayout> and conformance StaticLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type DynamicLayoutComputer<GlassEntryLayout> and conformance DynamicLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<GlassEntryLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for DynamicLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicLayoutComputer<GlassEntryLayout> and conformance DynamicLayoutComputer<A>);
  }
}

void type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for _LayoutTrait<GlassEntryLayout.Key>, &type metadata for GlassEntryLayout.Key, &protocol witness table for GlassEntryLayout.Key, type metadata accessor for _LayoutTrait);
    v3 = v2;
    lazy protocol witness table accessor for type _LayoutTrait<GlassEntryLayout.Key> and conformance _LayoutTrait<A>();
    v6 = type metadata accessor for _TraitWritingModifier.AddTrait(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>.AddTrait);
    }
  }
}

void lazy protocol witness table accessor for type _TraitWritingModifier<TransitionTraitKey>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait()
{
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>.AddTrait, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier.AddTrait);
    swift_getWitnessTable(protocol conformance descriptor for _TraitWritingModifier<A>.AddTrait, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey>.AddTrait and conformance _TraitWritingModifier<A>.AddTrait);
  }
}

void type metadata accessor for IndexingIterator<LayoutSubviews>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

double _IdentifiedViewProxy.transform.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  v3 = *(v1 + 104);
  *(a1 + 16) = *(v1 + 88);
  *(a1 + 32) = v3;

  return result;
}

__n128 _IdentifiedViewProxy.transform.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];

  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  result = a1[1];
  *(v1 + 104) = a1[2];
  *(v1 + 88) = result;
  return result;
}

double key path getter for _IdentifiedViewProxy.adjustment : _IdentifiedViewProxy@<D0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 128);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3, v4);
}

void key path setter for _IdentifiedViewProxy.adjustment : _IdentifiedViewProxy(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@inout CGRect) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 120);
  v8 = *(a2 + 128);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3, v4);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v7, v8);
  *(a2 + 120) = v6;
  *(a2 + 128) = v5;
}

uint64_t _IdentifiedViewProxy.adjustment.getter()
{
  v1 = *(v0 + 120);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1, *(v0 + 128));
  return v1;
}

void _IdentifiedViewProxy.adjustment.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v2 + 120), *(v2 + 128));
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Any?();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _IdentifiedViewProxy.init(identifier:size:position:transform:accessibilityNode:platform:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 152) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a7;
  *(a4 + 64) = a8;
  v9 = a2[1];
  *(a4 + 72) = *a2;
  *(a4 + 88) = v9;
  *(a4 + 104) = a2[2];
  *(a4 + 136) = 0u;
  return outlined assign with take of Any?(a3, a4 + 136);
}

double _IdentifiedViewProxy.boundingRect.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v10[0] = 0;
  v10[1] = 0;
  v11 = *(v0 + 40);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v9 = 2;
  v6[0].f64[0] = v1;
  v6[0].f64[1] = v2;
  v3 = vsubq_f64(*(v0 + 104), vsubq_f64(*(v0 + 56), *(v0 + 88)));
  v6[1] = *(v0 + 56);
  v6[2] = v3;
  swift_retain_n();
  swift_retain_n();
  CGRect.convert(to:transform:)(v7, v6);

  outlined destroy of CoordinateSpace(v7);
  v4 = *(v0 + 120);
  if (v4)
  {
    v4(v10);
  }

  return *v10;
}

void *IdentifiedViewPlatformInputs.init(inputs:outputs:)(uint64_t a1)
{

  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  return outlined destroy of _ViewInputs(v5);
}

void destroy for _IdentifiedViewProxy(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  if (a1[15])
  {
  }

  if (a1[20])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 17);
  }
}

uint64_t initializeWithCopy for _IdentifiedViewProxy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 120);
  v6 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v6;
  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  v8 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v8;

  if (!v5)
  {
    *(a1 + 120) = *(a2 + 120);
    v10 = *(a2 + 160);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    return a1;
  }

  v9 = *(a2 + 128);
  *(a1 + 120) = v5;
  *(a1 + 128) = v9;

  v10 = *(a2 + 160);
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a1 + 160) = v10;
  (**(v10 - 8))(a1 + 136, a2 + 136);
  return a1;
}

uint64_t assignWithCopy for _IdentifiedViewProxy(uint64_t a1, uint64_t a2, __n128 a3)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2, a3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v5 = *(a1 + 120);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v7 = (a2 + 120);
  v6 = *(a2 + 120);
  if (v5)
  {
    if (v6)
    {
      v8 = *(a2 + 128);
      *(a1 + 120) = v6;
      *(a1 + 128) = v8;

      goto LABEL_8;
    }
  }

  else if (v6)
  {
    v10 = *(a2 + 128);
    *(a1 + 120) = v6;
    *(a1 + 128) = v10;

    goto LABEL_8;
  }

  v9 = *v7;
  *(a1 + 120) = *v7;
LABEL_8:
  v11 = *(a2 + 160);
  if (!*(a1 + 160))
  {
    if (v11)
    {
      *(a1 + 160) = v11;
      (**(v11 - 8))(a1 + 136, a2 + 136);
      return a1;
    }

LABEL_14:
    v13 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v13;
    return a1;
  }

  v12 = (a1 + 136);
  if (!v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_0(v12, (a2 + 136), v9);
  return a1;
}

uint64_t assignWithTake for _IdentifiedViewProxy(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v5 = *(a2 + 120);
  v6 = *(a1 + 120);
  v7 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v7;
  if (v6)
  {
    if (v5)
    {
      v8 = *(a2 + 128);
      *(a1 + 120) = v5;
      *(a1 + 128) = v8;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v9 = *(a2 + 128);
    *(a1 + 120) = v5;
    *(a1 + 128) = v9;
    goto LABEL_8;
  }

  *(a1 + 120) = *(a2 + 120);
LABEL_8:
  if (*(a1 + 160))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 136));
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t getEnumTagSinglePayload for _IdentifiedViewProxy(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t storeEnumTagSinglePayload for _IdentifiedViewProxy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _BenchmarkHost.viewForIdentifier<A, B>(_:_:)@<X0>(uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a6@<X8>)
{
  swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (v10 && v6)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    ViewRendererHost.findIdentifier<A, B>(_:root:filter:)(0x100000000, ObjectType, a3, v11, a6, a4);
    return swift_unknownObjectRelease();
  }

  else
  {
    v14 = *(*(a3 - 8) + 56);

    return v14(a6, 1, 1, a3);
  }
}

uint64_t _BenchmarkHost.stateForIdentifier<A, B, C>(_:type:in:)@<X0>(uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t arg0, uint64_t a4)
{
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8 && v5)
  {
    v11 = v8;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    ViewRendererHost.stateForIdentifier<A, B, C>(_:type:in:)(v13, ObjectType, a2, v11, a3, arg0, a4);

    return swift_unknownObjectRelease();
  }

  else
  {
    v15 = type metadata accessor for Binding(0, a2, v9, v10);
    v16 = *(*(v15 - 8) + 56);

    return v16(a3, 1, 1, v15);
  }
}

uint64_t closure #1 in ViewRendererHost.viewForIdentifier<A, B>(_:_:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a5;
  v24 = a6;
  v25 = a1;
  v26 = a8;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  v17 = type metadata accessor for ViewValuePredicate(0, a4, a7, v16);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v23 - v20;
  (*(*(a4 - 8) + 56))(v15, 1, 1, a4, v19);
  ViewValuePredicate.init(view:)(v15, a4, v21);
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = v23;
  v31 = v24;
  v32 = a7;
  v33 = v21;
  AGAttribute.breadthFirstSearch(options:_:)();
  (*(v13 + 16))(v26, v21, v12);
  return (*(v18 + 8))(v21, v17);
}

double ViewRendererHost.findIdentifier<A, B>(_:root:filter:)@<D0>(uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  if ((a2 & 0x100000000) != 0)
  {
    (*(*(a8 + 8) + 8))(a5);
  }

  v11 = type metadata accessor for Optional();
  swift_allocBox();
  v13 = v12;
  v14 = (*(*(a7 - 8) + 56))(v12, 1, 1, a7);
  MEMORY[0x1EEE9AC00](v14);
  AGAttribute.breadthFirstSearch(options:_:)();
  swift_beginAccess();
  (*(*(v11 - 8) + 16))(a9, v13, v11);

  return result;
}

uint64_t closure #1 in ViewRendererHost.stateForIdentifier<A, B, C>(_:type:in:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25[1] = a1;
  v26 = a9;
  v16 = type metadata accessor for ViewStatePredicate(0, a5, a4, a8);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - v18;
  ViewStatePredicate.init()(a4, a8, v20, v25 - v18);
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v34 = v19;
  AGAttribute.breadthFirstSearch(options:_:)();
  type metadata accessor for Binding(255, a4, v21, v22);
  v23 = type metadata accessor for Optional();
  (*(*(v23 - 8) + 16))(v26, v19, v23);
  return (*(v17 + 8))(v19, v16);
}

uint64_t partial apply for closure #1 in ViewRendererHost.findIdentifier<A, B>(_:root:filter:)(uint64_t a1, double a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v9 = v2[6];
  v8 = v2[7];
  v10 = v2[8];
  v11 = v2[9];
  v12 = v2[10];
  AttributeInfo = AGGraphGetAttributeInfo();
  return project #1 <A><A1, B1><A2>(type:) in closure #1 in ViewRendererHost.findIdentifier<A, B>(_:root:filter:)(*AttributeInfo, a1, v8, v10, v11, v12, v4, v5, v6, *AttributeInfo, v7, v9) & 1;
}

uint64_t project #1 <A><A1, B1><A2>(type:) in closure #1 in ViewRendererHost.findIdentifier<A, B>(_:root:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a3;
  v41 = a8;
  v36 = a5;
  v37 = a4;
  v13 = type metadata accessor for Optional();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_projectBox();
  AGGraphGetAttributeInfo();
  (*(v23 + 16))(v26);
  type metadata accessor for IdentifierProvider();
  if (swift_dynamicCast())
  {
    v35 = v27;
    outlined init with take of AnyTrackedValue(v42, v44);
    v28 = v45;
    v29 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    if ((*(v29 + 8))(v40, v41, a12, v28, v29))
    {
      v37(a2);
      if ((*(v19 + 48))(v18, 1, a9) != 1)
      {
        v32 = *(v19 + 32);
        v32(v22, v18, a9);
        v32(v15, v22, a9);
        v30 = 1;
        (*(v19 + 56))(v15, 0, 1, a9);
        v33 = v35;
        swift_beginAccess();
        (*(v38 + 40))(v33, v15, v39);
        __swift_destroy_boxed_opaque_existential_1(v44);
        return v30;
      }

      (*(v38 + 8))(v18, v39);
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    outlined destroy of IdentifierProvider?(v42);
  }

  return 0;
}

unint64_t type metadata accessor for IdentifierProvider()
{
  result = lazy cache variable for type metadata for IdentifierProvider;
  if (!lazy cache variable for type metadata for IdentifierProvider)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IdentifierProvider);
  }

  return result;
}

uint64_t outlined destroy of IdentifierProvider?(uint64_t a1)
{
  type metadata accessor for IdentifierProvider?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for IdentifierProvider?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IdentifierProvider?)
  {
    type metadata accessor for IdentifierProvider();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IdentifierProvider?);
    }
  }
}

uint64_t LazyVStack.init(alignment:spacing:pinnedViews:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _DWORD *a4@<X3>, void (*a5)(double)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v23 = a5;
  v24 = a7;
  v25 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _VariadicView.Tree(0, &type metadata for LazyVStackLayout, v15, &protocol witness table for LazyVStackLayout);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  LODWORD(v19) = *a4;
  v27[0] = a1;
  v27[1] = a2;
  v28 = a3 & 1;
  v29 = v19;
  v23(v18);
  _VariadicView.Tree.init(root:content:)(v27, v14, &type metadata for LazyVStackLayout, a6, &protocol witness table for LazyVStackLayout, v20);
  v26[0] = &protocol witness table for LazyVStackLayout;
  v26[1] = v24;
  swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v16, v26);
  View.resettableLazyLayoutRoot()(v16, v21);
  return (*(v17 + 8))(v20, v16);
}

uint64_t LazyVStackLayout.init(base:pinnedViews:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 20) = v5;
  return result;
}

void *static LazyVStack._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(a2 + 48);
  v46 = *(a2 + 32);
  v47 = v9;
  v48 = *(a2 + 64);
  v49 = *(a2 + 80);
  v10 = *(a2 + 16);
  v44 = *a2;
  v45 = v10;
  v25 = a3;
  v26 = a4;
  v24[1] = v8;
  v11 = type metadata accessor for LazyVStack(255, a3, a4, a4);
  type metadata accessor for _GraphValue(0, v11, v12, v13);
  v14 = type metadata accessor for _VariadicView.Tree(255, &type metadata for LazyVStackLayout, a3, &protocol witness table for LazyVStackLayout);
  v43[0] = &protocol witness table for LazyVStackLayout;
  v43[1] = a4;
  swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v14, v43);
  v16 = v15;
  v18 = type metadata accessor for ResettableLazyLayoutRoot(0, v14, v15, v17);
  _GraphValue.subscript.getter(partial apply for closure #1 in static LazyVStack._makeView(view:inputs:), v18, v24);
  v19 = v24[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v35 = v46;
  v36 = v47;
  v37 = v48;
  v38 = v49;
  v33 = v44;
  v34 = v45;
  v40 = v49;
  v21 = v46;
  LODWORD(v35) = 0;
  v23 = v19;
  v39[0] = v44;
  v39[1] = v45;
  v39[3] = v47;
  v39[4] = v48;
  v39[2] = v35;
  v29 = v35;
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v27 = v44;
  v28 = v45;
  outlined init with copy of _ViewInputs(&v44, v41);
  outlined init with copy of _ViewInputs(v39, v41);
  static ResettableLazyLayoutRoot._makeView(view:inputs:)(&v23, &v27, v14, v16, a5);
  v41[2] = v29;
  v41[3] = v30;
  v41[4] = v31;
  v42 = v32;
  v41[0] = v27;
  v41[1] = v28;
  outlined destroy of _ViewInputs(v41);
  LODWORD(v35) = v21;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v33);
    AGSubgraphEndTreeElement();
  }

  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  return outlined destroy of _ViewInputs(&v27);
}

uint64_t closure #1 in static LazyVStack._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[2] = type metadata accessor for LazyVStack(0, a2, a3, a4);
  v7 = type metadata accessor for _VariadicView.Tree(255, &type metadata for LazyVStackLayout, a2, &protocol witness table for LazyVStackLayout);
  v15[0] = &protocol witness table for LazyVStackLayout;
  v15[1] = a3;
  swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v7, v15);
  v14 = type metadata accessor for ResettableLazyLayoutRoot(0, v7, v8, v9);
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15[2];
}

uint64_t LazyVStackLayout.base.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

void instantiation function for generic protocol witness table for LazyVStackLayout(uint64_t a1)
{
  lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout();
  *(a1 + 8) = v2;
}

uint64_t type metadata completion function for LazyVStack(uint64_t a1)
{
  result = type metadata accessor for _VariadicView.Tree(319, &type metadata for LazyVStackLayout, *(a1 + 16), &protocol witness table for LazyVStackLayout);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t Text.init(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  type metadata accessor for ConcatenatedTextStorage();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3 & 1;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7 & 1;
  *(result + 72) = a8;
  return result;
}

uint64_t ConcatenatedTextStorage.resolvesToEmpty(in:with:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = *(v2 + 16);
  if (*(v3 + 32) != 1)
  {
    v10 = *(v3 + 24);
    if ((v10 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  v16 = *a1;
  v17 = v5;
  v15 = v6;
  if (((*(*v7 + 88))(&v16, &v15) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = *(v3 + 48);
  if (*(v3 + 64))
  {
    v16 = v4;
    v17 = v5;
    v15 = v6;
    v9 = (*(*v8 + 88))(&v16, &v15);
  }

  else
  {
    v12 = *(v3 + 56);
    if ((v12 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v13 = v8 & 0xFFFFFFFFFFFFLL;
    }

    v9 = v13 == 0;
  }

  return v9 & 1;
}

BOOL ConcatenatedTextStorage.isStyled(options:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(v1 + 40);
  if (*(v1 + 32) == 1)
  {
    v5 = *(v1 + 16);
    v20 = *a1;
    if ((*(*v5 + 104))(&v20))
    {
      return 1;
    }
  }

  v6 = (v4 + 40);
  v7 = *(v4 + 16) + 1;
  while (--v7)
  {
    if ((*v6 & 0xE0) == 0xC0)
    {
      v8 = v6 + 16;
      v9 = *(v6 - 1);
      v20 = v3;
      v10 = (*(*v9 + 80))(&v20);
      v6 = v8;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return 1;
  }

  v11 = *(v2 + 72);
  if (*(v2 + 64) == 1)
  {
    v12 = *(v2 + 48);
    v20 = v3;
    if ((*(*v12 + 104))(&v20))
    {
      return 1;
    }
  }

  v15 = (v11 + 40);
  v16 = *(v11 + 16) + 1;
  do
  {
    v13 = --v16 != 0;
    if (!v16)
    {
      break;
    }

    if ((*v15 & 0xE0) != 0xC0)
    {
      break;
    }

    v17 = v15 + 16;
    v18 = *(v15 - 1);
    v20 = v3;
    v19 = (*(*v18 + 80))(&v20);
    v15 = v17;
  }

  while ((v19 & 1) == 0);
  return v13;
}

double ConcatenatedTextStorage.__ivar_destroyer()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return result;
}

void *Text.Encapsulation.resolve(in:)(uint64_t *a1)
{
  v28 = a1[1];
  v29 = *a1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  v5 = *(v1 + 24);
  v6 = v1[4];
  v7 = *(v1 + 40);
  v8 = *(v1 + 6);
  v9 = *(v1 + 56);
  v10 = v1[8];
  v11 = *(v1 + 9);
  v30 = *(v1 + 80);
  v27 = v1[11];
  v12 = *(v1 + 96);
  v13 = [objc_allocWithZone(MEMORY[0x1E69655F0]) init];
  v14 = v13;
  if (v3)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v13 setScale_];
    if (v5)
    {
LABEL_3:
      if (v7)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  [v14 setShape_];
  if (v7)
  {
LABEL_4:
    if (v12)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v14 setStyle_];
  if (v12)
  {
LABEL_5:
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v14 setPlatterSize_];
  if (v9)
  {
LABEL_6:
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_15:
    v31[0] = v29;
    v31[1] = v28;
    v16 = *(*v10 + 112);

    v16(v31);
    if (one-time initialization token for cache != -1)
    {
      v23 = v17.n128_u32[0];
      v24 = v18.n128_u32[0];
      v25 = v19.n128_u32[0];
      v26 = v20.n128_u32[0];
      swift_once();
      v20.n128_u32[0] = v26;
      v19.n128_u32[0] = v25;
      v18.n128_u32[0] = v24;
      v17.n128_u32[0] = v23;
    }

    specialized ObjectCache.subscript.getter(v17, v18, v19, v20);
    v22 = v21;
    [v14 setPlatformColor_];

    if ((v30 & 1) == 0)
    {
      goto LABEL_8;
    }

    return v14;
  }

LABEL_14:
  [v14 setLineWeight_];
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v30 & 1) == 0)
  {
LABEL_8:
    [v14 setMinimumWidth_];
  }

  return v14;
}

uint64_t Text.Encapsulation.init(scale:shape:style:lineWeight:color:minimumWidth:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *(result + 8);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *a3;
  v13 = *(a3 + 8);
  *a9 = *result;
  *(a9 + 8) = v9;
  *(a9 + 16) = v10;
  *(a9 + 24) = v11;
  *(a9 + 32) = v12;
  *(a9 + 40) = v13;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5 & 1;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8 & 1;
  *(a9 + 88) = 0;
  *(a9 + 96) = 1;
  return result;
}

uint64_t Text.Encapsulation.init(scale:shape:style:platterSize:lineWeight:color:minimumWidth:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = *(result + 8);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *a4;
  v16 = *(a4 + 8);
  *a9 = *result;
  *(a9 + 8) = v10;
  *(a9 + 16) = v11;
  *(a9 + 24) = v12;
  *(a9 + 32) = v13;
  *(a9 + 40) = v14;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6 & 1;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10 & 1;
  *(a9 + 88) = v15;
  *(a9 + 96) = v16;
  return result;
}

void Text.Encapsulation.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v22 = v1[2];
  v23 = v1[4];
  v24 = *(v1 + 40);
  v4 = v1[6];
  v5 = *(v1 + 56);
  v7 = v1[8];
  v6 = v1[9];
  v8 = *(v1 + 80);
  v9 = v1[11];
  v10 = *(v1 + 96);
  if (*(v1 + 8) == 1)
  {
    Hasher._combine(_:)(0);
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = v1[8];
    v12 = *(v1 + 56);
    v13 = v1[6];
    v14 = *(v1 + 80);
    v15 = v1[9];
    v16 = *(v1 + 96);
    v17 = v1[11];
    v18 = *v1;
    Hasher._combine(_:)(1u);
    v19 = v18;
    v9 = v17;
    v10 = v16;
    v6 = v15;
    v8 = v14;
    v4 = v13;
    v5 = v12;
    v7 = v21;
    MEMORY[0x193AC11A0](v19);
    if (!v3)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      MEMORY[0x193AC11A0](v22);
      if (!v24)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  Hasher._combine(_:)(0);
  if (!v24)
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v23);
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_15:
    Hasher._combine(_:)(0);
    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_14:
  Hasher._combine(_:)(0);
  if (v5)
  {
    goto LABEL_15;
  }

LABEL_5:
  Hasher._combine(_:)(1u);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x193AC11E0](v11);
  if (v7)
  {
LABEL_9:
    Hasher._combine(_:)(1u);
    (*(*v7 + 152))(a1);
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_17:
    Hasher._combine(_:)(1u);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v20 = v6;
    }

    else
    {
      v20 = 0;
    }

    MEMORY[0x193AC11E0](v20);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_16:
  Hasher._combine(_:)(0);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_10:
  Hasher._combine(_:)(0);
  if (!v10)
  {
LABEL_11:
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v9);
    return;
  }

LABEL_21:
  Hasher._combine(_:)(0);
}

Swift::Int Text.Encapsulation.hashValue.getter()
{
  Hasher.init(_seed:)();
  Text.Encapsulation.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Text.Encapsulation()
{
  Hasher.init(_seed:)();
  Text.Encapsulation.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.Encapsulation(uint64_t a1)
{
  Hasher.init(_seed:)();
  Text.Encapsulation.hash(into:)(v2);
  return Hasher._finalize()();
}

double Text.Encapsulation.codingProxy.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;

  return result;
}

uint64_t property wrapper backing initializer of Text.Encapsulation.CodingProxy.platterSize@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

double Text.Encapsulation.CodingProxy.base.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Text.Encapsulation.CodingProxy.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656C616373;
  v3 = 0x576D756D696E696DLL;
  if (v1 != 5)
  {
    v3 = 0x5372657474616C70;
  }

  v4 = 0x67696557656E696CLL;
  if (v1 != 3)
  {
    v4 = 0x726F6C6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6570616873;
  if (v1 != 1)
  {
    v5 = 0x656C797473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Text.Encapsulation.CodingProxy.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Text.Encapsulation.CodingProxy.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.Encapsulation.CodingProxy.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.Encapsulation.CodingProxy.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Text.Encapsulation.CodingProxy.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Text.Encapsulation.CodingProxy.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.Encapsulation.CodingProxy.CodingKeys>, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v35 = *(v1 + 24);
  v30 = v1[4];
  v31 = v10;
  v29 = *(v1 + 40);
  v28 = v1[6];
  v27 = *(v1 + 56);
  v11 = v1[9];
  v26 = v1[8];
  v24 = v11;
  v25 = *(v1 + 80);
  v22 = v1[11];
  v23 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v33 = v8;
  v34 = v9;
  v36 = 0;
  type metadata accessor for ProxyCodable<Text.Encapsulation.Scale?>(0);
  lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.Scale?>, protocol conformance descriptor for ProxyCodable<A>);
  v12 = v32;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v12)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = v29;
  v14 = v30;
  v15 = v27;
  v16 = v28;
  v33 = v31;
  v34 = v35;
  v36 = 1;
  type metadata accessor for ProxyCodable<Text.Encapsulation.Shape?>(0);
  lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.Shape?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.Shape?>, protocol conformance descriptor for ProxyCodable<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v33 = v14;
  v34 = v13;
  v36 = 2;
  type metadata accessor for ProxyCodable<Text.Encapsulation.Style?>(0);
  lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.Style?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.Style?>, protocol conformance descriptor for ProxyCodable<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v33 = v16;
  v34 = v15;
  v36 = 3;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v33 = v26;
  v36 = 4;
  type metadata accessor for ProxyCodable<Color>(0, v17, v18, v19);
  lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>, protocol conformance descriptor for ProxyCodable<A>);

  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

  v33 = v24;
  v34 = v25;
  v36 = 5;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v33 = v22;
  v34 = v23;
  v36 = 6;
  type metadata accessor for ProxyCodable<Text.Encapsulation.PlatterSize?>(0);
  lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.PlatterSize?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.PlatterSize?>, protocol conformance descriptor for ProxyCodable<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(0, v4);
}

uint64_t Text.Encapsulation.CodingProxy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<Text.Encapsulation.CodingProxy.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.Encapsulation.CodingProxy.CodingKeys>, MEMORY[0x1E69E6F48]);
  v34 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v73 = 1;
  v71 = 1;
  v69 = 1;
  v67 = 1;
  v65 = 1;
  v63 = 1;
  v9 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v74);
    v45 = 0;
    v46 = v73;
    *v47 = *v72;
    *&v47[3] = *&v72[3];
    v48 = 0;
    v49 = v71;
    *v50 = *v70;
    *&v50[3] = *&v70[3];
    v51 = 0;
    v52 = v69;
    *&v53[3] = *&v68[3];
    *v53 = *v68;
    v54 = 0;
    v55 = v67;
    *v56 = *v66;
    *&v56[3] = *&v66[3];
    v57 = 0;
    v58 = 0;
    v59 = v65;
    *v60 = *v64;
    *&v60[3] = *&v64[3];
    v61 = 0;
    v62 = v63;
  }

  else
  {
    v33 = v6;
    type metadata accessor for ProxyCodable<Text.Encapsulation.Scale?>(0);
    LOBYTE(v35) = 0;
    lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.Scale?>, protocol conformance descriptor for ProxyCodable<A>);
    v10 = v34;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v45;
    v73 = v46;
    type metadata accessor for ProxyCodable<Text.Encapsulation.Shape?>(0);
    LOBYTE(v35) = 1;
    lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.Shape?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.Shape?>, protocol conformance descriptor for ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v45;
    v71 = v46;
    type metadata accessor for ProxyCodable<Text.Encapsulation.Style?>(0);
    LOBYTE(v35) = 2;
    lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.Style?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.Style?>, protocol conformance descriptor for ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v45;
    v69 = v46;
    LOBYTE(v35) = 3;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v45;
    v67 = v46;
    type metadata accessor for ProxyCodable<Color>(0, v13, v14, v15);
    LOBYTE(v35) = 4;
    lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>, protocol conformance descriptor for ProxyCodable<A>);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v16 = v45;
    LOBYTE(v35) = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v17 = v45;
    v65 = v46;
    type metadata accessor for ProxyCodable<Text.Encapsulation.PlatterSize?>(0);
    v42 = 6;
    lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Text.Encapsulation.PlatterSize?> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Text.Encapsulation.PlatterSize?>, protocol conformance descriptor for ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v33 + 8))(v8, v10);
    v27 = v43;
    v63 = v44;
    *&v35 = v32;
    LODWORD(v34) = v73;
    BYTE8(v35) = v73;
    *(&v35 + 9) = *v72;
    HIDWORD(v35) = *&v72[3];
    v18 = v30;
    *&v36 = v31;
    LODWORD(v33) = v71;
    BYTE8(v36) = v71;
    *(&v36 + 9) = *v70;
    HIDWORD(v36) = *&v70[3];
    *&v37 = v12;
    v29 = v69;
    BYTE8(v37) = v69;
    *(&v37 + 9) = *v68;
    HIDWORD(v37) = *&v68[3];
    *&v38 = v30;
    v28 = v67;
    BYTE8(v38) = v67;
    *(&v38 + 9) = *v66;
    HIDWORD(v38) = *&v66[3];
    *&v39 = v16;
    *(&v39 + 1) = v17;
    v26 = v12;
    LOBYTE(v12) = v65;
    LOBYTE(v40) = v65;
    DWORD1(v40) = *&v64[3];
    *(&v40 + 1) = *v64;
    *(&v40 + 1) = v43;
    v19 = v44;
    v41 = v44;
    v20 = v39;
    v21 = v40;
    *(a2 + 96) = v44;
    *(a2 + 64) = v20;
    *(a2 + 80) = v21;
    v22 = v35;
    v23 = v36;
    v24 = v38;
    *(a2 + 32) = v37;
    *(a2 + 48) = v24;
    *a2 = v22;
    *(a2 + 16) = v23;
    outlined init with copy of Text.Encapsulation.CodingProxy(&v35, &v45);
    __swift_destroy_boxed_opaque_existential_1(v74);
    v45 = v32;
    v46 = v34;
    *v47 = *v72;
    *&v47[3] = *&v72[3];
    v48 = v31;
    v49 = v33;
    *v50 = *v70;
    *&v50[3] = *&v70[3];
    v51 = v26;
    v52 = v29;
    *v53 = *v68;
    *&v53[3] = *&v68[3];
    v54 = v18;
    v55 = v28;
    *&v56[3] = *&v66[3];
    *v56 = *v66;
    v57 = v16;
    v58 = v17;
    v59 = v12;
    *&v60[3] = *&v64[3];
    *v60 = *v64;
    v61 = v27;
    v62 = v19;
  }

  return outlined destroy of Text.Encapsulation.CodingProxy(&v45);
}

BOOL specialized static Text.Encapsulation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  v16 = *(a2 + 88);
  v17 = *(a2 + 96);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v18 = *(a2 + 8);
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v19 = *(a2 + 24);
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v20 = *(a2 + 40);
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 48))
    {
      v21 = *(a2 + 56);
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v13)
    {
      return 0;
    }

    if (v8 != v13)
    {
      v22 = *(*v8 + 88);

      v24 = v22(v23);

      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v10)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v14)
    {
      v25 = v15;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if ((v12 & 1) == 0)
  {
    if (v11 == v16)
    {
      v27 = v17;
    }

    else
    {
      v27 = 1;
    }

    return (v27 & 1) == 0;
  }

  return (v17 & 1) != 0;
}

void lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.CodingProxy.CodingKeys, &unk_1F007F518, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.CodingProxy.CodingKeys, &unk_1F007F518, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.CodingProxy.CodingKeys, &unk_1F007F518, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.CodingProxy.CodingKeys, &unk_1F007F518, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys);
  }
}

void type metadata accessor for ProxyCodable<Text.Encapsulation.Scale?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.Scale?>)
  {
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for Text.Encapsulation.Scale?, &type metadata for Text.Encapsulation.Scale);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Encapsulation.Scale? and conformance <A> A?(&lazy protocol witness table cache variable for type Text.Encapsulation.Scale? and conformance <A> A?, &lazy cache variable for type metadata for Text.Encapsulation.Scale?, &type metadata for Text.Encapsulation.Scale, lazy protocol witness table accessor for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale);
    v6 = type metadata accessor for ProxyCodable(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.Scale?>);
    }
  }
}

void lazy protocol witness table accessor for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale()
{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.Scale, &type metadata for Text.Encapsulation.Scale, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.Scale, &type metadata for Text.Encapsulation.Scale, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.Scale and conformance Text.Encapsulation.Scale);
  }
}

void type metadata accessor for ProxyCodable<Text.Encapsulation.Shape?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.Shape?>)
  {
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for Text.Encapsulation.Shape?, &type metadata for Text.Encapsulation.Shape);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Encapsulation.Scale? and conformance <A> A?(&lazy protocol witness table cache variable for type Text.Encapsulation.Shape? and conformance <A> A?, &lazy cache variable for type metadata for Text.Encapsulation.Shape?, &type metadata for Text.Encapsulation.Shape, lazy protocol witness table accessor for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape);
    v6 = type metadata accessor for ProxyCodable(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.Shape?>);
    }
  }
}

void lazy protocol witness table accessor for type Text.Encapsulation.Scale? and conformance <A> A?(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*a1)
  {
    type metadata accessor for HitTestableEvent?(255, a2, a3);
    v7 = v6;
    v9 = a4();
    swift_getWitnessTable(protocol conformance descriptor for <A> A?, v7, &v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape()
{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.Shape, &type metadata for Text.Encapsulation.Shape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.Shape, &type metadata for Text.Encapsulation.Shape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.Shape and conformance Text.Encapsulation.Shape);
  }
}

void lazy protocol witness table accessor for type ProxyCodable<Text.Encapsulation.Scale?> and conformance ProxyCodable<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for ProxyCodable<Text.Encapsulation.Style?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.Style?>)
  {
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for Text.Encapsulation.Style?, &type metadata for Text.Encapsulation.Style);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Encapsulation.Scale? and conformance <A> A?(&lazy protocol witness table cache variable for type Text.Encapsulation.Style? and conformance <A> A?, &lazy cache variable for type metadata for Text.Encapsulation.Style?, &type metadata for Text.Encapsulation.Style, lazy protocol witness table accessor for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style);
    v6 = type metadata accessor for ProxyCodable(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.Style?>);
    }
  }
}

void lazy protocol witness table accessor for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style()
{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.Style, &type metadata for Text.Encapsulation.Style, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.Style, &type metadata for Text.Encapsulation.Style, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.Style and conformance Text.Encapsulation.Style);
  }
}

void type metadata accessor for ProxyCodable<Text.Encapsulation.PlatterSize?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.PlatterSize?>)
  {
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for Text.Encapsulation.PlatterSize?, &type metadata for Text.Encapsulation.PlatterSize);
    v3 = v2;
    lazy protocol witness table accessor for type Text.Encapsulation.Scale? and conformance <A> A?(&lazy protocol witness table cache variable for type Text.Encapsulation.PlatterSize? and conformance <A> A?, &lazy cache variable for type metadata for Text.Encapsulation.PlatterSize?, &type metadata for Text.Encapsulation.PlatterSize, lazy protocol witness table accessor for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize);
    v6 = type metadata accessor for ProxyCodable(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ProxyCodable<Text.Encapsulation.PlatterSize?>);
    }
  }
}

void lazy protocol witness table accessor for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize()
{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.PlatterSize, &type metadata for Text.Encapsulation.PlatterSize, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Encapsulation.PlatterSize, &type metadata for Text.Encapsulation.PlatterSize, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Encapsulation.PlatterSize and conformance Text.Encapsulation.PlatterSize);
  }
}

void type metadata accessor for KeyedEncodingContainer<Text.Encapsulation.CodingProxy.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy.CodingKeys and conformance Text.Encapsulation.CodingProxy.CodingKeys();
    v7 = a3(a1, &unk_1F007F518, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with copy of Text.Encapsulation.CodingProxy(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *a2 = v3;
  v4 = a1[2];
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 16) = v4;
  v5 = a1[4];
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 32) = v5;
  v6 = a1[6];
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 48) = v6;
  *(a2 + 64) = a1[8];
  v7 = a1[9];
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 72) = v7;
  v8 = a1[11];
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 88) = v8;

  return a2;
}

void instantiation function for generic protocol witness table for Text.Encapsulation.CodingProxy(uint64_t a1)
{
  lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy and conformance Text.Encapsulation.CodingProxy();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type Text.Encapsulation.CodingProxy and conformance Text.Encapsulation.CodingProxy();
  *(a1 + 16) = v3;
}

uint64_t initializeWithCopy for Text.Encapsulation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 80) = *(a2 + 80);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithCopy for Text.Encapsulation(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  v5 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v5;
  v6 = a2[4];
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v6;
  v7 = a2[6];
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v7;
  *(a1 + 64) = a2[8];

  v8 = a2[9];
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v8;
  v9 = a2[11];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v9;
  return a1;
}

uint64_t assignWithTake for Text.Encapsulation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for Text.Encapsulation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for Text.Encapsulation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t specialized Text.Encapsulation.CodingProxy.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570616873 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x67696557656E696CLL && a2 == 0xEA00000000007468 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x576D756D696E696DLL && a2 == 0xEC00000068746469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5372657474616C70 && a2 == 0xEB00000000657A69)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

double EnvironmentValues.textSizing.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSizingI033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt1g5(v3, a1);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(*v1);
    if (v5)
    {
      v6 = *(v5 + 72);
      v7 = v5[10];
      *a1 = v6;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v7 = qword_1ED537550;
      *a1 = static TextSizingKey.defaultValue;
    }

    *(a1 + 8) = v7;
  }

  return result;
}

uint64_t Text.Sizing.Storage.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

_BYTE *Text.Sizing.init(_:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ConcreteTextSizingModifier.isEqual(to:)(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    (*(v3 + 16))(v5, v6 + *(*v6 + 120), v2);

    v7 = dispatch thunk of static Equatable.== infix(_:_:)();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t static Text.Sizing.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Text.Sizing(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance TextSizingKey@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ED537550;
  *a1 = static TextSizingKey.defaultValue;
  *(a1 + 8) = v2;

  return result;
}

void (*EnvironmentValues.textSizing.modify(void *a1))(unsigned __int8 **a1, char a2)
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

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSizingI033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt1g5(v5, v4);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
      v9 = v7[10];
      *v4 = v8;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = qword_1ED537550;
      *v4 = static TextSizingKey.defaultValue;
    }

    *(v4 + 8) = v9;
  }

  return EnvironmentValues.textSizing.modify;
}

void EnvironmentValues.textSizing.modify(unsigned __int8 **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 1);

  v6 = *(v3 + 6);
  v7 = *(v3 + 4);
  if (a2)
  {
    swift_bridgeObjectRetain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSizingF033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt2B5(v7, v4, v5);

    if (v6)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA010TextSizingK033_22747AAF70EE5063D02F299CE90A18BELLVG_Ttg5(*(v3 + 5), **(v3 + 4));
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSizingF033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt2B5(v7, v4, v5);

    if (v6)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA010TextSizingK033_22747AAF70EE5063D02F299CE90A18BELLVG_Ttg5(*(v3 + 5), **(v3 + 4));
    }
  }

  free(v3);
}

double protocol witness for static ViewInputsModifier._makeViewInputs(modifier:inputs:) in conformance PreferTextLayoutManagerInputModifier(uint64_t a1, uint64_t *a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28PreferTextLayoutManagerInputV_Tt2g5(a2, 1);

  return result;
}

void lazy protocol witness table accessor for type Text.Sizing.Storage and conformance Text.Sizing.Storage()
{
  if (!lazy protocol witness table cache variable for type Text.Sizing.Storage and conformance Text.Sizing.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Sizing.Storage, &type metadata for Text.Sizing.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Sizing.Storage and conformance Text.Sizing.Storage);
  }
}

void lazy protocol witness table accessor for type AnyTextSizingModifier and conformance AnyTextSizingModifier()
{
  if (!lazy protocol witness table cache variable for type AnyTextSizingModifier and conformance AnyTextSizingModifier)
  {
    v2 = type metadata accessor for AnyTextSizingModifier();
    swift_getWitnessTable(protocol conformance descriptor for AnyTextSizingModifier, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AnyTextSizingModifier and conformance AnyTextSizingModifier);
  }
}

uint64_t static AnyTransition.slide.getter()
{
  type metadata accessor for TransitionBox<SlideTransition>(0);

  return swift_allocObject();
}

void type metadata accessor for TransitionBox<SlideTransition>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TransitionBox<SlideTransition>)
  {
    lazy protocol witness table accessor for type SlideTransition and conformance SlideTransition();
    v4 = type metadata accessor for TransitionBox(a1, &type metadata for SlideTransition, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TransitionBox<SlideTransition>);
    }
  }
}

void lazy protocol witness table accessor for type SlideTransition and conformance SlideTransition()
{
  if (!lazy protocol witness table cache variable for type SlideTransition and conformance SlideTransition)
  {
    swift_getWitnessTable(protocol conformance descriptor for SlideTransition, &type metadata for SlideTransition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SlideTransition and conformance SlideTransition);
  }
}

void lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>)
  {
    v8[2] = v4;
    v8[3] = v5;
    type metadata accessor for ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout>(255, a2, a3, a4);
    v8[0] = &protocol witness table for PlaceholderContentView<A>;
    v8[1] = &protocol witness table for MoveTransition.MoveLayout;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v8);
    atomic_store(v7, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>);
  }
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout>)
  {
    type metadata accessor for PlaceholderContentView<SlideTransition>(255, a2, a3, a4);
    v7 = type metadata accessor for ModifiedContent(a1, v5, &type metadata for MoveTransition.MoveLayout, v6);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<SlideTransition>, MoveTransition.MoveLayout>);
    }
  }
}

void type metadata accessor for PlaceholderContentView<SlideTransition>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for PlaceholderContentView<SlideTransition>)
  {
    v4 = type metadata accessor for PlaceholderContentView(0, &type metadata for SlideTransition, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for PlaceholderContentView<SlideTransition>);
    }
  }
}

double ResolvableAbsoluteDate.init(_:style:in:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = a2[16];
  v10 = *a3;
  v9 = *(a3 + 8);
  v11 = type metadata accessor for Date();
  v26 = *(v11 - 8);
  (*(v26 + 16))(a4, a1, v11);
  v12 = type metadata accessor for ResolvableAbsoluteDate(0);
  v13 = a4 + v12[5];
  *v13 = v6;
  *(v13 + 8) = v7;
  *(v13 + 16) = v8;
  v14 = v12[6];
  if (v9)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10, a4 + v14);

    v15 = v12[7];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10, a4 + v15);

    v16 = v12[8];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10, a4 + v16);

    v17 = *(v26 + 8);

    v17(a1, v11);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v10, a4 + v14);
    v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v10);
    if (v19)
    {
      v20 = *(*v19 + 248);
      v21 = v12[7];
      v22 = v19;
      v23 = type metadata accessor for Locale();
      (*(*(v23 - 8) + 16))(a4 + v21, &v22[v20], v23);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Locale();
      v25 = __swift_project_value_buffer(v24, static LocaleKey.defaultValue);
      (*(*(v24 - 8) + 16))(a4 + v12[7], v25, v24);
    }

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v10, a4 + v12[8]);
    (*(v26 + 8))(a1, v11);
  }

  return result;
}