uint64_t static PlatformItemsModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X4>, uint64_t a6@<X5>)
{
  v10 = *a1;
  v11 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v11;
  v16[4] = *(a2 + 64);
  v17 = *(a2 + 80);
  v12 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v12;
  a3(a4);
  LODWORD(v16[0]) = v10;
  return static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)(a4, a2, v16, v13, a5, v14, a6);
}

uint64_t static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)(uint64_t *a1, uint64_t *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = a2[6];
  v12 = *a3;
  (*(a7 + 16))(&v24, a5, a7);
  v13 = v24;
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v11);
  if (result)
  {
    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
    result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v10, v26);
    if (result)
    {
      if ((*(result + 72) & v13) != 0)
      {
        v15 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(*a1);
        v16 = *MEMORY[0x1E698D3F8];
        if ((v15 & 0x100000000) == 0)
        {
          v16 = v15;
        }

        v24 = __PAIR64__(v16, v12);
        v25 = 0;
        MEMORY[0x1EEE9AC00](v15);
        v22 = type metadata accessor for PlatformItemsTransform(0, a5, a7, v17);
        swift_getWitnessTable(protocol conformance descriptor for PlatformItemsTransform<A>, v22);
        v23 = v18;
        type metadata accessor for PlatformItem.PrimaryContent?(0, &lazy cache variable for type metadata for Attribute<PlatformItems>, &type metadata for PlatformItems, MEMORY[0x1E698D388]);
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v24, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_11, &v21, v22, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
        LOBYTE(v24) = 0;
        return PreferencesOutputs.subscript.setter(v26, &type metadata for PlatformItems.Key, &protocol witness table for PlatformItems.Key);
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall _ViewInputs.requestsPlatformItem(for:)(SwiftUI::PlatformItem::Features a1)
{
  v2 = *a1.rawValue;
  v3 = *v1;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v1[6]) & 1) == 0)
  {
    return 0;
  }

  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v3, v7);
  if (v4)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  return (v5 & v2) != 0;
}

double PlatformItemsTransform.updateValue()(uint64_t a1)
{
  v2 = v1;
  v43 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v5) = *(v2 + 4);
  v7 = *(v6 + 24);
  v8 = *MEMORY[0x1E698D3F8];
  v34 = *(v2 + 8);
  if (v8 == v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    Value = AGGraphGetValue();
    v9 = *Value;
    v10 = *(Value + 8);
    v12 = *(Value + 16);
    v11 = v14 & 1;
  }

  v36 = v9;
  v37 = v10;
  v38 = v12;
  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = v35;
  (*(v4 + 16))(v35, v15, v3);
  if (!AGGraphGetOutputValue() || (v17 & 1) != 0 || v11)
  {
    (*(v7 + 24))(v18, &v36, v3, v7);
    v19 = (v34 + 1);
    v20 = v34 == -1;
    *(v2 + 8) = v19;
    v21 = v37;
    if (v37 != -1 && !v20)
    {
      v22 = v19;
      if (v37)
      {
        v22 = v19;
        if (v19 != -1)
        {
          v22 = merge32(_:_:)(v37, v19);
        }
      }

      v37 = v22;
      v21 = v22;
    }

    v23 = v38;
    v24 = *(v38 + 2);
    if (v24)
    {
      v25 = 0;
      v26 = 32;
      do
      {
        if (v25 >= *(v23 + 2))
        {
          __break(1u);
LABEL_32:
          __break(1u);
        }

        outlined init with copy of PlatformItem(&v23[v26], &v39);
        if (v42 != -1 && v19 != 0)
        {
          v28 = v19;
          if (v42)
          {
            v28 = v19;
            if (v19 != -1)
            {
              v29 = (~(v19 << 32) + v19 + (v42 << 32)) ^ ((~(v19 << 32) + v19 + (v42 << 32)) >> 22);
              v30 = 9 * ((v29 + ~(v29 << 13)) ^ ((v29 + ~(v29 << 13)) >> 8));
              v31 = (v30 ^ (v30 >> 15)) + ~((v30 ^ (v30 >> 15)) << 27);
              v28 = (v31 >> 31) ^ v31;
            }
          }

          v42 = v28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
        }

        if (v25 >= *(v23 + 2))
        {
          goto LABEL_32;
        }

        ++v25;
        outlined assign with take of PlatformItem(&v39, &v23[v26]);
        v26 += 632;
      }

      while (v24 != v25);
      v38 = v23;
      v21 = v37;
      v18 = v35;
    }

    v39 = v36;
    v40 = v21;
    v41 = v23;
    AGGraphSetOutputValue();
  }

  (*(v4 + 8))(v18, v3);

  return result;
}

void protocol witness for static PreferenceKey.defaultValue.getter in conformance PlatformItems.Key(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
}

Swift::Void __swiftcall _ViewInputs.resetPlatformItemKeys()()
{
  PreferenceKeys.remove(_:)(&type metadata for PlatformItems.Key, &protocol witness table for PlatformItems.Key);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v0, 0, 0);
}

Swift::Void __swiftcall _ViewInputs.resetPlatformItem()()
{
  PreferenceKeys.remove(_:)(&type metadata for PlatformItems.Key, &protocol witness table for PlatformItems.Key);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v0, 0, 0);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(v0, 0);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(v0, 0);
}

void (*_ViewInputs.platformItemsFeatures.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = v5;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
  }

  *v4 = v7;
  return _ViewInputs.platformItemsFeatures.modify;
}

double key path setter for _ViewInputs.platformItemsFeatures : _ViewInputs(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *, __n128))
{
  v7 = *a1;

  (a5)(a2, v7, &v9);

  return result;
}

void (*_ViewInputs.platformItemFeatures.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = v5;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
  }

  *v4 = v7;
  return _ViewInputs.platformItemFeatures.modify;
}

void _ViewInputs.platformItemsFeatures.modify(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, void *, __n128))
{
  v5 = *a1;
  v6 = **a1;

  if (a2)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = v5 + 2;
  }

  (a3)(v5[3], v6, v7);

  free(v5);
}

double key path setter for _ViewInputs.requestsPlatformItems : _ViewInputs(char *a1, Swift::UInt *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a2, v3);

  return result;
}

void (*_ViewInputs.requestsPlatformItems.modify(uint64_t *a1))(Swift::UInt ***a1)
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
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _ViewInputs.requestsPlatformItems.modify;
}

void _ViewInputs.requestsPlatformItems.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(v1[2], v2);

  free(v1);
}

uint64_t _ViewOutputs.FirstItem.value.getter@<X0>(uint64_t a2@<X8>)
{
  if (*(*(AGGraphGetValue() + 16) + 16))
  {
    result = AGGraphGetValue();
    v4 = *(result + 16);
    if (*(v4 + 16))
    {

      return outlined init with copy of PlatformItem(v4 + 32, a2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOi0_(&v13);
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 320) = 1;
    *(a2 + 328) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 376) = 0u;
    *(a2 + 392) = 0u;
    *(a2 + 408) = 0u;
    *(a2 + 424) = 0u;
    *(a2 + 440) = 0u;
    *(a2 + 456) = 0u;
    *(a2 + 472) = 0u;
    *(a2 + 488) = 0u;
    *(a2 + 504) = 0u;
    *(a2 + 520) = 0u;
    *(a2 + 536) = 0u;
    *(a2 + 552) = 0u;
    *(a2 + 568) = 0u;
    *(a2 + 584) = 0u;
    *(a2 + 600) = 0u;
    *(a2 + 609) = 0u;
    v5 = MEMORY[0x1E69E7CC0];
    *(a2 + 304) = xmmword_18DD85500;
    *a2 = &outlined read-only object #0 of _ViewOutputs.FirstItem.value.getter;
    *(a2 + 8) = v5;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 28) = 0;
    v28[12] = v25;
    v28[13] = v26;
    v28[14] = v27;
    v28[8] = v21;
    v28[9] = v22;
    v28[10] = v23;
    v28[11] = v24;
    v28[4] = v17;
    v28[5] = v18;
    v28[6] = v19;
    v28[7] = v20;
    v28[0] = v13;
    v28[1] = v14;
    v28[2] = v15;
    v28[3] = v16;
    result = outlined destroy of PlatformItem.PrimaryContent?(v28, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent);
    v6 = v26;
    *(a2 + 224) = v25;
    *(a2 + 240) = v6;
    *(a2 + 256) = v27;
    v7 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v7;
    v8 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v8;
    v9 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v9;
    v10 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v10;
    v11 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
    v12 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v12;
  }

  return result;
}

unint64_t specialized _ViewOutputs.makePlatformItem<A>(inputs:itemRule:)(uint64_t a1, uint64_t a2)
{

  return specialized _ViewOutputs.makePlatformItem<A>(inputs:itemRule:)(a1, a2, protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase, lazy protocol witness table accessor for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule, specialized closure #1 in closure #1 in Attribute.init<A>(_:), &type metadata for GlassEffectPlatformItemModifier.GlassPlatformItemRule);
}

unint64_t specialized _ViewOutputs.makePlatformItem<A>(inputs:itemRule:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 48);
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v8);
  if (result)
  {
    result = PreferenceKeys._index(of:)(&type metadata for PlatformItems.Key);
    v17 = *(v8 + 16);
    if (result != v17)
    {
      if (result >= v17)
      {
        __break(1u);
      }

      if (*(v8 + 16 * result + 32) == &type metadata for PlatformItems.Key)
      {
        a3(result, v10, v11, v12, v13, v14, v15, v16);
        a4();
        v18 = Attribute.init<A>(body:value:flags:update:)();
        return PreferencesOutputs.subscript.setter(v18, &type metadata for PlatformItems.Key, &protocol witness table for PlatformItems.Key);
      }
    }
  }

  return result;
}

unint64_t _ViewOutputs.makePlatformItem<A>(inputs:itemRule:)(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    return _s7SwiftUI18PreferencesOutputsV20makePreferenceWriter6inputs3key5valueyAA0C6InputsV_xm14AttributeGraph0L0Vy5ValueQzGyXKtAA0F3KeyRzlFAA13PlatformItemsV0O033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v1, v2, partial apply for implicit closure #1 in _ViewOutputs.makePlatformItem<A>(inputs:itemRule:));
  }

  return result;
}

uint64_t implicit closure #1 in _ViewOutputs.makePlatformItem<A>(inputs:itemRule:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v9[2] = a2;
  v9[3] = v5;
  type metadata accessor for PlatformItem.PrimaryContent?(0, &lazy cache variable for type metadata for Attribute<PlatformItems>, &type metadata for PlatformItems, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in Attribute.init<A>(_:)partial apply, v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v10;
}

_DWORD *PlatformItemRuleConfiguration.phase.getter@<X0>(_DWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t (*PlatformItemRuleConfiguration.phase.modify(_DWORD *a1))(_DWORD *a1)
{
  a1[2] = *v1;
  *a1 = *AGGraphGetValue();
  return GraphHost.Data.phase.modify;
}

uint64_t (*PlatformItemRuleConfiguration.$phase.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return DefaultLayoutResponderFilter.$children.modify;
}

void PlatformItemRuleConfiguration.geometry.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + 28) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    AGGraphGetValue();
  }

  *a1 = v3;
}

unint64_t PlatformItemRuleConfiguration.$geometry.getter()
{
  LODWORD(v1) = *(v0 + 28);
  v2 = v1 == *MEMORY[0x1E698D3F8];
  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v2 << 32);
}

uint64_t PlatformItemRuleConfiguration.$geometry.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 28) = v2;
  return result;
}

uint64_t (*PlatformItemRuleConfiguration.$geometry.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 28);
  v3 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v4 = v2 == v3;
  if (v2 == v3)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v5 = v4;
  *(a1 + 12) = v5;
  return PlatformItemRuleConfiguration.$geometry.modify;
}

_BYTE *PlatformItemRuleConfiguration.$geometry.modify(_BYTE *result)
{
  v1 = result + 8;
  if (result[12])
  {
    v1 = result + 16;
  }

  *(*result + 28) = *v1;
  return result;
}

double PlatformItemRuleConfiguration.tracker.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 32);
  *a1 = result;
  return result;
}

double PlatformItemRuleConfiguration.tracker.setter(double *a1)
{
  result = *a1;
  *(v1 + 32) = *a1;
  return result;
}

void *PlatformItemRuleConfiguration.init(inputs:kind:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v20 = *a1;
  v21 = v4;
  v5 = a1[3];
  v22 = a1[2];
  v23 = v5;
  v24 = a1[4];
  v25 = *(a1 + 20);
  v6 = *a2;
  v7 = DWORD2(v21);
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v20, v19);
  if (v8)
  {
    v9 = *(v8 + 72);
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x1E698D3F8];
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v20, v19);
  if (v11)
  {
    v12 = *(v11 + 72);
  }

  else
  {
    v12 = 0;
  }

  v13 = *v10;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v20, v19);
  if (v14)
  {
    v15 = *(v14 + 72);
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v19) = 0;
  BYTE4(v19) = 1;
  v17 = 0;
  v18 = 1;
  if ((v12 & 0x20) != 0)
  {
    v13 = specialized getter of geometry #1 in PlatformItemRuleConfiguration.init(inputs:kind:)(&v17, &v19, &v20);
  }

  result = outlined destroy of _ViewInputs(&v20);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v12;
  *(a3 + 24) = v6;
  *(a3 + 25) = v15;
  *(a3 + 28) = v13;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

uint64_t specialized getter of anchor #1 in PlatformItemRuleConfiguration.init(inputs:kind:)(_BYTE *a1, _DWORD *a2)
{
  if (a1[4] != 1)
  {
    return *a1;
  }

  AGGraphCreateOffsetAttribute2();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (())?(0, &lazy cache variable for type metadata for Anchor<CGRect>, type metadata accessor for CGRect, type metadata accessor for Anchor);
  lazy protocol witness table accessor for type PlatformItem.GeometryContent.InitAnchor and conformance PlatformItem.GeometryContent.InitAnchor();
  v3 = Attribute.init<A>(body:value:flags:update:)();
  swift_beginAccess();
  result = v3;
  *a1 = v3;
  a1[4] = 0;
  return result;
}

uint64_t specialized getter of geometry #1 in PlatformItemRuleConfiguration.init(inputs:kind:)(_BYTE *a1, _BYTE *a2, _DWORD *a3)
{
  if (a1[4] != 1)
  {
    return *a1;
  }

  specialized getter of anchor #1 in PlatformItemRuleConfiguration.init(inputs:kind:)(a2, a3);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type PlatformItem.GeometryContent.Init and conformance PlatformItem.GeometryContent.Init();
  v4 = Attribute.init<A>(body:value:flags:update:)();
  swift_beginAccess();
  result = v4;
  *a1 = v4;
  a1[4] = 0;
  return result;
}

Swift::Void __swiftcall PlatformItemRule.updateValue()()
{
  v2 = v1;
  v3 = v0;
  v149 = *MEMORY[0x1E69E9840];
  v4 = _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOi0_(&v134);
  v5 = *(v2 + 24);
  v5(&v64, v3, v2, v4);
  v6 = v65;
  (*(v2 + 16))(&v119, v3, v2);
  if ((v119 & ~v6) != 0)
  {
    v7 = 0;
    v131 = v146;
    v132 = v147;
    v133 = v148;
    v127 = v142;
    v128 = v143;
    v130 = v145;
    v129 = v144;
    v8 = v137;
    v123 = v138;
    v124 = v139;
    v126 = v141;
    v125 = v140;
    v119 = v134;
    v120 = v135;
    v9 = v136;
  }

  else
  {
    v7 = (*(v2 + 48))(&v64, v3, v2);
    _ViewInputs.base.modify();
    v131 = v76;
    v132 = v77;
    v133 = v78;
    v127 = v72;
    v128 = v73;
    v130 = v75;
    v129 = v74;
    v123 = v68;
    v124 = v69;
    v126 = v71;
    v125 = v70;
    v119 = v64;
    v120 = v65;
    v9 = v66;
    v8 = v67;
  }

  v122 = v8;
  v121 = v9;
  v32 = v5;
  (v5)(&v64, v3, v2);
  v10 = *AGGraphGetValue();
  v11 = *(v2 + 40);
  v13 = v11(&v104, v3, v2);
  v14 = v10 >> 1;
  if (v10 >> 1 == *(v12 + 36) && (v15 = *(v12 + 32)) != 0)
  {
    v16 = 0;
  }

  else
  {
    v15 = static ViewIdentity.nextSeed;
    v16 = 1;
    if ((static ViewIdentity.nextSeed + 1) > 1)
    {
      v17 = static ViewIdentity.nextSeed + 1;
    }

    else
    {
      v17 = 1;
    }

    static ViewIdentity.nextSeed = v17;
    *(v12 + 32) = v15;
    *(v12 + 36) = v14;
  }

  v13(&v104, 0);
  if (AGGraphGetOutputValue())
  {
    v18 = v16;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 | v7))
  {
    v19 = v11(&v64, v3, v2);
    ++*(v20 + 40);
    v19(&v64, 0);
    v21 = MEMORY[0x1E69E6F90];
    type metadata accessor for PlatformItem.PrimaryContent?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewIdentity>, &type metadata for ViewIdentity, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_18DDA6EB0;
    *(v22 + 32) = v15;
    v32(&v104, v3, v2);
    v31 = BYTE8(v105);
    v32(&v49, v3, v2);
    v30 = v50;
    v32(&v34, v3, v2);
    v29 = BYTE9(v35);
    v32(&v64, v3, v2);
    v23 = DWORD2(v66);
    v81 = 0u;
    v82 = 0u;
    v83 = xmmword_18DD85500;
    v84 = 1;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    memset(v102, 0, sizeof(v102));
    *&v64 = v22;
    type metadata accessor for PlatformItem.PrimaryContent?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem.StaticKind>, &type metadata for PlatformItem.StaticKind, v21);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18DDA6EB0;
    *(v24 + 32) = v31;
    *(&v64 + 1) = v24;
    *&v65 = v30;
    BYTE8(v65) = v29;
    HIDWORD(v65) = v23;
    v103[12] = v146;
    v103[13] = v147;
    v103[14] = v148;
    v103[8] = v142;
    v103[9] = v143;
    v103[11] = v145;
    v103[10] = v144;
    v103[4] = v138;
    v103[5] = v139;
    v103[7] = v141;
    v103[6] = v140;
    v103[0] = v134;
    v103[1] = v135;
    v103[3] = v137;
    v103[2] = v136;
    outlined destroy of PlatformItem.PrimaryContent?(v103, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent);
    v78 = v146;
    v79 = v147;
    v80 = v148;
    v74 = v142;
    v75 = v143;
    v76 = v144;
    v77 = v145;
    v70 = v138;
    v71 = v139;
    v72 = v140;
    v73 = v141;
    v66 = v134;
    v67 = v135;
    v68 = v136;
    v69 = v137;
    v116 = v131;
    v117 = v132;
    v118 = v133;
    v112 = v127;
    v113 = v128;
    v115 = v130;
    v114 = v129;
    v108 = v123;
    v109 = v124;
    v111 = v126;
    v110 = v125;
    v104 = v119;
    v105 = v120;
    v107 = v122;
    v106 = v121;
    if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v104) != 1)
    {
      v46 = v78;
      v47 = v79;
      v48 = v80;
      v42 = v74;
      v43 = v75;
      v44 = v76;
      v45 = v77;
      v38 = v70;
      v39 = v71;
      v40 = v72;
      v41 = v73;
      v34 = v66;
      v35 = v67;
      v36 = v68;
      v37 = v69;
      v61 = v131;
      v62 = v132;
      v63 = v133;
      v57 = v127;
      v58 = v128;
      v59 = v129;
      v60 = v130;
      v53 = v123;
      v54 = v124;
      v55 = v125;
      v56 = v126;
      v49 = v119;
      v50 = v120;
      v51 = v121;
      v52 = v122;
      outlined init with copy of PlatformItem.PrimaryContent(&v49, v33);
      outlined destroy of PlatformItem.PrimaryContent?(&v34, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent);
      v78 = v131;
      v79 = v132;
      v80 = v133;
      v74 = v127;
      v75 = v128;
      v76 = v129;
      v77 = v130;
      v70 = v123;
      v71 = v124;
      v72 = v125;
      v73 = v126;
      v66 = v119;
      v67 = v120;
      v68 = v121;
      v69 = v122;
    }

    v32(&v49, v3, v2);
    if (HIDWORD(v50) != *MEMORY[0x1E698D3F8])
    {
      v25 = *AGGraphGetValue();

      *&v81 = v25;
    }

    v32(&v49, v3, v2);
    v26 = *(&v49 + 1);
    v27 = HIDWORD(v65);
    type metadata accessor for PlatformItem.PrimaryContent?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem>, &type metadata for PlatformItem, MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_18DDA6EB0;
    outlined init with copy of PlatformItem(&v64, v28 + 32);
    *&v49 = v26;
    DWORD2(v49) = v27;
    *&v50 = v28;
    AGGraphSetOutputValue();
    outlined destroy of PlatformItem.PrimaryContent?(&v119, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent);

    outlined destroy of PlatformItem(&v64);
  }

  else
  {
    outlined destroy of PlatformItem.PrimaryContent?(&v119, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent);
  }
}

double *PlatformItem.GeometryContent.InitAnchor.value.getter()
{
  v1 = *v0;
  v16 = *(v0 + 4);
  if (one-time initialization token for one != -1)
  {
    swift_once();
  }

  v2 = static UnitRect.one;
  v3 = xmmword_1ED52E568;
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v5 = Value[1];
  v6 = *&v2 * *Value;
  v7 = *&v3 * *Value;
  v17 = v1;
  v18 = v16;
  v8 = CGRect.prepare(geometry:)(&v17, v6, *(&v2 + 1) * v5, v7, *(&v3 + 1) * v5);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  type metadata accessor for AnchorValueBox<UnitRect>(0, &lazy cache variable for type metadata for AnchorValueBox<UnitRect>, &type metadata for UnitRect, &protocol witness table for UnitRect, type metadata accessor for AnchorValueBox);
  result = swift_allocObject();
  result[2] = v8;
  *(result + 3) = v10;
  *(result + 4) = v12;
  *(result + 5) = v14;
  return result;
}

double *protocol witness for Rule.value.getter in conformance PlatformItem.GeometryContent.InitAnchor@<X0>(double **a1@<X8>)
{
  result = PlatformItem.GeometryContent.InitAnchor.value.getter();
  *a1 = result;
  return result;
}

char *PlatformItem.GeometryContent.Init.value.getter@<X0>(char **a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  v3 = AGCreateWeakAttribute();
  *a1 = v2;
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v2);
  v5 = result;
  *a1 = result;
  v7 = *(result + 2);
  v6 = *(result + 3);
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, result);
    v5 = result;
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v3;
  *a1 = v5;
  return result;
}

id PlatformItemsGenerator.init(strategy:source:inputs:inputsIncludeGeometry:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 96) = *MEMORY[0x1E698D3F8];
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a9 + 104) = result;
    v21[0] = a5;
    v21[1] = a6;
    v21[2] = a7;
    v21[3] = a8;
    type metadata accessor for PlatformItemsGenerator(0, v21);
    (*(a7 + 16))(a5, a7);
    result = (*(*(a5 - 8) + 8))(a1, a5);
    v19 = *(a3 + 48);
    *(a9 + 40) = *(a3 + 32);
    *(a9 + 56) = v19;
    *(a9 + 72) = *(a3 + 64);
    v20 = *(a3 + 16);
    *(a9 + 8) = *a3;
    *a9 = a2;
    *(a9 + 88) = *(a3 + 80);
    *(a9 + 24) = v20;
    *(a9 + 92) = a4 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformItemsGenerator.updateValue()(uint64_t a1)
{
  v2 = v1;
  v44 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for Optional();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - v9;
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v37 - v13;
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v37 - v16;
  OutputValue = AGGraphGetOutputValue();
  v41 = v5;
  v42 = v4;
  if (OutputValue)
  {
    v19 = *(v2 + 96);
  }

  else
  {
    v37[1] = *(v2 + 104);
    v37[0] = implicit closure #1 in PlatformItemsGenerator.updateValue()(v2, v5, *(a1 + 24), v4, *(a1 + 40));
    v37[2] = AGGraphClearUpdate();
    v20 = AGSubgraphGetCurrent();
    v38 = v2;
    v21 = v20;
    v22 = AGSubgraphSetCurrent();
    v19 = (v37[0])(v22);
    AGSubgraphSetCurrent();

    v2 = v38;
    AGGraphSetUpdate();

    *(v2 + 96) = v19;
  }

  if (v19 == *MEMORY[0x1E698D3F8])
  {
    (*(v11 + 56))(v10, 1, 1, TupleTypeMetadata2);
    v23 = *(TupleTypeMetadata2 + 48);
    (*(v42 + 16))();
    v14[v23] = 0;
    if ((*(v11 + 48))(v10, 1, TupleTypeMetadata2) != 1)
    {
      (*(v39 + 8))(v10, v40);
    }
  }

  else
  {
    Value = AGGraphGetValue();
    v26 = v25;
    v27 = *(TupleTypeMetadata2 + 48);
    (*(v43 + 16))(v10, Value, AssociatedTypeWitness);
    v10[v27] = v26 & 1;
    (*(v11 + 56))(v10, 0, 1, TupleTypeMetadata2);
    (*(v11 + 32))(v14, v10, TupleTypeMetadata2);
  }

  v28 = v14[*(TupleTypeMetadata2 + 48)];
  (*(v43 + 32))(v17, v14, AssociatedTypeWitness);
  v30 = v41;
  v29 = v42;
  v31 = (*(v42 + 40))(v2 + *(a1 + 68), v17, v41, v42);
  v32 = AGGraphGetOutputValue();
  if (!v32 || (v28 & v31 & 1) != 0)
  {
    v33 = MEMORY[0x1EEE9AC00](v32);
    v37[-2] = a1;
    swift_getWitnessTable(protocol conformance descriptor for PlatformItemsGenerator<A, B>, a1, v33);
    v37[-1] = v34;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, partial apply for closure #1 in StatefulRule.value.setter, &v37[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v35);
  }

  $defer #1 <A, B>() in PlatformItemsGenerator.updateValue()(v2, v17, v30, *(a1 + 24), v29, *(a1 + 40));
  return (*(v43 + 8))(v17, AssociatedTypeWitness);
}

uint64_t (*implicit closure #1 in PlatformItemsGenerator.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for PlatformItemsGenerator(0, v18);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return partial apply for implicit closure #2 in implicit closure #1 in PlatformItemsGenerator.updateValue();
}

uint64_t PlatformItemsGenerator.makeContent()(void *a1)
{
  v2 = v1;
  v60 = *MEMORY[0x1E69E9840];
  if (*(v1 + 92) == 1)
  {
    v4 = *(v1 + 14);
    *&v58[16] = *(v1 + 10);
    *&v58[32] = v4;
    *&v58[48] = *(v1 + 18);
    v59 = v1[22];
    v5 = *(v1 + 6);
    v57 = *(v1 + 2);
    *v58 = v5;
    _ViewInputs.withoutGeometryDependencies.getter(&v54);
    v6 = v54;
    v7 = DWORD2(v54);
    v8 = *v55;
    v9 = *&v55[8];
    v10 = *&v55[24];
    v11 = *&v55[40];
    v12 = *&v55[56];
    v13 = v56;
  }

  else
  {
    v14 = *(v1 + 18);
    v15 = *(v1 + 10);
    *&v58[32] = *(v1 + 14);
    *&v58[48] = v14;
    v16 = *(v1 + 2);
    *v58 = *(v1 + 6);
    *&v58[16] = v15;
    v57 = v16;
    v13 = v1[22];
    v59 = v13;
    v12 = *(&v14 + 1);
    v31 = *&v58[24];
    v32 = *&v58[40];
    v30 = *&v58[8];
    v8 = *v58;
    v7 = DWORD2(v16);
    v6 = v16;
    outlined init with copy of _ViewInputs(&v57, &v54);
    v9 = v30;
    v10 = v31;
    v11 = v32;
  }

  *&v57 = v6;
  DWORD2(v57) = v7;
  *v58 = v8;
  *&v58[8] = v9;
  *&v58[24] = v10;
  *&v58[40] = v11;
  *&v58[56] = v12;
  v59 = v13;
  v17 = *(&v10 + 1);
  *&v54 = *(&v10 + 1);
  v18 = PreferenceKeys._index(of:)(&type metadata for PlatformItems.Key);

  v19 = *(v17 + 16);
  if (v18 != v19)
  {
    if (v18 >= v19)
    {
      __break(1u);
    }

    if (*(v17 + 16 * v18 + 32) == &type metadata for PlatformItems.Key)
    {
      specialized Array.remove(at:)(v18);
    }
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(&v57, 0, 0);

  v20 = a1[2];
  v21 = a1[4];
  (*(v21 + 48))(&v57, v20, v21);
  v22 = a1[3];
  _GraphValue.init(_:)(*v2, &v34);
  v23 = v34;
  *&v55[16] = *&v58[16];
  *&v55[32] = *&v58[32];
  *&v55[48] = *&v58[48];
  v56 = v59;
  v54 = v57;
  *v55 = *v58;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v46 = *&v55[16];
  v47 = *&v55[32];
  v48 = *&v55[48];
  v49 = v56;
  v44 = v54;
  v45 = *v55;
  v25 = *&v55[16];
  LODWORD(v46) = 0;
  LODWORD(v36[0]) = v23;
  v50[0] = v54;
  v50[1] = *v55;
  v51 = v56;
  v50[3] = *&v55[32];
  v50[4] = *&v55[48];
  v50[2] = v46;
  v40 = v46;
  v41 = *&v55[32];
  v42 = *&v55[48];
  v43 = v56;
  v38 = v54;
  v39 = *v55;
  v26 = a1[5];
  v27 = *(v26 + 24);
  outlined init with copy of _ViewInputs(&v54, v52);
  outlined init with copy of _ViewInputs(v50, v52);
  v27(v35, v36, &v38, v22, v26);
  v52[2] = v40;
  v52[3] = v41;
  v52[4] = v42;
  v53 = v43;
  v52[0] = v38;
  v52[1] = v39;
  outlined destroy of _ViewInputs(v52);
  LODWORD(v46) = v25;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v35, &v44);
    AGSubgraphEndTreeElement();
  }

  v36[2] = v46;
  v36[3] = v47;
  v36[4] = v48;
  v37 = v49;
  v36[0] = v44;
  v36[1] = v45;
  outlined destroy of _ViewInputs(v36);
  v33[0] = v35[0];
  v33[1] = v35[1];
  v28 = (*(v21 + 56))(v33, v20, v21);
  v40 = *&v58[16];
  v41 = *&v58[32];
  v42 = *&v58[48];
  v43 = v59;
  v38 = v57;
  v39 = *v58;
  outlined destroy of _ViewInputs(&v38);

  return v28;
}

uint64_t $defer #1 <A, B>() in PlatformItemsGenerator.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v8 = *(type metadata accessor for PlatformItemsGenerator(0, v11) + 68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 24))(a1 + v8, a2, AssociatedTypeWitness);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance PlatformItemsGenerator<A, B>@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

uint64_t _ViewInputs.makePlatformItemsGenerator<A, B>(strategy:source:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a4;
  v29 = a6;
  v30 = a2;
  v27 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v35 = v12;
  *(&v35 + 1) = v13;
  *&v36 = v14;
  *(&v36 + 1) = v15;
  v16 = type metadata accessor for PlatformItemsGenerator(0, &v35);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  v20 = v6[3];
  v37 = v6[2];
  v38 = v20;
  v39 = v6[4];
  v40 = *(v6 + 20);
  v21 = v6[1];
  v35 = *v6;
  v36 = v21;
  (*(v9 + 16))(v11, v27, a3);
  v33[2] = v37;
  v33[3] = v38;
  v33[4] = v39;
  v34 = v40;
  v33[0] = v35;
  v33[1] = v36;
  outlined init with copy of _ViewInputs(&v35, &v32);
  PlatformItemsGenerator.init(strategy:source:inputs:inputsIncludeGeometry:)(v11, v30, v33, 1, a3, v28, a5, v29, v19);
  v31[2] = swift_getAssociatedTypeWitness();
  v31[3] = v16;
  swift_getWitnessTable(protocol conformance descriptor for PlatformItemsGenerator<A, B>, v16);
  v31[4] = v22;
  v23 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v31, v16, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  (*(v17 + 8))(v19, v16);
  return LODWORD(v33[0]);
}

uint64_t static ChildrenPlatformItemModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v16 = *(a2 + 32);
  v17 = v9;
  v11 = *(a2 + 48);
  v18 = *(a2 + 64);
  v12 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v12;
  v20[2] = v16;
  v20[3] = v11;
  v20[4] = *(a2 + 64);
  v13 = *a1;
  v19 = *(a2 + 80);
  v21 = *(a2 + 80);
  v20[0] = v15[0];
  v20[1] = v10;
  a3(a6);
  LODWORD(v20[0]) = v13;
  return static ChildrenPlatformItemModifier.transformPlatformItemsOutputs(_:inputs:modifier:)(a6, v15, v20, a4, a5);
}

uint64_t static ChildrenPlatformItemModifier.transformPlatformItemsOutputs(_:inputs:modifier:)(uint64_t *a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v10);
  if (result)
  {
    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
    result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v9, v26);
    if (result)
    {
      if ((*(result + 73) & 2) != 0)
      {
        if (*(*(a4 - 8) + 64))
        {
          closure #1 in static ChildrenPlatformItemModifier.transformPlatformItemsOutputs(_:inputs:modifier:)(1, a4, a5, v13);
        }

        OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
        v26 = v9;
        v27 = *(a2 + 8);
        v28 = *(a2 + 24);
        v29 = *(a2 + 40);
        v30 = v10;
        v31 = v11;
        v32 = *(a2 + 60);
        v33 = *(a2 + 76);
        v15 = _ViewInputs.makePlatformItemsGenerator<A, B>(strategy:source:)(OffsetAttribute2, OffsetAttribute2, &type metadata for MultiPassthroughPlatformItemsStrategy, a4, &protocol witness table for MultiPassthroughPlatformItemsStrategy, a5);
        v16 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(*a1);
        v17 = *MEMORY[0x1E698D3F8];
        if ((v16 & 0x100000000) == 0)
        {
          v17 = v16;
        }

        v26 = __PAIR64__(v17, v15);
        MEMORY[0x1EEE9AC00](v16);
        v23 = type metadata accessor for ChildrenPlatformItemModifier.ItemsTransform(0, a4, a5, v18);
        swift_getWitnessTable(protocol conformance descriptor for ChildrenPlatformItemModifier<A>.ItemsTransform, v23);
        v24 = v19;
        type metadata accessor for PlatformItem.PrimaryContent?(0, &lazy cache variable for type metadata for Attribute<PlatformItems>, &type metadata for PlatformItems, MEMORY[0x1E698D388]);
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v26, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_17, &v22, v23, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
        LOBYTE(v26) = 0;
        return PreferencesOutputs.subscript.setter(v25, &type metadata for PlatformItems.Key, &protocol witness table for PlatformItems.Key);
      }
    }
  }

  return result;
}

uint64_t closure #1 in static ChildrenPlatformItemModifier.transformPlatformItemsOutputs(_:inputs:modifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for ChildrenPlatformItemModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

void ChildrenPlatformItemModifier.ItemsTransform.items.getter(unint64_t a1@<X0>, void *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    v3 = 0;
    v4 = 0;
    a2[1] = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v3 = *Value;
    *(a2 + 2) = *(Value + 8);
  }

  *a2 = v3;
  a2[2] = v4;
}

void ChildrenPlatformItemModifier.ItemsTransform.value.getter(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ChildrenPlatformItemModifier.ItemsTransform.items.getter(a1, &v18);
  v2 = v20;
  v15 = v18;
  v16 = v19;
  if (v20)
  {
    v3 = v20;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = 0;
    v6 = 32;
    while (1)
    {
      v11 = AGCreateWeakAttribute();
      if (v5 >= *(v3 + 2))
      {
        break;
      }

      v12 = v11;
      outlined init with copy of PlatformItem(&v3[v6], &v18);
      v22 = v12;
      v23 = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      }

      if (v5 >= *(v3 + 2))
      {
        goto LABEL_24;
      }

      outlined assign with take of PlatformItem(&v18, &v3[v6]);
      if (v5 >= *(v3 + 2))
      {
        goto LABEL_25;
      }

      outlined init with copy of PlatformItem(&v3[v6], &v18);
      if (v21 != -1)
      {
        if (v21)
        {
          v7 = ((v21 << 32) - 0x100000000) ^ (((v21 << 32) - 0x100000000) >> 22);
          v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
          v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
          v10 = (v9 >> 31) ^ v9;
        }

        else
        {
          v10 = 1;
        }

        v21 = v10;
      }

      ++v5;
      outlined assign with take of PlatformItem(&v18, &v3[v6]);
      v6 += 632;
      if (v4 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_17:
    v13 = v15;
    if (!v2)
    {
      v13 = 0;
    }

    *a2 = v13;
    if (v2)
    {
      v14 = v16;
    }

    else
    {
      v14 = 0;
    }

    *(a2 + 8) = v14;
    *(a2 + 16) = v3;
  }
}

uint64_t View.platformItemsChildren<A>(content:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ChildrenPlatformItemModifier(0, v10, v11, v10);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  a1(v14);
  (*(v7 + 32))(v16, v9, a4);
  View.modifier<A>(_:)();
  return (*(v13 + 8))(v16, v12);
}

uint64_t static PlatformItemsTextRepresentable.representationOptions(inputs:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v3, v6);
  if (result)
  {
    v5 = (*(result + 72) >> 4) & 1 | (2 * ((*(result + 72) & 0xC00) != 0));
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t PlatformItemsTextRepresentable.PlatformItemContent.makeContent()(uint64_t a1)
{
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v13);
  v6 = v13[9];
  *(a1 + 152) = v13[8];
  *(a1 + 168) = v6;
  *(a1 + 184) = v14[0];
  *(a1 + 195) = *(v14 + 11);
  v7 = v13[5];
  *(a1 + 88) = v13[4];
  *(a1 + 104) = v7;
  v8 = v13[7];
  *(a1 + 120) = v13[6];
  *(a1 + 136) = v8;
  v9 = v13[1];
  *(a1 + 24) = v13[0];
  *(a1 + 40) = v9;
  v10 = v13[3];
  *(a1 + 56) = v13[2];
  *(a1 + 72) = v10;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v5;
  v11 = v5;
  return v4 & 1;
}

uint64_t PlatformItemsImageRepresentable.PlatformItemContent.makeContent()(uint64_t a1)
{
  Value = AGGraphGetValue();
  v4 = v3;
  v32 = *Value;
  v5 = Value[4];
  v7 = Value[1];
  v6 = Value[2];
  v35 = Value[3];
  v36 = v5;
  v33 = v7;
  v34 = v6;
  v8 = Value[8];
  v10 = Value[5];
  v9 = Value[6];
  v39 = Value[7];
  v40 = v8;
  v37 = v10;
  v38 = v9;
  v11 = Value[12];
  v13 = Value[9];
  v12 = Value[10];
  *&v42[16] = Value[11];
  v43 = v11;
  v41 = v13;
  *v42 = v12;
  v14 = *(&v11 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v44);
  v15 = v44[9];
  *(a1 + 152) = v44[8];
  *(a1 + 168) = v15;
  *(a1 + 184) = v45[0];
  *(a1 + 195) = *(v45 + 11);
  v16 = v44[5];
  *(a1 + 88) = v44[4];
  *(a1 + 104) = v16;
  v17 = v44[7];
  *(a1 + 120) = v44[6];
  *(a1 + 136) = v17;
  v18 = v44[1];
  *(a1 + 24) = v44[0];
  *(a1 + 40) = v18;
  v19 = v44[3];
  *(a1 + 56) = v44[2];
  *(a1 + 72) = v19;
  *(a1 + 216) = 0;
  v54 = v40;
  v55 = v41;
  v56[0] = *v42;
  *(v56 + 11) = *&v42[11];
  v50 = v36;
  v51 = v37;
  v52 = v38;
  v53 = v39;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  _ViewInputs.base.modify();
  v20 = *(a1 + 168);
  v57[8] = *(a1 + 152);
  v57[9] = v20;
  v58[0] = *(a1 + 184);
  *(v58 + 11) = *(a1 + 195);
  v21 = *(a1 + 104);
  v57[4] = *(a1 + 88);
  v57[5] = v21;
  v22 = *(a1 + 136);
  v57[6] = *(a1 + 120);
  v57[7] = v22;
  v23 = *(a1 + 40);
  v57[0] = *(a1 + 24);
  v57[1] = v23;
  v24 = *(a1 + 72);
  v57[2] = *(a1 + 56);
  v57[3] = v24;
  outlined init with copy of PlatformImageRepresentableContext(&v32, v31);
  outlined init with copy of Image.Resolved(&v32, v31);
  outlined destroy of PlatformItem.PrimaryContent?(v57, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved);
  v25 = v55;
  *(a1 + 152) = v54;
  *(a1 + 168) = v25;
  *(a1 + 184) = v56[0];
  *(a1 + 195) = *(v56 + 11);
  v26 = v51;
  *(a1 + 88) = v50;
  *(a1 + 104) = v26;
  v27 = v53;
  *(a1 + 120) = v52;
  *(a1 + 136) = v27;
  v28 = v47;
  *(a1 + 24) = v46;
  *(a1 + 40) = v28;
  v29 = v49;
  *(a1 + 56) = v48;
  *(a1 + 72) = v29;
  *(a1 + 224) = 1;

  outlined destroy of PlatformImageRepresentableContext(&v32);
  *(a1 + 232) = v14;
  return v4 & 1;
}

char *specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(char *result, uint64_t a2, int64_t a3, uint64_t a4)
{
  v4 = *(result + 3);
  if (v4 < 0)
  {
    goto LABEL_47;
  }

  v5 = a2;
  if (a2 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v4 < a3)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v9 = *a4;
  v8 = *(a4 + 8);
  v10 = *a4 == v8;
  v11 = a2 == a3;
  if (a2 != a3 && v9 != v8)
  {
    v12 = result;
    v13 = v8 - 1;
    while (1)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (*(a4 + 16))
      {
        v14 = v9 >> 6;
        if (v9 >> 6 < 0)
        {
          goto LABEL_43;
        }

        v15 = *(a4 + 32);
        if (v14 >= *(v15 + 16))
        {
          goto LABEL_44;
        }

        v16 = *(v15 + 8 * v14 + 32);
        v17 = 1 << v9;
      }

      else
      {
        if (v9 < 0)
        {
          goto LABEL_42;
        }

        v16 = *(a4 + 24);
        v17 = 1 << v9;
        if (v9 >= 0x40)
        {
          v17 = 0;
        }
      }

      v18 = v16 & v17;
      if ((*v12 & 1) == 0)
      {
        break;
      }

      v19 = *(v12 + 2);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        v19 = result;
      }

      v20 = v5 >> 6;
      if (v5 >> 6 < 0)
      {
        goto LABEL_45;
      }

      if (v20 >= *(v19 + 2))
      {
        goto LABEL_46;
      }

      v21 = &v19[8 * v20];
      v22 = 1 << (v5 & 0x3F);
      v23 = *(v21 + 4);
      v24 = v23 & ~v22;
      v25 = v23 | v22;
      if (!v18)
      {
        v25 = v24;
      }

      *(v21 + 4) = v25;
      *(v12 + 2) = v19;
LABEL_29:
      if (v5 >= v4)
      {
        goto LABEL_39;
      }

      v28 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_40;
      }

      if (v9 >= *(a4 + 40))
      {
        goto LABEL_41;
      }

      v10 = v13 == v9;
      v29 = v28 == a3;
      v11 = v28 == a3;
      if (!v29)
      {
        ++v5;
        v29 = v13 == v9++;
        if (!v29)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    if (v5 < 0x40)
    {
      v26 = 1 << v5;
      if (v18)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v26 = 0;
      if (v18)
      {
LABEL_25:
        v27 = *(v12 + 1) | v26;
LABEL_28:
        *(v12 + 1) = v27;
        goto LABEL_29;
      }
    }

    v27 = *(v12 + 1) & ~v26;
    goto LABEL_28;
  }

LABEL_35:
  if (!v11)
  {
    goto LABEL_50;
  }

  if (!v10)
  {
LABEL_51:
    __break(1u);
  }

  return result;
}

uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  if ((a2 & 0x8000000000000000) != 0 || (v4 = result, v5 = *(result + 16), *(v5 + 16) < a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = a2;
  v7 = *a4;
  v8 = a4[1];
  v9 = *a4 == v8;
  v10 = a2 == a3;
  if (a2 != a3 && v7 != v8)
  {
    v11 = 632 * a2 + 32;
    v12 = a3 - 1;
    v13 = 632 * v7 + 32;
    v14 = v8 - 1;
    v15 = *a4;
    while (v15 < v8)
    {
      if (v7 < 0)
      {
        goto LABEL_19;
      }

      v16 = a4[4];
      if (v15 >= *(v16 + 16))
      {
        goto LABEL_20;
      }

      outlined init with copy of PlatformItem(v16 + v13, v19);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
        v5 = result;
      }

      if (v6 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      result = outlined assign with take of PlatformItem(v19, v5 + v11);
      *(v4 + 16) = v5;
      v9 = v14 == v15;
      v10 = v12 == v6;
      if (v12 != v6)
      {
        ++v6;
        v11 += 632;
        v13 += 632;
        if (v14 != v15++)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (!v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v9)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t specialized MutableCollection<>._partitionImpl(by:)(uint64_t result, uint64_t a2)
{
  v28 = a2;
  v4 = *(v2 + 3);
  if (v4 < 1)
  {
    return 0;
  }

  else
  {
    v5 = result;
    v6 = 0;
    v7 = *(v2 + 3);
LABEL_3:
    v24 = v4;
    if (v4 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    while (1)
    {
      v9 = *v2;
      v11 = *(v2 + 1);
      v10 = *(v2 + 2);
      if (*v2)
      {
        v12 = v6 >> 6;
        if (v6 >> 6 < 0)
        {
          goto LABEL_39;
        }

        if (v12 >= *(v10 + 16))
        {
          goto LABEL_40;
        }

        v13 = *(v10 + 8 * v12 + 32) & (1 << v6);
      }

      else
      {
        v14 = 1 << v6;
        if (v6 >= 0x40)
        {
          v14 = 0;
        }

        v13 = v11 & v14;
      }

      v25[0] = v13 != 0;
      result = v5(v25);
      if (v3)
      {
        return v6;
      }

      if (result)
      {
        break;
      }

      if (v8 == v6)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (++v6 >= v7)
      {
        return v6;
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 - 1;
      if (v15 < 1 || v15 > v24)
      {
        break;
      }

      if (v6 >= v7)
      {
        return v6;
      }

      if (v9)
      {
        if (v7 >> 6 >= *(v10 + 16))
        {
          goto LABEL_42;
        }

        v16 = *(v10 + 32 + 8 * (v7 >> 6)) & (1 << v7);
      }

      else
      {
        v17 = 1 << v7;
        if (v7 >= 0x40)
        {
          v17 = 0;
        }

        v16 = v17 & v11;
      }

      v25[0] = v16 != 0;
      result = v5(v25);
      v15 = v7;
      if ((result & 1) == 0)
      {
        if (v6 != v7)
        {
          v18 = *(v2 + 8);
          v19 = *(v2 + 3);
          v25[0] = *v2;
          v26 = v18;
          v27 = v19;
          v20 = BitVector.subscript.getter(v6);
          v21 = *(v2 + 8);
          v22 = *(v2 + 3);
          v25[0] = *v2;
          v26 = v21;
          v27 = v22;
          v23 = BitVector.subscript.getter(v7);
          BitVector.subscript.setter(v23, v6);
          result = BitVector.subscript.setter(v20, v7);
        }

        if (v6 < 0)
        {
          goto LABEL_43;
        }

        v4 = *(v2 + 3);
        if (v6 >= v4)
        {
          goto LABEL_43;
        }

        if (++v6 < v7)
        {
          goto LABEL_3;
        }

        return v6;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t (*specialized MutableCollection<>._partitionImpl(by:)(uint64_t (*result)(_BYTE *)))(_BYTE *)
{
  v3 = *(*(v1 + 16) + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
LABEL_3:
  v6 = 632 * v5 + 32;
  v7 = v5;
  while (1)
  {
    if (v5 < 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v8 = *(v13 + 16);
    if (v7 >= *(v8 + 16))
    {
      goto LABEL_20;
    }

    outlined init with copy of PlatformItem(v8 + v6, v12);
    v9 = v4(v12);
    result = outlined destroy of PlatformItem(v12);
    if (v2)
    {
      return v7;
    }

    if (v9)
    {
      break;
    }

    ++v7;
    v6 += 632;
    if (v7 >= v3)
    {
      return v7;
    }
  }

  v10 = v8 + 632 * v3 - 600;
  while (v7 < --v3)
  {
    if (v3 >= *(v8 + 16))
    {
      goto LABEL_21;
    }

    outlined init with copy of PlatformItem(v10, v12);
    v11 = v4(v12);
    result = outlined destroy of PlatformItem(v12);
    v10 -= 632;
    if ((v11 & 1) == 0)
    {
      result = specialized MutableCollection.swapAt(_:_:)(v7, v3);
      v5 = v7 + 1;
      if (v7 + 1 < v3)
      {
        goto LABEL_3;
      }

      return ++v7;
    }
  }

  return v7;
}

double outlined copy of PlatformItem.SelectionContent?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t outlined consume of PlatformItem.SelectionContent?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t outlined init with copy of PlatformItem.PrimaryContent?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for PlatformItem.PrimaryContent?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of PlatformItem.AccessibilityContent?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlatformItem.PrimaryContent?(0, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, &type metadata for PlatformItem.AccessibilityContent, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PlatformItem.PrimaryContent?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for PlatformItem.PrimaryContent?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for PlatformItem.PrimaryContent?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized static PlatformItemsTextRepresentable.shouldMakeRepresentation(inputs:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[6];
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v2))
  {
    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
    v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v1, v5);
    if (v3)
    {
      if ((*(v3 + 72) & 2) != 0)
      {
        return 1;
      }
    }
  }

  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v2) & 1) == 0)
  {
    return 0;
  }

  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v1, v5);
  if (result)
  {
    return *(result + 72) & 1;
  }

  return result;
}

uint64_t specialized static PlatformItemsImageRepresentable.shouldMakeRepresentation(inputs:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[6];
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v2))
  {
    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
    v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v1, v5);
    if (v3)
    {
      if ((*(v3 + 72) & 4) != 0)
      {
        return 1;
      }
    }
  }

  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v2) & 1) == 0)
  {
    return 0;
  }

  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v1, v5);
  if (result)
  {
    return *(result + 72) & 1;
  }

  return result;
}

unint64_t specialized static PlatformItemsImageRepresentable.makeRepresentation(inputs:context:outputs:)(uint64_t a1, int a2)
{
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v12[4] = *(a1 + 64);
  v13 = *(a1 + 80);
  v5 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v5;
  v7[0] = 1;
  outlined init with copy of _ViewInputs(v12, &v8);
  PlatformItemRuleConfiguration.init(inputs:kind:)(a1, v7, &v14);
  *&v7[4] = v14;
  *&v7[20] = v15[0];
  *&v7[32] = *(v15 + 12);
  v8 = a2;
  v9 = *v7;
  v10 = *&v7[16];
  v11 = *(v15 + 12);
  return specialized _ViewOutputs.makePlatformItem<A>(inputs:itemRule:)(v12, &v8, protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase, lazy protocol witness table accessor for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent, specialized closure #1 in closure #1 in Attribute.init<A>(_:), &unk_1F009B188);
}

unint64_t specialized static PlatformItemsTextRepresentable.makeRepresentation(inputs:context:outputs:)(uint64_t a1, int a2)
{
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v12[4] = *(a1 + 64);
  v13 = *(a1 + 80);
  v5 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v5;
  v7[0] = 0;
  outlined init with copy of _ViewInputs(v12, &v8);
  PlatformItemRuleConfiguration.init(inputs:kind:)(a1, v7, &v14);
  *&v7[4] = v14;
  *&v7[20] = v15[0];
  *&v7[32] = *(v15 + 12);
  v8 = a2;
  v9 = *v7;
  v10 = *&v7[16];
  v11 = *(v15 + 12);
  return specialized _ViewOutputs.makePlatformItem<A>(inputs:itemRule:)(v12, &v8, protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase, lazy protocol witness table accessor for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent, specialized closure #1 in closure #1 in Attribute.init<A>(_:), &unk_1F009B108);
}

void lazy protocol witness table accessor for type PlatformItems.Features and conformance PlatformItems.Features()
{
  if (!lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItems.Features, &type metadata for PlatformItems.Features, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItems.Features, &type metadata for PlatformItems.Features, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItems.Features, &type metadata for PlatformItems.Features, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItems.Features, &type metadata for PlatformItems.Features, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features);
  }
}

void lazy protocol witness table accessor for type PlatformItems and conformance PlatformItems()
{
  if (!lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItems, &type metadata for PlatformItems, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItems, &type metadata for PlatformItems, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItems, &type metadata for PlatformItems, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItems, &type metadata for PlatformItems, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItems, &type metadata for PlatformItems, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems);
  }
}

void lazy protocol witness table accessor for type Slice<PlatformItems> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  if (!*a1)
  {
    type metadata accessor for Slice<PlatformItems>(255, &lazy cache variable for type metadata for Slice<PlatformItems>, MEMORY[0x1E69E74D0]);
    v7 = v6;
    v9 = a2();
    swift_getWitnessTable(a3, v7, &v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type Slice<PlatformItems> and conformance Slice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for Slice<PlatformItems>(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void type metadata accessor for Slice<PlatformItems>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type PlatformItems and conformance PlatformItems();
    v7 = a3(a1, &type metadata for PlatformItems, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void lazy protocol witness table accessor for type PlatformItem.Features and conformance PlatformItem.Features()
{
  if (!lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItem.Features, &type metadata for PlatformItem.Features, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItem.Features, &type metadata for PlatformItem.Features, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItem.Features, &type metadata for PlatformItem.Features, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItem.Features, &type metadata for PlatformItem.Features, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features);
  }
}

void lazy protocol witness table accessor for type PlatformItem.ID and conformance PlatformItem.ID()
{
  if (!lazy protocol witness table cache variable for type PlatformItem.ID and conformance PlatformItem.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItem.ID, &type metadata for PlatformItem.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItem.ID and conformance PlatformItem.ID);
  }
}

void lazy protocol witness table accessor for type PlatformItem.StaticKind and conformance PlatformItem.StaticKind()
{
  if (!lazy protocol witness table cache variable for type PlatformItem.StaticKind and conformance PlatformItem.StaticKind)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItem.StaticKind, &type metadata for PlatformItem.StaticKind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItem.StaticKind and conformance PlatformItem.StaticKind);
  }
}

void lazy protocol witness table accessor for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options()
{
  if (!lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItem.SelectionContent.Options, &type metadata for PlatformItem.SelectionContent.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItem.SelectionContent.Options, &type metadata for PlatformItem.SelectionContent.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItem.SelectionContent.Options, &type metadata for PlatformItem.SelectionContent.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItem.SelectionContent.Options, &type metadata for PlatformItem.SelectionContent.Options, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options);
  }
}

void lazy protocol witness table accessor for type PlatformItem.GeometryContent.InitAnchor and conformance PlatformItem.GeometryContent.InitAnchor()
{
  if (!lazy protocol witness table cache variable for type PlatformItem.GeometryContent.InitAnchor and conformance PlatformItem.GeometryContent.InitAnchor)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItem.GeometryContent.InitAnchor, &type metadata for PlatformItem.GeometryContent.InitAnchor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItem.GeometryContent.InitAnchor and conformance PlatformItem.GeometryContent.InitAnchor);
  }
}

void lazy protocol witness table accessor for type PlatformItem.GeometryContent.Init and conformance PlatformItem.GeometryContent.Init()
{
  if (!lazy protocol witness table cache variable for type PlatformItem.GeometryContent.Init and conformance PlatformItem.GeometryContent.Init)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItem.GeometryContent.Init, &type metadata for PlatformItem.GeometryContent.Init, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItem.GeometryContent.Init and conformance PlatformItem.GeometryContent.Init);
  }
}

void *keypath_get_4Tm@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void, _BYTE *)@<X3>, void *a3@<X8>)
{
  result = a2(&v6, *a1, v5);
  *a3 = v6;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PlatformItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for PlatformItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for PlatformItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

double destroy for PlatformItem(uint64_t a1)
{

  v2 = *(a1 + 32);
  if (v2 != 1)
  {

    v3 = *(a1 + 184);
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v4 = *(a1 + 64);
      if (v4 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 56), v4);
      }

      if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 168), *(a1 + 176), v3, *(a1 + 192));
      }

      swift_unknownObjectRelease();
    }
  }

  if (*(a1 + 304) != 1)
  {
    swift_unknownObjectRelease();
  }

  if (*(a1 + 608))
  {

    v6 = *(a1 + 416);
    if (v6)
    {
      if (v6 == 1)
      {
LABEL_16:
        if (*(a1 + 568) != 1)
        {
        }

        return result;
      }

      __swift_destroy_boxed_opaque_existential_1((a1 + 392));
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItem(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 7);
  v5 = a2 + 4;
  v6 = a2[4];

  if (v6 == 1)
  {
    v7 = *(v5 + 13);
    *(a1 + 224) = *(v5 + 12);
    *(a1 + 240) = v7;
    *(a1 + 256) = *(v5 + 14);
    v8 = *(v5 + 9);
    *(a1 + 160) = *(v5 + 8);
    *(a1 + 176) = v8;
    v9 = *(v5 + 11);
    *(a1 + 192) = *(v5 + 10);
    *(a1 + 208) = v9;
    v10 = *(v5 + 5);
    *(a1 + 96) = *(v5 + 4);
    *(a1 + 112) = v10;
    v11 = *(v5 + 7);
    *(a1 + 128) = *(v5 + 6);
    *(a1 + 144) = v11;
    v12 = *(v5 + 1);
    *(a1 + 32) = *v5;
    *(a1 + 48) = v12;
    v13 = *(v5 + 3);
    *(a1 + 64) = *(v5 + 2);
    *(a1 + 80) = v13;
  }

  else
  {
    v14 = a2[5];
    v15 = a2[6];
    *(a1 + 32) = v6;
    *(a1 + 40) = v14;
    *(a1 + 48) = v15;
    v16 = a2[23];
    v17 = v6;
    v18 = v14;
    v19 = v15;
    if (v16 >> 1 == 4294967294)
    {
      *(a1 + 184) = *(a2 + 23);
      *(a1 + 200) = *(a2 + 25);
      *(a1 + 216) = *(a2 + 27);
      *(a1 + 227) = *(a2 + 227);
      *(a1 + 120) = *(a2 + 15);
      *(a1 + 136) = *(a2 + 17);
      *(a1 + 152) = *(a2 + 19);
      *(a1 + 168) = *(a2 + 21);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 104) = *(a2 + 13);
    }

    else
    {
      v20 = *(a2 + 64);
      if (v20 == 255)
      {
        *(a1 + 56) = a2[7];
        *(a1 + 64) = *(a2 + 64);
      }

      else
      {
        v21 = a2[7];
        outlined copy of GraphicsImage.Contents(v21, *(a2 + 64));
        *(a1 + 56) = v21;
        *(a1 + 64) = v20;
        v16 = a2[23];
      }

      *(a1 + 72) = a2[9];
      *(a1 + 80) = *(a2 + 5);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 100) = *(a2 + 100);
      *(a1 + 113) = *(a2 + 113);
      v22 = *(a2 + 9);
      *(a1 + 128) = *(a2 + 8);
      *(a1 + 144) = v22;
      *(a1 + 160) = *(a2 + 80);
      *(a1 + 162) = *(a2 + 162);
      *(a1 + 163) = *(a2 + 163);
      if (v16 >> 1 == 0xFFFFFFFF)
      {
        *(a1 + 168) = *(a2 + 21);
        *(a1 + 184) = *(a2 + 23);
      }

      else
      {
        v23 = a2[21];
        v24 = a2[22];
        v25 = a2[24];
        outlined copy of AccessibilityImageLabel(v23, v24, v16, v25);
        *(a1 + 168) = v23;
        *(a1 + 176) = v24;
        *(a1 + 184) = v16;
        *(a1 + 192) = v25;
      }

      v26 = a2[26];
      *(a1 + 200) = a2[25];
      *(a1 + 208) = v26;
      *(a1 + 216) = *(a2 + 108);
      *(a1 + 220) = *(a2 + 55);
      *(a1 + 224) = *(a2 + 224);
      v27 = a2[29];
      *(a1 + 232) = v27;
      *(a1 + 240) = *(a2 + 120);
      *(a1 + 242) = *(a2 + 242);
      swift_unknownObjectRetain();

      v28 = v27;
    }

    *(a1 + 248) = a2[31];
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = a2[33];
  }

  *(a1 + 272) = a2[34];
  v29 = a2[38];

  if (v29 == 1)
  {
    v30 = *(a2 + 37);
    *(a1 + 280) = *(a2 + 35);
    *(a1 + 296) = v30;
  }

  else
  {
    *(a1 + 280) = a2[35];
    *(a1 + 288) = *(a2 + 18);
    *(a1 + 304) = v29;
    swift_unknownObjectRetain();
  }

  *(a1 + 312) = a2[39];
  *(a1 + 320) = *(a2 + 320);
  if (!a2[76])
  {
    memcpy((a1 + 328), a2 + 41, 0x129uLL);
    return a1;
  }

  v31 = a2[42];
  *(a1 + 328) = a2[41];
  *(a1 + 336) = v31;
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = a2[44];
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 23);
  *(a1 + 384) = *(a2 + 384);
  v32 = (a1 + 392);
  v33 = a2 + 49;
  v34 = a2[52];

  if (!v34)
  {
    v36 = *(a2 + 51);
    *v32 = *v33;
    *(a1 + 408) = v36;
    *(a1 + 424) = a2[53];
LABEL_23:
    *(a1 + 432) = a2[54];

    goto LABEL_24;
  }

  if (v34 != 1)
  {
    v37 = a2[53];
    *(a1 + 416) = v34;
    *(a1 + 424) = v37;
    (**(v34 - 8))(a1 + 392, a2 + 49, v34);
    goto LABEL_23;
  }

  v35 = *(a2 + 51);
  *v32 = *v33;
  *(a1 + 408) = v35;
  *(a1 + 424) = *(a2 + 53);
LABEL_24:
  *(a1 + 440) = a2[55];
  *(a1 + 448) = *(a2 + 448);
  v38 = (a1 + 456);
  v39 = a2 + 57;
  v40 = a2[71];
  if (v40 == 1)
  {
    v41 = *(a2 + 71);
    *(a1 + 552) = *(a2 + 69);
    *(a1 + 568) = v41;
    *(a1 + 584) = *(a2 + 73);
    *(a1 + 600) = *(a2 + 600);
    v42 = *(a2 + 63);
    *(a1 + 488) = *(a2 + 61);
    *(a1 + 504) = v42;
    v43 = *(a2 + 67);
    *(a1 + 520) = *(a2 + 65);
    *(a1 + 536) = v43;
    v44 = *(a2 + 59);
    *v38 = *v39;
    *(a1 + 472) = v44;
  }

  else
  {
    *v38 = *v39;
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 472) = a2[59];
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 481) = *(a2 + 481);
    *(a1 + 483) = *(a2 + 483);
    *(a1 + 484) = *(a2 + 484);
    *(a1 + 488) = a2[61];
    v45 = *(a2 + 32);
    *(a1 + 496) = *(a2 + 31);
    *(a1 + 512) = v45;
    *(a1 + 528) = a2[66];
    *(a1 + 536) = *(a2 + 268);
    *(a1 + 544) = *(a2 + 34);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = v40;
    *(a1 + 576) = *(a2 + 36);
    *(a1 + 592) = a2[74];
    *(a1 + 600) = *(a2 + 600);
  }

  *(a1 + 608) = a2[76];
  *(a1 + 616) = a2[77];
  *(a1 + 624) = *(a2 + 624);

  return a1;
}

uint64_t assignWithCopy for PlatformItem(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 7);
  v7 = a2 + 4;
  v6 = a2[4];
  if (v5 == 1)
  {
    if (v6 == 1)
    {
      v8 = *v7;
      v9 = *(a2 + 4);
      *(a1 + 48) = *(a2 + 3);
      *(a1 + 64) = v9;
      *v4 = v8;
      v10 = *(a2 + 5);
      v11 = *(a2 + 6);
      v12 = *(a2 + 8);
      *(a1 + 112) = *(a2 + 7);
      *(a1 + 128) = v12;
      *(a1 + 80) = v10;
      *(a1 + 96) = v11;
      v13 = *(a2 + 9);
      v14 = *(a2 + 10);
      v15 = *(a2 + 12);
      *(a1 + 176) = *(a2 + 11);
      *(a1 + 192) = v15;
      *(a1 + 144) = v13;
      *(a1 + 160) = v14;
      v16 = *(a2 + 13);
      v17 = *(a2 + 14);
      v18 = *(a2 + 16);
      *(a1 + 240) = *(a2 + 15);
      *(a1 + 256) = v18;
      *(a1 + 208) = v16;
      *(a1 + 224) = v17;
    }

    else
    {
      *(a1 + 32) = v6;
      v30 = a2[5];
      *(a1 + 40) = v30;
      v31 = a2[6];
      *(a1 + 48) = v31;
      v32 = a2[23];
      v33 = v6;
      v34 = v30;
      v35 = v31;
      if (v32 >> 1 == 4294967294)
      {
        v36 = *(a2 + 7);
        v37 = *(a2 + 9);
        v38 = *(a2 + 11);
        *(a1 + 104) = *(a2 + 13);
        *(a1 + 88) = v38;
        *(a1 + 72) = v37;
        *(a1 + 56) = v36;
        v39 = *(a2 + 15);
        v40 = *(a2 + 17);
        v41 = *(a2 + 19);
        *(a1 + 168) = *(a2 + 21);
        *(a1 + 152) = v41;
        *(a1 + 136) = v40;
        *(a1 + 120) = v39;
        v42 = *(a2 + 23);
        v43 = *(a2 + 25);
        v44 = *(a2 + 27);
        *(a1 + 227) = *(a2 + 227);
        *(a1 + 216) = v44;
        *(a1 + 200) = v43;
        *(a1 + 184) = v42;
      }

      else
      {
        v62 = *(a2 + 64);
        if (v62 == 255)
        {
          v79 = a2[7];
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 56) = v79;
        }

        else
        {
          v63 = a2[7];
          outlined copy of GraphicsImage.Contents(v63, *(a2 + 64));
          *(a1 + 56) = v63;
          *(a1 + 64) = v62;
        }

        *(a1 + 72) = a2[9];
        *(a1 + 80) = *(a2 + 5);
        *(a1 + 96) = *(a2 + 96);
        v80 = *(a2 + 100);
        *(a1 + 113) = *(a2 + 113);
        *(a1 + 100) = v80;
        v81 = *(a2 + 8);
        v82 = *(a2 + 9);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 128) = v81;
        *(a1 + 144) = v82;
        *(a1 + 161) = *(a2 + 161);
        *(a1 + 162) = *(a2 + 162);
        *(a1 + 163) = *(a2 + 163);
        v83 = a2[23];
        if (v83 >> 1 == 0xFFFFFFFF)
        {
          v84 = *(a2 + 21);
          *(a1 + 184) = *(a2 + 23);
          *(a1 + 168) = v84;
        }

        else
        {
          v85 = a2[21];
          v86 = a2[22];
          v87 = a2[24];
          outlined copy of AccessibilityImageLabel(v85, v86, a2[23], v87);
          *(a1 + 168) = v85;
          *(a1 + 176) = v86;
          *(a1 + 184) = v83;
          *(a1 + 192) = v87;
        }

        *(a1 + 200) = a2[25];
        *(a1 + 208) = a2[26];
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 217) = *(a2 + 217);
        v88 = *(a2 + 55);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 220) = v88;
        v89 = a2[29];
        *(a1 + 232) = v89;
        *(a1 + 240) = *(a2 + 120);
        *(a1 + 242) = *(a2 + 242);
        swift_unknownObjectRetain();

        v90 = v89;
      }

      *(a1 + 248) = a2[31];
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = a2[33];
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 32);
    v20 = *(a2 + 3);
    v19 = *(a2 + 4);
    *v4 = *v7;
    *(a1 + 48) = v20;
    *(a1 + 64) = v19;
    v21 = *(a2 + 8);
    v23 = *(a2 + 5);
    v22 = *(a2 + 6);
    *(a1 + 112) = *(a2 + 7);
    *(a1 + 128) = v21;
    *(a1 + 80) = v23;
    *(a1 + 96) = v22;
    v24 = *(a2 + 12);
    v26 = *(a2 + 9);
    v25 = *(a2 + 10);
    *(a1 + 176) = *(a2 + 11);
    *(a1 + 192) = v24;
    *(a1 + 144) = v26;
    *(a1 + 160) = v25;
    v27 = *(a2 + 16);
    v29 = *(a2 + 13);
    v28 = *(a2 + 14);
    *(a1 + 240) = *(a2 + 15);
    *(a1 + 256) = v27;
    *(a1 + 208) = v29;
    *(a1 + 224) = v28;
  }

  else
  {
    *(a1 + 32) = v6;
    v45 = v6;

    v46 = *(a1 + 40);
    v47 = a2[5];
    *(a1 + 40) = v47;
    v48 = v47;

    v49 = *(a1 + 48);
    v50 = a2[6];
    *(a1 + 48) = v50;
    v51 = v50;

    v52 = a2[23] & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 184) >> 1 == 4294967294)
    {
      if (v52 == 0x1FFFFFFFCLL)
      {
        v53 = *(a2 + 7);
        v54 = *(a2 + 9);
        v55 = *(a2 + 11);
        *(a1 + 104) = *(a2 + 13);
        *(a1 + 88) = v55;
        *(a1 + 72) = v54;
        *(a1 + 56) = v53;
        v56 = *(a2 + 15);
        v57 = *(a2 + 17);
        v58 = *(a2 + 19);
        *(a1 + 168) = *(a2 + 21);
        *(a1 + 152) = v58;
        *(a1 + 136) = v57;
        *(a1 + 120) = v56;
        v59 = *(a2 + 23);
        v60 = *(a2 + 25);
        v61 = *(a2 + 27);
        *(a1 + 227) = *(a2 + 227);
        *(a1 + 216) = v61;
        *(a1 + 200) = v60;
        *(a1 + 184) = v59;
      }

      else
      {
        v73 = *(a2 + 64);
        if (v73 == 255)
        {
          v91 = a2[7];
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 56) = v91;
        }

        else
        {
          v74 = a2[7];
          outlined copy of GraphicsImage.Contents(v74, *(a2 + 64));
          *(a1 + 56) = v74;
          *(a1 + 64) = v73;
        }

        *(a1 + 72) = a2[9];
        *(a1 + 80) = *(a2 + 5);
        *(a1 + 96) = *(a2 + 96);
        v92 = *(a2 + 100);
        *(a1 + 113) = *(a2 + 113);
        *(a1 + 100) = v92;
        v93 = *(a2 + 8);
        v94 = *(a2 + 9);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 128) = v93;
        *(a1 + 144) = v94;
        *(a1 + 161) = *(a2 + 161);
        *(a1 + 162) = *(a2 + 162);
        *(a1 + 163) = *(a2 + 163);
        v95 = a2[23];
        if (v95 >> 1 == 0xFFFFFFFF)
        {
          v96 = *(a2 + 21);
          *(a1 + 184) = *(a2 + 23);
          *(a1 + 168) = v96;
        }

        else
        {
          v97 = a2[21];
          v98 = a2[22];
          v99 = a2[24];
          outlined copy of AccessibilityImageLabel(v97, v98, a2[23], v99);
          *(a1 + 168) = v97;
          *(a1 + 176) = v98;
          *(a1 + 184) = v95;
          *(a1 + 192) = v99;
        }

        *(a1 + 200) = a2[25];
        *(a1 + 208) = a2[26];
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 217) = *(a2 + 217);
        v100 = *(a2 + 55);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 220) = v100;
        v101 = a2[29];
        *(a1 + 232) = v101;
        *(a1 + 240) = *(a2 + 120);
        *(a1 + 242) = *(a2 + 242);
        swift_unknownObjectRetain();

        v102 = v101;
      }
    }

    else if (v52 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(a1 + 56);
      v64 = *(a2 + 9);
      v65 = *(a2 + 11);
      v66 = *(a2 + 13);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 104) = v66;
      *(a1 + 88) = v65;
      *(a1 + 72) = v64;
      v67 = *(a2 + 17);
      v68 = *(a2 + 19);
      v69 = *(a2 + 21);
      *(a1 + 120) = *(a2 + 15);
      *(a1 + 168) = v69;
      *(a1 + 152) = v68;
      *(a1 + 136) = v67;
      v70 = *(a2 + 25);
      v71 = *(a2 + 27);
      v72 = *(a2 + 227);
      *(a1 + 184) = *(a2 + 23);
      *(a1 + 227) = v72;
      *(a1 + 216) = v71;
      *(a1 + 200) = v70;
    }

    else
    {
      v75 = *(a2 + 64);
      if (*(a1 + 64) == 255)
      {
        if (v75 == 255)
        {
          v105 = a2[7];
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 56) = v105;
        }

        else
        {
          v103 = a2[7];
          outlined copy of GraphicsImage.Contents(v103, *(a2 + 64));
          *(a1 + 56) = v103;
          *(a1 + 64) = v75;
        }
      }

      else if (v75 == 255)
      {
        outlined destroy of GraphicsImage.Contents(a1 + 56);
        v104 = *(a2 + 64);
        *(a1 + 56) = a2[7];
        *(a1 + 64) = v104;
      }

      else
      {
        v76 = a2[7];
        outlined copy of GraphicsImage.Contents(v76, *(a2 + 64));
        v77 = *(a1 + 56);
        *(a1 + 56) = v76;
        v78 = *(a1 + 64);
        *(a1 + 64) = v75;
        outlined consume of GraphicsImage.Contents(v77, v78);
      }

      *(a1 + 72) = a2[9];
      *(a1 + 80) = a2[10];
      *(a1 + 88) = a2[11];
      *(a1 + 96) = *(a2 + 96);
      v106 = *(a2 + 100);
      *(a1 + 113) = *(a2 + 113);
      *(a1 + 100) = v106;
      v107 = *(a2 + 8);
      v108 = *(a2 + 9);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 128) = v107;
      *(a1 + 144) = v108;
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 162) = *(a2 + 162);
      *(a1 + 163) = *(a2 + 163);
      v109 = a2[23];
      v110 = v109 & 0xFFFFFFFFFFFFFFFELL;
      if (*(a1 + 184) >> 1 == 0xFFFFFFFFLL)
      {
        if (v110 == 0x1FFFFFFFELL)
        {
          v111 = *(a2 + 21);
          *(a1 + 184) = *(a2 + 23);
          *(a1 + 168) = v111;
        }

        else
        {
          v113 = a2[21];
          v114 = a2[22];
          v115 = a2[24];
          outlined copy of AccessibilityImageLabel(v113, v114, a2[23], v115);
          *(a1 + 168) = v113;
          *(a1 + 176) = v114;
          *(a1 + 184) = v109;
          *(a1 + 192) = v115;
        }
      }

      else if (v110 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(a1 + 168);
        v112 = *(a2 + 23);
        *(a1 + 168) = *(a2 + 21);
        *(a1 + 184) = v112;
      }

      else
      {
        v116 = a2[21];
        v117 = a2[22];
        v118 = a2[24];
        outlined copy of AccessibilityImageLabel(v116, v117, a2[23], v118);
        v119 = *(a1 + 168);
        v120 = *(a1 + 176);
        v121 = *(a1 + 184);
        v122 = *(a1 + 192);
        *(a1 + 168) = v116;
        *(a1 + 176) = v117;
        *(a1 + 184) = v109;
        *(a1 + 192) = v118;
        outlined consume of AccessibilityImageLabel(v119, v120, v121, v122);
      }

      *(a1 + 200) = a2[25];
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 208) = a2[26];

      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      v123 = *(a2 + 55);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 220) = v123;
      v124 = *(a1 + 232);
      v125 = a2[29];
      *(a1 + 232) = v125;
      v126 = v125;

      *(a1 + 240) = *(a2 + 120);
      *(a1 + 242) = *(a2 + 242);
    }

    *(a1 + 248) = a2[31];

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = a2[33];
  }

  *(a1 + 272) = a2[34];

  v127 = (a1 + 280);
  v128 = a2 + 35;
  v129 = a2[38];
  if (*(a1 + 304) == 1)
  {
    if (v129 == 1)
    {
      v130 = *(a2 + 37);
      *v127 = *v128;
      *(a1 + 296) = v130;
    }

    else
    {
      *(a1 + 280) = a2[35];
      *(a1 + 288) = a2[36];
      *(a1 + 296) = a2[37];
      *(a1 + 304) = a2[38];
      swift_unknownObjectRetain();
    }
  }

  else if (v129 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 280);
    v131 = *(a2 + 37);
    *v127 = *v128;
    *(a1 + 296) = v131;
  }

  else
  {
    *(a1 + 280) = *(a2 + 70);
    *(a1 + 284) = *(a2 + 71);
    *(a1 + 288) = *(a2 + 72);
    *(a1 + 292) = *(a2 + 73);
    *(a1 + 296) = a2[37];
    *(a1 + 304) = a2[38];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v132 = a2[39];
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 312) = v132;
  v133 = a2[76];
  if (*(a1 + 608))
  {
    if (v133)
    {
      *(a1 + 328) = a2[41];
      *(a1 + 336) = a2[42];

      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = a2[44];

      *(a1 + 360) = *(a2 + 360);
      v134 = *(a2 + 23);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 368) = v134;
      v135 = (a1 + 392);
      v136 = a2 + 49;
      v137 = *(a1 + 416);
      v138 = a2[52];
      if (v137 != 1)
      {
        if (v138 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 392);
          v148 = *(a2 + 51);
          v147 = *(a2 + 53);
          *v135 = *v136;
          *(a1 + 408) = v148;
          *(a1 + 424) = v147;
        }

        else
        {
          if (v137)
          {
            if (v138)
            {
              __swift_assign_boxed_opaque_existential_1((a1 + 392), a2 + 49, v134);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(a1 + 392);
              v166 = a2[53];
              v167 = *(a2 + 51);
              *v135 = *v136;
              *(a1 + 408) = v167;
              *(a1 + 424) = v166;
            }
          }

          else if (v138)
          {
            *(a1 + 416) = v138;
            *(a1 + 424) = a2[53];
            (**(v138 - 8))(a1 + 392, a2 + 49);
          }

          else
          {
            v168 = *v136;
            v169 = *(a2 + 51);
            *(a1 + 424) = a2[53];
            *v135 = v168;
            *(a1 + 408) = v169;
          }

          *(a1 + 432) = a2[54];
        }

        goto LABEL_83;
      }

      if (v138)
      {
        if (v138 == 1)
        {
          v139 = *v136;
          v140 = *(a2 + 53);
          *(a1 + 408) = *(a2 + 51);
          *(a1 + 424) = v140;
          *v135 = v139;
LABEL_83:
          v170 = a2[55];
          *(a1 + 448) = *(a2 + 448);
          *(a1 + 440) = v170;
          v171 = (a1 + 456);
          v172 = a2 + 57;
          v173 = a2[71];
          if (*(a1 + 568) == 1)
          {
            if (v173 == 1)
            {
              v174 = *(a2 + 59);
              *v171 = *v172;
              *(a1 + 472) = v174;
              v175 = *(a2 + 61);
              v176 = *(a2 + 63);
              v177 = *(a2 + 67);
              *(a1 + 520) = *(a2 + 65);
              *(a1 + 536) = v177;
              *(a1 + 488) = v175;
              *(a1 + 504) = v176;
              v178 = *(a2 + 69);
              v179 = *(a2 + 71);
              v180 = *(a2 + 73);
              *(a1 + 600) = *(a2 + 600);
              *(a1 + 568) = v179;
              *(a1 + 584) = v180;
              *(a1 + 552) = v178;
            }

            else
            {
              v188 = *v172;
              *(a1 + 464) = *(a2 + 464);
              *v171 = v188;
              v189 = a2[59];
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 472) = v189;
              *(a1 + 481) = *(a2 + 481);
              *(a1 + 482) = *(a2 + 482);
              *(a1 + 483) = *(a2 + 483);
              *(a1 + 484) = *(a2 + 484);
              *(a1 + 488) = a2[61];
              *(a1 + 496) = a2[62];
              *(a1 + 504) = a2[63];
              *(a1 + 512) = a2[64];
              *(a1 + 520) = a2[65];
              *(a1 + 528) = a2[66];
              *(a1 + 536) = *(a2 + 536);
              *(a1 + 537) = *(a2 + 537);
              *(a1 + 544) = a2[68];
              *(a1 + 552) = a2[69];
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = a2[71];
              v190 = *(a2 + 36);
              *(a1 + 592) = a2[74];
              *(a1 + 576) = v190;
              *(a1 + 600) = *(a2 + 600);
            }
          }

          else if (v173 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 456);
            v181 = *(a2 + 59);
            *v171 = *v172;
            *(a1 + 472) = v181;
            v182 = *(a2 + 67);
            v184 = *(a2 + 61);
            v183 = *(a2 + 63);
            *(a1 + 520) = *(a2 + 65);
            *(a1 + 536) = v182;
            *(a1 + 488) = v184;
            *(a1 + 504) = v183;
            v186 = *(a2 + 71);
            v185 = *(a2 + 73);
            v187 = *(a2 + 69);
            *(a1 + 600) = *(a2 + 600);
            *(a1 + 568) = v186;
            *(a1 + 584) = v185;
            *(a1 + 552) = v187;
          }

          else
          {
            v191 = *v172;
            *(a1 + 464) = *(a2 + 464);
            *v171 = v191;
            v192 = a2[59];
            *(a1 + 480) = *(a2 + 480);
            *(a1 + 472) = v192;
            *(a1 + 481) = *(a2 + 481);
            *(a1 + 482) = *(a2 + 482);
            *(a1 + 483) = *(a2 + 483);
            *(a1 + 484) = *(a2 + 484);
            *(a1 + 488) = a2[61];
            *(a1 + 496) = a2[62];
            *(a1 + 504) = a2[63];
            *(a1 + 512) = a2[64];
            *(a1 + 520) = a2[65];
            *(a1 + 528) = a2[66];
            *(a1 + 536) = *(a2 + 536);
            *(a1 + 537) = *(a2 + 537);
            *(a1 + 544) = a2[68];
            *(a1 + 552) = a2[69];
            *(a1 + 560) = *(a2 + 560);
            *(a1 + 568) = a2[71];

            v193 = *(a2 + 36);
            *(a1 + 592) = a2[74];
            *(a1 + 576) = v193;
            *(a1 + 600) = *(a2 + 600);
          }

          *(a1 + 608) = a2[76];

          *(a1 + 616) = *(a2 + 154);
          *(a1 + 620) = *(a2 + 155);
          *(a1 + 624) = *(a2 + 624);
          return a1;
        }

        *(a1 + 416) = v138;
        *(a1 + 424) = a2[53];
        (**(v138 - 8))(a1 + 392, a2 + 49);
      }

      else
      {
        v164 = *v136;
        v165 = *(a2 + 51);
        *(a1 + 424) = a2[53];
        *v135 = v164;
        *(a1 + 408) = v165;
      }

      *(a1 + 432) = a2[54];

      goto LABEL_83;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 328);
LABEL_62:
    memcpy((a1 + 328), a2 + 41, 0x129uLL);
    return a1;
  }

  if (!v133)
  {
    goto LABEL_62;
  }

  *(a1 + 328) = a2[41];
  *(a1 + 336) = a2[42];
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = a2[44];
  *(a1 + 360) = *(a2 + 360);
  v141 = *(a2 + 23);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = v141;
  v142 = (a1 + 392);
  v143 = a2 + 49;
  v144 = a2[52];

  if (!v144)
  {
    v149 = *v143;
    v150 = *(a2 + 51);
    *(a1 + 424) = a2[53];
    *v142 = v149;
    *(a1 + 408) = v150;
LABEL_70:
    *(a1 + 432) = a2[54];

    goto LABEL_71;
  }

  if (v144 != 1)
  {
    *(a1 + 416) = v144;
    *(a1 + 424) = a2[53];
    (**(v144 - 8))(a1 + 392, a2 + 49, v144);
    goto LABEL_70;
  }

  v145 = *v143;
  v146 = *(a2 + 53);
  *(a1 + 408) = *(a2 + 51);
  *(a1 + 424) = v146;
  *v142 = v145;
LABEL_71:
  v151 = a2[55];
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 440) = v151;
  v152 = (a1 + 456);
  v153 = a2 + 57;
  if (a2[71] == 1)
  {
    v154 = *(a2 + 59);
    *v152 = *v153;
    *(a1 + 472) = v154;
    v155 = *(a2 + 61);
    v156 = *(a2 + 63);
    v157 = *(a2 + 67);
    *(a1 + 520) = *(a2 + 65);
    *(a1 + 536) = v157;
    *(a1 + 488) = v155;
    *(a1 + 504) = v156;
    v158 = *(a2 + 69);
    v159 = *(a2 + 71);
    v160 = *(a2 + 73);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 568) = v159;
    *(a1 + 584) = v160;
    *(a1 + 552) = v158;
  }

  else
  {
    v161 = *v153;
    *(a1 + 464) = *(a2 + 464);
    *v152 = v161;
    v162 = a2[59];
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 472) = v162;
    *(a1 + 481) = *(a2 + 481);
    *(a1 + 482) = *(a2 + 482);
    *(a1 + 483) = *(a2 + 483);
    *(a1 + 484) = *(a2 + 484);
    *(a1 + 488) = a2[61];
    *(a1 + 496) = a2[62];
    *(a1 + 504) = a2[63];
    *(a1 + 512) = a2[64];
    *(a1 + 520) = a2[65];
    *(a1 + 528) = a2[66];
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 537) = *(a2 + 537);
    *(a1 + 544) = a2[68];
    *(a1 + 552) = a2[69];
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = a2[71];
    v163 = *(a2 + 36);
    *(a1 + 592) = a2[74];
    *(a1 + 576) = v163;
    *(a1 + 600) = *(a2 + 600);
  }

  *(a1 + 608) = a2[76];
  *(a1 + 616) = a2[77];
  *(a1 + 624) = *(a2 + 624);

  return a1;
}

uint64_t assignWithTake for PlatformItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  if (v4 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 32);
LABEL_4:
    v6 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v6;
    *(a1 + 256) = *(a2 + 256);
    v7 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v7;
    v8 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v8;
    v9 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v9;
    v10 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v10;
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
    v12 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v12;
    goto LABEL_21;
  }

  *(a1 + 32) = v4;

  v13 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v14 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  if (*(a1 + 184) >> 1 == 4294967294)
  {
    goto LABEL_8;
  }

  if (*(a2 + 184) >> 1 != 4294967294)
  {
    v15 = *(a1 + 64);
    if (v15 != 255)
    {
      v16 = *(a2 + 64);
      if (v16 != 255)
      {
        v17 = *(a1 + 56);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v16;
        outlined consume of GraphicsImage.Contents(v17, v15);
        goto LABEL_14;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 56);
    }

    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
LABEL_14:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 100) = *(a2 + 100);
    *(a1 + 113) = *(a2 + 113);
    v18 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v18;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 161) = *(a2 + 161);
    v19 = *(a1 + 184);
    *(a1 + 162) = *(a2 + 162);
    if (v19 >> 1 != 0xFFFFFFFF)
    {
      v20 = *(a2 + 184);
      if (v20 >> 1 != 0xFFFFFFFF)
      {
        v21 = *(a2 + 192);
        v22 = *(a1 + 168);
        v23 = *(a1 + 176);
        v24 = *(a1 + 192);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = v20;
        *(a1 + 192) = v21;
        outlined consume of AccessibilityImageLabel(v22, v23, v19, v24);
        goto LABEL_19;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 168);
    }

    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
LABEL_19:
    *(a1 + 200) = *(a2 + 200);
    swift_unknownObjectRelease();
    *(a1 + 208) = *(a2 + 208);

    *(a1 + 216) = *(a2 + 216);
    *(a1 + 217) = *(a2 + 217);
    *(a1 + 220) = *(a2 + 220);
    *(a1 + 224) = *(a2 + 224);
    v25 = *(a1 + 232);
    *(a1 + 232) = *(a2 + 232);

    *(a1 + 240) = *(a2 + 240);
    *(a1 + 242) = *(a2 + 242);
    goto LABEL_20;
  }

  outlined destroy of Image.Resolved(a1 + 56);
LABEL_8:
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 227) = *(a2 + 227);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
LABEL_20:
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);

LABEL_21:
  *(a1 + 272) = *(a2 + 272);

  v26 = (a1 + 280);
  if (*(a1 + 304) == 1)
  {
LABEL_24:
    v28 = *(a2 + 296);
    *v26 = *(a2 + 280);
    *(a1 + 296) = v28;
    goto LABEL_26;
  }

  v27 = *(a2 + 304);
  if (v27 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 280);
    goto LABEL_24;
  }

  *v26 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = v27;
  swift_unknownObjectRelease();
LABEL_26:
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  if (*(a1 + 608))
  {
    if (*(a2 + 608))
    {
      v29 = *(a2 + 336);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 336) = v29;

      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = *(a2 + 352);

      *(a1 + 360) = *(a2 + 360);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 384) = *(a2 + 384);
      v30 = (a1 + 392);
      v31 = (a2 + 392);
      v32 = *(a1 + 416);
      if (v32 != 1)
      {
        v33 = *(a2 + 416);
        if (v33 != 1)
        {
          if (v32)
          {
            v35 = (a1 + 392);
            if (v33)
            {
              __swift_destroy_boxed_opaque_existential_1(v35);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v35);
            }
          }

          v36 = *(a2 + 408);
          *v30 = *v31;
          *(a1 + 408) = v36;
          *(a1 + 424) = *(a2 + 424);
          *(a1 + 432) = *(a2 + 432);

LABEL_39:
          *(a1 + 440) = *(a2 + 440);
          *(a1 + 448) = *(a2 + 448);
          v37 = (a1 + 456);
          v38 = (a2 + 456);
          if (*(a1 + 568) != 1)
          {
            v39 = *(a2 + 568);
            if (v39 != 1)
            {
              *v37 = *v38;
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 481) = *(a2 + 481);
              *(a1 + 483) = *(a2 + 483);
              *(a1 + 484) = *(a2 + 484);
              *(a1 + 488) = *(a2 + 488);
              v44 = *(a2 + 512);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 512) = v44;
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 536) = *(a2 + 536);
              *(a1 + 537) = *(a2 + 537);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = v39;

              *(a1 + 576) = *(a2 + 576);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 600) = *(a2 + 600);
              goto LABEL_44;
            }

            outlined destroy of AccessibilityTextLayoutProperties(a1 + 456);
          }

          v40 = *(a2 + 568);
          *(a1 + 552) = *(a2 + 552);
          *(a1 + 568) = v40;
          *(a1 + 584) = *(a2 + 584);
          *(a1 + 600) = *(a2 + 600);
          v41 = *(a2 + 504);
          *(a1 + 488) = *(a2 + 488);
          *(a1 + 504) = v41;
          v42 = *(a2 + 536);
          *(a1 + 520) = *(a2 + 520);
          *(a1 + 536) = v42;
          v43 = *(a2 + 472);
          *v37 = *v38;
          *(a1 + 472) = v43;
LABEL_44:
          *(a1 + 608) = *(a2 + 608);

          *(a1 + 616) = *(a2 + 616);
          *(a1 + 624) = *(a2 + 624);
          return a1;
        }

        outlined destroy of AccessibilityValueStorage(a1 + 392);
      }

      v34 = *(a2 + 408);
      *v30 = *v31;
      *(a1 + 408) = v34;
      *(a1 + 424) = *(a2 + 424);
      goto LABEL_39;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 328);
  }

  memcpy((a1 + 328), (a2 + 328), 0x129uLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItem(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 625))
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

uint64_t storeEnumTagSinglePayload for PlatformItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 616) = 0;
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
    *(result + 624) = 0;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 625) = 1;
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

    *(result + 625) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for PlatformItem.PrimaryContent(uint64_t a1)
{
  v2 = *(a1 + 152);
  if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v3 = *(a1 + 32);
    if (v3 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(a1 + 24), v3);
    }

    if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(a1 + 136), *(a1 + 144), v2, *(a1 + 160));
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItem.PrimaryContent(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  *(a1 + 16) = v6;
  v7 = *(a2 + 152);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFCLL)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 195) = *(a2 + 195);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v11 = *(a2 + 32);
    if (v11 == 255)
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      v12 = *(a2 + 24);
      outlined copy of GraphicsImage.Contents(v12, *(a2 + 32));
      *(a1 + 24) = v12;
      *(a1 + 32) = v11;
    }

    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
    *(a1 + 81) = *(a2 + 81);
    v13 = *(a2 + 96);
    v14 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 130) = *(a2 + 130);
    *(a1 + 131) = *(a2 + 131);
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
    {
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
    }

    else
    {
      v15 = *(a2 + 136);
      v16 = *(a2 + 144);
      v17 = *(a2 + 160);
      outlined copy of AccessibilityImageLabel(v15, v16, v7, v17);
      *(a1 + 136) = v15;
      *(a1 + 144) = v16;
      *(a1 + 152) = v7;
      *(a1 + 160) = v17;
    }

    v18 = *(a2 + 176);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = v18;
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 188) = *(a2 + 188);
    *(a1 + 192) = *(a2 + 192);
    v19 = *(a2 + 200);
    *(a1 + 200) = v19;
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 210) = *(a2 + 210);
    swift_unknownObjectRetain();

    v20 = v19;
  }

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);

  return a1;
}

uint64_t assignWithCopy for PlatformItem.PrimaryContent(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *(a1 + 16) = v11;
  v12 = v11;

  v13 = *(a2 + 152) & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 152) >> 1 == 4294967294)
  {
    if (v13 == 0x1FFFFFFFCLL)
    {
      v14 = *(a2 + 24);
      v15 = *(a2 + 40);
      v16 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v16;
      *(a1 + 40) = v15;
      *(a1 + 24) = v14;
      v17 = *(a2 + 88);
      v18 = *(a2 + 104);
      v19 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v19;
      *(a1 + 104) = v18;
      *(a1 + 88) = v17;
      v20 = *(a2 + 152);
      v21 = *(a2 + 168);
      v22 = *(a2 + 184);
      *(a1 + 195) = *(a2 + 195);
      *(a1 + 184) = v22;
      *(a1 + 168) = v21;
      *(a1 + 152) = v20;
    }

    else
    {
      v32 = *(a2 + 32);
      if (v32 == 255)
      {
        v38 = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 24) = v38;
      }

      else
      {
        v33 = *(a2 + 24);
        outlined copy of GraphicsImage.Contents(v33, *(a2 + 32));
        *(a1 + 24) = v33;
        *(a1 + 32) = v32;
      }

      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      v39 = *(a2 + 68);
      *(a1 + 81) = *(a2 + 81);
      *(a1 + 68) = v39;
      v40 = *(a2 + 96);
      v41 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 96) = v40;
      *(a1 + 112) = v41;
      *(a1 + 129) = *(a2 + 129);
      *(a1 + 130) = *(a2 + 130);
      *(a1 + 131) = *(a2 + 131);
      v42 = *(a2 + 152);
      if (v42 >> 1 == 0xFFFFFFFF)
      {
        v43 = *(a2 + 136);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 136) = v43;
      }

      else
      {
        v44 = *(a2 + 136);
        v45 = *(a2 + 144);
        v46 = *(a2 + 160);
        outlined copy of AccessibilityImageLabel(v44, v45, *(a2 + 152), v46);
        *(a1 + 136) = v44;
        *(a1 + 144) = v45;
        *(a1 + 152) = v42;
        *(a1 + 160) = v46;
      }

      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 185) = *(a2 + 185);
      v47 = *(a2 + 188);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 188) = v47;
      v48 = *(a2 + 200);
      *(a1 + 200) = v48;
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 210) = *(a2 + 210);
      swift_unknownObjectRetain();

      v49 = v48;
    }
  }

  else if (v13 == 0x1FFFFFFFCLL)
  {
    outlined destroy of Image.Resolved(a1 + 24);
    v23 = *(a2 + 40);
    v24 = *(a2 + 56);
    v25 = *(a2 + 72);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 72) = v25;
    *(a1 + 56) = v24;
    *(a1 + 40) = v23;
    v26 = *(a2 + 104);
    v27 = *(a2 + 120);
    v28 = *(a2 + 136);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 136) = v28;
    *(a1 + 120) = v27;
    *(a1 + 104) = v26;
    v29 = *(a2 + 168);
    v30 = *(a2 + 184);
    v31 = *(a2 + 195);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 195) = v31;
    *(a1 + 184) = v30;
    *(a1 + 168) = v29;
  }

  else
  {
    v34 = *(a2 + 32);
    if (*(a1 + 32) == 255)
    {
      if (v34 == 255)
      {
        v52 = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 24) = v52;
      }

      else
      {
        v50 = *(a2 + 24);
        outlined copy of GraphicsImage.Contents(v50, *(a2 + 32));
        *(a1 + 24) = v50;
        *(a1 + 32) = v34;
      }
    }

    else if (v34 == 255)
    {
      outlined destroy of GraphicsImage.Contents(a1 + 24);
      v51 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v51;
    }

    else
    {
      v35 = *(a2 + 24);
      outlined copy of GraphicsImage.Contents(v35, *(a2 + 32));
      v36 = *(a1 + 24);
      *(a1 + 24) = v35;
      v37 = *(a1 + 32);
      *(a1 + 32) = v34;
      outlined consume of GraphicsImage.Contents(v36, v37);
    }

    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    v53 = *(a2 + 68);
    *(a1 + 81) = *(a2 + 81);
    *(a1 + 68) = v53;
    v54 = *(a2 + 96);
    v55 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 96) = v54;
    *(a1 + 112) = v55;
    *(a1 + 129) = *(a2 + 129);
    *(a1 + 130) = *(a2 + 130);
    *(a1 + 131) = *(a2 + 131);
    v56 = *(a2 + 152);
    v57 = v56 & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 152) >> 1 == 0xFFFFFFFFLL)
    {
      if (v57 == 0x1FFFFFFFELL)
      {
        v58 = *(a2 + 136);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 136) = v58;
      }

      else
      {
        v60 = *(a2 + 136);
        v61 = *(a2 + 144);
        v62 = *(a2 + 160);
        outlined copy of AccessibilityImageLabel(v60, v61, *(a2 + 152), v62);
        *(a1 + 136) = v60;
        *(a1 + 144) = v61;
        *(a1 + 152) = v56;
        *(a1 + 160) = v62;
      }
    }

    else if (v57 == 0x1FFFFFFFELL)
    {
      outlined destroy of AccessibilityImageLabel(a1 + 136);
      v59 = *(a2 + 152);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = v59;
    }

    else
    {
      v63 = *(a2 + 136);
      v64 = *(a2 + 144);
      v65 = *(a2 + 160);
      outlined copy of AccessibilityImageLabel(v63, v64, *(a2 + 152), v65);
      v66 = *(a1 + 136);
      v67 = *(a1 + 144);
      v68 = *(a1 + 152);
      v69 = *(a1 + 160);
      *(a1 + 136) = v63;
      *(a1 + 144) = v64;
      *(a1 + 152) = v56;
      *(a1 + 160) = v65;
      outlined consume of AccessibilityImageLabel(v66, v67, v68, v69);
    }

    *(a1 + 168) = *(a2 + 168);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(a1 + 176) = *(a2 + 176);

    *(a1 + 184) = *(a2 + 184);
    *(a1 + 185) = *(a2 + 185);
    v70 = *(a2 + 188);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 188) = v70;
    v71 = *(a1 + 200);
    v72 = *(a2 + 200);
    *(a1 + 200) = v72;
    v73 = v72;

    *(a1 + 208) = *(a2 + 208);
    *(a1 + 210) = *(a2 + 210);
  }

  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);

  return a1;
}

uint64_t assignWithTake for PlatformItem.PrimaryContent(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  if (*(a1 + 152) >> 1 == 4294967294)
  {
    goto LABEL_4;
  }

  v7 = *(a2 + 152);
  if ((v7 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v8 = *(a1 + 32);
    if (v8 != 255)
    {
      v9 = *(a2 + 32);
      if (v9 != 255)
      {
        v10 = *(a1 + 24);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v9;
        outlined consume of GraphicsImage.Contents(v10, v8);
        goto LABEL_10;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 24);
    }

    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
LABEL_10:
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
    *(a1 + 81) = *(a2 + 81);
    v11 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v11;
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 129) = *(a2 + 129);
    v12 = *(a1 + 152);
    *(a1 + 130) = *(a2 + 130);
    if (v12 >> 1 != 0xFFFFFFFF)
    {
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        v13 = *(a2 + 160);
        v14 = *(a1 + 136);
        v15 = *(a1 + 144);
        v16 = *(a1 + 160);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 152) = v7;
        *(a1 + 160) = v13;
        outlined consume of AccessibilityImageLabel(v14, v15, v12, v16);
        goto LABEL_15;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 136);
    }

    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
LABEL_15:
    *(a1 + 168) = *(a2 + 168);
    swift_unknownObjectRelease();
    *(a1 + 176) = *(a2 + 176);

    *(a1 + 184) = *(a2 + 184);
    *(a1 + 185) = *(a2 + 185);
    *(a1 + 188) = *(a2 + 188);
    *(a1 + 192) = *(a2 + 192);
    v17 = *(a1 + 200);
    *(a1 + 200) = *(a2 + 200);

    *(a1 + 208) = *(a2 + 208);
    *(a1 + 210) = *(a2 + 210);
    goto LABEL_16;
  }

  outlined destroy of Image.Resolved(a1 + 24);
LABEL_4:
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 195) = *(a2 + 195);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
LABEL_16:
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);

  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItem.PrimaryContent(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for PlatformItem.PrimaryContent(uint64_t result, unsigned int a2, unsigned int a3)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for PlatformItem.SelectionContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t assignWithTake for PlatformItem.SelectionContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t *assignWithCopy for PlatformItem.SelectionContent.AuxiliaryContent(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t *assignWithTake for PlatformItem.SelectionContent.AuxiliaryContent(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t initializeWithCopy for PlatformItem.AccessibilityContent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_7;
    }

    v8 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v8;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 104) = *(a2 + 104);

LABEL_7:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 240);
  if (v9 == 1)
  {
    v10 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v10;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v12;
    v13 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  v15 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v15;
  *(a1 + 296) = *(a2 + 296);

  return a1;
}

uint64_t assignWithCopy for PlatformItem.AccessibilityContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  if (v5 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a2 + 64);
        v8 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v8;
        *(a1 + 64) = v7;
        goto LABEL_18;
      }

      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v12;
      *(a1 + 80) = v13;
    }

    *(a1 + 104) = *(a2 + 104);
  }

  else if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
    v10 = *(a2 + 80);
    v9 = *(a2 + 96);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v10;
    *(a1 + 96) = v9;
  }

  else
  {
    if (v5)
    {
      v11 = (a1 + 64);
      if (v6)
      {
        __swift_assign_boxed_opaque_existential_1(v11, (a2 + 64), v4);
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v11);
        v14 = *(a2 + 96);
        v15 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v15;
        *(a1 + 96) = v14;
      }
    }

    else if (v6)
    {
      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v16 = *(a2 + 64);
      v17 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v16;
      *(a1 + 80) = v17;
    }

    *(a1 + 104) = *(a2 + 104);
  }

LABEL_18:
  v18 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v18;
  v19 = *(a2 + 240);
  if (*(a1 + 240) == 1)
  {
    if (v19 == 1)
    {
      v20 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v20;
      v21 = *(a2 + 160);
      v22 = *(a2 + 176);
      v23 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v23;
      *(a1 + 160) = v21;
      *(a1 + 176) = v22;
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      v26 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 240) = v25;
      *(a1 + 256) = v26;
      *(a1 + 224) = v24;
    }

    else
    {
      v34 = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v34;
      v35 = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 144) = v35;
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 154) = *(a2 + 154);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v36 = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 248) = v36;
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v19 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
    v27 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v27;
    v28 = *(a2 + 208);
    v30 = *(a2 + 160);
    v29 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v28;
    *(a1 + 160) = v30;
    *(a1 + 176) = v29;
    v32 = *(a2 + 240);
    v31 = *(a2 + 256);
    v33 = *(a2 + 224);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 240) = v32;
    *(a1 + 256) = v31;
    *(a1 + 224) = v33;
  }

  else
  {
    v37 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v37;
    v38 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v38;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 209) = *(a2 + 209);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);

    v39 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v39;
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 296) = *(a2 + 296);
  return a1;
}

uint64_t assignWithTake for PlatformItem.AccessibilityContent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 88);
  if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
LABEL_4:
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_10;
  }

  if (v5)
  {
    v8 = (a1 + 64);
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v8);
    }
  }

  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v10;

LABEL_10:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 240) != 1)
  {
    v11 = *(a2 + 240);
    if (v11 != 1)
    {
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      v16 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v16;
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v11;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
      goto LABEL_15;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
  }

  v12 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v12;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v14;
  v15 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v15;
LABEL_15:
  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItem.AccessibilityContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 297))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformItem.AccessibilityContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 297) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatformItemRuleConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 44))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformItemRuleConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t type metadata completion function for PlatformItemsGenerator(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for PlatformItemsGenerator(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && (*(v6 + 80) & 0x100000) == 0 && ((-113 - v7) | v7) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = AssociatedTypeWitness;
    *a1 = *a2;
    v12 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
    v13 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v13;
    *(v12 + 8) = *(v13 + 8);
    *(v12 + 16) = *(v13 + 16);
    *(v12 + 24) = *(v13 + 24);
    *(v12 + 28) = *(v13 + 28);
    *(v12 + 32) = *(v13 + 32);
    *(v12 + 36) = *(v13 + 36);
    *(v12 + 40) = *(v13 + 40);
    *(v12 + 48) = *(v13 + 48);
    *(v12 + 56) = *(v13 + 56);
    *(v12 + 60) = *(v13 + 60);
    *(v12 + 64) = *(v13 + 64);
    *(v12 + 68) = *(v13 + 68);
    *(v12 + 72) = *(v13 + 72);
    *(v12 + 76) = *(v13 + 76);
    *(v12 + 80) = *(v13 + 80);
    *(v12 + 84) = *(v13 + 84);
    *(v12 + 88) = *(v13 + 88);
    v14 = ((v12 + 99) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 99) & 0xFFFFFFFFFFFFFFF8);
    v16 = *v15;
    *v14 = *v15;
    v17 = *(v6 + 16);

    v18 = v16;
    v17(v14 + 1, v15 + 1, v11);
  }

  else
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  return a1;
}

uint64_t destroy for PlatformItemsGenerator(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;

  v3 = ((v2 + 99) & 0xFFFFFFFFFFFFFFF8);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 8);
  v7 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);

  return v6(v7, AssociatedTypeWitness);
}

_DWORD *initializeWithCopy for PlatformItemsGenerator(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v4 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v3 = *v4;
  *(v3 + 8) = *(v4 + 8);
  *(v3 + 16) = *(v4 + 16);
  *(v3 + 24) = *(v4 + 24);
  *(v3 + 28) = *(v4 + 28);
  *(v3 + 32) = *(v4 + 32);
  *(v3 + 36) = *(v4 + 36);
  *(v3 + 40) = *(v4 + 40);
  *(v3 + 48) = *(v4 + 48);
  *(v3 + 56) = *(v4 + 56);
  *(v3 + 60) = *(v4 + 60);
  *(v3 + 64) = *(v4 + 64);
  *(v3 + 68) = *(v4 + 68);
  *(v3 + 72) = *(v4 + 72);
  *(v3 + 76) = *(v4 + 76);
  *(v3 + 80) = *(v4 + 80);
  *(v3 + 84) = *(v4 + 84);
  *(v3 + 88) = *(v4 + 88);
  v5 = ((v3 + 99) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v4 + 99) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  *v5 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 16);
  v11 = *(v9 + 80);

  v12 = v7;
  v10((v5 + v11 + 8) & ~v11, (v6 + v11 + 8) & ~v11, AssociatedTypeWitness);
  return a1;
}

_DWORD *assignWithCopy for PlatformItemsGenerator(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v4 = *v5;

  *(v4 + 8) = *(v5 + 8);
  *(v4 + 16) = *(v5 + 16);

  *(v4 + 24) = *(v5 + 24);
  *(v4 + 28) = *(v5 + 28);
  *(v4 + 32) = *(v5 + 32);
  *(v4 + 36) = *(v5 + 36);
  *(v4 + 40) = *(v5 + 40);

  *(v4 + 48) = *(v5 + 48);

  *(v4 + 56) = *(v5 + 56);
  *(v4 + 60) = *(v5 + 60);
  *(v4 + 64) = *(v5 + 64);
  *(v4 + 68) = *(v5 + 68);
  *(v4 + 72) = *(v5 + 72);
  *(v4 + 76) = *(v5 + 76);
  *(v4 + 80) = *(v5 + 80);
  *(v4 + 84) = *(v5 + 84);
  *(v4 + 88) = *(v5 + 88);
  v6 = ((v4 + 99) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v5 + 99) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *v6;
  *v6 = *v7;
  v10 = v8;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 24))((v6 + *(v12 + 80) + 8) & ~*(v12 + 80), (v7 + *(v12 + 80) + 8) & ~*(v12 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *initializeWithTake for PlatformItemsGenerator(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v5 + 48);
  v6 = *(v5 + 64);
  v8 = *(v5 + 32);
  *(v4 + 80) = *(v5 + 80);
  *(v4 + 48) = v7;
  *(v4 + 64) = v6;
  *(v4 + 32) = v8;
  v9 = *(v5 + 16);
  *v4 = *v5;
  *(v4 + 16) = v9;
  *(v4 + 84) = *(v5 + 84);
  *(v4 + 88) = *(v5 + 88);
  v10 = ((v4 + 99) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v5 + 99) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  (*(v13 + 32))((v10 + *(v13 + 80) + 8) & ~*(v13 + 80), (v11 + *(v13 + 80) + 8) & ~*(v13 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *assignWithTake for PlatformItemsGenerator(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v4 = *v5;

  *(v4 + 8) = *(v5 + 8);
  *(v4 + 16) = *(v5 + 16);

  *(v4 + 24) = *(v5 + 24);
  *(v4 + 28) = *(v5 + 28);
  *(v4 + 32) = *(v5 + 32);
  *(v4 + 36) = *(v5 + 36);
  *(v4 + 40) = *(v5 + 40);

  *(v4 + 48) = *(v5 + 48);

  *(v4 + 56) = *(v5 + 56);
  *(v4 + 60) = *(v5 + 60);
  *(v4 + 64) = *(v5 + 64);
  *(v4 + 68) = *(v5 + 68);
  *(v4 + 72) = *(v5 + 72);
  *(v4 + 76) = *(v5 + 76);
  *(v4 + 80) = *(v5 + 80);
  *(v4 + 84) = *(v5 + 84);
  *(v4 + 88) = *(v5 + 88);
  v6 = ((v4 + 99) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v5 + 99) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v6;
  *v6 = *v7;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 40))((v6 + *(v10 + 80) + 8) & ~*(v10 + 80), (v7 + *(v10 + 80) + 8) & ~*(v10 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemsGenerator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v11 = ((v9 + 112) & ~v9) + v10;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 < 2)
    {
LABEL_26:
      v17 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 48);

        return v19((((v17 + 99) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
      }

      else
      {
        v18 = *(v17 + 16);
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_26;
  }

LABEL_15:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for PlatformItemsGenerator(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 112) & ~v9) + *(v7 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_46:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v18 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  if ((v8 & 0x80000000) != 0)
  {
    v19 = *(v7 + 56);

    v19((((v18 + 99) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, a2);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v18 + 72) = 0;
    *(v18 + 56) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 24) = 0u;
    *(v18 + 8) = 0u;
    *(v18 + 80) = 0;
    *v18 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(v18 + 16) = (a2 - 1);
  }
}

void specialized static PlatformItems.Key.reduce(value:nextValue:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  if (*a1)
  {
    (a2)(&v17);
    v7 = v18;
    v8 = v19;
    v9 = *(a1 + 8);
    if (v9 != -1 && v18 != 0)
    {
      if (v9)
      {
        v11 = v18 == -1;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v12 = v19;
        v7 = merge32(_:_:)(*(a1 + 8), v18);
        v8 = v12;
      }

      *(a1 + 8) = v7;
    }

    specialized Array.append<A>(contentsOf:)(v8);
  }

  else
  {
    v3 = *(a1 + 16);
    if (!*(v3 + 2))
    {
      (a2)(&v17);
      v13 = v17;
      v14 = v18;
      v15 = v19;

      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      return;
    }

    outlined init with copy of PlatformItem((v3 + 32), &v17);
    v5 = PlatformItem.hasContent.getter();
    v6 = outlined destroy of PlatformItem(&v17);
    if (!v5)
    {
      a2(&v17, v6);
      if (*(v19 + 16))
      {
        outlined init with copy of PlatformItem(v19 + 32, &v17);

        if (*(v3 + 2))
        {
          outlined init with copy of PlatformItem((v3 + 32), v16);
          PlatformItem.merge(_:)(&v17);
          outlined destroy of PlatformItem(&v17);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (*(v3 + 2))
            {
LABEL_8:
              outlined assign with take of PlatformItem(v16, (v3 + 32));
              *(a1 + 16) = v3;
              return;
            }

            goto LABEL_25;
          }
        }

        else
        {
          __break(1u);
        }

        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        if (*(v3 + 2))
        {
          goto LABEL_8;
        }

LABEL_25:
        __break(1u);
        return;
      }
    }
  }
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in PlatformItemsGenerator.updateValue()()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v1 = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  type metadata accessor for PlatformItemsGenerator(0, &v7);
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v5 = type metadata accessor for PlatformItemsGenerator(0, &v7);
  return PlatformItemsGenerator.makeContent()(v5);
}

void lazy protocol witness table accessor for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent()
{
  if (!lazy protocol witness table cache variable for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItemsImageRepresentable.PlatformItemContent, &unk_1F009B188, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItemsImageRepresentable.PlatformItemContent, &unk_1F009B188, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent);
  }
}

void lazy protocol witness table accessor for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent()
{
  if (!lazy protocol witness table cache variable for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItemsTextRepresentable.PlatformItemContent, &unk_1F009B108, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformItemsTextRepresentable.PlatformItemContent, &unk_1F009B108, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent);
  }
}

void type metadata accessor for (())?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for PlatformItemsTextRepresentable.PlatformItemContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 52))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformItemsTextRepresentable.PlatformItemContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 2;
    }
  }

  return result;
}

void instantiation function for generic protocol witness table for PlatformItemsImageRepresentable.PlatformItemContent(uint64_t a1)
{
  lazy protocol witness table accessor for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent();
  *(a1 + 8) = v2;
}

void instantiation function for generic protocol witness table for PlatformItemsTextRepresentable.PlatformItemContent(uint64_t a1)
{
  lazy protocol witness table accessor for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent();
  *(a1 + 8) = v2;
}

void lazy protocol witness table accessor for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule()
{
  if (!lazy protocol witness table cache variable for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectPlatformItemModifier.GlassPlatformItemRule, &type metadata for GlassEffectPlatformItemModifier.GlassPlatformItemRule, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule);
  }
}

{
  if (!lazy protocol witness table cache variable for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectPlatformItemModifier.GlassPlatformItemRule, &type metadata for GlassEffectPlatformItemModifier.GlassPlatformItemRule, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule);
  }
}

uint64_t _ContentShapeModifier.init(shape:eoFill:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for _ContentShapeModifier(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t ContentShapeResponder.hitTestPolicy(options:)@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *a1;
  result = MultiViewResponder.hitTestPolicy(options:)(&v4);
  *a2 = v5 == 1;
  return result;
}

void ContentShapeResponder.containsGlobalPoints(_:cacheKey:options:)(uint64_t a1@<X0>, unint64_t a2@<X1>, double *a3@<X2>, double *a4@<X8>)
{
  v8 = *v4;
  v9 = *a3;
  v22[0] = *a3;
  MultiViewResponder.hitTestPolicy(options:)(v22);
  if (LOBYTE(v21[0]) == 1)
  {
    swift_beginAccess();
    v10 = v4[5];
    *a4 = 0.0;
    a4[1] = 0.0;
    *(a4 + 2) = v10;

    return;
  }

  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v11 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = HIDWORD(a2) & 1;
  if (byte_1ED53C51C == 1)
  {
    v13 = -1.0;
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = -1.0;
  if (static Semantics.forced >= v11)
  {
LABEL_11:
    v20[0] = v9;
    MultiViewResponder.containsGlobalPoints(_:cacheKey:options:)(a1, a2 | (v12 << 32), v20, v21);
    v13 = v21[1];
  }

LABEL_12:
  v21[3] = v9;
  swift_beginAccess();
  v14 = v4[5];
  swift_beginAccess();
  v16 = type metadata accessor for _ContentShapeModifier(255, *(v8 + 400), *(v8 + 408), v15);
  v18 = type metadata accessor for ContentResponderHelper(0, v16, &protocol witness table for _ContentShapeModifier<A>, v17);

  ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)(a1, a2 | (v12 << 32), v14, v18, a4);
  swift_endAccess();

  v19 = a4[1];
  if (v19 <= v13)
  {
    v19 = v13;
  }

  a4[1] = v19;
}

double ContentShapeResponder.addContentPath(to:kind:in:observer:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v16 = *a2;
  swift_beginAccess();
  v12 = type metadata accessor for _ContentShapeModifier(255, *(v10 + 400), *(v10 + 408), v11);
  v14 = type metadata accessor for ContentResponderHelper(0, v12, &protocol witness table for _ContentShapeModifier<A>, v13);
  ContentResponderHelper.addContentPath(to:kind:in:observer:)(a1, &v16, a3, a4, a5, v14);
  swift_endAccess();
  return result;
}

unint64_t ContentShapeResponder.descriptionName.getter()
{
  swift_beginAccess();
  _StringGuts.grow(_:)(35);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](2629694, 0xE300000000000000);
  v1 = Double.description.getter();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v2 = Double.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](8745, 0xE200000000000000);
  return 0xD000000000000016;
}

void ContentShapeResponder.extendPrintTree(string:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = type metadata accessor for _ContentShapeModifier(255, *(*v4 + 400), *(*v4 + 408), a4);
  v8 = type metadata accessor for ContentResponderHelper(0, v6, &protocol witness table for _ContentShapeModifier<A>, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v12 = v4 + *(v5 + 416);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = ContentResponderHelper.globalPosition.getter(v8);
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  v19 = 0;
  v20 = 0xE000000000000000;
  MEMORY[0x193ABEDD0](91, 0xE100000000000000);
  v16 = Double.description.getter();
  MEMORY[0x193ABEDD0](v16);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v17 = Double.description.getter();
  MEMORY[0x193ABEDD0](v17);

  MEMORY[0x193ABEDD0](4202589, 0xE300000000000000);
  *&v18[1] = v13;
  v18[2] = v15;
  type metadata accessor for (CGFloat, CGFloat)();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v19, v20);
}

uint64_t ContentShapeResponder.init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  v13[4] = *(a1 + 64);
  v14 = *(a1 + 80);
  v8 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v8;
  v9 = v6[52];
  v10 = type metadata accessor for _ContentShapeModifier(0, v6[50], v6[51], a4);
  ContentResponderHelper.init()(v10, &protocol witness table for _ContentShapeModifier<A>, v11, v4 + v9);
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(v13, a2);
}

uint64_t ContentShapeResponder.__ivar_destroyer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 416);
  v6 = type metadata accessor for _ContentShapeModifier(255, *(*v4 + 400), *(*v4 + 408), a4);
  v8 = type metadata accessor for ContentResponderHelper(0, v6, &protocol witness table for _ContentShapeModifier<A>, v7);
  v9 = *(*(v8 - 8) + 8);

  return v9(v4 + v5, v8);
}

uint64_t _ContentShapeModifier.contains(points:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  Shape.effectivePath(in:)(*(a3 + 16), *(a3 + 24), v9, a5);
  Path.contains(points:eoFill:origin:)(a1, a2, a4, 0.0, 0.0);
  return outlined destroy of Path(v9);
}

double _ContentShapeModifier.contentPath(size:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Shape.effectivePath(in:)(*(a1 + 16), *(a1 + 24), v6, a3);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

double protocol witness for ContentResponder.contentPath(size:) in conformance _ContentShapeModifier<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  _ContentShapeModifier.contentPath(size:)(a1, v6, a3);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t type metadata completion function for ContentShapeResponder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _ContentShapeModifier(255, *(a1 + 400), *(a1 + 408), a4);
  result = type metadata accessor for ContentResponderHelper(319, v4, &protocol witness table for _ContentShapeModifier<A>, v5);
  if (v7 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t assignWithCopy for ContentShapeResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 112);
  v5 = *(a1 + 112);
  *(a1 + 112) = v4;
  v6 = v4;

  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithTake for ContentShapeResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for ContentShapeResponderFilter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentShapeResponderFilter(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

BOOL compareEnumTags<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, v6);
  v21 = a3;
  v10 = MEMORY[0x1E69E7410];
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in numericEnumTag<A>(of:), v20, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v11);
  v12 = *(v5 + 8);
  v12(v8, a3);
  v13 = v17;
  (v9)(v8, a2, a3);
  v19 = a3;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, closure #1 in numericEnumTag<A>(of:)partial apply, v18, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], v10, v14);
  v12(v8, a3);
  return v13 == v17;
}

uint64_t AGTypeID.projectEnum(at:tag:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  AGTypeProjectEnumData();
  a3(a1);

  return MEMORY[0x1EEDEECD8](a5, a2, a1);
}

uint64_t static AGGraphRef.cancelCurrentUpdateIfDeadlinePassed()(__n128 a1)
{
  result = AGGraphHasDeadlinePassed();
  if (result)
  {
    v2 = result;
    AGGraphCancelUpdate();
    return v2;
  }

  return result;
}

uint64_t Attribute.toOptional.getter(int a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v12 = type metadata accessor for Optional();
  v13 = type metadata accessor for ToOptional(0, a2, v3, v4);
  swift_getWitnessTable(protocol conformance descriptor for ToOptional<A>, v13);
  v14 = v5;
  v6 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v10, partial apply for closure #1 in Attribute.init<A>(_:), v11, v13, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9;
}

double specialized closure #1 in PreferenceTransform.value.getter(void (*a1)(uint64_t), void *a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v50 = a1;
  v57 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = one-time initialization token for _current;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(v20[2]);
  if (!v21)
  {
    v22 = v7;
    v23 = swift_slowAlloc();
    pthread_setspecific(v20[2], v23);
    v56 = type metadata accessor for ObservationCenter();
    *&v55 = v20[3];
    outlined init with take of Any(&v55, v23);

    v21 = v23;
    v7 = v22;
  }

  outlined init with copy of Any(v21, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2[2] + 1, 1, a2);
    v24 = v19;
    *(v19 + 24) = a2;
    goto LABEL_9;
  }

  v45 = v12;
  v46 = v7;
  v47 = CurrentAttribute;
  swift_beginAccess();
  v48 = *(v24 + 24);
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  v26 = a2;
  v27 = v53;
  (*(v53 + 56))(v18, 1, 1, v5);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v18;
  v50(v49);
  v30 = v27;
  *(StatusReg + 848) = v29;
  outlined init with copy of ObservationTracking._AccessList?(v18, v15);
  v31 = (*(v27 + 48))(v15, 1, v5);
  v52 = v26;
  if (v31 == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v18);
    v18 = v15;
    goto LABEL_12;
  }

  v20 = v45;
  v50 = *(v27 + 32);
  (v50)(v45, v15, v5);
  (*(v27 + 16))(v51, v20, v5);
  a2 = *(v24 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = a2;
  v19 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v34 = a2[2];
  v33 = a2[3];
  if (v34 >= v33 >> 1)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, a2);
  }

  a2[2] = v34 + 1;
  v35 = v53;
  (v50)(a2 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v53 + 72) * v34, v51, v5);
  *(v24 + 24) = a2;
  v30 = v35;
  (*(v35 + 8))(v20, v5);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v18);
  v36 = *(v24 + 24);
  v37 = *(v36 + 2);
  if (v37)
  {
    v39 = *(v30 + 16);
    v38 = v30 + 16;
    v53 = v39;
    v40 = &v36[(*(v38 + 64) + 32) & ~*(v38 + 64)];
    v41 = *(v38 + 56);
    v51 = v36;

    v42 = v47;
    v43 = v46;
    do
    {
      (v53)(v43, v40, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v42, v43);
      (*(v38 - 8))(v43, v5);
      v40 += v41;
      --v37;
    }

    while (v37);
  }

  *(v24 + 24) = v48;

  return result;
}

{
  v49 = a4;
  v50 = a1;
  v57 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = one-time initialization token for _current;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(v20[2]);
  if (!v21)
  {
    v22 = v7;
    v23 = swift_slowAlloc();
    pthread_setspecific(v20[2], v23);
    v56 = type metadata accessor for ObservationCenter();
    *&v55 = v20[3];
    outlined init with take of Any(&v55, v23);

    v21 = v23;
    v7 = v22;
  }

  outlined init with copy of Any(v21, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2[2] + 1, 1, a2);
    v24 = v19;
    *(v19 + 24) = a2;
    goto LABEL_9;
  }

  v45 = v12;
  v46 = v7;
  v47 = CurrentAttribute;
  swift_beginAccess();
  v48 = *(v24 + 24);
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  v26 = a2;
  v27 = v53;
  (*(v53 + 56))(v18, 1, 1, v5);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v18;
  v50(v49);
  v30 = v27;
  *(StatusReg + 848) = v29;
  outlined init with copy of ObservationTracking._AccessList?(v18, v15);
  v31 = (*(v27 + 48))(v15, 1, v5);
  v52 = v26;
  if (v31 == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v18);
    v18 = v15;
    goto LABEL_12;
  }

  v20 = v45;
  v50 = *(v27 + 32);
  (v50)(v45, v15, v5);
  (*(v27 + 16))(v51, v20, v5);
  a2 = *(v24 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = a2;
  v19 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v34 = a2[2];
  v33 = a2[3];
  if (v34 >= v33 >> 1)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, a2);
  }

  a2[2] = v34 + 1;
  v35 = v53;
  (v50)(a2 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v53 + 72) * v34, v51, v5);
  *(v24 + 24) = a2;
  v30 = v35;
  (*(v35 + 8))(v20, v5);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v18);
  v36 = *(v24 + 24);
  v37 = *(v36 + 2);
  if (v37)
  {
    v39 = *(v30 + 16);
    v38 = v30 + 16;
    v53 = v39;
    v40 = &v36[(*(v38 + 64) + 32) & ~*(v38 + 64)];
    v41 = *(v38 + 56);
    v51 = v36;

    v42 = v47;
    v43 = v46;
    do
    {
      (v53)(v43, v40, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v42, v43);
      (*(v38 - 8))(v43, v5);
      v40 += v41;
      --v37;
    }

    while (v37);
  }

  *(v24 + 24) = v48;

  return result;
}

uint64_t numericEnumTag<A>(of:)(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v4);
  v11 = a2;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v6, closure #1 in numericEnumTag<A>(of:)partial apply, v10, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v7);
  (*(v3 + 8))(v6, a2);
  return v9[1];
}

uint64_t DefaultRule.weakValue.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v9 = *(AssociatedTypeWitness - 8);
    (*(v9 + 16))(a2, WeakValue, AssociatedTypeWitness);
    v5 = v9;
    v6 = 0;
  }

  else
  {
    v5 = *(AssociatedTypeWitness - 8);
    v6 = 1;
  }

  v7 = *(v5 + 56);

  return v7(a2, v6, 1, AssociatedTypeWitness);
}

uint64_t static DefaultRule.initialValue.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 16))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 0, 1, AssociatedTypeWitness);
}

uint64_t DefaultRule.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  v14[1] = *v2;
  DefaultRule.weakValue.getter(v14 - v9);
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v11 + 32))(a2, v10, AssociatedTypeWitness);
  }

  (*(v4 + 16))(v5, v4);
  result = (v12)(v10, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance DefaultRule<A>(uint64_t a1, uint64_t a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  static DefaultRule.initialValue.getter(v3, v8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v18[-2] = a2;
  swift_getWitnessTable(protocol conformance descriptor for DefaultRule<A>, a2, v15);
  v18[-1] = v16;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, partial apply for closure #1 in static Rule._updateDefault(_:), &v18[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v17);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

Swift::Bool __swiftcall Attribute.invalidateValueIfNeeded()()
{
  ValueState = AGGraphGetValueState();
  if ((ValueState & 1) == 0)
  {
    AGGraphInvalidateValue();
  }

  return (ValueState & 1) == 0;
}

Swift::Bool __swiftcall WeakAttribute.allowsAsyncUpdate()()
{
  v1 = v0;
  Attribute = AGWeakAttributeGetAttribute();
  v3 = Attribute == *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v4 = 0;
  }

  else
  {
    v4 = Attribute;
  }

  v9 = v4;
  v5 = v3;
  v10 = v5;
  v8[2] = v1;
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in WeakAttribute.allowsAsyncUpdate(), v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v6, &v11);
  return v11 & 1;
}

uint64_t partial apply for closure #1 in numericEnumTag<A>(of:)@<X0>(uint64_t *a2@<X8>)
{
  result = AGTypeGetEnumTag();
  *a2 = result;
  return result;
}

uint64_t ToOptional.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Value = AGGraphGetValue();
  v8 = *(a2 - 8);
  (*(v8 + 16))(a3, Value, a2);
  v6 = *(v8 + 56);

  return v6(a3, 0, 1, a2);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance ToOptional<A>@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t static AGGraphRef.startTracing(options:)(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0 && one-time initialization token for tracingOptions != -1)
  {
    swift_once();
  }

  return AGGraphStartTracing();
}

uint64_t specialized DefaultRule.description.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v2 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v2);

  return 547916002;
}

uint64_t partial apply for closure #1 in Attribute.overrideDefaultValue<A>(_:type:)(uint64_t *a1)
{
  result = AGCreateWeakAttribute();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in WeakAttribute.allowsAsyncUpdate()@<X0>(BOOL *a1@<X8>)
{
  result = AGGraphGetValueState();
  *a1 = (~result & 0x11) != 0;
  return result;
}

void lazy protocol witness table accessor for type TreeElementFlags and conformance TreeElementFlags()
{
  if (!lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TreeElementFlags, &type metadata for TreeElementFlags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags);
  }
}

{
  if (!lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TreeElementFlags, &type metadata for TreeElementFlags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags);
  }
}

{
  if (!lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TreeElementFlags, &type metadata for TreeElementFlags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags);
  }
}

{
  if (!lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TreeElementFlags, &type metadata for TreeElementFlags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags);
  }
}

void lazy protocol witness table accessor for type TreeValueFlags and conformance TreeValueFlags()
{
  if (!lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TreeValueFlags, &type metadata for TreeValueFlags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags);
  }
}

{
  if (!lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TreeValueFlags, &type metadata for TreeValueFlags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags);
  }
}

{
  if (!lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TreeValueFlags, &type metadata for TreeValueFlags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags);
  }
}

{
  if (!lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TreeValueFlags, &type metadata for TreeValueFlags, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags);
  }
}

double partial apply for specialized closure #1 in PreferenceTransform.value.getter(uint64_t *a1)
{
  return specialized closure #1 in PreferenceTransform.value.getter(*a1, a1[1], *(v1 + 16), *(v1 + 24), specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
}

{
  return specialized closure #1 in PreferenceTransform.value.getter(*a1, a1[1], *(v1 + 16), *(v1 + 24), specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
}

{
  return specialized closure #1 in PreferenceTransform.value.getter(*a1, a1[1], *(v1 + 16), *(v1 + 24), specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
}

Swift::Int TouchType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Int one-time initialization function for allTypes()
{
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI9TouchTypeO_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for allTypes);
  static TouchType.allTypes = result;
  return result;
}

double static TouchType.allTypes.getter()
{
  if (one-time initialization token for allTypes != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t SelectionRanges.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for RangeSet();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  type metadata accessor for SelectionRanges(0, a2, a3, v9);

  return swift_storeEnumTagMultiPayload();
}

{
  v27 = a4;
  v7 = type metadata accessor for Range();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  (*(v9 + 16))(v11, a1, v8, v17);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    v20 = *(v9 + 8);
    v20(v11, v8);
    static SelectionRanges.none.getter(a2, a3, v27);
    return (v20)(a1, v8);
  }

  else
  {
    v26 = a3;
    v22 = v27;
    (*(v12 + 32))(v19, v11, v7);
    if (Range.isEmpty.getter())
    {
      (*(v9 + 8))(a1, v8);
      (*(*(a2 - 8) + 16))(v22, v19, a2);
      (*(v12 + 8))(v19, v7);
      type metadata accessor for SelectionRanges(0, a2, v26, v23);
    }

    else
    {
      (*(v12 + 16))(v15, v19, v7);
      v24 = v26;
      RangeSet.init(_:)();
      (*(v9 + 8))(a1, v8);
      (*(v12 + 8))(v19, v7);
      type metadata accessor for SelectionRanges(0, a2, v24, v25);
    }

    return swift_storeEnumTagMultiPayload();
  }
}

{
  (*(*(a2 - 8) + 32))(a4, a1, a2);
  type metadata accessor for SelectionRanges(0, a2, a3, v6);

  return swift_storeEnumTagMultiPayload();
}

uint64_t SelectionRanges.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v11 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v12);
  RangeSet.init<A>(_:)(v14, a2, a3, a4, a6);
  (*(v11 + 8))(a1, a3);
  type metadata accessor for SelectionRanges(0, a2, a4, v15);
  return swift_storeEnumTagMultiPayload();
}

uint64_t static SelectionRanges.none.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RangeSet();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  RangeSet.init()();
  return SelectionRanges.init(_:)(v8, a1, a2, a3);
}

uint64_t SelectionRanges.union.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v94 = type metadata accessor for RangeSet.Ranges();
  v88 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v82 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v75 - v7;
  v8 = type metadata accessor for Range();
  v97 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v75 - v11;
  v12 = type metadata accessor for Optional();
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v75 - v17;
  v18 = type metadata accessor for RangeSet();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v75 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v91 = *(TupleTypeMetadata2 - 8);
  v92 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v90 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v93 = &v75 - v25;
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v96, a1, v31);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v79 = v8;
    v44 = *(v26 + 32);
    v44(v29, v33, v3);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v46 = v93;
      (*(v26 + 16))(v93, v29, v3);
      v47 = v92;
      v44(&v46[*(v92 + 48)], v29, v3);
      v48 = v90;
      v49 = v91;
      (*(v91 + 16))(v90, v46, v47);
      v50 = v95;
      v51 = v44;
      v96 = v44;
      v52 = *(v47 + 48);
      v51(v95, v48, v3);
      v53 = *(v26 + 8);
      v53(&v48[v52], v3);
      (*(v49 + 32))(v48, v46, v47);
      v54 = v79;
      (v96)(v50 + *(v79 + 36), &v48[*(v47 + 48)], v3);
      v53(v48, v3);
      return (*(v97 + 56))(v50, 0, 1, v54);
    }

    __break(1u);
    goto LABEL_14;
  }

  v76 = v3;
  v75 = v26;
  v77 = v4;
  v78 = v19;
  (*(v19 + 32))(v21, v33, v18);
  v35 = v87;
  RangeSet.ranges.getter();
  v36 = v94;
  swift_getWitnessTable(MEMORY[0x1E69E7BC8], v94);
  v37 = v86;
  Collection.first.getter();
  v96 = v18;
  v38 = *(v88 + 1);
  v38(v35, v36);
  v39 = v97;
  v40 = *(v97 + 48);
  v41 = v21;
  if (v40(v37, 1, v8) != 1)
  {
    v87 = *(v39 + 32);
    (v87)(v89, v37, v8);
    v55 = v82;
    RangeSet.ranges.getter();
    v56 = v94;
    swift_getWitnessTable(MEMORY[0x1E69E7BB0], v94);
    v88 = v21;
    v37 = v81;
    BidirectionalCollection.last.getter();
    v38(v55, v56);
    if (v40(v37, 1, v8) == 1)
    {
      v41 = v88;
      v42 = v96;
      v43 = v97;
      (*(v97 + 8))(v89, v8);
      goto LABEL_8;
    }

    v43 = v97;
    (v87)(v80, v37, v8);
    v94 = *(v8 + 36);
    v62 = v89;
    v63 = v8;
    v64 = v76;
    v65 = dispatch thunk of static Comparable.<= infix(_:_:)();
    result = (*(v78 + 8))(v88, v96);
    if (v65)
    {
      v66 = v75;
      v96 = *(v75 + 16);
      v67 = v93;
      (v96)(v93, v62, v64);
      v68 = *(v43 + 8);
      v79 = v63;
      v68(v62, v63);
      v69 = v92;
      v70 = v80;
      (v96)(&v67[*(v92 + 48)], &v80[v94], v64);
      v68(v70, v63);
      v71 = v90;
      v72 = v91;
      (*(v91 + 16))(v90, v67, v69);
      v96 = *(v69 + 48);
      v73 = *(v66 + 32);
      v61 = v83;
      v73(v83, v71, v64);
      v74 = *(v66 + 8);
      v74(&v71[v96], v64);
      (*(v72 + 32))(v71, v93, v69);
      v8 = v79;
      v73(&v61[*(v79 + 36)], &v71[*(v69 + 48)], v64);
      v74(v71, v64);
      v60 = 0;
      v57 = v95;
      v59 = v84;
      v58 = v85;
      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v42 = v96;
  v43 = v39;
LABEL_8:
  v57 = v95;
  (*(v78 + 8))(v41, v42);
  v59 = v84;
  v58 = v85;
  (*(v84 + 8))(v37, v85);
  v60 = 1;
  v61 = v83;
LABEL_11:
  (*(v43 + 56))(v61, v60, 1, v8);
  return (*(v59 + 32))(v57, v61, v58);
}

uint64_t closure #1 in SelectionRanges.isSafe<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = v11;
  dispatch thunk of Collection.startIndex.getter();
  swift_getAssociatedConformanceWitness();
  v16[3] = a1;
  v12 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v13 = *(v8 + 8);
  v13(v10, a3);
  if (v12)
  {
    type metadata accessor for Range();
    v16[0] = v5;
    dispatch thunk of Collection.endIndex.getter();
    v14 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v13(v10, a3);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t static SelectionRanges.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a1;
  v43 = a2;
  v6 = type metadata accessor for RangeSet();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v34 - v7;
  v38 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a4;
  v11 = type metadata accessor for SelectionRanges(0, a3, a4, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v34 - v20;
  v23 = *(v22 + 48);
  v24 = *(v12 + 16);
  v24(&v34 - v20, v42, v11, v19);
  (v24)(&v21[v23], v43, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v24)(v17, v21, v11);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = v38;
      v31 = v35;
      (*(v38 + 32))(v35, &v21[v23], a3);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *(v30 + 8);
      v32(v31, a3);
      v32(v17, a3);
      goto LABEL_9;
    }

    (*(v38 + 8))(v17, a3);
    goto LABEL_7;
  }

  (v24)(v14, v21, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v39 + 8))(v14, v40);
LABEL_7:
    v28 = 0;
    v12 = v37;
    v11 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v26 = v39;
  v25 = v40;
  v27 = v36;
  (*(v39 + 32))(v36, &v21[v23], v40);
  v28 = static RangeSet.== infix(_:_:)();
  v29 = *(v26 + 8);
  v29(v27, v25);
  v29(v14, v25);
LABEL_9:
  (*(v12 + 8))(v21, v11);
  return v28 & 1;
}

uint64_t SelectionRanges<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for RangeSet();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v3, a2, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v17, v6);
    MEMORY[0x193AC11A0](1);
    v21 = v20;
    swift_getWitnessTable(MEMORY[0x1E69E7BE8], v6, &v21);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v5);
    MEMORY[0x193AC11A0](0);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v10 + 8))(v13, v5);
  }
}

Swift::Int SelectionRanges<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  SelectionRanges<>.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> SelectionRanges<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  SelectionRanges<>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

unint64_t SelectionRanges.debugDescription.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for RangeSet.Ranges();
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for RangeSet();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v2, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v34;
    v21 = v35;
    (*(v34 + 32))(v11, v19, v35);
    v23 = RangeSet.ranges.getter();
    v24 = MEMORY[0x1EEE9AC00](v23);
    *(&v33 - 2) = v4;
    *(&v33 - 1) = v5;
    swift_getWitnessTable(MEMORY[0x1E69E7BC8], v6, v24);
    v27 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in SelectionRanges.debugDescription.getter, (&v33 - 4), v6, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
    (*(v33 + 8))(v8, v6);
    v36 = v27;
    type metadata accessor for [String]();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], type metadata accessor for [String], MEMORY[0x1E69E6310]);
    v28 = BidirectionalCollection<>.joined(separator:)();
    v30 = v29;

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v36 = 0xD000000000000019;
    v37 = 0x800000018DD7E9C0;
    MEMORY[0x193ABEDD0](v28, v30);

    MEMORY[0x193ABEDD0](10589, 0xE200000000000000);
    v31 = v36;
    (*(v22 + 8))(v11, v21);
  }

  else
  {
    (*(v12 + 32))(v15, v19, v4);
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    MEMORY[0x193ABEDD0](0xD000000000000020, 0x800000018DD7E9E0);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v31 = v36;
    (*(v12 + 8))(v15, v4);
  }

  return v31;
}

uint64_t closure #1 in SelectionRanges.debugDescription.getter@<X0>(void *a4@<X8>)
{
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
  type metadata accessor for Range();
  result = DefaultStringInterpolation.appendInterpolation<A>(_:)();
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  return result;
}

uint64_t static SelectionRanges.Index.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    v2 = *(a2 + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = (*a1 ^ 1) & *a2;
  if (*(a2 + 8))
  {
    v3 = 1;
  }

  if (*(a1 + 8))
  {
    v3 = v2;
  }

  return v3 & 1;
}

uint64_t static SelectionRanges.Index.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = *a2 ^ *a1 ^ 1;
  if (*(a2 + 8))
  {
    v3 = 0;
  }

  if (*(a1 + 8))
  {
    v3 = v2;
  }

  return v3 & 1;
}

uint64_t SelectionRanges.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = type metadata accessor for RangeSet.Ranges();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = type metadata accessor for RangeSet();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = *(a1 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v3, a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v10 + 32))(v12, v17, v9);
    RangeSet.ranges.getter();
    v19 = RangeSet.Ranges.startIndex.getter();
    (*(v6 + 8))(v8, v5);
    result = (*(v10 + 8))(v12, v9);
  }

  else
  {
    result = (*(v13 + 8))(v17, a1);
    v19 = 0;
  }

  v21 = v23;
  *v23 = v19;
  *(v21 + 8) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t SelectionRanges.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = type metadata accessor for RangeSet.Ranges();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = type metadata accessor for RangeSet();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = *(a1 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v3, a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v10 + 32))(v12, v17, v9);
    RangeSet.ranges.getter();
    v19 = RangeSet.Ranges.count.getter();
    (*(v6 + 8))(v8, v5);
    result = (*(v10 + 8))(v12, v9);
  }

  else
  {
    result = (*(v13 + 8))(v17, a1);
    v19 = 1;
  }

  v21 = v23;
  *v23 = v19;
  *(v21 + 8) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t specialized SelectionRanges.index(after:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v34 = a2;
  v33 = a3;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v6 = v5;
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index)(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v18[*(v19 + 56)];
  v30 = v4;
  outlined init with copy of SelectionRanges<String.Index>(v4, v18);
  v21 = a1;
  *v20 = a1;
  LOBYTE(a1) = v34;
  v20[8] = v34 & 1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of SelectionRanges<String.Index>(v18, v15);
    if ((a1 & 1) == 0)
    {
      (*(v31 + 8))(v15, v10);
      goto LABEL_11;
    }

    v24 = v31;
    (*(v31 + 32))(v12, v15, v10);
    RangeSet.ranges.getter();
    v25 = v21;
    v36 = v21;
    lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8], MEMORY[0x1E69E7BC8]);
    v21 = v26;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v38 = v35;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    (*(v32 + 8))(v8, v6);
    (*(v24 + 8))(v12, v10);
    v27 = __OFADD__(v25, 1);
    a1 = v25 + 1;
    if (!v27)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ((a1 & 1) == 0 && (v21 & 1) == 0)
  {
    a1 = 1;
LABEL_9:
    result = outlined destroy of SelectionRanges<String.Index>(v18);
    v29 = v33;
    *v33 = a1;
    *(v29 + 8) = EnumCaseMultiPayload == 1;
    return result;
  }

LABEL_11:
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v36 = v21;
  v37 = a1 & 1;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>.Index, type metadata accessor for SelectionRanges.Index);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized SelectionRanges.index(after:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v39 = a2;
  v38 = a3;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, a4);
  v7 = v6;
  v37 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0], v8);
  v12 = v11;
  v36 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  type metadata accessor for SelectionRanges<AttributedString.Index>(0, v13);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (SelectionRanges<AttributedString.Index>, SelectionRanges<AttributedString.Index>.Index)(0, v17);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v22[*(v23 + 56)];
  v35 = v5;
  _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v5, v22, type metadata accessor for SelectionRanges<AttributedString.Index>);
  v25 = a1;
  *v24 = a1;
  LOBYTE(a1) = v39;
  v24[8] = v39 & 1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v22, v19, type metadata accessor for SelectionRanges<AttributedString.Index>);
    if ((a1 & 1) == 0)
    {
      (*(v36 + 8))(v19, v12);
      goto LABEL_11;
    }

    v28 = v36;
    (*(v36 + 32))(v15, v19, v12);
    RangeSet.ranges.getter();
    v29 = v25;
    v41 = v25;
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BC8]);
    v25 = v30;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v43 = v40;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    (*(v37 + 8))(v10, v7);
    (*(v28 + 8))(v15, v12);
    v31 = __OFADD__(v29, 1);
    a1 = v29 + 1;
    if (!v31)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ((a1 & 1) == 0 && (v25 & 1) == 0)
  {
    a1 = 1;
LABEL_9:
    result = _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(v22, type metadata accessor for SelectionRanges<AttributedString.Index>);
    v33 = v38;
    *v38 = a1;
    *(v33 + 8) = EnumCaseMultiPayload == 1;
    return result;
  }

LABEL_11:
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v34 = MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v41 = v25;
  v42 = a1 & 1;
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for SelectionRanges<AttributedString.Index>.Index, type metadata accessor for SelectionRanges.Index, v34);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SelectionRanges.index(after:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v45 = a3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for RangeSet.Ranges();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = v37 - v10;
  v11 = type metadata accessor for RangeSet();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v38 = v37 - v12;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = type metadata accessor for SelectionRanges.Index(255, v7, v8, v17);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v21 = v37 - v20;
  v22 = *a1;
  v23 = *(a1 + 8);
  v25 = v37 + *(v24 + 56) - v20;
  v26 = *(v13 + 16);
  v37[1] = v4;
  v26(v37 - v20, v4, a2, v19);
  v44 = v22;
  *v25 = v22;
  v25[8] = v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (v26)(v16, v21, a2);
    if (v23)
    {
      v29 = v40;
      v28 = v41;
      v30 = v38;
      (*(v40 + 32))(v38, v16, v41);
      v31 = v39;
      RangeSet.ranges.getter();
      v32 = v43;
      v46 = v44;
      swift_getWitnessTable(MEMORY[0x1E69E7BC0], v43);
      RandomAccessCollection<>.index(after:)();
      (*(v42 + 8))(v31, v32);
      (*(v29 + 8))(v30, v28);
      v33 = v48;
LABEL_7:
      result = (*(v13 + 8))(v21, a2);
      v36 = v45;
      *v45 = v33;
      *(v36 + 8) = EnumCaseMultiPayload == 1;
      return result;
    }

    (*(v40 + 8))(v16, v41);
    v34 = v44;
  }

  else
  {
    v34 = v44;
    if ((v23 & 1) == 0 && (v44 & 1) == 0)
    {
      v33 = 1;
      goto LABEL_7;
    }
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v46 = v34;
  v47 = v23;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SelectionRanges.index(before:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v45 = a3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for RangeSet.Ranges();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = v37 - v10;
  v11 = type metadata accessor for RangeSet();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v38 = v37 - v12;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = type metadata accessor for SelectionRanges.Index(255, v7, v8, v17);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v21 = v37 - v20;
  v22 = *a1;
  v23 = *(a1 + 8);
  v25 = v37 + *(v24 + 56) - v20;
  v26 = *(v13 + 16);
  v37[1] = v4;
  v26(v37 - v20, v4, a2, v19);
  v44 = v22;
  *v25 = v22;
  v25[8] = v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (v26)(v16, v21, a2);
    if (v23)
    {
      v29 = v40;
      v28 = v41;
      v30 = v38;
      (*(v40 + 32))(v38, v16, v41);
      v31 = v39;
      RangeSet.ranges.getter();
      v32 = v43;
      v46 = v44;
      swift_getWitnessTable(MEMORY[0x1E69E7BC0], v43);
      RandomAccessCollection<>.index(before:)();
      (*(v42 + 8))(v31, v32);
      (*(v29 + 8))(v30, v28);
      v33 = v48;
LABEL_7:
      result = (*(v13 + 8))(v21, a2);
      v36 = v45;
      *v45 = v33;
      *(v36 + 8) = EnumCaseMultiPayload == 1;
      return result;
    }

    (*(v40 + 8))(v16, v41);
    v34 = v44;
  }

  else
  {
    v34 = v44;
    if (v23 & 1) == 0 && (v44)
    {
      v33 = 0;
      goto LABEL_7;
    }
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v46 = v34;
  v47 = v23;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized SelectionRanges.subscript.getter(uint64_t a1, char a2)
{
  v3 = v2;
  v32 = a1;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - v6;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
  v9 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - v10;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v28 - v16);
  type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index)(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v20[*(v21 + 56)];
  v28[1] = v3;
  v23 = v3;
  v24 = v32;
  outlined init with copy of SelectionRanges<String.Index>(v23, v20);
  *v22 = v24;
  v22[8] = a2 & 1;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of SelectionRanges<String.Index>(v20, v14);
    if (a2)
    {
      v25 = v29;
      (*(v29 + 32))(v11, v14, v9);
      RangeSet.ranges.getter();
      v26 = v31;
      RangeSet.Ranges.subscript.getter();
      (*(v30 + 8))(v7, v26);
      (*(v25 + 8))(v11, v9);
LABEL_7:
      outlined destroy of SelectionRanges<String.Index>(v20);
      return v35;
    }

    (*(v29 + 8))(v14, v9);
  }

  else
  {
    outlined init with copy of SelectionRanges<String.Index>(v20, v17);
    if ((a2 & 1) == 0 && (v24 & 1) == 0)
    {
      v35 = *v17;
      v36 = v35;
      goto LABEL_7;
    }
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v33 = v24;
  v34 = a2 & 1;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>.Index, type metadata accessor for SelectionRanges.Index);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized SelectionRanges.subscript.getter@<X0>(void (**a1)(char *, char *, uint64_t)@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v67 = a3;
  v68 = a1;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, a4);
  v8 = *(v7 - 8);
  v64 = v7;
  v65 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v63 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0], v9);
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v57 - v13;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0, v12);
  v60 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v59 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v58 = v57 - v18;
  v19 = type metadata accessor for AttributedString.Index();
  v66 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SelectionRanges<AttributedString.Index>(0, v20);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v26 = v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v57 - v29;
  type metadata accessor for (SelectionRanges<AttributedString.Index>, SelectionRanges<AttributedString.Index>.Index)(0, v28);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &v33[*(v34 + 56)];
  v57[2] = v5;
  v36 = v5;
  v37 = v68;
  _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v36, v33, type metadata accessor for SelectionRanges<AttributedString.Index>);
  *v35 = v37;
  v35[8] = a2 & 1;
  v57[1] = v24;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v33, v26, type metadata accessor for SelectionRanges<AttributedString.Index>);
    if (a2)
    {
      v39 = v61;
      v38 = v62;
      (*(v61 + 32))(v14, v26, v62);
      v40 = v63;
      RangeSet.ranges.getter();
      v41 = v64;
      RangeSet.Ranges.subscript.getter();
      (*(v65 + 8))(v40, v41);
      (*(v39 + 8))(v14, v38);
      return _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(v33, type metadata accessor for SelectionRanges<AttributedString.Index>);
    }

    v55 = a2;
    v19 = v62;
    v66 = v61;
    v30 = v26;
  }

  else
  {
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v33, v30, type metadata accessor for SelectionRanges<AttributedString.Index>);
    if ((a2 & 1) == 0 && (v37 & 1) == 0)
    {
      v37 = v66;
      v42 = *(v66 + 32);
      v42(v22, v30, v19);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        v43 = v58;
        v37[2](v58, v22, v19);
        v44 = v60;
        v42((v43 + *(v60 + 48)), v22, v19);
        v45 = v42;
        v68 = v42;
        v46 = v59;
        _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v43, v59, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v47 = v37;
        v48 = *(v44 + 48);
        v49 = v67;
        v45(v67, v46, v19);
        v50 = v47[1];
        (v50)(v46 + v48, v19);
        outlined init with take of SelectionRanges<AttributedString.Index>(v43, v46, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v51 = *(v44 + 48);
        type metadata accessor for Range<AttributedString.Index>(0, v52);
        (v68)(v49 + *(v53 + 36), v46 + v51, v19);
        (v50)(v46, v19);
        return _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(v33, type metadata accessor for SelectionRanges<AttributedString.Index>);
      }

      __break(1u);
    }

    v55 = a2;
  }

  (*(v66 + 8))(v30, v19);
  v71 = 0;
  v72 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v56 = MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v69 = v37;
  v70 = v55 & 1;
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for SelectionRanges<AttributedString.Index>.Index, type metadata accessor for SelectionRanges.Index, v56);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SelectionRanges.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v70 = a3;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for RangeSet.Ranges();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v61 = v53 - v8;
  v62 = type metadata accessor for RangeSet();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = v53 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = *(TupleTypeMetadata2 - 8);
  v56 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v57 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v54 = v53 - v13;
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v58 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v53 - v21;
  v67 = v5;
  v53[1] = type metadata accessor for SelectionRanges.Index(255, v6, v5, v23);
  v24 = swift_getTupleTypeMetadata2();
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v53 - v26;
  v28 = *a1;
  LODWORD(v29) = *(a1 + 8);
  v31 = v53 + *(v30 + 56) - v26;
  v66 = v17;
  v32 = *(v17 + 16);
  v32(v53 - v26, v69, a2, v25);
  v68 = v28;
  *v31 = v28;
  v31[8] = v29;
  v33 = a2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v58;
    (v32)(v58, v27, a2);
    if (v29)
    {
      v36 = v59;
      v35 = v60;
      v37 = v62;
      (*(v60 + 32))(v59, v34, v62);
      v38 = v61;
      RangeSet.ranges.getter();
      v39 = v64;
      RangeSet.Ranges.subscript.getter();
      (*(v63 + 8))(v38, v39);
      (*(v35 + 8))(v36, v37);
      return (*(v66 + 8))(v27, v33);
    }

    v65 = v60;
    v6 = v62;
    v52 = v34;
  }

  else
  {
    (v32)(v22, v27, a2);
    v40 = v22;
    if ((v29 & 1) == 0)
    {
      v41 = v65;
      if ((v68 & 1) == 0)
      {
        v29 = *(v65 + 32);
        v29(v16, v22, v6);
        if (dispatch thunk of static Comparable.<= infix(_:_:)())
        {
          v42 = v54;
          (*(v41 + 16))(v54, v16, v6);
          v43 = v56;
          v29(&v42[*(v56 + 48)], v16, v6);
          v44 = v55;
          v45 = *(v55 + 16);
          v69 = v33;
          v46 = v57;
          v45(v57, v42, v43);
          v64 = *(v43 + 48);
          v68 = v29;
          v29(v70, v46, v6);
          v47 = *(v41 + 8);
          v47(&v46[v64], v6);
          (*(v44 + 32))(v46, v42, v43);
          v48 = *(v43 + 48);
          v49 = type metadata accessor for Range();
          v68(&v70[*(v49 + 36)], &v46[v48], v6);
          v50 = v46;
          v33 = v69;
          v47(v50, v6);
          return (*(v66 + 8))(v27, v33);
        }

        __break(1u);
      }
    }

    v52 = v40;
  }

  (*(v65 + 8))(v52, v6);
  v73 = 0;
  v74 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v71 = v68;
  v72 = v29;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance SelectionRanges<A>(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = SelectionRanges.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

void (*SelectionRanges.subscript.read(uint64_t *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = type metadata accessor for Range();
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  v9 = *(a2 + 8);
  v11 = *a2;
  v12 = v9;
  SelectionRanges.subscript.getter(&v11, a3, v8);
  return ArrayWith2Inline.subscript.read;
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance SelectionRanges<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for SelectionRanges<A>, a3);

  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance SelectionRanges<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for SelectionRanges<A>, a4);

  return MEMORY[0x1EEE68B98](a1, a2, a3, a4, v8, v9);
}

void protocol witness for Collection.distance(from:to:) in conformance SelectionRanges<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for SelectionRanges<A>, a3);

  JUMPOUT(0x193ABE9B0);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance SelectionRanges<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t))
{
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  return a4(&v6, a2, a3);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance SelectionRanges<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v2, a1);
  swift_getWitnessTable(protocol conformance descriptor for SelectionRanges<A>, a1);
  v5 = type metadata accessor for IndexingIterator();
  SelectionRanges.startIndex.getter(a1, (a2 + *(v5 + 36)));
  v6 = *(v8 + 8);

  return v6(v2, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance SelectionRanges<A>(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for SelectionRanges<A>, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance SelectionRanges<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for SelectionRanges<A>, a1);

  return Collection._copyToContiguousArray()();
}

uint64_t SelectionRanges<>.init<A>(_:in:)@<X0>(uint64_t a1@<X0>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, unint64_t *x8_0@<X8>)
{
  type metadata accessor for _NSRange(0);
  v12 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(specialized implicit closure #1 in SelectionRanges<>.init<A>(_:in:), 0, a4, v10, MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], v11);
  _s7SwiftUI15SelectionRangesOAASS5IndexVRszrlE_2inACyAEGqd___SStcSTRd__So8_NSRangeV7ElementRtd__lufCSayAIG_Tt2g5(v12, x8_0);
  v13 = *(*(a4 - 1) + 8);

  return v13(a1, a4);
}

id specialized implicit closure #1 in SelectionRanges<>.init<A>(_:in:)@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rangeValue];
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t _s7SwiftUI15SelectionRangesOAASS5IndexVRszrlE_2inACyAEGqd___SStcSTRd__So8_NSRangeV7ElementRtd__lufCSayAIG_Tt2g5@<X0>(uint64_t a1@<X0>, unint64_t *a4@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 40;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = Range<>.init(_:in:)();
      if ((v10 & 1) == 0)
      {
        v11 = v8;
        v12 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
        }

        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        if (v14 >= v13 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v6);
        }

        *(v6 + 2) = v14 + 1;
        v7 = &v6[16 * v14];
        *(v7 + 4) = v11;
        *(v7 + 5) = v12;
      }

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (*(v6 + 2) == 1 && (v15 = *(v6 + 4), (*(v6 + 5) ^ v15) < 0x4000))
  {

    *a4 = v15;
    type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  }

  else
  {
    _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufCSS5IndexV_SaySnyAIGGTt1g5(v6);
    type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t SelectionRanges<>.init<A>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, unint64_t *a6@<X8>)
{
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E66A8]);
  v9 = Sequence.compactMap<A>(_:)();

  if (v9[2] != 1 || (v10 = v9[4], (v9[5] ^ v10) >> 14))
  {
    v11 = _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufCSS5IndexV_SaySnyAIGGTt1g5(v9);
    (*(*(a4 - 8) + 8))(a1, a4, v11);
    type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  }

  else
  {
    (*(*(a4 - 8) + 8))(a1, a4);

    *a6 = v10;
    type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t partial apply for closure #1 in SelectionRanges<>.init<A>(_:in:)@<X0>(uint64_t a2@<X8>)
{
  result = Range<>.init(_:in:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t SelectionRanges<>.init<A>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>, double a6@<D0>)
{
  v25 = a5;
  type metadata accessor for Range<AttributedString.Index>(0, a6);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SelectionRanges<AttributedString.Index>(0, v11);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  v17 = Sequence.compactMap<A>(_:)();
  if (*(v17 + 16) != 1)
  {
    goto LABEL_5;
  }

  v19 = v17;
  _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v13, type metadata accessor for Range<AttributedString.Index>);
  v20 = type metadata accessor for AttributedString.Index();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(v13, type metadata accessor for Range<AttributedString.Index>);
    v17 = v19;
LABEL_5:
    v21 = _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufC10Foundation16AttributedStringV5IndexV_SaySnyALGGTt1g5(v17, v18);
    (*(*(a3 - 8) + 8))(a1, a3, v21);
    goto LABEL_6;
  }

  (*(*(a3 - 8) + 8))(a1, a3);

  (*(*(v20 - 8) + 16))(v16, v13, v20);
  _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(v13, type metadata accessor for Range<AttributedString.Index>);
LABEL_6:
  swift_storeEnumTagMultiPayload();
  outlined init with take of SelectionRanges<AttributedString.Index>(v16, v25, type metadata accessor for SelectionRanges<AttributedString.Index>);
  v22 = type metadata accessor for AttributedString();
  return (*(*(v22 - 8) + 8))(a2, v22);
}

void _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    v7 = type metadata accessor for AttributedString.Index();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t closure #1 in SelectionRanges<>.init<A>(_:in:)(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*a1 rangeValue];
  (*(v5 + 16))(v8, a2, v4);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  return Range<>.init<A>(_:in:)();
}

uint64_t Array<A>.init(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = specialized Collection.count.getter();
  if (v16)
  {
    v17 = v16;
    v38 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    outlined init with copy of SelectionRanges<String.Index>(a1, v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      (*(v10 + 32))(v12, v15, v9);
      RangeSet.ranges.getter();
      v19 = v30;
      v20 = RangeSet.Ranges.startIndex.getter();
      (*(v29 + 8))(v7, v19);
      result = (*(v10 + 8))(v12, v9);
    }

    else
    {
      result = outlined destroy of SelectionRanges<String.Index>(v15);
      v20 = 0;
    }

    v36 = v20;
    v37 = EnumCaseMultiPayload == 1;
    if (v17 < 0)
    {
      __break(1u);
    }

    else
    {
      v22 = objc_opt_self();
      v23 = v31;
      do
      {
        v34 = specialized SelectionRanges.subscript.getter(v36, v37);
        v35 = v24;
        v32 = v23;
        v33 = a3;
        v25 = MEMORY[0x1E69E66A8];
        type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E66A8]);
        lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>, &lazy cache variable for type metadata for Range<String.Index>, v25, MEMORY[0x1E69E66D8]);
        lazy protocol witness table accessor for type String and conformance String();

        v26 = _NSRange.init<A, B>(_:in:)();
        v28 = [v22 valueWithRange_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        specialized SelectionRanges.index(after:)(v36, v37, &v36);
        --v17;
      }

      while (v17);
      outlined destroy of SelectionRanges<String.Index>(a1);

      return v38;
    }
  }

  else
  {

    outlined destroy of SelectionRanges<String.Index>(a1);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

{
  v64 = a2;
  type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index)(0);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v58 = v8;
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v52 - v9;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
  v60 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v52 - v12;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v52 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v22 = specialized Collection.count.getter();
  if (!v22)
  {

    outlined destroy of SelectionRanges<String.Index>(a1);
    return MEMORY[0x1E69E7CC0];
  }

  v23 = v22;
  v53 = v11;
  v72 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 & ~(v22 >> 63), 0);
  v24 = v72;
  v65 = a1;
  outlined init with copy of SelectionRanges<String.Index>(a1, v21);
  LODWORD(v55) = swift_getEnumCaseMultiPayload();
  v25 = v55 == 1;
  v61 = v14;
  if (v55 == 1)
  {
    v26 = v53;
    (*(v53 + 32))(v59, v21, v60);
    v54 = v18;
    v27 = v57;
    RangeSet.ranges.getter();
    v28 = v58;
    v30 = RangeSet.Ranges.startIndex.getter();
    v31 = v56;
    v29 = v27;
    v18 = v54;
    v56[1](v29, v28);
    (*(v26 + 8))(v59, v60);
  }

  else
  {
    outlined destroy of SelectionRanges<String.Index>(v21);
    v30 = 0;
    v31 = v56;
  }

  v70 = v30;
  v71 = v55 == 1;
  if ((v23 & 0x8000000000000000) == 0)
  {
    v54 = v31 + 1;
    v55 = (v53 + 32);
    v56 = (v53 + 8);
    for (i = v23 - 1; ; --i)
    {
      v33 = &v7[*(v63 + 48)];
      outlined init with copy of SelectionRanges<String.Index>(v65, v7);
      *v33 = v30;
      v33[8] = v25;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = v24;
        v35 = i;
        v36 = v18;
        v37 = a3;
        v38 = v7;
        outlined init with copy of SelectionRanges<String.Index>(v7, v62);
        if (!v25)
        {
          goto LABEL_21;
        }

        v40 = v59;
        v39 = v60;
        (*v55)(v59, v62, v60);
        v41 = v57;
        RangeSet.ranges.getter();
        v42 = v58;
        RangeSet.Ranges.subscript.getter();
        (*v54)(v41, v42);
        (*v56)(v40, v39);
        a3 = v37;
        v7 = v38;
        v18 = v36;
        i = v35;
        v24 = v34;
      }

      else
      {
        outlined init with copy of SelectionRanges<String.Index>(v7, v18);
        if (v25 || (v30 & 1) != 0)
        {
          goto LABEL_22;
        }

        v68 = *v18;
        v69 = v68;
      }

      outlined destroy of SelectionRanges<String.Index>(v7);
      v66 = v64;
      v67 = a3;
      v43 = MEMORY[0x1E69E66A8];
      type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E66A8]);
      lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>, &lazy cache variable for type metadata for Range<String.Index>, v43, MEMORY[0x1E69E66D8]);
      lazy protocol witness table accessor for type String and conformance String();

      v44 = _NSRange.init<A, B>(_:in:)();
      v72 = v24;
      v47 = *(v24 + 16);
      v46 = *(v24 + 24);
      if (v47 >= v46 >> 1)
      {
        v53 = v44;
        v50 = v45;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
        v45 = v50;
        v44 = v53;
        v24 = v72;
      }

      *(v24 + 16) = v47 + 1;
      v48 = v24 + 16 * v47;
      *(v48 + 32) = v44;
      *(v48 + 40) = v45;
      v49 = v65;
      specialized SelectionRanges.index(after:)(v70, v71, &v70);
      if (!i)
      {
        break;
      }

      v25 = v71;
      v30 = v70;
    }

    outlined destroy of SelectionRanges<String.Index>(v49);

    return v24;
  }

  __break(1u);
LABEL_21:
  (*v56)(v62, v60);
  v25 = 0;
LABEL_22:
  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v66 = v30;
  LOBYTE(v67) = v25;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>.Index, type metadata accessor for SelectionRanges.Index);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for Range<String.Index>(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void type metadata accessor for Range<String.Index>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Array<A>.init(_:in:)(uint64_t a1, uint64_t a2, double a3)
{
  v9[2] = a2;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI15SelectionRangesOy10Foundation16AttributedStringV5IndexVG_So7NSValueCs5NeverOTg5(partial apply for closure #1 in Array<A>.init(_:in:), v9, a3);
  v6 = v5;
  _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(a1, type metadata accessor for SelectionRanges<AttributedString.Index>);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 8))(a2, v7);
  return v6;
}

id closure #1 in Array<A>.init(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0, v8);
  MEMORY[0x1EEE9AC00](v11);
  _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(a1, v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Range<AttributedString.Index>);
  (*(v7 + 16))(v10, a2, v6);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  v13 = _NSRange.init<A, B>(_:in:)();
  result = [objc_opt_self() valueWithRange_];
  *a3 = result;
  return result;
}

uint64_t _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double associated type witness table accessor for Collection.Indices : BidirectionalCollection in SelectionRanges<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionRanges<A>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E5EB0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : BidirectionalCollection in SelectionRanges<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionRanges<A>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74D8], a1, &v5, WitnessTable);
}

uint64_t type metadata completion function for SelectionRanges(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RangeSet();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SelectionRanges(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for RangeSet();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      (*(*(*(a3 + 16) - 8) + 16))(a1, a2, *(a3 + 16));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for SelectionRanges(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for RangeSet();
  }

  v6 = *(*(v5 - 8) + 8);

  return v6(a1);
}

uint64_t initializeWithCopy for SelectionRanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(a3 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for RangeSet();
  }

  (*(*(v7 - 8) + 16))(a1, a2);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for SelectionRanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(a3 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for RangeSet();
    }

    (*(*(v7 - 8) + 16))(a1, a2);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for SelectionRanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(a3 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for RangeSet();
  }

  (*(*(v7 - 8) + 32))(a1, a2);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for SelectionRanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(a3 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for RangeSet();
    }

    (*(*(v7 - 8) + 32))(a1, a2);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SelectionRanges<AttributedString.Index>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

Swift::Bool __swiftcall ResettableGestureRule.resetIfNeeded()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for GesturePhase(0, AssociatedTypeWitness, v7, v8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  v14 = (*(v4 + 40))(v5, v4, v11);
  if (v14 == (*(v4 + 32))(v5, v4))
  {
    swift_getAssociatedTypeWitness();
    if (AGGraphGetOutputValue())
    {
      (*(v4 + 24))(v5, v4);
      v15 = GesturePhase.isTerminal.getter(v9);
      (*(v10 + 8))(v13, v9);
      if (v15)
      {
        $defer #1 <A>() in ResettableGestureRule.resetIfNeeded()(v3, v5, v4);
        return 0;
      }
    }
  }

  else
  {
    (*(v4 + 64))(v5, v4);
  }

  $defer #1 <A>() in ResettableGestureRule.resetIfNeeded()(v3, v5, v4);
  return 1;
}

uint64_t ResettableGestureRule<>.phaseValue.getter@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for GesturePhase(0, AssociatedTypeWitness, v5, v6);
  result = AGGraphGetOutputValue();
  if (result)
  {
    v9 = *(*(v7 - 8) + 16);

    return v9(a3, result, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for ResettableGestureRule.phaseValue.getter in conformance EventListenerPhase<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for EventListenerPhase.Value(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable(protocol conformance descriptor for EventListenerPhase<A>.Value, v6);
  return ResettableGestureRule<>.phaseValue.getter(a1, a2, v7);
}

uint64_t ResettableGestureRule<>.phaseValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  result = AGGraphGetOutputValue();
  if (result)
  {
    (*(v5 + 16))(v7, result, AssociatedTypeWitness);
    (*(a3 + 16))(AssociatedTypeWitness, a3);
    return (*(v5 + 8))(v7, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t $defer #1 <A>() in ResettableGestureRule.resetIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  v10 = (*(a3 + 32))(a2, a3);
  (*(v6 + 8))(v9, a2);
  return (*(a3 + 48))(v10, a2, a3);
}

double View.map<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7, v16);
  (*(v15 + 32))(a7, v18, a3);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v19 = (a7 + *(type metadata accessor for MappedViews(0, v21) + 52));
  *v19 = a1;
  v19[1] = a2;

  return result;
}

double MappedViewElement.id.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

double MappedViewElement.id.setter(uint64_t a1)
{
  v3 = *(a1 + 8);

  result = *a1;
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

double MappedViewElement.traits.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

void MappedViewElement.traits.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

uint64_t MappedViewElement.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized MappedViewElement.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*MappedViewElement.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
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
  ViewTraitCollection.subscript.getter(a3, a4, v15);
  return MappedViewElement.subscript.modify;
}

void MappedViewElement.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized MappedViewElement.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized MappedViewElement.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static MappedViews._makeViewList(view:inputs:)@<X0>(unsigned int *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  outlined init with copy of _ViewListInputs(a2, v37);
  if ((v38 & 0x800) == 0)
  {
    v38 |= 0x800uLL;
  }

  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static MappedViews._makeViewList(view:inputs:)(1, a3, a4, a5, a6);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v26);
  v15 = v26;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v33) = v15;
  (*(a5 + 32))(&v33, v37, a3, a5);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v15, a3, a5);
  v16 = _ViewListOutputs.makeAttribute(inputs:)(v37);
  v17 = a2[1];
  v28[0] = *a2;
  v28[1] = v17;
  v29 = a2[2];
  v30 = v28[0];
  v31 = v17;
  v32 = v29;
  outlined init with copy of _GraphInputs(v28, &v33);
  v18 = default argument 3 of MappedViews.MappedList.Init.init(list:view:baseInputs:views:)(a3, a4);
  *&v27[0] = __PAIR64__(v13, v16);
  *(v27 + 8) = v30;
  *(&v27[1] + 8) = v31;
  *(&v27[2] + 8) = v32;
  *(&v27[3] + 1) = v18;
  MEMORY[0x1EEE9AC00](v18);
  *&v33 = a3;
  *(&v33 + 1) = a4;
  *&v34 = a5;
  *(&v34 + 1) = a6;
  v19 = type metadata accessor for MappedViews.MappedList.Init(0, &v33);
  v24[2] = v19;
  swift_getWitnessTable(protocol conformance descriptor for MappedViews<A, B>.MappedList.Init, v19);
  v24[3] = v20;
  _s14AttributeGraph0A0Vy7SwiftUI8ViewList_pGMaTm_1(0, &lazy cache variable for type metadata for Attribute<ViewList>, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v27, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_6, v24, v19, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  v33 = v27[0];
  v34 = v27[1];
  v35 = v27[2];
  v36 = v27[3];
  (*(*(v19 - 8) + 8))(&v33, v19);
  outlined destroy of _ViewListInputs(v37);
  LODWORD(v19) = v25;
  result = outlined destroy of _ViewListOutputs.Views(a7);
  *a7 = v19;
  *(a7 + 8) = 0;
  *(a7 + 40) = 1;
  return result;
}

uint64_t closure #1 in static MappedViews._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for MappedViews(0, v11);
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

uint64_t static MappedViews._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v31[0] = *a1;
  v31[1] = v7;
  v8 = a1[1];
  v9 = a1[3];
  v32 = a1[2];
  v33 = v9;
  v10 = a1[3];
  v34 = a1[4];
  v11 = *&v31[0];
  v12 = *(&v31[0] + 1) | 0x800;
  *&v24[0] = *&v31[0];
  *(&v24[0] + 1) = *(&v31[0] + 1) | 0x800;
  v24[1] = v8;
  v24[2] = v32;
  v13 = a1[4];
  v24[3] = v10;
  v24[4] = v13;
  v21 = v32;
  v22 = v10;
  v23 = v13;
  v19 = v24[0];
  v20 = v8;
  v14 = *(a4 + 40);
  outlined init with copy of _ViewListCountInputs(v31, v26);
  outlined init with copy of _ViewListCountInputs(v24, v26);
  v15 = v14(&v19, a2, a4);
  v25[2] = v21;
  v25[3] = v22;
  v25[4] = v23;
  v25[0] = v19;
  v25[1] = v20;
  outlined destroy of _ViewListCountInputs(v25);
  v26[0] = v11;
  v26[1] = v12;
  v16 = a1[2];
  v27 = a1[1];
  v28 = v16;
  v17 = a1[4];
  v29 = a1[3];
  v30 = v17;
  outlined destroy of _ViewListCountInputs(v26);
  return v15;
}

uint64_t MappedViews.MappedList.firstOffset<A>(forID:style:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v10);
  v13 = v9;
  return (*(v11 + 80))(a1, &v13, a4, a5, v10, v11);
}

Swift::Void __swiftcall MappedViews.MappedList.print(into:)(SwiftUI::SExpPrinter *into)
{
  v3 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](15917, 0xE200000000000000);
  v4 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v4);

  depth = into->depth;
  if (depth)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](544235885, 0xE400000000000000);
    if (__OFADD__(depth, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    into->depth = depth + 1;
    v6 = 8224;
    v7 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v6 = 544235885;
    v7 = 0xE400000000000000;
  }

  MEMORY[0x193ABEDD0](v6, v7);

  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v8);
  (*(v9 + 88))(into, v8, v9);
  v11 = into->depth;
  if (!v11)
  {
LABEL_8:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    return;
  }

  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (!v12)
  {
    into->depth = v13;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v10);
    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MappedViews<A, B>.MappedList(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for MappedViews<A, B>.MappedList, a1);

  return ViewList.debugDescription.getter(a1, v2);
}

uint64_t MappedViews.MappedElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v57 = *MEMORY[0x1E69E9840];
  v13 = *(v6 + 96);
  *&v52[0] = *(v6 + 88);
  *(&v52[0] + 1) = v13;

  _ViewList_ID.Canonical.init(id:)(v52, &v56);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_20:
    __break(1u);
  }

  if (a1 > 0x7FFFFFFF)
  {
    goto LABEL_20;
  }

  LODWORD(v56) = a1;
  outlined init with copy of AnyTrackedValue(a2, v43);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _ViewList_Elements, &protocol descriptor for _ViewList_Elements);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v20 = type metadata accessor for Optional();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    (*(*(v20 - 8) + 8))(&v44, v20);
    return 0;
  }

  v32 = a4;
  v33 = a5;
  *&v53[32] = v48;
  *&v53[48] = v49;
  v54 = v50;
  v55 = v51;
  v52[0] = v44;
  v52[1] = v45;
  *v53 = v46;
  *&v53[16] = v47;
  v14 = *(v6 + 120);
  v15 = *(&v56 + 1);
  swift_beginAccess();
  v16 = *(v14 + 16);
  *&v43[0] = v56;
  *(&v43[0] + 1) = v15;
  v31 = a6[3];
  v17 = type metadata accessor for WeakAttribute();
  lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();
  v19 = v18;

  MEMORY[0x193ABE750](v42, v43, v16, &type metadata for _ViewList_ID.Canonical, v17, v19);

  if (BYTE8(v42[0]))
  {
    swift_endAccess();
LABEL_16:

    (*(*(a6 - 1) + 8))(v52, a6);
    return 0;
  }

  swift_endAccess();
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    v43[0] = v56;
    swift_beginAccess();
    type metadata accessor for Dictionary();

    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    goto LABEL_16;
  }

  v21 = *(v6 + 24);
  v22 = *(v6 + 32);
  __swift_project_boxed_opaque_existential_1(v6, v21);
  if (((*(v22 + 24))(a1, v52, a3, v32, v33 & 1, v21, v22) & 1) == 0 || (v23 = *(v6 + 56), v41[0] = *(v6 + 40), v41[1] = v23, v24 = *(v6 + 72), v25 = *(v6 + 56), v38 = *(v6 + 40), v39 = v25, v40 = *(v6 + 72), v42[1] = *&v53[24], v42[2] = *&v53[40], v41[2] = v24, v42[0] = *&v53[8], v35 = *&v53[8], v36 = *&v53[24], v37 = *&v53[40], outlined init with copy of _GraphInputs(v41, v34), outlined init with copy of _GraphInputs(v42, v34), v26 = _GraphInputs.tryToReuse(by:indirectMap:testOnly:)(&v35, v32, v33 & 1), v43[0] = v35, v43[1] = v36, v43[2] = v37, outlined destroy of _GraphInputs(v43), v44 = v38, v45 = v39, v46 = v40, v27 = outlined destroy of _GraphInputs(&v44), !v26))
  {
    swift_beginAccess();
    if (static ReuseTrace.recorder)
    {
      AGGraphAddTraceEvent();
    }

    goto LABEL_16;
  }

  if ((v33 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v27);
    v30 = *(a6 + 2);
    *&v38 = a6[2];
    *(&v38 + 1) = v31;
    v39 = v30;
    v28 = type metadata accessor for MappedViews.ElementView(0, &v38);
    MEMORY[0x1EEE9AC00](v28);
    AGGraphMutateAttribute();
  }

  (*(*(a6 - 1) + 8))(v52, a6);
  return 1;
}

double closure #1 in MappedViews.MappedElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v12 = *(a2 + 96);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  type metadata accessor for MappedViews.MappedElements(0, v15);
  LODWORD(a5) = *(a2 + 112);
  AGWeakAttributeGetAttribute();

  v13 = AGCreateWeakAttribute();
  result = *(a2 + 88);
  *a1 = result;
  *(a1 + 8) = v12;
  *(a1 + 16) = a5;
  *(a1 + 20) = v13;
  return result;
}

uint64_t specialized MappedViewElement.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return ViewTraitCollection.subscript.setter(v11, a2, a3, a4);
}

void *initializeBufferWithCopyOfBuffer for MappedViewElement(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;

  return a1;
}