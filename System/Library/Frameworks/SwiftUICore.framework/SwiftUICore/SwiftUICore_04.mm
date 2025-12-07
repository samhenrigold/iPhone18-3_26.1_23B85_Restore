uint64_t sub_18D04D4EC()
{

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #2 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(uint64_t result)
{
  *(result + 12) = *(v1 + 28);
  return result;
}

{
  *(result + 24) = *(v1 + 28);
  return result;
}

uint64_t ViewGraph.makePreferenceOutlets(outputs:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 40);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 32;

      for (i = 0; i != v7; ++i)
      {
        v11 = *(v8 + 16 * i);
        v12 = *(v3 + 16) + 1;
        v13 = (v3 + 32);
        while (--v12)
        {
          v14 = v13 + 3;
          v15 = *v13;
          v13 += 3;
          if (v15 == v11)
          {
            v26 = *(v8 + 16 * i);
            v16 = *(v14 - 2);
            swift_beginAccess();
            if ((*(v2 + 41) & 1) == 0)
            {
              PreferenceBridge.addValue(_:for:)(v16, v11, *(&v26 + 1));
            }

            swift_beginAccess();
            v17 = *(v2 + 448);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + 448) = v17;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
              *(v2 + 448) = v17;
            }

            v20 = *(v17 + 2);
            v19 = *(v17 + 3);
            v21 = v26;
            if (v20 >= v19 >> 1)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
              v21 = v26;
              v17 = v22;
            }

            *(v17 + 2) = v20 + 1;
            v10 = &v17[24 * v20];
            *(v10 + 2) = v21;
            *(v10 + 12) = v16;
            *(v2 + 448) = v17;
            swift_endAccess();
            break;
          }
        }
      }
    }

    else
    {
    }

    swift_beginAccess();
    if ((*(v2 + 41) & 1) == 0 && (_s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA04HostcI0V_TtB5(v3) & 0x100000000) == 0)
    {
      AGCreateWeakAttribute();
      v23 = *(v2 + 56);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        swift_beginAccess();
        Attribute = AGWeakAttributeGetAttribute();
        if (Attribute != *MEMORY[0x1E698D3F8])
        {
          MEMORY[0x1EEE9AC00](Attribute);
          MEMORY[0x1EEE9AC00](v25);
          AGGraphMutateAttribute();
          GraphHost.graphInvalidation(from:)(v23);
        }
      }
    }
  }

  return result;
}

void lazy protocol witness table accessor for type RootDisplayList and conformance RootDisplayList()
{
  if (!lazy protocol witness table cache variable for type RootDisplayList and conformance RootDisplayList)
  {
    swift_getWitnessTable(protocol conformance descriptor for RootDisplayList, &unk_1F00C2110, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RootDisplayList and conformance RootDisplayList);
  }
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for DisplayList.Key)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

void type metadata accessor for [ViewResponder](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_7(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_9(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for DisplayList.Key);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for DisplayList.Key;
  }

  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type HitTestBindingFilter and conformance HitTestBindingFilter()
{
  if (!lazy protocol witness table cache variable for type HitTestBindingFilter and conformance HitTestBindingFilter)
  {
    swift_getWitnessTable(protocol conformance descriptor for HitTestBindingFilter, &unk_1F0072A80, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HitTestBindingFilter and conformance HitTestBindingFilter);
  }
}

uint64_t static ViewGraphFeatureBuffer._VTable.modifyViewOutputs(elt:outputs:inputs:graph:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a3 + 48);
  v12[2] = *(a3 + 32);
  v12[3] = v8;
  v12[4] = *(a3 + 64);
  v13 = *(a3 + 80);
  v9 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v9;
  v14 = v7;
  v10 = *(v4 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v4 + 184) + 16))(a2, v12, a4, v10);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for ViewRespondersKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t specialized HitTestBindingFeature.modifyViewOutputs(outputs:inputs:graph:)(uint64_t *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v4;
  v16[4] = *(a2 + 64);
  v17 = *(a2 + 80);
  v5 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v5;
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v4);
  if (result)
  {
    type metadata accessor for HitTestBindingResponder();
    v7 = swift_allocObject();
    v8 = *(a2 + 48);
    *(v7 + 120) = *(a2 + 32);
    *(v7 + 136) = v8;
    *(v7 + 152) = *(a2 + 64);
    v9 = *(a2 + 16);
    *(v7 + 88) = *a2;
    *(v7 + 184) = 0u;
    *(v7 + 200) = 0u;
    *(v7 + 168) = *(a2 + 80);
    *(v7 + 104) = v9;
    result = AGSubgraphGetCurrent();
    if (result)
    {
      v10 = MEMORY[0x1E69E7CC0];
      *(v7 + 176) = result;
      *(v7 + 40) = v10;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = v10;
      *(v7 + 24) = 0;
      swift_unknownObjectWeakInit();
      swift_weakInit();
      outlined init with copy of _ViewInputs(v16, v15);
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      v11 = swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();
      v12 = *(v11 + 208);

      swift_beginAccess();
      *(v7 + 24) = v12;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      if ((_s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(*a1) & 0x100000000) != 0)
      {
        specialized static GraphHost.currentHost.getter();
        swift_dynamicCastClassUnconditional();
        _sSay7SwiftUI13ViewResponderCGMaTm_5(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v13, 0);
      }

      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _sSay7SwiftUI13ViewResponderCGMaTm_5(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type HitTestBindingFilter and conformance HitTestBindingFilter();

      v14 = Attribute.init<A>(body:value:flags:update:)();

      PreferencesOutputs.subscript.setter(v14, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for ViewRespondersKey;
  }

  __break(1u);
  return result;
}

unint64_t PairwisePreferenceCombinerVisitor.visit<A>(key:)(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 2);
  v23 = *v3;
  v24 = v6;
  v7 = PreferencesOutputs.subscript.getter(a2, a2, a3);
  v8 = *(v3 + 6);
  v21 = v3[2];
  v22 = v8;
  result = PreferencesOutputs.subscript.getter(a2, a2, a3);
  if ((v7 & 0x100000000) != 0)
  {
    if ((result & 0x100000000) != 0)
    {
      return result;
    }

    LOBYTE(v20[0]) = 0;
    v15 = result;
    goto LABEL_7;
  }

  if ((result & 0x100000000) != 0)
  {
    LOBYTE(v20[0]) = 0;
    v15 = v7;
LABEL_7:
    v14 = v15;
    return PreferencesOutputs.subscript.setter(v14, a2, a2, a3);
  }

  v20[0] = v7;
  v20[1] = result;
  MEMORY[0x1EEE9AC00](result);
  v16[2] = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for PairPreferenceCombiner(0, a2, a3, v10);
  swift_getWitnessTable(protocol conformance descriptor for PairPreferenceCombiner<A>, v17);
  v18 = v11;
  v12 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, partial apply for closure #1 in Attribute.init<A>(_:), v16, v17, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  LOBYTE(v20[0]) = 0;
  v14 = v19;
  return PreferencesOutputs.subscript.setter(v14, a2, a2, a3);
}

uint64_t _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_ZStackC0V_Tt2t4B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v80 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v74 = v7;
  v73 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v96 = *a2;
  v97 = v10;
  v98 = *(a2 + 32);
  v11 = v96;
  outlined init with copy of _GraphInputs(&v96, &v88);
  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v83 = DWORD1(v98);
  v75 = a4;
  v78 = v11;
  if ((WORD2(v98) & 0x1000) != 0)
  {
    v82 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v82 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v79 = v12;
  if (v80 & 1 | ((v83 & 0x22) != 0) || (v15 = v12, (v82 & 1) != 0))
  {
    v16 = v97;
    swift_beginAccess();
    *&v88 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v88) = v12;
    *&v89[0] = MEMORY[0x1E69E7CC0];
    *(&v89[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v89[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<_ZStackLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v88) = *(a2 + 72);
    *(&v88 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v92 = *(a2 + 32);
  v93 = v19;
  v94 = *(a2 + 64);
  v95 = *(a2 + 80);
  v20 = *(a2 + 16);
  v90 = *a2;
  v91 = v20;
  DWORD1(v92) = v83 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v93;
    *&v99[0] = v93;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);

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
        v21 = v93;
      }
    }

    *&v88 = v21;
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
    outlined init with copy of _ViewInputs(a2, &v88);
  }

  v26 = v79;
  if (v81 != v79)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, v79);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v90, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v90, v79);
  }

  v99[2] = v92;
  v99[3] = v93;
  v99[4] = v94;
  v100 = v95;
  v99[0] = v90;
  v99[1] = v91;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v84, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v99);

  v87 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v79;
  }

  if (!((v80 | v82) & 1 | (v81 != v26)))
  {
    outlined destroy of _GraphInputs(&v96);
    v38 = v75;
    goto LABEL_43;
  }

  v77 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v72 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v71 = HIDWORD(v32);
  v65 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v70 = HIDWORD(v34);
  v64 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v69 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v78) == v26)
  {
    LODWORD(v67) = 0;
    v68 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v67 = HIDWORD(v39);
    v68 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v84);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v66 = HIDWORD(v40);
  if ((v80 | v82))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v77;
    *(v43 + 24) = v31;
    *(v43 + 28) = v72;
    *(v43 + 32) = v33;
    *(v43 + 36) = v71;
    *(v43 + 40) = v35;
    *(v43 + 44) = v70;
    *(v43 + 48) = v37;
    *(v43 + 52) = v69;
    *(v43 + 56) = v68;
    *(v43 + 60) = v67;
    *(v43 + 64) = v41;
    *(v43 + 68) = v66;
    *&v88 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v88) = 0;
    v45 = v44;
    v26 = v79;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v81 != v26)
  {
    *(&v89[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v89[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v88 = v46;
    *(v46 + 16) = v77;
    *(v46 + 24) = v31;
    *(v46 + 28) = v72;
    *(v46 + 32) = v33;
    *(v46 + 36) = v71;
    *(v46 + 40) = v35;
    *(v46 + 44) = v70;
    *(v46 + 48) = v37;
    *(v46 + 52) = v69;
    *(v46 + 56) = v68;
    *(v46 + 60) = v67;
    *(v46 + 64) = v41;
    *(v46 + 68) = v66;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v88);
    *&v88 = v74;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v74 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v89[4] + 8, 0, 28);
      *(&v89[3] + 8) = 0u;
      *&v88 = __PAIR64__(v64, v65);
      *(&v88 + 1) = __PAIR64__(v47, DWORD2(v97));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      v56 = swift_endAccess();
      LODWORD(v89[0]) = v55;
      *(v89 + 8) = v96;
      *(&v89[1] + 8) = v97;
      *(&v89[2] + 8) = v98;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v74, v73, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      outlined destroy of ScrollStateRequestTransform(&v88);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v74 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v88 = __PAIR64__(v47, v81);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v84);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v88 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]](0);
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v88) = 0;
        v26 = v79;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v96);
LABEL_41:
  v38 = v75;
  if (v82)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v78);
    v57 = *(a2 + 48);
    v89[1] = *(a2 + 32);
    v89[2] = v57;
    v89[3] = *(a2 + 64);
    LODWORD(v89[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v88 = *a2;
    v89[0] = v58;
    (*(v59 + 8))(&v88, &v84);
  }

LABEL_43:
  if ((v83 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v85 | 0x80;
  }

  else
  {

    v61 = v85;
    v60 = v86;
  }

  v89[1] = v92;
  v89[2] = v93;
  v89[3] = v94;
  LODWORD(v89[4]) = v95;
  v88 = v90;
  v89[0] = v91;
  outlined destroy of _ViewInputs(&v88);

  *v38 = v84;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
  return result;
}

void lazy protocol witness table accessor for type UniqueID and conformance UniqueID()
{
  if (!lazy protocol witness table cache variable for type UniqueID and conformance UniqueID)
  {
    swift_getWitnessTable(protocol conformance descriptor for UniqueID, &type metadata for UniqueID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UniqueID and conformance UniqueID);
  }
}

{
  if (!lazy protocol witness table cache variable for type UniqueID and conformance UniqueID)
  {
    swift_getWitnessTable(protocol conformance descriptor for UniqueID, &type metadata for UniqueID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UniqueID and conformance UniqueID);
  }
}

void lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout()
{
  if (!lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ZStackLayout, &type metadata for _ZStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ZStackLayout, &type metadata for _ZStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerShapeKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerShapeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerShapeKey>, &type metadata for ContainerShapeKey, &protocol witness table for ContainerShapeKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerShapeKey> and conformance EnvironmentPropertyKey<A>);
  }
}

BOOL protocol witness for DynamicPropertyBox.update(property:phase:) in conformance Namespace.Box(uint64_t *a1)
{
  v3 = *v1;
  v4 = *v1;
  if (!*v1)
  {
    v4 = AGMakeUniqueID();
    *v1 = v4;
  }

  *a1 = v4;
  return v3 == 0;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _PaddingLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t type metadata completion function for HStack(uint64_t a1)
{
  result = type metadata accessor for _VariadicView.Tree(319, &type metadata for _HStackLayout, *(a1 + 16), &protocol witness table for _HStackLayout);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t assignWithTake for _ViewListOutputs.Views(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 40);
    if (v3 >= 2)
    {
      v3 = *result + 2;
    }

    v4 = result;
    if (v3 == 1)
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(result);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    result = v4;
    if (v5 == 1)
    {
      *v4 = *a2;
    }

    else
    {
      LOBYTE(v5) = 0;
      v6 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v6;
      *(v4 + 32) = *(a2 + 32);
    }

    *(v4 + 40) = v5;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _FlexFrameLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _FrameLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t destroy for ForEachState.ItemList.WrappedList(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

void type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t static _ViewListOutputs.unaryViewList<A>(viewType:inputs:body:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v44[1] = *(a1 + 16);
  v44[2] = v10;
  v44[0] = *a1;
  v11 = WORD2(v10);
  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for UnaryElements<BodyUnaryViewGenerator>, &type metadata for BodyUnaryViewGenerator, &protocol witness table for BodyUnaryViewGenerator, type metadata accessor for UnaryElements);
  v43[3] = v12;
  v43[4] = &protocol witness table for UnaryElements<A>;
  v13 = swift_allocObject();
  v43[0] = v13;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  v14 = *(a1 + 16);
  *(v13 + 40) = *a1;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a1 + 32);
  if ((v11 & 0x100) != 0)
  {
    v18 = *&v44[0];
    swift_retain_n();
    outlined init with copy of _GraphInputs(v44, v33);
    v19 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v18);
    Attribute = AGWeakAttributeGetAttribute();
    v16 = *MEMORY[0x1E698D3F8];
    v17 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v15 = 0;
    }

    else
    {
      v15 = v19;
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _GraphInputs(v44, v33);
    v15 = 0;
    v16 = *MEMORY[0x1E698D3F8];
    v17 = 1;
  }

  v21 = *(a1 + 64);
  if (v21 != v16)
  {
    goto LABEL_13;
  }

  v22 = !v17;
  if ((*(a1 + 56) & 3) == 1)
  {
    v22 = 1;
  }

  if (v22 & 1) != 0 || (v23 = *(a1 + 128), v23 != 255) && ((v23 & 1) != 0 || (*(a1 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v43, v32);
    v24 = *(a1 + 48);
    v25 = (*(a1 + 56) & 1) != 0 && (*(a1 + 56) & 2) == 0;
    v31 = *(a1 + 112);
    v26 = *(a1 + 128);
    v27 = *(a1 + 72);
    v28 = *(a1 + 80);
    if (v21 == v16)
    {
      v21 = v16;
    }

    outlined init with take of AnyTrackedValue(v32, v33);
    v34 = v24;
    v35 = v25;
    v36 = v15;
    v37 = v17;
    v38 = v31;
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v42 = v21;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v29 = Attribute.init<A>(body:value:flags:update:)();

    outlined destroy of BaseViewList.Init(v33);
    *a5 = v29;
    *(a5 + 8) = 0;
    *(a5 + 40) = 1;
  }

  else
  {

    outlined init with copy of AnyTrackedValue(v43, a5);
    *(a5 + 40) = 0;
    v24 = *(a1 + 48);
  }

  *(a5 + 48) = v24 + 1;
  *(a5 + 56) = 1;
  *(a5 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_18D04FA4C()
{

  return swift_deallocObject();
}

uint64_t static _VariadicView.Tree<>._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  outlined init with copy of _ViewListInputs(a2, v19);
  v11 = *(a5 + 8);
  v12 = (*(v11 + 8))(a3, v11);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(v19, v12);

  v18[1] = v10;
  v13 = type metadata accessor for _VariadicView.Tree(255, a3, a4, v11);
  type metadata accessor for _GraphValue(0, v13, v14, v15);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _VariadicView.Tree<>._makeView(view:inputs:), a3, v18);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = a6;
  *(v16 + 48) = v10;
  (*(a5 + 40))(v18, v19, partial apply for closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:), v16, a3, a5);

  return outlined destroy of _ViewListInputs(v19);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectContainerModifier@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  if (_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19UnaryGlassContainer33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Ttg5())
  {
    v10 = AGCreateWeakAttribute();
    v11 = v10;
    v12 = HIDWORD(v10);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 20) = v12;
    *(v13 + 24) = a3;
    *(v13 + 32) = a4;

    _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA28GlassEffectContainerModifier33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Tt0t3g5(a2, _s7SwiftUI12ViewModifierPAAE09makeUnaryC4List8modifier6inputs4bodyAA01_cG7OutputsVAA11_GraphValueVyxG_AA01_cG6InputsVAiA01_L0V_ANtctFZAA01_cK0VAA01_cN0VcfU_AA020GlassEffectContainerD033_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Tt2G5TA, v13, a5);
  }

  else
  {
    a3();
    return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v9, a2);
  }
}

uint64_t sub_18D04FD38()
{

  return swift_deallocObject();
}

uint64_t specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(uint64_t a1, __int128 *a2)
{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectContainerModifier, &protocol witness table for GlassEffectContainerModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _FlexFrameLayout, &protocol witness table for _FlexFrameLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _FrameLayout, &protocol witness table for _FrameLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _PaddingLayout, &protocol witness table for _PaddingLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _AppearanceActionModifier, &protocol witness table for _AppearanceActionModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectModifier, &protocol witness table for GlassEffectModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectIDModifier, &protocol witness table for GlassEffectIDModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectGroupModifier, &protocol witness table for GlassEffectGroupModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectTransitionModifier, &protocol witness table for GlassEffectTransitionModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _SafeAreaRegionsIgnoringLayout, &protocol witness table for _SafeAreaRegionsIgnoringLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _AspectRatioLayout, &protocol witness table for _AspectRatioLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _CompositingGroupEffect, &protocol witness table for _CompositingGroupEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ScaleEffect, &protocol witness table for _ScaleEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _AllowsHitTestingModifier, &protocol witness table for _AllowsHitTestingModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BlurEffect, &protocol witness table for _BlurEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _OffsetEffect, &protocol witness table for _OffsetEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _FixedSizeLayout, &protocol witness table for _FixedSizeLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ScrollPhaseStateConfigurationModifier, &protocol witness table for ScrollPhaseStateConfigurationModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for LazyContainerModifier, &protocol witness table for LazyContainerModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for LazyContainerContentModifier, &protocol witness table for LazyContainerContentModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ResetScrollInputsModifier, &protocol witness table for ResetScrollInputsModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _SafeAreaIgnoringLayout, &protocol witness table for _SafeAreaIgnoringLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ScrapeableAttachmentViewModifier, &protocol witness table for ScrapeableAttachmentViewModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _AlignmentWritingModifier, &protocol witness table for _AlignmentWritingModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BlendModeEffect, &protocol witness table for _BlendModeEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for TapGestureModifier, &protocol witness table for TapGestureModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _RotationEffect, &protocol witness table for _RotationEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for OpacityRendererEffect, &protocol witness table for OpacityRendererEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _GeometryGroupEffect, &protocol witness table for _GeometryGroupEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _DrawingGroupEffect, &protocol witness table for _DrawingGroupEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ShadowEffect._Resolved, &protocol witness table for _ShadowEffect._Resolved);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, type metadata accessor for ReferenceDateModifier, &protocol witness table for ReferenceDateModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ForegroundLayerViewModifier, &protocol witness table for _ForegroundLayerViewModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ContentTransitionModifier, &protocol witness table for _ContentTransitionModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for PrivacyRedactionViewModifier, &protocol witness table for PrivacyRedactionViewModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ResetDeltaModifier, &protocol witness table for ResetDeltaModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for IgnoresAutomaticPaddingLayout, &protocol witness table for IgnoresAutomaticPaddingLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for SpacingLayout, &protocol witness table for SpacingLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for CAFilterEffect, &protocol witness table for CAFilterEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for MoveTransition.MoveLayout, &protocol witness table for MoveTransition.MoveLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ScalePulseEffect, &protocol witness table for ScalePulseEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for FlexStateModifier, &protocol witness table for FlexStateModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for HiddenForReuseEffect, &protocol witness table for HiddenForReuseEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ConcentricPaddingLayout, &protocol witness table for ConcentricPaddingLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GraphicsBlendModeEffect, &protocol witness table for GraphicsBlendModeEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for HiddenForLayoutModifier, &protocol witness table for HiddenForLayoutModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectHiddenModifier, &protocol witness table for GlassEffectHiddenModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectZIndexModifier, &protocol witness table for GlassEffectZIndexModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ViewListArchivedAnimation.Effect, &protocol witness table for ViewListArchivedAnimation.Effect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassAppearanceScaleEffect, &protocol witness table for GlassAppearanceScaleEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ContainerCornerOffsetLayout, &protocol witness table for ContainerCornerOffsetLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &protocol witness table for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for AutomaticPaddingViewModifier, &protocol witness table for AutomaticPaddingViewModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectContainerModifier, &protocol witness table for GlassEffectContainerModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for EnableLegacyScrollEdgeEffectTag, &protocol witness table for EnableLegacyScrollEdgeEffectTag);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectPlatformItemModifier, &protocol witness table for GlassEffectPlatformItemModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassContainerTintConfigModifier, &protocol witness table for GlassContainerTintConfigModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEffectBackdropProxyModifier, &protocol witness table for GlassEffectBackdropProxyModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for VerticalStackOrientationModifier, &protocol witness table for VerticalStackOrientationModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for DisableAccessibilityNodesModifier, &protocol witness table for DisableAccessibilityNodesModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GlassEntryFlexInteractionModifier, &protocol witness table for GlassEntryFlexInteractionModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for PreferTextLayoutManagerInputModifier, &protocol witness table for PreferTextLayoutManagerInputModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ContentCaptureProtectionPreferenceWriter, &protocol witness table for ContentCaptureProtectionPreferenceWriter);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for LayoutPriorityLayout, &protocol witness table for LayoutPriorityLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _TransformEffect, &protocol witness table for _TransformEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, type metadata accessor for _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>, &protocol witness table for _AnchorWritingModifier<A, B>);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for VariableBlurStyle, &protocol witness table for VariableBlurStyle);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>, &protocol witness table for _ForegroundStyleModifier2<A, B>);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BackdropGroupEffect2, &protocol witness table for _BackdropGroupEffect2);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GraphicsFilter, &protocol witness table for GraphicsFilter);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ContrastEffect, &protocol witness table for _ContrastEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _PositionLayout, &protocol witness table for _PositionLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _AlignmentLayout, &protocol witness table for _AlignmentLayout);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _GrayscaleEffect, &protocol witness table for _GrayscaleEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for GraphicsBlendMode, &protocol witness table for GraphicsBlendMode);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BrightnessEffect, &protocol witness table for _BrightnessEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _Rotation3DEffect, &protocol witness table for _Rotation3DEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _SaturationEffect, &protocol witness table for _SaturationEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ColorInvertEffect, &protocol witness table for _ColorInvertEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ColorMatrixEffect, &protocol witness table for _ColorMatrixEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _HueRotationEffect, &protocol witness table for _HueRotationEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ShaderFilterEffect, &protocol witness table for _ShaderFilterEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for LuminanceCurveEffect, &protocol witness table for LuminanceCurveEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BackdropGroupEffect, &protocol witness table for _BackdropGroupEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ColorMultiplyEffect._Resolved, &protocol witness table for _ColorMultiplyEffect._Resolved);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _AlphaThresholdEffect._Resolved, &protocol witness table for _AlphaThresholdEffect._Resolved);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ColorMonochromeEffect._Resolved, &protocol witness table for _ColorMonochromeEffect._Resolved);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for ContentTransitionEffect, &protocol witness table for ContentTransitionEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ContentTransitionGroup, &protocol witness table for _ContentTransitionGroup);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _LuminanceToAlphaEffect, &protocol witness table for _LuminanceToAlphaEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _SafeAreaInsetsModifier, &protocol witness table for _SafeAreaInsetsModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ExtendedBlendModeEffect, &protocol witness table for _ExtendedBlendModeEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ForegroundColorModifier, &protocol witness table for _ForegroundColorModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BackdropGroupEffect_temp, &protocol witness table for _BackdropGroupEffect_temp);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for MayNotInsertCALayersEffect, &protocol witness table for MayNotInsertCALayersEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _BackdropGroupEffect_temp2, &protocol witness table for _BackdropGroupEffect_temp2);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _PremultipliedColorMatrixEffect, &protocol witness table for _PremultipliedColorMatrixEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ForegroundLayerColorMatrixEffect, &protocol witness table for _ForegroundLayerColorMatrixEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ForegroundLayerLevelViewModifier, &protocol witness table for _ForegroundLayerLevelViewModifier);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for _ForegroundLayerLevelColorMatrixEffect, &protocol witness table for _ForegroundLayerLevelColorMatrixEffect);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, &type metadata for Shader.ResolvedShader, &protocol witness table for Shader.ResolvedShader);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>, &protocol witness table for _InsetViewModifier<A>);
}

{
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(a1, a2, type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>, &protocol witness table for _OverlayPreferenceModifier<A, B>);
}

uint64_t type metadata completion function for _GlassEffectContainer(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

ValueMetadata *type metadata accessor for GlassEffectContainerModifier()
{
  return &type metadata for GlassEffectContainerModifier;
}

{
  return &type metadata for GlassEffectContainerModifier;
}

double sub_18D04FEA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for GlassEffectContainerModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for GlassEffectContainerModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v16 = HIDWORD(v14);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = v15;
  *(v17 + 36) = v16;
  *(v17 + 40) = v7;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;

  static _ViewListOutputs.unaryViewList<A>(viewType:inputs:body:)(a2, partial apply for closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:), v17, a5, a7);
}

uint64_t sub_18D04FFFC()
{

  return swift_deallocObject();
}

uint64_t closure #1 in static _VariadicView.Tree<>._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[2] = type metadata accessor for _VariadicView.Tree(0, a2, a3, *(a4 + 8));
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

void type metadata accessor for Range<Int>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t type metadata completion function for UnaryElements(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for UnaryElements(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 48 > 0x18)
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
    *(v10 + 16) = *(v11 + 16);
    *(v10 + 24) = *(v11 + 24);
    *(v10 + 28) = *(v11 + 28);
    *(v10 + 32) = *(v11 + 32);
    *(v10 + 36) = *(v11 + 36);
    *(v10 + 40) = *(v11 + 40);
  }

  return v3;
}

uint64_t initializeWithCopy for _ViewListOutputs(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1, a2);
  }

  *(a1 + 40) = v4;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t closure #1 in closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for _VariadicView.Tree(0, a2, a3, *(a4 + 8));
  v10 = *(v9 + 44);
  v14[2] = v9;
  v14[3] = a3;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, a6, v14, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v14[5];
}

uint64_t TypeConformance<>.visitType<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

uint64_t static MultiViewModifier._makeViewList(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(a6 + 8);
  a3();
  v11 = v8;
  return _ViewListOutputs.multiModifier<A>(_:inputs:)(&v11, a2, a5, v9);
}

void instantiation function for generic protocol witness table for Capsule(uint64_t a1)
{
  lazy protocol witness table accessor for type Capsule and conformance Capsule();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Capsule and conformance Capsule();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Capsule and conformance Capsule();
  *(a1 + 8) = v2;
}

void lazy protocol witness table accessor for type Capsule and conformance Capsule()
{
  if (!lazy protocol witness table cache variable for type Capsule and conformance Capsule)
  {
    swift_getWitnessTable(protocol conformance descriptor for Capsule, &type metadata for Capsule, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Capsule and conformance Capsule);
  }
}

{
  if (!lazy protocol witness table cache variable for type Capsule and conformance Capsule)
  {
    swift_getWitnessTable(protocol conformance descriptor for Capsule, &type metadata for Capsule, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Capsule and conformance Capsule);
  }
}

{
  if (!lazy protocol witness table cache variable for type Capsule and conformance Capsule)
  {
    swift_getWitnessTable(protocol conformance descriptor for Capsule, &type metadata for Capsule, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Capsule and conformance Capsule);
  }
}

void lazy protocol witness table accessor for type AnimatableFrameAttribute and conformance AnimatableFrameAttribute()
{
  if (!lazy protocol witness table cache variable for type AnimatableFrameAttribute and conformance AnimatableFrameAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for AnimatableFrameAttribute, &type metadata for AnimatableFrameAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AnimatableFrameAttribute and conformance AnimatableFrameAttribute);
  }
}

uint64_t initializeWithCopy for AnimatableFrameAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);

  return a1;
}

unint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance RBTransitionEvents@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (HIDWORD(result))
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  *(a2 + 4) = HIDWORD(result) != 0;
  return result;
}

uint64_t type metadata completion function for ConcentricEdgePaddingModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  v5 = a3;
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 9);
  if ((v8 & 0x22) != 0)
  {
    v9 = *(a2 + 2);
    v10 = a2[1];
    v57 = *a2;
    v58 = v10;
    v11 = *(a2 + 8);
    v55 = *(a2 + 40);
    v56 = *(a2 + 7);
    v44 = *(a2 + 17);
    v12 = *(a2 + 76);
    v37 = a1;
    v36 = v9;
    if ((v8 & 0x20) != 0)
    {
      v42 = v11;
      v20 = a1;
      swift_beginAccess();
      v21 = *MEMORY[0x1E698D3F8];
      *&v52[0] = __PAIR64__(*(v9 + 16), v20);
      DWORD2(v52[0]) = v21;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      outlined init with copy of _ViewInputs(a2, v59);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>();
      v22 = Attribute.init<A>(body:value:flags:update:)();
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v23 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v24 = specialized CachedEnvironment.attribute<A>(id:_:)(v23, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      swift_endAccess();
      v25 = *(v9 + 16);
      v26 = *(a2 + 18);
      v27 = *(a2 + 19);
      *v59 = v22;
      *&v59[4] = v24;
      *&v59[12] = vrev64_s32(*(a2 + 60));
      *&v59[8] = v26;
      *&v59[20] = v25;
      *&v59[24] = v21;
      *&v59[28] = v27;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
      lazy protocol witness table accessor for type UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v15 = AGGraphCreateOffsetAttribute2();
      v11 = v42 | 0x18;
      v16 = v8 | 2;
      v5 = a3;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 18);
      v14 = *(a2 + 16);
      outlined init with copy of _ViewInputs(a2, v59);
      v15 = v14;
      v16 = v8;
    }

    v52[0] = v57;
    v52[1] = v58;
    v43 = v11;
    *&v53[0] = __PAIR64__(v16, v11);
    v38 = v16;
    v39 = v15;
    *(v53 + 8) = v55;
    *(&v53[1] + 1) = v56;
    *&v54[0] = __PAIR64__(v44, v15);
    v41 = OffsetAttribute2;
    DWORD2(v54[0]) = OffsetAttribute2;
    *(v54 + 12) = v12;
    v50[0] = v53[0];
    v50[1] = v53[1];
    v51[0] = v54[0];
    LODWORD(v51[1]) = HIDWORD(v12);
    v48 = v57;
    v49 = v58;
    v28 = outlined init with copy of _ViewInputs(v52, v59);
    v5(&v45, v28, &v48);
    v60 = v50[0];
    v61 = v50[1];
    v62 = v51[0];
    v63 = v51[1];
    *v59 = v48;
    *&v59[16] = v49;
    v29 = outlined destroy of _ViewInputs(v59);
    v30 = v45;
    v32 = v46;
    v31 = v47;
    if ((v8 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      MEMORY[0x1EEE9AC00](v33);
      v34 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v34);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
      MEMORY[0x1EEE9AC00](v35);
      AGGraphMutateAttribute();
    }

    if ((v8 & 2) != 0)
    {
      swift_beginAccess();
      *&v48 = __PAIR64__(*(v36 + 16), v37);
      DWORD2(v48) = v31;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>();
      v31 = Attribute.init<A>(body:value:flags:update:)();
      v32 |= 0x80u;
    }

    v48 = v57;
    v49 = v58;
    *&v50[0] = __PAIR64__(v38, v43);
    *(v50 + 8) = v55;
    *(&v50[1] + 1) = v56;
    *&v51[0] = __PAIR64__(v44, v39);
    DWORD2(v51[0]) = v41;
    *(v51 + 12) = v12;
    result = outlined destroy of _ViewInputs(&v48);
    *a5 = v30;
    *(a5 + 8) = v32;
    *(a5 + 12) = v31;
  }

  else
  {
    v17 = a2[3];
    v60 = a2[2];
    v61 = v17;
    v62 = a2[4];
    v63 = *(a2 + 20);
    v18 = a2[1];
    *v59 = *a2;
    *&v59[16] = v18;
    return (a3)(a1, v59);
  }

  return result;
}

{
  v5 = a3;
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 9);
  if ((v8 & 0x22) != 0)
  {
    v9 = *(a2 + 2);
    v10 = a2[1];
    v57 = *a2;
    v58 = v10;
    v11 = *(a2 + 8);
    v55 = *(a2 + 40);
    v56 = *(a2 + 7);
    v44 = *(a2 + 17);
    v12 = *(a2 + 76);
    v37 = a1;
    v36 = v9;
    if ((v8 & 0x20) != 0)
    {
      v42 = v11;
      v20 = a1;
      swift_beginAccess();
      v21 = *MEMORY[0x1E698D3F8];
      *&v52[0] = __PAIR64__(*(v9 + 16), v20);
      DWORD2(v52[0]) = v21;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      outlined init with copy of _ViewInputs(a2, v59);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>();
      v22 = Attribute.init<A>(body:value:flags:update:)();
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v23 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v24 = specialized CachedEnvironment.attribute<A>(id:_:)(v23, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      swift_endAccess();
      v25 = *(v9 + 16);
      v26 = *(a2 + 18);
      v27 = *(a2 + 19);
      *v59 = v22;
      *&v59[4] = v24;
      *&v59[12] = vrev64_s32(*(a2 + 60));
      *&v59[8] = v26;
      *&v59[20] = v25;
      *&v59[24] = v21;
      *&v59[28] = v27;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
      lazy protocol witness table accessor for type UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v15 = AGGraphCreateOffsetAttribute2();
      v11 = v42 | 0x18;
      v16 = v8 | 2;
      v5 = a3;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 18);
      v14 = *(a2 + 16);
      outlined init with copy of _ViewInputs(a2, v59);
      v15 = v14;
      v16 = v8;
    }

    v52[0] = v57;
    v52[1] = v58;
    v43 = v11;
    *&v53[0] = __PAIR64__(v16, v11);
    v38 = v16;
    v39 = v15;
    *(v53 + 8) = v55;
    *(&v53[1] + 1) = v56;
    *&v54[0] = __PAIR64__(v44, v15);
    v41 = OffsetAttribute2;
    DWORD2(v54[0]) = OffsetAttribute2;
    *(v54 + 12) = v12;
    v50[0] = v53[0];
    v50[1] = v53[1];
    v51[0] = v54[0];
    LODWORD(v51[1]) = HIDWORD(v12);
    v48 = v57;
    v49 = v58;
    v28 = outlined init with copy of _ViewInputs(v52, v59);
    v5(&v45, v28, &v48);
    v60 = v50[0];
    v61 = v50[1];
    v62 = v51[0];
    v63 = v51[1];
    *v59 = v48;
    *&v59[16] = v49;
    v29 = outlined destroy of _ViewInputs(v59);
    v30 = v45;
    v32 = v46;
    v31 = v47;
    if ((v8 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      MEMORY[0x1EEE9AC00](v33);
      v34 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v34);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
      MEMORY[0x1EEE9AC00](v35);
      AGGraphMutateAttribute();
    }

    if ((v8 & 2) != 0)
    {
      swift_beginAccess();
      *&v48 = __PAIR64__(*(v36 + 16), v37);
      DWORD2(v48) = v31;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>();
      v31 = Attribute.init<A>(body:value:flags:update:)();
      v32 |= 0x80u;
    }

    v48 = v57;
    v49 = v58;
    *&v50[0] = __PAIR64__(v38, v43);
    *(v50 + 8) = v55;
    *(&v50[1] + 1) = v56;
    *&v51[0] = __PAIR64__(v44, v39);
    DWORD2(v51[0]) = v41;
    *(v51 + 12) = v12;
    result = outlined destroy of _ViewInputs(&v48);
    *a5 = v30;
    *(a5 + 8) = v32;
    *(a5 + 12) = v31;
  }

  else
  {
    v17 = a2[3];
    v60 = a2[2];
    v61 = v17;
    v62 = a2[4];
    v63 = *(a2 + 20);
    v18 = a2[1];
    *v59 = *a2;
    *&v59[16] = v18;
    return (a3)(a1, v59);
  }

  return result;
}

{
  v5 = a3;
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 9);
  if ((v8 & 0x22) != 0)
  {
    v9 = *(a2 + 2);
    v10 = a2[1];
    v57 = *a2;
    v58 = v10;
    v11 = *(a2 + 8);
    v55 = *(a2 + 40);
    v56 = *(a2 + 7);
    v44 = *(a2 + 17);
    v12 = *(a2 + 76);
    v37 = a1;
    v36 = v9;
    if ((v8 & 0x20) != 0)
    {
      v42 = v11;
      v20 = a1;
      swift_beginAccess();
      v21 = *MEMORY[0x1E698D3F8];
      *&v52[0] = __PAIR64__(*(v9 + 16), v20);
      DWORD2(v52[0]) = v21;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      outlined init with copy of _ViewInputs(a2, v59);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareLayoutComputer<A>();
      v22 = Attribute.init<A>(body:value:flags:update:)();
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v23 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v24 = specialized CachedEnvironment.attribute<A>(id:_:)(v23, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      swift_endAccess();
      v25 = *(v9 + 16);
      v26 = *(a2 + 18);
      v27 = *(a2 + 19);
      *v59 = v22;
      *&v59[4] = v24;
      *&v59[12] = vrev64_s32(*(a2 + 60));
      *&v59[8] = v26;
      *&v59[20] = v25;
      *&v59[24] = v21;
      *&v59[28] = v27;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
      lazy protocol witness table accessor for type UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareChildGeometry<A>();
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v15 = AGGraphCreateOffsetAttribute2();
      v11 = v42 | 0x18;
      v16 = v8 | 2;
      v5 = a3;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 18);
      v14 = *(a2 + 16);
      outlined init with copy of _ViewInputs(a2, v59);
      v15 = v14;
      v16 = v8;
    }

    v52[0] = v57;
    v52[1] = v58;
    v43 = v11;
    *&v53[0] = __PAIR64__(v16, v11);
    v38 = v16;
    v39 = v15;
    *(v53 + 8) = v55;
    *(&v53[1] + 1) = v56;
    *&v54[0] = __PAIR64__(v44, v15);
    v41 = OffsetAttribute2;
    DWORD2(v54[0]) = OffsetAttribute2;
    *(v54 + 12) = v12;
    v50[0] = v53[0];
    v50[1] = v53[1];
    v51[0] = v54[0];
    LODWORD(v51[1]) = HIDWORD(v12);
    v48 = v57;
    v49 = v58;
    v28 = outlined init with copy of _ViewInputs(v52, v59);
    v5(&v45, v28, &v48);
    v60 = v50[0];
    v61 = v50[1];
    v62 = v51[0];
    v63 = v51[1];
    *v59 = v48;
    *&v59[16] = v49;
    v29 = outlined destroy of _ViewInputs(v59);
    v30 = v45;
    v32 = v46;
    v31 = v47;
    if ((v8 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      MEMORY[0x1EEE9AC00](v33);
      v34 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v34);
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
      MEMORY[0x1EEE9AC00](v35);
      AGGraphMutateAttribute();
    }

    if ((v8 & 2) != 0)
    {
      swift_beginAccess();
      *&v48 = __PAIR64__(*(v36 + 16), v37);
      DWORD2(v48) = v31;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
      lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareLayoutComputer<A>();
      v31 = Attribute.init<A>(body:value:flags:update:)();
      v32 |= 0x80u;
    }

    v48 = v57;
    v49 = v58;
    *&v50[0] = __PAIR64__(v38, v43);
    *(v50 + 8) = v55;
    *(&v50[1] + 1) = v56;
    *&v51[0] = __PAIR64__(v44, v39);
    DWORD2(v51[0]) = v41;
    *(v51 + 12) = v12;
    result = outlined destroy of _ViewInputs(&v48);
    *a5 = v30;
    *(a5 + 8) = v32;
    *(a5 + 12) = v31;
  }

  else
  {
    v17 = a2[3];
    v60 = a2[2];
    v61 = v17;
    v62 = a2[4];
    v63 = *(a2 + 20);
    v18 = a2[1];
    *v59 = *a2;
    *&v59[16] = v18;
    return (a3)(a1, v59);
  }

  return result;
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _SafeAreaRegionsIgnoringLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v5, v9, a3, a5);
}

void lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout()
{
  if (!lazy protocol witness table cache variable for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout);
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UnaryPositionAwareLayoutComputer<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for UnaryPositionAwareLayoutComputer<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UnaryPositionAwareChildGeometry<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for UnaryPositionAwareChildGeometry<A>, a1);

  return static AsyncAttribute.flags.getter();
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t *assignWithCopy for _SafeAreaInsetsModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a1 + 1;
  v5 = a2[1];
  if (a1[1] == 1)
  {
    if (v5 != 1)
    {
      *v4 = v5;

      return a1;
    }

    v6 = 1;
  }

  else
  {
    if (v5 != 1)
    {
      *v4 = v5;

      return a1;
    }

    outlined destroy of Color.VibrancyDefinition(a1 + 1);
    v6 = a2[1];
  }

  *v4 = v6;
  return a1;
}

uint64_t type metadata completion function for VStack(uint64_t a1)
{
  result = type metadata accessor for _VariadicView.Tree(319, &type metadata for _VStackLayout, *(a1 + 16), &protocol witness table for _VStackLayout);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *static _VariadicView.Tree<>._makeView(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v53 = *(a2 + 32);
  v54 = v10;
  v12 = *(a2 + 48);
  v55 = *(a2 + 64);
  v13 = *(a2 + 16);
  v52[0] = *a2;
  v52[1] = v13;
  v48 = v53;
  v49 = v12;
  v50 = *(a2 + 64);
  v14 = *a1;
  v56 = *(a2 + 80);
  v51 = *(a2 + 80);
  v46 = v52[0];
  v47 = v11;
  outlined init with copy of _ViewInputs(v52, v44);
  v15 = *(a5 + 8);
  v16 = *(v15 + 8);

  v17 = v16(a3, v15);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v46, v17);

  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v39[1] = v14;
  v18 = type metadata accessor for _VariadicView.Tree(255, a3, a4, v15);
  type metadata accessor for _GraphValue(0, v18, v19, v20);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _VariadicView.Tree<>._makeView(view:inputs:), a3, v39);
  v41 = v51;
  v38 = v51;
  v40[2] = v48;
  v40[3] = v49;
  v40[4] = v50;
  v40[0] = v46;
  v40[1] = v47;
  v35 = v48;
  v36 = v49;
  v37 = v50;
  v33 = v46;
  v34 = v47;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = v14;
  v21 = *(a5 + 32);
  outlined init with copy of _ViewInputs(v40, v44);
  v21(v39, &v33, partial apply for closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:), v23, a3, a5);
  v42[2] = v35;
  v42[3] = v36;
  v42[4] = v37;
  v43 = v38;
  v42[0] = v33;
  v42[1] = v34;
  outlined destroy of _ViewInputs(v42);
  v44[2] = v48;
  v44[3] = v49;
  v44[4] = v50;
  v45 = v51;
  v44[0] = v46;
  v44[1] = v47;
  return outlined destroy of _ViewInputs(v44);
}

void *static VStack._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  v41 = a2[2];
  v42 = v9;
  v43 = a2[4];
  v44 = *(a2 + 20);
  v10 = a2[1];
  v39 = *a2;
  v40 = v10;
  v21 = a3;
  v22 = a4;
  v20[1] = v8;
  v11 = type metadata accessor for VStack(255, a3, a4, a4);
  type metadata accessor for _GraphValue(0, v11, v12, v13);
  v14 = type metadata accessor for _VariadicView.Tree(0, &type metadata for _VStackLayout, a3, &protocol witness table for _VStackLayout);
  _GraphValue.subscript.getter(partial apply for closure #1 in static VStack._makeView(view:inputs:), v14, v20);
  v15 = v20[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v29 = v39;
  v30 = v40;
  v36 = v44;
  v17 = v41;
  LODWORD(v31) = 0;
  v19 = v15;
  v35[0] = v39;
  v35[1] = v40;
  v35[3] = v42;
  v35[4] = v43;
  v35[2] = v31;
  v25 = v31;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v23 = v39;
  v24 = v40;
  outlined init with copy of _ViewInputs(&v39, v37);
  outlined init with copy of _ViewInputs(v35, v37);
  static _VariadicView.Tree<>._makeView(view:inputs:)(&v19, &v23, &type metadata for _VStackLayout, a3, &protocol witness table for _VStackLayout, a4);
  v37[2] = v25;
  v37[3] = v26;
  v37[4] = v27;
  v38 = v28;
  v37[0] = v23;
  v37[1] = v24;
  outlined destroy of _ViewInputs(v37);
  LODWORD(v31) = v17;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v29);
    AGSubgraphEndTreeElement();
  }

  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  return outlined destroy of _ViewInputs(&v23);
}

uint64_t closure #1 in static VStack._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for VStack(0, a2, a3, a4);
  v10 = type metadata accessor for _VariadicView.Tree(0, &type metadata for _VStackLayout, a2, &protocol witness table for _VStackLayout);
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, v10, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11;
}

uint64_t TupleView.MakeList.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  outlined init with copy of _ViewListInputs(v4 + 8, v22);
  if (v22[37])
  {
    specialized _GraphInputs.pushScope<A>(id:)(*(v4 + 144));
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (*(v4 + 160) == 1)
  {
    _GraphValue.init(_:)(OffsetAttribute2, v18);
    static _ViewListOutputs.unaryViewList<A>(view:inputs:)(v22, a3, a4, v21);
  }

  else
  {
    _GraphValue.init(_:)(OffsetAttribute2, v18);
    v9 = LODWORD(v18[0]);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
    }

    v20 = v9;
    (*(a4 + 32))(v21, &v20, v22, a3, a4);
    $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v9, a3, a4);
  }

  outlined init with copy of _ViewListOutputs(v21, v18);
  v10 = *(v4 + 168);
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
  v13 = &v10[72 * v12];
  *(v13 + 2) = v18[0];
  v14 = v18[1];
  v15 = v18[2];
  v16 = v18[3];
  v13[96] = v19;
  *(v13 + 4) = v15;
  *(v13 + 5) = v16;
  *(v13 + 3) = v14;
  *(v5 + 168) = v10;
  *(v5 + 56) = v21[6];
  if (*(v5 + 161) == 1)
  {
    _ViewListInputs.updateContentOffset(outputs:)(v21);
  }

  outlined destroy of _ViewListOutputs(v21);
  return outlined destroy of _ViewListInputs(v22);
}

uint64_t static TupleView._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5(a3, &v23);
  v8 = v23;
  v9 = *(a2 + 56);
  outlined init with copy of _ViewListInputs(a2, v22);
  LODWORD(v23) = v7;
  outlined init with take of _ViewListInputs(v22, v24);
  v26 = 0;
  v27 = 0;
  v28 = (v9 & 0x200) != 0;
  v29 = BYTE2(v9) & 1;
  v30 = MEMORY[0x1E69E7CC0];
  if ((v9 & 0x200) != 0 && (v25 & 0x200) != 0)
  {
    v25 &= ~0x200uLL;
  }

  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = (v8 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v11 = (v11 + 24);
      v26 = v12;
      v27 = AGTupleElementOffset();
      v22[0] = v13;
      List = type metadata accessor for TupleView.MakeList(0, a3, v14, v15);
      TypeConformance<>.visitType<A>(visitor:)(&v23, List, &protocol witness table for TupleView<A>.MakeList);
      --v10;
    }

    while (v10);
  }

  outlined init with copy of _ViewListInputs(v24, v22);

  static _ViewListOutputs.concat(_:inputs:)(v17, v22, a4);

  outlined destroy of _ViewListInputs(v22);
  v20 = type metadata accessor for TupleView.MakeList(0, a3, v18, v19);
  return (*(*(v20 - 8) + 8))(&v23, v20);
}

uint64_t closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:)(uint64_t a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  v35 = a2[2];
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v33, *&v21[0]);
  if (v13)
  {
    v14 = *(v13 + 72);
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1EEE9AC00](v13);
  v32[1] = a3;
  v15 = type metadata accessor for _VariadicView.Tree(255, a4, a5, *(a6 + 8));
  type metadata accessor for _GraphValue(0, v15, v16, v17);
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static _VariadicView.Tree<>._makeView(view:inputs:), a5, v32);
  v18 = v32[0];
  v24 = *MEMORY[0x1E698D3F8];
  v25 = MEMORY[0x1E69E7CD0];
  v26 = 0;
  v27 = 0;
  v28 = 0;
  swift_weakInit();
  v29 = 0;
  v30 = 0;
  v31 = -1;
  v21[0] = v33;
  v21[1] = v34;
  v21[2] = v35;
  v22 = 0;
  v23 = v14;
  if (AGSubgraphShouldRecordTree())
  {
    outlined init with copy of _GraphInputs(&v33, v20);
    AGSubgraphBeginTreeElement();
  }

  else
  {
    outlined init with copy of _GraphInputs(&v33, v20);
  }

  v20[0] = v18;
  (*(a7 + 32))(v20, v21, a5, a7);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v18, a5, a7);
  return outlined destroy of _ViewListInputs(v21);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 24 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 2);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[4 * v9])
    {
      memmove(v14, v15, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 4 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {

    return a6(v14, a2, a1, v24);
  }
}

{
  v9 = v6;
  v13 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = result;
      a4();
      result = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 4 * result) = a1;
  }

  else
  {

    return a6(result, a2, a1, v24);
  }

  return result;
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static ViewDescriptor.typeCache;
  if (*(static ViewDescriptor.typeCache + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(v4[7] + 8 * v5);
  }

  else
  {
    _s7SwiftUI20TupleTypeDescriptionVyACyxGSo07AGTupleD0acfCAA22StyleContextDescriptorV_Tt1g5Tm(a1, _viewProtocolDescriptor, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), v11);
    v8 = v11[0];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = static ViewDescriptor.typeCache;
    static ViewDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a1, isUniquelyReferenced_nonNull_native);
    static ViewDescriptor.typeCache = v10;
    result = swift_endAccess();
    *a2 = v8;
  }

  return result;
}

uint64_t _s7SwiftUI20TupleTypeDescriptionVyACyxGSo07AGTupleD0acfCAA22StyleContextDescriptorV_Tt1g5Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AGTupleCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v41 = a4;
    if (result)
    {
      v40 = a3;
      v14 = 0;
      v45 = (v9 + 16);
      v46 = 0x800000018DD790C0;
      v44 = (v9 + 8);
      v15 = MEMORY[0x1E69E7CC0];
      *&v13 = 136446210;
      v42 = v13;
      v47 = result;
      v43 = v8;
      do
      {
        v16 = AGTupleElementType();
        a2();
        v17 = swift_conformsToProtocol();
        if (v17)
        {
          v18 = v17;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = v40(0, *(v15 + 16) + 1, 1, v15);
            v15 = result;
          }

          v20 = *(v15 + 16);
          v19 = *(v15 + 24);
          if (v20 >= v19 >> 1)
          {
            result = v40(v19 > 1, v20 + 1, 1, v15);
            v15 = result;
          }

          *(v15 + 16) = v20 + 1;
          v21 = (v15 + 24 * v20);
          v21[4] = v14;
          v21[5] = v16;
          v21[6] = v18;
        }

        else
        {
          v49 = 0;
          v50 = 0xE000000000000000;
          _StringGuts.grow(_:)(21);

          v48 = v14;
          v49 = 0x65646E6920746120;
          v50 = 0xEA00000000002078;
          v22 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x193ABEDD0](v22);

          MEMORY[0x193ABEDD0](0x2065707974202CLL, 0xE700000000000000);
          v23 = _typeName(_:qualified:)();
          MEMORY[0x193ABEDD0](v23);

          v24 = v49;
          v25 = v50;
          v49 = 0xD000000000000015;
          v50 = v46;
          MEMORY[0x193ABEDD0](v24, v25);

          v26 = v49;
          v27 = v50;
          if (one-time initialization token for unlocatedIssuesLog != -1)
          {
            swift_once();
          }

          v28 = __swift_project_value_buffer(v8, static Log.unlocatedIssuesLog);
          swift_beginAccess();
          (*v45)(v11, v28, v8);

          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = a1;
            v32 = a2;
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v35 = v26;
            v36 = v11;
            v37 = v34;
            v49 = v34;
            *v33 = v42;
            *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v27, &v49);
            _os_log_impl(&dword_18D018000, v29, v30, "%{public}s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v37);
            v38 = v37;
            v11 = v36;
            MEMORY[0x193AC4820](v38, -1, -1);
            v39 = v33;
            a2 = v32;
            a1 = v31;
            v8 = v43;
            MEMORY[0x193AC4820](v39, -1, -1);

            (*v44)(v36, v8);
          }

          else
          {

            (*v44)(v11, v8);
          }
        }

        ++v14;
      }

      while (v47 != v14);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    *v41 = v15;
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(Int, TypeConformance<ViewDescriptor>)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, TypeConformance<ViewDescriptor>)>)
  {
    type metadata accessor for (Int, TypeConformance<StyleContextDescriptor>)(255, &lazy cache variable for type metadata for (Int, TypeConformance<ViewDescriptor>), &lazy cache variable for type metadata for TypeConformance<ViewDescriptor>, &type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, TypeConformance<ViewDescriptor>)>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<StyleContextDescriptor>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    _sSnySiGMaTm_0(255, a3, a4, a5, type metadata accessor for TupleTypeDescription);
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a2;
  v9 = *v6;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<StyleContextDescriptor>>(0, a3, a4, a5, a6);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v34 = v7;
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
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(*(v9 + 56) + 8 * v23);
      if ((v8 & 1) == 0)
      {
      }

      result = MEMORY[0x193AC1170](*(v11 + 40), v24);
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      *(*(v11 + 56) + 8 * v19) = v25;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v8 & 1) == 0)
    {

      v7 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v9 + 32);
    v7 = v34;
    if (v33 >= 64)
    {
      bzero((v9 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_33:
  *v7 = v11;
  return result;
}

uint64_t type metadata completion function for ScrollEdgeEffectTagReceiverModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _TraitWritingModifier(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ForEach(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double DynamicBody.init(accessor:container:phase:links:resetSeed:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, double *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = *a4;
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v22[0] = a6;
  v22[1] = a7;
  v22[2] = a8;
  v22[3] = a10;
  v19 = type metadata accessor for DynamicBody(0, v22);
  *(a9 + v19[13]) = a2;
  *(a9 + v19[14]) = a3;
  v20 = a9 + v19[15];
  *v20 = v18;
  result = a4[1];
  *(v20 + 8) = result;
  *(a9 + v19[16]) = a5;
  return result;
}

void _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v81 = *MEMORY[0x1E69E9840];
  v74 = type metadata accessor for OSSignpostID();
  v6 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  LODWORD(a1) = *a1;
  v12 = *a2;
  LOBYTE(v13) = *(a2 + 16);
  v14 = *v3;
  LODWORD(v15) = *(v3 + 12);
  if (one-time initialization token for linkCreate != -1)
  {
LABEL_72:
    swift_once();
  }

  v16 = byte_1ED53762A;
  if (byte_1ED53762A >= 2u)
  {
    v57 = *(&static Signpost.linkCreate + 1);
    v60 = static Signpost.linkCreate;
    v56 = word_1ED537628;
    v64 = HIBYTE(word_1ED537628);
    if (byte_1ED53762A == 2)
    {
      if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
      {
        return;
      }
    }

    else if ((word_1ED537628 & 0x100) != 0)
    {
      static os_signpost_type_t.event.getter();
      if ((kdebug_is_enabled() & 1) == 0)
      {
        return;
      }

      if (one-time initialization token for _signpostLog != -1)
      {
LABEL_75:
        swift_once();
      }

      if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
      {
        return;
      }
    }

    else
    {
      static os_signpost_type_t.event.getter();
      if ((kdebug_is_enabled() & 1) == 0)
      {
        return;
      }
    }

    v78 = a3;
    swift_getMetatypeMetadata();
    v55 = String.init<A>(describing:)();
    v59 = v17;
    v54 = specialized static Tracing.libraryName(defining:)();
    v58 = v18;
    v19 = AGGraphGetAttributeGraph();
    Counter = AGGraphGetCounter();

    if ((v13 & 1) == 0)
    {
      v65 = v16;
      v50 = a1;

      if (v15)
      {
        a3 = v60;
        if (v60 == 20)
        {
          v20 = 3;
        }

        else
        {
          v20 = 4;
        }

        if (!v14)
        {
          __break(1u);
          return;
        }

        v21 = 0;
        v63 = v12 + 32;
        v47 = v60 >> 14;
        v48 = bswap32(v60);
        v16 = v48 | v47 & 0x3FFFC;
        v68 = 16 * v20;
        v69 = v20;
        v72 = (v6 + 16);
        v73 = (v6 + 8);
        LODWORD(v6) = 0;
        v49 = xmmword_18DDACAA0;
        v46 = v12;
        v51 = v10;
        v62 = v14;
        v61 = v15;
        v67 = v60;
        do
        {
          v13 = (v14 + v6);
          if (v15 == v21 + 1)
          {
            v6 = 0;
          }

          else
          {
            v6 = (*(v13 + 2) + v6);
          }

          v22 = *(v12 + 16);
          if (v21 == v22)
          {
            break;
          }

          if (v21 >= v22)
          {
            __break(1u);
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

          v66 = v21 + 1;
          a1 = *(v63 + 32 * v21 + 16);
          v23 = static os_signpost_type_t.event.getter();
          if (v65 >= 2)
          {
            v15 = v23;
            if (v65 == 2)
            {
              if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
              {
                goto LABEL_66;
              }
            }

            else
            {
              static os_signpost_type_t.event.getter();
              if (v64)
              {
                if ((kdebug_is_enabled() & 1) == 0)
                {
                  goto LABEL_66;
                }

                if (one-time initialization token for _signpostLog != -1)
                {
                  swift_once();
                }

                if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
                {
                  goto LABEL_66;
                }
              }

              else if ((kdebug_is_enabled() & 1) == 0)
              {
                goto LABEL_66;
              }
            }

            v52 = v6;
            static OSSignpostID.exclusive.getter();
            type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
            v6 = swift_allocObject();
            *(v6 + 16) = v49;
            v24 = _typeName(_:qualified:)();
            v14 = v25;
            v10 = MEMORY[0x1E69E6158];
            *(v6 + 56) = MEMORY[0x1E69E6158];
            lazy protocol witness table accessor for type String and conformance String();
            *(v6 + 32) = v24;
            *(v6 + 40) = v14;
            v26 = MEMORY[0x1E69E6810];
            *(v6 + 96) = MEMORY[0x1E69E6810];
            v27 = MEMORY[0x1E69E6870];
            *(v6 + 64) = v28;
            *(v6 + 72) = v13;
            *(v6 + 136) = v10;
            *(v6 + 144) = v28;
            v29 = v55;
            *(v6 + 104) = v27;
            *(v6 + 112) = v29;
            *(v6 + 120) = v59;
            *(v6 + 176) = v10;
            *(v6 + 184) = v28;
            *(v6 + 152) = v54;
            *(v6 + 160) = v58;
            *(v6 + 216) = MEMORY[0x1E69E6530];
            *(v6 + 224) = MEMORY[0x1E69E65A8];
            *(v6 + 192) = a1;
            *(v6 + 256) = MEMORY[0x1E69E7668];
            *(v6 + 264) = MEMORY[0x1E69E76D0];
            *(v6 + 232) = v50;
            *(v6 + 296) = v26;
            *(v6 + 304) = v27;
            if (Counter < 0)
            {
              goto LABEL_74;
            }

            *(v6 + 272) = Counter;
            v30 = one-time initialization token for _signpostLog;

            if (v30 != -1)
            {
              swift_once();
            }

            v10 = v51;
            if ((v64 & 1) == 0)
            {
              v12 = v15;
              v70 = *v72;
              v31 = v70(v76, v51, v74);
              a1 = 0;
              v77 = 1;
              v71 = v6 + 32;
LABEL_42:
              v75 = &v45;
              MEMORY[0x1EEE9AC00](v31);
              v13 = &v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
              v10 = v13 + 8;
              a3 = v69;
              v33 = v69;
              v34 = v13 + 8;
              do
              {
                *(v34 - 1) = 0;
                *v34 = 0;
                v34 += 16;
                --v33;
              }

              while (v33);
              v14 = v71 + 40 * a1;
              while (1)
              {
                v35 = *(v6 + 16);
                if (a1 == v35)
                {
                  v77 = 0;
LABEL_50:
                  a3 = v67;
                  if (v67 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (v13[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v13[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v13[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (a3 != 20 && v13[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v38 = v74;
                  v39 = *v73;
                  v40 = v76;
                  (*v73)(v76, v74);
                  v41 = __swift_project_value_buffer(v38, static OSSignpostID.continuation);
                  v31 = v70(v40, v41, v38);
                  if ((v77 & 1) == 0)
                  {
                    LODWORD(a1) = v73;
                    v42 = v74;
                    v39(v76, v74);
                    v43 = v51;
                    v39(v51, v42);
                    v10 = v43;

                    v12 = v46;
                    goto LABEL_65;
                  }

                  goto LABEL_42;
                }

                if (a1 >= v35)
                {
                  break;
                }

                ++a1;
                outlined init with copy of AnyTrackedValue(v14, &v78);
                v36 = v79;
                v15 = v80;
                __swift_project_boxed_opaque_existential_1(&v78, v79);
                *(v10 - 1) = CVarArg.kdebugValue(_:)(v16 | v12, v36, v15);
                *v10 = v37 & 1;
                v10 += 16;
                __swift_destroy_boxed_opaque_existential_1(&v78);
                v14 += 40;
                if (!--a3)
                {
                  goto LABEL_50;
                }
              }

              __break(1u);
              goto LABEL_72;
            }

            LOBYTE(v44) = 2;
            os_signpost(_:dso:log:name:signpostID:_:_:)(v15, &dword_18D018000, _signpostLog, v60, v57, v56, v51, "Attached: %{public}@ [ %p ] to %{public}@ (in %{public}@) at offset +%d [%d] (%p)", 81, v44, v6);
            (*v73)(v10, v74);

LABEL_65:
            LODWORD(v6) = v52;
          }

LABEL_66:
          LODWORD(v15) = v61;
          v21 = v66;
          v14 = v62;
        }

        while (v61 != v66 || v6);
      }
    }
  }
}

void one-time initialization function for linkCreate()
{
  *&static Signpost.linkCreate = "LinkCreate";
  *(&static Signpost.linkCreate + 1) = 10;
  word_1ED537628 = 258;
  byte_1ED53762A = 3;
}

uint64_t type metadata completion function for _VariadicView.Tree(uint64_t a1)
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

uint64_t type metadata completion function for SimultaneousGesture(uint64_t a1)
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

void *specialized _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BoxVTable<Text.Measurements.Box>(0, &lazy cache variable for type metadata for BoxVTable<Namespace.Box>, &unk_1F0053BE0, &protocol witness table for Namespace.Box);
  v6 = v5;
  result = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x20);
  *result = v6;
  result[1] = 32;
  result[2] = a1;
  v8 = *v2;
  if (!*v2)
  {
    goto LABEL_15;
  }

  if (result - v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result - v8 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = *(v2 + 3);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v2 + 3) = v11;
  if (a2 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      *(result + 3) = *(result + 3) & 0x80000000 | a2;
      return result;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

{
  type metadata accessor for BoxVTable<Text.Measurements.Box>(0, &lazy cache variable for type metadata for BoxVTable<FullEnvironmentBox>, &type metadata for FullEnvironmentBox, &protocol witness table for FullEnvironmentBox);
  v6 = v5;
  result = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x40);
  *result = v6;
  result[1] = 64;
  v8 = *(a1 + 32);
  v9 = *(a1 + 16);
  *(result + 1) = *a1;
  *(result + 2) = v9;
  result[6] = v8;
  v10 = *v2;
  if (!*v2)
  {
    goto LABEL_15;
  }

  if (result - v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result - v10 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = *(v2 + 3);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v2 + 3) = v13;
  if (a2 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      *(result + 3) = *(result + 3) & 0x80000000 | a2;
      return outlined init with copy of FullEnvironmentBox(a1, v14);
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void type metadata accessor for BoxVTable<Text.Measurements.Box>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for BoxVTable(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of _ViewListOutputs.Views(v4, v38);
  if (v39)
  {
    v8 = v38[0];
    v9 = *(&v38[0] + 1);
    v10 = a2[1];
    v27 = *a2;
    v28 = v10;
    v29 = a2[2];
    type metadata accessor for ModifiedViewList.ListModifier();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = a3;
    *(v11 + 32) = a4;
    outlined init with copy of _GraphInputs(&v27, &v35);
    *(v11 + 40) = AGCreateWeakAttribute();
    v12 = v28;
    *(v11 + 48) = v27;
    *(v11 + 64) = v12;
    *(v11 + 80) = v29;
    LODWORD(v35) = v8;
    *(&v35 + 1) = v11;
    BYTE8(v37) = 1;
    v13 = &v35;
  }

  else
  {
    outlined init with take of AnyTrackedValue(v38, v34);
    outlined init with copy of AnyTrackedValue(v34, v26);
    v14 = a2[1];
    v35 = *a2;
    v36 = v14;
    v37 = a2[2];
    outlined init with copy of AnyTrackedValue(v26, &v27);
    outlined init with copy of _GraphInputs(&v35, v24);
    v15 = AGCreateWeakAttribute();
    v16 = v15;
    v17 = HIDWORD(v15);
    __swift_destroy_boxed_opaque_existential_1(v26);
    *(&v29 + 1) = __PAIR64__(v17, v16);
    *&v30 = a3;
    *(&v30 + 1) = a4;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v24[3] = &type metadata for ModifiedElements;
    v24[4] = &protocol witness table for ModifiedElements;
    v18 = swift_allocObject();
    v24[0] = v18;
    v19 = v30;
    v20 = v32;
    v21 = v33;
    v18[5] = v31;
    v18[6] = v20;
    v18[7] = v21;
    v22 = v28;
    v18[1] = v27;
    v18[2] = v22;
    v18[3] = v29;
    v18[4] = v19;
    __swift_destroy_boxed_opaque_existential_1(v34);
    v25 = 0;
    v13 = v24;
  }

  return outlined assign with take of _ViewListOutputs.Views(v13, v4);
}

uint64_t sub_18D054218()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t initializeWithCopy for _ViewListOutputs.Views(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);

    v4 = 1;
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1);
    v4 = 0;
  }

  *(a1 + 40) = v4;
  return a1;
}

uint64_t destroy for _ViewListInputs(void *a1)
{

  return swift_weakDestroy();
}

uint64_t sub_18D0543E0(uint64_t a1)
{
  result = AGSubgraphShouldRecordTree();
  if (result)
  {

    return AGSubgraphEndTreeElement();
  }

  return result;
}

uint64_t destroy for _ViewListOutputs(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void *specialized static Layout.makeLayoutView(root:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_VStackC0V_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_VStackC0V_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_HStackC0V_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_HStackC0V_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA06HStackC0V_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA06HStackC0V_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA019FlexibleButtonFrameC0V_Tt2t4B5, 2u, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA019FlexibleButtonFrameC0V_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_ZStackC0V_Tt2t4B5, 0x10002u, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_ZStackC0V_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA06ZStackC0V_Tt2t4B5, 0x10002u, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA06ZStackC0V_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA06VStackC0V_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA06VStackC0V_Tt4B5);
}

uint64_t closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = a3;
  v9 = type metadata accessor for ModifiedContent(255, a4, a5, a4);
  type metadata accessor for _GraphValue(0, v9, v10, v11);
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifiedContent<>._makeView(modifier:inputs:body:), a4, v15);
  v12 = v15[0];
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v14 = v12;
  (*(a6 + 32))(&v14, a2, a4, a6);
  return $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v12, a4, a6);
}

uint64_t static View.makeViewList(view:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  static DynamicPropertyCache.fields(of:)(a3, v28);
  v9 = v28[0];
  v8 = v28[1];
  v10 = v29;
  v11 = v30;
  outlined init with copy of _ViewListInputs(a2, v28);
  v19 = v7;
  v20 = v7;
  *&v22 = v9;
  *(&v22 + 1) = v8;
  v23 = v10;
  v24 = v11;
  static View.makeBody(view:inputs:fields:)(&v21, &v25, &v20, v28, &v22, a3, a4);
  v12 = v21;
  v13 = v26;
  v18 = v25;
  v14 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v22) = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v22, v28, AssociatedTypeWitness, AssociatedConformanceWitness);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((v14 & 1) == 0)
  {
    v25 = v18;
    v26 = v13;
    v21 = v19;
    *&v22 = v9;
    *(&v22 + 1) = v8;
    v23 = v10;
    v24 = v11;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v21, &v22, a3);
  }

  outlined destroy of _ViewListInputs(v28);
  return outlined consume of DynamicPropertyCache.Fields.Layout(v9, v8, v10);
}

uint64_t static ModifiedContent<>._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *a1;
  v11 = v20;
  v12 = type metadata accessor for ModifiedContent(255, a3, a4, a4);
  type metadata accessor for _GraphValue(0, v12, v13, v14);
  _GraphValue.subscript.getter(partial apply for closure #1 in static ModifiedContent<>._makeView(view:inputs:), a4, &v19);
  v15 = v19;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = a6;
  *(v16 + 48) = v11;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v18 = v15;
  (*(a6 + 32))(&v18, a2, partial apply for closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v16, a4, a6);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v15, a4, a6);
}

uint64_t closure #1 in static ModifiedContent<>._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for ModifiedContent(0, a2, a3, a4);
  v10 = *(v9 + 36);
  v14[2] = v9;
  v14[3] = a3;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, a6, v14, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v14[5];
}

uint64_t closure #1 in static PointerOffset.of(_:)partial apply@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  return partial apply for closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_8(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for CGPoint(0);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)();
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for Attribute<Transaction>(0, &lazy cache variable for type metadata for UInt32?, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_9(a1, a2);
}

uint64_t closure #1 in static PointerOffset.of(_:)partial apply@<X0>(uint64_t a1@<X0>, void *x8_0@<X8>)
{
  return closure #1 in static PointerOffset.of(_:)(a1, x8_0);
}

{
  type metadata accessor for (regions: SafeAreaRegions, spacing: CGFloat?, edge: Edge, alignmentKey: AlignmentKey)(0);
  return closure #1 in static PointerOffset.of(_:)(a1, x8_0);
}

uint64_t closure #1 in closure #2 in static ModifiedContent<>._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[2] = type metadata accessor for ModifiedContent(0, a2, a3, a4);
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

void *static ModifiedContent<>._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = a2[3];
  v48 = a2[2];
  v49 = v12;
  v50 = a2[4];
  v51 = *(a2 + 20);
  v13 = a2[1];
  v46 = *a2;
  v47 = v13;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v25[1] = v11;
  v14 = type metadata accessor for ModifiedContent(255, a3, a4, a4);
  type metadata accessor for _GraphValue(0, v14, v15, v16);
  _GraphValue.subscript.getter(partial apply for closure #1 in static ModifiedContent<>._makeView(view:inputs:), a4, v25);
  v17 = v25[0];
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = v11;
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
  v20 = v48;
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
  v21 = *(a6 + 24);
  outlined init with copy of _ViewInputs(&v46, v44);
  outlined init with copy of _ViewInputs(v42, v44);
  v21(&v24, &v30, partial apply for closure #2 in static ModifiedContent<>._makeView(view:inputs:), v18, a4, a6);
  v44[2] = v32;
  v44[3] = v33;
  v44[4] = v34;
  v45 = v35;
  v44[0] = v30;
  v44[1] = v31;
  outlined destroy of _ViewInputs(v44);
  LODWORD(v38) = v20;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v36);
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

void *closure #2 in static ModifiedContent<>._makeView(view:inputs:)@<X0>(__int128 *a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = a1[3];
  v44 = a1[2];
  v45 = v10;
  v46 = a1[4];
  v47 = *(a1 + 20);
  v11 = a1[1];
  v42 = *a1;
  v43 = v11;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v21[1] = a2;
  v12 = type metadata accessor for ModifiedContent(255, a3, a4, a3);
  type metadata accessor for _GraphValue(0, v12, v13, v14);
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifiedContent<>._makeView(modifier:inputs:body:), a3, v21);
  v15 = v21[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v34 = v44;
  v35 = v45;
  v36 = v46;
  v37 = v47;
  v32 = v42;
  v33 = v43;
  v17 = v44;
  LODWORD(v34) = 0;
  v20 = v15;
  v38[0] = v42;
  v38[1] = v43;
  v39 = v47;
  v38[3] = v45;
  v38[4] = v46;
  v38[2] = v34;
  v28 = v34;
  v29 = v45;
  v30 = v46;
  v31 = v47;
  v26 = v42;
  v27 = v43;
  v18 = *(a5 + 24);
  outlined init with copy of _ViewInputs(&v42, v40);
  outlined init with copy of _ViewInputs(v38, v40);
  v18(&v20, &v26, a3, a5);
  v40[2] = v28;
  v40[3] = v29;
  v40[4] = v30;
  v41 = v31;
  v40[0] = v26;
  v40[1] = v27;
  outlined destroy of _ViewInputs(v40);
  LODWORD(v34) = v17;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v32);
    AGSubgraphEndTreeElement();
  }

  v28 = v34;
  v29 = v35;
  v30 = v36;
  v31 = v37;
  v26 = v32;
  v27 = v33;
  return outlined destroy of _ViewInputs(&v26);
}

void *protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance _VStackLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
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

void *static View.makeBody(view:inputs:fields:)(_DWORD *a1, uint64_t a2, int *a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  if (AGTypeGetKind() - 2 > 3)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    v20 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v20);

    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v15 = *(a5 + 5);
    v16 = *(a5 + 16);
    v24 = *a3;
    v21 = *a5;
    v22 = v16;
    v23 = v15;
    v17 = type metadata accessor for ViewBodyAccessor(0, a6, a7, v14);
    swift_getWitnessTable(protocol conformance descriptor for ViewBodyAccessor<A>, v17);
    return BodyAccessor.makeBody(container:inputs:fields:)(a1, a2, &v24, a4, &v21, v17, v18);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(Swift::UInt *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<ViewListOptionsInput>, &type metadata for ViewListOptionsInput, &protocol witness table for ViewListOptionsInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for ViewListOptionsInput, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ViewListOptionsInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

void type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t initializeWithCopy for _ViewListInputs(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = a2[5];
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = *(a2 + 16);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 11);

  swift_weakCopyInit();
  *(a1 + 112) = *(a2 + 7);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ArchivedViewInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for InterfaceIdiomInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void AnyInterfaceIdiom.init(idiom:)(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  switch(*a1)
  {
    case 0:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<CarPlayInterfaceIdiom>;
      v4 = &type metadata for CarPlayInterfaceIdiom;
      v5 = &protocol witness table for CarPlayInterfaceIdiom;
      break;
    case 1:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<ClarityUIInterfaceIdiom>;
      v4 = &type metadata for ClarityUIInterfaceIdiom;
      v5 = &protocol witness table for ClarityUIInterfaceIdiom;
      break;
    case 2:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<ComplicationInterfaceIdiom>;
      v4 = &type metadata for ComplicationInterfaceIdiom;
      v5 = &protocol witness table for ComplicationInterfaceIdiom;
      break;
    case 3:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<WidgetInterfaceIdiom>;
      v4 = &type metadata for WidgetInterfaceIdiom;
      v5 = &protocol witness table for WidgetInterfaceIdiom;
      break;
    case 4:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<MacInterfaceIdiom>;
      v4 = &type metadata for MacInterfaceIdiom;
      v5 = &protocol witness table for MacInterfaceIdiom;
      break;
    case 5:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<MacCatalystInterfaceIdiom>;
      v4 = &type metadata for MacCatalystInterfaceIdiom;
      v5 = &protocol witness table for MacCatalystInterfaceIdiom;
      break;
    case 6:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>;
      v4 = &type metadata for PhoneInterfaceIdiom;
      v5 = &protocol witness table for PhoneInterfaceIdiom;
      break;
    case 7:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<PadInterfaceIdiom>;
      v4 = &type metadata for PadInterfaceIdiom;
      v5 = &protocol witness table for PadInterfaceIdiom;
      break;
    case 8:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<TVInterfaceIdiom>;
      v4 = &type metadata for TVInterfaceIdiom;
      v5 = &protocol witness table for TVInterfaceIdiom;
      break;
    case 9:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<TouchBarInterfaceIdiom>;
      v4 = &type metadata for TouchBarInterfaceIdiom;
      v5 = &protocol witness table for TouchBarInterfaceIdiom;
      break;
    case 0xA:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<WatchInterfaceIdiom>;
      v4 = &type metadata for WatchInterfaceIdiom;
      v5 = &protocol witness table for WatchInterfaceIdiom;
      break;
    case 0xB:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<VisionInterfaceIdiom>;
      v4 = &type metadata for VisionInterfaceIdiom;
      v5 = &protocol witness table for VisionInterfaceIdiom;
      break;
    default:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<NoKitInterfaceIdiom>;
      v4 = &type metadata for NoKitInterfaceIdiom;
      v5 = &protocol witness table for NoKitInterfaceIdiom;
      break;
  }

  type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, v3, v4, v5);
  *a2 = v6;
  a2[1] = &protocol witness table for InterfaceIdiomBox<A>;
}

void type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for InterfaceIdiomBox(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA012ComplicationcD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA19InterfaceIdiomInputV_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v6, v11);
  if (!v7 || (result = _s7SwiftUI11PropertyKeyPAASQ5ValueRpzrlE11valuesEqualySbAE_AEtFZAA19InterfaceIdiomInputV_Tt1B5(a2, a3, *(v7 + 72), *(v7 + 80)), (result & 1) == 0))
  {
    v9 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<InterfaceIdiomInput>, &type metadata for InterfaceIdiomInput, &protocol witness table for InterfaceIdiomInput, type metadata accessor for TypedElement);
    v10 = swift_allocObject();
    *(v10 + 72) = a2;
    *(v10 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for InterfaceIdiomInput, 0, v9);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.SavedTransactionKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016SavedTransactionV033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt0B5(a1, v5);
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

    v3 = &static _GraphInputs.SavedTransactionKey.defaultValue;
  }

  return *v3;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016SavedTransactionV033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016SavedTransactionV033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.SavedTransactionKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t CachedEnvironment.animatedSize(for:)(__int128 *a1)
{
  v2 = a1[3];
  v39 = a1[2];
  v40 = v2;
  v41 = a1[4];
  v42 = *(a1 + 20);
  v3 = a1[1];
  v37 = *a1;
  v38 = v3;
  if ((BYTE4(v39) & 0x20) == 0)
  {
    return DWORD2(v41);
  }

  v6 = HIDWORD(v38);
  *v31 = *a1;
  *&v31[12] = *(a1 + 12);
  v7 = a1[3];
  v33 = a1[2];
  v34 = v7;
  v35 = a1[4];
  v8 = *(a1 + 20);
  v32 = HIDWORD(v38);
  v36 = v8;
  v9 = *v31;
  v10 = *&v31[8];
  v11 = *&v31[24];
  outlined init with copy of _ViewInputs(&v37, v26);
  outlined init with copy of _ViewInputs(v31, v26);
  v12 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(v9);
  if (*(v12 + 16))
  {
    v6 = *(v12 + 32);
  }

  outlined destroy of _ViewInputs(v31);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v13 = specialized CachedEnvironment.attribute<A>(id:_:)(static CachedEnvironment.ID.pixelLength, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
  v14 = v13;
  if ((*(v1 + 65) & 1) != 0 || *(v1 + 16) != v35 || *(v1 + 20) != __PAIR64__(v13, DWORD2(v35)) || *(v1 + 28) != v10 || *(v1 + 32) != v6 || *(v1 + 36) != v11)
  {
    *&v26[12] = *(a1 + 12);
    *v26 = *a1;
    v15 = a1[3];
    v27 = a1[2];
    v28 = v15;
    v29 = a1[4];
    v16 = *(a1 + 20);
    *&v26[28] = v6;
    v30 = v16;
    v24[3] = v15;
    v24[4] = v29;
    v25 = v16;
    v24[0] = *v26;
    v24[1] = *&v26[16];
    v24[2] = v27;
    v17 = *v1;
    outlined init with copy of _ViewInputs(v26, v22);
    CachedEnvironment.AnimatedFrame.init(inputs:pixelLength:environment:)(v24, v14, v17, v22);
    LOBYTE(v24[0]) = 0;
    v18 = v22[1];
    *(v1 + 16) = v22[0];
    *(v1 + 32) = v18;
    *(v1 + 48) = v22[2];
    *(v1 + 64) = v23;
    *(v1 + 65) = 0;
  }

  if (*(v1 + 56) == 1)
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    *(v1 + 52) = OffsetAttribute2;
    *(v1 + 56) = 0;
  }

  else
  {
    OffsetAttribute2 = *(v1 + 52);
  }

  *v26 = *a1;
  *&v26[12] = *(a1 + 12);
  v19 = a1[3];
  v27 = a1[2];
  v28 = v19;
  v29 = a1[4];
  v20 = *(a1 + 20);
  *&v26[28] = v6;
  v30 = v20;
  outlined destroy of _ViewInputs(v26);
  return OffsetAttribute2;
}

uint64_t one-time initialization function for pixelLength()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.pixelLength = result;
  return result;
}

uint64_t CachedEnvironment.animatedCGSize(for:)(__int128 *a1)
{
  v2 = a1[3];
  v39 = a1[2];
  v40 = v2;
  v41 = a1[4];
  v42 = *(a1 + 20);
  v3 = a1[1];
  v37 = *a1;
  v38 = v3;
  if ((BYTE4(v39) & 0x20) != 0)
  {
    v6 = HIDWORD(v38);
    *v31 = *a1;
    *&v31[12] = *(a1 + 12);
    v7 = a1[3];
    v33 = a1[2];
    v34 = v7;
    v35 = a1[4];
    v8 = *(a1 + 20);
    v32 = HIDWORD(v38);
    v36 = v8;
    v9 = *v31;
    v10 = *&v31[8];
    v11 = *&v31[24];
    outlined init with copy of _ViewInputs(&v37, v26);
    outlined init with copy of _ViewInputs(v31, v26);
    v12 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(v9);
    if (*(v12 + 16))
    {
      v6 = *(v12 + 32);
    }

    outlined destroy of _ViewInputs(v31);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v13 = specialized CachedEnvironment.attribute<A>(id:_:)(static CachedEnvironment.ID.pixelLength, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
    v14 = v13;
    if ((*(v1 + 65) & 1) != 0 || *(v1 + 16) != v35 || *(v1 + 20) != __PAIR64__(v13, DWORD2(v35)) || *(v1 + 28) != v10 || *(v1 + 32) != v6 || *(v1 + 36) != v11)
    {
      *&v26[12] = *(a1 + 12);
      *v26 = *a1;
      v15 = a1[3];
      v27 = a1[2];
      v28 = v15;
      v29 = a1[4];
      v16 = *(a1 + 20);
      *&v26[28] = v6;
      v30 = v16;
      v24[3] = v15;
      v24[4] = v29;
      v25 = v16;
      v24[0] = *v26;
      v24[1] = *&v26[16];
      v24[2] = v27;
      v17 = *v1;
      outlined init with copy of _ViewInputs(v26, v22);
      CachedEnvironment.AnimatedFrame.init(inputs:pixelLength:environment:)(v24, v14, v17, v22);
      LOBYTE(v24[0]) = 0;
      v18 = v22[1];
      *(v1 + 16) = v22[0];
      *(v1 + 32) = v18;
      *(v1 + 48) = v22[2];
      *(v1 + 64) = v23;
      *(v1 + 65) = 0;
    }

    if (*(v1 + 64) == 1)
    {
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      *(v1 + 60) = OffsetAttribute2;
      *(v1 + 64) = 0;
    }

    else
    {
      OffsetAttribute2 = *(v1 + 60);
    }

    *v26 = *a1;
    *&v26[12] = *(a1 + 12);
    v20 = a1[3];
    v27 = a1[2];
    v28 = v20;
    v29 = a1[4];
    v21 = *(a1 + 20);
    *&v26[28] = v6;
    v30 = v21;
    outlined destroy of _ViewInputs(v26);
    return OffsetAttribute2;
  }

  else
  {

    return AGGraphCreateOffsetAttribute2();
  }
}

void lazy protocol witness table accessor for type _SafeAreaInsetsModifier.Transform and conformance _SafeAreaInsetsModifier.Transform()
{
  if (!lazy protocol witness table cache variable for type _SafeAreaInsetsModifier.Transform and conformance _SafeAreaInsetsModifier.Transform)
  {
    swift_getWitnessTable(protocol conformance descriptor for _SafeAreaInsetsModifier.Transform, &type metadata for _SafeAreaInsetsModifier.Transform, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _SafeAreaInsetsModifier.Transform and conformance _SafeAreaInsetsModifier.Transform);
  }
}

void lazy protocol witness table accessor for type _SafeAreaInsetsModifier.Insets and conformance _SafeAreaInsetsModifier.Insets()
{
  if (!lazy protocol witness table cache variable for type _SafeAreaInsetsModifier.Insets and conformance _SafeAreaInsetsModifier.Insets)
  {
    swift_getWitnessTable(protocol conformance descriptor for _SafeAreaInsetsModifier.Insets, &type metadata for _SafeAreaInsetsModifier.Insets, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _SafeAreaInsetsModifier.Insets and conformance _SafeAreaInsetsModifier.Insets);
  }
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

void *closure #1 in ViewGraph.init<A>(rootViewType:requestedOutputs:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a6;
  v10 = a5;
  v84 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 48);
  v13 = *(a2 + 16);
  v80 = *(a2 + 32);
  v81 = v12;
  v14 = *(a2 + 48);
  v82 = *(a2 + 64);
  v15 = *(a2 + 16);
  v79[0] = *a2;
  v79[1] = v15;
  v16 = *(a2 + 64);
  v76 = v14;
  v77 = v16;
  v74 = v13;
  v75 = v80;
  v83 = *(a2 + 80);
  v17 = *(a2 + 80);
  v73 = v79[0];
  LODWORD(v77) = a3;
  *(&v77 + 4) = __PAIR64__(a4, a3);
  v78 = v17;
  LODWORD(v75) = v80 | 0x18;
  outlined init with copy of _ViewInputs(v79, &v67);
  specialized _ViewInputs.setContainerShape<A>(_:isSystemShape:)(v10, 1);
  v69 = v75;
  v70 = v76;
  v71 = v77;
  v72 = v78;
  v67 = v73;
  v68 = v74;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  outlined init with copy of _ViewInputs(v79, &v62);
  outlined init with copy of _ViewInputs(&v67, &v62);
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v58 = v69;
  v59 = v70;
  v60 = v71;
  v61 = v72;
  v56 = v67;
  v57 = v68;
  v27 = v69;
  LODWORD(v58) = 0;
  v62 = v67;
  v63 = v68;
  v66 = v72;
  *&v64[16] = v70;
  v65 = v71;
  *v64 = v58;
  outlined init with copy of _ViewInputs(&v67, &v51);
  outlined init with copy of _ViewInputs(&v62, &v51);
  v19 = AGMakeUniqueID();
  v49 = v62;
  v50 = v63;
  v20 = *v64;
  v47 = *&v64[4];
  v48 = *&v64[20];
  v31 = v65;
  v21 = v66;
  v32 = DWORD2(v65);
  v22 = *&v64[28];
  *v53 = *v64;
  *&v53[16] = *&v64[16];
  v54 = v65;
  v55 = v66;
  v51 = v62;
  v52 = v63;
  swift_beginAccess();
  outlined init with copy of _ViewInputs(&v62, v45);
  v23 = CachedEnvironment.animatedPosition(for:)(&v51);
  *v53 = *v64;
  *&v53[16] = *&v64[16];
  v54 = v65;
  v55 = v66;
  v51 = v62;
  v52 = v63;
  v24 = CachedEnvironment.animatedSize(for:)(&v51);
  swift_endAccess();
  *&v51 = v19;
  *(&v51 + 1) = __PAIR64__(v23, v22);
  LODWORD(v52) = v24;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _SafeAreaInsetsModifier.Transform and conformance _SafeAreaInsetsModifier.Transform();
  v25 = Attribute.init<A>(body:value:flags:update:)();
  *&v51 = v19;
  *(&v51 + 1) = __PAIR64__(HIDWORD(v65), v9);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _SafeAreaInsetsModifier.Insets and conformance _SafeAreaInsetsModifier.Insets();
  LODWORD(v19) = Attribute.init<A>(body:value:flags:update:)();
  v41[0] = v49;
  v41[1] = v50;
  *&v42[4] = v47;
  *&v42[20] = v48;
  *v42 = v20 | 4;
  *&v42[28] = v25;
  *&v43 = v31;
  *(&v43 + 1) = __PAIR64__(v19, v32);
  v44 = v21;
  v37 = *v42;
  v38 = *&v42[16];
  v39 = v43;
  v40 = v21;
  v35 = v49;
  v36 = v50;
  outlined init with copy of _ViewInputs(v41, &v51);
  specialized closure #1 in closure #1 in ViewGraph.init<A>(rootViewType:requestedOutputs:)(&v35, v79, a1, a7, a8, a9);
  v45[2] = v37;
  v45[3] = v38;
  v45[4] = v39;
  v46 = v40;
  v45[0] = v35;
  v45[1] = v36;
  outlined destroy of _ViewInputs(v45);
  *&v53[20] = v48;
  v51 = v49;
  v52 = v50;
  *&v53[4] = v47;
  *v53 = v20 | 4;
  *&v53[28] = v25;
  *&v54 = v31;
  *(&v54 + 1) = __PAIR64__(v19, v32);
  v55 = v21;
  outlined destroy of _ViewInputs(&v51);
  outlined destroy of _ViewInputs(&v62);
  LODWORD(v58) = v27;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a9, &v56);
    AGSubgraphEndTreeElement();
  }

  outlined destroy of _ViewInputs(v79);
  outlined destroy of _ViewInputs(&v67);
  v33[2] = v58;
  v33[3] = v59;
  v33[4] = v60;
  v34 = v61;
  v33[0] = v56;
  v33[1] = v57;
  outlined destroy of _ViewInputs(v33);
  v37 = v75;
  v38 = v76;
  v39 = v77;
  v40 = v78;
  v35 = v73;
  v36 = v74;
  return outlined destroy of _ViewInputs(&v35);
}

void lazy protocol witness table accessor for type ContainerShapeTransform and conformance ContainerShapeTransform()
{
  if (!lazy protocol witness table cache variable for type ContainerShapeTransform and conformance ContainerShapeTransform)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContainerShapeTransform, &type metadata for ContainerShapeTransform, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContainerShapeTransform and conformance ContainerShapeTransform);
  }
}

void *specialized closure #1 in closure #1 in ViewGraph.init<A>(rootViewType:requestedOutputs:)@<X0>(__int128 *a1@<X1>, _DWORD *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a1[4];
  v46[3] = a1[3];
  *v47 = v9;
  *&v47[16] = *(a1 + 20);
  v10 = a1[2];
  v46[1] = a1[1];
  v46[2] = v10;
  v46[0] = *a1;
  v11 = *&v47[12];
  v12 = a2[16];
  v13 = a2[17];
  v14 = a2[18];
  v15 = v10 | 0x18;
  _GraphValue.init(_:)(a3, &v42);
  v16 = v42;
  v17 = a1[1];
  v42 = *a1;
  v43 = v17;
  *v44 = v15;
  *&v44[4] = *(a1 + 36);
  *&v44[16] = a1[3];
  v24 = v13;
  v25 = v12;
  *v45 = v12;
  *&v45[4] = v13;
  *&v45[8] = v14;
  *&v45[12] = v11;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  outlined init with copy of _ViewInputs(v46, v40);
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v34 = *v44;
  v35 = *&v44[16];
  v36 = *v45;
  v37 = *&v45[16];
  v32 = v42;
  v33 = v43;
  v19 = *v44;
  LODWORD(v34) = 0;
  LODWORD(v26[0]) = v16;
  v38[0] = v42;
  v38[1] = v43;
  v39 = *&v45[16];
  v38[3] = *&v44[16];
  v38[4] = *v45;
  v38[2] = v34;
  *v30 = v34;
  *&v30[16] = *&v44[16];
  *v31 = *v45;
  *&v31[16] = *&v45[16];
  v28 = v42;
  v29 = v43;
  v20 = *(a5 + 24);
  outlined init with copy of _ViewInputs(&v42, v40);
  outlined init with copy of _ViewInputs(v38, v40);
  v20(v26, &v28, a4, a5);
  v40[2] = *v30;
  v40[3] = *&v30[16];
  v40[4] = *v31;
  v41 = *&v31[16];
  v40[0] = v28;
  v40[1] = v29;
  outlined destroy of _ViewInputs(v40);
  LODWORD(v34) = v19;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a6, &v32);
    AGSubgraphEndTreeElement();
  }

  v26[2] = v34;
  v26[3] = v35;
  v26[4] = v36;
  v27 = v37;
  v26[0] = v32;
  v26[1] = v33;
  outlined destroy of _ViewInputs(v26);
  v21 = a1[1];
  v28 = *a1;
  v29 = v21;
  *v30 = v15;
  *&v30[4] = *(a1 + 36);
  *&v30[16] = a1[3];
  *v31 = v25;
  *&v31[4] = v24;
  *&v31[8] = v14;
  *&v31[12] = v11;
  return outlined destroy of _ViewInputs(&v28);
}

void lazy protocol witness table accessor for type ContainerShapeEnvironment and conformance ContainerShapeEnvironment()
{
  if (!lazy protocol witness table cache variable for type ContainerShapeEnvironment and conformance ContainerShapeEnvironment)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContainerShapeEnvironment, &type metadata for ContainerShapeEnvironment, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContainerShapeEnvironment and conformance ContainerShapeEnvironment);
  }
}

void *static View.makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(a2 + 48);
  v57 = *(a2 + 32);
  v58 = v9;
  v59 = *(a2 + 64);
  v60 = *(a2 + 80);
  v10 = *(a2 + 16);
  v55 = *a2;
  v56 = v10;
  static DynamicPropertyCache.fields(of:)(a3, &v49);
  v11 = v49;
  v12 = v50;
  v13 = DWORD1(v50);
  v51 = v57;
  v52 = v58;
  v53 = v59;
  v54 = v60;
  v49 = v55;
  v50 = v56;
  LODWORD(v29) = v8;
  v37 = v11;
  LOBYTE(v38) = v12;
  DWORD1(v38) = v13;
  outlined init with copy of _ViewInputs(&v55, &v43);
  static View.makeBody(view:inputs:fields:)(v35, &v43, &v29, &v49, &v37, a3, a4);
  v14 = v35[0];
  if ((v44 & 1) == 0)
  {
    v37 = v43;
    LODWORD(v35[0]) = v8;
    v43 = v11;
    LOBYTE(v44) = v12;
    DWORD1(v44) = v13;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v35, &v43, a3);
  }

  outlined consume of DynamicPropertyCache.Fields.Layout(v11, *(&v11 + 1), v12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v48 = v54;
  v43 = v49;
  v44 = v50;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v31 = v45;
  v32 = v46;
  v33 = v47;
  v34 = v48;
  v29 = v43;
  v30 = v44;
  v17 = v45;
  LODWORD(v31) = 0;
  LODWORD(v21[0]) = v14;
  v35[0] = v43;
  v35[1] = v44;
  v36 = v48;
  v35[3] = v46;
  v35[4] = v47;
  v35[2] = v31;
  v25 = v31;
  v26 = v46;
  v27 = v47;
  v28 = v48;
  v23 = v43;
  v24 = v44;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v43, &v37);
  outlined init with copy of _ViewInputs(v35, &v37);
  v19(v21, &v23, AssociatedTypeWitness, AssociatedConformanceWitness);
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v37 = v23;
  v38 = v24;
  outlined destroy of _ViewInputs(&v37);
  LODWORD(v31) = v17;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v29);
    AGSubgraphEndTreeElement();
  }

  v21[2] = v51;
  v21[3] = v52;
  v21[4] = v53;
  v22 = v54;
  v21[0] = v49;
  v21[1] = v50;
  outlined destroy of _ViewInputs(v21);
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  return outlined destroy of _ViewInputs(&v23);
}

void lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle()
{
  if (!lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle);
  }
}

{
  if (!lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle);
  }
}

{
  if (!lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle);
  }
}

{
  if (!lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle);
  }
}

void instantiation function for generic protocol witness table for UnevenRoundedRectangle(uint64_t a1)
{
  lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle();
  *(a1 + 8) = v2;
}

uint64_t initializeWithTake for _ViewListInputs(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  swift_weakTakeInit();
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t PropertyList.merge(_:)(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = *v1;
  if (!*v1)
  {
    *v1 = result;
  }

  if (!result)
  {
    return result;
  }

  v23[0] = result;

  sub_18D0576A8(v4, v3, v22);
  if (v22[0] != 1)
  {
  }

  sub_18D0576A8(v4, v3, &v21);
  if (v21 == 1)
  {
    v5 = 0;
    v6 = v3;
    v7 = v4;
    while (1)
    {
      if (*(v6 + 48) >= *(v7 + 48))
      {
        if (__OFADD__(v5++, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          result = swift_stdlib_isStackAllocationSafe();
          if (!result)
          {
            v18 = swift_slowAlloc();
            closure #13 in PropertyList.merge(_:)(v18, v19, v5, v23, v3, v22, v2);
            return MEMORY[0x193AC4820](v18, -1, -1);
          }

LABEL_30:
          MEMORY[0x1EEE9AC00](result);
          v14 = &v20 - v13;
          v15 = 0;
          while (1)
          {
            v16 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_39;
            }

            if (!v3)
            {
              break;
            }

            *&v14[8 * v15] = v3;
            v3 = *(v3 + 32);
            ++v15;
            if (v16 == v5)
            {
              v3 = (v14 - 8);
              while (1)
              {
                v4 = (v5 - 1);
                if (v5 < 1)
                {
                  break;
                }

                closure #3 in closure #13 in PropertyList.merge(_:)(*(v3 + 8 * v5), v2, &v21);
                v17 = v21;

                *v2 = v17;
                v5 = v4;
                if (!v4)
                {
                  return result;
                }
              }

              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          __break(1u);

          result = MEMORY[0x193AC4820](v4, -1, -1);
          __break(1u);
          return result;
        }

        v6 = *(v6 + 32);
        if (!v6)
        {
          goto LABEL_20;
        }

        v23[0] = v6;
      }

      else
      {
        v7 = *(v7 + 32);
        if (!v7)
        {
          goto LABEL_20;
        }
      }

      sub_18D0576A8(v7, v6, &v21);
      if ((v21 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  v5 = 0;
  v6 = v3;
  v7 = v4;
LABEL_17:
  *v22 = v5;
  closure #9 in PropertyList.merge(_:)(v7, v6, &v21);
  if (v21 != 1)
  {
LABEL_20:
    if (v4[3])
    {
      type metadata accessor for TypedElement<EmptyKey>(0, &lazy cache variable for type metadata for TypedElement<EmptyKey>, &type metadata for EmptyKey, &protocol witness table for EmptyKey, type metadata accessor for TypedElement);
      swift_allocObject();
      result = PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, v3, v4).value;
      *v2 = result;
    }

    else
    {
      v9 = v4[4];
      v10 = *(*v4 + 216);

      v12 = v10(v11, v9);

      *v2 = v12;
    }

    return result;
  }

  if (v6 == v3)
  {
  }

  if (*v2 && *v2 == v7)
  {

    *v2 = v3;
    return result;
  }

  if (v5)
  {
    if (v5 < 0)
    {
      __break(1u);
    }

    else if (!(v5 >> 60))
    {
      v4 = (8 * v5);
      if (8 * v5 > 1024)
      {
        goto LABEL_41;
      }

      goto LABEL_30;
    }

    __break(1u);
  }

  return result;
}

uint64_t closure #1 in Attribute.init<A>(_:)partial apply@<X0>(_DWORD *x8_0@<X8>)
{
  return closure #1 in Attribute.init<A>(_:)partial apply(x8_0);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(x8_0);
}

void type metadata accessor for WeakBox<GlassContainerCache>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
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

uint64_t initializeBufferWithCopyOfBuffer for ViewGraph.NextUpdate(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t _ViewListOutputs.multiModifier<A>(_:inputs:)(unsigned int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of _ViewListOutputs.Views(v4, v36);
  if (v37)
  {
    v8 = v36[0];
    v9 = *(&v36[0] + 1);
    type metadata accessor for ModifiedViewList.ListModifier();
    v10 = a2[1];
    v26 = *a2;
    v27 = v10;
    v28 = a2[2];
    outlined init with copy of _GraphInputs(&v26, v34);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = a3;
    *(v11 + 32) = a4;
    *(v11 + 40) = AGCreateWeakAttribute();
    v12 = a2[1];
    *(v11 + 48) = *a2;
    *(v11 + 64) = v12;
    *(v11 + 80) = a2[2];
    LODWORD(v34[0]) = v8;
    *(&v34[0] + 1) = v11;
    BYTE8(v35) = 1;
    v13 = v34;
  }

  else
  {
    outlined init with take of AnyTrackedValue(v36, v33);
    outlined init with copy of AnyTrackedValue(v33, v25);
    v14 = a2[1];
    v34[0] = *a2;
    v34[1] = v14;
    v16 = *a2;
    v15 = a2[1];
    v35 = a2[2];
    v22 = v16;
    v23 = v15;
    v24 = a2[2];
    outlined init with copy of _GraphInputs(v34, &v26);
    ModifiedElements.init<A>(base:modifier:baseInputs:)(v25, &v22, a3, a4, &v26);
    *(&v23 + 1) = &type metadata for ModifiedElements;
    *&v24 = &protocol witness table for ModifiedElements;
    v17 = swift_allocObject();
    *&v22 = v17;
    v18 = v31;
    v17[5] = v30;
    v17[6] = v18;
    v17[7] = v32;
    v19 = v27;
    v17[1] = v26;
    v17[2] = v19;
    v20 = v29;
    v17[3] = v28;
    v17[4] = v20;
    __swift_destroy_boxed_opaque_existential_1(v33);
    BYTE8(v24) = 0;
    v13 = &v22;
  }

  return outlined assign with take of _ViewListOutputs.Views(v13, v4);
}

uint64_t sub_18D057B90()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA23DynamicStackOrientationV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA23DynamicStackOrientationV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for DynamicStackOrientation)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ViewListOutputs(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(uint64_t *a1, int a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for DynamicStackOrientation);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA23DynamicStackOrientationV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<DynamicStackOrientation>, &type metadata for DynamicStackOrientation, &protocol witness table for DynamicStackOrientation, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for DynamicStackOrientation, 0, v6);
  }

  return result;
}

uint64_t destroy for _GraphInputs(void *a1)
{
}

void lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries()
{
  if (!lazy protocol witness table cache variable for type LayoutChildGeometries and conformance LayoutChildGeometries)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutChildGeometries, &type metadata for LayoutChildGeometries, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutChildGeometries and conformance LayoutChildGeometries);
  }
}

__n128 ModifiedElements.init<A>(base:modifier:baseInputs:)@<Q0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, a6);
  v11 = AGCreateWeakAttribute();
  v12 = v11;
  v13 = HIDWORD(v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(a6 + 40) = v12;
  *(a6 + 44) = v13;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  v14 = *(a3 + 16);
  *(a6 + 64) = *a3;
  *(a6 + 80) = v14;
  result = *(a3 + 32);
  *(a6 + 96) = result;
  return result;
}

uint64_t static _ViewListOutputs.concat(_:inputs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v38 = *MEMORY[0x1E69E9840];
  v4 = *(result + 16);
  if (!v4)
  {
    *(a3 + 24) = &type metadata for EmptyViewListElements;
    *(a3 + 32) = &protocol witness table for EmptyViewListElements;
    *(a3 + 40) = 0;
    *(a3 + 48) = *(a2 + 48);
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    return result;
  }

  v5 = result;
  v32 = swift_allocObject();
  *(v32 + 16) = *(v3 + 48);
  v6 = MEMORY[0x1E69E7CC0];
  v31 = v5;
  v7 = v5 + 32;
  swift_beginAccess();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v29 = v7;
  v33 = v3;
  do
  {
    v12 = v11 + 1;
    outlined init with copy of _ViewListOutputs(v7, v36);
    v13 = v37;
    if (v37)
    {
      v14 = 0;
    }

    else
    {
      v14 = v8;
    }

    if ((v9 & 1) == 0)
    {
      v8 = v14 + v36[7];
    }

    outlined init with copy of _ViewListOutputs.Views(v36, v35);
    if (v35[40])
    {
      outlined destroy of _ViewListOutputs.Views(v35);
      if (v10 < v11)
      {
        mergeStatic #1 (from:to:) in static _ViewListOutputs.concat(_:inputs:)(v10, v11, v31, v32, v3, v34);
        v15 = _ViewListOutputs.makeAttribute(inputs:)(v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
        }

        v17 = *(v6 + 2);
        v16 = *(v6 + 3);
        if (v17 >= v16 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v6);
        }

        *(v6 + 2) = v17 + 1;
        *&v6[4 * v17 + 32] = v15;
        outlined destroy of _ViewListOutputs(v34);
        v3 = v33;
      }

      v18 = _ViewListOutputs.makeAttribute(inputs:)(v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v20 = *(v6 + 2);
      v19 = *(v6 + 3);
      if (v20 >= v19 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v6);
      }

      *(v6 + 2) = v20 + 1;
      *&v6[4 * v20 + 32] = v18;
      outlined destroy of _ViewListOutputs(v36);
      v10 = v11 + 1;
      v3 = v33;
    }

    else
    {
      outlined destroy of _ViewListOutputs(v36);
      outlined destroy of _ViewListOutputs.Views(v35);
    }

    v9 |= v13;
    v7 += 72;
    ++v11;
  }

  while (v4 != v12);
  if (v10 < v4)
  {
    if (!v10)
    {
      if (v4 == 1)
      {
        outlined init with copy of _ViewListOutputs(v29, a3);
        goto LABEL_39;
      }

      v26 = a3;
      *(a3 + 24) = &unk_1F0084390;
      *(a3 + 32) = &protocol witness table for MergedElements;
      v28 = swift_allocObject();
      *a3 = v28;
      v28[2] = v31;
      v28[3] = v29;
      v28[4] = 0;
      v28[5] = (2 * v4) | 1;
      *(a3 + 40) = 0;
      swift_beginAccess();
      v27 = *(v32 + 16);

LABEL_36:

      *(v26 + 48) = v27;
      *(v26 + 56) = v8;
      *(v26 + 64) = v9 & 1;
      return result;
    }

    mergeStatic #1 (from:to:) in static _ViewListOutputs.concat(_:inputs:)(v10, v4, v31, v32, v3, v36);
    v21 = _ViewListOutputs.makeAttribute(inputs:)(v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v23 = *(v6 + 2);
    v22 = *(v6 + 3);
    if (v23 >= v22 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v6);
    }

    *(v6 + 2) = v23 + 1;
    *&v6[4 * v23 + 32] = v21;
    outlined destroy of _ViewListOutputs(v36);
  }

  v24 = *(v6 + 2);
  if (v24 == 1)
  {
    v25 = *(v6 + 8);
LABEL_35:
    v26 = a3;
    *a3 = v25;
    *(a3 + 8) = 0;
    *(a3 + 40) = 1;
    swift_beginAccess();
    v27 = *(v32 + 16);
    goto LABEL_36;
  }

  if (v24)
  {
    v36[0] = v6;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    lazy protocol witness table accessor for type _ViewList_Group.Init and conformance _ViewList_Group.Init();
    v25 = Attribute.init<A>(body:value:flags:update:)();
    goto LABEL_35;
  }

  static _ViewListOutputs.emptyViewList(inputs:)(v3, a3);
LABEL_39:
}

uint64_t sub_18D0583B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t destroy for _ViewListOutputs.Views(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 != 1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t destroy for TupleView.MakeList(void *a1)
{

  swift_weakDestroy();
}

void lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout()
{
  if (!lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _VStackLayout, &type metadata for _VStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _VStackLayout, &type metadata for _VStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _VStackLayout, &type metadata for _VStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout);
  }
}

void instantiation function for generic protocol witness table for _VStackLayout(uint64_t a1)
{
  lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout();
  *(a1 + 8) = v2;
}

void *sub_18D0585C8(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void *protocol witness for UnaryViewGenerator.makeView(inputs:indirectMap:) in conformance TypedUnaryViewGenerator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v8;
  v11[4] = *(a1 + 64);
  v12 = *(a1 + 80);
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    return project #1 <A>(_:) in TypedUnaryViewGenerator.makeView(inputs:indirectMap:)(result, a2, v11, v6, v7, a3);
  }

  *a3 = MEMORY[0x1E69E7CC0];
  *(a3 + 8) = 0;
  *(a3 + 12) = result;
  return result;
}

void *project #1 <A>(_:) in TypedUnaryViewGenerator.makeView(inputs:indirectMap:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v9 = a1;
  v39 = *MEMORY[0x1E69E9840];
  v22 = a1;
  if (a2)
  {
    v10 = type metadata accessor for Attribute();

    Attribute.makeReusable(indirectMap:)(v11, v10);

    v9 = v22;
  }

  _GraphValue.init(_:)(v9, &v21);
  v12 = v21;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v14 = a3[3];
  v31 = a3[2];
  v32 = v14;
  v33 = a3[4];
  v34 = *(a3 + 20);
  v15 = a3[1];
  v29 = *a3;
  v30 = v15;
  v16 = v31;
  LODWORD(v31) = 0;
  v20 = v12;
  v35[0] = v29;
  v35[1] = v15;
  v36 = v34;
  v35[3] = v14;
  v35[4] = v33;
  v35[2] = v31;
  v25 = v31;
  v26 = v14;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v15;
  v17 = *(a5 + 24);
  outlined init with copy of _ViewInputs(a3, v37);
  outlined init with copy of _ViewInputs(v35, v37);
  v17(&v20, &v23, a4, a5);
  v37[2] = v25;
  v37[3] = v26;
  v37[4] = v27;
  v38 = v28;
  v37[0] = v23;
  v37[1] = v24;
  outlined destroy of _ViewInputs(v37);
  LODWORD(v31) = v16;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a6, &v29);
    AGSubgraphEndTreeElement();
  }

  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  return outlined destroy of _ViewInputs(&v23);
}

uint64_t _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X8>)
{
  v15 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v15;
  v20[4] = *(a2 + 64);
  v21 = *(a2 + 80);
  v16 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v23 = a1;
  v19[2] = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v19[3] = v17;
  (*(a7 + 16))(&v22, &v23, v20, a3, partial apply for closure #1 in closure #1 in _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:), v19, a6, a7);
  *a8 = v22;
  LOBYTE(a7) = swift_isEscapingClosureAtFileLocation();

  if (a7)
  {
    __break(1u);
  }

  return result;
}

uint64_t initializeWithCopy for ModifiedElements(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = specialized Set._Variant.insert(_:)(v10, *(*(v1 + 48) + ((v8 << 8) | (4 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t partial apply for closure #1 in UnaryElements.makeElements(from:inputs:indirectMap:body:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for UnaryElements(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in UnaryElements.makeElements(from:inputs:indirectMap:body:)(a1, v4 + v9, v10, v6, v7);
}

uint64_t closure #1 in UnaryElements.makeElements(from:inputs:indirectMap:body:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[3];
  v43 = a1[2];
  v44 = v8;
  v45 = a1[4];
  v46 = *(a1 + 20);
  v9 = a1[1];
  v41 = *a1;
  v42 = v9;
  v10 = (a2 + *(type metadata accessor for UnaryElements(0, a4, a5, a4) + 36));
  v11 = v10[2];
  v48 = v10[1];
  v49 = v11;
  v47 = *v10;
  v39 = v48;
  v40 = v11;
  v38 = v47;
  outlined init with copy of _GraphInputs(&v47, v35);
  if (a3)
  {

    _GraphInputs.makeReusable(indirectMap:)(v12);
  }

  v23 = v43;
  v24 = v44;
  v25 = v45;
  v26 = v46;
  v21 = v41;
  v22 = v42;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  outlined init with copy of _ViewInputs(&v41, v35);
  _GraphInputs.merge(_:ignoringPhase:)(&v29, 0);
  v27[2] = v23;
  v27[3] = v24;
  v27[4] = v25;
  v28 = v26;
  v27[0] = v21;
  v27[1] = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  v13 = *(a5 + 8);
  outlined init with copy of _ViewInputs(v27, v35);
  v13(&v15, a3, a4, a5);
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v29 = v15;
  v30 = v16;
  outlined destroy of _ViewInputs(&v29);
  v35[2] = v23;
  v35[3] = v24;
  v35[4] = v25;
  v36 = v26;
  v35[0] = v21;
  v35[1] = v22;
  outlined destroy of _ViewInputs(v35);
  v37[0] = v38;
  v37[1] = v39;
  v37[2] = v40;
  return outlined destroy of _GraphInputs(v37);
}

uint64_t closure #1 in closure #1 in ModifiedElements.makeElements(from:inputs:indirectMap:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, _OWORD *, uint64_t (*)(), uint64_t), uint64_t a6, _OWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *(a2 + 48);
  v26[2] = *(a2 + 32);
  v26[3] = v16;
  v26[4] = *(a2 + 64);
  v27 = *(a2 + 80);
  v17 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v17;
  outlined init with copy of ModifiedElements(a10, v25);
  v18 = swift_allocObject();
  v19 = a7[1];
  *(v18 + 16) = *a7;
  *(v18 + 32) = v19;
  *(v18 + 48) = a7[2];
  *(v18 + 64) = a8;
  *(v18 + 72) = a9;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  v20 = v25[5];
  *(v18 + 160) = v25[4];
  *(v18 + 176) = v20;
  *(v18 + 192) = v25[6];
  v21 = v25[1];
  *(v18 + 96) = v25[0];
  *(v18 + 112) = v21;
  v22 = v25[3];
  *(v18 + 128) = v25[2];
  *(v18 + 144) = v22;
  outlined init with copy of _GraphInputs(a7, &v24);

  LOBYTE(a5) = a5(a1, v26, partial apply for closure #1 in closure #1 in closure #1 in ModifiedElements.makeElements(from:inputs:indirectMap:body:), v18);

  return a5 & 1;
}

uint64_t sub_18D058FF0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return swift_deallocObject();
}

void *specialized project #1 <A>(_:) in closure #1 in closure #1 in closure #1 in ModifiedElements.makeElements(from:inputs:indirectMap:body:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v13 = a1;
  v50 = *MEMORY[0x1E69E9840];
  v27 = a1;
  if (a2)
  {
    v15 = type metadata accessor for Attribute();

    Attribute.makeReusable(indirectMap:)(v16, v15);

    v13 = v27;
  }

  _GraphValue.init(_:)(v13, &v26);
  v17 = v26;
  swift_beginAccess();
  v18 = a3[3];
  v46 = a3[2];
  v47 = v18;
  v48 = a3[4];
  v49 = *(a3 + 20);
  v19 = a3[1];
  v44 = *a3;
  v45 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  outlined init with copy of _ViewInputs(&v44, v42);

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v36 = v46;
  v37 = v47;
  v38 = v48;
  v39 = v49;
  v34 = v44;
  v35 = v45;
  v22 = v46;
  LODWORD(v36) = 0;
  v25 = v17;
  v40[0] = v44;
  v40[1] = v45;
  v41 = v49;
  v40[3] = v47;
  v40[4] = v48;
  v40[2] = v36;
  v30 = v36;
  v31 = v47;
  v32 = v48;
  v33 = v49;
  v28 = v44;
  v29 = v45;
  v23 = *(a7 + 24);
  outlined init with copy of _ViewInputs(&v44, v42);
  outlined init with copy of _ViewInputs(v40, v42);
  v23(&v25, &v28, partial apply for closure #1 in DynamicLayoutViewAdaptor.MakeTransition.visit<A>(_:), v20, a6, a7);
  v42[2] = v30;
  v42[3] = v31;
  v42[4] = v32;
  v43 = v33;
  v42[0] = v28;
  v42[1] = v29;
  outlined destroy of _ViewInputs(v42);
  LODWORD(v36) = v22;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a8, &v34);
    AGSubgraphEndTreeElement();
  }

  outlined destroy of _ViewInputs(&v44);
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  return outlined destroy of _ViewInputs(&v28);
}

uint64_t sub_18D059320()
{

  return swift_deallocObject();
}

uint64_t closure #1 in closure #1 in closure #1 in ModifiedElements.makeElements(from:inputs:indirectMap:body:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v13;
  v41 = *(a1 + 64);
  v42 = *(a1 + 80);
  v14 = *(a1 + 16);
  v37 = *a1;
  v38 = v14;
  v15 = a2[1];
  v34 = *a2;
  v35 = v15;
  v36 = a2[2];
  if (a3)
  {
    outlined init with copy of _GraphInputs(a2, &v28);

    _GraphInputs.makeReusable(indirectMap:)(v16);
  }

  else
  {
    outlined init with copy of _GraphInputs(a2, &v28);
  }

  v30 = v39;
  v31 = v40;
  v32 = v41;
  v33 = v42;
  v28 = v37;
  v29 = v38;
  v25 = v34;
  v26 = v35;
  v27 = v36;
  outlined init with copy of _ViewInputs(&v37, &v19);
  _GraphInputs.merge(_:ignoringPhase:)(&v25, 0);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    *a8 = MEMORY[0x1E69E7CC0];
    *(a8 + 8) = 0;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v19 = v28;
    v20 = v29;
    outlined destroy of _ViewInputs(&v19);
    v25 = v34;
    v26 = v35;
    v27 = v36;
    result = outlined destroy of _GraphInputs(&v25);
    *(a8 + 12) = Attribute;
  }

  else
  {
    specialized project #1 <A>(_:) in closure #1 in closure #1 in closure #1 in ModifiedElements.makeElements(from:inputs:indirectMap:body:)(Attribute, a3, &v28, a5, a6, *(a7 + 48), *(a7 + 56), a8);
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v19 = v28;
    v20 = v29;
    outlined destroy of _ViewInputs(&v19);
    v25 = v34;
    v26 = v35;
    v27 = v36;
    return outlined destroy of _GraphInputs(&v25);
  }

  return result;
}

uint64_t UnaryElements.makeElements(from:inputs:indirectMap:body:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, _OWORD *, void, uint64_t), uint64_t a6, uint64_t a7)
{
  v11 = *(a7 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v14)
  {
    v18 = (*v14 - 1) & ~((*v14 - 1) >> 63);
    *v13 = 0;
    v13[1] = 0;
    v19 = 1;
  }

  else
  {
    v20 = *(v15 + 48);
    v31[2] = *(v15 + 32);
    v31[3] = v20;
    v31[4] = *(v15 + 64);
    v32 = *(v15 + 80);
    v21 = *(v15 + 16);
    v31[0] = *v15;
    v31[1] = v21;
    v22 = *(v11 + 16);
    v30 = v13;
    v23 = v7;
    v24 = v16;
    v22(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v16);
    v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = *(v24 + 16);
    (*(v11 + 32))(v27 + v25, v17, v24);
    *(v27 + v26) = a4;

    v19 = a5(v30, v31, partial apply for closure #1 in UnaryElements.makeElements(from:inputs:indirectMap:body:), v27);

    v18 = 0;
  }

  *a2 = v18;
  return v19 & 1;
}

uint64_t sub_18D059704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for UnaryElements(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t initializeWithCopy for UnaryElements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 28) = *(v8 + 28);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 40) = *(v8 + 40);

  return a1;
}

uint64_t _s7SwiftUI18_ViewList_ElementsPAAE07makeAllE06inputs11indirectMap4bodyAA01_C7OutputsVSgAA01_C6InputsV_AA017IndirectAttributeJ0CSgAjL_AiLctXEtFA2jL_AiLctcXEfU_AJ_SbtAL_AiLctXEfU_TA_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v5(v9, a3, a4);
  return 1;
}

uint64_t closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *, uint64_t, uint64_t))
{
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  a5(v8, a3, a4);
  return 1;
}

uint64_t protocol witness for _ViewList_Elements.count.getter in conformance ModifiedElements()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t protocol witness for _ViewList_Elements.makeElements(from:inputs:indirectMap:body:) in conformance ModifiedElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *(a3 + 48);
  v23[2] = *(a3 + 32);
  v23[3] = v13;
  v23[4] = *(a3 + 64);
  v24 = *(a3 + 80);
  v14 = *(a3 + 16);
  v23[0] = *a3;
  v23[1] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = *(v7 + 80);
  v25[0] = *(v7 + 64);
  v25[1] = v16;
  v25[2] = *(v7 + 96);
  v17 = *(v7 + 24);
  v18 = *(v7 + 32);
  v19 = *(v7 + 40);
  __swift_project_boxed_opaque_existential_1(v7, v17);
  v22[2] = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?, @unowned Bool);
  v22[3] = v15;
  v22[4] = v25;
  v22[5] = a4;
  v22[6] = v19;
  v22[7] = v7;
  v20 = (*(v18 + 16))(a1, a2, v23, a4, partial apply for closure #1 in closure #1 in ModifiedElements.makeElements(from:inputs:indirectMap:body:), v22, v17, v18);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if ((a2 & 1) == 0)
  {
    return v20 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _GraphInputs.merge(_:ignoringPhase:)(uint64_t a1, char a2)
{
  v3 = v2;
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  v9 = *(a1 + 32);
  v8 = *(a1 + 36);
  PropertyList.merge(_:)(*a1);
  swift_beginAccess();
  v10 = *(v5 + 16);
  v11 = *(v2 + 16);
  swift_beginAccess();
  v12 = *(v11 + 16);
  if (v10 != v12 && (specialized Set._Variant.insert(_:)(&v19, v10) & 1) != 0)
  {
    v19 = AGCreateWeakAttribute();
    v20 = v12;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MergedEnvironment and conformance MergedEnvironment();
    v13 = Attribute.init<A>(body:value:flags:update:)();
    _GraphInputs.environment.setter(v13);
  }

  v14 = v3[7];
  if (v7 != v14 && (specialized Set._Variant.insert(_:)(&v19, v7) & 1) != 0)
  {
    v19 = AGCreateWeakAttribute();
    v20 = v14;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MergedTransaction and conformance MergedTransaction();
    v3[7] = Attribute.init<A>(body:value:flags:update:)();
  }

  if ((a2 & 1) == 0)
  {
    v15 = v3[6];
    if (v6 != v15 && (specialized Set._Variant.insert(_:)(&v19, v6) & 1) != 0)
    {
      v19 = AGCreateWeakAttribute();
      v20 = v15;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type MergedPhase and conformance MergedPhase();
      v3[6] = Attribute.init<A>(body:value:flags:update:)();
      v16 = v3[8];
      if ((v16 & 0x40) == 0)
      {
        v3[8] = v16 | 0x40;
      }
    }
  }

  v3[8] |= v9;

  result = specialized Set.formUnion<A>(_:)(v17);
  v3[9] |= (v3[9] | v8) & 1;
  return result;
}

uint64_t partial apply for closure #1 in DynamicLayoutViewAdaptor.MakeTransition.visit<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return v3(v7);
}

double _FrameLayout.init(width:height:alignment:)@<D0>(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  specialized _FrameLayout.init(width:height:alignment:)(a1, a2 & 1, a3, a4 & 1, a6, a7, v10);
  v8 = v10[1];
  *a5 = v10[0];
  a5[1] = v8;
  result = *&v11;
  a5[2] = v11;
  return result;
}

uint64_t specialized _FrameLayout.init(width:height:alignment:)@<X0>(double a1@<X0>, BOOL a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (one-time initialization token for v2 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v2;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
LABEL_7:
      LOBYTE(v16) = a4;
      goto LABEL_30;
    }
  }

  else if (static Semantics.forced < v14)
  {
    goto LABEL_7;
  }

  if (a2 || (v17 = a1 >= 0.0) && (*&a1 & 0x7FF0000000000000) != 0x7FF0000000000000)
  {
    if (a4)
    {
      LOBYTE(v16) = 1;
      goto LABEL_30;
    }

    v16 = 0;
    v17 = a2;
    goto LABEL_17;
  }

  a1 = 0.0;
  v16 = 1;
  if ((a4 & 1) == 0)
  {
LABEL_17:
    if (a3 >= 0.0)
    {
      v18 = (*&a3 & 0x7FF0000000000000) == 0x7FF0000000000000;
      if ((*&a3 & 0x7FF0000000000000) == 0x7FF0000000000000)
      {
        v19 = 1;
      }

      else
      {
        v19 = v16;
      }

      if ((*&a3 & 0x7FF0000000000000) == 0x7FF0000000000000)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = a3;
      }

      if (v19 != 1)
      {
        LOBYTE(v16) = 0;
        a2 = v17;
        goto LABEL_30;
      }

      a2 = v17;
      a3 = v20;
      LOBYTE(v16) = v18;
    }

    else
    {
      a3 = 0.0;
      LOBYTE(v16) = 0;
      a2 = v17;
    }

    goto LABEL_27;
  }

  a2 = v17;
LABEL_27:
  v21 = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    v22 = v21;
    swift_once();
    v21 = v22;
  }

  result = os_log(_:dso:log:_:_:)(v21, &dword_18D018000, static Log.runtimeIssuesLog, "Invalid frame dimension (negative or non-finite).", 49, 2, MEMORY[0x1E69E7CC0]);
LABEL_30:
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = v16 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
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

uint64_t initializeWithCopy for VStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((*(v4 + 80) + 17 + a1) & ~*(v4 + 80), (*(v4 + 80) + 17 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:)(uint64_t a1)
{
  v3 = **(v1 + 16);

  *(a1 + 8) = v3;
  return result;
}

void type metadata accessor for Int?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _sSiSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI035CoreInteractionRepresentableFeatureC0V7ElementV_Tt1gq5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

double protocol witness for static StatefulRule.initialValue.getter in conformance GlassEffectItemRadii@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void *closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)@<X0>(void *result@<X0>, void (*a2)(uint64_t *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X3>, void *a4@<X4>, char **a5@<X5>, void *a6@<X8>)
{
  v6 = a4;
  v8 = result;
  v53 = *MEMORY[0x1E69E9840];
  v9 = *(result + 3);
  v50 = *(result + 2);
  v51 = v9;
  v10 = *(result + 3);
  *v52 = *(result + 4);
  v11 = *(result + 1);
  v49[0] = *result;
  v49[1] = v11;
  v47 = v49[0];
  v48 = v11;
  v46[0] = *(result + 36);
  *&v52[16] = *(result + 20);
  *(v46 + 12) = v10;
  v33 = *&v52[4];
  v12 = *&v52[12];
  v13 = v50;
  v14 = BYTE4(v50);
  if ((BYTE4(v50) & 0x20) != 0)
  {
    if (*(a3 + 4))
    {
      __break(1u);
      return result;
    }

    v17 = *a4;
    LODWORD(v41[0]) = *a3;
    *(&v41[0] + 1) = v17;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    outlined init with copy of _ViewInputs(v49, v44);
    lazy protocol witness table accessor for type LayoutChildGeometry and conformance LayoutChildGeometry();
    Attribute.init<A>(body:value:flags:update:)();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v15 = AGGraphCreateOffsetAttribute2();
    v13 |= 0x18u;
  }

  else
  {
    v15 = *&v52[8];
    OffsetAttribute2 = *v52;
    outlined init with copy of _ViewInputs(v49, v44);
  }

  v18 = v8[1];
  v41[0] = *v8;
  v41[1] = v18;
  *v42 = v13;
  *&v42[4] = *(v8 + 36);
  *&v42[16] = v8[3];
  *v43 = OffsetAttribute2;
  *&v43[4] = v33;
  *&v43[8] = v15;
  v31 = v12;
  *&v43[12] = v12;
  *v39 = *v42;
  *&v39[16] = *&v42[16];
  *v40 = *v43;
  *&v40[16] = HIDWORD(v12);
  v37 = v41[0];
  v38 = v18;
  outlined init with copy of _ViewInputs(v41, v44);
  a2(&v34, &v37);
  v44[2] = *v39;
  v44[3] = *&v39[16];
  v44[4] = *v40;
  v45 = *&v40[16];
  v44[0] = v37;
  v44[1] = v38;
  outlined destroy of _ViewInputs(v44);
  v19 = v34;
  v20 = v35;
  v21 = v36;
  if ((v14 & 0x20) != 0)
  {
    v22 = MEMORY[0x1E698D3F8];
    v23 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v23;
    v29 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
      *a5 = v23;
    }

    v25 = *v22;
    v27 = *(v23 + 2);
    v26 = *(v23 + 3);
    if (v27 >= v26 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
      *a5 = v23;
    }

    *(v23 + 2) = v27 + 1;
    v28 = &v23[8 * v27];
    *(v28 + 8) = v21;
    *(v28 + 9) = v25;
    v6 = v29;
  }

  v37 = v47;
  v38 = v48;
  *v39 = v13;
  *&v39[4] = v46[0];
  *&v39[16] = *(v46 + 12);
  *v40 = OffsetAttribute2;
  *&v40[4] = v33;
  *&v40[8] = v15;
  *&v40[12] = v31;
  result = outlined destroy of _ViewInputs(&v37);
  ++*v6;
  *a6 = v19;
  a6[1] = v20 | (v21 << 32);
  return result;
}

void *specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a5@<X8>)
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
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_FlexFrameLayout> and conformance UnaryLayoutComputer<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_FlexFrameLayout> and conformance UnaryChildGeometry<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryChildGeometry);
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
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_FrameLayout> and conformance UnaryChildGeometry<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryChildGeometry);
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
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_PaddingLayout> and conformance UnaryLayoutComputer<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_PaddingLayout> and conformance UnaryChildGeometry<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryChildGeometry);
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
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_AspectRatioLayout> and conformance UnaryLayoutComputer<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_AspectRatioLayout> and conformance UnaryChildGeometry<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryChildGeometry);
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
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<SpacingLayout> and conformance UnaryLayoutComputer<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<SpacingLayout> and conformance UnaryChildGeometry<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryChildGeometry);
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
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_FixedSizeLayout> and conformance UnaryLayoutComputer<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_FixedSizeLayout> and conformance UnaryChildGeometry<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryChildGeometry);
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
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<IgnoresAutomaticPaddingLayout> and conformance UnaryLayoutComputer<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<IgnoresAutomaticPaddingLayout> and conformance UnaryChildGeometry<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryChildGeometry);
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
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<MoveTransition.MoveLayout> and conformance UnaryLayoutComputer<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<MoveTransition.MoveLayout> and conformance UnaryChildGeometry<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryChildGeometry);
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
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<ConcentricPaddingLayout> and conformance UnaryLayoutComputer<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<ConcentricPaddingLayout> and conformance UnaryChildGeometry<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryChildGeometry);
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
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryChildGeometry<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryChildGeometry);
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
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_PositionLayout> and conformance UnaryLayoutComputer<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_PositionLayout> and conformance UnaryChildGeometry<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryChildGeometry);
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
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<_AlignmentLayout> and conformance UnaryLayoutComputer<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryChildGeometry<_AlignmentLayout> and conformance UnaryChildGeometry<A>();
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
      type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryChildGeometry);
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

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_VStackC0V_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<_VStackLayout> and conformance StaticLayoutComputer<A>();
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
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for StaticLayoutComputer);
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

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _FrameLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

void type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryChildGeometry<_FrameLayout> and conformance UnaryChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_FrameLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryChildGeometry<_FrameLayout> and conformance UnaryChildGeometry<A>);
  }
}

uint64_t specialized MergedElements.count.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = 0;
  v5 = (a3 >> 1) - a2;
  if (a3 >> 1 == a2)
  {
    return v4;
  }

  if (a2 > v3)
  {
    v3 = a2;
  }

  v6 = v3 - a2;
  v7 = a1 + 72 * a2;
  while (v6)
  {
    outlined init with copy of _ViewListOutputs(v7, v18);
    outlined init with copy of _ViewListOutputs.Views(v18, v13);
    if (v14)
    {
      goto LABEL_12;
    }

    outlined init with take of AnyTrackedValue(v13, v15);
    v8 = v16;
    v9 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v10 = (*(v9 + 8))(v8, v9);
    outlined destroy of _ViewListOutputs(v18);
    v11 = __OFADD__(v4, v10);
    v4 += v10;
    if (v11)
    {
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1(v15);
    --v6;
    v7 += 72;
    if (!--v5)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  outlined destroy of _ViewListOutputs.Views(v13);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UnaryLayoutComputer<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UnaryChildGeometry<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, a1);

  return static AsyncAttribute.flags.getter();
}

void lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery()
{
  if (!lazy protocol witness table cache variable for type LayoutPositionQuery and conformance LayoutPositionQuery)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutPositionQuery, &type metadata for LayoutPositionQuery, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutPositionQuery and conformance LayoutPositionQuery);
  }
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _FlexFrameLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v5, v9, a3, a5);
}

void lazy protocol witness table accessor for type UnaryLayoutComputer<_FlexFrameLayout> and conformance UnaryLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_FlexFrameLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_FlexFrameLayout> and conformance UnaryLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryChildGeometry<_FlexFrameLayout> and conformance UnaryChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_FlexFrameLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryChildGeometry<_FlexFrameLayout> and conformance UnaryChildGeometry<A>);
  }
}

void lazy protocol witness table accessor for type LayoutChildGeometry and conformance LayoutChildGeometry()
{
  if (!lazy protocol witness table cache variable for type LayoutChildGeometry and conformance LayoutChildGeometry)
  {
    swift_getWitnessTable(protocol conformance descriptor for LayoutChildGeometry, &unk_1F007D1A8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LayoutChildGeometry and conformance LayoutChildGeometry);
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance StaticLayoutComputer<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, a1);

  return static AsyncAttribute.flags.getter();
}

void lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout()
{
  if (!lazy protocol witness table cache variable for type _FlexFrameLayout and conformance _FlexFrameLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _FlexFrameLayout, &type metadata for _FlexFrameLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _FlexFrameLayout and conformance _FlexFrameLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _FlexFrameLayout and conformance _FlexFrameLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _FlexFrameLayout, &type metadata for _FlexFrameLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _FlexFrameLayout and conformance _FlexFrameLayout);
  }
}