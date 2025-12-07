void *pg_query_thread_exit(void *a1)
{
  MemoryContextDeleteChildren(a1);
  AllocSetDeleteFreeList(a1);
  (*(a1[2] + 32))(a1);
  free(a1);
  *TopMemoryContext() = 0;
  *CurrentMemoryContext(v2) = 0;
  result = ErrorContext();
  *result = 0;
  return result;
}

uint64_t MemoryContextDeleteChildren(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = result;
    do
    {
      if (v1[4])
      {
        MemoryContextDeleteChildren(v1);
      }

      while (1)
      {
        v3 = v1[9];
        if (!v3)
        {
          break;
        }

        v1[9] = *(v3 + 16);
        (*v3)(*(v3 + 8));
      }

      v4 = v1[3];
      if (v4)
      {
        v7 = v1[5];
        v6 = v1[6];
        v5 = v1 + 5;
        v8 = (v4 + 32);
        if (v7)
        {
          v8 = (v7 + 48);
        }

        *v8 = v6;
        if (v6)
        {
          *(v6 + 40) = *v5;
        }

        v1[3] = 0;
        *v5 = 0;
        v1[6] = 0;
      }

      v1[8] = 0;
      result = (*(v1[2] + 32))(v1);
      v1 = *(v2 + 32);
    }

    while (v1);
  }

  return result;
}

uint64_t AllocSetDeleteFreeList(uint64_t result)
{
  if ((*(result + 216) & 0x80000000) == 0)
  {
    v1 = context_freelists();
    v3 = v1 + 16 * v2;
    result = *(v3 + 8);
    if (result)
    {
      do
      {
        v4 = *(result + 48);
        *(v3 + 8) = v4;
        --*v3;
        free(result);
        result = v4;
      }

      while (v4);
    }
  }

  return result;
}

void AllocSetDelete(void *a1)
{
  if ((a1[27] & 0x80000000) != 0)
  {
    v8 = a1[10];
    if (v8)
    {
      do
      {
        v9 = v8[2];
        if (v8 != a1[26])
        {
          a1[1] += v8 - v8[4];
          free(v8);
        }

        v8 = v9;
      }

      while (v9);
    }

    free(a1);
  }

  else
  {
    v2 = context_freelists();
    v4 = v2 + 16 * v3;
    if ((*(a1 + 4) & 1) == 0)
    {
      MemoryContextResetOnly(a1);
    }

    v5 = *v4;
    if (*v4 >= 100)
    {
      v6 = *(v4 + 8);
      if (v6)
      {
        do
        {
          v7 = v6[6];
          *(v4 + 8) = v7;
          --*v4;
          free(v6);
          v6 = v7;
        }

        while (v7);
        v5 = *v4;
      }
    }

    a1[6] = *(v4 + 8);
    *(v4 + 8) = a1;
    *v4 = v5 + 1;
  }
}

uint64_t _sSo19BMUseCaseIdentifieras21_ObjectiveCBridgeableSCsACP026_unconditionallyBridgeFromD1Cyx01_D5CTypeQzSgFZTW_0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo18BMStreamIdentifiera_Tt1gq5Tm(a2);
  *a1 = result;
  return result;
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO7StorageV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOs0H3KeyAAsAKP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = IncrementalIdentifier.Stream.Source.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO7StorageVAC011SingleValueE0AacHP5value10SqliteTypeQzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = IncrementalIdentifier.View.StringIdentifier.value.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FFEEA8@<X0>(uint64_t *a1@<X8>)
{
  result = _s25IntelligencePlatformQuery21IncrementalIdentifierO011SingleValueE0PAAE14asDatabaseType06SqliteJ0QzvgAC6StreamO7StorageV_TB5_0(*v1, v1[1]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO011SingleValueE0PAAE6dbTypex06SqliteI0Qz_tcfCAC6StreamO7StorageV_Tg5_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO011SingleValueE0PAASL10SqliteTypeRpzrlE1loiySbx_xtFZAC6StreamO7StorageV_Tt1B5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return _s25IntelligencePlatformQuery21IncrementalIdentifierO05EmptyE0PAAE1loiySbx_xtFZAC4ViewO7StorageV_Ttt0t1g5();
  }

  else
  {
    return OUTLINED_FUNCTION_42(a1, a2, a3, a4);
  }
}

uint64_t _sSLsE2leoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO6SourceV_Tt1B5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a1 && a4 == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  return v5 & 1;
}

uint64_t _sSLsE2geoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO7StorageV_Tt1B5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  return v5 & 1;
}

uint64_t _sSLsE1goiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO7StorageV_Tt1B5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a1 && a4 == a2)
  {
    return _s25IntelligencePlatformQuery21IncrementalIdentifierO05EmptyE0PAAE1loiySbx_xtFZAC4ViewO7StorageV_Ttt0t1g5();
  }

  else
  {
    return OUTLINED_FUNCTION_42(a3, a4, a1, a2);
  }
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLO11stringValueSSvg_0(char a1)
{
  if (a1)
  {
    return 0x656761726F7473;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOs0H3KeyAAsAKP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = IncrementalIdentifier.Stream.Store.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

Swift::Int sub_254FFF180@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int *a2@<X8>)
{
  result = Int.init(value:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_254FFF1C0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO6SourceVAC0gE0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO7StorageVAC0gE0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO6SourceVAC0gE0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO7StorageVAC0gE0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO06StringE0VAC06EntityE0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO05Int64E0VAC06EntityE0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO8BookmarkVAC06EntityG0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO8BookmarkVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_52(*a1);
  }

  else
  {
    return _s25IntelligencePlatformQuery21IncrementalIdentifierO05EmptyE0PAAE1loiySbx_xtFZAC4ViewO7StorageV_Ttt0t1g5();
  }
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO8BookmarkVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t _s25IntelligencePlatformQuery12VirtualTableO13ModuleWrapper33_7E1B6BA96420C7DCE9ECBDCE9A071CC9LLCfD_0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t outlined init with take of SQLExpressionNode(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t _s14BiomeSQLParser21PgQuery_ClusterOptionO21InternalSwiftProtobuf4EnumAadEP8rawValuexSgSi_tcfCTW_0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *_s14BiomeSQLParser21PgQuery_ClusterOptionOSYAASY8rawValuexSg03RawH0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t _s14BiomeSQLParser19PgQuery_ParseResultV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  return UnknownStorage.init()();
}

uint64_t _s14BiomeSQLParser14PgQuery_StringV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t _s14BiomeSQLParser26PgQuery_ConstraintsSetStmtV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  return UnknownStorage.init()();
}

uint64_t _s14BiomeSQLParser22PgQuery_CreateEnumStmtV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v1;
  return UnknownStorage.init()();
}

uint64_t _s14BiomeSQLParser19PgQuery_A_ArrayExprV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  return UnknownStorage.init()();
}

uint64_t _s14BiomeSQLParser31PgQuery_PartitionRangeDatumKindOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14BiomeSQLParser31PgQuery_PartitionRangeDatumKindOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t _s14BiomeSQLParser31PgQuery_PartitionRangeDatumKindOwug_0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14BiomeSQLParser31PgQuery_PartitionRangeDatumKindOwui_0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_255000490(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_25500053C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2550005E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255000694(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255000740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_255000870(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255000A10(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_255000ABC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255000B78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255000CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_255000E00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255000F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 33);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_255001010(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 33) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2550010B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2550011B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_2550012BC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_255001440(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2550015C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255001670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255001714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 12);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2550017C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 12) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255001890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_255001908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_255001998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255001A44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255001AF0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_255001C74(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_255001DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_255001EF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_255001FFC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 24)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 28)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_25500212C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 24)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 28)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255002354(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_255002400(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2550024D4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_255002658(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2550027DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25500290C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255002A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_255002B6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255002CBC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_255002DEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255002F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255002FC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25500306C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255003118(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2550031C4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2550032F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25500343C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2550034E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25500358C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2550036BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255003814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2550038C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2550039C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255003A74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255003B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_255003B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t _s14BiomeSQLParser22SQLExpressionBitString33_B787555787B9EFBBEFB0C9C5225A4FB7LLVAA0C4NodeACLLA2aeCLLP010expressionE0SSvgTW_0()
{
  v1 = *v0;

  return v1;
}

uint64_t get_enum_tag_for_layout_string_14BiomeSQLParser17SQLExpressionNode33_B787555787B9EFBBEFB0C9C5225A4FB7LL_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_255005700()
{
  v1 = *(v0 + 208);
  if (v1 <= 6)
  {
    v2 = (v0 + 16);
    if (v1 != 2)
    {
LABEL_3:
      __swift_destroy_boxed_opaque_existential_0(v2);

      goto LABEL_4;
    }

    __swift_destroy_boxed_opaque_existential_0(v2);

    if (*(v0 + 136))
    {
      v2 = (v0 + 112);
      goto LABEL_3;
    }
  }

LABEL_4:

  return MEMORY[0x2821FE8E8](v0, 232, 7);
}

uint64_t sub_2550057E0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 66, 7);
}

uint64_t sub_255005818()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_255005868()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2550058D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ParseResult = type metadata accessor for PgQuery_ParseResult(0);
  v7 = *(ParseResult - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = ParseResult;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  ScanResult = type metadata accessor for PgQuery_ScanResult(0);
  v12 = *(ScanResult - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = ScanResult;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2550059E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  ParseResult = type metadata accessor for PgQuery_ParseResult(0);
  v9 = *(ParseResult - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = ParseResult;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for PgQuery_ScanResult(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_255005AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ScanResult = type metadata accessor for PgQuery_ScanResult(0);
  v7 = *(ScanResult - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, ScanResult);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_255005BB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PgQuery_ScanResult(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_255005C6C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SQLTokenInformation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_255005D18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SQLTokenInformation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t PgQuery_List.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PgQuery_List.decodeMessage<A>(decoder:)(a1, a2, a3);
}

{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_Alias.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PgQuery_Alias.decodeMessage<A>(decoder:)(a1, a2, a3);
}

{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_NotifyStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PgQuery_NotifyStmt.decodeMessage<A>(decoder:)(a1, a2, a3);
}

{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_DropdbStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PgQuery_DropdbStmt.decodeMessage<A>(decoder:)(a1, a2, a3);
}

{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_VacuumStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PgQuery_VacuumStmt.decodeMessage<A>(decoder:)(a1, a2, a3);
}

{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2 || result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterTypeStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PgQuery_AlterTypeStmt.decodeMessage<A>(decoder:)(a1, a2, a3);
}

{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2 || result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateEventTrigStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PgQuery_CreateEventTrigStmt.decodeMessage<A>(decoder:)(a1, a2, a3);
}

{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_Integer.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PgQuery_Integer.decodeMessage<A>(decoder:)(a1, a2, a3);
}

{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_DropRoleStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PgQuery_DropRoleStmt.decodeMessage<A>(decoder:)(a1, a2, a3);
}

{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_LockStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PgQuery_LockStmt.decodeMessage<A>(decoder:)(a1, a2, a3);
}

{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 1:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_Float.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PgQuery_Float.decodeMessage<A>(decoder:)(a1, a2, a3);
}

{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_ColumnRef.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return PgQuery_ColumnRef.decodeMessage<A>(decoder:)(a1, a2, a3);
}

{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

id IPSQLDatabaseError(uint64_t a1, sqlite3 *db, const char *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = sqlite3_extended_errcode(db);
  v7 = sqlite3_errmsg(db);
  v8 = objc_alloc(MEMORY[0x277CCAB68]);
  v9 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v11 = [v8 initWithFormat:@"IPSQLDatabase resultCode:(%@), errorCode:(%@)", v9, v10];

  if (v7)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    [v11 appendFormat:@" %@.", v12];

    if (a3 && strcmp(v7, a3))
    {
      goto LABEL_4;
    }
  }

  else if (a3)
  {
LABEL_4:
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    [v11 appendFormat:@" %@", v13];
  }

  v14 = objc_alloc(MEMORY[0x277CCA9B8]);
  v19 = *MEMORY[0x277CCA450];
  v15 = [v11 copy];
  v20[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v17 = [v14 initWithDomain:@"IPSQLDatabaseErrorDomain" code:a1 userInfo:v16];

  return v17;
}

IPSQLDatabase __swiftcall IPSQLDatabase.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result._bmsql = v2;
  result.super.isa = v1;
  return result;
}

Class IPSQLDatabase.init()()
{
  swift_getObjectType();
  isa = IPSQLDatabase.init(useCase:)(*MEMORY[0x277CF0DF0]).super.isa;
  swift_deallocPartialClassInstance();
  return isa;
}

IPSQLDatabase __swiftcall IPSQLDatabase.init(useCase:)(__C::BMUseCaseIdentifier useCase)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CF1A88]) initWithUseCase_];
  v3 = [objc_opt_self() current];
  v4 = [objc_opt_self() policyForProcess:v3 connectionFlags:4 useCase:useCase._rawValue];

  v5 = [v4 explicitlyAuthorizedResourcesOfType:3 withAccessMode:1];
  OUTLINED_FUNCTION_5();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v4 explicitlyAuthorizedResourcesOfType:4 withAccessMode:1];
  OUTLINED_FUNCTION_5();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_5();
  isa = Set._bridgeToObjectiveC()().super.isa;

  OUTLINED_FUNCTION_5();
  v9 = Set._bridgeToObjectiveC()().super.isa;

  v10 = [v7 initWithBMSQL:v2 databases:isa sets:v9 useCase:useCase._rawValue error:0];

  v12 = v10;
  result._bmsql = v11;
  result.super.isa = v12;
  return result;
}

void (**IPSQLDatabase.execute(query:)(unint64_t a1, unint64_t a2))(uint64_t, uint64_t)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for SQLParseResult(0);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;

  SQLParseResult.init(sql:)(a1, a2, v18);
  if (!v2)
  {
    v34 = v7;
    v14[1](v18, v12);
    static Logging.SQL.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v36);
      _os_log_impl(&dword_254FFD000, v20, v21, "SQL (%s) is succesfully parsed via BiomeSQLParser.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x259C33C60](v23, -1, -1);
      MEMORY[0x259C33C60](v22, -1, -1);
    }

    (*(v34 + 8))(v11, v5);
    v24 = MEMORY[0x259C32A40](a1, a2);
    v36[0] = 0;
    v14 = [v35 executeWithQuery:v24 error:v36];

    if (v14)
    {
      v25 = v36[0];
      v26 = [v14 error];
      if (v26)
      {
        v27 = v26;
        v28 = type metadata accessor for SQLDatabaseError();
        OUTLINED_FUNCTION_0();
        lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError(v29, v30, MEMORY[0x277CF1870]);
        swift_allocError();
        v32 = v31;
        swift_getErrorValue();
        *v32 = Error.localizedDescription.getter();
        v32[1] = v33;
        (*(*(v28 - 8) + 104))(v32, *MEMORY[0x277CF1860], v28);
        swift_willThrow();
      }
    }

    else
    {
      v14 = v36[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v14;
}

id IPSQLDatabase.registerFunction(name:numArgs:function:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x259C32A40](a1, a2);
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (a3 > 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

  v10 = v9;
  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [Any], @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@out Any?);
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v12 = [v5 registerFunctionWithName:v10 numArgs:a3 function:v11 error:aBlock];
  _Block_release(v11);

  if (v12)
  {
    return aBlock[0];
  }

  v14 = aBlock[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id thunk for @escaping @callee_guaranteed (@guaranteed [Any], @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@out Any?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4(v13, v5, a3);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id IPSQLDatabase.registerFunction(name:numArgs:function:userData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x259C32A40](a1, a2);
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (a3 > 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v12 = v11;
  v28 = a4;
  v29 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [Any], @in_guaranteed Any?, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@out Any?);
  v27 = &block_descriptor_7;
  v13 = _Block_copy(aBlock);

  outlined init with copy of Any?(a6, aBlock);
  v14 = v27;
  if (v27)
  {
    __swift_project_boxed_opaque_existential_0(aBlock, v27);
    v25 = &v25;
    OUTLINED_FUNCTION_4();
    v16 = v15;
    MEMORY[0x28223BE20](v17);
    OUTLINED_FUNCTION_3();
    v20 = v19 - v18;
    (*(v16 + 16))(v19 - v18);
    v21 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v20, v14);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  else
  {
    v21 = 0;
  }

  aBlock[0] = 0;
  v22 = [v6 registerFunctionWithName:v12 numArgs:a3 function:v13 userData:v21 error:aBlock];
  swift_unknownObjectRelease();
  _Block_release(v13);

  if (v22)
  {
    return aBlock[0];
  }

  v24 = aBlock[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id thunk for @escaping @callee_guaranteed (@guaranteed [Any], @in_guaranteed Any?, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@out Any?)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v15 = a3;
    outlined init with take of Any(&v15, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  swift_unknownObjectRetain();
  v6(&v15, v7, v17, a4);

  outlined destroy of Any?(v17);
  v8 = ObjectType;
  if (ObjectType)
  {
    v9 = __swift_project_boxed_opaque_existential_0(&v15, ObjectType);
    v10 = *(v8 - 8);
    MEMORY[0x28223BE20](v9);
    v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_0(&v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void IPSQLDatabase.registerVirtualTable(moduleName:connector:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = [v4 bmsql];
  v9 = [v8 db];

  sqlite3_set_authorizer(v9, 0, 0);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = [ObjCClassFromMetadata schema];
  v11 = [v61 tableName];
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [a3 vtabMetadataWithDatabase_];
  v15 = [ObjCClassFromMetadata vtabModule];
  v16 = [ObjCClassFromMetadata vtabDestroyBlock];
  v17 = String.utf8CString.getter();
  LODWORD(v15) = sqlite3_create_module_v2(v9, (v17 + 32), v15, v14, v16);

  if (v15)
  {

    v18 = BMSQLDatabaseError();
    swift_getErrorValue();
    Error.localizedDescription.getter();

    v19 = OUTLINED_FUNCTION_1();
    v26 = OUTLINED_FUNCTION_2(v19, v20, v21, v22, v23, v24, MEMORY[0x277D837D0], v25, v54, v55, v56, v57, v58, v59, v60, v61, v63, v64, v65);
    v28 = v27;

    v29 = type metadata accessor for SQLDatabaseError();
    OUTLINED_FUNCTION_0();
    v32 = lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError(v30, v31, MEMORY[0x277CF1870]);
    OUTLINED_FUNCTION_6(v32);
    v34 = v33;
    *v33 = v26;
    v33[1] = v28;
    v35 = MEMORY[0x277CF1860];
  }

  else
  {
    _StringGuts.grow(_:)(46);

    MEMORY[0x259C32B90](v59, v13);

    MEMORY[0x259C32B90](0x20474E49535520, 0xE700000000000000);
    MEMORY[0x259C32B90](a1, a2);
    v36 = String.utf8CString.getter();
    v37 = sqlite3_exec(v9, (v36 + 32), 0, 0, 0);

    if (!v37)
    {

      v53 = [v4 bmsql];

      sqlite3_set_authorizer(v9, MEMORY[0x277CF1B88], v53);
      return;
    }

    v38 = BMSQLDatabaseError();
    swift_getErrorValue();
    Error.localizedDescription.getter();

    v39 = OUTLINED_FUNCTION_1();
    v46 = OUTLINED_FUNCTION_2(v39, v40, v41, v42, v43, v44, MEMORY[0x277D837D0], v45, v54, v55, v56, v57, v58, v59, v60, v61, v63, v64, v65);
    v48 = v47;

    v29 = type metadata accessor for SQLDatabaseError();
    OUTLINED_FUNCTION_0();
    v51 = lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError(v49, v50, MEMORY[0x277CF1870]);
    OUTLINED_FUNCTION_6(v51);
    v34 = v52;
    *v52 = 0xD000000000000023;
    v52[1] = 0x80000002553A7B00;
    v52[2] = v46;
    v52[3] = v48;
    v35 = MEMORY[0x277CF1858];
  }

  (*(*(v29 - 8) + 104))(v34, *v35, v29);
  swift_willThrow();
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSJSONReadingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance BMUseCaseIdentifier@<X0>(uint64_t *a1@<X8>)
{
  result = BMUseCaseIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance BMUseCaseIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError(&lazy protocol witness table cache variable for type BMUseCaseIdentifier and conformance BMUseCaseIdentifier, type metadata accessor for BMUseCaseIdentifier, &protocol conformance descriptor for BMUseCaseIdentifier);
  v3 = lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError(&lazy protocol witness table cache variable for type BMUseCaseIdentifier and conformance BMUseCaseIdentifier, type metadata accessor for BMUseCaseIdentifier, &protocol conformance descriptor for BMUseCaseIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BMUseCaseIdentifier@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x259C32A40](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance BMStreamIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError(&lazy protocol witness table cache variable for type BMStreamIdentifier and conformance BMStreamIdentifier, type metadata accessor for BMStreamIdentifier, &protocol conformance descriptor for BMStreamIdentifier);
  v3 = lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError(&lazy protocol witness table cache variable for type BMStreamIdentifier and conformance BMStreamIdentifier, type metadata accessor for BMStreamIdentifier, &protocol conformance descriptor for BMStreamIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25IntelligencePlatformQuery12VirtualTableO6SearchO0I9PredicateOGMd, &_ss23_ContiguousArrayStorageCy25IntelligencePlatformQuery12VirtualTableO6SearchO0I9PredicateOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser19AggregationFunctionVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser19AggregationFunctionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 200);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser7BindingVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser7BindingVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser13SQLExpressionVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser13SQLExpressionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t specialized _SwiftNewtypeWrapper<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int specialized _SwiftNewtypeWrapper<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE016_forceBridgeFromD1C_6resultyAD_01_D5CTypeQZ_xSgztFZSo18BMStreamIdentifiera_Tt1gq5Tm(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE024_conditionallyBridgeFromD1C_6resultSbAD_01_D5CTypeQZ_xSgztFZSo18BMStreamIdentifiera_Tt1gq5Tm(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo18BMStreamIdentifiera_Tt1gq5Tm(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = MEMORY[0x259C32A40](v1);

  return v2;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for fts5_tokenizer(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for fts5_tokenizer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void type metadata accessor for BMUseCaseIdentifier(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t specialized _SwiftNewtypeWrapper<>.hashValue.getter(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = MEMORY[0x259C32C30](v1);

  return v2;
}

unint64_t OUTLINED_FUNCTION_1()
{

  return lazy protocol witness table accessor for type String and conformance String();
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1)
{

  return swift_allocError();
}

void closure #1 in variable initialization expression of static SQLConnection.authorizer(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  switch(a2)
  {
    case 9:
    case 18:
      if (a3)
      {
        if (String.init(cString:)() == 0xD000000000000012 && 0x80000002553A7CF0 == v4)
        {
          goto LABEL_40;
        }

        goto LABEL_28;
      }

      return;
    case 19:
      if (a3)
      {
        if (String.init(cString:)() == 0x7265765F61746164 && v18 == 0xEC0000006E6F6973)
        {
          goto LABEL_40;
        }

        goto LABEL_28;
      }

      return;
    case 20:
      if (!a1 || !a3)
      {
        return;
      }

      v8 = String.init(cString:)();
      v10 = v9;
      if (!a4)
      {
        goto LABEL_40;
      }

      v11 = v8;
      v12 = String.init(cString:)();
      v14 = v13;
      v15 = v11 == 0x6D5F6574696C7173 && v10 == 0xED00007265747361;
      if (v15 || (v16 = v12, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v16 == 0x6361655F6E6F736ALL ? (v17 = v14 == 0xE900000000000068) : (v17 = 0), v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        goto LABEL_40;
      }

      v26 = *(a1 + 40);

      if (v26)
      {
        v27 = specialized Array._getCount()(v26);
        v33 = v26 & 0xFFFFFFFFFFFFFF8;
        v34 = v26 & 0xC000000000000001;

        v28 = 0;
        while (1)
        {
          if (v27 == v28)
          {
LABEL_49:

            goto LABEL_40;
          }

          if (v34)
          {
            v29 = v26;
            v30 = MEMORY[0x259C32E50](v28, v26);
          }

          else
          {
            if (v28 >= *(v33 + 16))
            {
              goto LABEL_54;
            }

            v29 = v26;
            v30 = *(v26 + 8 * v28 + 32);
          }

          v31 = v30;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          v32 = outlined bridged method (mbgbgnn) of @objc BMSQLColumnAccessSet.checkTable(_:column:)(v11, v10, v16, v14, v30);

          ++v28;
          v26 = v29;
          if (v32)
          {
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
      }

      else
      {
      }

      return;
    case 23:
      if (a3)
      {
        v20 = String.init(cString:)();
        v22 = v21;
        v23 = v20 == 0x6D5F6574696C7173 && v21 == 0xED00007265747361;
        if (v23 || (v24 = v20, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v24 == 0xD000000000000012 ? (v25 = 0x80000002553A7CF0 == v22) : (v25 = 0), v25))
        {
LABEL_40:
        }

        else
        {
LABEL_28:
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      return;
    default:
      return;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnection.setAuthorizor()()
{
  sqlite3_set_authorizer(*(v0 + 16), @objc closure #1 in variable initialization expression of static SQLConnection.authorizer, v0);
  OUTLINED_FUNCTION_0_0();
  SQLConnection.isOk(_:context:)(v1, v2);
  if (!v3)
  {
    *(v0 + 96) = 1;
  }
}

uint64_t specialized SQLConnection.withoutAuthorizer(block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized SQLConnection.withoutAuthorizer(block:)(a1, a2, a3, closure #1 in SQLConnection.streamVtabModule());
}

{
  return specialized SQLConnection.withoutAuthorizer(block:)(a1, a2, a3, closure #1 in SQLConnection.streamTombstoneVtabModule());
}

{
  return specialized SQLConnection.withoutAuthorizer(block:)(a1, a2, a3, closure #1 in SQLConnection.viewVtabModule());
}

{
  OUTLINED_FUNCTION_2_0();
  if (v4)
  {
    v5 = v3;
    OUTLINED_FUNCTION_0_0();
    sqlite3_set_authorizer(v6, v7, v8);
    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v9, v10);
    if (!v11)
    {
      *(v5 + 96) = 0;
      SQLConnection.createTempSQLView(for:)();
      SQLConnection.setAuthorizor()();
    }
  }

  else
  {
    SQLConnection.createTempSQLView(for:)();
  }
}

uint64_t specialized SQLConnection.withoutAuthorizer(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_0();
  if (v8)
  {
    v9 = v7;
    OUTLINED_FUNCTION_0_0();
    sqlite3_set_authorizer(v10, v11, v12);
    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v13, v14);
    if (v15)
    {
LABEL_6:
    }

    *(v9 + 96) = 0;
    OUTLINED_FUNCTION_3_0();
    SQLConnection.setAuthorizor()();
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
  }

  if (v6)
  {
    goto LABEL_6;
  }
}

{
  OUTLINED_FUNCTION_2_0();
  if (v8)
  {
    v9 = v7;
    OUTLINED_FUNCTION_0_0();
    sqlite3_set_authorizer(v10, v11, v12);
    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v13, v14);
    if (v15)
    {
LABEL_6:
    }

    *(v9 + 96) = 0;
    OUTLINED_FUNCTION_4_0();
    SQLConnection.setAuthorizor()();
  }

  else
  {
    OUTLINED_FUNCTION_4_0();
  }

  if (v6)
  {
    goto LABEL_6;
  }
}

uint64_t specialized SQLConnection.withoutAuthorizer(block:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    v9 = v7;
    OUTLINED_FUNCTION_0_0();
    sqlite3_set_authorizer(v10, v11, v12);
    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v13, v14);
    if (!v15)
    {
      *(v9 + 96) = 0;
      a4(v4, a3);
      SQLConnection.setAuthorizor()();
    }
  }

  else
  {
    a4(v4, a3);
  }
}

uint64_t specialized SQLConnection.withoutAuthorizer(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_0_0();
    sqlite3_set_authorizer(v8, v9, v10);
    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v11, v12);
    if (v13)
    {
LABEL_6:
    }

    *(v7 + 96) = 0;
    OUTLINED_FUNCTION_7();
    SQLConnection.setAuthorizor()();
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  if (v4)
  {
    goto LABEL_6;
  }
}

{
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    v9 = v7;
    OUTLINED_FUNCTION_0_0();
    sqlite3_set_authorizer(v10, v11, v12);
    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v13, v14);
    if (v15)
    {
LABEL_8:
    }

    *(v9 + 96) = 0;
    closure #1 in closure #1 in SQLConnection.executeWithoutAuthorizer(_:)(v4, a3, a4);
    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v16, v17);
    if (v18)
    {
      SQLConnection.setAuthorizor()();
      if (v19)
      {
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
        swift_willThrow();
      }

      goto LABEL_8;
    }

    SQLConnection.setAuthorizor()();
  }

  else
  {
    closure #1 in closure #1 in SQLConnection.executeWithoutAuthorizer(_:)(v4, a3, a4);
    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v20, v21);
  }

  if (v22)
  {
    goto LABEL_8;
  }
}

{
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_0_0();
    sqlite3_set_authorizer(v8, v9, v10);
    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v11, v12);
    if (v13)
    {
LABEL_6:
    }

    *(v7 + 96) = 0;
    OUTLINED_FUNCTION_5_0();
    SQLConnection.setAuthorizor()();
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
  }

  if (v4)
  {
    goto LABEL_6;
  }
}

uint64_t specialized SQLConnection.withoutAuthorizer(block:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_0();
  if (v7)
  {
    v8 = v6;
    OUTLINED_FUNCTION_0_0();
    sqlite3_set_authorizer(v9, v10, v11);
    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v12, v13);
    if (!v14)
    {
      *(v8 + 96) = 0;
      a2(*(a4 + 16));
      SQLConnection.setAuthorizor()();
    }
  }

  else
  {
    a2(*(a4 + 16));
  }
}

void SQLConnection.withoutAuthorizer(block:)(void (*a1)(void))
{
  if (*(v1 + 96))
  {
    OUTLINED_FUNCTION_0_0();
    sqlite3_set_authorizer(v3, v4, v5);
    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v6, v7);
    if (!v8)
    {
      *(v1 + 96) = 0;
      a1();
      SQLConnection.setAuthorizor()();
    }
  }

  else
  {
    a1();
  }
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x259C32EC0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

id outlined bridged method (mbgbgnn) of @objc BMSQLColumnAccessSet.checkTable(_:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x259C32A40](a1, a2);
  v9 = MEMORY[0x259C32A40](a3, a4);
  v10 = [a5 checkTable:v8 column:v9];

  return v10;
}

void OUTLINED_FUNCTION_3_0()
{

  closure #1 in SQLConnection.createVirtualTable(tableName:moduleName:)(v4, v2, v3, v1, v0);
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return closure #1 in VirtualTable.View.Module.vtabCreatingIfNeeded(for:)(v4, v3, v1, v2, v0);
}

sqlite3_stmt *OUTLINED_FUNCTION_5_0()
{
  v5._countAndFlagsBits = v3;
  v5._object = v0;

  return closure #1 in SQLConnection.executeWithoutAuthorizer(_:block:)(v1, v5, v2);
}

void OUTLINED_FUNCTION_6_0()
{
}

void OUTLINED_FUNCTION_7()
{

  closure #1 in SQLConnection.detachDatabase(_:)(v1, v2, v0);
}

uint64_t ResultSetCursor.column(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 24);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(v7 + 56) + 32 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    LODWORD(v10) = *(v10 + 24);
    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    *(a3 + 24) = v10;
    swift_unownedRetain();
  }

  else
  {
    _StringGuts.grow(_:)(23);

    MEMORY[0x259C32B90](a1, a2);
    v15 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    v16 = OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v15);
    *v17 = 0xD000000000000015;
    v17[1] = 0x80000002553A7D10;
    v24 = OUTLINED_FUNCTION_11(v16, v17, v18, v19, v20, v21, v22, v23, v25);
    return OUTLINED_FUNCTION_18(v24);
  }
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResultSetCursor.step()()
{
  v1 = sqlite3_step(*(v0 + 32));
  swift_unownedRetainStrong();
  v2 = SQLConnection.isDone(_:context:)(v1, 0);

  return !v2;
}

void *ResultSetCursor.init(db:statement:)(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = v2;
  v3[2] = MEMORY[0x277D84F90];
  v6 = Dictionary.init(dictionaryLiteral:)();
  v3[5] = a1;
  v3[6] = 0;
  v3[3] = v6;
  v3[4] = a2;
  swift_unownedRetain();
  v39 = a2;
  v7 = sqlite3_column_count(a2);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v7;
    if (!v7)
    {
LABEL_20:

      return v3;
    }

    v9 = 0;
    while (1)
    {
      if (sqlite3_column_name(v39, v9))
      {
        v10 = String.init(cString:)();
        v12 = v11;
      }

      else
      {
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x259C32B90](v13);

        v10 = 0x6E6D756C6F63;
        v12 = 0xE600000000000000;
      }

      v14 = v3[2];

      swift_unownedRetain();
      swift_unownedRetain();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3[2] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v36;
        v3[2] = v36;
      }

      v16 = *(v14 + 16);
      if (v16 >= *(v14 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v37;
      }

      *(v14 + 16) = v16 + 1;
      v17 = v14 + 32 * v16;
      *(v17 + 32) = v3;
      *(v17 + 40) = v10;
      *(v17 + 48) = v12;
      *(v17 + 56) = v9;
      v3[2] = v14;
      swift_unownedRetain();

      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = v3[3];
      v3[3] = 0x8000000000000000;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
      v22 = v19[2];
      v23 = (v21 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      v26 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12ResultColumnVGMd, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12ResultColumnVGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v18, v24))
      {
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v25 = v27;
      }

      if (v26)
      {

        v29 = v19;
        v30 = v19[7] + 32 * v25;
        *v30 = v3;
        *(v30 + 8) = v10;
        *(v30 + 16) = v12;
        *(v30 + 24) = v9;
        swift_unownedRelease();

        swift_unownedRelease();
      }

      else
      {
        v29 = v19;
        v19[(v25 >> 6) + 8] |= 1 << v25;
        v31 = (v19[6] + 16 * v25);
        *v31 = v10;
        v31[1] = v12;
        v32 = v19[7] + 32 * v25;
        *v32 = v3;
        *(v32 + 8) = v10;
        *(v32 + 16) = v12;
        *(v32 + 24) = v9;
        swift_unownedRelease();

        v33 = v19[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_22;
        }

        v19[2] = v35;
      }

      ++v9;
      v3[3] = v29;

      if (v8 == v9)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *ResultSetCursor.deinit()
{

  swift_unownedRelease();

  return v0;
}

uint64_t ResultSetCursor.__deallocating_deinit()
{
  ResultSetCursor.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t ResultColumn.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

{
  if (!*(v0 + 104))
  {
  }

  countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

  return countAndFlagsBits;
}

Swift::Bool __swiftcall ResultColumn.currentValueIsNil()()
{
  OUTLINED_FUNCTION_19();

  v0 = OUTLINED_FUNCTION_4_1();
  return sqlite3_column_type(v0, v1) == 5;
}

void ResultColumn.currentValue()()
{
  OUTLINED_FUNCTION_16();

  v1 = OUTLINED_FUNCTION_5_1();
  switch(sqlite3_column_type(v1, v2))
  {
    case 1:
      swift_unownedRetainStrong();

      v3 = OUTLINED_FUNCTION_5_1();
      v5 = sqlite3_column_int64(v3, v4);
      *(v0 + 24) = MEMORY[0x277D84A28];
      *v0 = v5;
      return;
    case 2:
      swift_unownedRetainStrong();

      v18 = OUTLINED_FUNCTION_5_1();
      v20 = sqlite3_column_double(v18, v19);
      *(v0 + 24) = MEMORY[0x277D839F8];
      *v0 = v20;
      return;
    case 3:
      swift_unownedRetainStrong();

      v6 = OUTLINED_FUNCTION_5_1();
      if (sqlite3_column_text(v6, v7))
      {
        v8 = String.init(cString:)();
        v10 = MEMORY[0x277D837D0];
        goto LABEL_8;
      }

      v32 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v32);
      OUTLINED_FUNCTION_0_1();
      goto LABEL_13;
    case 4:
      swift_unownedRetainStrong();

      v11 = OUTLINED_FUNCTION_5_1();
      v13 = sqlite3_column_blob(v11, v12);
      if (v13)
      {
        v14 = v13;
        swift_unownedRetainStrong();

        v15 = OUTLINED_FUNCTION_5_1();
        v17 = sqlite3_column_bytes(v15, v16);
        v8 = MEMORY[0x259C323E0](v14, v17);
        v10 = MEMORY[0x277CC9318];
LABEL_8:
        *(v0 + 24) = v10;
        *v0 = v8;
        *(v0 + 8) = v9;
      }

      else
      {
        v35 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v35);
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_3_1();
LABEL_13:
        *v25 = v33;
        v25[1] = v34;
LABEL_14:
        v36 = OUTLINED_FUNCTION_11(v24, v25, v26, v27, v28, v29, v30, v31, v37);
        OUTLINED_FUNCTION_18(v36);
      }

      return;
    case 5:
      *v0 = 0u;
      *(v0 + 16) = 0u;
      return;
    default:
      v21 = OUTLINED_FUNCTION_20();
      v22 = OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v21);
      OUTLINED_FUNCTION_2_1(v22, v23);
      goto LABEL_14;
  }
}

{
  OUTLINED_FUNCTION_16();

  v1 = OUTLINED_FUNCTION_5_1();
  switch(sqlite3_column_type(v1, v2))
  {
    case 1:
      swift_unownedRetainStrong();

      v3 = OUTLINED_FUNCTION_5_1();
      v5 = sqlite3_column_int64(v3, v4);
      v0[3] = MEMORY[0x277D84A28];
      *v0 = v5;
      return;
    case 2:
      swift_unownedRetainStrong();

      v18 = OUTLINED_FUNCTION_5_1();
      v20 = sqlite3_column_double(v18, v19);
      v0[3] = MEMORY[0x277D839F8];
      *v0 = v20;
      return;
    case 3:
      swift_unownedRetainStrong();

      v6 = OUTLINED_FUNCTION_5_1();
      if (sqlite3_column_text(v6, v7))
      {
        v8 = String.init(cString:)();
        v10 = MEMORY[0x277D837D0];
        goto LABEL_8;
      }

      v32 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v32);
      OUTLINED_FUNCTION_0_1();
      goto LABEL_13;
    case 4:
      swift_unownedRetainStrong();

      v11 = OUTLINED_FUNCTION_5_1();
      v13 = sqlite3_column_blob(v11, v12);
      if (v13)
      {
        v14 = v13;
        swift_unownedRetainStrong();

        v15 = OUTLINED_FUNCTION_5_1();
        v17 = sqlite3_column_bytes(v15, v16);
        v8 = MEMORY[0x259C323E0](v14, v17);
        v10 = MEMORY[0x277CC9318];
LABEL_8:
        v0[3] = v10;
        *v0 = v8;
        v0[1] = v9;
      }

      else
      {
        v35 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v35);
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_3_1();
LABEL_13:
        *v25 = v33;
        v25[1] = v34;
LABEL_14:
        v36 = OUTLINED_FUNCTION_11(v24, v25, v26, v27, v28, v29, v30, v31, v37);
        OUTLINED_FUNCTION_18(v36);
      }

      return;
    case 5:
      v0[3] = MEMORY[0x277D837D0];
      *v0 = 0;
      v0[1] = 0xE000000000000000;
      return;
    default:
      v21 = OUTLINED_FUNCTION_20();
      v22 = OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v21);
      OUTLINED_FUNCTION_2_1(v22, v23);
      goto LABEL_14;
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResultColumn.currentValue()()
{
  v1 = *(v0 + 24);
  v2 = *(swift_unownedRetainStrong() + 32);

  if (sqlite3_column_text(v2, v1))
  {
    v3 = String.init(cString:)();
  }

  else
  {
    v5 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v5);
    OUTLINED_FUNCTION_0_1();
    *v6 = v7;
    v6[1] = v8;
    v16 = OUTLINED_FUNCTION_11(v9, v6, v10, v11, v12, v13, v14, v15, v18);
    v3 = OUTLINED_FUNCTION_18(v16);
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::Double __swiftcall ResultColumn.currentValue()()
{
  OUTLINED_FUNCTION_19();

  v0 = OUTLINED_FUNCTION_4_1();

  return sqlite3_column_double(v0, v1);
}

uint64_t ResultColumn.currentValue()()
{
  v1 = *v0;
  v2 = *(v0 + 6);
  swift_unownedRetainStrong();
  v3 = *(v1 + 32);

  v4 = sqlite3_column_blob(v3, v2);
  if (v4)
  {
    v5 = v4;
    swift_unownedRetainStrong();
    v6 = *(v1 + 32);

    v7 = sqlite3_column_bytes(v6, v2);
    return MEMORY[0x259C323E0](v5, v7);
  }

  else
  {
    v9 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v9);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_3_1();
    *v10 = v11;
    v10[1] = v12;
    v20 = OUTLINED_FUNCTION_11(v13, v10, v14, v15, v16, v17, v18, v19, v21);
    return OUTLINED_FUNCTION_18(v20);
  }
}

Swift::OpaquePointer __swiftcall ResultColumn.currentValue()()
{
  OUTLINED_FUNCTION_19();

  v0 = OUTLINED_FUNCTION_4_1();
  result._rawValue = sqlite3_column_value(v0, v1);
  if (!result._rawValue)
  {
    __break(1u);
  }

  return result;
}

uint64_t ResultColumn.type.getter(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_19();

  v1 = OUTLINED_FUNCTION_4_1();

  return a1(v1);
}

sqlite3_int64 ResultColumn.currentValue()()
{
  OUTLINED_FUNCTION_19();

  v0 = OUTLINED_FUNCTION_4_1();

  return sqlite3_column_int64(v0, v1);
}

{
  OUTLINED_FUNCTION_14();

  v2 = OUTLINED_FUNCTION_4_1();
  if (sqlite3_column_type(v2, v3) == 5)
  {
    return 0;
  }

  swift_unownedRetainStrong();
  v5 = *(v1 + 32);

  return sqlite3_column_int64(v5, v0);
}

Swift::String_optional __swiftcall ResultColumn.currentValue()()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_4_1();
  if (sqlite3_column_type(v0, v1) == 5)
  {
    v2 = 0;
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  swift_unownedRetainStrong();

  v3 = OUTLINED_FUNCTION_4_1();
  v2 = sqlite3_column_text(v3, v4);
  if (!v2)
  {
    goto LABEL_5;
  }

  v2 = String.init(cString:)();
LABEL_6:
  result.value._object = v5;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::Int32_optional __swiftcall ResultColumn.currentValue()()
{
  OUTLINED_FUNCTION_14();

  v2 = OUTLINED_FUNCTION_4_1();
  v4 = sqlite3_column_type(v2, v3);
  if (v4 == 5)
  {
    v5 = 0;
  }

  else
  {
    swift_unownedRetainStrong();
    v6 = *(v1 + 32);

    v5 = sqlite3_column_int(v6, v0);
  }

  return (v5 | ((v4 == 5) << 32));
}

Swift::Double_optional __swiftcall ResultColumn.currentValue()()
{
  OUTLINED_FUNCTION_14();

  v2 = OUTLINED_FUNCTION_4_1();
  if (sqlite3_column_type(v2, v3) == 5)
  {
    v5 = 0;
  }

  else
  {
    swift_unownedRetainStrong();
    v6 = *(v1 + 32);

    v4 = sqlite3_column_double(v6, v0);
    v5 = LOBYTE(v4);
  }

  result.value = v4;
  result.is_nil = v5;
  return result;
}

const void *ResultColumn.currentValue()()
{
  swift_unownedRetainStrong();

  v0 = OUTLINED_FUNCTION_4_1();
  if (sqlite3_column_type(v0, v1) == 5)
  {
    return 0;
  }

  swift_unownedRetainStrong();

  v3 = OUTLINED_FUNCTION_4_1();
  result = sqlite3_column_blob(v3, v4);
  if (result)
  {
    v5 = result;
    swift_unownedRetainStrong();

    v6 = OUTLINED_FUNCTION_4_1();
    v8 = sqlite3_column_bytes(v6, v7);
    return MEMORY[0x259C323E0](v5, v8);
  }

  return result;
}

void ResultColumn.currentJsonObjectValue()(uint64_t a1@<X8>)
{
  __src[9] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = *v1;
  swift_unownedRetainStrong();
  v9 = *(v8 + 32);

  v10 = OUTLINED_FUNCTION_7_0();
  switch(sqlite3_column_type(v10, v11))
  {
    case 1:
      swift_unownedRetainStrong();

      v12 = OUTLINED_FUNCTION_7_0();
      v14 = sqlite3_column_int64(v12, v13);
      *(a1 + 24) = MEMORY[0x277D84A28];
      *a1 = v14;
      break;
    case 2:
      swift_unownedRetainStrong();

      v40 = OUTLINED_FUNCTION_7_0();
      v42 = sqlite3_column_double(v40, v41);
      *(a1 + 24) = MEMORY[0x277D839F8];
      *a1 = v42;
      break;
    case 3:
      swift_unownedRetainStrong();
      v9 = *(v8 + 32);

      v15 = OUTLINED_FUNCTION_7_0();
      if (!sqlite3_column_text(v15, v16))
      {
        v47 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v47);
        OUTLINED_FUNCTION_0_1();
        goto LABEL_18;
      }

      v17 = String.init(cString:)();
      v19 = v18;
      OUTLINED_FUNCTION_8();
      if (String.hasPrefix(_:)(v20) && (OUTLINED_FUNCTION_8(), String.hasSuffix(_:)(v21)) || (OUTLINED_FUNCTION_8(), String.hasPrefix(_:)(v22)) && (OUTLINED_FUNCTION_8(), String.hasSuffix(_:)(v23)))
      {
        static String.Encoding.utf8.getter();
        v24 = String.data(using:allowLossyConversion:)();
        v26 = v25;
        (*(v4 + 8))(v7, v3);
        if (v26 >> 60 == 15)
        {
          __break(1u);
        }

        else
        {

          v27 = objc_opt_self();
          isa = Data._bridgeToObjectiveC()().super.isa;
          outlined consume of Data?(v24, v26);
          __src[0] = 0;
          v29 = [v27 JSONObjectWithData:isa options:0 error:__src];

          v30 = __src[0];
          if (!v29)
          {
            v51 = v30;
            _convertNSErrorToError(_:)();

            goto LABEL_20;
          }

          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        *(a1 + 24) = MEMORY[0x277D837D0];
        *a1 = v17;
        *(a1 + 8) = v19;
      }

      break;
    case 4:
      swift_unownedRetainStrong();
      v9 = *(v8 + 32);

      v31 = OUTLINED_FUNCTION_7_0();
      v33 = sqlite3_column_blob(v31, v32);
      if (!v33)
      {
        v50 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v50);
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_3_1();
LABEL_18:
        *v46 = v48;
        v46[1] = v49;
        goto LABEL_19;
      }

      v34 = v33;
      swift_unownedRetainStrong();

      v35 = OUTLINED_FUNCTION_7_0();
      v37 = sqlite3_column_bytes(v35, v36);
      v38 = MEMORY[0x259C323E0](v34, v37);
      *(a1 + 24) = MEMORY[0x277CC9318];
      *a1 = v38;
      *(a1 + 8) = v39;
      break;
    case 5:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      break;
    default:
      v43 = OUTLINED_FUNCTION_20();
      v44 = OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v43);
      OUTLINED_FUNCTION_2_1(v44, v45);
LABEL_19:
      memcpy(v46 + 2, __src, 0x48uLL);
      *(v9 + 88) = 0;
LABEL_20:
      swift_willThrow();
      break;
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResultColumn.currentExpandedJsonString()()
{
  __src[9] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for String.Encoding();
  v2 = OUTLINED_FUNCTION_21(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v3 = *v0;
  v4 = *(v0 + 6);
  swift_unownedRetainStrong();

  v5 = OUTLINED_FUNCTION_7_0();
  v7 = 0xE400000000000000;
  v8 = 1819047278;
  switch(sqlite3_column_type(v5, v6))
  {
    case 1:
      swift_unownedRetainStrong();

      v9 = OUTLINED_FUNCTION_7_0();
      __src[0] = sqlite3_column_int64(v9, v10);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v11;
      goto LABEL_20;
    case 2:
      swift_unownedRetainStrong();

      v18 = OUTLINED_FUNCTION_7_0();
      sqlite3_column_double(v18, v19);
      Double.write<A>(to:)();
      v8 = 0;
      v7 = 0xE000000000000000;
      goto LABEL_20;
    case 3:
      swift_unownedRetainStrong();
      v7 = *(v3 + 32);

      v20 = OUTLINED_FUNCTION_7_0();
      if (!sqlite3_column_text(v20, v21))
      {
        v44 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v44);
        OUTLINED_FUNCTION_0_1();
        goto LABEL_17;
      }

      v8 = String.init(cString:)();
      v7 = v22;
      OUTLINED_FUNCTION_9();
      if (String.hasPrefix(_:)(v23))
      {
        OUTLINED_FUNCTION_9();
        if (String.hasSuffix(_:)(v24))
        {
          goto LABEL_20;
        }
      }

      OUTLINED_FUNCTION_9();
      if (String.hasPrefix(_:)(v25))
      {
        OUTLINED_FUNCTION_9();
        if (String.hasSuffix(_:)(v26))
        {
          goto LABEL_20;
        }
      }

      v27 = objc_opt_self();
      v28 = MEMORY[0x259C32A40](v8, v7);
      __src[0] = 0;
      v8 = [v27 dataWithJSONObject:v28 options:4 error:__src];

      v29 = __src[0];
      if (!v8)
      {
        v45 = v29;

        _convertNSErrorToError(_:)();

        goto LABEL_19;
      }

      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      static String.Encoding.utf8.getter();
      v8 = String.init(data:encoding:)();
      v34 = v33;
      v35 = outlined consume of Data._Representation(v30, v32);
      if (v34)
      {

        v7 = v34;
        goto LABEL_20;
      }

      __break(1u);
      break;
    case 4:
      swift_unownedRetainStrong();
      v7 = *(v3 + 32);

      v12 = OUTLINED_FUNCTION_7_0();
      v14 = sqlite3_column_blob(v12, v13);
      if (v14)
      {
        v15 = v14;
        swift_unownedRetainStrong();
        v16 = *(v3 + 32);

        v17 = sqlite3_column_bytes(v16, v4);
        MEMORY[0x259C323E0](v15, v17);
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_22();
        MEMORY[0x259C32B90](1819047278, v4);

        MEMORY[0x259C32B90](34, 0xE100000000000000);
        v8 = 34;
        v7 = 0xE100000000000000;
      }

      else
      {
        v41 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v41);
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_3_1();
LABEL_17:
        *v40 = v42;
        v40[1] = v43;
LABEL_18:
        memcpy(v40 + 2, __src, 0x48uLL);
        *(v7 + 88) = 0;
LABEL_19:
        swift_willThrow();
      }

LABEL_20:
      v35 = v8;
      v36 = v7;
      break;
    case 5:
      goto LABEL_20;
    default:
      v37 = OUTLINED_FUNCTION_20();
      v38 = OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v37);
      OUTLINED_FUNCTION_2_1(v38, v39);
      goto LABEL_18;
  }

  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResultColumn.currentJsonString()()
{
  __src[9] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for String.Encoding();
  v2 = OUTLINED_FUNCTION_21(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v3 = *v0;
  v4 = *(v0 + 6);
  swift_unownedRetainStrong();
  v5 = *(v3 + 32);

  v6 = OUTLINED_FUNCTION_5_1();
  v8 = 0xE400000000000000;
  v9 = 1819047278;
  switch(sqlite3_column_type(v6, v7))
  {
    case 1:
      swift_unownedRetainStrong();

      v10 = OUTLINED_FUNCTION_5_1();
      __src[0] = sqlite3_column_int64(v10, v11);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v12;
      goto LABEL_16;
    case 2:
      swift_unownedRetainStrong();

      v19 = OUTLINED_FUNCTION_5_1();
      sqlite3_column_double(v19, v20);
      Double.write<A>(to:)();
      v9 = 0;
      v8 = 0xE000000000000000;
      goto LABEL_16;
    case 3:
      swift_unownedRetainStrong();
      v5 = *(v3 + 32);

      v21 = OUTLINED_FUNCTION_5_1();
      if (!sqlite3_column_text(v21, v22))
      {
        v43 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v43);
        OUTLINED_FUNCTION_0_1();
        goto LABEL_13;
      }

      v23 = String.init(cString:)();
      v25 = v24;
      v26 = objc_opt_self();
      v27 = MEMORY[0x259C32A40](v23, v25);
      __src[0] = 0;
      v28 = [v26 dataWithJSONObject:v27 options:4 error:__src];

      v29 = __src[0];
      if (!v28)
      {
        v9 = v29;

        _convertNSErrorToError(_:)();

        goto LABEL_15;
      }

      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      static String.Encoding.utf8.getter();
      v9 = String.init(data:encoding:)();
      v8 = v33;
      v34 = outlined consume of Data._Representation(v30, v32);
      if (v8)
      {

        goto LABEL_16;
      }

      __break(1u);
      break;
    case 4:
      swift_unownedRetainStrong();
      v5 = *(v3 + 32);

      v13 = OUTLINED_FUNCTION_5_1();
      v15 = sqlite3_column_blob(v13, v14);
      if (v15)
      {
        v16 = v15;
        swift_unownedRetainStrong();
        v17 = *(v3 + 32);

        v18 = sqlite3_column_bytes(v17, v4);
        MEMORY[0x259C323E0](v16, v18);
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_22();
        MEMORY[0x259C32B90](v3, v17);

        MEMORY[0x259C32B90](34, 0xE100000000000000);
        v9 = 34;
        v8 = 0xE100000000000000;
      }

      else
      {
        v40 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v40);
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_3_1();
LABEL_13:
        *v39 = v41;
        v39[1] = v42;
LABEL_14:
        memcpy(v39 + 2, __src, 0x48uLL);
        *(v5 + 88) = 0;
LABEL_15:
        swift_willThrow();
      }

LABEL_16:
      v34 = v9;
      v35 = v8;
      break;
    case 5:
      goto LABEL_16;
    default:
      v36 = OUTLINED_FUNCTION_20();
      v37 = OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v36);
      OUTLINED_FUNCTION_2_1(v37, v38);
      goto LABEL_14;
  }

  result._object = v35;
  result._countAndFlagsBits = v34;
  return result;
}

void *ResultSetCursor.row()()
{
  v2 = v1;
  v3 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v4 = Dictionary.init(dictionaryLiteral:)();
  v5 = 0;
  v27 = *(v3 + 16);
  v28 = v3;
  for (i = (v3 + 56); ; i += 8)
  {
    if (v27 == v5)
    {
      goto LABEL_16;
    }

    if (v5 >= *(v28 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    *&v30 = *(i - 3);
    *(&v30 + 1) = v7;
    *&v31 = v8;
    DWORD2(v31) = v9;
    swift_unownedRetain();

    ResultColumn.currentJsonObjectValue()(v32);
    if (v2)
    {

      swift_unownedRelease();
LABEL_16:

      return v4;
    }

    v29 = v5;
    v30 = v32[0];
    v31 = v32[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v4;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v13 = v4[2];
    v14 = (v12 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_18;
    }

    v16 = v11;
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypSgGMd, &_ss17_NativeDictionaryVySSypSgGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15))
    {
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_20;
      }

      v16 = v18;
    }

    v4 = v33;
    if (v17)
    {
      outlined assign with take of Any?(&v30, v33[7] + 32 * v16);
      swift_unownedRelease();
    }

    else
    {
      v33[(v16 >> 6) + 8] |= 1 << v16;
      v20 = (v4[6] + 16 * v16);
      *v20 = v7;
      v20[1] = v8;
      v21 = v31;
      v22 = (v4[7] + 32 * v16);
      *v22 = v30;
      v22[1] = v21;

      swift_unownedRelease();

      v23 = v4[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_19;
      }

      v4[2] = v25;
    }

    v2 = 0;
    v5 = v29 + 1;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t ResultSetCursor.jsonNames()()
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for String.Encoding();
  v2 = OUTLINED_FUNCTION_21(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v3 = *(v0 + 48);
  if (v3)
  {
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = *(v4 + 16);
    v3 = MEMORY[0x277D84F90];
    if (v5)
    {
      v31 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v3 = v31;
      v28 = objc_opt_self();
      v6 = 0;
      v7 = (v4 + 48);
      v26 = v5;
      v27 = v4;
      while (1)
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
LABEL_17:
          __break(1u);
        }

        v8 = *(v7 - 1);
        v9 = *v7;
        swift_unownedRetain();

        v29 = MEMORY[0x259C331C0](v10);
        v11 = MEMORY[0x259C32A40](v8, v9);
        v30 = 0;
        v12 = [v28 dataWithJSONObject:v11 options:4 error:&v30];

        v13 = v30;
        if (!v12)
        {
          break;
        }

        v14 = v3;
        v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        static String.Encoding.utf8.getter();
        v18 = String.init(data:encoding:)();
        v20 = v19;
        outlined consume of Data._Representation(v15, v17);
        if (!v20)
        {
          goto LABEL_17;
        }

        objc_autoreleasePoolPop(v29);
        swift_unownedRelease();

        v3 = v14;
        v31 = v14;
        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v3 = v31;
        }

        ++v6;
        *(v3 + 16) = v22 + 1;
        v23 = v3 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v7 += 4;
        v4 = v27;
        if (v26 == v6)
        {

          goto LABEL_14;
        }
      }

      v24 = v13;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      objc_autoreleasePoolPop(v29);
      swift_unownedRelease();
    }

    else
    {
LABEL_14:
      *(v0 + 48) = v3;
    }
  }

  return v3;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResultSetCursor.expandedJsonDictString()()
{
  v0 = ResultSetCursor.expandedJsonDictString()(_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySSGSay25IntelligencePlatformQuery12ResultColumnVGG_SSsAE_pTg506_sSS25fg7Query12ij5VSSs5C120_pIggnozo_SS_ACtSSsAD_pIegnrzr_TR04_s25ab7Query15d48SetCursorC22expandedJsonDictStringSSyKFS2S_AA0D6E8VtKXEfU_Tf3nnnpf_nTf1cn_n);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySSGSay25IntelligencePlatformQuery12ResultColumnVGG_SSsAE_pTg506_sSS25fg7Query12ij5VSSs5C120_pIggnozo_SS_ACtSSsAD_pIegnrzr_TR04_s25ab7Query15d48SetCursorC22expandedJsonDictStringSSyKFS2S_AA0D6E8VtKXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  __src[9] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v4 - 8);
  v115 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  v116 = *(a1 + 16);
  v117 = v6;
  if (v6 >= v116)
  {
    v7 = v116;
  }

  else
  {
    v7 = v6;
  }

  v125 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = v125;
  v114 = a1;
  v113 = a2;
  v112 = v7;
  if (v7)
  {

    v9 = (a1 + 40);
    v10 = (a2 + 56);
    v11 = v7;
    while (1)
    {
      v120 = v8;
      v12 = *(v9 - 1);
      v13 = *v9;
      v14 = *v10;
      v15 = *(v10 - 1);
      v16 = *(v10 - 3);

      swift_unownedRetain();

      if (!v13)
      {
        goto LABEL_68;
      }

      v123 = v12;
      v124 = v13;

      v8 = &v123;
      MEMORY[0x259C32B90](58, 0xE100000000000000);
      swift_unownedRetainStrong();
      v17 = *(v16 + 32);

      v18 = sqlite3_column_type(v17, v14) - 1;
      v118 = v11;
      v119 = v15;
      v19 = 0xE400000000000000;
      v20 = 1819047278;
      switch(v18)
      {
        case 0:
          swift_unownedRetainStrong();
          v21 = *(v16 + 32);

          __src[0] = sqlite3_column_int64(v21, v14);
          v20 = dispatch thunk of CustomStringConvertible.description.getter();
          v19 = v22;
          goto LABEL_20;
        case 1:
          __src[0] = 0;
          __src[1] = 0xE000000000000000;
          swift_unownedRetainStrong();
          v32 = *(v16 + 32);

          sqlite3_column_double(v32, v14);
          Double.write<A>(to:)();
          v20 = __src[0];
          v19 = __src[1];
          goto LABEL_20;
        case 2:
          swift_unownedRetainStrong();
          v33 = *(v16 + 32);

          if (!sqlite3_column_text(v33, v14))
          {
            lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
            swift_allocError();
            v100 = v99;
            v101 = 0x7473206120746F4ELL;
            v102 = 0xEC000000676E6972;
LABEL_52:
            *v99 = v101;
            v99[1] = v102;
            memcpy(v99 + 2, __src, 0x48uLL);
            *(v100 + 88) = 0;
            swift_willThrow();

LABEL_58:

LABEL_59:

            swift_unownedRelease();

            return v8;
          }

          v20 = String.init(cString:)();
          v19 = v34;
          v35._countAndFlagsBits = 123;
          v35._object = 0xE100000000000000;
          if (!String.hasPrefix(_:)(v35) || (v36._countAndFlagsBits = 125, v36._object = 0xE100000000000000, !String.hasSuffix(_:)(v36)))
          {
            v37._countAndFlagsBits = 91;
            v37._object = 0xE100000000000000;
            if (!String.hasPrefix(_:)(v37) || (v38._countAndFlagsBits = 93, v38._object = 0xE100000000000000, !String.hasSuffix(_:)(v38)))
            {
              v39 = objc_opt_self();
              v40 = MEMORY[0x259C32A40](v20, v19);
              __src[0] = 0;
              v41 = [v39 dataWithJSONObject:v40 options:4 error:__src];

              v8 = __src[0];
              if (!v41)
              {
                v109 = __src[0];

                _convertNSErrorToError(_:)();

                swift_willThrow();

                goto LABEL_58;
              }

              v42 = __src[0];
              v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v45 = v44;

              static String.Encoding.utf8.getter();
              v46 = v43;
              v20 = String.init(data:encoding:)();
              v48 = v47;
              outlined consume of Data._Representation(v46, v45);
              if (!v48)
              {
                goto LABEL_69;
              }

              v19 = v48;
            }
          }

LABEL_20:
          MEMORY[0x259C32B90](v20, v19);

          v49 = v123;
          v50 = v124;

          swift_unownedRelease();

          v8 = v120;
          v125 = v120;
          v52 = v120[2];
          v51 = v120[3];
          v53 = v118;
          if (v52 >= v51 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
            v8 = v125;
          }

          v10 += 8;
          v8[2] = v52 + 1;
          v54 = &v8[2 * v52];
          v54[4] = v49;
          v54[5] = v50;
          v9 += 2;
          v11 = v53 - 1;
          if (!v11)
          {
            goto LABEL_25;
          }

          break;
        case 3:
          v121 = 34;
          v122 = 0xE100000000000000;
          swift_unownedRetainStrong();
          v23 = *(v16 + 32);

          v24 = sqlite3_column_blob(v23, v14);
          if (!v24)
          {
            lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
            swift_allocError();
            v100 = v99;
            v101 = 0x6C62206120746F4ELL;
            v102 = 0xEA0000000000626FLL;
            goto LABEL_52;
          }

          v25 = v24;
          swift_unownedRetainStrong();
          v26 = *(v16 + 32);

          v27 = sqlite3_column_bytes(v26, v14);
          v28 = MEMORY[0x259C323E0](v25, v27);
          v30 = v29;
          v31 = Data.base64EncodedString(options:)(0);
          outlined consume of Data._Representation(v28, v30);
          MEMORY[0x259C32B90](v31._countAndFlagsBits, v31._object);

          MEMORY[0x259C32B90](34, 0xE100000000000000);
          v20 = v121;
          v19 = v122;
          goto LABEL_20;
        case 4:
          goto LABEL_20;
        default:

          v8 = 0x80000002553A7D30;
          lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
          swift_allocError();
          v98 = v97;
          *v97 = 0xD000000000000014;
          v97[1] = 0x80000002553A7D30;
          memcpy(v97 + 2, __src, 0x48uLL);
          *(v98 + 88) = 0;
          swift_willThrow();

          goto LABEL_59;
      }
    }
  }

LABEL_25:
  v55 = v112;
  v56 = (v113 + 32 * v112 + 56);
  v57 = (v114 + 16 * v112 + 40);
  while (2)
  {
    if (v116 == v55)
    {
LABEL_48:

      return v8;
    }

    if (v55 >= v116)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (__OFADD__(v55, 1))
    {
      goto LABEL_65;
    }

    if (v117 == v55)
    {
      goto LABEL_48;
    }

    if (v55 >= v117)
    {
      goto LABEL_66;
    }

    if (__OFADD__(v55, 1))
    {
      goto LABEL_67;
    }

    v120 = v8;
    v58 = *v57;
    v59 = *(v56 - 3);
    v60 = *v56;
    v123 = *(v57 - 1);
    v124 = v58;
    swift_bridgeObjectRetain_n();
    swift_unownedRetain();

    v8 = &v123;
    MEMORY[0x259C32B90](58, 0xE100000000000000);
    swift_unownedRetainStrong();
    v61 = *(v59 + 32);

    v62 = sqlite3_column_type(v61, v60) - 1;
    v119 = v57;
    v63 = 0xE400000000000000;
    v64 = 1819047278;
    switch(v62)
    {
      case 0:
        swift_unownedRetainStrong();
        v65 = *(v59 + 32);

        __src[0] = sqlite3_column_int64(v65, v60);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v66;
        goto LABEL_45;
      case 1:
        __src[0] = 0;
        __src[1] = 0xE000000000000000;
        swift_unownedRetainStrong();
        v76 = *(v59 + 32);

        sqlite3_column_double(v76, v60);
        Double.write<A>(to:)();
        v64 = __src[0];
        v63 = __src[1];
        goto LABEL_45;
      case 2:
        swift_unownedRetainStrong();
        v77 = *(v59 + 32);

        if (!sqlite3_column_text(v77, v60))
        {
          lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
          swift_allocError();
          v106 = v105;
          v107 = 0x7473206120746F4ELL;
          v108 = 0xEC000000676E6972;
LABEL_56:
          *v105 = v107;
          v105[1] = v108;
          memcpy(v105 + 2, __src, 0x48uLL);
          *(v106 + 88) = 0;
          swift_willThrow();

LABEL_62:

          swift_unownedRelease();

          return v8;
        }

        v64 = String.init(cString:)();
        v63 = v78;
        v79._countAndFlagsBits = 123;
        v79._object = 0xE100000000000000;
        if (String.hasPrefix(_:)(v79) && (v80._countAndFlagsBits = 125, v80._object = 0xE100000000000000, String.hasSuffix(_:)(v80)) || (v81._countAndFlagsBits = 91, v81._object = 0xE100000000000000, String.hasPrefix(_:)(v81)) && (v82._countAndFlagsBits = 93, v82._object = 0xE100000000000000, String.hasSuffix(_:)(v82)))
        {
LABEL_45:
          MEMORY[0x259C32B90](v64, v63);

          swift_unownedRelease();

          v92 = v123;
          v93 = v124;
          v8 = v120;
          v125 = v120;
          v95 = v120[2];
          v94 = v120[3];
          if (v95 >= v94 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1);
            v8 = v125;
          }

          v8[2] = v95 + 1;
          v96 = &v8[2 * v95];
          v96[4] = v92;
          v96[5] = v93;
          v56 += 8;
          ++v55;
          v57 = v119 + 2;
          continue;
        }

        v83 = objc_opt_self();
        v84 = MEMORY[0x259C32A40](v64, v63);
        __src[0] = 0;
        v85 = [v83 dataWithJSONObject:v84 options:4 error:__src];

        v8 = __src[0];
        if (!v85)
        {
          v110 = __src[0];

          _convertNSErrorToError(_:)();

LABEL_61:
          swift_willThrow();
          goto LABEL_62;
        }

        v86 = __src[0];
        v118 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v87;

        static String.Encoding.utf8.getter();
        v88 = v118;
        v64 = String.init(data:encoding:)();
        v90 = v89;
        result = outlined consume of Data._Representation(v88, v112);
        if (v90)
        {

          v63 = v90;
          goto LABEL_45;
        }

        __break(1u);
        return result;
      case 3:
        v121 = 34;
        v122 = 0xE100000000000000;
        swift_unownedRetainStrong();
        v67 = *(v59 + 32);

        v68 = sqlite3_column_blob(v67, v60);
        if (v68)
        {
          v69 = v68;
          swift_unownedRetainStrong();
          v70 = *(v59 + 32);

          v71 = sqlite3_column_bytes(v70, v60);
          v72 = MEMORY[0x259C323E0](v69, v71);
          v74 = v73;
          v75 = Data.base64EncodedString(options:)(0);
          outlined consume of Data._Representation(v72, v74);
          MEMORY[0x259C32B90](v75._countAndFlagsBits, v75._object);

          MEMORY[0x259C32B90](34, 0xE100000000000000);
          v64 = v121;
          v63 = v122;
          goto LABEL_45;
        }

        lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        swift_allocError();
        v106 = v105;
        v107 = 0x6C62206120746F4ELL;
        v108 = 0xEA0000000000626FLL;
        goto LABEL_56;
      case 4:
        goto LABEL_45;
      default:

        v8 = 0x80000002553A7D30;
        lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        swift_allocError();
        v104 = v103;
        *v103 = 0xD000000000000014;
        v103[1] = 0x80000002553A7D30;
        memcpy(v103 + 2, __src, 0x48uLL);
        *(v104 + 88) = 0;
        goto LABEL_61;
    }
  }
}

sqlite3_stmt *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySSGSay25IntelligencePlatformQuery12ResultColumnVGG_SSsAE_pTg506_sSS25fg7Query12ij5VSSs5C112_pIggnozo_SS_ACtSSsAD_pIegnrzr_TR04_s25ab7Query15d40SetCursorC14jsonDictStringSSyKFS2S_AA0D6E8VtKXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  __src[9] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v4 - 8);
  v104 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  v105 = *(a1 + 16);
  v106 = v6;
  if (v6 >= v105)
  {
    v7 = v105;
  }

  else
  {
    v7 = v6;
  }

  v114 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = v114;
  v102 = a1;
  v101 = a2;
  v107 = v7;
  if (v7)
  {

    v9 = (a1 + 40);
    v10 = (a2 + 56);
    while (1)
    {
      v109 = v8;
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *v10;
      v14 = *(v10 - 1);
      v15 = *(v10 - 3);

      swift_unownedRetain();

      if (!v12)
      {
        goto LABEL_60;
      }

      v112 = v11;
      v113 = v12;

      MEMORY[0x259C32B90](58, 0xE100000000000000);
      swift_unownedRetainStrong();
      v16 = *(v15 + 32);

      v17 = sqlite3_column_type(v16, v13) - 1;
      v108 = v14;
      v18 = 0xE400000000000000;
      v19 = 1819047278;
      switch(v17)
      {
        case 0:
          swift_unownedRetainStrong();
          v20 = *(v15 + 32);

          __src[0] = sqlite3_column_int64(v20, v13);
          v19 = dispatch thunk of CustomStringConvertible.description.getter();
          v18 = v21;
          break;
        case 1:
          __src[0] = 0;
          __src[1] = 0xE000000000000000;
          swift_unownedRetainStrong();
          v30 = *(v15 + 32);

          sqlite3_column_double(v30, v13);
          Double.write<A>(to:)();
          v19 = __src[0];
          v18 = __src[1];
          break;
        case 2:
          swift_unownedRetainStrong();
          v8 = *(v15 + 32);

          if (!sqlite3_column_text(v8, v13))
          {
            lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
            swift_allocError();
            v88 = v87;
            v89 = 0x7473206120746F4ELL;
            v90 = 0xEC000000676E6972;
            goto LABEL_44;
          }

          v31 = String.init(cString:)();
          v33 = v32;
          v34 = objc_opt_self();
          v35 = MEMORY[0x259C32A40](v31, v33);
          __src[0] = 0;
          v36 = [v34 dataWithJSONObject:v35 options:4 error:__src];

          v8 = __src[0];
          if (!v36)
          {
            v91 = __src[0];

            _convertNSErrorToError(_:)();

            swift_willThrow();

LABEL_46:

LABEL_47:

            swift_unownedRelease();

            return v8;
          }

          v103 = v33;
          v37 = __src[0];
          v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v39;

          static String.Encoding.utf8.getter();
          v19 = String.init(data:encoding:)();
          v18 = v41;
          outlined consume of Data._Representation(v38, v40);
          if (!v18)
          {
            goto LABEL_61;
          }

          break;
        case 3:
          v110 = 34;
          v111 = 0xE100000000000000;
          swift_unownedRetainStrong();
          v8 = *(v15 + 32);

          v22 = sqlite3_column_blob(v8, v13);
          if (!v22)
          {
            lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
            swift_allocError();
            v88 = v87;
            v89 = 0x6C62206120746F4ELL;
            v90 = 0xEA0000000000626FLL;
LABEL_44:
            *v87 = v89;
            v87[1] = v90;
            memcpy(v87 + 2, __src, 0x48uLL);
            *(v88 + 88) = 0;
            swift_willThrow();

            goto LABEL_46;
          }

          v23 = v22;
          swift_unownedRetainStrong();
          v24 = *(v15 + 32);

          v25 = sqlite3_column_bytes(v24, v13);
          v26 = MEMORY[0x259C323E0](v23, v25);
          v28 = v27;
          v29 = Data.base64EncodedString(options:)(0);
          outlined consume of Data._Representation(v26, v28);
          MEMORY[0x259C32B90](v29._countAndFlagsBits, v29._object);

          MEMORY[0x259C32B90](34, 0xE100000000000000);
          v19 = v110;
          v18 = v111;
          break;
        case 4:
          break;
        default:

          v8 = 0x80000002553A7D30;
          lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
          swift_allocError();
          v86 = v85;
          *v85 = 0xD000000000000014;
          v85[1] = 0x80000002553A7D30;
          memcpy(v85 + 2, __src, 0x48uLL);
          *(v86 + 88) = 0;
          swift_willThrow();

          goto LABEL_47;
      }

      MEMORY[0x259C32B90](v19, v18);

      v42 = v112;
      v43 = v113;

      swift_unownedRelease();

      v8 = v109;
      v114 = v109;
      v45 = *(v109 + 2);
      v44 = *(v109 + 3);
      if (v45 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
        v8 = v114;
      }

      v10 += 8;
      *(v8 + 2) = v45 + 1;
      v46 = (v8 + 16 * v45);
      v46[4] = v42;
      v46[5] = v43;
      v9 += 2;
      if (!--v7)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_21:
  v47 = v107;
  v48 = (v101 + 32 * v107 + 56);
  v49 = (v102 + 16 * v107 + 40);
  while (2)
  {
    if (v105 == v47)
    {
LABEL_40:

      return v8;
    }

    if (v47 >= v105)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
    }

    if (__OFADD__(v47, 1))
    {
      goto LABEL_57;
    }

    if (v106 == v47)
    {
      goto LABEL_40;
    }

    if (v47 >= v106)
    {
      goto LABEL_58;
    }

    if (__OFADD__(v47, 1))
    {
      goto LABEL_59;
    }

    v107 = v47;
    v109 = v8;
    v50 = *v49;
    v51 = *(v48 - 3);
    v52 = *(v48 - 1);
    v53 = *v48;
    v112 = *(v49 - 1);
    v113 = v50;
    swift_bridgeObjectRetain_n();
    swift_unownedRetain();

    MEMORY[0x259C32B90](58, 0xE100000000000000);
    swift_unownedRetainStrong();
    v54 = *(v51 + 32);

    v55 = sqlite3_column_type(v54, v53) - 1;
    v108 = v52;
    v56 = 0xE400000000000000;
    v57 = 1819047278;
    switch(v55)
    {
      case 0:
        swift_unownedRetainStrong();
        v58 = *(v51 + 32);

        __src[0] = sqlite3_column_int64(v58, v53);
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v59;
        goto LABEL_37;
      case 1:
        __src[0] = 0;
        __src[1] = 0xE000000000000000;
        swift_unownedRetainStrong();
        v68 = *(v51 + 32);

        sqlite3_column_double(v68, v53);
        Double.write<A>(to:)();
        v57 = __src[0];
        v56 = __src[1];
        goto LABEL_37;
      case 2:
        swift_unownedRetainStrong();
        v8 = *(v51 + 32);

        if (!sqlite3_column_text(v8, v53))
        {
          lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
          swift_allocError();
          v95 = v94;
          v96 = 0x7473206120746F4ELL;
          v97 = 0xEC000000676E6972;
          goto LABEL_51;
        }

        v69 = String.init(cString:)();
        v71 = v70;
        v72 = objc_opt_self();
        v73 = MEMORY[0x259C32A40](v69, v71);
        __src[0] = 0;
        v74 = [v72 dataWithJSONObject:v73 options:4 error:__src];

        v8 = __src[0];
        if (!v74)
        {
          v98 = __src[0];

          _convertNSErrorToError(_:)();

          swift_willThrow();
          goto LABEL_53;
        }

        v75 = __src[0];
        v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;

        static String.Encoding.utf8.getter();
        v57 = String.init(data:encoding:)();
        v56 = v79;
        outlined consume of Data._Representation(v76, v78);
        if (!v56)
        {
          goto LABEL_62;
        }

        goto LABEL_37;
      case 3:
        v110 = 34;
        v111 = 0xE100000000000000;
        swift_unownedRetainStrong();
        v8 = *(v51 + 32);

        v60 = sqlite3_column_blob(v8, v53);
        if (v60)
        {
          v61 = v60;
          swift_unownedRetainStrong();
          v62 = *(v51 + 32);

          v63 = sqlite3_column_bytes(v62, v53);
          v64 = MEMORY[0x259C323E0](v61, v63);
          v66 = v65;
          v67 = Data.base64EncodedString(options:)(0);
          outlined consume of Data._Representation(v64, v66);
          MEMORY[0x259C32B90](v67._countAndFlagsBits, v67._object);

          MEMORY[0x259C32B90](34, 0xE100000000000000);
          v57 = v110;
          v56 = v111;
LABEL_37:
          MEMORY[0x259C32B90](v57, v56);

          swift_unownedRelease();

          v80 = v112;
          v81 = v113;
          v8 = v109;
          v114 = v109;
          v83 = *(v109 + 2);
          v82 = *(v109 + 3);
          if (v83 >= v82 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1);
            v8 = v114;
          }

          *(v8 + 2) = v83 + 1;
          v84 = (v8 + 16 * v83);
          v84[4] = v80;
          v84[5] = v81;
          v48 += 8;
          v47 = v107 + 1;
          v49 += 2;
          continue;
        }

        lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        swift_allocError();
        v95 = v94;
        v96 = 0x6C62206120746F4ELL;
        v97 = 0xEA0000000000626FLL;
LABEL_51:
        *v94 = v96;
        v94[1] = v97;
        memcpy(v94 + 2, __src, 0x48uLL);
        *(v95 + 88) = 0;
        swift_willThrow();

LABEL_53:

        swift_unownedRelease();

LABEL_54:

        return v8;
      case 4:
        goto LABEL_37;
      default:

        v8 = 0x80000002553A7D30;
        lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        swift_allocError();
        v93 = v92;
        *v92 = 0xD000000000000014;
        v92[1] = 0x80000002553A7D30;
        memcpy(v92 + 2, __src, 0x48uLL);
        *(v93 + 88) = 0;
        swift_willThrow();

        swift_unownedRelease();

        goto LABEL_54;
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResultSetCursor.jsonArrString()()
{
  v0 = ResultSetCursor.expandedJsonArrString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t ResultSetCursor.expandedJsonArrString()()
{
  __src[9] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for String.Encoding();
  v2 = OUTLINED_FUNCTION_21(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v3 = *(v0 + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_31:
    __src[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v48 = BidirectionalCollection<>.joined(separator:)();
    v50 = v49;

    MEMORY[0x259C32B90](v48, v50);

    MEMORY[0x259C32B90](93, 0xE100000000000000);
    return 91;
  }

  v64 = MEMORY[0x277D84F90];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v6 = 0;
  v5 = v64;
  v7 = (v3 + 56);
  v62 = v4;
  v63 = v3;
  while (2)
  {
    if (v6 >= *(v3 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
    }

    v8 = *(v7 - 3);
    v9 = *v7;
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v10 = OUTLINED_FUNCTION_4_1();
    switch(sqlite3_column_type(v10, v11))
    {
      case 1:
        swift_unownedRetainStrong();

        v12 = OUTLINED_FUNCTION_4_1();
        __src[0] = sqlite3_column_int64(v12, v13);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = v15;
        goto LABEL_6;
      case 2:
        __src[0] = 0;
        __src[1] = 0xE000000000000000;
        swift_unownedRetainStrong();

        v41 = OUTLINED_FUNCTION_4_1();
        sqlite3_column_double(v41, v42);
        Double.write<A>(to:)();
        swift_unownedRelease();

        v14 = __src[0];
        v16 = __src[1];
        goto LABEL_27;
      case 3:
        swift_unownedRetainStrong();

        v17 = OUTLINED_FUNCTION_4_1();
        if (!sqlite3_column_text(v17, v18))
        {

          v57 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
          OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v57);
          OUTLINED_FUNCTION_15();
          v55 = v58 & 0xFFFFFFFFFFFFLL | 0x7473000000000000;
          v56 = 0xEC000000676E6972;
          goto LABEL_35;
        }

        v14 = String.init(cString:)();
        v16 = v19;
        OUTLINED_FUNCTION_10();
        if (String.hasPrefix(_:)(v20) && (OUTLINED_FUNCTION_10(), String.hasSuffix(_:)(v21)) || (OUTLINED_FUNCTION_10(), String.hasPrefix(_:)(v22)) && (OUTLINED_FUNCTION_10(), String.hasSuffix(_:)(v23)))
        {
LABEL_6:
          swift_unownedRelease();

          goto LABEL_27;
        }

        v24 = objc_opt_self();
        v25 = MEMORY[0x259C32A40](v14, v16);
        __src[0] = 0;
        v26 = [v24 dataWithJSONObject:v25 options:4 error:__src];

        v27 = __src[0];
        if (!v26)
        {
          v59 = v27;

          _convertNSErrorToError(_:)();

          goto LABEL_37;
        }

        v61 = v5;
        v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        static String.Encoding.utf8.getter();
        v14 = String.init(data:encoding:)();
        v32 = v31;
        outlined consume of Data._Representation(v28, v30);
        if (!v32)
        {
          goto LABEL_40;
        }

        swift_unownedRelease();

        v16 = v32;
        goto LABEL_26;
      case 4:
        swift_unownedRetainStrong();

        v33 = OUTLINED_FUNCTION_4_1();
        if (sqlite3_column_blob(v33, v34))
        {
          swift_unownedRetainStrong();
          v35 = *(v8 + 32);

          v36 = sqlite3_column_bytes(v35, v9);
          v61 = v5;
          if (v36)
          {
            v37 = v36;
            if (v36 <= 14)
            {
              v39 = Data.InlineData.init(_:)();
              v40 = v60 & 0xF00000000000000 | v43 & 0xFFFFFFFFFFFFFFLL;
              v60 = v40;
            }

            else
            {
              type metadata accessor for __DataStorage();
              swift_allocObject();
              if (v37 == 0x7FFFFFFF)
              {
                v38 = __DataStorage.init(bytes:length:)();
                type metadata accessor for Data.RangeReference();
                v39 = swift_allocObject();
                *(v39 + 16) = xmmword_2552FAF20;
                v40 = v38 | 0x8000000000000000;
              }

              else
              {
                v39 = v37 << 32;
                v40 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
              }
            }
          }

          else
          {
            v39 = 0;
            v40 = 0xC000000000000000;
          }

          v44 = Data.base64EncodedString(options:)(0);
          outlined consume of Data._Representation(v39, v40);
          MEMORY[0x259C32B90](v44._countAndFlagsBits, v44._object);

          MEMORY[0x259C32B90](34, 0xE100000000000000);
          swift_unownedRelease();

          v14 = 34;
          v16 = 0xE100000000000000;
LABEL_26:
          v5 = v61;
LABEL_27:
          v46 = v5[2];
          v45 = v5[3];
          if (v46 >= v45 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
          }

          ++v6;
          v5[2] = v46 + 1;
          v47 = &v5[2 * v46];
          v47[4] = v14;
          v47[5] = v16;
          v7 += 8;
          v3 = v63;
          if (v62 == v6)
          {

            goto LABEL_31;
          }

          continue;
        }

        v54 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v54);
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_3_1();
LABEL_35:
        *v53 = v55;
        v53[1] = v56;
LABEL_36:
        memcpy(v53 + 2, __src, 0x48uLL);
        *(v9 + 88) = 0;
LABEL_37:
        swift_willThrow();
        swift_unownedRelease();

      case 5:
        swift_unownedRelease();

        v16 = 0xE400000000000000;
        v14 = 1819047278;
        goto LABEL_27;
      default:

        v52 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v52);
        v9 = v53;
        *v53 = 0xD000000000000014;
        v53[1] = 0x80000002553A7D30;
        goto LABEL_36;
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResultSetCursor.jsonDictString()()
{
  v0 = ResultSetCursor.expandedJsonDictString()(_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySSGSay25IntelligencePlatformQuery12ResultColumnVGG_SSsAE_pTg506_sSS25fg7Query12ij5VSSs5C112_pIggnozo_SS_ACtSSsAD_pIegnrzr_TR04_s25ab7Query15d40SetCursorC14jsonDictStringSSyKFS2S_AA0D6E8VtKXEfU_Tf3nnnpf_nTf1cn_n);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t ResultSetCursor.expandedJsonDictString()(uint64_t (*a1)(uint64_t, uint64_t))
{
  result = ResultSetCursor.jsonNames()();
  if (!v2)
  {
    v5 = result;
    v6 = *(v1 + 16);

    a1(v5, v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v7 = BidirectionalCollection<>.joined(separator:)();
    v9 = v8;

    MEMORY[0x259C32B90](v7, v9);

    MEMORY[0x259C32B90](125, 0xE100000000000000);
    return 123;
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

unint64_t lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error()
{
  result = lazy protocol witness table cache variable for type SQLConnection.Error and conformance SQLConnection.Error;
  if (!lazy protocol witness table cache variable for type SQLConnection.Error and conformance SQLConnection.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLConnection.Error and conformance SQLConnection.Error);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ResultColumn(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

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

uint64_t storeEnumTagSinglePayload for ResultColumn(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

ValueMetadata *type metadata accessor for ResultColumn()
{
  return &type metadata for ResultColumn;
}

{
  return &type metadata for ResultColumn;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalResultSet(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IncrementalResultSet(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO6ColumnVGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO6ColumnVGMR);
  v10 = *(type metadata accessor for LibraryArtifact.Column() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for LibraryArtifact.Column() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySPys4Int8VGGMd, &_ss23_ContiguousArrayStorageCySPys4Int8VGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResultSetCursor.expandedJsonArrString()()
{
  v2 = ResultSetCursor.jsonArrString()();
  object = v2._object;
  countAndFlagsBits = v2._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

void *OUTLINED_FUNCTION_11(int a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  return memcpy((a2 + 16), __srca, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_14()
{

  return swift_unownedRetainStrong();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return swift_unownedRetainStrong();
}

uint64_t OUTLINED_FUNCTION_17()
{

  return Data.base64EncodedString(options:)(0)._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1)
{
  *(v1 + 88) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_unownedRetainStrong();
}

unint64_t OUTLINED_FUNCTION_20()
{

  return lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
}

uint64_t OUTLINED_FUNCTION_22()
{

  return outlined consume of Data._Representation(v0, v1);
}

uint64_t IncrementalIdentifier.Identifier.asString.getter(uint64_t a1, uint64_t a2)
{
  return IncrementalIdentifier.Identifier.asString.getter(a1, a2);
}

{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_3();
  v4 = MEMORY[0x259C331C0]();
  v5 = type metadata accessor for JSONEncoder();
  OUTLINED_FUNCTION_53(v5);
  JSONEncoder.init()();
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v2)
  {
    static String.Encoding.utf8.getter();
    OUTLINED_FUNCTION_37();
    String.init(data:encoding:)();
    v7 = v6;
    v8 = OUTLINED_FUNCTION_37();
    outlined consume of Data._Representation(v8, v9);
    if (v7)
    {

      objc_autoreleasePoolPop(v4);
      return OUTLINED_FUNCTION_35();
    }

    v11 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v11);
    v13 = v12;
    *v12 = 0xD00000000000001BLL;
    v12[1] = 0x80000002553A7DB0;
    memcpy(v12 + 2, __src, 0x48uLL);
    *(v13 + 88) = 0;
    swift_willThrow();
  }

  objc_autoreleasePoolPop(v4);
  return OUTLINED_FUNCTION_35();
}

uint64_t specialized IncrementalIdentifier.Identifier.asString.getter()
{
  v0 = MEMORY[0x259C331C0]();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_71();
  specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(v1, v2, v3, v4);
  objc_autoreleasePoolPop(v0);
  return OUTLINED_FUNCTION_13_0();
}

_BYTE *specialized IncrementalIdentifier.Identifier.asString.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x259C331C0]();
  v7 = specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(a1, a2, a3);
  objc_autoreleasePoolPop(v6);
  return v7;
}

_BYTE *specialized IncrementalIdentifier.Identifier.asString.getter()
{
  v1 = MEMORY[0x259C331C0]();
  v2 = specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(v0);
  objc_autoreleasePoolPop(v1);
  return v2;
}

_BYTE *specialized IncrementalIdentifier.Identifier.asString.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x259C331C0]();
  v9 = specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(a1, a2, a3, a4);
  objc_autoreleasePoolPop(v8);
  return v9;
}

_BYTE *specialized IncrementalIdentifier.Identifier.asString.getter(uint64_t a1)
{
  v2 = MEMORY[0x259C331C0]();
  v3 = specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(a1);
  objc_autoreleasePoolPop(v2);
  return v3;
}

{
  v1 = a1;
  v2 = MEMORY[0x259C331C0]();
  v3 = specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(v1);
  objc_autoreleasePoolPop(v2);
  return v3;
}

_BYTE *specialized IncrementalIdentifier.Identifier.asString.getter(double a1)
{
  v2 = MEMORY[0x259C331C0]();
  v3 = specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(a1);
  objc_autoreleasePoolPop(v2);
  return v3;
}

_BYTE *specialized IncrementalIdentifier.Identifier.asString.getter(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x259C331C0]();
  v5 = specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(a1, a2);
  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t IncrementalIdentifier.Identifier.asData.getter(uint64_t a1, uint64_t a2)
{
  return IncrementalIdentifier.Identifier.asData.getter(a1, a2);
}

{
  v2 = MEMORY[0x259C331C0]();
  v3 = type metadata accessor for JSONEncoder();
  OUTLINED_FUNCTION_53(v3);
  JSONEncoder.init()();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  objc_autoreleasePoolPop(v2);
  return v4;
}

void IncrementalIdentifier.Identifier.init(string:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  IncrementalIdentifier.Identifier.init(string:)(a1, a2, a3, a4);
}

{
  OUTLINED_FUNCTION_23();
  v4 = type metadata accessor for String.Encoding();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v20 = MEMORY[0x259C331C0]();
  static String.Encoding.utf8.getter();
  OUTLINED_FUNCTION_71();
  v11 = String.data(using:allowLossyConversion:)();
  v13 = v12;
  (*(v6 + 8))(v10, v4);
  if (v13 >> 60 == 15)
  {
    v14 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v14);
    v16 = v15;
    v17 = OUTLINED_FUNCTION_26(v15, 31);
    memcpy(v17, v19, 0x48uLL);
    *(v16 + 88) = 0;
    swift_willThrow();
  }

  else
  {
    v18 = type metadata accessor for JSONDecoder();
    OUTLINED_FUNCTION_53(v18);
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data?(v11, v13);
  }

  objc_autoreleasePoolPop(v20);

  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24();
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE6stringxSS_tKcfCAC6StreamO6SourceV_Tt1g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a5@<X8>)
{
  v9 = MEMORY[0x259C331C0]();
  specialized closure #1 in IncrementalIdentifier.Identifier.init(string:)(a1, a2);
  objc_autoreleasePoolPop(v9);

  if (!v5)
  {
    *a5 = v11;
    a5[1] = v12;
  }

  return result;
}

double _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE6stringxSS_tKcfCAC6StreamOADV_Tt1g5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  specialized closure #1 in IncrementalIdentifier.Identifier.init(string:)(a1, a2);
  objc_autoreleasePoolPop(v7);

  if (!v3)
  {
    result = *&v9;
    *a3 = v9;
    *(a3 + 16) = v10;
  }

  return result;
}

double _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE6stringxSS_tKcfCAC6StreamO8BookmarkV_Tt1g5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  specialized closure #1 in IncrementalIdentifier.Identifier.init(string:)(a1, a2);
  objc_autoreleasePoolPop(v7);

  if (!v3)
  {
    *a3 = v9;
    *(a3 + 8) = v10;
    result = *&v11;
    *(a3 + 16) = v11;
    *(a3 + 32) = v12;
    *(a3 + 40) = v13;
  }

  return result;
}

double _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE6stringxSS_tKcfCAC6StreamO5StoreV_Tt1g5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  specialized closure #1 in IncrementalIdentifier.Identifier.init(string:)(a1, a2);
  objc_autoreleasePoolPop(v7);

  if (!v3)
  {
    result = *&v9;
    *a3 = v9;
    *(a3 + 16) = v10;
    *(a3 + 24) = v11;
  }

  return result;
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE6stringxSS_tKcfCAC4ViewO05Int64E0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  specialized closure #1 in IncrementalIdentifier.Identifier.init(string:)(a1, a2);
  objc_autoreleasePoolPop(v7);

  if (!v3)
  {
    *a3 = v9;
  }

  return result;
}

double _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE6stringxSS_tKcfCAC4ViewO8BookmarkV_Tt1g5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  specialized closure #1 in IncrementalIdentifier.Identifier.init(string:)(a1, a2);
  objc_autoreleasePoolPop(v7);

  if (!v3)
  {
    result = v9;
    *a3 = v9;
  }

  return result;
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE6stringxSS_tKcfCAC4ViewO5StoreV_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  specialized closure #1 in IncrementalIdentifier.Identifier.init(string:)(a1, a2);
  objc_autoreleasePoolPop(v7);

  if (!v3)
  {
    *a3 = v9;
    a3[1] = v10;
  }

  return result;
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE6stringxSS_tKcfCAC10SourceTypeO_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  specialized closure #1 in IncrementalIdentifier.Identifier.init(string:)(a1, a2);
  objc_autoreleasePoolPop(v7);

  if (!v3)
  {
    *a3 = v9;
  }

  return result;
}

void IncrementalIdentifier.Identifier.init(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  IncrementalIdentifier.Identifier.init(data:)(a1, a2, a3, a4);
}

{
  OUTLINED_FUNCTION_23();
  v4 = MEMORY[0x259C331C0]();
  v5 = type metadata accessor for JSONDecoder();
  OUTLINED_FUNCTION_53(v5);
  JSONDecoder.init()();
  OUTLINED_FUNCTION_75();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v4);
  v6 = OUTLINED_FUNCTION_28();
  outlined consume of Data._Representation(v6, v7);
  OUTLINED_FUNCTION_24();
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE4datax10Foundation4DataV_tKcfCAC10SourceTypeO_Tt1g5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v7);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v9;
  }

  return result;
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE4datax10Foundation4DataV_tKcfCAC4ViewO05Int64E0V_Tt1g5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v7);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v9;
  }

  return result;
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE4datax10Foundation4DataV_tKcfCAC4ViewO5StoreV_Tt1g5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v7);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v9;
    a3[1] = v10;
  }

  return result;
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE4datax10Foundation4DataV_tKcfCAC6StreamO6SourceV_Tt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  OUTLINED_FUNCTION_67();
  MEMORY[0x259C331C0]();
  OUTLINED_FUNCTION_65();
  v8 = type metadata accessor for JSONDecoder();
  OUTLINED_FUNCTION_53(v8);
  JSONDecoder.init()();
  a3();
  OUTLINED_FUNCTION_75();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v6);
  v9 = OUTLINED_FUNCTION_28();
  result = outlined consume of Data._Representation(v9, v10);
  if (!v4)
  {
    *v5 = v12;
    v5[1] = v13;
  }

  return result;
}

double _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE4datax10Foundation4DataV_tKcfCAC4ViewO8BookmarkV_Tt1g5()
{
  OUTLINED_FUNCTION_67();
  MEMORY[0x259C331C0]();
  OUTLINED_FUNCTION_65();
  v3 = type metadata accessor for JSONDecoder();
  OUTLINED_FUNCTION_53(v3);
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark();
  OUTLINED_FUNCTION_75();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v2);
  v4 = OUTLINED_FUNCTION_28();
  outlined consume of Data._Representation(v4, v5);
  if (!v0)
  {
    result = v7;
    *v1 = v7;
  }

  return result;
}

double _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE4datax10Foundation4DataV_tKcfCAC6StreamOADV_Tt1g5@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v7);
  outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    result = *&v9;
    *a3 = v9;
    *(a3 + 16) = v10;
  }

  return result;
}

double _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE4datax10Foundation4DataV_tKcfCAC6StreamO5StoreV_Tt1g5@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v7);
  outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    result = *&v9;
    *a3 = v9;
    *(a3 + 16) = v10;
    *(a3 + 24) = v11;
  }

  return result;
}

double _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE4datax10Foundation4DataV_tKcfCAC6StreamO8BookmarkV_Tt1g5@<D0>(uint64_t a3@<X8>)
{
  MEMORY[0x259C331C0]();
  OUTLINED_FUNCTION_65();
  v6 = type metadata accessor for JSONDecoder();
  OUTLINED_FUNCTION_53(v6);
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v4);
  v7 = OUTLINED_FUNCTION_70();
  outlined consume of Data._Representation(v7, v8);
  if (!v3)
  {
    *a3 = v10;
    *(a3 + 8) = v11;
    result = *&v12;
    *(a3 + 16) = v12;
    *(a3 + 32) = v13;
    *(a3 + 40) = v14;
  }

  return result;
}

uint64_t IncrementalIdentifier.PersistableGlobalIdentifier.sourceData.getter()
{
  v0 = OUTLINED_FUNCTION_13_0();
  outlined copy of Data._Representation(v0, v1);
  return OUTLINED_FUNCTION_13_0();
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t IncrementalIdentifier.PersistableGlobalIdentifier.storageData.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_0();
  outlined copy of Data._Representation(v1, v2);
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IncrementalIdentifier.PersistableGlobalIdentifier.entityData.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_0();
  outlined copy of Data._Representation(v1, v2);
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6144656372756F73 && a2 == 0xEA00000000006174;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x44656761726F7473 && a2 == 0xEB00000000617461;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6144797469746E65 && a2 == 0xEA00000000006174)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7954656372756F73;
  switch(a1)
  {
    case 1:
      v3 = 0x656372756F73;
      goto LABEL_5;
    case 2:
      result = 0x44656761726F7473;
      break;
    case 3:
      v3 = 0x797469746E65;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

_BYTE *IncrementalIdentifier.PersistableGlobalIdentifier.init(sourceType:sourceData:storageData:entityData:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = *result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t IncrementalIdentifier.PersistableGlobalBookmark.description.getter()
{
  v1 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3();
  v2 = *v0;
  _StringGuts.grow(_:)(17);
  v3 = 0xE300000000000000;
  v4 = 7628147;
  if (v2 != 1)
  {
    v4 = 2003134838;
    v3 = 0xE400000000000000;
  }

  if (v2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D6165727473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  MEMORY[0x259C32B90](v5, v6);

  MEMORY[0x259C32B90](10016, 0xE200000000000000);
  static String.Encoding.utf8.getter();
  OUTLINED_FUNCTION_37();
  result = String.init(data:encoding:)();
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x259C32B90](result);

  MEMORY[0x259C32B90](2564135, 0xE300000000000000);
  static String.Encoding.utf8.getter();
  OUTLINED_FUNCTION_35();
  result = String.init(data:encoding:)();
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  MEMORY[0x259C32B90](result);

  MEMORY[0x259C32B90](2564135, 0xE300000000000000);
  static String.Encoding.utf8.getter();
  OUTLINED_FUNCTION_75();
  result = String.init(data:encoding:)();
  if (v10)
  {
    MEMORY[0x259C32B90](result);

    MEMORY[0x259C32B90](39, 0xE100000000000000);
    return 0;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6144656372756F73 && a2 == 0xEA00000000006174;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x44656761726F7473 && a2 == 0xEB00000000617461;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEC00000061746144)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7954656372756F73;
  switch(a1)
  {
    case 1:
      result = 0x6144656372756F73;
      break;
    case 2:
      result = 0x44656761726F7473;
      break;
    case 3:
      result = 0x6B72616D6B6F6F62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.PersistableGlobalIdentifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_23();
  v41 = v23;
  v25 = v24;
  v28 = OUTLINED_FUNCTION_76(v24, v26, v27);
  OUTLINED_FUNCTION_0_2();
  v30 = v29;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_56();
  v39 = v20[2];
  v40 = v20[1];
  v37 = v20[4];
  v38 = v20[3];
  v35 = v20[6];
  v36 = v20[5];
  v32 = OUTLINED_FUNCTION_38(v25, v25[3]);
  v41(v32);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v21)
  {
    OUTLINED_FUNCTION_72();
    outlined copy of Data._Representation(v33, v34);
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_3_2();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v40, v39);
    outlined copy of Data._Representation(v38, v37);
    OUTLINED_FUNCTION_3_2();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v38, v37);
    outlined copy of Data._Representation(v36, v35);
    OUTLINED_FUNCTION_3_2();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v36, v35);
  }

  (*(v30 + 8))(v22, v28);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys and conformance IncrementalIdentifier.PersistableGlobalBookmark.CodingKeys);
  }

  return result;
}

void IncrementalIdentifier.PersistableGlobalIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_23();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v51 = OUTLINED_FUNCTION_76(v17, v21, v22);
  OUTLINED_FUNCTION_0_2();
  v24 = v23;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v49 - v26;
  v52 = v18;
  v28 = OUTLINED_FUNCTION_9_0(v18);
  v16(v28);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    v29 = v24;
    lazy protocol witness table accessor for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType();
    OUTLINED_FUNCTION_45();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = v53;
    OUTLINED_FUNCTION_72();
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_49(v31);
    v33 = v53;
    v32 = v54;
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_49(v34);
    v55 = v30;
    v49 = v53;
    v50 = v54;
    OUTLINED_FUNCTION_45();
    v35 = v29;
    v36 = v51;
    OUTLINED_FUNCTION_49(v37);
    (*(v35 + 8))(v27, v36);
    v38 = v53;
    v39 = v54;
    *v20 = v55;
    *(v20 + 8) = v33;
    *(v20 + 16) = v32;
    v40 = v50;
    *(v20 + 24) = v49;
    *(v20 + 32) = v40;
    *(v20 + 40) = v38;
    *(v20 + 48) = v39;
    v41 = OUTLINED_FUNCTION_47();
    outlined copy of Data._Representation(v41, v42);
    v43 = OUTLINED_FUNCTION_46();
    outlined copy of Data._Representation(v43, v44);
    outlined copy of Data._Representation(v38, v39);
    __swift_destroy_boxed_opaque_existential_0(v52);
    v45 = OUTLINED_FUNCTION_47();
    outlined consume of Data._Representation(v45, v46);
    v47 = OUTLINED_FUNCTION_46();
    outlined consume of Data._Representation(v47, v48);
    outlined consume of Data._Representation(v38, v39);
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_24();
}

uint64_t IncrementalIdentifier.EmptyIdentifier.init(string:)(uint64_t a1, uint64_t a2)
{

  v2 = OUTLINED_FUNCTION_46();
  return v3(v2);
}

uint64_t IncrementalIdentifier.EmptyIdentifier.init(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v4 = OUTLINED_FUNCTION_46();
  return outlined consume of Data._Representation(v4, v5);
}

void IncrementalIdentifier.SingleValueIdentifier.init(sqlite3Value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_23();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v5)
  {
    (*(v8 + 24))(v6, v10, v8);
  }

  OUTLINED_FUNCTION_24();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IncrementalIdentifier.SingleValueIdentifier.bindTo(_:index:)(Swift::OpaquePointer _, Swift::Int index)
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v15 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = OUTLINED_FUNCTION_60();
  v12(v11);
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 16))(v15, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v7 + 8))(v10, AssociatedTypeWitness);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_24();
    return;
  }

  __break(1u);
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance IncrementalIdentifier.Stream.Source.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = IncrementalIdentifier.Stream.Source.CodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.Stream.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.Stream.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source.CodingKeys and conformance IncrementalIdentifier.Stream.Source.CodingKeys);
  }

  return result;
}

uint64_t IncrementalIdentifier.SingleValueIdentifier.init(dbType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_67();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_2();
  (*(v9 + 16))(v4, v3, AssociatedTypeWitness);
  (*(a3 + 24))(v4, a2, a3);
  return (*(v9 + 8))(v3, AssociatedTypeWitness);
}

uint64_t static IncrementalIdentifier.SingleValueIdentifier<>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_0();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  v16 = *(a4 + 16);
  v17 = OUTLINED_FUNCTION_46();
  v16(v17);
  v18 = OUTLINED_FUNCTION_46();
  v16(v18);
  OUTLINED_FUNCTION_47();
  LOBYTE(v16) = dispatch thunk of static Comparable.< infix(_:_:)();
  v19 = *(v8 + 8);
  v19(v12, AssociatedTypeWitness);
  v19(v15, AssociatedTypeWitness);
  return v16 & 1;
}

uint64_t _sSLsE2leoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO10SourceTypeO_Tt1B5(char a1, char a2)
{
  v3 = 0x6D6165727473;
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 7628147;
    }

    else
    {
      v4 = 2003134838;
    }

    if (a2 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6D6165727473;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 7628147;
    }

    else
    {
      v3 = 2003134838;
    }

    if (a1 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v3 && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t _sSLsE2leoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO5StoreV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a1 && a4 == a2)
  {
    return 1;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  _stringCompareWithSmolCheck(_:_:expecting:)();
  return 1;
}

BOOL _sSLsE2leoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO0F0V_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 == a1 && a5 == a2)
  {
    return a3 >= a6;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a3 >= a6;
}

uint64_t _sSLsE2leoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO5StoreV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 == a1 && a6 == a2)
  {
LABEL_8:
    if (a7 != a3 || a8 != a4)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
      return v13 & 1;
    }

LABEL_13:
    v13 = 1;
    return v13 & 1;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v13 = 0;
  return v13 & 1;
}

BOOL _sSLsE2geoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO0F0V_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a6 >= a3;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a6 >= a3;
}

uint64_t _sSLsE2geoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO5StoreV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6)
  {
LABEL_8:
    if (a3 != a7 || a4 != a8)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
      return v13 & 1;
    }

LABEL_13:
    v13 = 1;
    return v13 & 1;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t _sSLsE2geoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO5StoreV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  _stringCompareWithSmolCheck(_:_:expecting:)();
  return 1;
}

uint64_t _sSLsE2geoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO10SourceTypeO_Tt1B5(unsigned __int8 a1, char a2)
{
  v2 = 0x6D6165727473;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 7628147;
    }

    else
    {
      v4 = 2003134838;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6D6165727473;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 7628147;
    }

    else
    {
      v2 = 2003134838;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

BOOL _sSLsE1goiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO0E0V_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 == a1 && a5 == a2)
  {
    return a3 < a6;
  }

  v9 = 1;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v9 = 0;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return a3 < a6;
    }
  }

  return v9;
}

uint64_t _sSLsE1goiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO5StoreV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 != a1 || a6 != a2)
  {
    v13 = 1;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return v13;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  if (a7 == a3 && a8 == a4)
  {
    return 0;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t _sSLsE1goiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO5StoreV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a1 && a4 == a2)
  {
    return 0;
  }

  v5 = 1;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    return 0;
  }

  return v5;
}

uint64_t _sSLsE1goiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO10SourceTypeO_Tt1B5(char a1, char a2)
{
  v3 = 0x6D6165727473;
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 7628147;
    }

    else
    {
      v4 = 2003134838;
    }

    if (a2 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6D6165727473;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 7628147;
    }

    else
    {
      v3 = 2003134838;
    }

    if (a1 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v3 && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.Stream.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.Stream.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage.CodingKeys and conformance IncrementalIdentifier.Stream.Storage.CodingKeys);
  }

  return result;
}

uint64_t IncrementalIdentifier.Stream.Identifier.init(file:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

BOOL static IncrementalIdentifier.Stream.Identifier.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v3 < v2;
  }

  v5 = 1;
  OUTLINED_FUNCTION_6_1();
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    OUTLINED_FUNCTION_6_1();
    v5 = 0;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return v3 < v2;
    }
  }

  return v5;
}

BOOL static IncrementalIdentifier.Stream.Identifier.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_63(a1);
  v4 = *(v3 + 16);
  v5 = v2[2];
  if (v1 == *v2 && *(v3 + 8) == v2[1])
  {
    return v4 == v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v7)
  {
    return v4 == v5;
  }

  return result;
}

uint64_t IncrementalIdentifier.Stream.Identifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t IncrementalIdentifier.Stream.Identifier.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IncrementalIdentifier.Stream.Identifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = IncrementalIdentifier.Stream.Identifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance IncrementalIdentifier.Stream.Identifier.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = IncrementalIdentifier.Stream.Identifier.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.Stream.Identifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.Stream.Identifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.Stream.Identifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_23();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO0H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO0H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_38(v24, v24[3]);
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys();
  OUTLINED_FUNCTION_68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v22)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_50();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v26 = OUTLINED_FUNCTION_28();
  v27(v26);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys);
  }

  return result;
}