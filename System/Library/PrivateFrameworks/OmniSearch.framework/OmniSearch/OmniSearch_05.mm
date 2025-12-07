void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSJ_Tt0g5()
{
  OUTLINED_FUNCTION_113_1();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySJGMd, &_ss11_SetStorageCySJGMR), OUTLINED_FUNCTION_41_3(), v4 = static _SetStorage.allocate(capacity:)(), (v5 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_82_3();
    while (v3 < *(v0 + 16))
    {
      OUTLINED_FUNCTION_79_2(v6);
      String.hash(into:)();
      Hasher._finalize()();
      OUTLINED_FUNCTION_35_6();
      while (1)
      {
        OUTLINED_FUNCTION_84_2();
        if (v9)
        {
          break;
        }

        v6 = OUTLINED_FUNCTION_111_0();
        v9 = v9 && v8 == v2;
        if (!v9)
        {
          OUTLINED_FUNCTION_76_2();
          v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v6 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      OUTLINED_FUNCTION_49_5(v7);
      if (v11)
      {
        goto LABEL_18;
      }

      *(v4 + 16) = v10;

LABEL_15:
      if (v3 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16LNSystemProtocolC_Tt0g5(uint64_t a1)
{
  if (specialized Array.count.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
    OUTLINED_FUNCTION_41_3();
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v22 = specialized Array.count.getter();
  if (v22)
  {
    v3 = 0;
    v4 = v2 + 7;
    v20 = a1;
    v21 = a1 & 0xC000000000000001;
    v19 = a1 + 32;
    while (1)
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      v5 = v21 ? MEMORY[0x25F89FFD0](v3, a1) : *(v19 + 8 * v3);
      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      NSObject._rawHashValue(seed:)(v2[5]);
      OUTLINED_FUNCTION_35_6();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = v4[v12];
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
        v15 = *(v2[6] + 8 * v11);
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {

          goto LABEL_17;
        }

        v8 = v11 + 1;
      }

      v4[v12] = v14 | v13;
      *(v2[6] + 8 * v11) = v6;
      v17 = v2[2];
      v7 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v18;
LABEL_17:
      a1 = v20;
      if (v3 == v22)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10OmniSearch10FilterTypeO_Tt0g5()
{
  OUTLINED_FUNCTION_113_1();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10OmniSearch10FilterTypeOGMd, &_ss11_SetStorageCy10OmniSearch10FilterTypeOGMR), OUTLINED_FUNCTION_41_3(), v2 = static _SetStorage.allocate(capacity:)(), (v43 = *(v0 + 16)) != 0))
  {
    v3 = 0;
    v41 = v0;
    v42 = v0 + 32;
    while (v3 < *(v0 + 16))
    {
      v4 = *(v42 + v3);
      Hasher.init(_seed:)();
      FilterType.rawValue.getter();
      String.hash(into:)();

      Hasher._finalize()();
      OUTLINED_FUNCTION_35_6();
      v6 = ~v5;
      v8 = v7 & ~v5;
      OUTLINED_FUNCTION_133_0();
      if ((v11 & v10) != 0)
      {
        while (1)
        {
          v12 = 0xE500000000000000;
          v13 = 0x6D72616C61;
          switch(*(*(v2 + 48) + v8))
          {
            case 1:
              v12 = 0xE400000000000000;
              v13 = 1802465122;
              break;
            case 2:
              v12 = 0xE800000000000000;
              v13 = OUTLINED_FUNCTION_38_4();
              break;
            case 3:
              v12 = 0xE700000000000000;
              v13 = OUTLINED_FUNCTION_132_0();
              break;
            case 4:
              v13 = 0x61737265766E6F63;
              v12 = 1852795252;
              goto LABEL_33;
            case 5:
              v13 = OUTLINED_FUNCTION_87_3();
              v15 = 0xE50000656C690000;
              goto LABEL_31;
            case 6:
              v13 = OUTLINED_FUNCTION_87_3();
              v12 = 0xEF7265646C6F0000;
              break;
            case 7:
              v12 = 0xE800000000000000;
              v13 = 0x6D726F6665657266;
              break;
            case 8:
              v12 = 0xE700000000000000;
              v13 = 0x6C616E72756F6ALL;
              break;
            case 9:
              v12 = 0xE700000000000000;
              v17 = 0x746F6E79656BLL;
              goto LABEL_46;
            case 0xA:
              v12 = 0xE400000000000000;
              v13 = 1818845549;
              break;
            case 0xB:
              v12 = 0xE600000000000000;
              v13 = 0x79726F6D656DLL;
              break;
            case 0xC:
              v12 = 0xE700000000000000;
              v17 = 0x67617373656DLL;
              goto LABEL_46;
            case 0xD:
              v12 = 0xE400000000000000;
              v13 = 1702129518;
              break;
            case 0xE:
              OUTLINED_FUNCTION_69_2();
              v12 = v16 + 1264;
              v13 = 0x646C6F4665746F6ELL;
              break;
            case 0xF:
              v13 = 0x46737265626D756ELL;
              v12 = 0xEB00000000656C69;
              break;
            case 0x10:
              v13 = 0x6C69467365676170;
              v12 = 0xE900000000000065;
              break;
            case 0x11:
              v14 = 1852794992;
              goto LABEL_28;
            case 0x12:
              v19 = OUTLINED_FUNCTION_112_1();
              goto LABEL_41;
            case 0x13:
              v13 = OUTLINED_FUNCTION_112_1() | 0x626C416F00000000;
              v12 = 0xEA00000000006D75;
              break;
            case 0x14:
              v12 = 0xE800000000000000;
              v13 = OUTLINED_FUNCTION_123_1();
              break;
            case 0x15:
              v13 = OUTLINED_FUNCTION_123_1();
              v12 = 1953720652;
              goto LABEL_33;
            case 0x16:
              v12 = 0xE300000000000000;
              v13 = 6447476;
              break;
            case 0x17:
              v13 = 0x72656D6974;
              break;
            case 0x18:
              v19 = 1701079414;
              goto LABEL_41;
            case 0x19:
              OUTLINED_FUNCTION_124_1();
              v12 = v18 + 7;
              v13 = 0x69616D6563696F76;
              break;
            case 0x1A:
              OUTLINED_FUNCTION_124_1();
              v12 = v22 + 10;
              goto LABEL_50;
            case 0x1B:
              v12 = 0xE600000000000000;
              v13 = 0x74656C6C6177;
              break;
            case 0x1C:
              v12 = 0xE700000000000000;
              v17 = 0x746973626577;
LABEL_46:
              v13 = v17 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            case 0x1D:
              v13 = OUTLINED_FUNCTION_81_3();
              break;
            case 0x1E:
              OUTLINED_FUNCTION_69_2();
              v12 = v20 + 1786;
              v13 = 0x68736E6565726373;
              break;
            case 0x1F:
              v13 = OUTLINED_FUNCTION_102_1();
              break;
            case 0x20:
              v19 = 1836018803;
LABEL_41:
              v13 = v19 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
              break;
            case 0x21:
              v13 = OUTLINED_FUNCTION_61_3();
LABEL_33:
              v12 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            case 0x22:
              v13 = OUTLINED_FUNCTION_38_4();
              v15 = 0x746E657645;
LABEL_31:
              v12 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 0x23:
              v12 = 0xE400000000000000;
              v13 = 1802398060;
              break;
            case 0x24:
              v14 = 1769369453;
LABEL_28:
              v13 = v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
              break;
            case 0x25:
              v12 = 0xE600000000000000;
              v13 = 0x697261666173;
              break;
            case 0x26:
              OUTLINED_FUNCTION_69_2();
              v12 = v21 + 1530;
LABEL_50:
              v13 = 0x6D654D6563696F76;
              break;
            default:
              break;
          }

          v23 = 0xE500000000000000;
          v24 = 0x6D72616C61;
          switch(v4)
          {
            case 1:
              v23 = 0xE400000000000000;
              v24 = 1802465122;
              break;
            case 2:
              v23 = 0xE800000000000000;
              OUTLINED_FUNCTION_34_6();
              break;
            case 3:
              v23 = 0xE700000000000000;
              OUTLINED_FUNCTION_126_1();
              break;
            case 4:
              v24 = 0x61737265766E6F63;
              v28 = 1852795252;
              goto LABEL_78;
            case 5:
              OUTLINED_FUNCTION_83_3();
              v26 = 0xE50000656C690000;
              goto LABEL_76;
            case 6:
              OUTLINED_FUNCTION_83_3();
              v23 = 0xEF7265646C6F0000;
              break;
            case 7:
              v23 = 0xE800000000000000;
              v24 = 0x6D726F6665657266;
              break;
            case 8:
              v23 = 0xE700000000000000;
              v24 = 0x6C616E72756F6ALL;
              break;
            case 9:
              v23 = 0xE700000000000000;
              v29 = 0x746F6E79656BLL;
              goto LABEL_91;
            case 10:
              v23 = 0xE400000000000000;
              v24 = 1818845549;
              break;
            case 11:
              v23 = 0xE600000000000000;
              v24 = 0x79726F6D656DLL;
              break;
            case 12:
              v23 = 0xE700000000000000;
              v29 = 0x67617373656DLL;
              goto LABEL_91;
            case 13:
              v23 = 0xE400000000000000;
              v24 = 1702129518;
              break;
            case 14:
              OUTLINED_FUNCTION_69_2();
              v23 = v27 + 1264;
              v24 = 0x646C6F4665746F6ELL;
              break;
            case 15:
              v24 = 0x46737265626D756ELL;
              v23 = 0xEB00000000656C69;
              break;
            case 16:
              v24 = 0x6C69467365676170;
              v23 = 0xE900000000000065;
              break;
            case 17:
              v25 = 1852794992;
              goto LABEL_73;
            case 18:
              OUTLINED_FUNCTION_110_0();
              goto LABEL_86;
            case 19:
              OUTLINED_FUNCTION_110_0();
              v24 = v33 | 0x626C416F00000000;
              v23 = 0xEA00000000006D75;
              break;
            case 20:
              v23 = 0xE800000000000000;
              OUTLINED_FUNCTION_104_1();
              break;
            case 21:
              OUTLINED_FUNCTION_104_1();
              v28 = 1953720652;
              goto LABEL_78;
            case 22:
              v23 = 0xE300000000000000;
              v24 = 6447476;
              break;
            case 23:
              v24 = 0x72656D6974;
              break;
            case 24:
              v31 = 1701079414;
              goto LABEL_86;
            case 25:
              OUTLINED_FUNCTION_124_1();
              v23 = v30 + 7;
              v24 = 0x69616D6563696F76;
              break;
            case 26:
              OUTLINED_FUNCTION_124_1();
              v23 = v35 + 10;
              goto LABEL_95;
            case 27:
              v23 = 0xE600000000000000;
              v24 = 0x74656C6C6177;
              break;
            case 28:
              v23 = 0xE700000000000000;
              v29 = 0x746973626577;
LABEL_91:
              v24 = v29 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            case 29:
              v23 = 0xE800000000000000;
              OUTLINED_FUNCTION_98_1();
              break;
            case 30:
              OUTLINED_FUNCTION_69_2();
              v23 = v32 + 1786;
              OUTLINED_FUNCTION_105_1();
              break;
            case 31:
              v23 = 0xE600000000000000;
              v24 = 0x6569666C6573;
              break;
            case 32:
              v31 = 1836018803;
LABEL_86:
              v24 = v31 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
              break;
            case 33:
              OUTLINED_FUNCTION_99_1();
              v28 = 1868915817;
LABEL_78:
              v23 = v28 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            case 34:
              OUTLINED_FUNCTION_34_6();
              v26 = 0x746E657645;
LABEL_76:
              v23 = v26 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 35:
              v23 = 0xE400000000000000;
              v24 = 1802398060;
              break;
            case 36:
              v25 = 1769369453;
LABEL_73:
              v24 = v25 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
              break;
            case 37:
              v23 = 0xE600000000000000;
              v24 = 0x697261666173;
              break;
            case 38:
              OUTLINED_FUNCTION_69_2();
              v23 = v34 + 1530;
LABEL_95:
              v24 = 0x6D654D6563696F76;
              break;
            default:
              break;
          }

          if (v13 == v24 && v12 == v23)
          {
            break;
          }

          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v37)
          {
            goto LABEL_105;
          }

          v8 = (v8 + 1) & v6;
          OUTLINED_FUNCTION_133_0();
          if ((v10 & v11) == 0)
          {
            goto LABEL_102;
          }
        }
      }

      else
      {
LABEL_102:
        *(v2 + 56 + 8 * v9) = v10 | v11;
        *(*(v2 + 48) + v8) = v4;
        v38 = *(v2 + 16);
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_108;
        }

        *(v2 + 16) = v40;
      }

LABEL_105:
      ++v3;
      v0 = v41;
      if (v3 == v43)
      {
        goto LABEL_106;
      }
    }

    __break(1u);
LABEL_108:
    __break(1u);
  }

  else
  {
LABEL_106:
  }
}

uint64_t outlined bridged method (ob) of @objc INPersonHandle.value.getter(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type CompoundToolKitPropertyFilter<TypeIdentifier> and conformance CompoundToolKitPropertyFilter<A>()
{
  result = lazy protocol witness table cache variable for type CompoundToolKitPropertyFilter<TypeIdentifier> and conformance CompoundToolKitPropertyFilter<A>;
  if (!lazy protocol witness table cache variable for type CompoundToolKitPropertyFilter<TypeIdentifier> and conformance CompoundToolKitPropertyFilter<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7ToolKit08CompoundaB14PropertyFilterOyAA14TypeIdentifierOGMd, &_s7ToolKit08CompoundaB14PropertyFilterOyAA14TypeIdentifierOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompoundToolKitPropertyFilter<TypeIdentifier> and conformance CompoundToolKitPropertyFilter<A>);
  }

  return result;
}

uint64_t outlined init with take of SearchResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type TypeDefinitionQuery and conformance TypeDefinitionQuery(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_41_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SchemaProperties(uint64_t a1)
{
  result = type metadata singleton initialization cache for SchemaProperties;
  if (!type metadata singleton initialization cache for SchemaProperties)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type CSSearchableItem and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CSSearchableItem and conformance NSObject)
  {
    type metadata accessor for TRIClient(255, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CSSearchableItem and conformance NSObject);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc INFile.typeIdentifier.getter(void *a1)
{
  v1 = [a1 typeIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for SchemaProperties(uint64_t a1)
{
  result = type metadata accessor for AssistantSchemaIdentifier();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ASPerson(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ASPerson(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s10OmniSearch0B10ResultItemOWOcTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_1(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType()
{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType;
  if (!lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyType and conformance SearchPropertyType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HydrationContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type HydrationContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type HydrationContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
    lazy protocol witness table accessor for type TypeDefinitionQuery and conformance TypeDefinitionQuery(&lazy protocol witness table cache variable for type HydrationContext and conformance HydrationContext, type metadata accessor for HydrationContext);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationContext? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type HydrationContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
    lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type HydrationContext and conformance HydrationContext);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationContext? and conformance <A> A?);
  }

  return result;
}

uint64_t outlined copy of SearchPropertyRequest.GroupInfo?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined copy of SearchPropertyRequest.GroupInfo(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t outlined copy of SearchPropertyRequest.GroupInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t outlined consume of SearchPropertyRequest.GroupInfo?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of SearchPropertyRequest.GroupInfo(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t outlined consume of SearchPropertyRequest.GroupInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey()
{
  result = lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey;
  if (!lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey;
  if (!lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey;
  if (!lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey;
  if (!lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey;
  if (!lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultKey and conformance SearchResultKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TypedValue.TypedValueSchemas and conformance TypedValue.TypedValueSchemas()
{
  result = lazy protocol witness table cache variable for type TypedValue.TypedValueSchemas and conformance TypedValue.TypedValueSchemas;
  if (!lazy protocol witness table cache variable for type TypedValue.TypedValueSchemas and conformance TypedValue.TypedValueSchemas)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedValue.TypedValueSchemas and conformance TypedValue.TypedValueSchemas);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TypedValue.TypedValueSchemas and conformance TypedValue.TypedValueSchemas;
  if (!lazy protocol witness table cache variable for type TypedValue.TypedValueSchemas and conformance TypedValue.TypedValueSchemas)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedValue.TypedValueSchemas and conformance TypedValue.TypedValueSchemas);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TypedValue.TypedValueSchemas(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TypedValue.TypedValueSchemas(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_3(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return _s10OmniSearch0B10ResultItemOWOhTm_1(v0, type metadata accessor for SearchResultItem);
}

uint64_t OUTLINED_FUNCTION_46_5(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_49_5(uint64_t a1@<X8>)
{
  *(v6 + 8 * a1) = v2 | v1;
  v8 = (*(v3 + 48) + 16 * v7);
  *v8 = v5;
  v8[1] = v4;
}

void *OUTLINED_FUNCTION_56_3(uint64_t a1, uint64_t a2, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_57_3(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

void *OUTLINED_FUNCTION_79_2(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

void *OUTLINED_FUNCTION_92_2(uint64_t a1, uint64_t a2, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_93_1(uint64_t a1, uint64_t a2)
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_94_1(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

void *OUTLINED_FUNCTION_96_1(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

void OUTLINED_FUNCTION_138_0(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_139_0()
{

  return MEMORY[0x2821DAEF0](0);
}

uint64_t specialized AnswerResolvable.resolve(query:options:results:assistantLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a2;
  v6[17] = v5;
  v13 = (*(*v5 + 128) + **(*v5 + 128));
  v11 = swift_task_alloc();
  v6[18] = v11;
  *v11 = v6;
  v11[1] = specialized AnswerResolvable.resolve(query:options:results:assistantLocale:);

  return v13(a1, a3, a4, a5);
}

uint64_t specialized AnswerResolvable.resolve(query:options:results:assistantLocale:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = v5[16];
    v5[19] = v3;
    memcpy(v5 + 2, v11, 0x69uLL);
    OUTLINED_FUNCTION_133();
    v14 = (*(v12 + 144) + **(v12 + 144));
    v13 = swift_task_alloc();
    v5[20] = v13;
    *v13 = v7;
    v13[1] = specialized AnswerResolvable.resolve(query:options:results:assistantLocale:);

    return v14(v3, v5 + 2);
  }
}

{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  OUTLINED_FUNCTION_52();
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_62();

  return v5(v2);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DateVG_SSs5NeverOTg5(void *(*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v10 = OUTLINED_FUNCTION_209();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10, v11, v12);
  v8 = v26;
  v13 = type metadata accessor for Date();
  OUTLINED_FUNCTION_21(v13);
  v15 = a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v23 = *(v16 + 72);
  while (1)
  {
    a1(v25, v15);
    if (v6)
    {
      break;
    }

    v6 = 0;
    v17 = v25[0];
    v18 = v25[1];
    OUTLINED_FUNCTION_238();
    if (v20)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v4, 1);
      v8 = v26;
    }

    *(v8 + 16) = v4;
    v21 = v8 + 16 * v5;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    v15 += v23;
    if (!--v7)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOG_0dE00E6ResultVSgs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for AnswerSynthesisExtractionCandidate() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_10OmniSearch0E15PropertyRequestVs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchPropertyRequest(0);
  v6 = OUTLINED_FUNCTION_21(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v48 = v8 - v7;
  v9 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v51 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v49 = v51;
    v12 = specialized Dictionary.startIndex.getter();
    v14 = v13;
    v15 = 0;
    v16 = a3 + 64;
    v43 = v13;
    v44 = v9;
    v42 = a3 + 72;
    v17 = a3;
    v47 = a3;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v17 + 32))
    {
      v18 = v12 >> 6;
      if ((*(v16 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v17 + 36) != v14)
      {
        goto LABEL_25;
      }

      v46 = v11;
      v19 = v16;
      v20 = *(v17 + 56);
      v21 = (*(v17 + 48) + 16 * v12);
      v22 = *v21;
      v23 = v21[1];
      v24 = (v20 + 16 * v12);
      v25 = *v24;
      v26 = v24[1];
      v50[0] = v22;
      v50[1] = v23;
      v50[2] = v25;
      v50[3] = v26;

      a1(v50);
      if (v3)
      {
        goto LABEL_29;
      }

      v27 = v49;
      v51 = v49;
      v28 = *(v49 + 16);
      if (v28 >= *(v49 + 24) >> 1)
      {
        OUTLINED_FUNCTION_235();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39, v40, v41);
        v27 = v51;
      }

      *(v27 + 16) = v28 + 1;
      OUTLINED_FUNCTION_42_5();
      v49 = v29;
      OUTLINED_FUNCTION_108_1();
      outlined init with take of ResultsDialog(v48, v30);
      v17 = v47;
      v31 = 1 << *(v47 + 32);
      if (v12 >= v31)
      {
        goto LABEL_26;
      }

      v32 = *(v19 + 8 * v18);
      if ((v32 & (1 << v12)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v47 + 36) != v14)
      {
        goto LABEL_28;
      }

      v16 = v19;
      v33 = v32 & (-2 << (v12 & 0x3F));
      if (v33)
      {
        v31 = __clz(__rbit64(v33)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v18 << 6;
        v35 = v18 + 1;
        v36 = (v42 + 8 * v18);
        while (v35 < (v31 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            outlined consume of [String : String].Index._Variant(v12, v14, v46 & 1);
            v17 = v47;
            v31 = __clz(__rbit64(v37)) + v34;
            goto LABEL_20;
          }
        }

        outlined consume of [String : String].Index._Variant(v12, v14, v46 & 1);
        v17 = v47;
      }

LABEL_20:
      v11 = 0;
      ++v15;
      v12 = v31;
      v14 = v43;
      if (v15 == v44)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    __break(1u);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10OmniSearch13MessageRecord_pG_AF04ChatfG0_ps5NeverOTg5(void *(*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v11 = OUTLINED_FUNCTION_209();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11, v12, v13);
  v8 = v19;
  for (i = a3 + 32; ; i += 40)
  {
    a1(v18, i);
    if (v6)
    {
      break;
    }

    v6 = 0;
    OUTLINED_FUNCTION_238();
    if (v16)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v4, 1);
      v8 = v19;
    }

    *(v8 + 16) = v4;
    outlined init with take of ResponseOverrideMatcherProtocol(v18, v8 + 40 * v5 + 32);
    if (!--v7)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v26 = a4;
  v6 = type metadata accessor for SearchPropertyResponse(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v30 = a1;
  v11 = *(a1 + 16);
  while (1)
  {
    if (v11 == v10)
    {
      v22 = 1;
      v23 = v26;
      return __swift_storeEnumTagSinglePayload(v23, v22, 1, v6);
    }

    _s10OmniSearch0B6ResultVWOcTm_1(v30 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v9);
    EntityProperty.wrappedValue.getter();
    if (v28 == *a2 && v29 == a2[1])
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    EntityProperty.wrappedValue.getter();
    v14 = 0xE600000000000000;
    v15 = 0x676E69727473;
    v16 = 0x676E69727473;
    switch(v28)
    {
      case 1:
        v14 = 0xE400000000000000;
        v16 = 1702125924;
        break;
      case 2:
        v16 = 0x706D6F4365746164;
        v14 = 0xEE0073746E656E6FLL;
        break;
      case 3:
        v14 = 0xE800000000000000;
        v17 = 1634891108;
        goto LABEL_16;
      case 4:
        v16 = 0x6E6F73726570;
        break;
      case 5:
        v16 = 0x7265626D756ELL;
        break;
      case 6:
        v14 = 0xE500000000000000;
        v16 = 0x616964656DLL;
        break;
      case 7:
        v16 = 0x697461676976616ELL;
        v14 = 0xEA00000000006E6FLL;
        break;
      case 8:
        v14 = 0xE300000000000000;
        v16 = 7107189;
        break;
      case 9:
        v14 = 0xE800000000000000;
        v17 = 1633906540;
LABEL_16:
        v16 = v17 | 0x6E6F697400000000;
        break;
      default:
        break;
    }

    v18 = 0xE600000000000000;
    switch(v27)
    {
      case 1:
        v18 = 0xE400000000000000;
        v15 = 1702125924;
        break;
      case 2:
        v15 = 0x706D6F4365746164;
        v18 = 0xEE0073746E656E6FLL;
        break;
      case 3:
        v18 = 0xE800000000000000;
        v19 = 1634891108;
        goto LABEL_27;
      case 4:
        v15 = 0x6E6F73726570;
        break;
      case 5:
        v15 = 0x7265626D756ELL;
        break;
      case 6:
        v18 = 0xE500000000000000;
        v15 = 0x616964656DLL;
        break;
      case 7:
        v15 = 0x697461676976616ELL;
        v18 = 0xEA00000000006E6FLL;
        break;
      case 8:
        v18 = 0xE300000000000000;
        v15 = 7107189;
        break;
      case 9:
        v18 = 0xE800000000000000;
        v19 = 1633906540;
LABEL_27:
        v15 = v19 | 0x6E6F697400000000;
        break;
      default:
        break;
    }

    if (v16 == v15 && v14 == v18)
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_40;
    }

LABEL_37:
    _s10OmniSearch0B6ResultVWOhTm_0(v9, type metadata accessor for SearchPropertyResponse);
    ++v10;
  }

LABEL_40:
  v23 = v26;
  outlined init with take of ResultsDialog(v9, v26);
  v22 = 0;
  return __swift_storeEnumTagSinglePayload(v23, v22, 1, v6);
}

uint64_t one-time initialization function for shared(uint64_t a1)
{
  type metadata accessor for AnswerSynthesisController();
  OUTLINED_FUNCTION_47_1();
  v1 = type metadata accessor for FeatureFlagService();
  OUTLINED_FUNCTION_197_0(v1);
  result = AnswerSynthesisController.__allocating_init(featureFlagService:isXPC:)();
  static AnswerSynthesisController.shared = result;
  return result;
}

{
  type metadata accessor for HallucinationMitigator();
  swift_allocObject();
  result = HallucinationMitigator.().init()();
  static HallucinationMitigator.shared = result;
  return result;
}

{
  type metadata accessor for MetricsLogger();
  result = swift_allocObject();
  static MetricsLogger.shared = result;
  return result;
}

uint64_t AnswerSynthesisController.__allocating_init(featureFlagService:isXPC:)()
{
  v1 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  if (static NSUserDefaults.answerSynthesisModelType.getter(v1, v2, v3, v4, v5) == 0x6563697665446E6FLL && v6 == 0xE800000000000000)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      static NSUserDefaults.answerSynthesisTokenLimitServer.getter(v9);
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_126_2(&one-time initialization token for shared);
      }

      v10 = static HallucinationMitigator.shared;
      v41 = type metadata accessor for HallucinationMitigator();
      v42 = &protocol witness table for HallucinationMitigator;
      v40 = v10;
      type metadata accessor for SageSearch();
      OUTLINED_FUNCTION_219();
      v11 = SageSearch.__allocating_init()();
      v12 = [objc_opt_self() sharedSession];
      OUTLINED_FUNCTION_228();
      v13 = type metadata accessor for FeatureFlagService();
      v14 = OUTLINED_FUNCTION_197_0(v13);
      type metadata accessor for GlobalSearchClient();
      OUTLINED_FUNCTION_178_0();
      v15 = swift_allocObject();
      v15[7] = v1;
      v15[8] = &protocol witness table for SageSearch;
      v15[4] = v11;
      OUTLINED_FUNCTION_20_5(v15);
      *(v16 + 72) = v0;
      *(v16 + 80) = v14;
      OUTLINED_FUNCTION_83_4();
      swift_beginAccess();
      outlined assign with take of SearchToolGlobalSearchXPC?(v37, v1, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
      swift_endAccess();
      v17 = type metadata accessor for GlobalResolutionService();
      OUTLINED_FUNCTION_128_2();
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      v38 = &type metadata for RequestedPropertyController;
      v39 = &protocol witness table for RequestedPropertyController;
      v19 = swift_allocObject();
      v37[0] = v19;
      v19[5] = v17;
      v19[6] = &protocol witness table for GlobalResolutionService;
      v19[2] = v18;
      Parser = type metadata accessor for DefaultSpotlightQueryParser();
      OUTLINED_FUNCTION_128_2();
      v21 = swift_allocObject();
      *(v21 + 16) = [objc_opt_self() defaultManager];
      v19[10] = Parser;
      v19[11] = &protocol witness table for DefaultSpotlightQueryParser;
      v19[7] = v21;
      type metadata accessor for ECRClient();
      OUTLINED_FUNCTION_128_2();
      swift_allocObject();
      ECRClient.init()();
      OUTLINED_FUNCTION_145_0();
      OUTLINED_FUNCTION_29_5();
      return v35(v34);
    }
  }

  static NSUserDefaults.answerSynthesisTokenLimitDevice.getter(v9);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_126_2(&one-time initialization token for shared);
  }

  v22 = static HallucinationMitigator.shared;
  v41 = type metadata accessor for HallucinationMitigator();
  v42 = &protocol witness table for HallucinationMitigator;
  v40 = v22;
  type metadata accessor for SageSearch();
  OUTLINED_FUNCTION_219();
  v23 = SageSearch.__allocating_init()();
  v24 = [objc_opt_self() sharedSession];
  OUTLINED_FUNCTION_228();
  v25 = type metadata accessor for FeatureFlagService();
  v26 = OUTLINED_FUNCTION_197_0(v25);
  type metadata accessor for GlobalSearchClient();
  OUTLINED_FUNCTION_178_0();
  v27 = swift_allocObject();
  v27[7] = v1;
  v27[8] = &protocol witness table for SageSearch;
  v27[4] = v23;
  OUTLINED_FUNCTION_20_5(v27);
  *(v28 + 72) = v0;
  *(v28 + 80) = v26;
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  outlined assign with take of SearchToolGlobalSearchXPC?(v37, v1, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  swift_endAccess();
  v29 = type metadata accessor for GlobalResolutionService();
  OUTLINED_FUNCTION_128_2();
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  v38 = &type metadata for RequestedPropertyController;
  v39 = &protocol witness table for RequestedPropertyController;
  v31 = swift_allocObject();
  v37[0] = v31;
  v31[5] = v29;
  v31[6] = &protocol witness table for GlobalResolutionService;
  v31[2] = v30;
  v32 = type metadata accessor for DefaultSpotlightQueryParser();
  OUTLINED_FUNCTION_128_2();
  v33 = swift_allocObject();
  *(v33 + 16) = [objc_opt_self() defaultManager];
  v31[10] = v32;
  v31[11] = &protocol witness table for DefaultSpotlightQueryParser;
  v31[7] = v33;
  type metadata accessor for ECRClient();
  OUTLINED_FUNCTION_128_2();
  swift_allocObject();
  ECRClient.init()();
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_29_5();
  v34 = 1;
  return v35(v34);
}

uint64_t static AnswerSynthesisController.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t AnswerSynthesisController.pqaVerificationModelEnabled.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v0 + 96);
}

uint64_t AnswerSynthesisController.pqaVerificationModelEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t (*AnswerSynthesisController.pqaVerificationModelEnabled.modify(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

uint64_t AnswerSynthesisController.requestedPropertyController.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return outlined init with copy of ChatMessageRecord(v1 + 104, a1);
}

uint64_t AnswerSynthesisController.requestedPropertyController.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 104));
  outlined init with take of ResponseOverrideMatcherProtocol(a1, v1 + 104);
  return swift_endAccess();
}

uint64_t (*AnswerSynthesisController.requestedPropertyController.modify(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path setter for AnswerSynthesisController.trialManager : AnswerSynthesisController(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 288);

  return v2(v3);
}

uint64_t AnswerSynthesisController.trialManager.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
}

uint64_t AnswerSynthesisController.trialManager.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
}

uint64_t (*AnswerSynthesisController.trialManager.modify(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

uint64_t one-time initialization function for supportedTypeMap()
{
  result = closure #1 in variable initialization expression of static AnswerSynthesisController.supportedTypeMap();
  static AnswerSynthesisController.supportedTypeMap = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static AnswerSynthesisController.supportedTypeMap()
{
  lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
  v0 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_eventAnswers))
  {
    v1 = Dictionary.init(dictionaryLiteral:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v0;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v22);
    v0 = v22;
  }

  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_asVoicemailSupport))
  {
    v3 = Dictionary.init(dictionaryLiteral:)();
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v0;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v4, &v22);
    v0 = v22;
  }

  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_asPhoneHistorySupport))
  {
    v5 = Dictionary.init(dictionaryLiteral:)();
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v0;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v5, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v6, &v22);
    v0 = v22;
  }

  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_asSafariHistorySupport))
  {
    v7 = Dictionary.init(dictionaryLiteral:)();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v0;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v7, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v8, &v22);
    v0 = v22;
  }

  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_asJournalSupport))
  {
    v9 = Dictionary.init(dictionaryLiteral:)();
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v0;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v9, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v10, &v22);
    v0 = v22;
  }

  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_asVoiceMemoSupport))
  {
    v11 = Dictionary.init(dictionaryLiteral:)();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v0;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v11, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v12, &v22);
    v0 = v22;
  }

  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_asWalletTransactionSupport))
  {
    v13 = Dictionary.init(dictionaryLiteral:)();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v0;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v13, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v14, &v22);
    v0 = v22;
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logging.answerSynthesis);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v18 + 12) = 2080;

    Dictionary.description.getter();

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v18 + 14) = v20;
    _os_log_impl(&dword_25D85C000, v16, v17, "%s AS supportedTypeMap=%s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v19, -1, -1);
    MEMORY[0x25F8A1050](v18, -1, -1);
  }

  return v0;
}

uint64_t *AnswerSynthesisController.supportedTypeMap.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedTypeMap != -1)
  {
    OUTLINED_FUNCTION_125_1(&one-time initialization token for supportedTypeMap);
  }

  return &static AnswerSynthesisController.supportedTypeMap;
}

uint64_t *AnswerSynthesisController.noAnswerLabels.unsafeMutableAddressor()
{
  if (one-time initialization token for noAnswerLabels != -1)
  {
    OUTLINED_FUNCTION_31_9();
    swift_once();
  }

  return &static AnswerSynthesisController.noAnswerLabels;
}

uint64_t static AnswerSynthesisController.supportedTypeMap.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

OmniSearch::AnswerSynthesisController::AnswerSynthesisModelType_optional __swiftcall AnswerSynthesisController.AnswerSynthesisModelType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnswerSynthesisController.AnswerSynthesisModelType.init(rawValue:), v3);
  OUTLINED_FUNCTION_112_2();

  if (v1 == 1)
  {
    v4.value = OmniSearch_AnswerSynthesisController_AnswerSynthesisModelType_onDevice;
  }

  else
  {
    v4.value = OmniSearch_AnswerSynthesisController_AnswerSynthesisModelType_unknownDefault;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t AnswerSynthesisController.AnswerSynthesisModelType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6563697665446E6FLL;
  }

  else
  {
    return 0x726576726573;
  }
}

OmniSearch::AnswerSynthesisController::AnswerSynthesisModelType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerSynthesisController.AnswerSynthesisModelType@<W0>(Swift::String *a1@<X0>, OmniSearch::AnswerSynthesisController::AnswerSynthesisModelType_optional *a2@<X8>)
{
  result.value = AnswerSynthesisController.AnswerSynthesisModelType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnswerSynthesisController.AnswerSynthesisModelType@<X0>(uint64_t *a1@<X8>)
{
  result = AnswerSynthesisController.AnswerSynthesisModelType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnswerSynthesisController.__allocating_init(modelType:answerSynthesisTokenLimit:featureFlagService:hallucinationMitigator:requestedPropertyController:ecrClient:isXPC:)(char a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  OUTLINED_FUNCTION_193_0();
  v14 = swift_allocObject();
  AnswerSynthesisController.init(modelType:answerSynthesisTokenLimit:featureFlagService:hallucinationMitigator:requestedPropertyController:ecrClient:isXPC:)(a1 & 1, a2, a3, a4, a5, a6, v7);
  return v14;
}

uint64_t AnswerSynthesisController.init(modelType:answerSynthesisTokenLimit:featureFlagService:hallucinationMitigator:requestedPropertyController:ecrClient:isXPC:)(char a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, char a7)
{
  v8 = v7;
  *(v7 + 152) = 0u;
  v11 = v7 + 152;
  *(v7 + 80) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 96) = 2;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0;
  v12 = type metadata accessor for SageSearch();
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  v13 = SageSearch.__allocating_init()();
  v14 = [objc_opt_self() sharedSession];
  v15 = type metadata accessor for FeatureFlagService();
  v16 = OUTLINED_FUNCTION_197_0(v15);
  type metadata accessor for GlobalSearchClient();
  OUTLINED_FUNCTION_178_0();
  v17 = swift_allocObject();
  v17[7] = v12;
  v17[8] = &protocol witness table for SageSearch;
  v17[4] = v13;
  OUTLINED_FUNCTION_20_5(v17);
  *(v18 + 72) = v14;
  *(v18 + 80) = v16;
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  outlined assign with take of SearchToolGlobalSearchXPC?(&v36, v12, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  swift_endAccess();
  v19 = type metadata accessor for GlobalResolutionService();
  OUTLINED_FUNCTION_128_2();
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(&v37 + 1) = v19;
  v38 = &protocol witness table for GlobalResolutionService;
  *&v36 = v20;
  OUTLINED_FUNCTION_197_0(v15);
  OUTLINED_FUNCTION_47_1();
  type metadata accessor for AnswerResolver();
  swift_allocObject();
  AnswerResolver.init(resolutionService:featureFlagService:)(&v36);
  *(v11 + 40) = v21;
  *(v11 + 89) = a1 & 1;
  *(v11 + 96) = a2;
  *(v11 + 104) = a3;
  outlined init with copy of ChatMessageRecord(a4, v11 + 112);
  outlined init with copy of ChatMessageRecord(a5, v11 - 48);
  v22 = objc_opt_self();

  v23 = [v22 clientWithIdentifier_];
  OUTLINED_FUNCTION_47_1();
  type metadata accessor for TrialManager();
  v24 = swift_allocObject();
  *(v11 - 8) = specialized TrialManager.init(trialClient:namespace:)(v22, 0xD00000000000001CLL, 0x800000025DBEEA10, v24);
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  v25 = OUTLINED_FUNCTION_242();
  outlined assign with copy of ECRClientProtocol?(v25, v26, v27, v28);
  swift_endAccess();
  *(v11 + 88) = a7;
  if (a7)
  {
    static AnswerSynthesisController.attemptToolDatabaseInit()(&v36);

    outlined destroy of IntentApplication?(a6, &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(a5);
    __swift_destroy_boxed_opaque_existential_1Tm(a4);
    v29 = v37;
    *(v8 + 200) = v36;
    *(v8 + 216) = v29;
    *(v8 + 232) = v38;
  }

  else
  {

    outlined destroy of IntentApplication?(a6, &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(a5);
    __swift_destroy_boxed_opaque_existential_1Tm(a4);
    *(v8 + 232) = 0;
    *(v8 + 216) = 0u;
    *(v8 + 200) = 0u;
  }

  return v8;
}

uint64_t static AnswerSynthesisController.attemptToolDatabaseInit()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ToolDatabase();
  result = ToolDatabase.__allocating_init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for ToolDatabase;
  *a1 = result;
  return result;
}

uint64_t AnswerSynthesisController.__allocating_init(answerSynthesisModel:pqaVerificationModel:modelType:answerSynthesisTokenLimit:featureFlagService:hallucinationMitigator:requestedPropertyController:ecrClient:toolDatabase:isXPC:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_193_0();
  v17 = swift_allocObject();
  AnswerSynthesisController.init(answerSynthesisModel:pqaVerificationModel:modelType:answerSynthesisTokenLimit:featureFlagService:hallucinationMitigator:requestedPropertyController:ecrClient:toolDatabase:isXPC:)(a1, a2, a3 & 1, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

uint64_t AnswerSynthesisController.init(answerSynthesisModel:pqaVerificationModel:modelType:answerSynthesisTokenLimit:featureFlagService:hallucinationMitigator:requestedPropertyController:ecrClient:toolDatabase:isXPC:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 16) = 0u;
  v14 = v10 + 16;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 96) = 2;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0;
  *(v10 + 152) = 0u;
  v15 = type metadata accessor for SageSearch();
  v43 = 0u;
  v44 = 0u;
  v45 = 0;
  v16 = SageSearch.__allocating_init()();
  v17 = [objc_opt_self() sharedSession];
  OUTLINED_FUNCTION_228();
  v18 = type metadata accessor for FeatureFlagService();
  v19 = OUTLINED_FUNCTION_197_0(v18);
  type metadata accessor for GlobalSearchClient();
  OUTLINED_FUNCTION_178_0();
  v20 = swift_allocObject();
  v20[7] = v15;
  v20[8] = &protocol witness table for SageSearch;
  v20[4] = v16;
  OUTLINED_FUNCTION_20_5(v20);
  *(v21 + 72) = v11;
  *(v21 + 80) = v19;
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  outlined assign with take of SearchToolGlobalSearchXPC?(&v43, v15, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  swift_endAccess();
  v22 = type metadata accessor for GlobalResolutionService();
  OUTLINED_FUNCTION_128_2();
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(&v44 + 1) = v22;
  v45 = &protocol witness table for GlobalResolutionService;
  *&v43 = v23;
  OUTLINED_FUNCTION_197_0(v18);
  OUTLINED_FUNCTION_47_1();
  type metadata accessor for AnswerResolver();
  swift_allocObject();
  AnswerResolver.init(resolutionService:featureFlagService:)(&v43);
  *(v14 + 176) = v24;
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  outlined assign with copy of ECRClientProtocol?(a1, v14, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
  swift_endAccess();
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  outlined assign with copy of ECRClientProtocol?(a2, v14 + 40, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
  swift_endAccess();
  *(v14 + 225) = a3 & 1;
  *(v14 + 232) = a4;
  *(v14 + 240) = a5;
  outlined init with copy of ChatMessageRecord(a6, v14 + 248);
  outlined init with copy of ChatMessageRecord(a7, v14 + 88);
  v25 = objc_opt_self();

  v26 = [v25 clientWithIdentifier_];
  OUTLINED_FUNCTION_47_1();
  type metadata accessor for TrialManager();
  v27 = swift_allocObject();
  *(v14 + 128) = specialized TrialManager.init(trialClient:namespace:)(v25, 0xD00000000000001CLL, 0x800000025DBEEA10, v27);
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  v28 = OUTLINED_FUNCTION_88();
  outlined assign with copy of ECRClientProtocol?(v28, v29, v30, v31);
  swift_endAccess();
  *(v14 + 224) = a10;
  if (a10)
  {
    outlined init with copy of ToolDatabaseProtocol?(a9, &v41, &_s10OmniSearch20ToolDatabaseProtocol_pSgMd, &_s10OmniSearch20ToolDatabaseProtocol_pSgMR);
    if (v42)
    {

      outlined destroy of IntentApplication?(a9, &_s10OmniSearch20ToolDatabaseProtocol_pSgMd, &_s10OmniSearch20ToolDatabaseProtocol_pSgMR);
      outlined destroy of IntentApplication?(a8, &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm(a7);
      __swift_destroy_boxed_opaque_existential_1Tm(a6);
      outlined destroy of IntentApplication?(a2, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
      outlined destroy of IntentApplication?(a1, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
      outlined init with take of ResponseOverrideMatcherProtocol(&v41, &v43);
    }

    else
    {
      static AnswerSynthesisController.attemptToolDatabaseInit()(&v43);

      outlined destroy of IntentApplication?(a9, &_s10OmniSearch20ToolDatabaseProtocol_pSgMd, &_s10OmniSearch20ToolDatabaseProtocol_pSgMR);
      outlined destroy of IntentApplication?(a8, &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm(a7);
      __swift_destroy_boxed_opaque_existential_1Tm(a6);
      outlined destroy of IntentApplication?(a2, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
      outlined destroy of IntentApplication?(a1, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
      if (v42)
      {
        outlined destroy of IntentApplication?(&v41, &_s10OmniSearch20ToolDatabaseProtocol_pSgMd, &_s10OmniSearch20ToolDatabaseProtocol_pSgMR);
      }
    }

    v33 = v44;
    result = v40;
    *(v40 + 200) = v43;
    *(v40 + 216) = v33;
    *(v40 + 232) = v45;
  }

  else
  {

    outlined destroy of IntentApplication?(a9, &_s10OmniSearch20ToolDatabaseProtocol_pSgMd, &_s10OmniSearch20ToolDatabaseProtocol_pSgMR);
    outlined destroy of IntentApplication?(a8, &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(a7);
    __swift_destroy_boxed_opaque_existential_1Tm(a6);
    outlined destroy of IntentApplication?(a2, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
    outlined destroy of IntentApplication?(a1, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
    result = v40;
    *(v40 + 200) = 0u;
    *(v40 + 216) = 0u;
    *(v40 + 232) = 0;
  }

  return result;
}

uint64_t AnswerSynthesisController.initializeModels(with:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v132 - v4;
  type metadata accessor for Locale.Language();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v7 = type metadata accessor for Locale.LanguageCode();
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  v133 = v11 - v12;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_4();
  v135 = v14;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_4();
  v134 = v16;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_4();
  v137 = v18;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v19);
  v21 = &v132 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_2();
  v146 = v23;
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  v24 = OUTLINED_FUNCTION_232();
  v25(v24);
  v26 = OUTLINED_FUNCTION_191_0();
  if (__swift_getEnumTagSinglePayload(v26, v27, v28) == 1)
  {
    MEMORY[0x25F899720](28261, 0xE200000000000000);
    v29 = OUTLINED_FUNCTION_191_0();
    if (__swift_getEnumTagSinglePayload(v29, v30, v31) != 1)
    {
      outlined destroy of IntentApplication?(v5, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    }
  }

  else
  {
    (*(v9 + 32))(v146, v5, v7);
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, static Logging.answerSynthesis);
  v34 = *(v9 + 16);
  OUTLINED_FUNCTION_229();
  v34();
  v139 = v33;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  v37 = OUTLINED_FUNCTION_20_3();
  v39 = os_log_type_enabled(v37, v38);
  v140 = v9;
  v136 = v9 + 16;
  if (v39)
  {
    OUTLINED_FUNCTION_28_3();
    v40 = swift_slowAlloc();
    v138 = v34;
    v41 = v40;
    OUTLINED_FUNCTION_9_4();
    v42 = swift_slowAlloc();
    v143[0] = v42;
    *v41 = 136315138;
    v132 = v0;
    (v138)(v137, v21, v7);
    String.init<A>(describing:)();
    v43 = *(v9 + 8);
    v43(v21, v7);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    v1 = v132;

    *(v41 + 4) = v44;
    _os_log_impl(&dword_25D85C000, v35, v36, "Initializing models with languageCode: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v45 = v43;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v34 = v138;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    v45 = *(v9 + 8);
    v45(v21, v7);
  }

  v46 = v141;
  v47 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v52._countAndFlagsBits = static NSUserDefaults.answerSynthesisModelType.getter(v47, v48, v49, v50, v51);
  v53.value = AnswerSynthesisController.AnswerSynthesisModelType.init(rawValue:)(v52).value;
  if (v53.value == OmniSearch_AnswerSynthesisController_AnswerSynthesisModelType_unknownDefault)
  {
    v54 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v55 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_51_5();
      v57 = swift_slowAlloc();
      OUTLINED_FUNCTION_157_0(v57);
      OUTLINED_FUNCTION_22_4();
      _os_log_impl(v58, v59, v60, v61, v62, 2u);
      v63 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v63);
    }

    lazy protocol witness table accessor for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError();
    OUTLINED_FUNCTION_49_6();
    v64 = swift_allocError();
    OUTLINED_FUNCTION_225(v64, v65);
    swift_willThrow();
    return (v45)(v146, v7);
  }

  if (v53.value)
  {
    v66 = v134;
    OUTLINED_FUNCTION_229();
    v34();
    v67 = v34;
    v68 = type metadata accessor for AnswerSynthesisModelOnDevice(0);
    OUTLINED_FUNCTION_53_0();
    swift_allocObject();
    AnswerSynthesisModelOnDevice.init(languageCode:)(v66, v69, v70, v71, v72, v73, v74, v75, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142[0], v142[1]);
    if (!v1)
    {
      v138 = v67;
      v77 = &protocol witness table for AnswerSynthesisModelOnDevice;
      goto LABEL_20;
    }

    return (v45)(v146, v7);
  }

  v78 = v135;
  OUTLINED_FUNCTION_229();
  v34();
  v79 = v34;
  v68 = type metadata accessor for AnswerSynthesisModelServer(0);
  OUTLINED_FUNCTION_53_0();
  swift_allocObject();
  v76 = AnswerSynthesisModelServer.init(languageCode:)(v78);
  if (v1)
  {
    return (v45)(v146, v7);
  }

  v138 = v79;
  v77 = &protocol witness table for AnswerSynthesisModelServer;
LABEL_20:
  v144 = v68;
  v145 = v77;
  v143[0] = v76;
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  outlined assign with take of SearchToolGlobalSearchXPC?(v143, v46 + 16, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
  swift_endAccess();
  v81 = v137;
  MEMORY[0x25F899720](28261, 0xE200000000000000);
  v82 = MEMORY[0x25F899730](v146, v81);
  v45(v81, v7);
  if (v82)
  {
    OUTLINED_FUNCTION_133();
    v84 = (*(v83 + 80))(6);
  }

  else
  {
    v84 = 0;
  }

  OUTLINED_FUNCTION_133();
  v86 = (*(v85 + 80))(7);
  v87 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v88 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v141 = v45;
    *v90 = 67109376;
    *(v90 + 4) = v84 & 1;
    *(v90 + 8) = 1024;
    *(v90 + 10) = v86 & 1;
    OUTLINED_FUNCTION_130_2();
    _os_log_impl(v91, v92, v93, v94, v95, 0xEu);
    v45 = v141;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v96 = (*(*v46 + 240))((v84 | v86) & 1);
  v97 = (*(*v46 + 232))(v96);
  if (v97 == 2)
  {
    v98 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v99 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v99, v100))
    {
      OUTLINED_FUNCTION_51_5();
      v101 = swift_slowAlloc();
      OUTLINED_FUNCTION_157_0(v101);
      OUTLINED_FUNCTION_22_4();
      _os_log_impl(v102, v103, v104, v105, v106, 2u);
      v107 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v107);
    }

    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v108 = swift_allocError();
    OUTLINED_FUNCTION_225(v108, v109);
    swift_willThrow();
    return (v45)(v146, v7);
  }

  v110 = v97;
  v111 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v112 = OUTLINED_FUNCTION_20_3();
  v114 = os_log_type_enabled(v112, v113);
  if ((v110 & 1) == 0)
  {
    if (v114)
    {
      OUTLINED_FUNCTION_51_5();
      v125 = swift_slowAlloc();
      OUTLINED_FUNCTION_157_0(v125);
      OUTLINED_FUNCTION_22_4();
      _os_log_impl(v126, v127, v128, v129, v130, 2u);
      v131 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v131);
    }

    return (v45)(v146, v7);
  }

  if (v114)
  {
    OUTLINED_FUNCTION_51_5();
    v115 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v115);
    OUTLINED_FUNCTION_22_4();
    _os_log_impl(v116, v117, v118, v119, v120, 2u);
    v121 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v121);
  }

  v122 = v133;
  OUTLINED_FUNCTION_229();
  v138();
  v123 = type metadata accessor for PQAVerificationModelOnDevice(0);
  OUTLINED_FUNCTION_53_0();
  swift_allocObject();
  v124 = PQAVerificationModelOnDevice.init(languageCode:)(v122);
  v144 = v123;
  v145 = &protocol witness table for PQAVerificationModelOnDevice;
  v143[0] = v124;
  v45(v146, v7);
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  outlined assign with take of SearchToolGlobalSearchXPC?(v143, v46 + 56, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
  return swift_endAccess();
}

Swift::Bool __swiftcall AnswerSynthesisController.supports(_:)(OmniSearch::SearchResultKey a1)
{
  v1 = *a1;
  if (one-time initialization token for supportedTypeMap != -1)
  {
    OUTLINED_FUNCTION_125_1(&one-time initialization token for supportedTypeMap);
  }

  if (*(static AnswerSynthesisController.supportedTypeMap + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)()
{
  OUTLINED_FUNCTION_48();
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v5 = type metadata accessor for OSSignpostID();
  v0[20] = v5;
  OUTLINED_FUNCTION_21(v5);
  v0[21] = v6;
  v0[22] = OUTLINED_FUNCTION_160();
  v0[23] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_51_5();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_234(v3);
    v4 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_256(&dword_25D85C000, v5, v6, v4, "AnswerSynthesisController.preprocessSearchEntity", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  v10 = *(v0 + 144);

  v11 = OUTLINED_FUNCTION_153();
  v12(v11);
  type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_53_0();
  swift_allocObject();
  OUTLINED_FUNCTION_45_4();
  *(v0 + 192) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch03AnyE19EntityPreprocessingVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch03AnyE19EntityPreprocessingVGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25DBC9D00;
  *(v0 + 40) = &type metadata for EmailContentPreprocessing;
  *(v0 + 48) = &protocol witness table for EmailContentPreprocessing;
  v14 = swift_allocObject();
  outlined init with take of ResponseOverrideMatcherProtocol((v0 + 16), v14 + 16);
  *(v13 + 32) = &async function pointer to partial apply for closure #1 in AnySearchEntityPreprocessing.init(_:);
  *(v13 + 40) = v14;
  v15 = SmartChunkingPreprocessing.init()();
  *(v0 + 80) = &type metadata for SmartChunkingPreprocessing;
  *(v0 + 88) = &protocol witness table for SmartChunkingPreprocessing;
  *(v0 + 56) = v15;
  *(v0 + 64) = v16;
  v17 = swift_allocObject();
  outlined init with take of ResponseOverrideMatcherProtocol((v0 + 56), v17 + 16);
  *(v13 + 48) = &closure #1 in AnySearchEntityPreprocessing.init(_:)partial apply;
  *(v13 + 56) = v17;
  v18 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v19 = static NSUserDefaults.answerSynthesisSearchResultsPerRequest.getter(v18);
  Array<A>.chunked(into:)(v19, v10);
  v21 = v20;
  *(v0 + 200) = v20;
  v22 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.modify();
  OUTLINED_FUNCTION_175_0();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics();
  v23 = OUTLINED_FUNCTION_45_4();
  result = __swift_getEnumTagSinglePayload(v23, v24, v25);
  if (!result)
  {
    v27 = *(v21 + 16);
    if (HIDWORD(v27))
    {
      __break(1u);
      return result;
    }

    MEMORY[0x25F89E570](v27);
  }

  v22(v0 + 96, 0);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v28, static Logging.answerSynthesis);

  v29 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_150_0();
  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_9_4();
    v31 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v37 = swift_slowAlloc();
    *v31 = 136315650;
    OUTLINED_FUNCTION_98_2();
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v31 + 12) = 2048;
    *(v31 + 14) = *(v21 + 16);

    *(v31 + 22) = 2048;
    *(v31 + 24) = static NSUserDefaults.answerSynthesisSearchResultsPerRequest.getter(v32);
    _os_log_impl(&dword_25D85C000, v29, v22, "%s Batched into %ld batch(es) of size=%ld", v31, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v34 = *(v0 + 128);
  v33 = *(v0 + 136);
  v35 = swift_allocObject();
  *(v0 + 208) = v35;
  v35[2] = v13;
  v35[3] = v34;
  v35[4] = v33;

  v36 = swift_task_alloc();
  *(v0 + 216) = v36;
  *v36 = v0;
  v36[1] = AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:);

  return specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(0, &async function pointer to partial apply for closure #1 in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:), v35, v21);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 224) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_4_7();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 224);

  return v1(v2);
}

uint64_t closure #1 in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *a2;
  return MEMORY[0x2822009F8](closure #1 in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:));
}

uint64_t closure #1 in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)()
{
  OUTLINED_FUNCTION_72();
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.answerSynthesis);

  v2 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v3 = OUTLINED_FUNCTION_20_3();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_9_4();
    v21 = swift_slowAlloc();
    *v7 = 136315394;
    OUTLINED_FUNCTION_98_2();
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v7 + 12) = 2048;
    *(v7 + 14) = *(v6 + 16);

    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050](v13);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050](v14);
  }

  else
  {
  }

  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  v15[1] = closure #1 in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:);
  v16 = v0[5];
  v17 = v0[6];
  v19 = v0[3];
  v18 = v0[4];

  return SearchEntityPreprocessor.preprocess(data:query:)(v17, v18, v16, v19);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  v4 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v4);
}

{
  **(v0 + 16) = *(v0 + 64);
  OUTLINED_FUNCTION_127();
  return v1();
}

uint64_t AnswerSynthesisController.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_48();
  v1[90] = v0;
  v1[89] = v27;
  v1[88] = v26;
  v1[87] = v2;
  v1[86] = v3;
  v1[85] = v4;
  v1[84] = v5;
  v1[83] = v6;
  v1[82] = v7;
  v1[81] = v8;
  v1[80] = v9;
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  v1[91] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[92] = v11;
  v1[93] = OUTLINED_FUNCTION_199();
  v12 = type metadata accessor for ResultsDialog(0);
  OUTLINED_FUNCTION_114(v12);
  v1[94] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for AnswerSynthesisResult(0);
  v1[95] = v13;
  OUTLINED_FUNCTION_21(v13);
  v1[96] = v14;
  v1[97] = OUTLINED_FUNCTION_160();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v15 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult();
  v1[101] = v15;
  OUTLINED_FUNCTION_21(v15);
  v1[102] = v16;
  v1[103] = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_21(v17);
  v1[104] = v18;
  v1[105] = OUTLINED_FUNCTION_160();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v19 = type metadata accessor for OSSignpostID();
  v1[108] = v19;
  OUTLINED_FUNCTION_21(v19);
  v1[109] = v20;
  v1[110] = OUTLINED_FUNCTION_160();
  v1[111] = swift_task_alloc();
  v21 = type metadata accessor for Date();
  v1[112] = v21;
  OUTLINED_FUNCTION_21(v21);
  v1[113] = v22;
  v1[114] = OUTLINED_FUNCTION_160();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v23);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1016) = v4;
  *(v2 + 1024) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v5);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 1056) = v0;

  if (v0)
  {
  }

  else
  {
    outlined destroy of AnswerSynthesisRequest(v3 + 128);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_75();
  v1 = v0[99];
  v2 = v0[96];
  v3 = v0[90];
  Date.init()();
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch21AnswerSynthesisResultOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch21AnswerSynthesisResultOGMR);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[133] = v5;
  *(v5 + 16) = xmmword_25DBC8180;
  OUTLINED_FUNCTION_10_5();
  _s10OmniSearch0B6ResultVWOcTm_1(v1, v6 + v4);
  v11 = (*(*v3 + 464) + **(*v3 + 464));
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v0[134] = v7;
  *v7 = v8;
  v7[1] = AnswerSynthesisController.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:);
  v9 = v0[98];

  return v11(v9, v5);
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1080) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v4);
}

{
  v1 = v0[125];
  OUTLINED_FUNCTION_143_0();
  v3 = v2(v0[115]);
  v4 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
  v6 = OUTLINED_FUNCTION_165_0(v4, v5);
  if (!__swift_getEnumTagSinglePayload(v6, v7, v1))
  {
    MEMORY[0x25F89E600](v3);
  }

  v4(v0 + 62, 0);
  v8 = v0[100];
  v9 = v0[97];
  v43 = v0[94];
  v46 = v0[125];
  type metadata accessor for AnswerSynthesisRequestContext(0);
  OUTLINED_FUNCTION_29_5();
  v10();

  OUTLINED_FUNCTION_10_5();
  _s10OmniSearch0B6ResultVWOcTm_1(v9, v8);
  ResultsDialog.init(synthesisResult:)(v8, v43);
  v11 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
  v13 = OUTLINED_FUNCTION_165_0(v11, v12);
  if (!__swift_getEnumTagSinglePayload(v13, v14, v46))
  {
    OUTLINED_FUNCTION_143_0();
    v16 = v15(v0[118]);
    v17 = OUTLINED_FUNCTION_86_3(v16);
    MEMORY[0x25F89E5C0](v17);
  }

  v11(v0 + 66, 0);
  v18 = v0[125];
  v19 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
  v21 = OUTLINED_FUNCTION_165_0(v19, v20);
  if (__swift_getEnumTagSinglePayload(v21, v22, v18))
  {
LABEL_8:
    v19(v0 + 70, 0);
    v25 = v0[122];
    v48 = v0[117];
    v26 = v0[113];
    v27 = v0[112];
    v28 = v0[103];
    v42 = v0[99];
    v44 = v0[115];
    v40 = v0[98];
    v41 = v0[114];
    v29 = v0[97];
    v30 = v0[88];
    v31 = v0[87];
    v45 = v0[80];
    v47 = v0[94];
    (*(v0[102] + 16))(v28, v0[89], v0[101]);
    OUTLINED_FUNCTION_133();
    (*(v32 + 200))(v31, v30, v28);
    v33 = OUTLINED_FUNCTION_212();
    v34(v33);
    OUTLINED_FUNCTION_111_1();
    _s10OmniSearch0B6ResultVWOhTm_0(v29, v35);
    _s10OmniSearch0B6ResultVWOhTm_0(v40, v25);
    v36 = *(v26 + 8);
    v36(v41, v27);
    v36(v44, v27);
    _s10OmniSearch0B6ResultVWOhTm_0(v42, v25);
    v36(v48, v27);
    OUTLINED_FUNCTION_110_1();
    outlined init with take of ResultsDialog(v47, v45);
    OUTLINED_FUNCTION_4_7();
    $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

    OUTLINED_FUNCTION_155_0();
    v37 = OUTLINED_FUNCTION_24_7();
    (v36)(v37);

    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_252();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_143_0();
  result = v23(v0[114]);
  if ((result & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_86_3(result);
    IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.answerSynthesisPostProcessingTime.setter();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 1096);
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  MessageAccumulationContext.record(_:from:)(v1, 2);
  swift_endAccess();

  v2 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v2);
}

{
  v2 = *(v0 + 800);
  v3 = *(v0 + 640);
  swift_storeEnumTagMultiPayload();
  ResultsDialog.init(synthesisResult:)(v2, v3);
  OUTLINED_FUNCTION_4_7();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  OUTLINED_FUNCTION_55_2();
  v4(v1);

  OUTLINED_FUNCTION_106();

  return v5();
}

void AnswerSynthesisController.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:)()
{
  v155 = v0;
  v1 = v0[90];
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  outlined init with copy of ToolDatabaseProtocol?(v1 + 16, (v0 + 44), &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
  if (v0[47])
  {
    outlined init with copy of ChatMessageRecord((v0 + 44), (v0 + 49));
    outlined destroy of IntentApplication?((v0 + 44), &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
    v2 = v0[53];
    __swift_project_boxed_opaque_existential_1(v0 + 49, v0[52]);
    v3 = OUTLINED_FUNCTION_112_2();
    v5 = v4(v3, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 49);
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 44), &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
    v5 = 0;
  }

  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.modelNumber.setter();
  Date.init()();
  if (one-time initialization token for searchSignposter != -1)
  {
LABEL_61:
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v6 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v6, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v7 = OSSignposter.logHandle.getter();
  v8 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_51_5();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v9);
    v10 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v7, v8, v10, "AnswerSynthesisController.synthesize", "", v5, 2u);
    v11 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v11);
  }

  v12 = v0[90];
  v149 = v0[84];
  v13 = v0[82];
  v14 = v0[81];

  v15 = OUTLINED_FUNCTION_153();
  v16(v15);
  type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_53_0();
  swift_allocObject();
  OUTLINED_FUNCTION_45_4();
  v0[119] = OSSignpostIntervalState.init(id:isOpen:)();
  v17 = OUTLINED_FUNCTION_63_0();
  v18(v17);
  v19 = v12[36];
  v20 = v12[37];
  OUTLINED_FUNCTION_218(v12 + 33, v19);
  (*(v20 + 8))(v14, v13, v149, v19, v20);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v0[120] = __swift_project_value_buffer(v21, static Logging.answerSynthesis);

  v22 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_150_0();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[84];
  if (v24)
  {
    OUTLINED_FUNCTION_9_4();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_260();
    *v26 = 136315650;
    *(v26 + 4) = OUTLINED_FUNCTION_172_0();
    *(v26 + 12) = 2048;
    v27 = *(v25 + 16);
    *(v26 + 14) = v27;

    *(v26 + 22) = 2080;
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v146 = v26;
      v150 = v22;
      v29 = v0[104];
      v30 = v0[84];
      *v153 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
      v28 = *v153;
      OUTLINED_FUNCTION_79();
      v32 = v30 + v31;
      v33 = *(v29 + 72);
      do
      {
        v34 = v0[107];
        OUTLINED_FUNCTION_2_4();
        _s10OmniSearch0B6ResultVWOcTm_1(v32, v34);
        SearchResultItem.type.getter(v154);
        SearchResultKey.rawValue.getter();
        v36 = v35;
        v38 = v37;
        OUTLINED_FUNCTION_3_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v34, v39);
        *v153 = v28;
        v41 = v28[2];
        v40 = v28[3];
        if (v41 >= v40 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v40);
          OUTLINED_FUNCTION_235();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43, v44, v45);
          v28 = *v153;
        }

        v28[2] = v41 + 1;
        v42 = &v28[2 * v41];
        v42[4] = v36;
        v42[5] = v38;
        v32 += v33;
        --v27;
      }

      while (v27);
      v26 = v146;
      v22 = v150;
    }

    v46 = MEMORY[0x25F89F8A0](v28, MEMORY[0x277D837D0]);

    OUTLINED_FUNCTION_107();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_112_2();

    *(v26 + 24) = v46;
    OUTLINED_FUNCTION_194_0();
    _os_log_impl(v47, v48, v49, v50, v51, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v52 = v0[84];
  Date.init()();
  v53 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v151 = static NSUserDefaults.answerSynthesisLimit.getter(v53);
  v54 = *(v52 + 16);
  v55 = MEMORY[0x277D84F90];
  if (!v54)
  {
LABEL_30:
    if (!*(v55 + 16))
    {

      v55 = 0;
    }

LABEL_32:
    v0[121] = v55;
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
    }

    v82 = v0[117];
    v83 = static MetricsLogger.shared;
    v0[122] = static MetricsLogger.shared;
    v84 = *v83 + 312;
    v85 = *v84;
    v0[123] = *v84;
    v0[124] = v84 & 0xFFFFFFFFFFFFLL | 0x17EC000000000000;
    v86 = v85(v82);
    v87 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
    OUTLINED_FUNCTION_175_0();
    v0[125] = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
    v88 = OUTLINED_FUNCTION_65();
    if (!__swift_getEnumTagSinglePayload(v88, v89, v90))
    {
      v153[0] = 0;
      MEMORY[0x25F89E620](v86);
    }

    v87(v0 + 54, 0);
    if (v55)
    {

      v91 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      OUTLINED_FUNCTION_150_0();
      if (os_log_type_enabled(v91, v92))
      {
        OUTLINED_FUNCTION_9_4();
        v93 = swift_slowAlloc();
        OUTLINED_FUNCTION_260();
        *v93 = 136315650;
        *(v93 + 4) = OUTLINED_FUNCTION_172_0();
        *(v93 + 12) = 2048;
        *(v93 + 14) = *(v55 + 16);

        *(v93 + 22) = 2080;
        v94 = *(v55 + 16);
        v95 = MEMORY[0x277D84F90];
        if (v94)
        {
          v142 = v83;
          v144 = v93;
          v147 = v91;
          v96 = v0[104];
          *v153 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94, 0);
          v95 = *v153;
          OUTLINED_FUNCTION_79();
          v98 = v55 + v97;
          v99 = *(v96 + 72);
          do
          {
            v100 = v0[107];
            OUTLINED_FUNCTION_2_4();
            _s10OmniSearch0B6ResultVWOcTm_1(v98, v100);
            SearchResultItem.type.getter(v154);
            SearchResultKey.rawValue.getter();
            v102 = v101;
            v104 = v103;
            OUTLINED_FUNCTION_3_6();
            _s10OmniSearch0B6ResultVWOhTm_0(v100, v105);
            *v153 = v95;
            v107 = v95[2];
            v106 = v95[3];
            if (v107 >= v106 >> 1)
            {
              v109 = OUTLINED_FUNCTION_26_3(v106);
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v109, v107 + 1, 1);
              v95 = *v153;
            }

            v95[2] = v107 + 1;
            v108 = &v95[2 * v107];
            v108[4] = v102;
            v108[5] = v104;
            v98 += v99;
            --v94;
          }

          while (v94);
          v91 = v147;
          v93 = v144;
          LOBYTE(v83) = v142;
        }

        v134 = MEMORY[0x25F89F8A0](v95, MEMORY[0x277D837D0]);

        OUTLINED_FUNCTION_107();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_112_2();

        *(v93 + 24) = v134;
        _os_log_impl(&dword_25D85C000, v91, v83, "%s search result count after being filtered=%ld. All types: %s", v93, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {
      }

      Date.init()();
      OUTLINED_FUNCTION_133();
      v135 = swift_task_alloc();
      v0[126] = v135;
      *v135 = v0;
      v135[1] = AnswerSynthesisController.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:);
      OUTLINED_FUNCTION_199_0();

      __asm { BRAA            X4, X16 }
    }

    v110 = v0[85];
    if (v110 && *(v110 + 16))
    {
      v111 = v0[90];
      v0[130] = MEMORY[0x277D84F90];
      v0[129] = v111;
      OUTLINED_FUNCTION_133();
      (*(v112 + 384))();

      OUTLINED_FUNCTION_196_0(v0 + 16);
      OUTLINED_FUNCTION_176_0();
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[131] = v138;
      *v138 = v139;
      OUTLINED_FUNCTION_68_4(v138);
      OUTLINED_FUNCTION_199_0();

      __asm { BRAA            X6, X16 }
    }

    v113 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v114 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v114, v115))
    {
      OUTLINED_FUNCTION_28_3();
      v116 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v117 = swift_slowAlloc();
      *v153 = v117;
      *v116 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v116 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_109_2();
      _os_log_impl(v118, v119, v120, v121, v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v117);
      v122 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v122);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v123 = v0[113];
    v148 = v0[112];
    v152 = v0[117];
    v124 = v0[103];
    v125 = v0[100];
    v126 = v0[88];
    v127 = v0[87];
    v145 = v0[80];
    (*(v0[102] + 16))(v124, v0[89], v0[101]);
    (*(*v83 + 200))(v127, v126, v124);
    v128 = OUTLINED_FUNCTION_64_0();
    v129(v128);
    OUTLINED_FUNCTION_158();
    swift_storeEnumTagMultiPayload();
    ResultsDialog.init(synthesisResult:)(v125, v145);
    v130 = *(v123 + 8);
    v130(v152, v148);
    OUTLINED_FUNCTION_4_7();
    $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

    OUTLINED_FUNCTION_55_2();
    v131 = OUTLINED_FUNCTION_24_7();
    (v130)(v131);

    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_199_0();

    __asm { BRAA            X1, X16 }
  }

  v56 = 0;
  v57 = v0[104];
  v58 = *(*v0[90] + 352);
  v143 = v58;
  v59 = v0[84] + ((*(v57 + 80) + 32) & ~*(v57 + 80));
  v60 = *(v57 + 72);
  while (1)
  {
    v61 = v0[106];
    OUTLINED_FUNCTION_2_4();
    _s10OmniSearch0B6ResultVWOcTm_1(v59, v61);
    SearchResultItem.type.getter(v153);
    if (v58(v153))
    {
      OUTLINED_FUNCTION_2_4();
      _s10OmniSearch0B6ResultVWOcTm_1(v62, v63);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v74, v75, v76, v55);
        v55 = v77;
      }

      v64 = v55;
      v5 = *(v55 + 16);
      v65 = v64;
      v66 = *(v64 + 24);
      if (v5 >= v66 >> 1)
      {
        v78 = OUTLINED_FUNCTION_22_5(v66);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v78, v79, v80, v65);
        v65 = v81;
      }

      v67 = v0[105];
      OUTLINED_FUNCTION_3_6();
      _s10OmniSearch0B6ResultVWOhTm_0(v68, v69);
      *(v65 + 16) = v5 + 1;
      OUTLINED_FUNCTION_1_7();
      outlined init with take of ResultsDialog(v67, v70);
      if (__OFADD__(v56++, 1))
      {
        __break(1u);
        goto LABEL_61;
      }

      v55 = v65;
      if (v56 == v151)
      {
        goto LABEL_32;
      }

      v58 = v143;
    }

    else
    {
      OUTLINED_FUNCTION_3_6();
      _s10OmniSearch0B6ResultVWOhTm_0(v72, v73);
    }

    v59 += v60;
    if (!--v54)
    {
      goto LABEL_30;
    }
  }
}

{
  v1 = v0[127];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[125];

  v4 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
  v6 = OUTLINED_FUNCTION_165_0(v4, v5);
  if (!__swift_getEnumTagSinglePayload(v6, v7, v3))
  {
    OUTLINED_FUNCTION_143_0();
    v9 = v8(v0[116]);
    v10 = OUTLINED_FUNCTION_86_3(v9);
    MEMORY[0x25F89E660](v10);
  }

  v11 = OUTLINED_FUNCTION_243();
  v4(v11);
  if (v2 && *(v2 + 16))
  {
  }

  else
  {
    v12 = v0[85];
    if (!v12 || !*(v12 + 16))
    {

      v18 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      v19 = OUTLINED_FUNCTION_20_3();
      if (os_log_type_enabled(v19, v20))
      {
        OUTLINED_FUNCTION_28_3();
        v21 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v46 = swift_slowAlloc();
        *v21 = 136315138;
        OUTLINED_FUNCTION_98_2();
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_25_6();
        _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        v27 = OUTLINED_FUNCTION_19_5();
        MEMORY[0x25F8A1050](v27);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      v45 = v0[117];
      v44 = v0[116];
      v28 = v0[113];
      v29 = v0[112];
      v30 = v0[100];
      v43 = v0[80];
      (*(v0[102] + 16))(v0[103], v0[89], v0[101]);
      OUTLINED_FUNCTION_133();
      v31 = OUTLINED_FUNCTION_63_0();
      v32(v31);
      v33 = OUTLINED_FUNCTION_158();
      v34(v33);
      swift_storeEnumTagMultiPayload();
      ResultsDialog.init(synthesisResult:)(v30, v43);

      v35 = *(v28 + 8);
      v35(v44, v29);
      v35(v45, v29);
      OUTLINED_FUNCTION_4_7();
      $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

      OUTLINED_FUNCTION_55_2();
      v36 = OUTLINED_FUNCTION_24_7();
      (v35)(v36);

      OUTLINED_FUNCTION_106();
LABEL_18:
      OUTLINED_FUNCTION_252();

      __asm { BRAA            X1, X16 }
    }

    if (!v2)
    {
      v2 = MEMORY[0x277D84F90];
    }
  }

  (*(v0[113] + 8))(v0[116], v0[112]);
  v13 = v0[128];
  v14 = v0[90];
  v0[130] = v2;
  v0[129] = v14;

  OUTLINED_FUNCTION_92_3();
  OUTLINED_FUNCTION_241();
  v15();
  if (!v13)
  {

    OUTLINED_FUNCTION_196_0(v0 + 16);
    OUTLINED_FUNCTION_176_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[131] = v39;
    *v39 = v40;
    OUTLINED_FUNCTION_68_4(v39);
    OUTLINED_FUNCTION_252();

    __asm { BRAA            X6, X16 }
  }

  v16 = *(v0[113] + 8);
  (v16)(v0[117], v0[112]);
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_4_7();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  OUTLINED_FUNCTION_127_2();
  v17 = OUTLINED_FUNCTION_11_5();
  v16(v17);

  OUTLINED_FUNCTION_127();
  goto LABEL_18;
}

uint64_t AnswerSynthesisController.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = *(v22 + 904);

  v24 = *(v23 + 8);
  v25 = OUTLINED_FUNCTION_54_0();
  v24(v25);
  v26 = OUTLINED_FUNCTION_34_5();
  v24(v26);
  OUTLINED_FUNCTION_4_7();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  v37 = *(v22 + 1024);
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_155_0();
  v27 = OUTLINED_FUNCTION_11_5();
  v24(v27);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_191();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v37, a20, a21, a22);
}

{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = *(v22[113] + 8);
  (v23)(v22[117], v22[112]);
  outlined destroy of AnswerSynthesisRequest((v22 + 16));
  OUTLINED_FUNCTION_4_7();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  v34 = v22[132];
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_155_0();
  v24 = OUTLINED_FUNCTION_11_5();
  v23(v24);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_191();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v34, a20, a21, a22);
}

{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  v23 = v22[99];
  v24 = *(v22[113] + 8);
  (v24)(v22[114], v22[112]);
  v25 = OUTLINED_FUNCTION_54_0();
  v24(v25);
  OUTLINED_FUNCTION_17_5();
  _s10OmniSearch0B6ResultVWOhTm_0(v23, v26);
  v27 = OUTLINED_FUNCTION_34_5();
  v24(v27);
  OUTLINED_FUNCTION_4_7();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  v38 = v22[135];
  OUTLINED_FUNCTION_155_0();
  v28 = OUTLINED_FUNCTION_11_5();
  v24(v28);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_191();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v38, a20, a21, a22);
}

uint64_t AnswerSynthesisController.prewarmModel(urgency:answerSynthesisResultForMetrics:)(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v85 = a1;
  v3 = type metadata accessor for PrewarmUrgency();
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_109();
  v78[0] = v7 - v8;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_2();
  v79 = v10;
  OUTLINED_FUNCTION_78_0();
  v11 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v83 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_109();
  v78[1] = v14 - v15;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_4();
  v82 = v17;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_2();
  v86 = v19;
  OUTLINED_FUNCTION_78_0();
  v20 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_109();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v78 - v28;
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v84 = v11;
  v30 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v30, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v31 = OSSignposter.logHandle.getter();
  v32 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_51_5();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v33);
    v34 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v31, v32, v34, "AnswerSynthesisController.prewarmModel", "", v2, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  (*(v22 + 16))(v26, v29, v20);
  type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_53_0();
  v35 = swift_allocObject();
  v78[2] = OSSignpostIntervalState.init(id:isOpen:)();
  v36 = OUTLINED_FUNCTION_43_4();
  v37(v36);
  v38 = v86;
  Date.init()();
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v39, static Logging.answerSynthesis);
  v40 = *(v5 + 16);
  v41 = v79;
  v40(v79, v85, v3);
  v78[3] = v35;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  v44 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_90_1();
    v88[0] = OUTLINED_FUNCTION_260();
    *v46 = 136315394;
    OUTLINED_FUNCTION_98_2();
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v46 + 12) = 2080;
    v40(v78[0], v41, v3);
    String.init<A>(describing:)();
    (*(v5 + 8))(v41, v3);
    OUTLINED_FUNCTION_32_0();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v46 + 14) = v47;
    _os_log_impl(&dword_25D85C000, v42, v43, "%s Prewarming AnswerSynthesisModel with urgency=%s", v46, 0x16u);
    swift_arrayDestroy();
    v38 = v86;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v48 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v48);
  }

  else
  {

    (*(v5 + 8))(v41, v3);
  }

  v49 = v82;
  v50 = v80;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  outlined init with copy of ToolDatabaseProtocol?(v50 + 16, v88, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
  if (v88[3])
  {
    outlined init with copy of ChatMessageRecord(v88, v87);
    outlined destroy of IntentApplication?(v88, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
    OUTLINED_FUNCTION_218(v87, v87[3]);
    OUTLINED_FUNCTION_201_0();
    v51();
    __swift_destroy_boxed_opaque_existential_1Tm(v87);
  }

  else
  {
    outlined destroy of IntentApplication?(v88, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
  }

  v52 = v84;
  v53 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
  v55 = v54;
  v56 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
  if (!__swift_getEnumTagSinglePayload(v55, 1, v56))
  {
    if (one-time initialization token for shared != -1)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  v53(v88, 0);
  while (1)
  {
    v60 = v83;
    (*(v83 + 16))(v49, v38, v52);
    v61 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    OUTLINED_FUNCTION_150_0();
    if (!os_log_type_enabled(v61, v62))
    {
      break;
    }

    v38 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v88[0] = swift_slowAlloc();
    *v38 = 136315394;
    OUTLINED_FUNCTION_98_2();
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v38 + 12) = 1024;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v64 = *(v60 + 8);
    v53 = (v60 + 8);
    v63 = v64;
    v65 = OUTLINED_FUNCTION_88();
    (v64)(v65);
    v66 = OUTLINED_FUNCTION_206(1000.0);
    if (!(v68 ^ v69 | v67))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v66 <= -1.0)
    {
      goto LABEL_25;
    }

    if (v66 < 4294967300.0)
    {
      v70 = v66;
      v63(v49, v52);
      *(v38 + 14) = v70;
      OUTLINED_FUNCTION_194_0();
      _os_log_impl(v71, v72, v73, v74, v75, 0x12u);
      OUTLINED_FUNCTION_139_1();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

      v76 = v86;
      goto LABEL_24;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
LABEL_16:
    OUTLINED_FUNCTION_133();
    v58 = (*(v57 + 312))(v38);
    LOBYTE(v87[0]) = 0;
    v59 = OUTLINED_FUNCTION_86_3(v58);
    MEMORY[0x25F89E630](v59);
    v53(v88, 0);
  }

  v63 = *(v60 + 8);
  v63(v49, v52);

  v76 = v38;
LABEL_24:
  v63(v76, v52);
  OUTLINED_FUNCTION_4_7();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();
}

void AnswerSynthesisController.createAnswerSynthesisRequest(for:requestedProperties:results:onScreenText:context:enableTruncation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = type metadata accessor for AnswerSynthesisRequestContext(0);
  v9 = OUTLINED_FUNCTION_114(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v21 = v11 - v10;
  v18 = *(v7 + 248);
  v20 = static AnswerSynthesisRequest.calculateCharLimitForUserPrompt(tokenLimit:)(v18);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logging.answerSynthesis);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  v15 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_9_4();
    v17 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v22 = swift_slowAlloc();
    *v17 = 136315650;
    OUTLINED_FUNCTION_98_2();
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v17 + 12) = 2048;
    *(v17 + 14) = v18;

    *(v17 + 22) = 2048;
    *(v17 + 24) = v20;
    _os_log_impl(&dword_25D85C000, v13, v14, "%s answerSynthesisTokenLimit=%ld, charLimit=%ld", v17, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  _s10OmniSearch0B6ResultVWOcTm_1(a6, v21);

  AnswerSynthesisRequest.init(query:requestedProperties:documents:onScreenText:context:charLimit:enableTruncation:)();
}

void AnswerSynthesisController.createPQAVerificationRequest(answerSynthesisRequest:synthesisResult:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = *v3;
  if (!*v3)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v36, static Logging.answerSynthesis);
    v32 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v37 = OUTLINED_FUNCTION_20_3();
    if (!os_log_type_enabled(v37, v38))
    {
LABEL_30:

      *(v2 + 48) = 0u;
      *(v2 + 64) = 0u;
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0u;
      *v2 = 0u;
LABEL_32:
      OUTLINED_FUNCTION_148();
      return;
    }

    OUTLINED_FUNCTION_51_5();
    v35 = swift_slowAlloc();
    *v35 = 0;
LABEL_29:
    OUTLINED_FUNCTION_109_2();
    _os_log_impl(v39, v40, v41, v42, v35, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050](v43, v44);
    goto LABEL_30;
  }

  if (!v4[2])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v5 = v4[8];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = v4[7];
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_22:
    if (one-time initialization token for answerSynthesis == -1)
    {
LABEL_23:
      v31 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v31, static Logging.answerSynthesis);
      v32 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v33 = OUTLINED_FUNCTION_20_3();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_51_5();
      v35 = swift_slowAlloc();
      *v35 = 0;
      goto LABEL_29;
    }

LABEL_36:
    OUTLINED_FUNCTION_0_5();
    swift_once();
    goto LABEL_23;
  }

  v8 = v0[1];
  v52 = *v0;
  v57 = v8;
  v58 = v2;
  v9 = v0[9];
  v53 = v0[10];
  v54 = v6;
  v55 = v0[11];
  v56 = v5;
  v10 = v4[5];
  v11 = v4[6];
  v12 = v4[9];
  v13 = *(v9 + 16);
  swift_bridgeObjectRetain_n();
  v51[5] = v10;

  v51[4] = v12;

  v2 = 0;
  v59 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v13 == v2)
    {

      v45 = v56;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_25DBC8180;
      *(v46 + 32) = v54;
      *(v46 + 40) = v45;
      v48 = v57;
      v47 = v58;
      *v58 = v52;
      v47[1] = v48;
      v47[2] = 0;
      v47[3] = 0xE000000000000000;
      v49 = v59;
      v47[4] = v46;
      v47[5] = v49;
      v50 = v55;
      v47[6] = v53;
      v47[7] = v50;
      *(v47 + 64) = 0;
      v47[9] = MEMORY[0x277D84F90];

      goto LABEL_32;
    }

    if (v2 >= *(v9 + 16))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v14 = *(v9 + 32 + 8 * v2);
    swift_bridgeObjectRetain_n();
    v15 = specialized Dictionary.Values.startIndex.getter(v14);
    if (v17)
    {
      break;
    }

    if (*(v14 + 36) != v16)
    {
      goto LABEL_34;
    }

    if (v15 == 1 << *(v14 + 32))
    {

      v19 = 0;
      v20 = 0xE000000000000000;
    }

    else
    {
      v19 = specialized Dictionary.Keys.subscript.getter(v15, v16, 0, v14);
      v20 = v21;
    }

    v60[0] = v19;
    v60[1] = v20;
    MEMORY[0x28223BE20](v18);
    v51[2] = v60;
    v22 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v51, v11);

    if (v22)
    {
      v23 = v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = OUTLINED_FUNCTION_74_4();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25, v26, v27);
        v23 = v61;
      }

      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        v30 = OUTLINED_FUNCTION_26_3(v28);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30, v29 + 1, 1);
        v23 = v61;
      }

      ++v2;
      *(v23 + 16) = v29 + 1;
      v59 = v23;
      *(v23 + 8 * v29 + 32) = v14;
    }

    else
    {

      ++v2;
    }
  }

  __break(1u);
}

uint64_t AnswerSynthesisController.performSynthesisRequest(for:with:answerSynthesisMetrics:clientId:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v1[113] = v0;
  v1[112] = v4;
  v1[111] = v5;
  v1[110] = v6;
  v1[109] = v7;
  v1[108] = v8;
  v9 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  v1[114] = v9;
  OUTLINED_FUNCTION_21(v9);
  v1[115] = v10;
  v1[116] = OUTLINED_FUNCTION_199();
  v11 = type metadata accessor for GenerativeError.PromptError.ErrorType();
  v1[117] = v11;
  OUTLINED_FUNCTION_21(v11);
  v1[118] = v12;
  v1[119] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo();
  v1[120] = v13;
  OUTLINED_FUNCTION_21(v13);
  v1[121] = v14;
  v1[122] = OUTLINED_FUNCTION_160();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v15 = type metadata accessor for GenerativeError.ErrorType();
  v1[125] = v15;
  OUTLINED_FUNCTION_21(v15);
  v1[126] = v16;
  v1[127] = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for GenerativeError.PromptError();
  v1[128] = v17;
  OUTLINED_FUNCTION_21(v17);
  v1[129] = v18;
  v1[130] = OUTLINED_FUNCTION_199();
  v19 = type metadata accessor for GenerativeError();
  v1[131] = v19;
  OUTLINED_FUNCTION_21(v19);
  v1[132] = v20;
  v1[133] = OUTLINED_FUNCTION_160();
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v21 = type metadata accessor for String.Encoding();
  v1[136] = v21;
  OUTLINED_FUNCTION_21(v21);
  v1[137] = v22;
  v1[138] = OUTLINED_FUNCTION_199();
  v23 = type metadata accessor for PrewarmUrgency();
  v1[139] = v23;
  OUTLINED_FUNCTION_21(v23);
  v1[140] = v24;
  v1[141] = OUTLINED_FUNCTION_199();
  v25 = type metadata accessor for OSSignpostID();
  v1[142] = v25;
  OUTLINED_FUNCTION_21(v25);
  v1[143] = v26;
  v1[144] = OUTLINED_FUNCTION_160();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v27 = type metadata accessor for Date();
  v1[147] = v27;
  OUTLINED_FUNCTION_21(v27);
  v1[148] = v28;
  v1[149] = OUTLINED_FUNCTION_160();
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x70uLL);
  v29 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v29);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  *v4 = *v1;
  v3[168] = v5;
  v3[169] = v6;
  v3[170] = v0;

  if (v0)
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 54);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 1408) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_240();
  v1();
  v3 = OUTLINED_FUNCTION_32_0();
  v107 = v1;
  (v1)(v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 432));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 352));
  v4 = *(v0 + 1360);
  v5 = *(v0 + 1048);
  *(v0 + 856) = v4;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_62_3();
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 1072);
    v8 = *(v0 + 1056);
    v9 = *(v0 + 1000);

    v10 = v8 + 32;
    v11 = OUTLINED_FUNCTION_39_5();
    v12(v11);
    GenerativeError.type.getter();
    v13 = OUTLINED_FUNCTION_63_0();
    if (v14(v13) == *MEMORY[0x277D0DB78])
    {
      v15 = OUTLINED_FUNCTION_107_1();
      v16(v15);
      v9 += 32;
      v17 = OUTLINED_FUNCTION_16_0();
      v18(v17);
      GenerativeError.PromptError.type.getter();
      v19 = OUTLINED_FUNCTION_64_0();
      if (v20(v19) == *MEMORY[0x277D0DA90])
      {
        v21 = OUTLINED_FUNCTION_147_0();
        v22(v21);
        v23 = OUTLINED_FUNCTION_16_0();
        v24(v23);
        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v25 = OUTLINED_FUNCTION_195_0();
        __swift_project_value_buffer(v25, static Logging.answerSynthesis);
        v27 = *(v9 + 16);
        v26 = v9 + 16;
        v28 = OUTLINED_FUNCTION_94();
        v27(v28);
        v29 = OUTLINED_FUNCTION_39_5();
        v27(v29);
        v30 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_77_4();
        os_log_type_enabled(v30, v31);
        OUTLINED_FUNCTION_134_0();
        if (v32)
        {
          v26 = OUTLINED_FUNCTION_90_1();
          *v26 = 134218240;
          GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.tokenCount.getter();
          v33 = OUTLINED_FUNCTION_34_7();
          v34 = (v4)(v33);
          *(v26 + 4) = v30;
          v35 = OUTLINED_FUNCTION_182_0(v34);
          v36 = OUTLINED_FUNCTION_30_5();
          (v4)(v36);
          *(v26 + 14) = v35;
          OUTLINED_FUNCTION_170_0(&dword_25D85C000, v37, v38, "Answer synthesis model caught too many tokens error: Token count = %ld, Maximum allowed = %ld.");
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {
          OUTLINED_FUNCTION_36_6();
          v85 = OUTLINED_FUNCTION_30_5();
          (v4)(v85);
          v86 = OUTLINED_FUNCTION_26_2();
          (v4)(v86);
        }

        OUTLINED_FUNCTION_136_1();
        v87 = OUTLINED_FUNCTION_64_0();
        (v4)(v87);
        v9 = v26 + 8;
        v83 = OUTLINED_FUNCTION_88();
        goto LABEL_24;
      }

      v58 = OUTLINED_FUNCTION_132_1();
      v59 = *(v0 + 944);
      (*(v60 + 8))(v58);
      v7 = v59 + 8;
      v61 = OUTLINED_FUNCTION_107();
      v62(v61);
    }

    else
    {
      v56 = OUTLINED_FUNCTION_133_1();
      v57(v56);
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v63 = OUTLINED_FUNCTION_216();
    __swift_project_value_buffer(v63, static Logging.answerSynthesis);
    v2 = v4[2];
    v64 = OUTLINED_FUNCTION_59_3();
    v2(v64);
    v65 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v66 = OUTLINED_FUNCTION_20_3();
    os_log_type_enabled(v66, v67);
    OUTLINED_FUNCTION_186_0();
    if (v68)
    {
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      v105 = OUTLINED_FUNCTION_153_0();
      *v7 = 138412290;
      OUTLINED_FUNCTION_5_6();
      lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v69, v70, MEMORY[0x277D0DBC0]);
      OUTLINED_FUNCTION_49_6();
      v71 = swift_allocError();
      v73 = OUTLINED_FUNCTION_129_2(v71, v72);
      v2(v73);
      v74 = _swift_stdlib_bridgeErrorToNSError();
      v75 = OUTLINED_FUNCTION_43_4();
      v76(v75);
      *(v7 + 4) = v74;
      *v105 = v74;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
      outlined destroy of IntentApplication?(v105, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v82 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v82);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

LABEL_25:
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_156_0();
      v104 = v88;
      v106 = v89;
      v103 = *(v0 + 888);
      OUTLINED_FUNCTION_5_6();
      lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v90, v91, MEMORY[0x277D0DBC0]);
      OUTLINED_FUNCTION_49_6();
      v92 = swift_allocError();
      OUTLINED_FUNCTION_188_0(v92, v93);
      v94 = *(v9 + 16);
      OUTLINED_FUNCTION_160_0();
      v94();
      OUTLINED_FUNCTION_92_3();
      (*(v95 + 320))(v2);

      OUTLINED_FUNCTION_133();
      (*(v96 + 208))(v103, v104, v10);
      (*(v7 + 8))(v10, v106);
      OUTLINED_FUNCTION_49_6();
      swift_allocError();
      OUTLINED_FUNCTION_160_0();
      v94();
      swift_willThrow();
      v97 = OUTLINED_FUNCTION_187_0();
      v98(v97);

      goto LABEL_28;
    }

    v83 = OUTLINED_FUNCTION_43_4();
LABEL_24:
    v84(v83);
    goto LABEL_25;
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v39, static Logging.answerSynthesis);
  v40 = v4;
  v41 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_28_3();
    swift_slowAlloc();
    v42 = OUTLINED_FUNCTION_152_0();
    *v5 = 138412290;
    v43 = v4;
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v44;
    *v42 = v44;
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
    outlined destroy of IntentApplication?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v50 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v50);
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_133();
  (*(v51 + 320))(v4);
  OUTLINED_FUNCTION_133();
  v52 = OUTLINED_FUNCTION_45_0();
  v53(v52);
  v54 = OUTLINED_FUNCTION_54_0();
  v55(v54);
  swift_willThrow();
LABEL_28:
  OUTLINED_FUNCTION_146_0();
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_12_4();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  OUTLINED_FUNCTION_4_7();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  v99 = OUTLINED_FUNCTION_32_3();
  (v107)(v99);
  v100 = OUTLINED_FUNCTION_158();
  (v107)(v100);

  OUTLINED_FUNCTION_127();

  return v101();
}

{

  v1 = v0[173];
  v2 = v0[154];
  v3 = v0[147];
  OUTLINED_FUNCTION_12_4();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  OUTLINED_FUNCTION_4_7();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  v1(v2, v3);
  v4 = OUTLINED_FUNCTION_63_0();
  (v1)(v4);

  OUTLINED_FUNCTION_127();

  return v5();
}

unint64_t AnswerSynthesisController.performSynthesisRequest(for:with:answerSynthesisMetrics:clientId:)(uint64_t a1)
{
  v250 = v1;
  Date.init()();
  Date.init()();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_51_5();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_234(v4);
    v5 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_256(&dword_25D85C000, v6, v7, v5, "AnswerSynthesisController.performSynthesisRequest", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v8 = *(v1 + 1144);
  v9 = *(v1 + 1136);

  v10 = OUTLINED_FUNCTION_26_2();
  v247 = v11;
  v11(v10);
  type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_53_0();
  swift_allocObject();
  OUTLINED_FUNCTION_45_4();
  *(v1 + 1248) = OSSignpostIntervalState.init(id:isOpen:)();
  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_64_0();
  v12(v13);
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_200(v2, static Logging.searchComponentSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_51_5();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_234(v16);
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v14, v15, v17, "SearchTool.AnswerSynthesis", "", v9, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v18 = OUTLINED_FUNCTION_26_2();
  v247(v18);
  swift_allocObject();
  OUTLINED_FUNCTION_45_4();
  *(v1 + 1256) = OSSignpostIntervalState.init(id:isOpen:)();
  v19 = OUTLINED_FUNCTION_64_0();
  v12(v19);
  OUTLINED_FUNCTION_133();
  if ((*(v20 + 80))(6))
  {
    v21 = *(v1 + 904);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    outlined init with copy of ToolDatabaseProtocol?(v21 + 56, v1 + 512, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
    if (*(v1 + 536))
    {
      outlined init with take of ResponseOverrideMatcherProtocol((v1 + 512), v1 + 472);
      Date.init()();
      OUTLINED_FUNCTION_218((v1 + 472), *(v1 + 496));
      static PrewarmUrgency.default.getter();
      v22 = OUTLINED_FUNCTION_34_5();
      v23(v22);
      v24 = OUTLINED_FUNCTION_32_0();
      v25(v24);
      OUTLINED_FUNCTION_211();
      if (!v26)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v27 = *(v1 + 1184);
      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logging.answerSynthesis);
      v29 = (v27 + 16);
      v30 = OUTLINED_FUNCTION_59_3();
      v31(v30);
      v14 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      OUTLINED_FUNCTION_77_4();
      if (os_log_type_enabled(v14, v32))
      {
        v33 = *(v1 + 1184);
        v34 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v35 = swift_slowAlloc();
        v249[0] = v35;
        *v34 = 136315394;
        OUTLINED_FUNCTION_98_2();
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        *(v34 + 12) = 1024;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v38 = *(v33 + 8);
        v36 = (v33 + 8);
        v37 = v38;
        v39 = OUTLINED_FUNCTION_179_0();
        (v38)(v39);
        v40 = OUTLINED_FUNCTION_206(1000.0);
        if (!(v41 ^ v42 | v26))
        {
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        if (v40 <= -1.0)
        {
          goto LABEL_92;
        }

        if (v40 >= 4294967300.0)
        {
LABEL_93:
          __break(1u);
LABEL_94:
          OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
          goto LABEL_37;
        }

        v43 = v40;
        (v37)(*(v1 + 1216), *(v1 + 1176));
        *(v34 + 14) = v43;
        OUTLINED_FUNCTION_190_0();
        _os_log_impl(v44, v45, v46, v47, v48, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v49 = OUTLINED_FUNCTION_19_5();
        MEMORY[0x25F8A1050](v49);

        v50 = OUTLINED_FUNCTION_70_2();
        (v37)(v50);
      }

      else
      {
        OUTLINED_FUNCTION_240();
        v29();

        v51 = OUTLINED_FUNCTION_88();
        (v29)(v51);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 472));
    }

    else
    {
      outlined destroy of IntentApplication?(v1 + 512, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
    }
  }

  Date.init()();
  v52 = *(v1 + 16);
  v53 = *(v1 + 24);
  *(v1 + 1264) = v52;
  *(v1 + 1272) = v53;
  AnswerSynthesisController.answerSynthesisResponseOverride(query:)(v52, v53);
  v37 = &static MetricsLogger.shared;
  v36 = "ptions";
  if (v54)
  {
    OUTLINED_FUNCTION_211();
    if (!v26)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v55, static Logging.answerSynthesis);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      OUTLINED_FUNCTION_28_3();
      v58 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v249[0] = swift_slowAlloc();
      *(v58 + 4) = OUTLINED_FUNCTION_258(4.8149e-34);
      OUTLINED_FUNCTION_130_2();
      _os_log_impl(v59, v60, v61, v62, v63, 0xCu);
      OUTLINED_FUNCTION_139_1();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_211();
    if (!v26)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    __swift_project_value_buffer(v55, static Logging.answerSynthesis);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v64, v65))
    {
      OUTLINED_FUNCTION_28_3();
      v66 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v249[0] = swift_slowAlloc();
      *(v66 + 4) = OUTLINED_FUNCTION_258(4.9654e-34);
      OUTLINED_FUNCTION_130_2();
      _os_log_impl(v67, v68, v69, v70, v71, 0xCu);
      OUTLINED_FUNCTION_139_1();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    static String.Encoding.utf8.getter();
    String.data(using:allowLossyConversion:)();
    v73 = v72;

    v74 = OUTLINED_FUNCTION_242();
    v75(v74);
    if (v73 >> 60 != 15)
    {
      type metadata accessor for JSONDecoder();
      OUTLINED_FUNCTION_53_0();
      swift_allocObject();
      JSONDecoder.init()();
      lazy protocol witness table accessor for type AnswerSynthesisModelResult and conformance AnswerSynthesisModelResult();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      v101 = *(v1 + 712);
      *(v1 + 1368) = v101;
      v248 = *(v1 + 720);
      v102 = *(v1 + 728);
      *(v1 + 1376) = v102;
      v244 = *(v1 + 736);
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_133();
      v104 = (*(v103 + 312))();
      v105 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
      OUTLINED_FUNCTION_175_0();
      type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
      v106 = OUTLINED_FUNCTION_45_4();
      if (!__swift_getEnumTagSinglePayload(v106, v107, v108))
      {
        LOBYTE(v249[0]) = 0;
        MEMORY[0x25F89E610](v104);
      }

      v105(v1 + 680, 0);
      v109 = *(v1 + 1184);
      v110 = OUTLINED_FUNCTION_45_0();
      outlined consume of Data?(v110, v111);
      v113 = *(v109 + 8);
      v112 = v109 + 8;
      *(v1 + 1384) = v113;
      *(v1 + 1392) = v112 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v114 = OUTLINED_FUNCTION_242();
      v115(v114);

      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v116, v117))
      {
        OUTLINED_FUNCTION_28_3();
        v118 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v119 = swift_slowAlloc();
        v249[0] = v119;
        *v118 = 136642819;
        *(v1 + 776) = v101;
        *(v1 + 784) = v248;
        *(v1 + 792) = v102;
        v101 = v244;
        *(v1 + 800) = v244;

        String.init<A>(describing:)();
        v121 = v120;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_227();

        *(v118 + 4) = v112;
        v122 = v117;
        v123 = v248;
        OUTLINED_FUNCTION_70_0(&dword_25D85C000, v124, v122, "Answer synthesis got response: %{sensitive}s");
        __swift_destroy_boxed_opaque_existential_1Tm(v119);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        v123 = v248;
        v121 = v244;
      }

      OUTLINED_FUNCTION_176_0();
      *(v1 + 744) = v101;
      *(v1 + 752) = v123;
      *(v1 + 760) = v102;
      *(v1 + 768) = v121;
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v1 + 1400) = v125;
      *v125 = v126;
      OUTLINED_FUNCTION_69_3(v125);
      OUTLINED_FUNCTION_214();

      __asm { BRAA            X7, X16 }
    }

    lazy protocol witness table accessor for type NetworkServiceError and conformance NetworkServiceError();
    OUTLINED_FUNCTION_49_6();
    v14 = swift_allocError();
    OUTLINED_FUNCTION_261(v76, 1);
    v77 = OUTLINED_FUNCTION_26_2();
    v247 = v78;
    v78(v77);
LABEL_62:
    v144 = *(v1 + 1048);
    *(v1 + 856) = v14;
    v145 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    OUTLINED_FUNCTION_62_3();
    if (!swift_dynamicCast())
    {

      OUTLINED_FUNCTION_211();
      if (!v26)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v178 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v178, static Logging.answerSynthesis);
      v179 = v14;
      v180 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_259())
      {
        OUTLINED_FUNCTION_28_3();
        swift_slowAlloc();
        v181 = OUTLINED_FUNCTION_152_0();
        *v144 = 138412290;
        v182 = v14;
        v183 = _swift_stdlib_bridgeErrorToNSError();
        *(v144 + 4) = v183;
        *v181 = v183;
        OUTLINED_FUNCTION_56_4();
        _os_log_impl(v184, v185, v186, v187, v188, 0xCu);
        outlined destroy of IntentApplication?(v181, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v189 = OUTLINED_FUNCTION_19_5();
        MEMORY[0x25F8A1050](v189);
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_133();
      (*(v190 + 320))(v14);
      OUTLINED_FUNCTION_133();
      v191 = OUTLINED_FUNCTION_45_0();
      v192(v191);
      v193 = OUTLINED_FUNCTION_54_0();
      v194(v193);
      swift_willThrow();
LABEL_89:
      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_73_2();
      OUTLINED_FUNCTION_12_4();
      $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

      OUTLINED_FUNCTION_4_7();
      $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

      v238 = OUTLINED_FUNCTION_32_3();
      v247(v238);
      v239 = OUTLINED_FUNCTION_158();
      v247(v239);

      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_214();

      __asm { BRAA            X1, X16 }
    }

    v146 = *(v1 + 1072);
    v147 = *(v1 + 1008);
    v148 = *(v1 + 1000);

    v149 = OUTLINED_FUNCTION_39_5();
    v150(v149);
    GenerativeError.type.getter();
    v151 = v147 + 88;
    v152 = OUTLINED_FUNCTION_63_0();
    if (v153(v152) == *MEMORY[0x277D0DB78])
    {
      v154 = OUTLINED_FUNCTION_107_1();
      v155(v154);
      v148 += 32;
      v156 = OUTLINED_FUNCTION_16_0();
      v157(v156);
      GenerativeError.PromptError.type.getter();
      v158 = OUTLINED_FUNCTION_64_0();
      if (v159(v158) == *MEMORY[0x277D0DA90])
      {
        v160 = OUTLINED_FUNCTION_147_0();
        v161(v160);
        v162 = OUTLINED_FUNCTION_16_0();
        v163(v162);
        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v164 = OUTLINED_FUNCTION_195_0();
        __swift_project_value_buffer(v164, static Logging.answerSynthesis);
        v166 = *(v148 + 16);
        v165 = v148 + 16;
        v167 = OUTLINED_FUNCTION_94();
        v166(v167);
        v168 = OUTLINED_FUNCTION_39_5();
        v166(v168);
        v169 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_77_4();
        os_log_type_enabled(v169, v170);
        OUTLINED_FUNCTION_134_0();
        if (v171)
        {
          v165 = OUTLINED_FUNCTION_90_1();
          *v165 = 134218240;
          GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.tokenCount.getter();
          v172 = OUTLINED_FUNCTION_34_7();
          v173 = (v151)(v172);
          *(v165 + 4) = v169;
          v174 = OUTLINED_FUNCTION_182_0(v173);
          v175 = OUTLINED_FUNCTION_30_5();
          (v151)(v175);
          *(v165 + 14) = v174;
          OUTLINED_FUNCTION_170_0(&dword_25D85C000, v176, v177, "Answer synthesis model caught too many tokens error: Token count = %ld, Maximum allowed = %ld.");
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {
          OUTLINED_FUNCTION_36_6();
          v224 = OUTLINED_FUNCTION_30_5();
          (v151)(v224);
          v225 = OUTLINED_FUNCTION_26_2();
          (v151)(v225);
        }

        OUTLINED_FUNCTION_136_1();
        v226 = OUTLINED_FUNCTION_64_0();
        (v151)(v226);
        v148 = v165 + 8;
        v222 = OUTLINED_FUNCTION_88();
        goto LABEL_85;
      }

      v197 = OUTLINED_FUNCTION_132_1();
      v198 = *(v1 + 944);
      (*(v199 + 8))(v197);
      v146 = v198 + 8;
      v200 = OUTLINED_FUNCTION_107();
      v201(v200);
    }

    else
    {
      v195 = OUTLINED_FUNCTION_133_1();
      v196(v195);
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v202 = OUTLINED_FUNCTION_216();
    __swift_project_value_buffer(v202, static Logging.answerSynthesis);
    v37 = *(v151 + 16);
    v203 = OUTLINED_FUNCTION_59_3();
    (v37)(v203);
    v204 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v205 = OUTLINED_FUNCTION_20_3();
    os_log_type_enabled(v205, v206);
    OUTLINED_FUNCTION_186_0();
    if (v207)
    {
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      v245 = OUTLINED_FUNCTION_153_0();
      *v146 = 138412290;
      OUTLINED_FUNCTION_5_6();
      lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v208, v209, MEMORY[0x277D0DBC0]);
      OUTLINED_FUNCTION_49_6();
      v210 = swift_allocError();
      v212 = OUTLINED_FUNCTION_129_2(v210, v211);
      (v37)(v212);
      v213 = _swift_stdlib_bridgeErrorToNSError();
      v214 = OUTLINED_FUNCTION_43_4();
      v215(v214);
      *(v146 + 4) = v213;
      *v245 = v213;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v216, v217, v218, v219, v220, 0xCu);
      outlined destroy of IntentApplication?(v245, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v221 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v221);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

LABEL_86:
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_156_0();
      v243 = v227;
      v246 = v228;
      v242 = *(v1 + 888);
      OUTLINED_FUNCTION_5_6();
      lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v229, v230, MEMORY[0x277D0DBC0]);
      OUTLINED_FUNCTION_49_6();
      v231 = swift_allocError();
      OUTLINED_FUNCTION_188_0(v231, v232);
      v233 = *(v148 + 16);
      OUTLINED_FUNCTION_160_0();
      v233();
      OUTLINED_FUNCTION_92_3();
      (*(v234 + 320))(v37);

      OUTLINED_FUNCTION_133();
      (*(v235 + 208))(v242, v243, v14);
      (*(v146 + 8))(v14, v246);
      OUTLINED_FUNCTION_49_6();
      swift_allocError();
      OUTLINED_FUNCTION_160_0();
      v233();
      swift_willThrow();
      v236 = OUTLINED_FUNCTION_187_0();
      v237(v236);

      goto LABEL_89;
    }

    v222 = OUTLINED_FUNCTION_43_4();
LABEL_85:
    v223(v222);
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_196_0(v249);
  *(v1 + 1280) = AnswerSynthesisRequest.userPrompt()();
  if (v79)
  {
    v80 = OUTLINED_FUNCTION_181_0();
    v81(v80);
    goto LABEL_62;
  }

  v14 = (v1 + 584);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_94;
  }

LABEL_37:
  *(v1 + 1296) = *v37;
  OUTLINED_FUNCTION_133();
  v82 += 39;
  v83 = *v82;
  *(v1 + 1304) = *v82;
  *(v1 + 1312) = v82 & 0xFFFFFFFFFFFFLL | 0x17EC000000000000;
  v84 = v83();
  v85 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
  OUTLINED_FUNCTION_175_0();
  *(v1 + 1320) = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
  v86 = OUTLINED_FUNCTION_65();
  if (!__swift_getEnumTagSinglePayload(v86, v87, v88))
  {
    LOBYTE(v249[0]) = 0;
    MEMORY[0x25F89E640](v84);
  }

  v89 = OUTLINED_FUNCTION_243();
  v85(v89);
  v90 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.modify();
  OUTLINED_FUNCTION_175_0();
  *(v1 + 1328) = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics();
  v91 = OUTLINED_FUNCTION_65();
  if (__swift_getEnumTagSinglePayload(v91, v92, v93))
  {
LABEL_43:
    v90(v14, 0);
    v95 = *(v1 + 904);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    outlined init with copy of ToolDatabaseProtocol?(v95 + 16, v1 + 392, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
    if (*(v1 + 416))
    {
      outlined init with take of ResponseOverrideMatcherProtocol((v1 + 392), v1 + 352);
      Date.init()();
      OUTLINED_FUNCTION_218((v1 + 352), *(v1 + 376));
      *(v1 + 456) = &type metadata for AnswerSynthesisRequest;
      *(v1 + 464) = lazy protocol witness table accessor for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest();
      OUTLINED_FUNCTION_178_0();
      v96 = swift_allocObject();
      *(v1 + 432) = v96;
      OUTLINED_FUNCTION_196_0((v96 + 16));
      outlined init with copy of AnswerSynthesisRequest(v1 + 16, v1 + 128);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v1 + 1336) = v97;
      *v97 = v98;
      v97[1] = AnswerSynthesisController.performSynthesisRequest(for:with:answerSynthesisMetrics:clientId:);
      OUTLINED_FUNCTION_214();

      __asm { BRAA            X5, X16 }
    }

    outlined destroy of IntentApplication?(v1 + 392, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
    OUTLINED_FUNCTION_211();
    if (v26)
    {
      goto LABEL_59;
    }

    goto LABEL_96;
  }

  OUTLINED_FUNCTION_30_5();
  result = String.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_96:
    OUTLINED_FUNCTION_0_5();
    swift_once();
LABEL_59:
    v129 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v129, static Logging.answerSynthesis);
    v130 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v131 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v131, v132))
    {
      OUTLINED_FUNCTION_28_3();
      v133 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v134 = swift_slowAlloc();
      v249[0] = v134;
      *v133 = *(v36 + 46);
      OUTLINED_FUNCTION_98_2();
      *(v133 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v135, v136, v137, v138, v139, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v134);
      v140 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v140);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    lazy protocol witness table accessor for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError();
    OUTLINED_FUNCTION_49_6();
    v14 = swift_allocError();
    OUTLINED_FUNCTION_225(v14, v141);
    swift_willThrow();
    v142 = OUTLINED_FUNCTION_26_2();
    v247 = v143;
    v143(v142);
    goto LABEL_62;
  }

  if (!HIDWORD(result))
  {
    LOBYTE(v249[0]) = 0;
    MEMORY[0x25F89E550](result);
    goto LABEL_43;
  }

  __break(1u);
  return result;
}

void AnswerSynthesisController.performSynthesisRequest(for:with:answerSynthesisMetrics:clientId:)()
{
  v2 = *(v0 + 1320);
  v3 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_165_0(v3, v4);
  if (!__swift_getEnumTagSinglePayload(v6, v7, v2))
  {
    v8 = (*(v0 + 1304))(*(v0 + 1192));
    if ((v8 & 0x80000000) != 0)
    {
      __break(1u);
      goto LABEL_56;
    }

    v9 = OUTLINED_FUNCTION_86_3(v8);
    MEMORY[0x25F89E5D0](v9);
  }

  v10 = OUTLINED_FUNCTION_243();
  v3(v10);
  v11 = *(v0 + 1352);
  v158 = *(v0 + 1344);
  v166 = *(v0 + 1328);
  v12 = *(v0 + 1288);
  v1 = *(v0 + 1280);
  v13 = *(v0 + 1272);
  v14 = *(v0 + 1264);
  v15 = *(v0 + 1208);
  v16 = *(v0 + 1184);
  v17 = *(v0 + 896);
  v18 = *(v0 + 888);
  v159 = *(v0 + 1176);

  Date.init()();
  specialized SearchToolBiomeEvent.donate(timestamp:requestId:query:)(v15, v18, v17, v14, v13, v1, v12, v158, v11);

  v19 = *(v16 + 8);
  v19(v15, v159);
  v5 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.modify();
  v21 = OUTLINED_FUNCTION_165_0(v5, v20);
  if (__swift_getEnumTagSinglePayload(v21, v22, v166))
  {
    goto LABEL_8;
  }

  v23 = String.count.getter();
  if ((v23 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v23))
    {
      MEMORY[0x25F89E560](v23);
LABEL_8:
      v5(v0 + 648, 0);
      v19(*(v0 + 1192), *(v0 + 1176));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 352));
      v167 = *(v0 + 1360);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logging.answerSynthesis);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v24, v25))
      {
        OUTLINED_FUNCTION_28_3();
        v26 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v169 = swift_slowAlloc();
        *v26 = 136642819;
        OUTLINED_FUNCTION_54_0();
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        _os_log_impl(&dword_25D85C000, v24, v25, "Got response from answer synthesis model: %{sensitive}s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v169);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      static String.Encoding.utf8.getter();
      String.data(using:allowLossyConversion:)();
      v28 = v27;

      v29 = OUTLINED_FUNCTION_141_0();
      v30(v29);
      if (v28 >> 60 == 15)
      {
        v31 = *(v0 + 1184);
        lazy protocol witness table accessor for type NetworkServiceError and conformance NetworkServiceError();
        OUTLINED_FUNCTION_49_6();
        v32 = swift_allocError();
        OUTLINED_FUNCTION_261(v33, 1);
        v34 = *(v31 + 8);
        v35 = OUTLINED_FUNCTION_153();
        v34(v35);
      }

      else
      {
        type metadata accessor for JSONDecoder();
        OUTLINED_FUNCTION_53_0();
        swift_allocObject();
        JSONDecoder.init()();
        lazy protocol witness table accessor for type AnswerSynthesisModelResult and conformance AnswerSynthesisModelResult();
        OUTLINED_FUNCTION_241();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        if (!v167)
        {

          v88 = *(v0 + 712);
          *(v0 + 1368) = v88;
          v163 = *(v0 + 720);
          v168 = *(v0 + 728);
          *(v0 + 1376) = v168;
          v161 = *(v0 + 736);
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
          }

          OUTLINED_FUNCTION_133();
          v90 = (*(v89 + 312))();
          v91 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
          OUTLINED_FUNCTION_175_0();
          type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
          v92 = OUTLINED_FUNCTION_45_4();
          if (!__swift_getEnumTagSinglePayload(v92, v93, v94))
          {
            MEMORY[0x25F89E610](v90);
          }

          v91(v0 + 680, 0);
          v95 = *(v0 + 1184);
          v96 = OUTLINED_FUNCTION_118_0();
          outlined consume of Data?(v96, v97);
          v99 = *(v95 + 8);
          v98 = v95 + 8;
          *(v0 + 1384) = v99;
          *(v0 + 1392) = v98 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v100 = OUTLINED_FUNCTION_26_2();
          v101(v100);

          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v102, v103))
          {
            OUTLINED_FUNCTION_28_3();
            v104 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v170 = swift_slowAlloc();
            *v104 = 136642819;
            *(v0 + 776) = v88;
            v105 = v163;
            *(v0 + 784) = v163;
            *(v0 + 792) = v168;
            v88 = v161;
            *(v0 + 800) = v161;

            String.init<A>(describing:)();
            v107 = v106;
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_227();

            *(v104 + 4) = v98;
            OUTLINED_FUNCTION_70_0(&dword_25D85C000, v108, v103, "Answer synthesis got response: %{sensitive}s");
            __swift_destroy_boxed_opaque_existential_1Tm(v170);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          else
          {

            v105 = v163;
            v107 = v161;
          }

          OUTLINED_FUNCTION_176_0();
          *(v0 + 744) = v88;
          *(v0 + 752) = v105;
          *(v0 + 760) = v168;
          *(v0 + 768) = v107;
          swift_task_alloc();
          OUTLINED_FUNCTION_53();
          *(v0 + 1400) = v136;
          *v136 = v137;
          OUTLINED_FUNCTION_69_3(v136);
          OUTLINED_FUNCTION_249();

          __asm { BRAA            X7, X16 }
        }

        v32 = v167;
        v34 = *(*(v0 + 1184) + 8);
        (v34)(*(v0 + 1200), *(v0 + 1176));

        v36 = OUTLINED_FUNCTION_118_0();
        outlined consume of Data?(v36, v37);
      }

      v38 = *(v0 + 1080);
      *(v0 + 856) = v32;
      v39 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      OUTLINED_FUNCTION_62_3();
      v166 = v34;
      if (!swift_dynamicCast())
      {

        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        OUTLINED_FUNCTION_200(v5, static Logging.answerSynthesis);
        v70 = v32;
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v71, v72))
        {
          OUTLINED_FUNCTION_28_3();
          swift_slowAlloc();
          v73 = OUTLINED_FUNCTION_153_0();
          *v38 = 138412290;
          v74 = v32;
          v75 = _swift_stdlib_bridgeErrorToNSError();
          *(v38 + 4) = v75;
          *v73 = v75;
          OUTLINED_FUNCTION_25_6();
          _os_log_impl(v76, v77, v78, v79, v80, 0xCu);
          outlined destroy of IntentApplication?(v73, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_133();
        (*(v81 + 320))(v32);
        OUTLINED_FUNCTION_133();
        v82 = OUTLINED_FUNCTION_45_0();
        v83(v82);
        v84 = OUTLINED_FUNCTION_32_0();
        v85(v84);
        swift_willThrow();
LABEL_52:
        OUTLINED_FUNCTION_12_4();
        $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

        OUTLINED_FUNCTION_4_7();
        $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

        v154 = OUTLINED_FUNCTION_32_3();
        v166(v154);
        v155 = OUTLINED_FUNCTION_158();
        v166(v155);

        OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_249();

        __asm { BRAA            X1, X16 }
      }

      v1 = *(v0 + 1016);
      v40 = *(v0 + 1008);

      v41 = OUTLINED_FUNCTION_62_3();
      v42(v41);
      GenerativeError.type.getter();
      v43 = (v40 + 88);
      v44 = OUTLINED_FUNCTION_179_0();
      if (v45(v44) == *MEMORY[0x277D0DB78])
      {
        v46 = *(v0 + 944);
        v1 = *(v0 + 936);
        (*(*(v0 + 1008) + 96))(*(v0 + 1016), *(v0 + 1000));
        v47 = OUTLINED_FUNCTION_26_2();
        v48(v47);
        GenerativeError.PromptError.type.getter();
        v49 = (v46 + 88);
        v50 = OUTLINED_FUNCTION_63_0();
        if (v51(v50) == *MEMORY[0x277D0DA90])
        {
          (*(*(v0 + 944) + 96))(*(v0 + 952), *(v0 + 936));
          v52 = OUTLINED_FUNCTION_26_2();
          v53(v52);
          if (one-time initialization token for answerSynthesis != -1)
          {
            OUTLINED_FUNCTION_0_5();
            swift_once();
          }

          v54 = *(v0 + 992);
          v55 = *(v0 + 976);
          v56 = *(v0 + 968);
          v57 = *(v0 + 960);
          __swift_project_value_buffer(v5, static Logging.answerSynthesis);
          v59 = *(v56 + 16);
          v58 = v56 + 16;
          v60 = OUTLINED_FUNCTION_62_3();
          v59(v60);
          (v59)(v55, v54, v57);
          v61 = Logger.logObject.getter();
          static os_log_type_t.error.getter();
          OUTLINED_FUNCTION_77_4();
          os_log_type_enabled(v61, v62);
          OUTLINED_FUNCTION_134_0();
          if (v63)
          {
            v58 = OUTLINED_FUNCTION_90_1();
            *v58 = 134218240;
            GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.tokenCount.getter();
            v64 = OUTLINED_FUNCTION_34_7();
            v65 = v49(v64);
            *(v58 + 4) = v61;
            v66 = OUTLINED_FUNCTION_182_0(v65);
            v67 = OUTLINED_FUNCTION_30_5();
            v49(v67);
            *(v58 + 14) = v66;
            OUTLINED_FUNCTION_170_0(&dword_25D85C000, v68, v69, "Answer synthesis model caught too many tokens error: Token count = %ld, Maximum allowed = %ld.");
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          else
          {
            OUTLINED_FUNCTION_36_6();
            v140 = OUTLINED_FUNCTION_30_5();
            v49(v140);
            v141 = OUTLINED_FUNCTION_26_2();
            v49(v141);
          }

          OUTLINED_FUNCTION_136_1();
          v142 = OUTLINED_FUNCTION_64_0();
          v49(v142);
          v1 = v58 + 8;
          v134 = OUTLINED_FUNCTION_88();
          goto LABEL_48;
        }

        v109 = OUTLINED_FUNCTION_132_1();
        (*(v110 + 8))(v109);
        v111 = OUTLINED_FUNCTION_88();
        v112(v111);
      }

      else
      {
        v86 = OUTLINED_FUNCTION_133_1();
        v87(v86);
      }

      if (one-time initialization token for answerSynthesis == -1)
      {
LABEL_39:
        v113 = *(v0 + 1064);
        v114 = *(v0 + 1056);
        __swift_project_value_buffer(v5, static Logging.answerSynthesis);
        v43 = *(v114 + 16);
        v115 = OUTLINED_FUNCTION_39_5();
        v43(v115);
        v116 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        v117 = OUTLINED_FUNCTION_20_3();
        os_log_type_enabled(v117, v118);
        OUTLINED_FUNCTION_186_0();
        if (v119)
        {
          OUTLINED_FUNCTION_28_3();
          swift_slowAlloc();
          v164 = OUTLINED_FUNCTION_153_0();
          *v113 = 138412290;
          OUTLINED_FUNCTION_5_6();
          lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v120, v121, MEMORY[0x277D0DBC0]);
          OUTLINED_FUNCTION_49_6();
          v122 = swift_allocError();
          v124 = OUTLINED_FUNCTION_129_2(v122, v123);
          v43(v124);
          v125 = _swift_stdlib_bridgeErrorToNSError();
          v126 = OUTLINED_FUNCTION_43_4();
          v127(v126);
          *(v113 + 4) = v125;
          *v164 = v125;
          OUTLINED_FUNCTION_25_6();
          _os_log_impl(v128, v129, v130, v131, v132, 0xCu);
          outlined destroy of IntentApplication?(v164, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v133 = OUTLINED_FUNCTION_19_5();
          MEMORY[0x25F8A1050](v133);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();

LABEL_49:
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
          }

          v143 = *(v0 + 928);
          v144 = *(v0 + 920);
          v162 = *(v0 + 896);
          v165 = *(v0 + 912);
          v160 = *(v0 + 888);
          OUTLINED_FUNCTION_5_6();
          lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v145, v146, MEMORY[0x277D0DBC0]);
          OUTLINED_FUNCTION_49_6();
          v147 = swift_allocError();
          OUTLINED_FUNCTION_188_0(v147, v148);
          v149 = *(v1 + 16);
          OUTLINED_FUNCTION_160_0();
          v149();
          OUTLINED_FUNCTION_92_3();
          (*(v150 + 320))(v43);

          OUTLINED_FUNCTION_133();
          (*(v151 + 208))(v160, v162, v143);
          (*(v144 + 8))(v143, v165);
          OUTLINED_FUNCTION_49_6();
          swift_allocError();
          OUTLINED_FUNCTION_160_0();
          v149();
          swift_willThrow();
          v152 = OUTLINED_FUNCTION_187_0();
          v153(v152);

          goto LABEL_52;
        }

        v134 = OUTLINED_FUNCTION_43_4();
LABEL_48:
        v135(v134);
        goto LABEL_49;
      }

LABEL_58:
      OUTLINED_FUNCTION_0_5();
      swift_once();
      goto LABEL_39;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_56:
  __break(1u);
  goto LABEL_57;
}

uint64_t AnswerSynthesisController.performSynthesisRequest(for:with:answerSynthesisMetrics:clientId:)(uint64_t a1)
{
  v2 = *(v1 + 1384);
  OUTLINED_FUNCTION_12_4();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  OUTLINED_FUNCTION_4_7();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  v3 = OUTLINED_FUNCTION_212();
  v2(v3);
  v4 = OUTLINED_FUNCTION_64_0();
  v2(v4);

  OUTLINED_FUNCTION_106();

  return v5();
}

uint64_t AnswerSynthesisController.answerSynthesisResponseOverride(query:)(uint64_t a1, uint64_t a2)
{
  static SearchOverrides.match(rewrittenQuery:)(a1, a2, &v15);
  v8 = v16;
  if (!v16 || (v9 = v18, v10 = v19, v12 = v20, v11 = v21, v13 = v17, v14 = v15, , outlined consume of SearchOverride?(v14, v8, v13, v9, v10, v12, v11), !v10))
  {
    if (AFIsInternalInstall())
    {
      v2 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
      static NSUserDefaults.answerSynthesisResponseOverride.getter(v2, v3, v4, v5, v6);
    }
  }

  return OUTLINED_FUNCTION_94();
}

uint64_t AnswerSynthesisController.synthesisResultInvalid(_:query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  OUTLINED_FUNCTION_133();
  if (((*(v6 + 80))(8) & 1) == 0)
  {
    goto LABEL_4;
  }

  AnswerSynthesisController.answerSynthesisResponseOverride(query:)(a2, a3);
  if (v7)
  {

LABEL_4:
    v8 = 0;
    return v8 & 1;
  }

  v8 = v5 ^ 1;
  if (v5 == 2)
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t AnswerSynthesisController.convertSynthesisResultToSearchResultAnswers(request:synthesisResult:searchResults:answerSynthesisMetrics:clientId:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 456) = a6;
  *(v8 + 464) = a7;
  *(v8 + 440) = a4;
  *(v8 + 448) = a5;
  *(v8 + 424) = a1;
  *(v8 + 432) = a2;
  v9 = *a2;
  v10 = a2[1];
  *(v8 + 472) = v7;
  *(v8 + 480) = v9;
  *(v8 + 488) = v10;
  *(v8 + 496) = *a3;
  *(v8 + 512) = *(a3 + 16);
  *(v8 + 395) = *(a3 + 24);
  v11 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v11);
}

uint64_t AnswerSynthesisController.convertSynthesisResultToSearchResultAnswers(request:synthesisResult:searchResults:answerSynthesisMetrics:clientId:)()
{
  OUTLINED_FUNCTION_72();
  v17 = v0;
  v1 = *(v0 + 395);
  v2 = *(v0 + 512);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  v14 = *(v0 + 496);
  v15 = v2;
  v16 = v1;
  if (AnswerSynthesisController.synthesisResultInvalid(_:query:)(&v14, v3, v4))
  {
    AnswerSynthesisController.contentSearchFallback(with:reason:)(*(v0 + 448), 0xD00000000000001ELL, 0x800000025DBF02D0);
    OUTLINED_FUNCTION_106();

    return v5();
  }

  else
  {
    v7 = *(v0 + 395);
    v8 = *(v0 + 512);
    v10 = *(v0 + 480);
    v9 = *(v0 + 488);
    v11 = *(v0 + 432);
    *(v0 + 368) = *(v0 + 496);
    *(v0 + 384) = v8;
    *(v0 + 392) = v7;
    *(v0 + 16) = v10;
    *(v0 + 24) = v9;
    memcpy((v0 + 32), (v11 + 16), 0x60uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 520) = v12;
    *v12 = v13;
    v12[1] = AnswerSynthesisController.convertSynthesisResultToSearchResultAnswers(request:synthesisResult:searchResults:answerSynthesisMetrics:clientId:);

    return AnswerSynthesisController.createPQAVerificationRequest(answerSynthesisResult:answerSynthesisRequest:referenceSearchResults:)();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 528) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_78();
  memcpy(v0 + 26, v0 + 16, 0x50uLL);
  memcpy(v0 + 36, v0 + 16, 0x50uLL);
  OUTLINED_FUNCTION_92_3();
  v8 = (*(v1 + 440) + **(v1 + 440));
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v0[67] = v2;
  *v2 = v3;
  v2[1] = AnswerSynthesisController.convertSynthesisResultToSearchResultAnswers(request:synthesisResult:searchResults:answerSynthesisMetrics:clientId:);
  v4 = v0[58];
  v5 = v0[56];
  v6 = v0[57];

  return v8(v0 + 36, v5, v6, v4);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v5 + 544) = v0;

  if (!v0)
  {
    *(v5 + 396) = v3 & 1;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_75();
  if (*(v0 + 396))
  {
    outlined destroy of PQAVerificationRequest(v0 + 208);
    v2 = 7;
    goto LABEL_13;
  }

  v3 = *(v0 + 280);

  outlined destroy of PQAVerificationRequest(v0 + 208);
  v4 = *(v3 + 16);
  if (v4 == 1)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v6, static Logging.answerSynthesis);
    v7 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v8 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_51_5();
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_157_0(v10);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      v16 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v16);
    }

    if (!*(v3 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v17 = *(v0 + 424);
    v18 = type metadata accessor for SearchResult(0);
    OUTLINED_FUNCTION_114(v18);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_2_4();
    _s10OmniSearch0B6ResultVWOcTm_1(v3 + v19, v17);

    type metadata accessor for AnswerSynthesisResult(0);
    swift_storeEnumTagMultiPayload();
LABEL_22:
    OUTLINED_FUNCTION_106();
    goto LABEL_25;
  }

  if (!v4)
  {
    v5 = *(v0 + 448);

    AnswerSynthesisController.contentSearchFallback(with:reason:)(v5, 0xD00000000000002DLL, 0x800000025DBF02A0);
    goto LABEL_22;
  }

  v2 = 8;
LABEL_13:
  lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
  OUTLINED_FUNCTION_49_6();
  v20 = swift_allocError();
  *v21 = v2;
  swift_willThrow();
  *(v0 + 416) = v20;
  v22 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    OUTLINED_FUNCTION_189_0();
    if (!v23)
    {
      OUTLINED_FUNCTION_94_2();
      *(v0 + 400) = v38;
      *(v0 + 408) = v39;
      OUTLINED_FUNCTION_98_2();
      OUTLINED_FUNCTION_217();
      *(v0 + 394) = v1;
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_169_0();

LABEL_21:

      goto LABEL_22;
    }

    if (v1 == 5)
    {
      if (one-time initialization token for answerSynthesis == -1)
      {
LABEL_18:
        v24 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v24, static Logging.answerSynthesis);
        v25 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        v26 = OUTLINED_FUNCTION_20_3();
        if (os_log_type_enabled(v26, v27))
        {
          OUTLINED_FUNCTION_51_5();
          v28 = swift_slowAlloc();
          OUTLINED_FUNCTION_81_4(v28);
          OUTLINED_FUNCTION_25_6();
          _os_log_impl(v29, v30, v31, v32, v33, 2u);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        type metadata accessor for AnswerSynthesisResult(0);
        OUTLINED_FUNCTION_124_2();
        swift_storeEnumTagMultiPayload();
        goto LABEL_21;
      }

LABEL_29:
      OUTLINED_FUNCTION_0_5();
      swift_once();
      goto LABEL_18;
    }

    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v35 = swift_allocError();
    OUTLINED_FUNCTION_220(v35, v36);
  }

  OUTLINED_FUNCTION_127();
LABEL_25:

  return v34();
}

{
  OUTLINED_FUNCTION_75();
  v2 = *(v0 + 528);
  *(v0 + 416) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    OUTLINED_FUNCTION_189_0();
    if (!v4)
    {
      OUTLINED_FUNCTION_94_2();
      *(v0 + 400) = v19;
      *(v0 + 408) = v20;
      OUTLINED_FUNCTION_98_2();
      OUTLINED_FUNCTION_217();
      *(v0 + 394) = v1;
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_169_0();

LABEL_10:

      OUTLINED_FUNCTION_106();
      goto LABEL_13;
    }

    if (v1 == 5)
    {
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v5, static Logging.answerSynthesis);
      v6 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v7 = OUTLINED_FUNCTION_20_3();
      if (os_log_type_enabled(v7, v8))
      {
        OUTLINED_FUNCTION_51_5();
        v9 = swift_slowAlloc();
        OUTLINED_FUNCTION_81_4(v9);
        OUTLINED_FUNCTION_25_6();
        _os_log_impl(v10, v11, v12, v13, v14, 2u);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      type metadata accessor for AnswerSynthesisResult(0);
      OUTLINED_FUNCTION_124_2();
      swift_storeEnumTagMultiPayload();
      goto LABEL_10;
    }

    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_220(v16, v17);
  }

  OUTLINED_FUNCTION_127();
LABEL_13:

  return v15();
}

{
  OUTLINED_FUNCTION_75();
  outlined destroy of PQAVerificationRequest(v0 + 208);
  v2 = *(v0 + 544);
  *(v0 + 416) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    OUTLINED_FUNCTION_189_0();
    if (!v4)
    {
      OUTLINED_FUNCTION_94_2();
      *(v0 + 400) = v19;
      *(v0 + 408) = v20;
      OUTLINED_FUNCTION_98_2();
      OUTLINED_FUNCTION_217();
      *(v0 + 394) = v1;
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_169_0();

LABEL_10:

      OUTLINED_FUNCTION_106();
      goto LABEL_13;
    }

    if (v1 == 5)
    {
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v5, static Logging.answerSynthesis);
      v6 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v7 = OUTLINED_FUNCTION_20_3();
      if (os_log_type_enabled(v7, v8))
      {
        OUTLINED_FUNCTION_51_5();
        v9 = swift_slowAlloc();
        OUTLINED_FUNCTION_81_4(v9);
        OUTLINED_FUNCTION_25_6();
        _os_log_impl(v10, v11, v12, v13, v14, 2u);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      type metadata accessor for AnswerSynthesisResult(0);
      OUTLINED_FUNCTION_124_2();
      swift_storeEnumTagMultiPayload();
      goto LABEL_10;
    }

    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_220(v16, v17);
  }

  OUTLINED_FUNCTION_127();
LABEL_13:

  return v15();
}

uint64_t AnswerSynthesisController.createPQAVerificationRequest(answerSynthesisResult:answerSynthesisRequest:referenceSearchResults:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_135_1();
  *(v2 + 288) = v4;
  v5 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_21(v5);
  *(v2 + 296) = v6;
  *(v2 + 304) = OUTLINED_FUNCTION_199();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
  *(v2 + 312) = v7;
  OUTLINED_FUNCTION_21(v7);
  *(v2 + 320) = v8;
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *(v3 + 2);
  v11 = *(v3 + 24);
  v12 = *v1;
  v13 = v1[1];
  *(v2 + 344) = v9;
  *(v2 + 352) = v12;
  v14 = *(v1 + 2);
  *(v2 + 32) = *(v1 + 1);
  *(v2 + 48) = v14;
  *(v2 + 64) = *(v1 + 3);
  v15 = v1[8];
  v16 = v1[9];
  *(v2 + 360) = v13;
  *(v2 + 368) = v16;
  *(v2 + 112) = *(v1 + 6);
  v17 = *v3;
  v18 = v1[10];
  v19 = v1[11];
  *(v2 + 376) = v18;
  *(v2 + 384) = v19;
  *(v2 + 256) = v17;
  *(v2 + 272) = v10;
  *(v2 + 280) = v11;
  *(v2 + 16) = v12;
  *(v2 + 24) = v13;
  *(v2 + 80) = v15;
  *(v2 + 88) = v16;
  *(v2 + 96) = v18;
  *(v2 + 104) = v19;
  v23 = (*(*v0 + 448) + **(*v0 + 448));
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v2 + 392) = v20;
  *v20 = v21;
  v20[1] = AnswerSynthesisController.createPQAVerificationRequest(answerSynthesisResult:answerSynthesisRequest:referenceSearchResults:);
  OUTLINED_FUNCTION_117_2();

  return v23();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 400) = v4;
  *(v2 + 408) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v5);
}

{
  OUTLINED_FUNCTION_78();

  OUTLINED_FUNCTION_127();

  return v0();
}

void AnswerSynthesisController.createPQAVerificationRequest(answerSynthesisResult:answerSynthesisRequest:referenceSearchResults:)()
{
  v1 = v0[50];
  v2 = *(v1 + 16);
  if (v2)
  {
    v131 = v0[41];
    v132 = v0[42];
    v3 = v0[40];
    v130 = v0[39];
    v138 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v138;
    OUTLINED_FUNCTION_79();
    v6 = v1 + v5;
    v128 = v0;
    v129 = *(v3 + 72);
    v125 = v1 + v5;
    v126 = v2;
    do
    {
      v8 = v0[42];
      v7 = v0[43];
      v9 = v0[41];
      outlined init with copy of ToolDatabaseProtocol?(v6, v7, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
      v10 = OUTLINED_FUNCTION_70_2();
      outlined init with copy of ToolDatabaseProtocol?(v10, v11, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
      v12 = v132[1];
      v13 = v132[2];
      v14 = v132[4];
      isa = v132[5];
      log = v132[3];
      v136 = *v8;
      *v9 = *v8;
      v131[1] = v12;
      v131[2] = v13;
      v131[3] = log;
      v131[4] = v14;
      v131[5] = isa;
      OUTLINED_FUNCTION_1_7();
      outlined init with take of ResultsDialog(v8 + v16, v9 + v16);

      outlined destroy of IntentApplication?(v9, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
      outlined destroy of IntentApplication?(v7, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
      v18 = v138[2];
      v17 = v138[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v17);
        OUTLINED_FUNCTION_235();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v22, v23);
      }

      v138[2] = v19;
      v20 = &v138[6 * v18];
      v20[4] = v136;
      v20[5] = v12;
      v20[6] = v13;
      v20[7] = log;
      v20[8] = v14;
      v20[9] = isa;
      v0 = v128;
      v6 += v129;
      --v2;
    }

    while (v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch26AnswerSynthesisModelResultV0F8ResponseVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch26AnswerSynthesisModelResultV0F8ResponseVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBC8180;
    if (!v138[2])
    {
      goto LABEL_99;
    }

    v2 = inited;
    v25 = v138[5];
    v27 = v138[6];
    v26 = v138[7];
    v29 = v138[8];
    v28 = v138[9];
    *(v2 + 32) = v138[4];
    *(v2 + 40) = v25;
    *(v2 + 48) = v27;
    *(v2 + 56) = v26;
    *(v2 + 64) = v29;
    *(v2 + 72) = v28;

    v30 = 0;
    v13 = MEMORY[0x277D84F90];
    v4 = v2;
    while (1)
    {
      v31 = &loc_25DBC7000;
      if (v30)
      {
        goto LABEL_26;
      }

      v14 = v13;
      isa = v4[4];
      v2 = v4[5];
      v12 = v4[6];
      v19 = v4[7];
      v6 = v4[8];
      v13 = v4[9];
      if (!v6)
      {
        break;
      }

      v32 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v32 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {
        break;
      }

      v13 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37);
        v13 = v38;
      }

      v0 = v128;
      v33 = *(v13 + 16);
      OUTLINED_FUNCTION_226();
      if (v35)
      {
        v39 = OUTLINED_FUNCTION_22_5(v34);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39);
        v13 = v40;
      }

      *(v13 + 16) = 0x25DBC7000;
      v36 = v13 + 16 * v33;
      *(v36 + 32) = v19;
      *(v36 + 40) = v6;
      v30 = 1;
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      goto LABEL_100;
    }

    while (1)
    {
      v41 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v41, static Logging.answerSynthesis);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        OUTLINED_FUNCTION_28_3();
        logb = v42;
        v44 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v139 = swift_slowAlloc();
        *v44 = 136642819;
        v123 = v43;
        v0 = v128;
        v128[26] = isa;
        v128[27] = v2;
        v128[28] = v12;
        v128[29] = v19;
        v128[30] = v6;
        v128[31] = v13;

        String.init<A>(describing:)();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v44 + 4) = v45;
        _os_log_impl(&dword_25D85C000, logb, v123, "No dialog from AS model response %{sensitive}s", v44, 0xCu);
        v2 = v139;
        __swift_destroy_boxed_opaque_existential_1Tm(v139);
        v46 = OUTLINED_FUNCTION_19_5();
        MEMORY[0x25F8A1050](v46);
        v31 = &loc_25DBC7000;
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();

        v13 = v14;
      }

      else
      {

        v0 = v128;
        v13 = v14;
        v31 = &loc_25DBC7000;
      }

LABEL_26:

      if (!*(v13 + 16))
      {
        break;
      }

      v51 = v31;
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v52, static Logging.answerSynthesis);

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v53, v54))
      {
        OUTLINED_FUNCTION_28_3();
        v55 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v6 = swift_slowAlloc();
        *v55 = v51[200];
        MEMORY[0x25F89F8A0](v13, MEMORY[0x277D837D0]);
        v2 = v56;
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v55 + 4) = v57;
        OUTLINED_FUNCTION_184_0(&dword_25D85C000, v53, v54, "%{sensitive}s");
        OUTLINED_FUNCTION_139_1();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      v58 = 0;
      v12 = MEMORY[0x277D84F90];
      v19 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v58)
        {
          goto LABEL_51;
        }

        v59 = v4[8];
        if (v59 && ((v59 & 0x2000000000000000) != 0 ? (v60 = HIBYTE(v59) & 0xF) : (v60 = v4[7] & 0xFFFFFFFFFFFFLL), v60))
        {
          isa = v4[6];
        }

        else
        {
          isa = v12;
        }

        v14 = *(isa + 2);
        v2 = *(v19 + 16);
        v6 = v2 + v14;
        if (__OFADD__(v2, v14))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v6 > *(v19 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native);
          v19 = v62;
        }

        if (*(isa + 2))
        {
          if ((*(v19 + 24) >> 1) - *(v19 + 16) < v14)
          {
            goto LABEL_95;
          }

          OUTLINED_FUNCTION_224();
          swift_arrayInitWithCopy();

          v58 = 1;
          if (v14)
          {
            v63 = *(v19 + 16);
            v64 = __OFADD__(v63, v14);
            v65 = v63 + v14;
            if (v64)
            {
              goto LABEL_96;
            }

            *(v19 + 16) = v65;
            v58 = 1;
          }
        }

        else
        {

          v58 = 1;
          if (v14)
          {
            __break(1u);
LABEL_51:
            v124 = v13;
            v66 = v0[46];
            swift_setDeallocating();
            specialized _ContiguousArrayStorage.__deallocating_deinit();
            v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v19);
            v13 = 0;
            isa = v66[2].isa;
            loga = v66 + 4;
            v137 = v66;
            v14 = v19 + 56;
            v4 = MEMORY[0x277D84F90];
LABEL_52:
            while (2)
            {
              if (v13 == isa)
              {

                v140 = MEMORY[0x277D84F90];

                v86 = v126;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126, 0);
                v87 = v125;
                do
                {
                  v127 = v86;
                  v89 = v128[42];
                  v88 = v128[43];
                  v90 = v128[41];
                  v91 = v128[38];
                  outlined init with copy of ToolDatabaseProtocol?(v87, v88, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
                  outlined init with copy of ToolDatabaseProtocol?(v88, v89, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
                  v92 = v132[5];
                  v93 = *(v130 + 48);
                  v94 = *(v132 + 3);
                  v95 = *(v132 + 1);
                  *v90 = *v89;
                  *(v131 + 1) = v95;
                  *(v131 + 3) = v94;
                  v131[5] = v92;
                  OUTLINED_FUNCTION_1_7();
                  outlined init with take of ResultsDialog(v89 + v93, v90 + v93);
                  OUTLINED_FUNCTION_2_4();
                  _s10OmniSearch0B6ResultVWOcTm_1(v90 + v93, v91);
                  OUTLINED_FUNCTION_158_0();
                  outlined destroy of IntentApplication?(v96, v97, v98);
                  OUTLINED_FUNCTION_158_0();
                  outlined destroy of IntentApplication?(v99, v100, v101);
                  v103 = *(v140 + 16);
                  v102 = *(v140 + 24);
                  if (v103 >= v102 >> 1)
                  {
                    v106 = OUTLINED_FUNCTION_26_3(v102);
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v106, v103 + 1, 1);
                  }

                  *(v140 + 16) = v103 + 1;
                  OUTLINED_FUNCTION_42_5();
                  OUTLINED_FUNCTION_1_7();
                  outlined init with take of ResultsDialog(v104, v105);
                  v87 += v129;
                  v86 = v127 - 1;
                }

                while (v127 != 1);
                v108 = v128[47];
                v107 = v128[48];
                v110 = v128[44];
                v109 = v128[45];
                v111 = v128[36];

                *v111 = v110;
                *(v111 + 8) = v109;
                *(v111 + 16) = 0;
                *(v111 + 24) = 0xE000000000000000;
                *(v111 + 32) = v124;
                *(v111 + 40) = v4;
                *(v111 + 48) = v108;
                *(v111 + 56) = v107;
                *(v111 + 64) = 0;
                *(v111 + 72) = v140;

                OUTLINED_FUNCTION_106();
LABEL_90:
                OUTLINED_FUNCTION_249();

                __asm { BRAA            X1, X16 }
              }

              if (v13 >= v137[2].isa)
              {
                goto LABEL_94;
              }

              v67 = 0;
              v6 = loga[v13++].isa;
              v68 = 1 << *(v6 + 32);
              v69 = (v68 + 63) >> 6;
              v70 = 64;
              if (!v69)
              {
                goto LABEL_59;
              }

              while (1)
              {
                v71 = *(v6 + v70);
                if (v71)
                {
                  break;
                }

                v70 += 8;
                v67 -= 64;
                if (!--v69)
                {
                  goto LABEL_59;
                }
              }

              v72 = __clz(__rbit64(v71));
              if (v72 - v68 != v67)
              {
                if (-v67 < 0)
                {
                  goto LABEL_97;
                }

                v73 = v72 - v67;
                if (v73 >= v68)
                {
                  goto LABEL_97;
                }

                if (((*(v6 + v70) >> v72) & 1) == 0)
                {
                  goto LABEL_98;
                }

                v74 = (*(v6 + 48) + 16 * v73);
                v12 = *v74;
                v2 = v74[1];
              }

              else
              {
LABEL_59:
                v12 = 0;
                v2 = 0xE000000000000000;
              }

              if (*(v19 + 16))
              {
                Hasher.init(_seed:)();

                String.hash(into:)();
                v75 = Hasher._finalize()();
                v76 = ~(-1 << *(v19 + 32));
                while (1)
                {
                  v77 = v75 & v76;
                  if (((*(v14 + (((v75 & v76) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v75 & v76)) & 1) == 0)
                  {
                    break;
                  }

                  v78 = (*(v19 + 48) + 16 * v77);
                  if (*v78 != v12 || v78[1] != v2)
                  {
                    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v75 = v77 + 1;
                    if ((v80 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v81 = OUTLINED_FUNCTION_74_4();
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v81, v82, v83);
                  }

                  v2 = v4[2];
                  v84 = v4[3];
                  if (v2 >= v84 >> 1)
                  {
                    v85 = OUTLINED_FUNCTION_26_3(v84);
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v85, v2 + 1, 1);
                  }

                  v4[2] = v2 + 1;
                  v4[v2 + 4] = v6;
                  goto LABEL_52;
                }
              }

              else
              {
                v6 = v2;
              }

              continue;
            }
          }
        }
      }

      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v112, static Logging.answerSynthesis);
    v48 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v113 = OUTLINED_FUNCTION_20_3();
    if (!os_log_type_enabled(v113, v114))
    {
LABEL_89:

      lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
      OUTLINED_FUNCTION_49_6();
      swift_allocError();
      OUTLINED_FUNCTION_261(v120, 6);

      OUTLINED_FUNCTION_127();
      goto LABEL_90;
    }
  }

  else
  {

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v47, static Logging.answerSynthesis);
    v48 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v49 = OUTLINED_FUNCTION_20_3();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_89;
    }
  }

  OUTLINED_FUNCTION_51_5();
  v115 = swift_slowAlloc();
  *v115 = 0;
  OUTLINED_FUNCTION_109_2();
  _os_log_impl(v116, v117, v118, v119, v115, 2u);
  OUTLINED_FUNCTION_90();
  MEMORY[0x25F8A1050]();
  goto LABEL_89;
}

uint64_t AnswerSynthesisController.contentSearchFallback(with:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v3, static Logging.answerSynthesis);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_28_3();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    swift_slowAlloc();
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_130_2();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_139_1();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.contentSearchFallback.setter();
  type metadata accessor for AnswerSynthesisResult(0);
  OUTLINED_FUNCTION_124_2();

  return swift_storeEnumTagMultiPayload();
}

uint64_t AnswerSynthesisController.performPQAVerification(for:answerSynthesisMetrics:clientId:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  *(v1 + 288) = v4;
  *(v1 + 296) = v0;
  *(v1 + 272) = v5;
  *(v1 + 280) = v6;
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  *(v1 + 304) = v7;
  OUTLINED_FUNCTION_21(v7);
  *(v1 + 312) = v8;
  *(v1 + 320) = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for GenerativeError.PromptError.ErrorType();
  *(v1 + 328) = v9;
  OUTLINED_FUNCTION_21(v9);
  *(v1 + 336) = v10;
  *(v1 + 344) = OUTLINED_FUNCTION_199();
  v11 = type metadata accessor for GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo();
  *(v1 + 352) = v11;
  OUTLINED_FUNCTION_21(v11);
  *(v1 + 360) = v12;
  *(v1 + 368) = OUTLINED_FUNCTION_160();
  *(v1 + 376) = swift_task_alloc();
  *(v1 + 384) = swift_task_alloc();
  v13 = type metadata accessor for GenerativeError.ErrorType();
  *(v1 + 392) = v13;
  OUTLINED_FUNCTION_21(v13);
  *(v1 + 400) = v14;
  *(v1 + 408) = OUTLINED_FUNCTION_199();
  v15 = type metadata accessor for GenerativeError.PromptError();
  *(v1 + 416) = v15;
  OUTLINED_FUNCTION_21(v15);
  *(v1 + 424) = v16;
  *(v1 + 432) = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for GenerativeError();
  *(v1 + 440) = v17;
  OUTLINED_FUNCTION_21(v17);
  *(v1 + 448) = v18;
  *(v1 + 456) = OUTLINED_FUNCTION_160();
  *(v1 + 464) = swift_task_alloc();
  *(v1 + 472) = swift_task_alloc();
  v19 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource();
  *(v1 + 480) = v19;
  OUTLINED_FUNCTION_21(v19);
  *(v1 + 488) = v20;
  *(v1 + 496) = OUTLINED_FUNCTION_199();
  v21 = type metadata accessor for Date();
  *(v1 + 504) = v21;
  OUTLINED_FUNCTION_21(v21);
  *(v1 + 512) = v22;
  *(v1 + 520) = OUTLINED_FUNCTION_199();
  v23 = *(v3 + 8);
  *(v1 + 528) = *v3;
  *(v1 + 536) = v23;
  v24 = *(v3 + 32);
  *(v1 + 96) = *(v3 + 16);
  *(v1 + 112) = v24;
  v25 = *(v3 + 64);
  *(v1 + 128) = *(v3 + 48);
  *(v1 + 144) = v25;
  v26 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v26);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v5 + 560) = v0;

  if (!v0)
  {
    *(v5 + 568) = v3 & 1;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  v1 = *(v0 + 520);
  OUTLINED_FUNCTION_133();
  (*(v2 + 312))(v1);
  OUTLINED_FUNCTION_92_3();
  v3 = OUTLINED_FUNCTION_30_5();
  v4(v3);
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  v9 = *(v0 + 568);
  OUTLINED_FUNCTION_120_2();

  OUTLINED_FUNCTION_62();

  return v7(v9);
}

uint64_t AnswerSynthesisController.performPQAVerification(for:answerSynthesisMetrics:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_133();
  v18 = (*(v17 + 232))();
  if (v18 == 2)
  {
    OUTLINED_FUNCTION_162_0();
    if (!v19)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v20, static Logging.answerSynthesis);
    v21 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v22 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_51_5();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v24);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v30 = swift_allocError();
    *v31 = 0;
    v222 = v30;
    swift_willThrow();
LABEL_7:
    OUTLINED_FUNCTION_35_7();
    a10 = v33;
    v220 = v32;

    OUTLINED_FUNCTION_62();
LABEL_17:
    OUTLINED_FUNCTION_115();

    return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, v220, v222, a13, a14, a15, a16);
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

  AnswerSynthesisController.answerSynthesisResponseOverride(query:)(*(v16 + 528), *(v16 + 536));
  if (v34)
  {

LABEL_11:
    OUTLINED_FUNCTION_162_0();
    if (!v19)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v35, static Logging.answerSynthesis);
    v36 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v37 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_51_5();
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v39);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

LABEL_16:
    OUTLINED_FUNCTION_35_7();
    v220 = v46;
    v222 = v45;

    OUTLINED_FUNCTION_62();
    goto LABEL_17;
  }

  v56 = *(v16 + 296);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  outlined init with copy of ToolDatabaseProtocol?(v56 + 56, v16 + 200, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
  if (!*(v16 + 224))
  {
    outlined destroy of IntentApplication?(v16 + 200, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
    OUTLINED_FUNCTION_162_0();
    if (!v19)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v221 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v221, static Logging.answerSynthesis);
    v90 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v91 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v91, v92))
    {
      OUTLINED_FUNCTION_51_5();
      v93 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v93);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v94, v95, v96, v97, v98, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v99 = lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v100 = swift_allocError();
    OUTLINED_FUNCTION_225(v100, v101);
    swift_willThrow();
    *(v16 + 264) = v100;
    v102 = v100;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v222 = v99;
    a9 = v16;
    if ((OUTLINED_FUNCTION_221(v103) & 1) == 0)
    {

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
      }

      v143 = *(v16 + 312);
      v144 = *(v16 + 320);
      v145 = *(v16 + 304);
      v146 = static MetricsLogger.shared;
      OUTLINED_FUNCTION_49_6();
      v147 = swift_allocError();
      OUTLINED_FUNCTION_247();
      *v148 = v149;
      (*(*v146 + 320))();

      OUTLINED_FUNCTION_92_3();
      v150 = OUTLINED_FUNCTION_118_0();
      v151(v150);
      (*(v143 + 8))(v144, v145);
      OUTLINED_FUNCTION_162_0();
      if (!v19)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      OUTLINED_FUNCTION_200(v221, static Logging.answerSynthesis);
      v152 = v100;
      v153 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_259())
      {
        OUTLINED_FUNCTION_28_3();
        v154 = swift_slowAlloc();
        v155 = OUTLINED_FUNCTION_173_0();
        *v154 = 138412290;
        v156 = v100;
        v157 = _swift_stdlib_bridgeErrorToNSError();
        *(v154 + 4) = v157;
        *v155 = v157;
        OUTLINED_FUNCTION_109_2();
        _os_log_impl(v158, v159, v160, v161, v154, 0xCu);
        outlined destroy of IntentApplication?(v155, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v162 = OUTLINED_FUNCTION_19_5();
        MEMORY[0x25F8A1050](v162);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      OUTLINED_FUNCTION_49_6();
      v163 = swift_allocError();
      OUTLINED_FUNCTION_118_1(v163, v164);

      goto LABEL_7;
    }

    v104 = OUTLINED_FUNCTION_26_2();
    v105(v104);
    GenerativeError.type.getter();
    v106 = OUTLINED_FUNCTION_179_0();
    if (v107(v106) == *MEMORY[0x277D0DB78])
    {
      (*(*(v16 + 400) + 96))(*(v16 + 408), *(v16 + 392));
      v108 = OUTLINED_FUNCTION_88();
      v109(v108);
      GenerativeError.PromptError.type.getter();
      v110 = OUTLINED_FUNCTION_63_0();
      v112 = v16;
      if (v111(v110) == *MEMORY[0x277D0DA90])
      {
        (*(*(v16 + 336) + 96))(*(v16 + 344), *(v16 + 328));
        v113 = OUTLINED_FUNCTION_107();
        v114(v113);
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
        }

        v115 = *(v16 + 464);
        v117 = v112[55];
        v116 = v112[56];
        v119 = v112[39];
        v118 = v112[40];
        v224 = v112[38];
        v120 = v112[35];
        a10 = v112[36];
        OUTLINED_FUNCTION_5_6();
        lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v121, v122, MEMORY[0x277D0DBC0]);
        OUTLINED_FUNCTION_49_6();
        v123 = swift_allocError();
        (*(v116 + 16))(v124, v115, v117);
        OUTLINED_FUNCTION_92_3();
        (*(v125 + 320))(v123);

        OUTLINED_FUNCTION_92_3();
        (*(v126 + 272))(v120, a10, v118);
        (*(v119 + 8))(v118, v224);
        OUTLINED_FUNCTION_162_0();
        if (!v19)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v128 = v112[47];
        v127 = v112[48];
        v129 = v112[45];
        v130 = v112[44];
        __swift_project_value_buffer(v221, static Logging.answerSynthesis);
        v131 = *(v129 + 16);
        v131(v128, v127, v130);
        v132 = OUTLINED_FUNCTION_59_3();
        (v131)(v132);
        v133 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_77_4();
        v135 = os_log_type_enabled(v133, v134);
        v136 = v112[45];
        if (v135)
        {
          v137 = OUTLINED_FUNCTION_90_1();
          *v137 = 134218240;
          v138 = GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.tokenCount.getter();
          v139 = *(v136 + 8);
          v140 = OUTLINED_FUNCTION_26_2();
          v139(v140);
          *(v137 + 4) = v138;
          *(v137 + 12) = 2048;
          v141 = GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.tokenCountMaximum.getter();
          v142 = OUTLINED_FUNCTION_30_5();
          v225 = v139;
          v139(v142);
          *(v137 + 14) = v141;
          _os_log_impl(&dword_25D85C000, v133, v130, "PQA verification caught too many tokens error: Token count = %ld, Maximum allowed = %ld. Treat this error as non-fatal. Returning the only answer.", v137, 0x16u);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {
          v212 = *(v136 + 8);
          v213 = OUTLINED_FUNCTION_30_5();
          v212(v213);
          v214 = OUTLINED_FUNCTION_26_2();
          v225 = v212;
          v212(v214);
        }

        v215 = OUTLINED_FUNCTION_63_0();
        v225(v215);
        v216 = OUTLINED_FUNCTION_54_0();
        v217(v216);
        v218 = OUTLINED_FUNCTION_242();
        v219(v218);

        goto LABEL_16;
      }

      v166 = *(v16 + 424);
      v165 = *(v16 + 432);
      v167 = *(v16 + 416);
      v168 = *(v16 + 336);
      v169 = *(v16 + 344);
      v170 = *(v16 + 328);
      (*(v166 + 8))(v165, v167);
      (*(v168 + 8))(v169, v170);
    }

    else
    {
      (*(*(v16 + 400) + 8))(*(v16 + 408), *(v16 + 392));
      v112 = v16;
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
    }

    v171 = v112[39];
    v172 = v112[40];
    v173 = v112[38];
    v174 = static MetricsLogger.shared;
    OUTLINED_FUNCTION_49_6();
    v175 = swift_allocError();
    OUTLINED_FUNCTION_247();
    *v176 = v177;
    (*(*v174 + 320))();

    OUTLINED_FUNCTION_92_3();
    v178 = OUTLINED_FUNCTION_45_0();
    v179(v178);
    (*(v171 + 8))(v172, v173);
    OUTLINED_FUNCTION_162_0();
    if (!v19)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v181 = v112[57];
    v180 = v112[58];
    v182 = v112;
    v183 = v112[55];
    v184 = v112[56];
    v185 = __swift_project_value_buffer(v221, static Logging.answerSynthesis);
    v188 = *(v184 + 16);
    v187 = (v184 + 16);
    v186 = v188;
    v188(v181, v180, v183);
    v189 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v190 = OUTLINED_FUNCTION_20_3();
    v192 = os_log_type_enabled(v190, v191);
    v193 = v182[57];
    v194 = v182[55];
    if (v192)
    {
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      v195 = OUTLINED_FUNCTION_152_0();
      *v185 = 138412290;
      OUTLINED_FUNCTION_5_6();
      lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v196, v197, MEMORY[0x277D0DBC0]);
      OUTLINED_FUNCTION_49_6();
      swift_allocError();
      v186(v198, v193, v194);
      v199 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_36_6();
      v200 = OUTLINED_FUNCTION_63_0();
      v187(v200);
      *(v185 + 4) = v199;
      *v195 = v199;
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v201, v202, v203, v204, v205, 0xCu);
      outlined destroy of IntentApplication?(v195, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v206 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v206);
    }

    else
    {

      OUTLINED_FUNCTION_36_6();
      v207 = OUTLINED_FUNCTION_63_0();
      v187(v207);
    }

    v208 = *(a9 + 464);
    v209 = *(a9 + 440);
    OUTLINED_FUNCTION_49_6();
    v210 = swift_allocError();
    OUTLINED_FUNCTION_118_1(v210, v211);
    (v187)(v208, v209);

    goto LABEL_7;
  }

  outlined init with take of ResponseOverrideMatcherProtocol((v16 + 200), v16 + 160);
  OUTLINED_FUNCTION_162_0();
  if (!v19)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v57, static Logging.answerSynthesis);
  v58 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v59 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v59, v60))
  {
    OUTLINED_FUNCTION_51_5();
    v61 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v61);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v62, v63, v64, v65, v66, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  Date.init()();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  v67 = *(v16 + 536);
  v68 = *(v16 + 528);
  v70 = *(v16 + 488);
  v69 = *(v16 + 496);
  v71 = *(v16 + 480);
  v73 = *(v16 + 280);
  v72 = *(v16 + 288);
  v74 = static MetricsLogger.shared;
  *(v16 + 544) = static MetricsLogger.shared;
  (*(v70 + 104))(v69, *MEMORY[0x277D1FC68], v71);
  (*(*v74 + 256))(v73, v72, v69);
  v75 = OUTLINED_FUNCTION_32_0();
  v76(v75);
  v77 = *(v16 + 192);
  OUTLINED_FUNCTION_218((v16 + 160), *(v16 + 184));
  *(v16 + 16) = v68;
  *(v16 + 24) = v67;
  v78 = *(v16 + 112);
  *(v16 + 32) = *(v16 + 96);
  *(v16 + 48) = v78;
  v79 = *(v16 + 144);
  *(v16 + 64) = *(v16 + 128);
  *(v16 + 80) = v79;
  v223 = *(v77 + 16) + **(v77 + 16);
  v80 = swift_task_alloc();
  *(v16 + 552) = v80;
  *v80 = v16;
  v80[1] = AnswerSynthesisController.performPQAVerification(for:answerSynthesisMetrics:clientId:);
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_115();

  return v87(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, v77 + 16, v223, a13, a14, a15, a16);
}

uint64_t AnswerSynthesisController.performPQAVerification(for:answerSynthesisMetrics:clientId:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  (*(*(v24 + 512) + 8))(*(v24 + 520), *(v24 + 504));
  __swift_destroy_boxed_opaque_existential_1Tm((v24 + 160));
  v25 = *(v24 + 560);
  *(v24 + 264) = v25;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!OUTLINED_FUNCTION_221(v27))
  {

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
    }

    v61 = static MetricsLogger.shared;
    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v62 = swift_allocError();
    OUTLINED_FUNCTION_247();
    *v63 = v64;
    (*(*v61 + 320))();

    OUTLINED_FUNCTION_92_3();
    v65 = OUTLINED_FUNCTION_118_0();
    v66(v65);
    v67 = OUTLINED_FUNCTION_64_0();
    v68(v67);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v69, static Logging.answerSynthesis);
    v70 = v25;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      OUTLINED_FUNCTION_28_3();
      v73 = swift_slowAlloc();
      v74 = OUTLINED_FUNCTION_173_0();
      *v73 = 138412290;
      v75 = v25;
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 4) = v76;
      *v74 = v76;
      OUTLINED_FUNCTION_70_0(&dword_25D85C000, v77, v72, "PQA verification caught error. Throw model inference failure error. Error is %@");
      outlined destroy of IntentApplication?(v74, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_49_6();
    v78 = swift_allocError();
    OUTLINED_FUNCTION_118_1(v78, v79);
    v80 = v25;
    goto LABEL_27;
  }

  v28 = OUTLINED_FUNCTION_39_5();
  v29(v28);
  GenerativeError.type.getter();
  v30 = OUTLINED_FUNCTION_63_0();
  if (v31(v30) != *MEMORY[0x277D0DB78])
  {
    (*(*(v24 + 400) + 8))(*(v24 + 408), *(v24 + 392));
LABEL_19:
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
    }

    v83 = static MetricsLogger.shared;
    v84 = lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v85 = swift_allocError();
    OUTLINED_FUNCTION_247();
    *v86 = v87;
    (*(*v83 + 320))();

    OUTLINED_FUNCTION_92_3();
    v88 = OUTLINED_FUNCTION_45_0();
    v89(v88);
    v90 = OUTLINED_FUNCTION_54_0();
    v91(v90);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v92 = *(v24 + 440);
    v93 = *(v24 + 448);
    v94 = type metadata accessor for Logger();
    __swift_project_value_buffer(v94, static Logging.answerSynthesis);
    v95 = *(v93 + 16);
    v96 = OUTLINED_FUNCTION_39_5();
    v95(v96);
    v97 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v98 = OUTLINED_FUNCTION_20_3();
    v100 = os_log_type_enabled(v98, v99);
    v101 = *(v24 + 448);
    v102 = *(v24 + 456);
    v103 = *(v24 + 440);
    if (v100)
    {
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      logc = OUTLINED_FUNCTION_152_0();
      *v92 = 138412290;
      OUTLINED_FUNCTION_5_6();
      lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v104, v105, MEMORY[0x277D0DBC0]);
      OUTLINED_FUNCTION_49_6();
      swift_allocError();
      a12 = v84;
      (v95)(v106, v102, v103);
      v107 = _swift_stdlib_bridgeErrorToNSError();
      v108 = *(v101 + 8);
      v109 = OUTLINED_FUNCTION_63_0();
      v108(v109);
      *(v92 + 4) = v107;
      logc->isa = v107;
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v110, v111, v112, v113, v114, 0xCu);
      outlined destroy of IntentApplication?(logc, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v115 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v115);
    }

    else
    {

      v108 = *(v101 + 8);
      v116 = OUTLINED_FUNCTION_63_0();
      v108(v116);
    }

    OUTLINED_FUNCTION_49_6();
    v117 = swift_allocError();
    OUTLINED_FUNCTION_118_1(v117, v118);
    v119 = OUTLINED_FUNCTION_64_0();
    v108(v119);
    v80 = *(v24 + 264);
LABEL_27:

    OUTLINED_FUNCTION_120_2();
    a10 = v121;
    loga = v120;

    OUTLINED_FUNCTION_62();
    goto LABEL_28;
  }

  (*(*(v24 + 400) + 96))(*(v24 + 408), *(v24 + 392));
  v32 = OUTLINED_FUNCTION_16_0();
  v33(v32);
  GenerativeError.PromptError.type.getter();
  v34 = OUTLINED_FUNCTION_64_0();
  if (v35(v34) != *MEMORY[0x277D0DA90])
  {
    (*(*(v24 + 424) + 8))(*(v24 + 432), *(v24 + 416));
    v81 = OUTLINED_FUNCTION_107();
    v82(v81);
    goto LABEL_19;
  }

  (*(*(v24 + 336) + 96))(*(v24 + 344), *(v24 + 328));
  v36 = OUTLINED_FUNCTION_16_0();
  v37(v36);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  v39 = *(v24 + 312);
  v38 = *(v24 + 320);
  v144 = *(v24 + 304);
  OUTLINED_FUNCTION_5_6();
  lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v40, v41, MEMORY[0x277D0DBC0]);
  OUTLINED_FUNCTION_49_6();
  v42 = swift_allocError();
  OUTLINED_FUNCTION_158_0();
  v43();
  OUTLINED_FUNCTION_92_3();
  (*(v44 + 320))(v42);

  OUTLINED_FUNCTION_92_3();
  v45 = OUTLINED_FUNCTION_30_5();
  v46(v45);
  (*(v39 + 8))(v38, v144);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v48 = *(v24 + 360);
  v47 = *(v24 + 368);
  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logging.answerSynthesis);
  v50 = *(v48 + 16);
  v51 = OUTLINED_FUNCTION_94();
  v50(v51);
  v52 = OUTLINED_FUNCTION_39_5();
  v50(v52);
  v53 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_4();
  if (os_log_type_enabled(v53, v54))
  {
    logb = v53;
    v55 = OUTLINED_FUNCTION_90_1();
    *v55 = 134218240;
    GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.tokenCount.getter();
    v56 = OUTLINED_FUNCTION_34_7();
    v57 = (v42)(v56);
    *(v55 + 4) = v50;
    v58 = OUTLINED_FUNCTION_182_0(v57);
    v59 = OUTLINED_FUNCTION_30_5();
    v145 = v42;
    (v42)(v59);
    *(v55 + 14) = v58;
    _os_log_impl(&dword_25D85C000, logb, v47, "PQA verification caught too many tokens error: Token count = %ld, Maximum allowed = %ld. Treat this error as non-fatal. Returning the only answer.", v55, 0x16u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v60 = logb;
  }

  else
  {
    v131 = *(*(v24 + 360) + 8);
    v132 = OUTLINED_FUNCTION_30_5();
    v131(v132);
    v133 = OUTLINED_FUNCTION_26_2();
    v145 = v131;
    v131(v133);
    v60 = v53;
  }

  v134 = OUTLINED_FUNCTION_179_0();
  v145(v134);
  v135 = OUTLINED_FUNCTION_64_0();
  v136(v135);
  v137 = OUTLINED_FUNCTION_88();
  v138(v137);

  OUTLINED_FUNCTION_35_7();
  loga = v140;
  a12 = v139;

  OUTLINED_FUNCTION_62();
LABEL_28:
  OUTLINED_FUNCTION_115();

  return v124(v122, v123, v124, v125, v126, v127, v128, v129, a9, a10, loga, a12, a13, a14, a15, a16);
}

uint64_t AnswerSynthesisController.preCheckAnswerResponses(with:answerSynthesisRequest:references:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v1[3] = v6;
  v1[4] = v0;
  v1[2] = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
  v1[5] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[6] = v8;
  v1[7] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SpotlightRankingItem();
  v1[8] = v9;
  OUTLINED_FUNCTION_21(v9);
  v1[9] = v10;
  v1[10] = OUTLINED_FUNCTION_199();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v1[11] = OUTLINED_FUNCTION_160();
  v1[12] = swift_task_alloc();
  v12 = type metadata accessor for SearchResultItem(0);
  v1[13] = v12;
  OUTLINED_FUNCTION_114(v12);
  v1[14] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for UUID();
  v1[15] = v13;
  OUTLINED_FUNCTION_21(v13);
  v1[16] = v14;
  v1[17] = OUTLINED_FUNCTION_199();
  v15 = type metadata accessor for Answer(0);
  v1[18] = v15;
  OUTLINED_FUNCTION_114(v15);
  v1[19] = OUTLINED_FUNCTION_199();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v16);
  v1[20] = OUTLINED_FUNCTION_160();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v17 = type metadata accessor for SearchResult(0);
  v1[23] = v17;
  OUTLINED_FUNCTION_21(v17);
  v1[24] = v18;
  v1[25] = OUTLINED_FUNCTION_160();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v19 = swift_task_alloc();
  v20 = *v5;
  v1[29] = v19;
  v1[30] = v20;
  v1[31] = *(v3 + 16);
  v21 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v21);
}

{
  v222 = v0;
  v1 = *(v0 + 240);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v0 + 256) = v2;
    if (v2)
    {
      v3 = *(v0 + 16);
      v4 = Array<A>.dictionaryByKey()(*(v0 + 24));
      memcpy(v221, (v3 + 24), sizeof(v221));
      AnswerSynthesisRequest.onScreenTextToSearchResultsDictionary.getter();
      v6 = specialized Dictionary.merging(_:uniquingKeysWith:)(v5, v4);
      v7 = 0;
      v8 = MEMORY[0x277D84F90];
      *(v0 + 264) = v6;
      while (1)
      {
        *(v0 + 272) = v7;
        *(v0 + 280) = v8;
        v9 = *(v0 + 240);
        if (v7 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_91;
        }

        v10 = (v9 + 48 * v7);
        v215 = v10[4];
        *(v0 + 288) = v215;
        v11 = v10[5];
        *(v0 + 296) = v11;
        v12 = v10[6];
        *(v0 + 304) = v12;
        v210 = v10[7];
        *(v0 + 312) = v210;
        v13 = v10[8];
        *(v0 + 320) = v13;
        v14 = v10[9];
        *(v0 + 328) = v14;
        v15 = one-time initialization token for noAnswerLabels;
        swift_bridgeObjectRetain_n();
        v216 = v12;

        v213 = v13;

        v212 = v14;

        if (v15 != -1)
        {
          OUTLINED_FUNCTION_31_9();
          swift_once();
        }

        v16 = static AnswerSynthesisController.noAnswerLabels;
        if (*(static AnswerSynthesisController.noAnswerLabels + 16))
        {
          Hasher.init(_seed:)();
          String.hash(into:)();
          Hasher._finalize()();
          OUTLINED_FUNCTION_205_0();
          do
          {
            OUTLINED_FUNCTION_204_0();
            if ((v17 & 1) == 0)
            {
              goto LABEL_19;
            }

            v18 = (*(v16 + 48) + 16 * v12);
            v19 = *v18 == v215 && v18[1] == v11;
          }

          while (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

          if (one-time initialization token for answerSynthesis != -1)
          {
            OUTLINED_FUNCTION_0_5();
            swift_once();
          }

          v20 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v20, static Logging.answerSynthesis);

          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v21, v22))
          {
            OUTLINED_FUNCTION_28_3();
            v23 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v220 = swift_slowAlloc();
            *v23 = 136315138;
            v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v23 + 4) = v24;
            OUTLINED_FUNCTION_184_0(&dword_25D85C000, v21, v22, "Answer synthesis response: no answer found in document, label: %s", v201);
            __swift_destroy_boxed_opaque_existential_1Tm(v220);
            v25 = OUTLINED_FUNCTION_19_5();
            MEMORY[0x25F8A1050](v25);
LABEL_74:
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
LABEL_75:

            goto LABEL_76;
          }
        }

        else
        {
LABEL_19:
          v211 = v11;
          v205 = v8;
          v26 = 0;
          v27 = *(v12 + 16);
          v28 = v12 + 40;
          v214 = MEMORY[0x277D84F90];
          v208 = v12 + 40;
LABEL_20:
          v29 = v28 + 16 * v26;
          while (v27 != v26)
          {
            if (v26 >= *(v216 + 16))
            {
              __break(1u);
              goto LABEL_87;
            }

            v13 = *(v0 + 264);
            OUTLINED_FUNCTION_64_0();
            String.lowercased()();
            if (v13[2])
            {

              v30 = OUTLINED_FUNCTION_141_0();
              specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
              if (v32)
              {
                v33 = *(v0 + 168);
                OUTLINED_FUNCTION_2_4();
                _s10OmniSearch0B6ResultVWOcTm_1(v34, v33);
                OUTLINED_FUNCTION_117();
              }

              else
              {
                v35 = OUTLINED_FUNCTION_65_3();
              }

              __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
            }

            else
            {
              v39 = OUTLINED_FUNCTION_65_3();
              __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
            }

            v43 = *(v0 + 168);

            OUTLINED_FUNCTION_38_5(v43);
            if (v19)
            {
              outlined destroy of IntentApplication?(*(v0 + 168), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
              if (one-time initialization token for answerSynthesis != -1)
              {
                OUTLINED_FUNCTION_0_5();
                swift_once();
              }

              v44 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_200(v44, static Logging.answerSynthesis);

              v45 = Logger.logObject.getter();
              v46 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v45, v46))
              {
                OUTLINED_FUNCTION_28_3();
                v47 = swift_slowAlloc();
                OUTLINED_FUNCTION_9_4();
                v13 = swift_slowAlloc();
                *v47 = 136315138;
                OUTLINED_FUNCTION_64_0();
                *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                _os_log_impl(&dword_25D85C000, v45, v46, "Answer synthesis: Unable to find search result referenced by model: %s", v47, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v13);
                OUTLINED_FUNCTION_90();
                MEMORY[0x25F8A1050](v48, v49, v50, v51);
                OUTLINED_FUNCTION_90();
                MEMORY[0x25F8A1050](v52, v53, v54, v55);
              }
            }

            else
            {
              OUTLINED_FUNCTION_1_7();
              outlined init with take of ResultsDialog(v56, v57);
            }

            v12 = *(v0 + 176);
            OUTLINED_FUNCTION_117();
            __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);

            OUTLINED_FUNCTION_38_5(v12);
            if (!v19)
            {
              v13 = *(v0 + 224);
              v62 = *(v0 + 232);
              v63 = OUTLINED_FUNCTION_99_2();
              v12 = v64;
              outlined init with take of ResultsDialog(v63, v62);
              v65 = OUTLINED_FUNCTION_88();
              outlined init with take of ResultsDialog(v65, v66);
              v67 = v214;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v73 = OUTLINED_FUNCTION_44();
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73, v74, v75, v214);
                v67 = v76;
              }

              v214 = v67;
              OUTLINED_FUNCTION_226();
              if (v70)
              {
                v77 = OUTLINED_FUNCTION_22_5(v69);
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77, v78, v79, v67);
                v214 = v80;
              }

              ++v26;
              *(v214 + 16) = v67;
              OUTLINED_FUNCTION_131_1();
              OUTLINED_FUNCTION_1_7();
              outlined init with take of ResultsDialog(v71, v72);
              v28 = v208;
              goto LABEL_20;
            }

            outlined destroy of IntentApplication?(*(v0 + 176), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
            v29 += 16;
            ++v26;
          }

          if (*(v214 + 16))
          {
            v81 = v211;
          }

          else
          {
            v82 = *(v0 + 24);

            v81 = v211;
            if (*(v82 + 16) != 1)
            {
              swift_bridgeObjectRelease_n();

              if (one-time initialization token for answerSynthesis != -1)
              {
                OUTLINED_FUNCTION_0_5();
                swift_once();
              }

              v174 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_200(v174, static Logging.answerSynthesis);
              v21 = Logger.logObject.getter();
              v175 = static os_log_type_t.error.getter();
              v176 = OUTLINED_FUNCTION_20_3();
              v8 = v205;
              if (os_log_type_enabled(v176, v177))
              {
                OUTLINED_FUNCTION_51_5();
                v178 = swift_slowAlloc();
                OUTLINED_FUNCTION_81_4(v178);
                v97 = v175;
                v98 = v21;
                v99 = "Answer synthesis: Unable to associate search results with answer, skipping answer";
                goto LABEL_73;
              }

              goto LABEL_75;
            }

            if (one-time initialization token for answerSynthesis != -1)
            {
              OUTLINED_FUNCTION_0_5();
              swift_once();
            }

            v83 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_200(v83, static Logging.answerSynthesis);
            v84 = Logger.logObject.getter();
            v85 = static os_log_type_t.error.getter();
            v86 = OUTLINED_FUNCTION_20_3();
            if (os_log_type_enabled(v86, v87))
            {
              OUTLINED_FUNCTION_51_5();
              v88 = swift_slowAlloc();
              OUTLINED_FUNCTION_157_0(v88);
              _os_log_impl(&dword_25D85C000, v84, v85, "Answer synthesis: No referenced documents found for answer, falling back to only provided search result", v12, 2u);
              v89 = OUTLINED_FUNCTION_19_5();
              MEMORY[0x25F8A1050](v89);
            }

            v214 = *(v0 + 24);
          }

          v90 = *(v0 + 160);
          specialized Collection.first.getter(v214, v90);
          OUTLINED_FUNCTION_38_5(v90);
          if (v19)
          {
            v91 = *(v0 + 160);

            swift_bridgeObjectRelease_n();

            outlined destroy of IntentApplication?(v91, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
            if (one-time initialization token for answerSynthesis != -1)
            {
              OUTLINED_FUNCTION_0_5();
              swift_once();
            }

            v92 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_200(v92, static Logging.answerSynthesis);
            v21 = Logger.logObject.getter();
            v93 = static os_log_type_t.error.getter();
            v94 = OUTLINED_FUNCTION_20_3();
            v8 = v205;
            if (os_log_type_enabled(v94, v95))
            {
              OUTLINED_FUNCTION_51_5();
              v96 = swift_slowAlloc();
              OUTLINED_FUNCTION_81_4(v96);
              v97 = v93;
              v98 = v21;
              v99 = "Answer synthesis: referenceDocs cannot be empty, skipping answer";
LABEL_73:
              OUTLINED_FUNCTION_174_0(&dword_25D85C000, v98, v97, v99);
              goto LABEL_74;
            }

            goto LABEL_75;
          }

          v203 = *(v0 + 184);
          v100 = *(v0 + 152);
          v101 = *(v0 + 144);
          v202 = *(v0 + 112);
          v204 = *(v0 + 96);
          v217 = *(v0 + 88);
          v206 = *(v0 + 64);
          v209 = *(v0 + 200);
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v102, v103);
          UUID.init()();
          v104 = UUID.uuidString.getter();
          v106 = v105;
          v107 = OUTLINED_FUNCTION_88();
          v108(v107);
          type metadata accessor for URL();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);

          v113 = MEMORY[0x277D84F90];
          v114 = Dictionary.init(dictionaryLiteral:)();
          *v100 = v104;
          v100[1] = v106;
          v100[2] = v215;
          v100[3] = v81;
          v100[4] = v114;
          v100[5] = v214;
          v100[6] = v113;
          *(v100 + v101[10]) = 0;
          v115 = (v100 + v101[11]);
          *v115 = v210;
          v115[1] = v213;
          v116 = OUTLINED_FUNCTION_93_2(v101[12], xmmword_25DBC9410);
          _s10OmniSearch0B6ResultVWOcTm_1(v116, v202);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
          v117 = CodableNSSecureCoding.wrappedValue.getter();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v118, v119, v120, v206);
          *(v209 + *(v203 + 28)) = v113;
          v121 = (v209 + *(v203 + 40));
          *v121 = 0;
          v121[1] = 0;
          OUTLINED_FUNCTION_13_4();
          v122 = OUTLINED_FUNCTION_64_0();
          _s10OmniSearch0B6ResultVWOcTm_1(v122, v123);
          type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
          lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
          v124 = v117;
          OUTLINED_FUNCTION_201_0();
          CodableNSSecureCoding.init(wrappedValue:)();
          outlined init with copy of ToolDatabaseProtocol?(v204, v217, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v217, 1, v206);
          v126 = *(v0 + 184);
          v127 = *(v0 + 112);
          if (EnumTagSinglePayload == 1)
          {
            OUTLINED_FUNCTION_202_0();
            outlined destroy of IntentApplication?(v128, v129, v130);
            OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_213();
            v201 = (v131 << 32);
            OUTLINED_FUNCTION_28_1();
            SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

            OUTLINED_FUNCTION_202_0();
            outlined destroy of IntentApplication?(v132, v133, v134);
            OUTLINED_FUNCTION_8_6();
            _s10OmniSearch0B6ResultVWOhTm_0(v127, v135);
          }

          else
          {
            v218 = *(v0 + 200);
            v136 = v124;
            v137 = *(v0 + 112);
            v139 = *(v0 + 72);
            v138 = *(v0 + 80);
            v140 = *(v0 + 64);

            OUTLINED_FUNCTION_202_0();
            outlined destroy of IntentApplication?(v141, v142, v143);
            OUTLINED_FUNCTION_8_6();
            _s10OmniSearch0B6ResultVWOhTm_0(v137, v144);
            v124 = *(v139 + 32);
            OUTLINED_FUNCTION_29_5();
            (v124)(v145, v146, v147, v148);
            (v124)(v218 + *(v126 + 20), v138, v140);
          }

          v149 = OUTLINED_FUNCTION_177_0();
          *(v149 + v150) = 1;
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v151, v152);
          v13 = v211;
          v12 = v215;
          if (v124)
          {
            v29 = *(v0 + 248);
            if (*(v29 + 16))
            {
LABEL_87:
              v199 = *(**(v0 + 32) + 456);
              v219 = (v199 + *v199);
              v200 = swift_task_alloc();
              *(v0 + 336) = v200;
              *v200 = v0;
              OUTLINED_FUNCTION_91_2(v200);

              return (v219)(v212, v29, v12, v13);
            }
          }

          OUTLINED_FUNCTION_180_0();
          v154 = *(v0 + 296);
          v153 = *(v0 + 312);
          *v156 = v155;
          *(v156 + 8) = v154;
          *(v156 + 24) = v153;
          *(v156 + 40) = v157;
          OUTLINED_FUNCTION_2_4();
          _s10OmniSearch0B6ResultVWOcTm_1(v160, v158 + v159);
          v161 = swift_isUniquelyReferenced_nonNull_native();
          v162 = *(v0 + 280);
          if ((v161 & 1) == 0)
          {
            v179 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v179);
            v162 = v180;
          }

          v164 = *(v162 + 16);
          v163 = *(v162 + 24);
          v8 = v162;
          if (v164 >= v163 >> 1)
          {
            v181 = OUTLINED_FUNCTION_22_5(v163);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v181);
            v8 = v182;
          }

          v165 = *(v0 + 216);
          v167 = *(v0 + 48);
          v166 = *(v0 + 56);
          OUTLINED_FUNCTION_7_5();
          _s10OmniSearch0B6ResultVWOhTm_0(v168, v169);
          OUTLINED_FUNCTION_106_1();
          _s10OmniSearch0B6ResultVWOhTm_0(v165, v170);
          *(v8 + 16) = v164 + 1;
          OUTLINED_FUNCTION_79();
          outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v166, v8 + v171 + *(v167 + 72) * v164, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
          v172 = OUTLINED_FUNCTION_212();
          _s10OmniSearch0B6ResultVWOhTm_0(v172, v173);
        }

LABEL_76:
        OUTLINED_FUNCTION_237();
        if (v19)
        {

          v207 = v8;
          goto LABEL_83;
        }
      }
    }
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
LABEL_91:
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v183 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v183, static Logging.answerSynthesis);
  v184 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  v185 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v185, v186))
  {
    OUTLINED_FUNCTION_51_5();
    v187 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v187);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v188, v189, v190, v191, v192, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050](v193, v194, v195, v196);
  }

  v207 = MEMORY[0x277D84F90];
LABEL_83:
  OUTLINED_FUNCTION_159_0();

  OUTLINED_FUNCTION_62();

  return v197(v207);
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 344) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 352) = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6);
}

{

  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[19];
  OUTLINED_FUNCTION_7_5();
  _s10OmniSearch0B6ResultVWOhTm_0(v4, v5);
  OUTLINED_FUNCTION_105_2();
  _s10OmniSearch0B6ResultVWOhTm_0(v2, v6);
  _s10OmniSearch0B6ResultVWOhTm_0(v3, v1);

  OUTLINED_FUNCTION_127();

  return v7();
}

void AnswerSynthesisController.preCheckAnswerResponses(with:answerSynthesisRequest:references:)()
{
  v2 = v0[44];
  v3 = v0[4];
  OUTLINED_FUNCTION_133();
  (*(v4 + 496))(v2);
  OUTLINED_FUNCTION_112_2();

  if (!v3)
  {

    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    swift_allocError();
    OUTLINED_FUNCTION_261(v179, 5);
    v181 = v0[26];
    v180 = v0[27];
    v182 = v0[19];
    OUTLINED_FUNCTION_7_5();
    _s10OmniSearch0B6ResultVWOhTm_0(v182, v183);
    OUTLINED_FUNCTION_105_2();
    _s10OmniSearch0B6ResultVWOhTm_0(v180, v184);
    _s10OmniSearch0B6ResultVWOhTm_0(v181, v1);

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_251();

    __asm { BRAA            X1, X16 }
  }

  v5 = (v0 + 37);
  v6 = v0[26];
  v7 = *(v0[23] + 28);

  *(v6 + v7) = v3;
LABEL_3:
  OUTLINED_FUNCTION_180_0();
  v9 = *v5;
  v8 = v5[1];
  *v11 = v10;
  *(v11 + 8) = v9;
  *(v11 + 24) = v8;
  *(v11 + 40) = v12;
  OUTLINED_FUNCTION_2_4();
  _s10OmniSearch0B6ResultVWOcTm_1(v15, v13 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v198 = v0[35];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v174 = OUTLINED_FUNCTION_44();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v174);
    v198 = v175;
  }

  v18 = *(v198 + 16);
  v17 = *(v198 + 24);
  if (v18 >= v17 >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1);
    v198 = v176;
  }

  v19 = v0[27];
  v21 = v0[6];
  v20 = v0[7];
  OUTLINED_FUNCTION_7_5();
  _s10OmniSearch0B6ResultVWOhTm_0(v22, v23);
  OUTLINED_FUNCTION_106_1();
  _s10OmniSearch0B6ResultVWOhTm_0(v19, v24);
  *(v198 + 16) = v18 + 1;
  OUTLINED_FUNCTION_79();
  outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v20, v26 + v25 + *(v21 + 72) * v18, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
  v27 = OUTLINED_FUNCTION_212();
  _s10OmniSearch0B6ResultVWOhTm_0(v27, v28);
  while (1)
  {
    OUTLINED_FUNCTION_237();
    if (v41)
    {

      OUTLINED_FUNCTION_159_0();

      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_251();

      __asm { BRAA            X2, X16 }
    }

    v0[34] = v29;
    v0[35] = v198;
    v30 = v0[30];
    if (v29 >= *(v30 + 16))
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v31 = (v30 + 48 * v29);
    v32 = v31[4];
    v0[36] = v32;
    v33 = v31[5];
    v0[37] = v33;
    v34 = v31[6];
    v0[38] = v34;
    v35 = v31[7];
    v0[39] = v35;
    v36 = v31[8];
    v0[40] = v36;
    v0[41] = v31[9];
    v37 = one-time initialization token for noAnswerLabels;
    swift_bridgeObjectRetain_n();
    v202 = v34;

    if (v37 != -1)
    {
      OUTLINED_FUNCTION_31_9();
      swift_once();
    }

    v38 = static AnswerSynthesisController.noAnswerLabels;
    if (*(static AnswerSynthesisController.noAnswerLabels + 16))
    {
      Hasher.init(_seed:)();
      OUTLINED_FUNCTION_241();
      String.hash(into:)();
      Hasher._finalize()();
      OUTLINED_FUNCTION_205_0();
      do
      {
        OUTLINED_FUNCTION_204_0();
        if ((v39 & 1) == 0)
        {
          goto LABEL_24;
        }

        v40 = (*(v38 + 48) + 16 * v20);
        v41 = *v40 == v32 && v40[1] == v33;
      }

      while (!v41 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v42, static Logging.answerSynthesis);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v43, v44))
      {

        continue;
      }

      OUTLINED_FUNCTION_28_3();
      v45 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v204 = swift_slowAlloc();
      *v45 = 136315138;
      OUTLINED_FUNCTION_118_0();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v45 + 4) = v20;
      OUTLINED_FUNCTION_184_0(&dword_25D85C000, v43, v44, "Answer synthesis response: no answer found in document, label: %s", v190);
      __swift_destroy_boxed_opaque_existential_1Tm(v204);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
LABEL_64:
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      goto LABEL_65;
    }

LABEL_24:
    v193 = v35;
    v194 = v32;
    v196 = v36;
    v197 = v33;
    v20 = 0;
    v46 = *(v202 + 16);
    v47 = v202 + 40;
    v200 = MEMORY[0x277D84F90];
LABEL_25:
    v48 = v47 + 16 * v20;
    while (v46 != v20)
    {
      if (v20 >= *(v202 + 16))
      {
        __break(1u);
        goto LABEL_84;
      }

      v49 = v0[33];
      OUTLINED_FUNCTION_32_0();
      String.lowercased()();
      if (*(v49 + 16))
      {

        v50 = OUTLINED_FUNCTION_141_0();
        specialized __RawDictionaryStorage.find<A>(_:)(v50, v51);
        if (v52)
        {
          v53 = v0[21];
          OUTLINED_FUNCTION_2_4();
          _s10OmniSearch0B6ResultVWOcTm_1(v54, v53);
          OUTLINED_FUNCTION_117();
        }

        else
        {
          v55 = OUTLINED_FUNCTION_65_3();
        }

        __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
      }

      else
      {
        v59 = OUTLINED_FUNCTION_65_3();
        __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
      }

      v63 = v0[21];

      OUTLINED_FUNCTION_38_5(v63);
      if (v41)
      {
        outlined destroy of IntentApplication?(v0[21], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v64, static Logging.answerSynthesis);

        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v65, v66))
        {
          OUTLINED_FUNCTION_28_3();
          v67 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v205 = swift_slowAlloc();
          *v67 = 136315138;
          OUTLINED_FUNCTION_32_0();
          *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          _os_log_impl(&dword_25D85C000, v65, v66, "Answer synthesis: Unable to find search result referenced by model: %s", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v205);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050](v68, v69, v70, v71);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050](v72, v73, v74, v75);
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_7();
        outlined init with take of ResultsDialog(v76, v77);
      }

      v78 = v0[22];
      OUTLINED_FUNCTION_117();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);

      OUTLINED_FUNCTION_38_5(v78);
      if (!v41)
      {
        v83 = v0[29];
        v84 = OUTLINED_FUNCTION_99_2();
        outlined init with take of ResultsDialog(v84, v83);
        v85 = OUTLINED_FUNCTION_107();
        outlined init with take of ResultsDialog(v85, v86);
        v87 = v200;
        v88 = swift_isUniquelyReferenced_nonNull_native();
        if ((v88 & 1) == 0)
        {
          v93 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v93, v94, v95, v200);
          v87 = v96;
        }

        v47 = v202 + 40;
        OUTLINED_FUNCTION_226();
        if (v90)
        {
          v97 = OUTLINED_FUNCTION_22_5(v89);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v97, v98, v99, v87);
          v87 = v100;
        }

        ++v20;
        *(v87 + 16) = v83;
        OUTLINED_FUNCTION_131_1();
        v200 = v87;
        OUTLINED_FUNCTION_1_7();
        outlined init with take of ResultsDialog(v91, v92);
        goto LABEL_25;
      }

      outlined destroy of IntentApplication?(v0[22], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      v48 += 16;
      ++v20;
    }

    v101 = v200;
    if (*(v200 + 16))
    {
      v102 = v197;
      goto LABEL_57;
    }

    v103 = v0[3];

    v102 = v197;
    if (*(v103 + 16) != 1)
    {
      swift_bridgeObjectRelease_n();

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v124 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v124, static Logging.answerSynthesis);
      v43 = Logger.logObject.getter();
      v125 = static os_log_type_t.error.getter();
      v126 = OUTLINED_FUNCTION_20_3();
      if (!os_log_type_enabled(v126, v127))
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_51_5();
      v128 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v128);
      v121 = v125;
      v122 = v43;
      v123 = "Answer synthesis: Unable to associate search results with answer, skipping answer";
LABEL_63:
      OUTLINED_FUNCTION_174_0(&dword_25D85C000, v122, v121, v123);
      goto LABEL_64;
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v104, static Logging.answerSynthesis);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    v107 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v107, v108))
    {
      OUTLINED_FUNCTION_51_5();
      v109 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v109);
      OUTLINED_FUNCTION_174_0(&dword_25D85C000, v105, v106, "Answer synthesis: No referenced documents found for answer, falling back to only provided search result");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v110, v111, v112, v113);
    }

    v101 = v0[3];
LABEL_57:
    v114 = v0[20];
    specialized Collection.first.getter(v101, v114);
    OUTLINED_FUNCTION_38_5(v114);
    if (!v41)
    {
      v199 = v0[25];
      v201 = v101;
      v129 = v0[23];
      v130 = v0[19];
      v131 = v0[18];
      v191 = v0[14];
      v192 = v0[12];
      v203 = v0[11];
      v195 = v0[8];
      OUTLINED_FUNCTION_1_7();
      outlined init with take of ResultsDialog(v132, v133);
      UUID.init()();
      v134 = UUID.uuidString.getter();
      v136 = v135;
      v137 = OUTLINED_FUNCTION_153();
      v138(v137);
      type metadata accessor for URL();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);

      v143 = MEMORY[0x277D84F90];
      v144 = Dictionary.init(dictionaryLiteral:)();
      *v130 = v134;
      v130[1] = v136;
      v130[2] = v194;
      v130[3] = v102;
      v130[4] = v144;
      v130[5] = v201;
      v130[6] = v143;
      *(v130 + v131[10]) = 0;
      v145 = (v130 + v131[11]);
      *v145 = v193;
      v145[1] = v196;
      v146 = OUTLINED_FUNCTION_93_2(v131[12], xmmword_25DBC9410);
      _s10OmniSearch0B6ResultVWOcTm_1(v146, v191);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v147 = CodableNSSecureCoding.wrappedValue.getter();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v148, v149, v150, v195);
      *(v199 + *(v129 + 28)) = v143;
      v151 = (v199 + *(v129 + 40));
      *v151 = 0;
      v151[1] = 0;
      OUTLINED_FUNCTION_13_4();
      _s10OmniSearch0B6ResultVWOcTm_1(v191, v199);
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
      lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
      v152 = v147;
      OUTLINED_FUNCTION_201_0();
      CodableNSSecureCoding.init(wrappedValue:)();
      outlined init with copy of ToolDatabaseProtocol?(v192, v203, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v203, 1, v195);
      v154 = v0[14];
      v155 = v0[12];
      if (EnumTagSinglePayload == 1)
      {
        v156 = OUTLINED_FUNCTION_63_0();
        outlined destroy of IntentApplication?(v156, v157, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_207();
        v190 = (v158 << 32);
        OUTLINED_FUNCTION_28_1();
        SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

        OUTLINED_FUNCTION_158_0();
        outlined destroy of IntentApplication?(v159, v160, v161);
        OUTLINED_FUNCTION_8_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v154, v162);
      }

      else
      {
        v163 = v0[9];

        outlined destroy of IntentApplication?(v155, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_8_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v154, v164);
        v152 = *(v163 + 32);
        v165 = OUTLINED_FUNCTION_45_0();
        (v152)(v165);
        OUTLINED_FUNCTION_158_0();
        (v152)(v166, v167, v168, v169);
      }

      v170 = OUTLINED_FUNCTION_177_0();
      *(v170 + v171) = 1;
      OUTLINED_FUNCTION_1_7();
      outlined init with take of ResultsDialog(v172, v173);
      v5 = (v0 + 37);
      if (!v152 || !*(v0[31] + 16))
      {

        goto LABEL_3;
      }

LABEL_85:
      v187 = swift_task_alloc();
      v0[42] = v187;
      *v187 = v0;
      OUTLINED_FUNCTION_91_2(v187);
      OUTLINED_FUNCTION_202_0();
      OUTLINED_FUNCTION_251();

      __asm { BRAA            X4, X16 }
    }

    v115 = v0[20];

    swift_bridgeObjectRelease_n();

    outlined destroy of IntentApplication?(v115, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v116, static Logging.answerSynthesis);
    v43 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();
    v118 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v118, v119))
    {
      OUTLINED_FUNCTION_51_5();
      v120 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v120);
      v121 = v117;
      v122 = v43;
      v123 = "Answer synthesis: referenceDocs cannot be empty, skipping answer";
      goto LABEL_63;
    }

LABEL_65:
  }
}

uint64_t specialized Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t AnswerSynthesisController.createProperties(from:requestedProperties:answer:)()
{
  OUTLINED_FUNCTION_48();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v1[19] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestVSgMd, &_s10OmniSearch0B15PropertyRequestVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v1[24] = OUTLINED_FUNCTION_199();
  v7 = type metadata accessor for SearchPropertyRequest(0);
  v1[25] = v7;
  OUTLINED_FUNCTION_114(v7);
  v1[26] = OUTLINED_FUNCTION_160();
  v1[27] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v8);
}

{
  v1 = *(v0 + 152);
  if (!v1)
  {
    v1 = Dictionary.init(dictionaryLiteral:)();
  }

  v2 = *(v0 + 160);
  if (*(v2 + 16) == 1)
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    specialized Collection.first.getter(v2, v4);
    LODWORD(v3) = __swift_getEnumTagSinglePayload(v4, 1, v3);

    if (v3 == 1)
    {
      outlined destroy of IntentApplication?(*(v0 + 192), &_s10OmniSearch0B15PropertyRequestVSgMd, &_s10OmniSearch0B15PropertyRequestVSgMR);
    }

    else
    {

      OUTLINED_FUNCTION_108_1();
      v5 = OUTLINED_FUNCTION_62_3();
      outlined init with take of ResultsDialog(v5, v6);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logging.answerSynthesis);
      OUTLINED_FUNCTION_102_2();
      v8 = OUTLINED_FUNCTION_107();
      _s10OmniSearch0B6ResultVWOcTm_1(v8, v9);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 208);
      if (v12)
      {
        v14 = OUTLINED_FUNCTION_90_1();
        OUTLINED_FUNCTION_260();
        *v14 = 136315395;
        EntityProperty.wrappedValue.getter();
        OUTLINED_FUNCTION_9_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v13, v15);
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v14 + 4) = v16;
        *(v14 + 12) = 2085;
        OUTLINED_FUNCTION_118_0();
        *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_190_0();
        _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v22 = OUTLINED_FUNCTION_19_5();
        MEMORY[0x25F8A1050](v22);
      }

      else
      {

        OUTLINED_FUNCTION_9_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v13, v23);
      }

      v24 = *(v0 + 216);
      v26 = *(v0 + 168);
      v25 = *(v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25DBC8180;
      EntityProperty.wrappedValue.getter();
      *(inited + 32) = *(v0 + 120);
      *(inited + 48) = v26;
      *(inited + 56) = v25;

      v1 = Dictionary.init(dictionaryLiteral:)();
      OUTLINED_FUNCTION_9_6();
      _s10OmniSearch0B6ResultVWOhTm_0(v24, v28);
    }
  }

  else
  {
  }

  *(v0 + 224) = v1;
  OUTLINED_FUNCTION_133();
  (*(v29 + 256))();
  v30 = *(v0 + 112);
  OUTLINED_FUNCTION_218((v0 + 80), *(v0 + 104));
  v33 = (*(v30 + 16) + **(v30 + 16));
  v31 = swift_task_alloc();
  *(v0 + 232) = v31;
  *v31 = v0;
  v31[1] = AnswerSynthesisController.createProperties(from:requestedProperties:answer:);
  OUTLINED_FUNCTION_201_0();

  return v33();
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v5 + 240) = v0;

  if (!v0)
  {

    *(v5 + 248) = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_223((v0 + 80));

  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 248);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_78();

  OUTLINED_FUNCTION_223((v0 + 80));

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t AnswerSynthesisController.collateNetworkServiceResults(_:)()
{
  OUTLINED_FUNCTION_48();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SearchResult(0);
  v0[4] = v3;
  OUTLINED_FUNCTION_21(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_160();
  v0[7] = swift_task_alloc();
  v5 = type metadata accessor for AnswerSynthesisResult(0);
  v0[8] = v5;
  OUTLINED_FUNCTION_21(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_160();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

uint64_t AnswerSynthesisController.collateNetworkServiceResults(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  if (one-time initialization token for answerSynthesis != -1)
  {
LABEL_48:
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v24, static Logging.answerSynthesis);

  v97 = v21;
  v25 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_77_4();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v23[3];
  if (v27)
  {
    OUTLINED_FUNCTION_28_3();
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = *(v28 + 16);

    _os_log_impl(&dword_25D85C000, v25, v22, "Answer synthesis: collating %ld results", v29, 0xCu);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  v31 = v23[3];
  v32 = *(v31 + 16);
  if (v32)
  {
    v98 = 0;
    v99 = 0;
    a11 = v23[12];
    v33 = v23[9];
    a15 = v23[5];
    v34 = v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v22 = *(v33 + 72);
    v35 = MEMORY[0x277D84F90];
    *&v30 = 136315138;
    a9 = v30;
    a14 = v22;
    while (2)
    {
      _s10OmniSearch0B6ResultVWOcTm_1(v34, v23[13]);
      v36 = OUTLINED_FUNCTION_63_0();
      _s10OmniSearch0B6ResultVWOcTm_1(v36, v37);
      OUTLINED_FUNCTION_179_0();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v50 = v23[12];

          v51 = *v50;
          v52 = *(*v50 + 16);
          v21 = *(v35 + 16);
          v22 = v21 + v52;
          if (__OFADD__(v21, v52))
          {
            __break(1u);
          }

          else
          {
            v98 = *(a11 + 8);
            v99 = *(a11 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v22 > *(v35 + 24) >> 1)
            {
              if (v21 <= v22)
              {
                v54 = v21 + v52;
              }

              else
              {
                v54 = v21;
              }

              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v54, 1, v35);
              v35 = v55;
            }

            v22 = a14;
            if (*(v51 + 16))
            {
              if ((*(v35 + 24) >> 1) - *(v35 + 16) >= v52)
              {
                swift_arrayInitWithCopy();

                if (!v52)
                {
                  goto LABEL_30;
                }

                v56 = *(v35 + 16);
                v57 = __OFADD__(v56, v52);
                v58 = v56 + v52;
                if (!v57)
                {
                  *(v35 + 16) = v58;
                  goto LABEL_30;
                }

                goto LABEL_47;
              }

LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            if (!v52)
            {
              goto LABEL_30;
            }
          }

          __break(1u);
          goto LABEL_46;
        case 2u:
          a16 = v35;
          OUTLINED_FUNCTION_10_5();
          _s10OmniSearch0B6ResultVWOcTm_1(v59, v60);
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();
          v63 = os_log_type_enabled(v61, v62);
          v64 = v23[13];
          v65 = v23[11];
          if (v63)
          {
            v66 = v23[10];
            OUTLINED_FUNCTION_28_3();
            a10 = v64;
            v67 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            a18 = swift_slowAlloc();
            *v67 = a9;
            OUTLINED_FUNCTION_10_5();
            _s10OmniSearch0B6ResultVWOcTm_1(v65, v66);
            String.init<A>(describing:)();
            OUTLINED_FUNCTION_17_5();
            v68 = v65;
            v70 = v69;
            _s10OmniSearch0B6ResultVWOhTm_0(v68, v71);
            v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v67 + 4) = v72;
            v22 = a14;
            _os_log_impl(&dword_25D85C000, v61, v62, "Answer synthesis: unexpected result type %s during result collation.", v67, 0xCu);
            OUTLINED_FUNCTION_223(a18);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();

            v73 = a10;
            v74 = v70;
          }

          else
          {

            OUTLINED_FUNCTION_111_1();
            _s10OmniSearch0B6ResultVWOhTm_0(v65, v75);
            v73 = v64;
            v74 = v97;
          }

          _s10OmniSearch0B6ResultVWOhTm_0(v73, v74);
          v35 = a16;
          goto LABEL_31;
        case 3u:
LABEL_30:
          OUTLINED_FUNCTION_17_5();
          _s10OmniSearch0B6ResultVWOhTm_0(v76, v77);
          goto LABEL_31;
        default:
          v38 = v23[7];
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v39, v38);
          OUTLINED_FUNCTION_2_4();
          v40 = OUTLINED_FUNCTION_63_0();
          _s10OmniSearch0B6ResultVWOcTm_1(v40, v41);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v78, v79, v80, v35);
            v35 = v81;
          }

          v43 = *(v35 + 16);
          v42 = *(v35 + 24);
          if (v43 >= v42 >> 1)
          {
            v82 = OUTLINED_FUNCTION_26_3(v42);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v82, v43 + 1, 1, v35);
            v35 = v83;
          }

          v44 = v23[13];
          v45 = v23[6];
          OUTLINED_FUNCTION_3_6();
          _s10OmniSearch0B6ResultVWOhTm_0(v46, v47);
          OUTLINED_FUNCTION_17_5();
          _s10OmniSearch0B6ResultVWOhTm_0(v44, v48);
          *(v35 + 16) = v43 + 1;
          OUTLINED_FUNCTION_42_5();
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v45, v49);
LABEL_31:
          v34 += v22;
          if (!--v32)
          {
            goto LABEL_34;
          }

          continue;
      }
    }
  }

  v98 = 0;
  v99 = 0;
  v35 = MEMORY[0x277D84F90];
LABEL_34:
  v84 = *(v35 + 16);
  if (v84)
  {
    if (v84 != 1)
    {
      v88 = v23[2];
      *v88 = v35;
      v88[1] = v98;
      v88[2] = v99;
      swift_storeEnumTagMultiPayload();
      goto LABEL_41;
    }

    if (!*(v35 + 16))
    {
      __break(1u);
      return result;
    }

    v86 = v23[2];
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_2_4();
    _s10OmniSearch0B6ResultVWOcTm_1(v35 + v87, v86);
    OUTLINED_FUNCTION_62_3();
  }

  else
  {

    OUTLINED_FUNCTION_62_3();
  }

  swift_storeEnumTagMultiPayload();

LABEL_41:

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_191();

  return v90(v89, v90, v91, v92, v93, v94, v95, v96, a9, *(&a9 + 1), a10, a11, v97, v98, a14, a15, a16, v99, a18, a19, a20, a21);
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_40_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_123_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_224();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_40_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_123_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21SFCollectionStyleGridC_SitMd, &_sSo21SFCollectionStyleGridC_SitMR);
  OUTLINED_FUNCTION_224();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_40_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_123_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pMd, &_sSE_pMR);
  OUTLINED_FUNCTION_224();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}