uint64_t storeEnumTagSinglePayload for PathDrawingStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

void @objc closure #1 in static NSRunLoop.addObserver(_:)()
{
  v0 = MEMORY[0x193AC38C0]();
  specialized static NSRunLoop.flushObservers()();

  objc_autoreleasePoolPop(v0);
}

uint64_t specialized static NSRunLoop.flushObservers()()
{
  while (1)
  {
    if (one-time initialization token for observerActions != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    rawValue = observerActions._rawValue;
    if (!*(observerActions._rawValue + 2))
    {
      return result;
    }

    observerActions._rawValue = MEMORY[0x1E69E7CC0];
    specialized static Update.begin()();
    v2 = static Update.dispatchDepth;
    static Update.dispatchDepth = static Update.depth;
    swift_beginAccess();
    atomic_fetch_add_explicit(&static Update.Action.nextActionID, 2u, memory_order_relaxed);
    swift_endAccess();
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
    {
      __break(1u);
LABEL_21:
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 97) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 21313;
      type metadata accessor for (UInt32, UInt32?)(0);
      AGGraphAddTraceEvent();
    }

    v3 = rawValue[2];
    if (v3)
    {
      v4 = (rawValue + 5);
      do
      {
        v5 = *(v4 - 1);

        v5(v6);

        v4 += 16;
        --v3;
      }

      while (v3);
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
    {
      goto LABEL_21;
    }

    if (*(static CustomEventTrace.enabledCategories + 97) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 17985;
        type metadata accessor for (UInt32, UInt32?)(0);
        AGGraphAddTraceEvent();
      }
    }

    static Update.dispatchDepth = v2;
    static Update.end()();
  }
}

uint64_t storeEnumTagSinglePayload for ViewGraphHost.Idiom(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewGraphHost.Idiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t EnvironmentValues.viewGraphIdiom.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Ttg5(v3, *v2);
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t type metadata completion function for TypedElement(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

SwiftUI::BloomFilter PropertyList.Element.init(keyType:before:after:)(Swift::Int a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 64) = AGMakeUniqueID();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  result.value = BloomFilter.init(hashValue:)(a1).value;
  if (!a2)
  {
    v13 = v18;
    if (a3)
    {
      v14 = *(a3 + 48);
      v15 = v14 + 1;
      if (v14 == -1)
      {
        goto LABEL_17;
      }

      v16 = *(a3 + 52);
      if (v16 > 0xF)
      {
        v17 = 1;
        v12 = a3;
      }

      else
      {
        v17 = v16 + 1;
        v13 = *(a3 + 56) | v18;
        v12 = *(a3 + 40);
      }

      *(v3 + 48) = v15;
      *(v3 + 52) = v17;
    }

    else
    {
      v12 = 0;
      *(v3 + 48) = 0x100000001;
    }

    *(v3 + 56) = v13;
    goto LABEL_15;
  }

  v8 = *(a2 + 48);

  v9 = v8 + 1;
  if (v8 == -1)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
LABEL_6:
      *(v3 + 48) = v9;
      *(v3 + 52) = 0;
      *(v3 + 56) = -1;
      v12 = v3;
LABEL_15:
      *(v3 + 40) = v12;
      return v3;
    }

    v10 = *(a3 + 48);
    v11 = __CFADD__(v9, v10);
    v9 += v10;
    if (!v11)
    {

      goto LABEL_6;
    }
  }

LABEL_17:
  __break(1u);
  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE025AssetCatalogConfigurationV033_F748B30B59970FC73194935C526E3031LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE025AssetCatalogConfigurationF033_F748B30B59970FC73194935C526E3031LLVG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(*a1);
  if (!v4 || (v5 = *(v4 + 11), v12[0] = *(v4 + 9), v12[1] = v5, v12[2] = *(v4 + 13), v13 = *(v4 + 120), result = _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE025AssetCatalogConfigurationE033_F748B30B59970FC73194935C526E3031LLV_Tt1B5(a2, v12), (result & 1) == 0))
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>(0);
    v8 = swift_allocObject();
    v9 = *(a2 + 16);
    *(v8 + 72) = *a2;
    *(v8 + 88) = v9;
    *(v8 + 104) = *(a2 + 32);
    *(v8 + 120) = *(a2 + 48);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v7);
  }

  return result;
}

uint64_t one-time initialization function for forced()
{
  if (one-time initialization token for firstRelease != -1)
  {
    swift_once();
  }

  v0 = static Semantics.firstRelease;
  result = dyld_program_sdk_at_least();
  if (result)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  static Semantics.forced = v2;
  byte_1ED53C51C = result;
  dword_1ED53C520 = v2;
  byte_1ED53C524 = result;
  return result;
}

uint64_t one-time initialization function for v1()
{
  result = swiftUI_v1_os_versions();
  static Semantics.v1 = HIDWORD(result);
  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  type metadata accessor for [String](0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static Solarium.isEnabled(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for cachedValues != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v1, &v3);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  return v3 == 2;
}

void static Solarium.enablement(_:)(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (one-time initialization token for cachedValues != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v3, &v4);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  *a2 = v4;
}

unint64_t one-time initialization function for cachedValues()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI8SolariumV15EnablementIdiomO_AE0F5LevelO_AE0F8CriteriaVtTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static Solarium.cachedValues = 0;
  qword_1ED539018 = result;
  return result;
}

void lazy protocol witness table accessor for type Solarium.FeatureFlagKey and conformance Solarium.FeatureFlagKey()
{
  if (!lazy protocol witness table cache variable for type Solarium.FeatureFlagKey and conformance Solarium.FeatureFlagKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for Solarium.FeatureFlagKey, &type metadata for Solarium.FeatureFlagKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Solarium.FeatureFlagKey and conformance Solarium.FeatureFlagKey);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      if (v8[1] == a2 && *v8 == a1)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v9 = *v8;
      v10 = v8[1];
      v12 = v8[2];
      v11 = v8[3];
      if (v9 == a1 && v10 == HIDWORD(a1) && v12 == a2 && v11 == HIDWORD(a2))
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  v2 = a2;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  Hasher._combine(_:)(v2);
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2, v4);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  MEMORY[0x193AC11A0](a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  MEMORY[0x193AC11A0](a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t one-time initialization function for hardwareSupportsSolarium()
{
  v1 = 1;
  if (!_SwiftUIIsAppleInternalBuild() || (result = _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV06Ignorei13HardwareCheckcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5(), (result & 1) == 0))
  {
    result = _SwiftUIIsAppleInternalBuild();
    if (result)
    {
      result = _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV04Faili13HardwareCheckcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5();
      if (result)
      {
        v1 = 0;
      }
    }
  }

  static Solarium.SolariumHardwareSupport.hardwareSupportsSolarium = v1;
  return result;
}

uint64_t _SwiftUIIsAppleInternalBuild()
{
  if (_SwiftUIIsAppleInternalBuild_once != -1)
  {
    _SwiftUIIsAppleInternalBuild_cold_1();
  }

  return _SwiftUIIsAppleInternalBuild_isInternal;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t one-time initialization function for v7()
{
  result = swiftUI_v7_0_os_versions();
  static Semantics.v7 = HIDWORD(result);
  return result;
}

uint64_t specialized static Update.begin()()
{
  v65 = *MEMORY[0x1E69E9840];
  v50 = type metadata accessor for OSSignpostID();
  v0 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v41 - v3;
  if (one-time initialization token for _lock != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    result = _MovableLockLock(static Update._lock);
    v6 = static Update.depth + 1;
    if (__OFADD__(static Update.depth, 1))
    {
      __break(1u);
LABEL_44:
      swift_once();
      goto LABEL_5;
    }

    ++static Update.depth;
    if (v6 != 1)
    {
      return result;
    }

    if (one-time initialization token for viewHost != -1)
    {
      goto LABEL_44;
    }

LABEL_5:
    v7 = static Signpost.viewHost;
    v8 = word_1ED53C1D0;
    v9 = HIBYTE(word_1ED53C1D0);
    v10 = byte_1ED53C1D2;
    v11 = static os_signpost_type_t.begin.getter();
    if (one-time initialization token for traceHost != -1)
    {
      swift_once();
    }

    v12 = static Update.traceHost;
    v59 = v7;
    v60 = v8;
    v61 = v9;
    v62 = v10;
    result = Signpost.isEnabled.getter();
    if ((result & 1) == 0)
    {
      return result;
    }

    v13 = one-time initialization token for _signpostLog;
    swift_unknownObjectRetain();
    if (v13 != -1)
    {
      swift_once();
    }

    v14 = _signpostLog;
    OSSignpostID.init(log:object:)();
    _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg);
    v15 = swift_allocObject();
    v16 = v15;
    *(v15 + 16) = xmmword_18DDAB4C0;
    v17 = MEMORY[0x1E69E65A8];
    *(v15 + 56) = MEMORY[0x1E69E6530];
    *(v15 + 64) = v17;
    v18 = MEMORY[0x1E69E6810];
    *(v15 + 32) = 0;
    v19 = MEMORY[0x1E69E6870];
    *(v15 + 96) = v18;
    *(v15 + 104) = v19;
    *(v15 + 72) = v12;
    if (v9)
    {
      break;
    }

    v45 = v7;
    if (v7 == 20)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    v21 = bswap32(v7) | (4 * WORD1(v7));
    v22 = v11;
    v24 = *(v0 + 16);
    v23 = v0 + 16;
    v42 = v4;
    v43 = v24;
    v25 = v24(v51, v4, v50);
    v26 = 0;
    LOBYTE(v54[0]) = 1;
    v48 = 16 * *(&v7 + 1);
    v49 = (v23 - 8);
    v46 = v23;
    v47 = v16 + 32;
    v44 = *(&v7 + 1);
LABEL_16:
    v52 = &v41;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v28 + 8;
    v30 = v20;
    v31 = v28 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v0 = v47 + 40 * v26;
    while (1)
    {
      v32 = *(v16 + 16);
      if (v26 == v32)
      {
        LOBYTE(v54[0]) = 0;
LABEL_24:
        v35 = v45;
        if (v45 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v35 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v36 = v50;
        v37 = *v49;
        v38 = v51;
        (*v49)(v51, v50);
        v39 = __swift_project_value_buffer(v36, static OSSignpostID.continuation);
        v25 = v43(v38, v39, v36);
        v20 = v44;
        if ((v54[0] & 1) == 0)
        {
          v40 = v50;
          v37(v51, v50);
          v37(v42, v40);
        }

        goto LABEL_16;
      }

      if (v26 >= v32)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v0, &v59);
      v33 = v63;
      v4 = v64;
      __swift_project_boxed_opaque_existential_1(&v59, v63);
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v21 | v22, v33, v4);
      *v29 = v34 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v59);
      v0 += 40;
      if (!--v20)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

  v58 = v11;
  v56 = v14;
  v57 = &dword_18D018000;
  v59 = v7;
  v60 = v8;
  v54[0] = "ViewHost: (%p) update began PlatformHost [ %p ]";
  v54[1] = 47;
  v55 = 2;
  v53 = v15;
  specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v58, &v57, &v56, &v59, v4, v54, &v53);
  (*(v0 + 8))(v4, v50);
}

pthread_mutex_t *one-time initialization function for _lock()
{
  result = _MovableLockCreate();
  static Update._lock = result;
  return result;
}

pthread_mutex_t *_MovableLockCreate()
{
  v0 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10E004046517BCFuLL);
  if (!v0)
  {
    abort();
  }

  v1 = v0;
  pthread_mutex_init(v0, 0);
  pthread_cond_init(&v1[1], 0);
  *&v1[1].__opaque[40] = pthread_main_thread_np();
  return v1;
}

uint64_t _MovableLockLock(uint64_t a1)
{
  result = pthread_self();
  if (result == *(a1 + 120))
  {
    v4 = *(a1 + 128) + 1;
  }

  else
  {
    v3 = result;
    result = pthread_mutex_lock(a1);
    while (*(a1 + 120))
    {
      result = wait_for_lock(a1, v3);
    }

    *(a1 + 120) = v3;
    v4 = 1;
  }

  *(a1 + 128) = v4;
  return result;
}

double one-time initialization function for viewHost()
{
  *&result = 594196;
  static Signpost.viewHost = xmmword_18DDB55E0;
  word_1ED53C1D0 = 0;
  byte_1ED53C1D2 = 3;
  return result;
}

uint64_t type metadata accessor for CAMediaTimingFunction(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t one-time initialization function for traceHost()
{
  type metadata accessor for Update.TraceHost();
  result = swift_allocObject();
  static Update.traceHost = result;
  return result;
}

uint64_t Signpost.isEnabled.getter()
{
  v1 = *(v0 + 18);
  if (v1 < 2)
  {
    return 0;
  }

  if (v1 == 2)
  {
    return _SwiftUIIsAppleInternalBuild();
  }

  if (*(v0 + 17))
  {
    static os_signpost_type_t.event.getter();
    result = kdebug_is_enabled();
    if (result)
    {
      if (one-time initialization token for _signpostLog != -1)
      {
        swift_once();
      }

      return OS_os_log.signpostsEnabled.getter() & 1;
    }
  }

  else
  {
    static os_signpost_type_t.event.getter();
    return kdebug_is_enabled();
  }

  return result;
}

uint64_t one-time initialization function for update()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.update = result;
  return result;
}

uint64_t handleTraceNotification(graph:token:)(void *a1, int token)
{
  state64[1] = *MEMORY[0x1E69E9840];
  state64[0] = 0;
  result = notify_get_state(token, state64);
  if (state64[0] == 1)
  {
    result = dlopen("/System/Library/PrivateFrameworks/SwiftUITracingSupport.framework/SwiftUITracingSupport", 4);
    if (result)
    {
      result = dlsym(result, "swiftUITraceRegister");
      if (result)
      {
        v4 = result;
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        v5 = static Update._lock;
        _MovableLockLock(static Update._lock);
        closure #1 in handleTraceNotification(graph:token:)(v4, a1);
        return _MovableLockUnlock(v5);
      }
    }
  }

  return result;
}

void GraphHost.Data.init()(uint64_t a1@<X8>)
{
  if (one-time initialization token for sharedGraph != -1)
  {
    swift_once();
  }

  Shared = AGGraphCreateShared();
  *a1 = Shared;
  v3 = Shared;
  v4 = AGSubgraphCreate();
  *(a1 + 8) = v4;
  v5 = AGSubgraphGetCurrent();
  v6 = v4;
  AGSubgraphSetCurrent();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 16963;
    type metadata accessor for AGSubgraphRef(0);
    AGGraphAddTraceEvent();
  }

  v7 = Attribute.init<A>(body:value:flags:update:)();
  *(a1 + 28) = v7;
  v8 = Attribute.init<A>(body:value:flags:update:)();
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
LABEL_15:
    __break(1u);
  }

  v9 = v8;
  v15 = v6;
  v16 = v5;
  v17 = v3;
  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)(0, &lazy cache variable for type metadata for (ViewGraphRootValues, AGAttribute), type metadata accessor for AGAttribute);
    AGGraphAddTraceEvent();
  }

  *(a1 + 32) = v9;
  v10 = Attribute.init<A>(body:value:flags:update:)();
  *(a1 + 36) = v10;
  v11 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = Attribute.init<A>(body:value:flags:update:)();
  v12 = Attribute.init<A>(body:value:flags:update:)();
  *(a1 + 44) = v12;
  *(a1 + 48) = Attribute.init<A>(body:value:flags:update:)();
  *(a1 + 52) = Attribute.init<A>(body:value:flags:update:)();
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(v11);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_4(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 256;
  *(v14 + 88) = v13;
  *(a1 + 56) = 0;
  *(a1 + 64) = v7;
  *(a1 + 72) = v14;
  *(a1 + 80) = v10;
  *(a1 + 84) = v12;
  *(a1 + 88) = 0xFFFFFFFFLL;
  *(a1 + 96) = MEMORY[0x1E69E7CD0];
  *(a1 + 16) = AGSubgraphCreate();
  AGSubgraphAddChild();

  *(a1 + 24) = 0;
  $defer #1 () in GraphHost.Data.init()(v16, a1);
}

id one-time initialization function for sharedGraph()
{
  result = closure #1 in variable initialization expression of static GraphHost.sharedGraph();
  static GraphHost.sharedGraph = result;
  return result;
}

id closure #1 in variable initialization expression of static GraphHost.sharedGraph()
{
  v0 = AGGraphCreate();
  v1 = getenv("SWIFTUI_ASSERT_LOCKS");
  if (v1 && atoi(v1))
  {
    if (one-time initialization token for threadAssertionTrace != -1)
    {
      swift_once();
    }

    AGGraphSetTrace();
  }

  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v3 = static OS_dispatch_queue.main.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v8[4] = partial apply for closure #1 in closure #1 in variable initialization expression of static GraphHost.sharedGraph;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v8[3] = &block_descriptor_124_0;
  v5 = _Block_copy(v8);
  v6 = v0;

  swift_beginAccess();
  notify_register_dispatch("com.apple.swiftuitrace.state", (v2 + 16), v3, v5);
  swift_endAccess();
  _Block_release(v5);

  handleTraceNotification(graph:token:)(v6, *(v2 + 16));
  specialized static LayoutTrace.register(graph:)(v6);

  return v6;
}

uint64_t sub_18D01CB78()
{

  return swift_deallocObject();
}

uint64_t specialized static LayoutTrace.register(graph:)(void *a1)
{
  if (one-time initialization token for update != -1)
  {
    swift_once();
  }

  result = AGGraphTraceEventEnabled();
  if (result)
  {
    type metadata accessor for LayoutTrace.Recorder();
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 56) = 512;
    *(v3 + 64) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s6UInt32VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v3 + 16) = a1;
    swift_beginAccess();
    static LayoutTrace.recorder = v3;
    v4 = a1;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void lazy protocol witness table accessor for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom()
{
  if (!lazy protocol witness table cache variable for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom)
  {
    swift_getWitnessTable(protocol conformance descriptor for Solarium.EnablementIdiom, &type metadata for Solarium.EnablementIdiom, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom);
  }
}

{
  if (!lazy protocol witness table cache variable for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom)
  {
    swift_getWitnessTable(protocol conformance descriptor for Solarium.EnablementIdiom, &type metadata for Solarium.EnablementIdiom, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom);
  }
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV06Ignorei13HardwareCheckcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5()
{
  swift_beginAccess();
  v0 = static Solarium.IgnoreSolariumHardwareCheckUserDefault.cachedValue;
  if (static Solarium.IgnoreSolariumHardwareCheckUserDefault.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD00000000000002DLL, 0x800000018DD77140);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD00000000000002DLL, 0x800000018DD77140);
      v0 = [v5 BOOLForKey_];

      static Solarium.IgnoreSolariumHardwareCheckUserDefault.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static Solarium.IgnoreSolariumHardwareCheckUserDefault.cachedValue = 0;
    }
  }

  return v0 & 1;
}

id static PlatformViewDefinition.for (_:)(uint64_t a1)
{
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    result = [swift_getObjCClassFromMetadata() _swiftUI_platformViewDefinition];
    if (result)
    {
      type metadata accessor for PlatformViewDefinition();
      return swift_dynamicCastMetatypeUnconditional();
    }
  }

  return result;
}

uint64_t ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a2;
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 64) = 13;
  *(v6 + 72) = xmmword_18DD85500;
  *(v6 + 104) = 0;
  *(v6 + 112) = 511;
  *(v6 + 114) = 0;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 132) = 1;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 1;
  *(v6 + 160) = 0;
  type metadata accessor for ViewGraph();
  BYTE1(v15) = v11;
  *(v6 + 88) = ViewGraph.__allocating_init<A>(rootViewType:requestedOutputs:)(a1, &v15 + 1, a4, a5);
  (*(a3 + 80))(&v15);
  v12 = v15 | a3;
  type metadata accessor for DisplayList.ViewRenderer();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 1;
  *(v13 + 24) = 0;
  *(v13 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 72) = 0;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  *(v13 + 96) = 1;
  *(v13 + 16) = v12;
  *(v6 + 96) = v13;
  return v6;
}

uint64_t MaterialBackdropProxy.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MaterialBackdropProxy.Storage();
  result = swift_allocObject();
  *(result + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(result + 24) = 0;
  *(result + 32) = v3;
  *(result + 28) = 1;
  *a1 = result;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022HasSystemOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

uint64_t EnvironmentValues.viewGraphAssetCatalogConfiguration.setter(_OWORD *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = a1[2];
  v6 = 0;
  v3 = *v1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE025AssetCatalogConfigurationF033_F748B30B59970FC73194935C526E3031LLVG_Tt2B5(v1, v5);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE025AssetCatalogConfigurationK033_F748B30B59970FC73194935C526E3031LLVG_Ttg5(v3, *v1);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE025AssetCatalogConfigurationV033_F748B30B59970FC73194935C526E3031LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE025AssetCatalogConfigurationV033_F748B30B59970FC73194935C526E3031LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TypedElement<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HasSystemOpenURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<HasSystemOpenURLActionKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HasSystemOpenURLActionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HasSystemOpenURLActionKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022HasSystemOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022HasSystemOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t *initializeBufferWithCopyOfBuffer for AnyTransition.InsertionVisitor(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t outlined init with copy of HoverEffectContext?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for [LayoutDirection](0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI18HoverEffectContextVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for [LayoutDirection](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for OpenURLAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for OpenURLAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

double outlined consume of OpenURLAction.Handler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {

    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a3, a4);
  }

  return result;
}

uint64_t EnvironmentValues.setDefaultOpenURL(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (*(a1 + 33))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v13[0] = *a1;
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v14 = v8 | v7;
  v9 = *v1;
  outlined copy of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  swift_retain_n();
  outlined copy of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2B5(v1, v13);

  outlined consume of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  v10 = v1[1];
  if (v10)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV020DefaultOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v9, *v2);
  }

  outlined consume of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  v11 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v2, 1);

  if (v10)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v11, *v2);
  }
}

double outlined copy of OpenURLAction.Handler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {

    return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a3, a4);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2B5(Swift::UInt *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV020DefaultOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(v4, *&v12[0]) || (v7 = *(a2 + 16), v12[0] = *a2, v12[1] = v7, v13 = *(a2 + 32), type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>(0);
    v10 = swift_allocObject();
    v11 = *(a2 + 16);
    *(v10 + 72) = *a2;
    *(v10 + 88) = v11;
    *(v10 + 104) = *(a2 + 32);

    outlined init with copy of HoverEffectContext?(a2, v12, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV020DefaultOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV020DefaultOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t initializeWithCopy for OpenURLAction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of OpenURLAction.Handler(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t destroy for AnyTransition.InsertionVisitor(void *a1)
{
}

void type metadata accessor for MutableBox<CachedEnvironment>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double one-time initialization function for enabledCategories()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v0 + 16) = 256;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  static CustomEventTrace.enabledCategories = v0;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<ResolvedShapeStyles, Attribute<_ShapeStyle_Pack>>(0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (v3 + 8);
    v5 = (a1 + 56);
    while (1)
    {
      v23 = v1;
      v6 = *(v5 - 6);
      v7 = *(v5 - 5);
      v8 = *(v5 - 4);
      v9 = *(v5 - 3);
      v10 = *(v5 - 2);
      v11 = *(v5 - 4);
      v12 = *(v5 - 3);
      v13 = *(v5 - 2);
      v24 = *v5;
      v14 = v4 & 0xFF00000000000000 | v10 | (v11 << 32) | (v12 << 40);
      v15 = 0x1000000000000;
      if ((v13 & 1) == 0)
      {
        v15 = 0;
      }

      v22 = v15 | v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6 | (v7 << 32), v8 | (v9 << 32), v15 | v14);
      if (v17)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = v3[6] + 24 * result;
      *v18 = v6;
      *(v18 + 4) = v7;
      *(v18 + 8) = v8;
      *(v18 + 12) = v9;
      *(v18 + 16) = v10;
      *(v18 + 20) = v11;
      *(v18 + 21) = v12;
      *(v18 + 22) = v13;
      *(v3[7] + 4 * result) = v24;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_12;
      }

      v5 += 7;
      v3[2] = v21;
      v4 = v22;
      v1 = v23 - 1;
      if (v23 == 1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void $defer #1 () in GraphHost.Data.init()(uint64_t a1, uint64_t a2)
{
  AGSubgraphSetCurrent();
  v3 = *(a2 + 8);
  v4 = one-time initialization token for enabledCategories;
  v5 = v3;
  if (v4 != -1)
  {
    v7 = v5;
    swift_once();
    v5 = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17219;
    v6 = v5;
    type metadata accessor for AGSubgraphRef(0);
    AGGraphAddTraceEvent();
  }

  else
  {
  }
}

uint64_t *sub_18D01E854(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t initializeWithCopy for GraphHost.Data(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

uint64_t GraphHost.init(data:)(__int128 *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = a1[3];
  v3 = a1[5];
  v34 = a1[4];
  v35 = v3;
  v4 = a1[1];
  v30 = *a1;
  v31 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v32 = a1[2];
  v8 = v32;
  v33 = v5;
  v9 = a1[5];
  *(v1 + 80) = v34;
  *(v1 + 96) = v9;
  *(v1 + 16) = v7;
  *(v1 + 32) = v6;
  v36 = *(a1 + 12);
  v10 = MEMORY[0x1E69E7CC8];
  *(v1 + 128) = 0;
  *(v1 + 132) = 0;
  *(v1 + 136) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v1 + 140) = -1;
  *(v1 + 144) = v11;
  *(v1 + 152) = 0;
  *(v1 + 160) = v11;
  *(v1 + 168) = 1;
  *(v1 + 112) = *(a1 + 12);
  *(v1 + 120) = v10;
  *(v1 + 48) = v8;
  *(v1 + 64) = v2;
  v12 = v30;
  v13 = v31;
  v14 = *(*v1 + 240);
  v15 = outlined init with copy of GraphHost.Data(&v30, v29 + 1);
  v14(v29, v15);
  v16 = v29[0];
  v17 = one-time initialization token for enabledCategories;
  v18 = v12;
  v19 = *(&v12 + 1);
  v20 = v13;
  if (v17 != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && (v21 = static CustomEventTrace.recorder) != 0)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 16707;
    v22 = *(v21 + 16);
    BYTE1(v29[0]) = v16;
    *(&v29[1] + 1) = v12;
    *(&v29[2] + 1) = v19;
    *(&v29[3] + 1) = v20;
    type metadata accessor for (Int8, AGGraphRef?, AGSubgraphRef, AGSubgraphRef)(0);

    v23 = v22;
    AGGraphAddTraceEvent();
    outlined destroy of GraphHost.Data(&v30);
  }

  else
  {
    outlined destroy of GraphHost.Data(&v30);
  }

  swift_beginAccess();
  v24 = *(v1 + 16);
  if (!v24)
  {
    goto LABEL_13;
  }

  swift_allocObject();
  swift_weakInit();

  v25 = v24;
  AGGraphSetUpdateCallback();

  v26 = *(v1 + 16);
  if (!v26)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  swift_allocObject();
  swift_weakInit();
  v27 = v26;

  AGGraphSetInvalidationCallback();

  if (!*(v1 + 16))
  {
    goto LABEL_15;
  }

  AGGraphSetContext();
  return v1;
}

uint64_t sub_18D01EC88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t destroy for GraphHost.Data(id *a1)
{
}

uint64_t one-time initialization function for v6()
{
  result = swiftUI_v6_0_os_versions();
  static Semantics.v6 = HIDWORD(result);
  return result;
}

uint64_t type metadata accessor for AnyTrackedValue(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t ViewGraphHost.__allocating_init<A>(rootViewType:viewDefinition:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 53;
  v8 = swift_allocObject();
  ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)(a1, &v10, a2, a3, a4);
  return v8;
}

uint64_t ViewGraph.init<A>(rootViewType:requestedOutputs:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  *(v4 + 208) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 1;
  v9 = *MEMORY[0x1E698D3F8];
  *(v4 + 276) = *MEMORY[0x1E698D3F8];
  *(v4 + 296) = v9;
  *(v4 + 300) = v9;
  *(v4 + 304) = v9;
  *(v4 + 312) = 0;
  *(v4 + 332) = 0;
  *(v4 + 340) = 0;
  *(v4 + 324) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v4 + 352) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI13_ProposedSizeV_AC26ViewGraphGeometryObserversV8Observer33_4717DAAA68693648A460F26E88C7D804LLCyAC0F16ThatFitsMeasurerV_GTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v4 + 360) = 0;
  *(v4 + 362) = 0;
  *(v4 + 368) = 0;
  *(v4 + 376) = 0x7FF0000000000000;
  *(v4 + 384) = 0x7FF0000000000000;
  v11 = MEMORY[0x1E69E7CD0];
  *(v4 + 392) = 0;
  *(v4 + 400) = v11;
  *(v4 + 408) = 0x7FF0000000000000;
  *(v4 + 416) = 0x7FF0000000000000;
  *(v4 + 424) = 0;
  *(v4 + 432) = v11;
  swift_weakInit();
  *(v4 + 448) = v10;
  *(v4 + 176) = a1;
  *(v4 + 361) = v8;
  GraphHost.Data.init()(v45);
  v36 = AGSubgraphGetCurrent();
  v12 = *(&v45[0] + 1);
  v13 = AGSubgraphSetCurrent();
  if (one-time initialization token for enabledCategories != -1)
  {
    v13 = swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_25;
  }

  v35 = a4;
  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 16963;
    *&v38 = v12;
    type metadata accessor for AGSubgraphRef(0);
    v13 = AGGraphAddTraceEvent();
  }

  MEMORY[0x1EEE9AC00](v13);
  v34[2] = a3;
  v14 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, partial apply for closure #1 in Attribute.init(type:), v34, MEMORY[0x1E698D3D0], MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    goto LABEL_40;
  }

  v16 = v38;
  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
    LOWORD(v38) = 1;
    DWORD1(v38) = v16;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)(0);
    AGGraphAddTraceEvent();
  }

  *(v4 + 236) = v16;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RootTransform and conformance RootTransform();
  v17 = Attribute.init<A>(body:value:flags:update:)();
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    goto LABEL_41;
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
    LOWORD(v38) = 4;
    DWORD1(v38) = v17;
    v18 = v17;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)(0);
    AGGraphAddTraceEvent();
    v17 = v18;
  }

  *(v4 + 240) = v17;
  *(v4 + 244) = v17;
  type metadata accessor for CGPoint(0);
  v38 = 0uLL;
  *(v4 + 248) = Attribute.init<A>(body:value:flags:update:)();
  v38 = 0u;
  v39 = 0u;
  v19 = Attribute.init<A>(body:value:flags:update:)();
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    goto LABEL_42;
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
    LOWORD(v38) = 8;
    DWORD1(v38) = v19;
    v20 = v19;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)(0);
    AGGraphAddTraceEvent();
    v19 = v20;
  }

  *(v4 + 252) = v19;
  v21 = v9;
  if ((v8 & 0x10) != 0)
  {
    v38 = 0u;
    v39 = 0u;
    v21 = Attribute.init<A>(body:value:flags:update:)();
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
    {
      __break(1u);
      goto LABEL_45;
    }

    if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
      LOWORD(v38) = 32;
      DWORD1(v38) = v21;
      v22 = v21;
      type metadata accessor for (ViewGraphRootValues, AGAttribute)(0);
      AGGraphAddTraceEvent();
      v21 = v22;
    }
  }

  *(v4 + 276) = v21;
  if (one-time initialization token for v7 != -1)
  {
    goto LABEL_43;
  }

LABEL_25:
  LODWORD(v23) = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    goto LABEL_31;
  }

  if (dyld_program_sdk_at_least())
  {
LABEL_32:
    *&v38 = v10;
    *(&v38 + 1) = 1;
    v25 = Attribute.init<A>(body:value:flags:update:)();

    outlined consume of SafeAreaInsets.OptionalValue?(1);
    v26 = static CustomEventTrace.enabledCategories;
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x44uLL)
    {
      goto LABEL_33;
    }

LABEL_45:
    __break(1u);
  }

  while (1)
  {
    v37[0] = 1;
    _s7SwiftUI12GesturePhaseOyytGMaTm_4(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>, &type metadata for SafeAreaInsets.Element, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_18DDA6EB0;
    v24 = v37[0];
    *(v23 + 32) = 1;
    *(v23 + 40) = 0u;
    *(v23 + 56) = 0u;
    *(v23 + 72) = 0u;
    *(v23 + 88) = 0u;
    *(v23 + 104) = 0u;
    *(v23 + 120) = 0u;
    *(v23 + 136) = v24;
    outlined consume of SafeAreaInsets.OptionalValue?(1);
    *&v38 = v23;
    *(&v38 + 1) = 1;
    v25 = Attribute.init<A>(body:value:flags:update:)();

    outlined consume of SafeAreaInsets.OptionalValue?(1);
    v26 = static CustomEventTrace.enabledCategories;
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x44uLL)
    {
      break;
    }

    __break(1u);
LABEL_31:
    if (static Semantics.forced >= v23)
    {
      goto LABEL_32;
    }
  }

LABEL_33:
  if (v26[99] == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
    LOWORD(v38) = 16;
    DWORD1(v38) = v25;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)(0);
    AGGraphAddTraceEvent();
  }

  *(v4 + 256) = v25;
  v38 = 0u;
  v39 = 0u;
  LOBYTE(v40) = 2;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RootContainerShape and conformance RootContainerShape();
  *(v4 + 260) = Attribute.init<A>(body:value:flags:update:)();
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v38 = static LayoutComputer.defaultValue;
  *(v4 + 320) = Attribute.init<A>(body:value:flags:update:)();
  *&v38 = 0;
  *(v4 + 280) = Attribute.init<A>(body:value:flags:update:)();
  *&v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(v10);
  type metadata accessor for [EventID : EventType](0);
  v27 = Attribute.init<A>(body:value:flags:update:)();

  *(v4 + 284) = v27;
  *&v38 = 1;
  *(v4 + 288) = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v38) = 0;
  *(v4 + 292) = Attribute.init<A>(body:value:flags:update:)();
  *&v38 = v10;
  *(v4 + 308) = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v38) = v9;
  *(&v38 + 4) = *(v4 + 252);
  HIDWORD(v38) = v9;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RootGeometry and conformance RootGeometry();
  *(v4 + 264) = Attribute.init<A>(body:value:flags:update:)();
  *(v4 + 268) = AGGraphCreateOffsetAttribute2();
  *(v4 + 272) = AGGraphCreateOffsetAttribute2();
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 16) = a3;
  *(v28 + 24) = v29;
  v30 = vrev64q_s32(*(v4 + 248));
  v30.i64[0] = *(v4 + 248);
  *(v28 + 32) = v30;
  *(v4 + 184) = partial apply for closure #1 in ViewGraph.init<A>(rootViewType:requestedOutputs:);
  *(v4 + 192) = v28;
  v42 = v45[4];
  v43 = v45[5];
  v44 = v46;
  v38 = v45[0];
  v39 = v45[1];
  v40 = v45[2];
  v41 = v45[3];
  outlined init with copy of GraphHost.Data(v45, v37);
  v31 = GraphHost.init(data:)(&v38);

  v32 = v36;
  $defer #1 () in GestureGraph.init(rootResponder:)(v36, v45);

  outlined destroy of GraphHost.Data(v45);

  return v31;
}

uint64_t partial apply for closure #1 in Attribute.init(type:)@<X0>(_DWORD *a2@<X8>)
{
  result = Attribute.init<A>(body:value:flags:update:)();
  *a2 = result;
  return result;
}

void lazy protocol witness table accessor for type RootTransform and conformance RootTransform()
{
  if (!lazy protocol witness table cache variable for type RootTransform and conformance RootTransform)
  {
    swift_getWitnessTable(protocol conformance descriptor for RootTransform, &type metadata for RootTransform, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RootTransform and conformance RootTransform);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for _SafeAreaInsetsModifier(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;

  if (v3 != 1)
  {
  }

  a1[1] = v3;
  return a1;
}

uint64_t outlined consume of SafeAreaInsets.OptionalValue?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t *sub_18D01FBCC(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<EventID, EventType>(0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 56)
    {
      outlined init with copy of (ObjectIdentifier, ScrollStateRequest)(i, &v12, &lazy cache variable for type metadata for (EventID, EventType), &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType, &type metadata for EventID);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 16 * result);
      v8 = v13;
      *v7 = v12;
      v7[1] = v8;
      result = outlined init with take of AnyTrackedValue(&v14, v3[7] + 40 * result);
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata completion function for ColorBox(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for LayoutEngineBox<LayoutComputer.DefaultEngine>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for LayoutComputer.DefaultEngine, &protocol witness table for LayoutComputer.DefaultEngine);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void lazy protocol witness table accessor for type EventID and conformance EventID()
{
  if (!lazy protocol witness table cache variable for type EventID and conformance EventID)
  {
    swift_getWitnessTable(protocol conformance descriptor for EventID, &type metadata for EventID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EventID and conformance EventID);
  }
}

{
  if (!lazy protocol witness table cache variable for type EventID and conformance EventID)
  {
    swift_getWitnessTable(protocol conformance descriptor for EventID, &type metadata for EventID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EventID and conformance EventID);
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void lazy protocol witness table accessor for type RootGeometry and conformance RootGeometry()
{
  if (!lazy protocol witness table cache variable for type RootGeometry and conformance RootGeometry)
  {
    swift_getWitnessTable(protocol conformance descriptor for RootGeometry, &type metadata for RootGeometry, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RootGeometry and conformance RootGeometry);
  }
}

uint64_t one-time initialization function for defaultValue()
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for LayoutEngineBox<LayoutComputer.DefaultEngine>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<LayoutComputer.DefaultEngine>, type metadata accessor for TracingLayoutEngineBox);
    v0 = swift_allocObject();
    result = AGGraphGetCurrentAttribute();
    v2 = result == *MEMORY[0x1E698D3F8];
    if (result == *MEMORY[0x1E698D3F8])
    {
      v3 = 0;
    }

    else
    {
      v3 = result;
    }

    *(v0 + 16) = v3;
    *(v0 + 20) = v2;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<LayoutComputer.DefaultEngine>(0, &lazy cache variable for type metadata for LayoutEngineBox<LayoutComputer.DefaultEngine>, type metadata accessor for LayoutEngineBox);
    result = swift_allocObject();
    v0 = result;
  }

  static LayoutComputer.defaultValue = v0;
  return result;
}

{
  if (one-time initialization token for none != -1)
  {
    result = swift_once();
  }

  static SymbolVariantsKey.defaultValue = static SymbolVariants.none;
  return result;
}

{
  result = type metadata accessor for CorePlatformProvidersDefinition();
  static EnvironmentValues.CorePlatfromProvidersDefinitionKey.defaultValue = result;
  return result;
}

{
  v0 = type metadata accessor for TypesettingLanguage(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TypesettingConfiguration(0);
  __swift_allocate_value_buffer(v3, static TypesettingConfigurationKey.defaultValue);
  v4 = __swift_project_value_buffer(v3, static TypesettingConfigurationKey.defaultValue);
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, static TypesettingLanguage.automatic);
  outlined init with copy of TypesettingConfiguration(v5, v2, type metadata accessor for TypesettingLanguage);
  outlined init with copy of TypesettingConfiguration(v5, v4, type metadata accessor for TypesettingLanguage);
  v6 = v4 + *(v3 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  result = outlined assign with take of TypesettingLanguage(v2, v4);
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

{
  result = type metadata accessor for CorePlatformProvidersDefinition();
  static _GraphInputs.CorePlatfromProvidersDefinitionKey.defaultValue = result;
  return result;
}

{
  v0 = type metadata accessor for Locale();
  __swift_allocate_value_buffer(v0, static LocaleKey.defaultValue);
  __swift_project_value_buffer(v0, static LocaleKey.defaultValue);
  return Locale.init(identifier:)();
}

void *UnsafeHeterogeneousBuffer.allocate(bytes:)(void *result)
{
  v2 = result;
  v3 = *(v1 + 3);
  v4 = *(v1 + 2);
  if (!v3)
  {
    v6 = 0;
    if (v4 >= result)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (__OFADD__(v6, v4))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    result = UnsafeHeterogeneousBuffer.growBuffer(by:capacity:)(result, v4 + v6);
LABEL_12:
    v8 = *v1;
    if (!*v1)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v2 <= 0x7FFFFFFF)
    {
      v9 = *(v1 + 2);
      v10 = __OFSUB__(v9, v2);
      v11 = v9 - v2;
      if (!v10)
      {
        *(v1 + 2) = v11;
        return (v8 + v6);
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*v1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*v1 + 8 + v5);
      v5 += v7;
      if (!--v3)
      {
        v5 = 0;
      }

      v6 += v7;
    }

    while (v3);
    if (v4 >= result)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
  return result;
}

void *UnsafeHeterogeneousBuffer.growBuffer(by:capacity:)(void *result, uint64_t a2)
{
  v3 = result + a2;
  if (__OFADD__(a2, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = a2;
  if (2 * a2 <= 64)
  {
    v5 = 64;
  }

  else
  {
    v5 = 2 * a2;
  }

    ;
  }

  result = swift_slowAlloc();
  v6 = *v2;
  if (*v2)
  {
    v21 = v2;
    v22 = result;
    v20 = v4;
    v7 = *(v2 + 12);
    if (v7)
    {
      v8 = 0;
      v9 = v7 - 1;
      v10 = *v2;
      v11 = result;
      do
      {
        if (v9)
        {
          v8 += *(v6 + v8 + 8);
        }

        else
        {
          v8 = 0;
        }

        v12 = v9 | v8;
        v13 = v10[1];
        v14 = v13;
        *v11 = *v10;
        v11[1] = v13;
        v15 = *v10;
        v23 = v10;
        v24 = v11;
        (*(v15 + 88))(&v24, &v23);
        v10 = (v10 + v14);
        v11 = (v11 + v14);
        --v9;
      }

      while (v12);
    }

    MEMORY[0x193AC4820](v6, -1, -1);
    v4 = v20;
    v2 = v21;
    result = v22;
  }

  *v2 = result;
  v16 = v5 - v4;
  if (v5 - v4 < 0xFFFFFFFF80000000)
  {
    goto LABEL_20;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = *(v2 + 8);
  v18 = __OFADD__(v17, v16);
  v19 = v17 + v16;
  if (!v18)
  {
    *(v2 + 8) = v19;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for LayoutDirection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EnvironmentValues._set<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = type metadata accessor for EnvironmentPropertyKey(0, a3, a4, a4);

  swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v7);
  specialized PropertyList.subscript.setter(a1, v7, v7, v8);
  if (v4[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)(v7, v6, *v4, v7);
  }
}

uint64_t EnvironmentValues.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  EnvironmentValues.setValue<A>(_:for:)(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

{
  specialized EnvironmentValues.subscript.setter(a1, a2, a3, a4);

  return swift_unknownObjectRelease();
}

{
  specialized EnvironmentValues.subscript.setter(a1, a3, a3, a4);

  return swift_unknownObjectRelease();
}

{
  specialized EnvironmentValues.subscript.setter(a1, a3, a3, a4);

  return swift_unknownObjectRelease();
}

{
  specialized EnvironmentValues.subscript.setter(a1, a2, a3, a4);

  return swift_unknownObjectRelease();
}

{
  specialized EnvironmentValues.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

{
  specialized EnvironmentValues.subscript.setter(a1, a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t specialized PropertyList.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{

  closure #1 in PropertyList.subscript.setter(v4, a2, a1, a3, a4);
}

uint64_t closure #1 in PropertyList.subscript.setter(uint64_t *a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v21 - v12 + 8;
  v14 = *a1;
  BloomFilter.init(hashValue:)(a2);
  v15 = find1<A>(_:key:filter:)(v14, a2, v21, a4, a5);
  if (!v15 || (closure #2 in closure #1 in PropertyList.subscript.getter(v15, v13), v17 = (*(a5 + 24))(a3, v13, a4, a5), result = (*(v11 + 8))(v13, AssociatedTypeWitness), (v17 & 1) == 0))
  {
    type metadata accessor for TypedElement(0, a4, a5, v16);
    v19 = *a1;
    swift_allocObject();

    *a1 = specialized TypedElement.init(value:before:after:)(a3, 0, v19);
  }

  return result;
}

void *find1<A>(_:key:filter:)(void *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = *a3;
    while (1)
    {
      while ((v5 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      v6 = result[3];
      if (v6)
      {
        v13 = v5;
        v7 = result;
        v8 = a2;
        v9 = a4;
        v10 = a5;
        v11 = find1<A>(_:key:filter:)(v6, a2, &v13, a4, a5);
        a2 = v8;
        a4 = v9;
        a5 = v10;
        v12 = v11;
        result = v7;
        if (v12)
        {
          break;
        }
      }

      if (result[2] != a4)
      {
        result = result[4];
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v12;
  }

  return result;
}

SwiftUI::BloomFilter specialized TypedElement.init(value:before:after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 248);
  v8 = *(*v3 + 232);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v3 + v7, a1, AssociatedTypeWitness);

  return PropertyList.Element.init(keyType:before:after:)(v8, a2, a3);
}

uint64_t EnvironmentValues.appearsActive.setter(uint64_t a1, void (*a2)(uint64_t *, uint64_t, uint64_t *), void (*a3)(uint64_t, uint64_t))
{
  v6 = v3;
  v8 = *v6;
  swift_retain_n();
  a2(v6, a1, &v10);

  if (v6[1])
  {
    a3(v8, *v6);
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO13AppearsActiveVG_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>, &type metadata for WindowEnvironmentKeys.AppearsActive, &protocol witness table for WindowEnvironmentKeys.AppearsActive, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO13AppearsActiveVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>, &type metadata for WindowEnvironmentKeys.AppearsActive, &protocol witness table for WindowEnvironmentKeys.AppearsActive, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO13AppearsActiveVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO13AppearsActiveVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>, &type metadata for WindowEnvironmentKeys.AppearsActive, &protocol witness table for WindowEnvironmentKeys.AppearsActive, type metadata accessor for EnvironmentPropertyKey);
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

void lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>, &type metadata for WindowEnvironmentKeys.AppearsActive, &protocol witness table for WindowEnvironmentKeys.AppearsActive, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t storeEnumTagSinglePayload for EnvironmentObject(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t EnvironmentValues.colorScheme.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019ExplicitColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019ExplicitColorSchemeK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v4, *v2);
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019ColorSchemeContrastF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ColorSchemeContrastKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA019ColorSchemeContrastV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA019ColorSchemeContrastV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA019ColorSchemeContrastV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);
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

void lazy protocol witness table accessor for type EnvironmentPropertyKey<ColorSchemeContrastKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ColorSchemeContrastKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ColorSchemeContrastKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ColorSchemeContrastKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ColorSchemeContrastKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ColorSchemeContrastKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ColorSchemeContrastKey>>);
    }
  }
}

uint64_t $defer #1 () in GestureGraph.init(rootResponder:)(uint64_t a1, uint64_t a2)
{
  result = AGSubgraphSetCurrent();
  if (one-time initialization token for enabledCategories != -1)
  {
    result = swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17219;
      type metadata accessor for AGSubgraphRef(0);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

Swift::Void __swiftcall ViewGraphHost.setUp()()
{
  v1 = *(v0 + 88);
  swift_weakInit();
  swift_beginAccess();
  type metadata accessor for ViewGraphFeatureBuffer._VTable<ViewGraphHost.GraphFeature>(0, &lazy cache variable for type metadata for ViewGraphFeatureBuffer._VTable<ViewGraphHost.GraphFeature>, &type metadata for ViewGraphHost.GraphFeature, &protocol witness table for ViewGraphHost.GraphFeature);
  v3 = v2;
  v4 = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x20);
  *v4 = v3;
  v4[1] = 32;
  outlined init with copy of ViewGraphHost.GraphFeature(v17, (v4 + 2));
  v5 = *(v1 + 216);
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v4 - v5;
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v1 + 228);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v1 + 228) = v9;
  swift_endAccess();
  outlined destroy of weak AnyGestureResponder?(v17);
  swift_beginAccess();
  type metadata accessor for ViewGraphFeatureBuffer._VTable<ViewGraphHost.GraphFeature>(0, &lazy cache variable for type metadata for ViewGraphFeatureBuffer._VTable<HitTestBindingFeature>, &type metadata for HitTestBindingFeature, &protocol witness table for HitTestBindingFeature);
  v11 = v10;
  v12 = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x10);
  *v12 = v11;
  v12[1] = 16;
  v13 = *(v1 + 216);
  if (!v13)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v14 = v12 - v13;
  if (v14 < 0xFFFFFFFF80000000)
  {
    goto LABEL_15;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v1 + 228);
  v8 = __OFADD__(v15, 1);
  v16 = v15 + 1;
  if (v8)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v1 + 228) = v16;
  swift_endAccess();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    ViewGraphRootValueUpdater.initializeViewGraph()();
    swift_unknownObjectRelease();
  }

  ViewGraphHost.setupInitialInheritedEnvironment()();
}

void type metadata accessor for ViewGraphFeatureBuffer._VTable<ViewGraphHost.GraphFeature>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for ViewGraphFeatureBuffer._VTable(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t ViewGraphHost.setContainerShape(_:)(__int128 *a1)
{
  v4 = a1[1];
  v5 = *a1;
  v1 = *(a1 + 32);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v6[1] = v4;
  v6[0] = v5;
  v7 = v1;
  ViewGraph.setContainerShape(_:)(v6);
  static Update.end()();

  return _MovableLockUnlock(v2);
}

uint64_t ViewGraphHost.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  result = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner, &protocol descriptor for ViewGraphOwner, 0);
  if (result == a1)
  {
    v9 = v3;
    v10 = &protocol witness table for ViewGraphHost;
    v3 = *(a1 - 8);
    if (*(v3 + 64) == 16)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    v9 = *(v3 + 96);
    v3 = *(a1 - 8);
    if (*(v3 + 64) != 8)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_10:
    (*(v3 + 16))(a2, &v9, a1);
    return (*(v3 + 56))(a2, 0, 1, a1);
  }

  result = type metadata accessor for DisplayList.ViewRenderer();
  if (result == a1)
  {
    goto LABEL_9;
  }

  if (type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphRenderDelegate, &protocol descriptor for ViewGraphRenderDelegate, 0) == a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v3 + 40);
      v9 = result;
      v10 = v8;
      v3 = *(a1 - 8);
      if (*(v3 + 64) == 16)
      {
        (*(v3 + 16))(a2, &v9, a1);
        swift_unknownObjectRelease();
        return (*(v3 + 56))(a2, 0, 1, a1);
      }

      goto LABEL_21;
    }
  }

  if (type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphRenderHost, &protocol descriptor for ViewGraphRenderHost, 1) == a1)
  {
    v3 = *(v3 + 88);
    result = type metadata accessor for ViewGraph();
    v11 = result;
    v12 = &protocol witness table for ViewGraph;
    v9 = v3;
    v6 = *(a1 - 8);
    if (*(v6 + 64) == 40)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else
  {
    result = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for RootTransformProvider, &protocol descriptor for RootTransformProvider, 1);
    if (result != a1)
    {
      return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
    }
  }

  v11 = v6;
  v12 = &protocol witness table for ViewGraphHost;
  v9 = v3;
  v6 = *(a1 - 8);
  if (*(v6 + 64) != 40)
  {
LABEL_22:
    __break(1u);
    return result;
  }

LABEL_18:
  (*(v6 + 16))(a2, &v9, a1);

  __swift_destroy_boxed_opaque_existential_1(&v9);
  return (*(v6 + 56))(a2, 0, 1, a1);
}

double ViewGraphHost.setupInitialInheritedEnvironment()()
{
  swift_beginAccess();
  v2 = static RepresentableContextValues.current;
  if (static RepresentableContextValues.current != 1)
  {
    v3 = qword_1ED527ED0;
    v4 = qword_1ED527ED8;
    v5 = byte_1ED527EE0;
    if (byte_1ED527EE0)
    {
      v6 = *(&static RepresentableContextValues.current + 1);

      outlined copy of RepresentableContextValues.EnvironmentStorage(v3, v4, 1);
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      v7 = static Update._lock;
      _MovableLockLock(static Update._lock);
      specialized static Update.begin()();
      InputValue = AGGraphGetInputValue();
      v9 = *InputValue;
      v10 = InputValue[1];

      static Update.end()();
      _MovableLockUnlock(v7);
      outlined consume of RepresentableContextValues?(v2, v6, v3, v4, v5);
      v3 = v9;
      v4 = v10;
    }

    else
    {
      outlined copy of RepresentableContextValues.EnvironmentStorage(qword_1ED527ED0, qword_1ED527ED8, 0);
    }

    swift_beginAccess();
    v11 = *(v0 + 72);
    v12 = *(v0 + 80);
    *(v0 + 72) = v3;
    *(v0 + 80) = v4;
    return outlined consume of EnvironmentValues?(v11, v12);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE031CorePlatfromProvidersDefinitionV033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE031CorePlatfromProvidersDefinitionV033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE031CorePlatfromProvidersDefinitionV033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*a1) || (type metadata accessor for CorePlatformProvidersDefinition.Type(), result = AGCompareValues(), !result))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t EnvironmentValues.platformProvidersDefinition.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE031CorePlatfromProvidersDefinitionK033_C648E6A51A5817691B7DBFA00A618C21LLVG_Ttg5(v4, *v2);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>);
    }
  }
}

uint64_t EnvironmentValues.hasSystemOpenURLAction.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v4, *v2);
  }
}

double static OpenURLAction.defaultAction.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = static OpenURLAction.defaultAction;
  v3 = qword_1ED538190;
  v4 = unk_1ED538198;
  *a1 = static OpenURLAction.defaultAction;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = word_1ED5381A0;
  *(a1 + 32) = word_1ED5381A0;
  return outlined copy of OpenURLAction?(v2, *(&v2 + 1), v3, v4, v5);
}

double outlined copy of OpenURLAction?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined copy of OpenURLAction.Handler(result, a2, a3, a4, a5 & 1);
  }

  return v5;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey> and conformance EnvironmentPropertyKey<A>);
  }
}

double static OpenURLAction.defaultAction.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  swift_beginAccess();
  v3 = static OpenURLAction.defaultAction;
  v4 = qword_1ED538190;
  v5 = unk_1ED538198;
  v6 = *(a1 + 16);
  static OpenURLAction.defaultAction = *a1;
  *&qword_1ED538190 = v6;
  v7 = word_1ED5381A0;
  word_1ED5381A0 = v2;
  return outlined consume of OpenURLAction?(v3, *(&v3 + 1), v4, v5, v7);
}

double outlined consume of OpenURLAction?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of OpenURLAction.Handler(result, a2, a3, a4, a5 & 1);
  }

  return v5;
}

double static OpenURLAction.defaultSensitiveAction.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  swift_beginAccess();
  v3 = static OpenURLAction.defaultSensitiveAction;
  v4 = qword_1ED537C40;
  v5 = unk_1ED537C48;
  v6 = *(a1 + 16);
  static OpenURLAction.defaultSensitiveAction = *a1;
  *&qword_1ED537C40 = v6;
  v7 = word_1ED537C50;
  word_1ED537C50 = v2;
  return outlined consume of OpenURLAction?(v3, *(&v3 + 1), v4, v5, v7);
}

uint64_t AnyInterfaceIdiom.init<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  (*(*(a1 - 8) + 8))();
  result = type metadata accessor for InterfaceIdiomBox(0, a1, a2, v6);
  *a3 = result;
  a3[1] = &protocol witness table for InterfaceIdiomBox<A>;
  return result;
}

double static OpenURLAction.defaultSensitiveAction.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = static OpenURLAction.defaultSensitiveAction;
  v3 = qword_1ED537C40;
  v4 = unk_1ED537C48;
  *a1 = static OpenURLAction.defaultSensitiveAction;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = word_1ED537C50;
  *(a1 + 32) = word_1ED537C50;
  return outlined copy of OpenURLAction?(v2, *(&v2 + 1), v3, v4, v5);
}

void *one-time initialization function for shared()
{
  v0 = _initializeCoreGlue2();
  type metadata accessor for CoreGlue2();
  result = swift_dynamicCastClassUnconditional();
  static CoreGlue2.shared = result;
  return result;
}

{
  type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>(0);
  swift_allocObject();
  result = specialized ObjectCache.init(constructor:)(closure #1 in variable initialization expression of static Font.FontCache.shared, 0);
  static Font.FontCache.shared = result;
  return result;
}

id @objc CoreGlue2.init()(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

void *__getSwiftUIGlue2ClassSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SwiftUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SwiftUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7242128;
    v7 = 0;
    SwiftUILibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SwiftUILibraryCore_frameworkLibrary;
    if (SwiftUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SwiftUILibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SwiftUIGlue2Class");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSwiftUIGlue2ClassSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _initializeCoreGlue2()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSwiftUIGlue2ClassSymbolLoc_ptr;
  v9 = getSwiftUIGlue2ClassSymbolLoc_ptr;
  if (!getSwiftUIGlue2ClassSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getSwiftUIGlue2ClassSymbolLoc_block_invoke;
    v5[3] = &unk_1E7242108;
    v5[4] = &v6;
    __getSwiftUIGlue2ClassSymbolLoc_block_invoke(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    _initializeCoreGlue2_cold_1();
    v4 = v3;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  v0();
  v1 = objc_alloc_init(objc_claimAutoreleasedReturnValue());

  return v1;
}

uint64_t static Update.dispatchImmediately<A>(reason:_:)(char *a1, void (*a2)(uint64_t))
{
  v3 = *a1;
  specialized static Update.begin()();
  v4 = static Update.dispatchDepth;
  static Update.dispatchDepth = static Update.depth;
  swift_beginAccess();
  v5 = static Update.Action.nextActionID;
  atomic_fetch_add_explicit(&static Update.Action.nextActionID, 2u, memory_order_relaxed);
  v6 = swift_endAccess();
  if (one-time initialization token for enabledCategories != -1)
  {
    v6 = swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 21313;
    type metadata accessor for (UInt32, UInt32?)(0);
    v6 = AGGraphAddTraceEvent();
  }

  a2(v6);
  $defer #3 <A>() in static Update.dispatchImmediately<A>(reason:_:)((v5 >> 1) + 1, v3);
  static Update.dispatchDepth = v4;
  return static Update.end()();
}

Swift::Void __swiftcall GraphHost.instantiate()()
{
  v1 = v0;
  v2 = swift_beginAccess();
  if ((v0[16] & 1) == 0)
  {
    if ((*(*v0 + 24))(v2))
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(_ViewInputs.base.modify, 0, MEMORY[0x1E69E7CA8] + 8, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v6 = one-time initialization token for enabledCategories;
    v7 = v1[4];
    v8 = v7;
    if (v6 != -1)
    {
      v7 = swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 99) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 16963;
        type metadata accessor for AGSubgraphRef(0);
        v7 = AGGraphAddTraceEvent();
      }
    }

    (*(*v1 + 26))(v7);
    specialized $defer #1 <A>() in static CustomEventTrace.instantiate<A>(root:closure:)(v8);

    *(v1 + 128) = 1;
  }
}

uint64_t initializeWithCopy for _GraphInputs(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = a2[5];

  return a1;
}

uint64_t _GraphInputs.environment.setter(int a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_5(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 256;
  *(v5 + 88) = v4;

  *(v1 + 16) = v5;
  v7 = *(v1 + 32);
  if ((v7 & 0x20) == 0)
  {
    *(v1 + 32) = v7 | 0x20;
  }

  return result;
}

uint64_t type metadata completion function for Pair(uint64_t a1)
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

uint64_t EnvironmentValues.init()@<X0>(uint64_t *a1@<X8>)
{
  v6 = 0;
  v7 = 0;
  swift_beginAccess();
  if (static ViewGraphHost.isDefaultEnvironmentConfigured == 1)
  {
    if (one-time initialization token for _defaultEnvironment != -1)
    {
      swift_once();
    }

    result = static ViewGraphHost._defaultEnvironment;
    if (static ViewGraphHost._defaultEnvironment)
    {
      v3 = *(static ViewGraphHost._defaultEnvironment + 64);
      if (v3)
      {

        v3 = 0;
      }

      else
      {
        result = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x68);
    v5 = static CoreGlue2.shared;
    v4(&v6);

    result = v6;
    v3 = v7;
  }

  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata completion function for JSONCodable(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _ConditionalContent.Storage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t static CustomEventTrace.instantiateEnd(_:)(uint64_t a1)
{

  return static CustomEventTrace.instantiateBegin(_:)(a1, 67);
}

uint64_t type metadata completion function for _ConditionalContent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for _ConditionalContent.Storage(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for SimultaneousGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t destroy for SimultaneousGesture(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 24) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t type metadata completion function for State(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static CustomEventTrace.instantiateBegin(_:)(uint64_t result, char a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v3 = result;
    v4 = a2;
    swift_once();
    a2 = v4;
    result = v3;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      v2 = *(static CustomEventTrace.recorder + 24);
      *(v2 + 4) = 67;
      *(v2 + 5) = a2;
      type metadata accessor for AGSubgraphRef(0);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t PropertyList.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  specialized PropertyList.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

uint64_t type metadata completion function for _EnvironmentKeyWritingModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Environment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Environment.Content(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Environment.Content(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for DynamicBody(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *result;
  v11 = *a2;
  if (*(result + 16))
  {
    if (*(*(result + 8) + 16))
    {
      MEMORY[0x1EEE9AC00](result);
      v18[2] = a5;
      v19 = v11;
      v20 = a3;
      v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI20DynamicPropertyCacheV12TaggedFieldsVG_Si3tag_AF01_fG6BufferV5linksts5NeverOTg5(partial apply for closure #1 in _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:), v18, v12);
      project #1 <A><A1>(type:) in _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(v10, v6, v13, a4, a5, v10);
    }
  }

  else
  {
    v14 = *(v10 + 16);
    if (v14)
    {
      v15 = (v10 + 48);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        v15 += 4;
        v21[0] = v11;
        result = (*(v16 + 8))(v6, v21, v17 + a4, a3, a5);
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t closure #1 in Attribute.init<A>(_:)@<X0>(_DWORD *a5@<X8>)
{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a5 = result;
  return result;
}

{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a5 = result;
  return result;
}

uint64_t closure #1 in static DynamicPropertyCache.fields(of:)(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v8 = swift_conformsToProtocol2();
  if (v8 && a3)
  {
    v9 = v8;
    v10 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      *a4 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
      *a4 = v10;
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[32 * v13];
    *(v14 + 4) = a3;
    *(v14 + 5) = v9;
    *(v14 + 6) = a2;
    *(v14 + 7) = a1;
  }

  return 1;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v13;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3 & 1;
    *(v24 + 20) = HIDWORD(a3);

    return outlined consume of DynamicPropertyCache.Fields.Layout(v25, v26, v27);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v13, a4, a1, a2, a3 & 0xFFFFFFFF00000001, v23);
  }
}

{
  v6 = v5;
  v12 = *v5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 >= v17 && (a5 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a5 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v6;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a4, v25);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v25, a1, a2, a3, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v6;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 24 * v14);
  *v21 = a1;
  v21[1] = a2;
  v21[2] = a3;

  return swift_unknownObjectRelease();
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5 & 1;
  *(v6 + 20) = HIDWORD(a5);
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 40 * result;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = (a6[7] + 24 * result);
  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t project #1 <A><A1>(flags:) in closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a6;
  v57 = a4;
  v58 = a5;
  v62 = a1;
  v63 = a2;
  v55 = a8;
  v56 = a9;
  v65[0] = a4;
  v65[1] = a5;
  v66 = a6;
  v69 = HIBYTE(a6);
  v68 = HIDWORD(a6) >> 8;
  v67 = a6 >> 8;
  v70 = a10;
  v71 = a11;
  v72 = a12;
  v73 = a13;
  v15 = type metadata accessor for StaticBody(0, &v70);
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v51 - v18;
  v19 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a10;
  v71 = a11;
  v59 = a13;
  v60 = a11;
  v72 = a12;
  v73 = a13;
  v23 = type metadata accessor for DynamicBody(0, &v70);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v51 - v28;
  v61 = a7;
  v64 = a7;
  outlined copy of DynamicPropertyCache.Fields.Layout(v57, v58, v14 & 1);
  v57 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = v55;
  v32 = _DynamicPropertyBuffer.init<A>(fields:container:inputs:)(v65, &v64, v55, AssociatedTypeWitness, &v70);
  v33 = v70;
  v34 = v71;
  v58 = HIDWORD(v71);
  if (HIDWORD(v71))
  {
    (*(v19 + 16))(v22, v56, a10, v32);
    v35 = *(v31 + 24);
    v70 = v33;
    v36 = v58;
    v71 = __PAIR64__(v58, v34);
    v37 = DynamicBody.init(accessor:container:phase:links:resetSeed:)(v22, v61, v35, &v70, 0, a10, v60, v57, v29, v59);
    (*(v24 + 16))(v26, v29, v23, v37);
    v38 = swift_getAssociatedTypeWitness();
    swift_getWitnessTable(protocol conformance descriptor for DynamicBody<A, B>, v23);
    _GraphValue.init<A>(_:)(v26, v38, v23, v39, v62);
    result = (*(v24 + 8))(v29, v23);
    v41 = v34 | (v36 << 32);
    v42 = v36;
  }

  else
  {
    v71 = v71;
    _DynamicPropertyBuffer.destroy()();
    (*(v19 + 16))(v22, v56, a10);
    v43 = v52;
    (*(v19 + 32))(v52, v22, a10);
    v70 = a10;
    v71 = v60;
    v72 = v57;
    v73 = v59;
    v44 = type metadata accessor for StaticBody(0, &v70);
    *&v43[*(v44 + 52)] = v61;
    v46 = v53;
    v45 = v54;
    v47 = v51;
    (*(v53 + 16))(v51, v43, v54);
    v48 = swift_getAssociatedTypeWitness();
    swift_getWitnessTable(protocol conformance descriptor for StaticBody<A, B>, v45);
    _GraphValue.init<A>(_:)(v47, v48, v45, v49, v62);
    result = (*(v46 + 8))(v43, v45);
    v33 = 0;
    v41 = 0;
    v42 = v58;
  }

  v50 = v63;
  *v63 = v33;
  v50[1] = v41;
  *(v50 + 16) = v42 == 0;
  return result;
}

uint64_t closure #1 in BodyAccessor.makeBody(container:inputs:fields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if ((a4 & 0x100000000) != 0)
  {
    return project #1 <A><A1>(flags:) in closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(a9, (a9 + 8), &type metadata for AsyncThreadFlags, a2, a3, a4 & 0xFFFFFFFF00000001, a5, a1, a6, a7, &type metadata for AsyncThreadFlags, a8, &protocol witness table for AsyncThreadFlags);
  }

  else
  {
    return project #1 <A><A1>(flags:) in closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(a9, (a9 + 8), &type metadata for MainThreadFlags, a2, a3, a4 & 0xFFFFFFFE00000001, a5, a1, a6, a7, &type metadata for MainThreadFlags, a8, &protocol witness table for MainThreadFlags);
  }
}

uint64_t type metadata completion function for Box(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for StaticBody(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static DynamicPropertyCache.fields(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v4 = static DynamicPropertyCache.cache;
  swift_beginAccess();
  v5 = v4[2];
  if (*(v5 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(v5 + 56) + 24 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 20);
      swift_endAccess();
      *a2 = v9;
      *(a2 + 8) = v10;
      *(a2 + 16) = v11;
      *(a2 + 20) = v12;
      return outlined copy of DynamicPropertyCache.Fields.Layout(v9, v10, v11);
    }
  }

  swift_endAccess();
  Kind = AGTypeGetKind();
  v15 = MEMORY[0x1E69E7CC0];
  if ((Kind - 3) < 2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](Kind);
    AGTypeApplyFields2();
    DynamicPropertyCache.Fields.init(_:)(a1, v31, 1, v33);
    v15 = v33[0];
    v19 = v33[1];
    v20 = v34;
    v17 = v35;
    goto LABEL_17;
  }

  if (Kind == 5 || Kind == 2)
  {
    v33[0] = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](Kind);
    AGTypeApplyFields2();
    v15 = v33[0];
    v16 = *(v33[0] + 16);
    if (v16)
    {

      LODWORD(v17) = 0;
      v18 = v33[0] + 40;
      do
      {
        v17 = (*(*v18 + 16))() | v17;
        v18 += 32;
        --v16;
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v20 = 0;
    v19 = 0;
LABEL_17:
    if ((~v17 & 3) == 0)
    {
      HIDWORD(v30) = static os_log_type_t.fault.getter();
      if (one-time initialization token for runtimeIssuesLog != -1)
      {
        swift_once();
      }

      v21 = static Log.runtimeIssuesLog;
      type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_18DDA6EB0;
      v23 = a1;
      v24 = _typeName(_:qualified:)();
      v26 = v25;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(v22 + 64) = v27;
      *(v22 + 32) = v24;
      *(v22 + 40) = v26;
      a1 = v23;
      os_log(_:dso:log:_:_:)(HIDWORD(v30), &dword_18D018000, v21, "%s is marked async, but contains properties that require the main thread.", v30);

      v17 = v17 & 0xFFFFFFFE;
    }

    goto LABEL_21;
  }

  v20 = 0;
  v19 = 0;
  v17 = 0;
LABEL_21:
  v28 = static DynamicPropertyCache.cache;
  swift_beginAccess();

  outlined copy of DynamicPropertyCache.Fields.Layout(v15, v19, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v28[2];
  v28[2] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v19, v20 | (v17 << 32), a1, isUniquelyReferenced_nonNull_native);
  v28[2] = v32;
  swift_endAccess();

  *a2 = v15;
  *(a2 + 8) = v19;
  *(a2 + 16) = v20;
  *(a2 + 20) = v17;
  return result;
}

void *BodyAccessor.makeBody(container:inputs:fields:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AssociatedTypeWitness == MEMORY[0x1E69E73E0])
  {
    _StringGuts.grow(_:)(29);
    swift_getAssociatedTypeWitness();
    _typeName(_:qualified:)();

    MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD77760);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *&v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v25[2] = a6;
    v25[3] = a7;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v7;
    type metadata accessor for _GraphValue(255, v18, v19, v20);
    type metadata accessor for _DynamicPropertyBuffer?(255, &lazy cache variable for type metadata for _DynamicPropertyBuffer?, &type metadata for _DynamicPropertyBuffer, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    result = _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a4, partial apply for closure #1 in BodyAccessor.makeBody(container:inputs:fields:), v25, &type metadata for _GraphInputs, MEMORY[0x1E69E73E0], TupleTypeMetadata2, MEMORY[0x1E69E7410], v22);
    v24 = v33;
    *a1 = v31;
    *a2 = v32;
    *(a2 + 16) = v24;
  }

  return result;
}

uint64_t _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

void type metadata accessor for _DynamicPropertyBuffer?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, DynamicPropertyCache.Fields>, MEMORY[0x1E69E5FE0], &type metadata for DynamicPropertyCache.Fields, MEMORY[0x1E69E5FE8]);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v37 = *(v22 + 20);
      if ((v36 & 1) == 0)
      {
        outlined copy of DynamicPropertyCache.Fields.Layout(v23, v24, v25);
      }

      result = MEMORY[0x193AC1170](*(v7 + 40), v21);
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(v16 + 20) = v37;
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

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ForwardedEventDispatcher>, &lazy cache variable for type metadata for ForwardedEventDispatcher, &protocol descriptor for ForwardedEventDispatcher, outlined init with take of _ViewList_Elements);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, UInt>, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E6810], MEMORY[0x1E69E5FE8]);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x193AC1170](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    if (v30)
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ViewDescriptor>>, &lazy cache variable for type metadata for TupleTypeDescription<ViewDescriptor>, &type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ConditionalTypeDescriptor<ViewDescriptor>>(0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v33 = *(v22 + 8);
      if ((v4 & 1) == 0)
      {
        outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v23);
      }

      result = MEMORY[0x193AC1170](*(v7 + 40), v21);
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v33;
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

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<UInt32, Int>, MEMORY[0x1E69E7668], MEMORY[0x1E69E6530], MEMORY[0x1E69E7678]);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x193AC1150](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
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

    if (v30)
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AnyTrackedValue>, &lazy cache variable for type metadata for AnyTrackedValue, &protocol descriptor for AnyTrackedValue, outlined init with take of AnyTrackedValue);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<CFStringRef, Any>(0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 64;
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
        outlined init with take of Any(v21, v31);
      }

      else
      {
        outlined init with copy of Any(v21, v31);
        v22 = v20;
      }

      Hasher.init(_seed:)();
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of Any(v31, (*(v7 + 56) + 32 * v15));
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
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<StyleContextDescriptor>>, &lazy cache variable for type metadata for TupleTypeDescription<StyleContextDescriptor>, &type metadata for StyleContextDescriptor, &protocol witness table for StyleContextDescriptor);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AnyAccessibilityPropertiesEntry>, &lazy cache variable for type metadata for AnyAccessibilityPropertiesEntry, &protocol descriptor for AnyAccessibilityPropertiesEntry, outlined init with take of _ViewList_Elements);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, outlined init with take of AnyTrackedValue);
}

double _DynamicPropertyBuffer.init<A>(fields:container:inputs:)@<D0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = *(a1 + 5);
  v10 = *a2;
  v16 = 0;
  v17 = 0.0;
  v13[0] = v6;
  v13[1] = v7;
  v14 = v8;
  v15 = v9;
  v12 = v10;
  _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(v13, &v12, a3, 0, a4);
  outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
  *a5 = v16;
  result = v17;
  a5[1] = v17;
  return result;
}

uint64_t one-time initialization function for cache()
{
  type metadata accessor for MutableBox<[ObjectIdentifier : DynamicPropertyCache.Fields]>(0);
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  static DynamicPropertyCache.cache = result;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DynamicPropertyCache.Field>, &type metadata for DynamicPropertyCache.Field, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CachedEnvironment.MapItem>, &type metadata for CachedEnvironment.MapItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewListOutputs>, &type metadata for _ViewListOutputs, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<LayoutProxyAttributes>, &type metadata for LayoutProxyAttributes, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewOutputs>, &type metadata for _ViewOutputs, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(id: DynamicContainerID, value: LayoutProxyAttributes)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 344);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[344 * v8])
    {
      memmove(v12, v13, 344 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<StackLayout.Child>, &type metadata for StackLayout.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AsyncTransaction>, &type metadata for AsyncTransaction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(CGSize, NSAttributedString.Metrics)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 88 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DynamicPropertyCache.TaggedFields>, &type metadata for DynamicPropertyCache.TaggedFields, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ShapeStyle_InterpolatorGroup.Layer>, &type metadata for _ShapeStyle_InterpolatorGroup.Layer, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 232);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[232 * v8])
    {
      memmove(v12, v13, 232 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.ViewUpdater.Model.Clip>, &type metadata for DisplayList.ViewUpdater.Model.Clip, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferenceValues.Entry>, &type metadata for PreferenceValues.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferenceBridge.BridgedPreference>, &type metadata for PreferenceBridge.BridgedPreference, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Effect>, &type metadata for GlassContainer.Effect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 200);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[200 * v8])
    {
      memmove(v12, v13, 200 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ShapeSet.Element>, &type metadata for _ShapeSet.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CoreInteractionRepresentableInteractionsProxy.Interaction>, &type metadata for CoreInteractionRepresentableInteractionsProxy.Interaction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SDFLayer.SDFElement>, &type metadata for SDFLayer.SDFElement, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SDFLayer.SDFEffect>, &type metadata for SDFLayer.SDFEffect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HostPreferencesCombiner.Child>, &type metadata for HostPreferencesCombiner.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SuffixCache.Entry>, &type metadata for SuffixCache.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CanvasSymbols.Child>, &type metadata for CanvasSymbols.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MatchedGeometryScope.Frame.View>, &type metadata for MatchedGeometryScope.Frame.View, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 28);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[28 * v8])
    {
      memmove(v12, v13, 28 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 28 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ShapeStyle_Pack.Style>, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview>, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview>, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedStyledText.TextLayoutManager.Cache.Entry>, &type metadata for ResolvedStyledText.TextLayoutManager.Cache.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 88 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.InterpolatorLayer.Removed>, &type metadata for DisplayList.InterpolatorLayer.Removed, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewTraitCollection>, &type metadata for ViewTraitCollection, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.Item>, &type metadata for SectionAccumulator.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodableAttributedString.Range>, &type metadata for CodableAttributedString.Range, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentTransition.Effect>, &type metadata for ContentTransition.Effect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 36);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[36 * v8])
    {
      memmove(v12, v13, 36 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 36 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.LayoutKey.AnchoredLayout>, &type metadata for Text.LayoutKey.AnchoredLayout, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.RunSlice>, &type metadata for Text.Layout.RunSlice, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Cluster>, &type metadata for Text.Layout.Cluster, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(StrongHash, DisplayList.Version)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem>, &type metadata for PlatformItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 632);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[632 * v8])
    {
      memmove(v12, v13, 632 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color.Resolved>, &type metadata for Color.Resolved, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Float>, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(Float, Float)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Substring>, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(proposal: _ProposedSize, value: TextSizeVariant)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DefaultCombiningAnimation.Entry>, &type metadata for DefaultCombiningAnimation.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollableCollectionSubview>, &type metadata for ScrollableCollectionSubview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<StrongHash>, &type metadata for StrongHash, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 20);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[20 * v8])
    {
      memmove(v12, v13, 20 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 20 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSCalendarUnit>, type metadata accessor for NSCalendarUnit, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MeshGradient.BezierPoint>, &type metadata for MeshGradient.BezierPoint, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<SIMD2<Float>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color.ResolvedHDR>, &type metadata for Color.ResolvedHDR, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 20);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[20 * v8])
    {
      memmove(v12, v13, 20 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 20 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>, &type metadata for PathSet.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakAttribute<Anchor<CGRect>>>, type metadata accessor for WeakAttribute<Anchor<CGRect>>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewGeometry>, &type metadata for ViewGeometry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlobalTransaction>, &type metadata for GlobalTransaction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollGeometryState>, &type metadata for ScrollGeometryState, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 7;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollPhaseState>, &type metadata for ScrollPhaseState, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Item>, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 656);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[656 * v8])
    {
      memmove(v12, v13, 656 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CollectionChanges<Int, Int>.Element>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DiffResult.MoveOperation>, &type metadata for DiffResult.MoveOperation, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GraphicsContext.ResolvedShading>, &type metadata for GraphicsContext.ResolvedShading, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<EventID>, &type metadata for EventID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusableBounds>, &type metadata for FocusableBounds, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassMaterialShape>, &type metadata for GlassMaterialShape, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 360);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[360 * v8])
    {
      memmove(v12, v13, 360 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollEdgeEffectTag.Item>, &type metadata for ScrollEdgeEffectTag.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollEdgeEffectTag.ID>, &type metadata for ScrollEdgeEffectTag.ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewDebug.Data.SerializedProperty>, &type metadata for _ViewDebug.Data.SerializedProperty, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyHashable2>, &type metadata for AnyHashable2, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GestureDebug.Data>, &type metadata for GestureDebug.Data, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<LayoutGestureBox.Child>, &type metadata for LayoutGestureBox.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DiffResult.Move>, &type metadata for DiffResult.Move, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Decorations.Segment>, &type metadata for Text.Layout.Decorations.Segment, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvableTextSegmentAttribute.Value.Run>, &type metadata for ResolvableTextSegmentAttribute.Value.Run, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_ID>, &type metadata for _ViewList_ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SummaryPlacement>, &type metadata for SummaryPlacement, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SDFLayer.SDFSubset>, &type metadata for SDFLayer.SDFSubset, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityActivationPoint>, &type metadata for AccessibilityActivationPoint, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Range<String.Index>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<SeedValue<GlassEffectContainerTintConfiguration.Element>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewDebug.Data.SerializedAttribute>, &type metadata for _ViewDebug.Data.SerializedAttribute, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.RowIDs.Chunk>, &type metadata for SectionAccumulator.RowIDs.Chunk, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_ProposedSubview>, &type metadata for _LazyLayout_ProposedSubview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Range<Int>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for GestureDebug.Data?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt8>, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}