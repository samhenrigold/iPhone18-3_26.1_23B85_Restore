uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id BiomeLibraryNodeBridge()
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v0 = getBiomeLibraryNodeSymbolLoc_ptr;
  v15 = getBiomeLibraryNodeSymbolLoc_ptr;
  if (!getBiomeLibraryNodeSymbolLoc_ptr)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getBiomeLibraryNodeSymbolLoc_block_invoke;
    v11[3] = &unk_1E6E52EB0;
    v11[4] = &v12;
    __getBiomeLibraryNodeSymbolLoc_block_invoke(v11);
    v0 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v0)
  {
    BiomeLibraryNodeBridge_cold_2();
  }

  v1 = v0();
  if (!v1)
  {
    v2 = __biome_log_for_category();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      BiomeLibraryNodeBridge_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return v1;
}

void sub_1848F0DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BiomeLibraryInternalLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = BiomeLibraryInternalLibraryCore_frameworkLibrary;
  v6 = BiomeLibraryInternalLibraryCore_frameworkLibrary;
  if (!BiomeLibraryInternalLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E6E53AF8;
    v8 = *off_1E6E53B08;
    v9 = 0;
    v4[3] = _sl_dlopen();
    BiomeLibraryInternalLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1848F0F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BMSQLEventMetadataColumn *BMEventTimestampSQLColumn()
{
  v0 = [BMSQLEventMetadataColumn alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __BMEventTimestampSQLColumn_block_invoke_2;
  v5[3] = &unk_1E6E53360;
  v6 = &__block_literal_global_10;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __BMEventTimestampSQLColumn_block_invoke_3;
  v3[3] = &unk_1E6E53388;
  v4 = &__block_literal_global_10;
  v1 = [(BMSQLEventMetadataColumn *)v0 initWithName:@"eventTimestamp" dataType:3 requestOnly:0 extractBlock:v5 setValueBlock:v3];

  return v1;
}

BMSQLEventMetadataColumn *BMEventBodyDataSQLColumn()
{
  v0 = [BMSQLEventMetadataColumn initWithName:"initWithName:dataType:requestOnly:extractBlock:setValueBlock:" dataType:@"_eventBodyData" requestOnly:4 extractBlock:1 setValueBlock:?];

  return v0;
}

BMSQLEventMetadataColumn *BMEventClassNameSQLColumn()
{
  v0 = [BMSQLEventMetadataColumn initWithName:"initWithName:dataType:requestOnly:extractBlock:setValueBlock:" dataType:@"_eventClassName" requestOnly:2 extractBlock:1 setValueBlock:?];

  return v0;
}

id BiomeLibraryInternalNodeBridge()
{
  if (!os_variant_has_internal_content())
  {
    goto LABEL_12;
  }

  if (!BiomeLibraryInternalLibraryCore(0) || !BiomeLibraryInternalLibraryCore(0) || !getBiomeLibraryInternalNodeSymbolLoc())
  {
    v2 = __biome_log_for_category();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      BiomeLibraryInternalNodeBridge_cold_3(v2, v10, v11, v12, v13, v14, v15, v16);
    }

    goto LABEL_11;
  }

  BiomeLibraryInternalNodeSymbolLoc = getBiomeLibraryInternalNodeSymbolLoc();
  if (!BiomeLibraryInternalNodeSymbolLoc)
  {
    BiomeLibraryInternalNodeBridge_cold_2();
  }

  v1 = BiomeLibraryInternalNodeSymbolLoc();
  if (!v1)
  {
    v2 = __biome_log_for_category();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      BiomeLibraryInternalNodeBridge_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

LABEL_11:

LABEL_12:
    v1 = 0;
  }

  return v1;
}

uint64_t getBiomeLibraryInternalNodeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getBiomeLibraryInternalNodeSymbolLoc_ptr;
  v6 = getBiomeLibraryInternalNodeSymbolLoc_ptr;
  if (!getBiomeLibraryInternalNodeSymbolLoc_ptr)
  {
    v1 = BiomeLibraryInternalLibrary();
    v4[3] = dlsym(v1, "BiomeLibraryInternalNode");
    getBiomeLibraryInternalNodeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1848F1488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BiomeLibraryAndInternalLibraryNode()
{
  v0 = BiomeLibraryNodeBridge();
  v1 = BiomeLibraryInternalNodeBridge();

  return objc_opt_class();
}

uint64_t getEnumTagSinglePayload for UpdatedObjectDiffConfig(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t static UnifiedLibrary.Library.lookupDatabaseResource(identifier:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    OUTLINED_FUNCTION_42_0(&one-time initialization token for lockedLibraries);
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = (*(*v6 + 16))(a1, a2);
    v6 = v9;
    if (v10)
    {
      v11 = v10;

      return v11;
    }
  }

  return 0;
}

uint64_t static LibraryBase.view(legacyViewName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_4_7(a1, a2, a3);
  result = v6(v5);
  if (!*(result + 16))
  {
LABEL_16:

    return OUTLINED_FUNCTION_104();
  }

  v8 = 0;
  v22 = result;
  v20 = *(result + 16);
  while (2)
  {
    if (v8 < *(result + 16))
    {
      v21 = v8 + 1;
      OUTLINED_FUNCTION_18_2();
      result = v9();
      v10 = result;
      v11 = result + 40;
      v12 = -*(result + 16);
      v13 = -1;
      while (v12 + v13 != -1)
      {
        if (++v13 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v14 = OUTLINED_FUNCTION_104();
        v16 = v15(v14);
        if (v16 == v4 && v17 == v3)
        {

          goto LABEL_16;
        }

        v11 += 16;
        v19 = OUTLINED_FUNCTION_13_2(v16, v17);

        if (v19)
        {

          goto LABEL_16;
        }
      }

      v8 = v21;
      result = v22;
      if (v21 != v20)
      {
        continue;
      }

      goto LABEL_16;
    }

    break;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static UnifiedLibrary.Library.databaseResources.getter()
{
  if (one-time initialization token for lockedLibraries != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v0 = static UnifiedLibrary.Library.lockedLibraries;

    os_unfair_lock_lock(v0 + 6);
    v1 = *&v0[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v0 + 6);

    v2 = *(v1 + 16);
    if (!v2)
    {
      break;
    }

    v3 = v1 + 40;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = (*(*v3 + 8))();
      v6 = *(v5 + 16);
      v7 = *(v4 + 16);
      v8 = v7 + v6;
      if (__OFADD__(v7, v6))
      {
        break;
      }

      v9 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 24) >> 1)
      {
        if (v7 <= v8)
        {
          v11 = v7 + v6;
        }

        else
        {
          v11 = v7;
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
        v4 = v12;
      }

      if (*(v9 + 16))
      {
        v13 = *(v4 + 16);
        if ((*(v4 + 24) >> 1) - v13 < v6)
        {
          goto LABEL_23;
        }

        memcpy((v4 + 16 * v13 + 32), (v9 + 32), 16 * v6);

        if (v6)
        {
          v14 = *(v4 + 16);
          v15 = __OFADD__(v14, v6);
          v16 = v14 + v6;
          if (v15)
          {
            goto LABEL_24;
          }

          *(v4 + 16) = v16;
        }
      }

      else
      {

        if (v6)
        {
          goto LABEL_22;
        }
      }

      v3 += 16;
      if (!--v2)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v4;
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{

  return outlined copy of LibraryArtifact.Table?(a1, v1);
}

uint64_t OUTLINED_FUNCTION_99_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_106(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1)
{

  return Optional<A>.hashValue.getter();
}

void OUTLINED_FUNCTION_11()
{
  v2 = v1 + *(v0 + 48);
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return outlined copy of LibraryArtifact.Table?(a1, a2);
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return errcode();
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_17_2@<X0>(uint64_t a1@<X8>, void (*a2)(void)@<X3>)
{

  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(v2 + a1, v4, v3 + a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_5_8()
{
  v3 = *v1;

  return scanner_errposition(v3, v0);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return errstart(20, 0);
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4_3()
{
  v2 = (v1 + *(v0 + 44));
  *v2 = 7235949;
  v2[1] = 0xE300000000000000;
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_11()
{

  return errcode();
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_14_2();
  if (v5)
  {
    OUTLINED_FUNCTION_7_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = *(v0 + 2);
  if (v6 <= v9)
  {
    v10 = *(v0 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v11 = OUTLINED_FUNCTION_22_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_1_18();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = v0 + 32;
  if (v1)
  {
    if (v11 != v0 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

{
  OUTLINED_FUNCTION_9_3();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_28_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_11_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_32_1(v2, v5, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser19AggregationFunctionVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser19AggregationFunctionVGMR);
  OUTLINED_FUNCTION_19_3();
  type metadata accessor for AggregationFunction();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_19_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_2(v8, type metadata accessor for AggregationFunction);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
  }
}

{
  OUTLINED_FUNCTION_14_2();
  if (v4)
  {
    OUTLINED_FUNCTION_7_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams12ChangeRecordVGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams12ChangeRecordVGMR);
    v7 = OUTLINED_FUNCTION_22_2();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_1_18();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_14_2();
  if (v4)
  {
    OUTLINED_FUNCTION_7_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySS12BiomeStreams13StorableValueOGGMd, &_ss23_ContiguousArrayStorageCySDySS12BiomeStreams13StorableValueOGGMR);
    v7 = OUTLINED_FUNCTION_22_2();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_72();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS12BiomeStreams13StorableValueOGMd, &_sSDySS12BiomeStreams13StorableValueOGMR);
    OUTLINED_FUNCTION_72();
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_9_3();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_28_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_11_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_32_1(v2, v5, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR);
  v8 = OUTLINED_FUNCTION_19_3();
  type metadata accessor for StorableValue(v8);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_19_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_2(v9, type metadata accessor for StorableValue);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
  }
}

{
  OUTLINED_FUNCTION_14_2();
  if (v4)
  {
    OUTLINED_FUNCTION_7_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams11Aggregation_pGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams11Aggregation_pGMR);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[5 * v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_72();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams11Aggregation_pMd, &_s12BiomeStreams11Aggregation_pMR);
    OUTLINED_FUNCTION_72();
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_14_2();
  if (v4)
  {
    OUTLINED_FUNCTION_7_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v7 = OUTLINED_FUNCTION_22_2();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_1_18();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_14_2();
  if (v3)
  {
    OUTLINED_FUNCTION_7_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v9 = OUTLINED_FUNCTION_22_2();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_1_18();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

{
  OUTLINED_FUNCTION_9_3();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_28_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_11_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_32_1(v2, v5, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR);
  OUTLINED_FUNCTION_19_3();
  type metadata accessor for Schema();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_19_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_2(v8, type metadata accessor for Schema);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
  }
}

{
  OUTLINED_FUNCTION_14_2();
  if (v4)
  {
    OUTLINED_FUNCTION_7_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams8DataflowVGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams8DataflowVGMR);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * ((v8 - 32) / 128);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[128 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_9_3();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_28_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_11_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_32_1(v2, v5, &_ss23_ContiguousArrayStorageCy12BiomeStreams28MaterializedViewPhysicalPlanVGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams28MaterializedViewPhysicalPlanVGMR);
  v8 = OUTLINED_FUNCTION_19_3();
  type metadata accessor for MaterializedViewPhysicalPlan(v8);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_19_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_2(v9, type metadata accessor for MaterializedViewPhysicalPlan);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
  }
}

void OUTLINED_FUNCTION_10_3()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;

  _StringGuts.grow(_:)(34);
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return scanner_errposition(v1, v0);
}

uint64_t outlined init with take of MaterializedViewPhysicalPlan(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_84();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_81();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_19_1()
{
  v4 = *(v2 - 96);
  *v4 = v0;
  v4[1] = v1;

  return type metadata accessor for StorableValue(0);
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  *a2 = v3;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 64) = 8;
}

uint64_t OUTLINED_FUNCTION_19_4()
{

  return _s10Foundation4UUIDVSgWOhTm_0(v0, v2, v1);
}

uint64_t IncrementalViewManager.update(viewName:databaseName:streamIdentifier:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, const char *a7, uint64_t a8)
{
  v50 = a8;
  v56 = a3;
  v57 = a7;
  v49 = a5;
  v55 = a1;
  v12 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_2_1();
  v54 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_14();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v46[-v21];
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();

  v53 = v8;
  v23 = OSSignposter.logHandle.getter();
  v24 = static os_signpost_type_t.begin.getter();

  v25 = OS_os_log.signpostsEnabled.getter();
  v52 = a2;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v47 = v24;
    v27 = v26;
    v28 = swift_slowAlloc();
    v48 = v12;
    v58 = v28;
    *v27 = 136446722;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, a6, &v58);
    *(v27 + 12) = 2082;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, a4, &v58);
    *(v27 + 22) = 2082;
    *(v27 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, a2, &v58);
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1848EE000, v23, v47, v29, v57, "stream:%{public}s database:%{public}s view:%{public}s", v27, 0x20u);
    swift_arrayDestroy();
    v12 = v48;
    OUTLINED_FUNCTION_11_1();
    MEMORY[0x1865F7B70]();
    OUTLINED_FUNCTION_11_1();
    MEMORY[0x1865F7B70]();
  }

  v30 = v22;
  v31 = v54;
  (*(v54 + 16))(v18, v22, v12);
  v32 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_35_0(v32);
  v33 = OSSignpostIntervalState.init(id:isOpen:)();
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_3_9();
    swift_once();
  }

  v34 = v56;
  if (static UnifiedLibrary.Library.lookupDatabaseResource(identifier:)(v56, a4))
  {
    *&v46[-64] = MEMORY[0x1EEE9AC00](v55, v52);
    *&v46[-56] = v35;
    *&v46[-48] = v34;
    *&v46[-40] = a4;
    v36 = v53;
    *&v46[-32] = v53;
    *&v46[-24] = v37;
    *&v46[-16] = v38;
    v39 = v51;
    (*(v38 + 24))();
    if (!v39)
    {
      v43 = v36;
      v44 = v33;
      v40 = v57;
      goto LABEL_11;
    }

    v40 = v57;
  }

  else
  {
    updated = lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
    OUTLINED_FUNCTION_63(&type metadata for IncrementalViewManager.UpdateError, updated);
    *v42 = v34;
    *(v42 + 8) = a4;
    *(v42 + 16) = 0;
    swift_willThrow();

    v40 = v57;
    v36 = v53;
  }

  v43 = v36;
  v44 = v33;
LABEL_11:
  $defer #1 () in IncrementalViewManager.update(viewName:databaseName:streamIdentifier:)(v43, v44, v40);

  return (*(v31 + 8))(v30, v12);
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
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t OUTLINED_FUNCTION_33_0()
{
}

void OUTLINED_FUNCTION_33_3()
{

  JUMPOUT(0x1865F7B70);
}

uint64_t OUTLINED_FUNCTION_33_4(uint64_t a1)
{

  return swift_allocError();
}

uint64_t closure #1 in IncrementalViewManager.update(viewName:databaseName:streamIdentifier:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v94 = a7;
  v93 = a6;
  v100 = a5;
  v101 = a1;
  v97 = type metadata accessor for MaterializedViewPhysicalPlan(0);
  v10 = *(v97 - 8);
  v12 = MEMORY[0x1EEE9AC00](v97, v11);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (&v90 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v96 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v99 = &v90 - v23;
  if (one-time initialization token for compute != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Logging.compute);

  v90 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  v28 = os_log_type_enabled(v26, v27);
  v98 = v14;
  v91 = a4;
  v92 = a3;
  if (v28)
  {
    v29 = a3;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v105 = v31;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, a2, &v105);
    *(v30 + 12) = 2080;
    *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, a4, &v105);
    _os_log_impl(&dword_1848EE000, v26, v27, "IncrementalViewManager: updating materialized view for %s in %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865F7B70](v31, -1, -1);
    MEMORY[0x1865F7B70](v30, -1, -1);
  }

  v32 = 0;
  v33 = *(v100 + 16);
  v34 = *(v33 + 16);
  while (1)
  {
    if (v34 == v32)
    {
      v39 = 1;
      v10 = v99;
      goto LABEL_17;
    }

    if (v32 >= *(v33 + 16))
    {
      __break(1u);
LABEL_33:

      goto LABEL_23;
    }

    outlined init with copy of MaterializedViewPhysicalPlan(v33 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v32, v17);
    MaterializedView.name.getter();
    v35 = String.lowercased()();

    v36 = String.lowercased()();
    if (v35._countAndFlagsBits == v36._countAndFlagsBits && v35._object == v36._object)
    {
      break;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {
      goto LABEL_16;
    }

    outlined destroy of MaterializedViewPhysicalPlan(v17);
    ++v32;
  }

LABEL_16:
  v10 = v99;
  outlined init with take of MaterializedViewPhysicalPlan(v17, v99);
  v39 = 0;
LABEL_17:
  v40 = v97;
  __swift_storeEnumTagSinglePayload(v10, v39, 1, v97);
  v41 = v96;
  outlined init with copy of Date?(v10, v96, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v40);
  v34 = v98;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of UUID?(v41, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
    lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
    swift_allocError();
    *v43 = v101;
    *(v43 + 8) = a2;
    *(v43 + 16) = 3;
    swift_willThrow();

    return outlined destroy of UUID?(v10, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  }

  outlined init with take of MaterializedViewPhysicalPlan(v41, v98);
  v44 = v95;
  v45 = IncrementalViewManager.cachedDatabaseWithAccess(for:)(v93, v94);
  if (v44)
  {
    goto LABEL_23;
  }

  v46 = v45;
  v47 = *(v45 + 2);
  v48 = sqlite3_exec(v47, "begin", 0, 0, 0);
  if (v48)
  {
    v49 = BMSQLDatabaseError(v48, v47, 0);
    swift_getErrorValue();
    v50 = Error.localizedDescription.getter();
    v52 = v51;

    v105 = v50;
    v106 = v52;
    strcpy(v104, "BMSQLDatabase");
    v104[7] = -4864;
    v102 = 0x62617461444C5153;
    v103 = 0xEB00000000657361;
    lazy protocol witness table accessor for type String and conformance String();
    v53 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v55 = v54;

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    swift_allocError();
    *v56 = xmmword_184D29AB0;
    *(v56 + 16) = v53;
    *(v56 + 24) = v55;
    *(v56 + 32) = 1;
    goto LABEL_22;
  }

  v59 = v91;
  IncrementalViewManager.update(database:materializedViewPlan:databaseName:)(*(v46 + 16), v34, v92, v91);
  v60 = *(v46 + 16);
  v61 = sqlite3_exec(v60, "commit", 0, 0, 0);
  if (!v61)
  {

    v17 = Logger.logObject.getter();
    v81 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v81))
    {
      v82 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v105 = v100;
      *v82 = 136315650;
      *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, a2, &v105);
      *(v82 + 12) = 2080;
      *(v82 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v59, &v105);
      *(v82 + 22) = 2080;
      v83 = [*(v46 + 24) description];
      v84 = v34;
      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v46;
      v87 = v86;

      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v105);

      *(v82 + 24) = v88;
      _os_log_impl(&dword_1848EE000, v17, v81, "IncrementalViewManager: updated materialized view for %s in %s. Access assertion: %s", v82, 0x20u);
      v89 = v100;
      swift_arrayDestroy();
      MEMORY[0x1865F7B70](v89, -1, -1);
      MEMORY[0x1865F7B70](v82, -1, -1);

      v57 = v84;
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  v62 = BMSQLDatabaseError(v61, v60, 0);
  swift_getErrorValue();
  v63 = Error.localizedDescription.getter();
  v65 = v64;

  v105 = v63;
  v106 = v65;
  strcpy(v104, "BMSQLDatabase");
  v104[7] = -4864;
  v102 = 0x62617461444C5153;
  v103 = 0xEB00000000657361;
  lazy protocol witness table accessor for type String and conformance String();
  v66 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v68 = v67;

  lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
  v69 = swift_allocError();
  *v70 = xmmword_184D29AC0;
  *(v70 + 16) = v66;
  *(v70 + 24) = v68;
  *(v70 + 32) = 1;
  swift_willThrow();
  v71 = *(v46 + 16);
  v72 = sqlite3_exec(v71, "rollback", 0, 0, 0);
  if (!v72)
  {
LABEL_22:
    swift_willThrow();

LABEL_23:
    v57 = v34;
LABEL_24:
    outlined destroy of MaterializedViewPhysicalPlan(v57);
    return outlined destroy of UUID?(v10, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
  }

  v73 = BMSQLDatabaseError(v72, v71, 0);
  swift_getErrorValue();
  v74 = Error.localizedDescription.getter();
  v76 = v75;

  v105 = v74;
  v106 = v76;
  strcpy(v104, "BMSQLDatabase");
  v104[7] = -4864;
  v102 = 0x62617461444C5153;
  v103 = 0xEB00000000657361;
  lazy protocol witness table accessor for type String and conformance String();
  v77 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v79 = v78;

  lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
  swift_allocError();
  *v80 = xmmword_184D29AD0;
  *(v80 + 16) = v77;
  *(v80 + 24) = v79;
  *(v80 + 32) = 1;
  swift_willThrow();

  outlined destroy of MaterializedViewPhysicalPlan(v34);
  return outlined destroy of UUID?(v10, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMd, &_s12BiomeStreams28MaterializedViewPhysicalPlanVSgMR);
}

void IncrementalViewManager.update(database:materializedViewPlan:databaseName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v246 = a4;
  v242 = a3;
  v240 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_2_1();
  v250 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_13();
  v256 = (v10 - v9);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
  OUTLINED_FUNCTION_2_1();
  v257 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = OUTLINED_FUNCTION_7(v230 - v18);
  v254 = type metadata accessor for StorableValue(v19);
  OUTLINED_FUNCTION_2_1();
  v272 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_13();
  v25 = OUTLINED_FUNCTION_7(v24 - v23);
  v253 = type metadata accessor for MaterializedViewPhysicalPlan(v25);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_7(v230 - v30);
  v252 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_2_1();
  v249 = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_7(v230 - v38);
  v269 = type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_2_1();
  v261 = v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_7(v43 - v42);
  v44 = type metadata accessor for ResultColumn();
  OUTLINED_FUNCTION_2_1();
  v263 = v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  OUTLINED_FUNCTION_13();
  v50 = v49 - v48;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  OUTLINED_FUNCTION_2_1();
  v267 = v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = v230 - v55;
  v57 = type metadata accessor for Schema();
  OUTLINED_FUNCTION_2_1();
  *&v248 = v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  OUTLINED_FUNCTION_13();
  v63 = (v62 - v61);
  type metadata accessor for MaterializedView();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v64, v65);
  OUTLINED_FUNCTION_13();
  (*(v68 + 16))(v67 - v66, a2);
  PlannerMetadata = type metadata accessor for QueryPlannerMetadata(0);
  OUTLINED_FUNCTION_35_0(PlannerMetadata);
  v70 = v266;
  QueryPlannerMetadata.init(materializedView:database:cacheSize:)();
  v259 = v70;
  if (!v70)
  {
    v231 = v56;
    v264 = v51;
    v265 = v50;
    v72 = v263;
    v266 = v44;
    v236 = v63;
    v237 = v57;
    *&v238 = a1;
    v239 = v71;
    v235 = MaterializedView.name.getter();
    v234 = v73;
    v233 = MaterializedView.name.getter();
    v232 = v74;
    v75 = *(v253 + 20);
    v243 = a2;
    v76 = a2 + v75;
    type metadata accessor for SelectCorePhysicalPlan(0);
    v230[2] = v76;
    v77 = SelectCore.select.getter();
    v78 = *(v77 + 16);
    if (v78)
    {
      v277[0]._rawValue = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78, 0);
      v263 = v72[2];
      rawValue = v277[0]._rawValue;
      OUTLINED_FUNCTION_19_0();
      v230[1] = v77;
      v82 = v77 + v81;
      *&v262 = *(v80 + 56);
      v261 += 8;
      v260 = v80 - 8;
      v83 = v266;
      v84 = v231;
      do
      {
        v85 = v265;
        v86 = v80;
        (v263)(v265, v82, v83);
        v87 = *(v264 + 48);
        *v84 = ResultColumn.name.getter();
        v84[1] = v88;
        v89 = v268;
        ResultColumn.expression.getter(v268);
        SQLExpression.returnType.getter(v84 + v87);
        v83 = v266;
        OUTLINED_FUNCTION_16_0();
        v90(v89, v269);
        OUTLINED_FUNCTION_16_0();
        v91(v85, v83);
        v277[0]._rawValue = rawValue;
        v93 = rawValue[2];
        v92 = rawValue[3];
        if (v93 >= v92 >> 1)
        {
          v96 = OUTLINED_FUNCTION_22_0(v92);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v96, v93 + 1, 1);
          v83 = v266;
          rawValue = v277[0]._rawValue;
        }

        rawValue[2] = v93 + 1;
        OUTLINED_FUNCTION_19_0();
        outlined init with take of UUID?(v84, rawValue + v94 + *(v95 + 72) * v93, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
        v82 += v262;
        --v78;
        v80 = v86;
      }

      while (v78);
    }

    else
    {

      rawValue = MEMORY[0x1E69E7CC0];
    }

    v97 = v250;
    v98 = v238;
    v99 = v249;
    v100 = v253;
    if (rawValue[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      OUTLINED_FUNCTION_25_0();
      v101 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v101 = MEMORY[0x1E69E7CC8];
    }

    v102 = v236;
    v277[0]._rawValue = v101;
    v103 = v259;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(rawValue, 1, v277);
    v104 = v103;
    if (v103)
    {
LABEL_84:

      __break(1u);
    }

    else
    {
      v105._countAndFlagsBits = v233;
      v105._object = v232;
      Schema.init(tableName:columns:)(v105, v277[0]);
      v106 = v102;
      v107 = Schema.columns.getter();
      (*(v248 + 8))(v106, v237);
      v108 = (v243 + *(v100 + 28));
      v109 = *v108;
      v110 = v108[1];

      DBViewWriter.init(database:tableName:schema:createTableSQL:)(v98, v235, v234, v107, v109, v110, &v278);
      v259 = 0;
      v234 = v278;
      v253 = (v99 + 2);
      v249 = v99 + 1;
      v236 = v97 + 44;
      v233 = (v97 + 4);
      v111 = OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_signposter;
      LODWORD(v235) = *MEMORY[0x1E69E93E8];
      *&v112 = 136446466;
      v248 = v112;
      *&v112 = 134218242;
      v238 = v112;
      v262 = xmmword_184D29A90;
      v113 = v247;
      v237 = OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_signposter;
      while (1)
      {
        OSSignposter.logHandle.getter();
        v114 = v251;
        OSSignpostID.init(log:)();
        OUTLINED_FUNCTION_10_1();
        outlined init with copy of MaterializedViewPhysicalPlan(v243, v113);
        v115 = v246;

        v116 = OSSignposter.logHandle.getter();
        v117 = static os_signpost_type_t.begin.getter();

        if (OS_os_log.signpostsEnabled.getter())
        {
          v118 = v115;
          v119 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v277[0]._rawValue = v97;
          *v119 = v248;
          *(v119 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v242, v118, v277);
          *(v119 + 12) = 2082;
          v120 = MaterializedView.name.getter();
          v111 = v121;
          outlined destroy of MaterializedViewPhysicalPlan(v113);
          v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v111, v277);

          *(v119 + 14) = v122;
          v123 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_1848EE000, v116, v117, v123, "IncrementalViewUpdateBatch", "database:%{public}s view:%{public}s", v119, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_11_1();
          MEMORY[0x1865F7B70]();
          OUTLINED_FUNCTION_11_1();
          MEMORY[0x1865F7B70]();
        }

        else
        {

          outlined destroy of MaterializedViewPhysicalPlan(v113);
        }

        v124 = v245;
        OUTLINED_FUNCTION_16_0();
        v125(v244, v114, v252);
        v126 = type metadata accessor for OSSignpostIntervalState();
        OUTLINED_FUNCTION_35_0(v126);
        OUTLINED_FUNCTION_25_0();
        v127 = OSSignpostIntervalState.init(id:isOpen:)();
        v128 = OUTLINED_FUNCTION_20_1();
        v129 = v259;
        v130 = SelectCorePhysicalPlan.update(metadata:)(v128);
        v132 = v243;
        v259 = v129;
        if (v129)
        {
          break;
        }

        v133 = v130;
        LODWORD(v250) = v131;
        v260 = v127;
        if (one-time initialization token for compute != -1)
        {
          OUTLINED_FUNCTION_9_1();
          swift_once();
        }

        v134 = type metadata accessor for Logger();
        v135 = __swift_project_value_buffer(v134, static Logging.compute);
        OUTLINED_FUNCTION_10_1();
        outlined init with copy of MaterializedViewPhysicalPlan(v132, v124);

        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.debug.getter();
        v138 = os_log_type_enabled(v136, v137);
        v139 = v257;
        if (v138)
        {
          v140 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v277[0]._rawValue = v97;
          *v140 = v238;
          *(v140 + 4) = v133[2];

          *(v140 + 12) = 2080;
          v141 = MaterializedView.name.getter();
          v111 = v142;
          outlined destroy of MaterializedViewPhysicalPlan(v124);
          v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v111, v277);

          *(v140 + 14) = v135;
          _os_log_impl(&dword_1848EE000, v136, v137, "persisting %ld changes for materialized view %s", v140, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v97);
          OUTLINED_FUNCTION_11_1();
          MEMORY[0x1865F7B70]();
          OUTLINED_FUNCTION_11_1();
          MEMORY[0x1865F7B70]();
        }

        else
        {

          outlined destroy of MaterializedViewPhysicalPlan(v124);
        }

        OUTLINED_FUNCTION_29_0();
        OUTLINED_FUNCTION_28_0();
        LODWORD(v269) = 0;
        v143 = 0;
        v265 = v133[2];
        v264 = (v133 + 4);
        v144 = v259;
        v263 = v133;
        while (v143 != v265)
        {
          if (v143 >= v133[2])
          {
            __break(1u);
LABEL_78:

            v216 = BMSQLDatabaseError(v135, v234, 0);
            swift_getErrorValue();
            v217 = Error.localizedDescription.getter();
            v219 = v218;

            v277[0]._rawValue = v217;
            v277[1]._rawValue = v219;
            OUTLINED_FUNCTION_1();
            v275 = v220;
            v276 = v221;
            OUTLINED_FUNCTION_2_7();
            v273 = v222;
            v274 = v223;
            lazy protocol witness table accessor for type String and conformance String();
            OUTLINED_FUNCTION_13_1();
            v224 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v226 = v225;

            v227 = lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
            OUTLINED_FUNCTION_63(&type metadata for SQLDatabaseError, v227);
            v228 = v269;
            *v229 = v143;
            *(v229 + 8) = v228;
            *(v229 + 16) = v224;
            *(v229 + 24) = v226;
            *(v229 + 32) = 1;
            swift_willThrow();

            OUTLINED_FUNCTION_33_0();

            OUTLINED_FUNCTION_20_1();

LABEL_73:
            v210 = OUTLINED_FUNCTION_1_16();
            v211(v210);
            goto LABEL_74;
          }

          v145 = (v264 + 16 * v143);
          v146 = *v145;
          v147 = *(v145 + 1);
          v148 = v280;

          v149 = recordAsSQL #1 (schema:changeRecord:) in DBViewWriter.sendDatabaseUpdate(changeRecords:)(v148, v146, v147);
          if (v144)
          {
            v208 = OUTLINED_FUNCTION_1_16();
            v209(v208);

            goto LABEL_71;
          }

          v268 = v143 + 1;
          v267 = v147;
          if (v146)
          {
            if ((v269 & 1) == 0)
            {
              v143 = v283;
              v165 = v149;
              v269 = v284;
              v97 = String.utf8CString.getter();
              OUTLINED_FUNCTION_13_1();
              v135 = sqlite3_exec(v166, v167, v168, v169, v170);

              v149 = v165;
              if (v135)
              {
                goto LABEL_78;
              }
            }

            v171 = *(v149 + 16);
            if (v171)
            {
              v259 = 0;
              v277[0]._rawValue = MEMORY[0x1E69E7CC0];
              v172 = v149;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v171, 0);
              v269 = v277[0]._rawValue;
              OUTLINED_FUNCTION_19_0();
              v266 = v172;
              v174 = v172 + v173;
              v261 = *(v139 + 72);
              v137 = v272;
              v175 = v270;
              do
              {
                outlined init with copy of Date?(v174, v111, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR);
                v176 = *(v137 + 72);
                v177 = (*(v137 + 80) + 32) & ~*(v137 + 80);
                v97 = swift_allocObject();
                *(v97 + 1) = v262;
                outlined init with copy of Date?(v111, v175, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);

                v178 = v258;
                outlined init with take of MaterializedViewPhysicalPlan(v175 + *(v258 + 48), v97 + v177);
                v179 = v255;
                outlined init with copy of Date?(v111, v255, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);

                outlined init with take of MaterializedViewPhysicalPlan(v179 + *(v178 + 48), v97 + v177 + v176);
                outlined destroy of UUID?(v111, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
                OUTLINED_FUNCTION_23_0();
                v277[0]._rawValue = v180;
                v182 = v180[2];
                v181 = v180[3];
                if (v182 >= v181 >> 1)
                {
                  v184 = OUTLINED_FUNCTION_22_0(v181);
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v184, v182 + 1, 1);
                  v269 = v277[0]._rawValue;
                }

                OUTLINED_FUNCTION_23_0();
                *(v183 + 16) = v182 + 1;
                *(v183 + 8 * v182 + 32) = v97;
                v174 += v261;
                --v171;
                v175 = v270;
                v111 = v271;
                v137 = v272;
              }

              while (v171);

              OUTLINED_FUNCTION_28_0();
              v104 = MEMORY[0x1E69E7CC0];
              v133 = v263;
            }

            else
            {

              v104 = MEMORY[0x1E69E7CC0];
              v269 = MEMORY[0x1E69E7CC0];
            }

            v111 = 0;
            OUTLINED_FUNCTION_23_0();
            v266 = *(v185 + 16);
            while (1)
            {
              v143 = v268;
              if (v266 == v111)
              {
                break;
              }

              OUTLINED_FUNCTION_23_0();
              if (v111 >= *(v186 + 16))
              {
                __break(1u);
LABEL_80:
                __break(1u);
LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
                goto LABEL_84;
              }

              OUTLINED_FUNCTION_23_0();
              v137 = *(v187 + 8 * v111 + 32);
              v188 = *(v137 + 16);
              Kind = v104[1].Kind;
              if (__OFADD__(Kind, v188))
              {
                goto LABEL_80;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || (v97 = v104, Kind + v188 > (v104[1].Description >> 1)))
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v97 = v190;
              }

              if (*(v137 + 16))
              {
                if ((*(v97 + 3) >> 1) - *(v97 + 2) < v188)
                {
                  goto LABEL_82;
                }

                swift_arrayInitWithCopy();

                OUTLINED_FUNCTION_28_0();
                if (v188)
                {
                  v191 = *(v97 + 2);
                  v192 = __OFADD__(v191, v188);
                  v193 = v191 + v188;
                  if (v192)
                  {
                    goto LABEL_83;
                  }

                  *(v97 + 2) = v193;
                }
              }

              else
              {

                OUTLINED_FUNCTION_28_0();
                if (v188)
                {
                  goto LABEL_81;
                }
              }

              ++v111;
              v104 = v97;
            }

            v135 = v279;
            SQLExpressionEvaluator.execute(sql:bindingValues:)(v282, v104);
            v144 = v194;
            v139 = v257;
            if (v194)
            {
              goto LABEL_72;
            }

            OUTLINED_FUNCTION_25_0();

            OUTLINED_FUNCTION_33_0();

            LODWORD(v269) = 1;
            OUTLINED_FUNCTION_29_0();
          }

          else
          {
            v150 = *(v149 + 16);
            if (v150)
            {
              v259 = 0;
              v277[0]._rawValue = MEMORY[0x1E69E7CC0];
              v151 = v149;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v150, 0);
              v152 = v277[0]._rawValue;
              OUTLINED_FUNCTION_19_0();
              v266 = v151;
              v154 = v151 + v153;
              v155 = *(v139 + 72);
              do
              {
                outlined init with copy of Date?(v154, v111, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
                v156 = v111;
                v157 = v270;
                outlined init with take of UUID?(v156, v270, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);

                OUTLINED_FUNCTION_2_8();
                outlined init with take of MaterializedViewPhysicalPlan(v157 + v158, v137);
                v277[0]._rawValue = v152;
                v159 = v137;
                v161 = v152[2];
                v160 = v152[3];
                if (v161 >= v160 >> 1)
                {
                  v163 = OUTLINED_FUNCTION_22_0(v160);
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v163, v161 + 1, 1);
                  v152 = v277[0]._rawValue;
                }

                v152[2] = v161 + 1;
                OUTLINED_FUNCTION_19_0();
                OUTLINED_FUNCTION_2_8();
                outlined init with take of MaterializedViewPhysicalPlan(v159, v162);
                v154 += v155;
                --v150;
                v111 = v271;
                v137 = v159;
              }

              while (v150);

              v97 = v256;
              v139 = v257;
              v133 = v263;
            }

            else
            {

              v152 = MEMORY[0x1E69E7CC0];
            }

            v135 = v279;
            SQLExpressionEvaluator.execute(sql:bindingValues:)(v281, v152);
            v144 = v164;
            v143 = v268;
            if (v164)
            {
LABEL_72:
              OUTLINED_FUNCTION_33_0();

              OUTLINED_FUNCTION_20_1();

              goto LABEL_73;
            }

            OUTLINED_FUNCTION_25_0();

            OUTLINED_FUNCTION_33_0();
          }
        }

        QueryPlannerMetadata.storeMetadata()();
        if (v195)
        {
          v214 = OUTLINED_FUNCTION_1_16();
          v215(v214);
LABEL_71:

          OUTLINED_FUNCTION_20_1();

LABEL_74:
          outlined destroy of DBViewWriter(&v278);
          return;
        }

        v259 = 0;
        v111 = v237;
        v196 = OSSignposter.logHandle.getter();
        v197 = v241;
        OSSignpostIntervalState.signpostID.getter();
        v198 = static os_signpost_type_t.end.getter();
        v199 = OS_os_log.signpostsEnabled.getter();
        v113 = v247;
        if (v199)
        {

          checkForErrorAndConsumeState(state:)();

          OUTLINED_FUNCTION_16_0();
          v200 = v240;
          v202 = v201(v97, v240);
          v203 = "[Error] Interval already ended";
          if (v202 != v235)
          {
            OUTLINED_FUNCTION_16_0();
            v204(v97, v200);
            v203 = "";
          }

          v97 = swift_slowAlloc();
          *v97 = 0;
          v205 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_1848EE000, v196, v198, v205, "IncrementalViewUpdateBatch", v203, v97, 2u);
          OUTLINED_FUNCTION_11_1();
          MEMORY[0x1865F7B70]();
        }

        v206 = *v249;
        v207 = v252;
        (*v249)(v197, v252);
        v206(v251, v207);
        if (v250)
        {
          outlined destroy of DBViewWriter(&v278);
          OUTLINED_FUNCTION_20_1();

          return;
        }
      }

      v212 = OUTLINED_FUNCTION_1_16();
      v213(v212);

      OUTLINED_FUNCTION_20_1();

      outlined destroy of DBViewWriter(&v278);
    }
  }
}

uint64_t outlined destroy of MaterializedViewPhysicalPlan(uint64_t a1)
{
  v2 = type metadata accessor for MaterializedViewPhysicalPlan(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1848F59E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_84();
  type metadata accessor for MaterializedView();
  OUTLINED_FUNCTION_83();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    type metadata accessor for SelectCorePhysicalPlan(0);
    OUTLINED_FUNCTION_83();
    if (*(v10 + 84) != a2)
    {
      return OUTLINED_FUNCTION_98(*(v3 + *(a3 + 24)));
    }

    v9 = OUTLINED_FUNCTION_100();
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2_10()
{

  JUMPOUT(0x1865F6280);
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return errstart(20, 0);
}

void OUTLINED_FUNCTION_25()
{
  v2 = *(v1 - 192);
  *v0 = *(v1 - 120);
  v0[1] = v2;
}

id OUTLINED_FUNCTION_25_1(uint64_t a1)
{

  return BMSQLDatabaseError(a1, v1, 0);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

void OUTLINED_FUNCTION_9_4()
{

  JUMPOUT(0x1865F6280);
}

uint64_t OUTLINED_FUNCTION_9_5()
{

  return Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return errcode();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return String.lowercased()()._countAndFlagsBits;
}

double OUTLINED_FUNCTION_15()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_1@<X0>(uint64_t a3@<X8>)
{
  *(a3 - 256) = v3;

  return static _DictionaryStorage.resize(original:capacity:move:)();
}

void OUTLINED_FUNCTION_29_1()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  *(v1 - 152) = *v0;
  *(v1 - 104) = v2;
  *(v1 - 96) = v3;
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t type metadata accessor for StorableValue(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_63(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_13_2(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;
  return v2 - 112;
}

void OUTLINED_FUNCTION_7_6()
{
  *(v0 + 408) = 34;
  *(v0 + 416) = 0xE100000000000000;

  JUMPOUT(0x1865F6280);
}

void OUTLINED_FUNCTION_7_7(int a1@<W8>)
{
  *(v1 - 604) = a1;
  *(v1 - 616) = *(v1 - 528) + 104;
  *(v1 - 624) = *(v1 - 520) + 32;
  *(v1 - 632) = *(v1 - 560) + 8;
}

uint64_t OUTLINED_FUNCTION_7_8()
{
  v3 = *(v1 - 8);

  return scanner_errposition(v3, v0);
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_41_1(int a1@<W8>)
{
  *(v3 - 460) = a1;
  *(v3 - 472) = v1 + 32;
  *(v3 - 480) = v2 + 8;
}

uint64_t OUTLINED_FUNCTION_80_1(uint64_t a1)
{

  return Optional<A>.hashValue.getter();
}

void OUTLINED_FUNCTION_24_0()
{
  v1 = *(v0 - 96);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  result = v1;
  *(v2 - 128) = v0;
  return result;
}

uint64_t bind(_:to:db:)(uint64_t a1, sqlite3_stmt *a2, sqlite3 *a3)
{
  v173 = a3;
  v198 = a2;
  v215 = *MEMORY[0x1E69E9840];
  v205 = type metadata accessor for UUID();
  v4 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205, v5);
  v170 = v6;
  v7 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v164 - v14;
  v179 = type metadata accessor for Date();
  v16 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179, v17);
  v176 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v23 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v194 = &v164 - v25;
  v202 = type metadata accessor for SQLDataType();
  Description = v202[-1].Description;
  MEMORY[0x1EEE9AC00](&v202[-1].Description, v27);
  v201 = &v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for StorableValue(0);
  v191 = *(v209 - 8);
  v30 = MEMORY[0x1EEE9AC00](v209, v29);
  v171 = &v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v178 = &v164 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v177 = &v164 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v172 = &v164 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v181 = &v164 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v180 = &v164 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v187 = &v164 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v189 = &v164 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v207 = &v164 - v55;
  MEMORY[0x1EEE9AC00](v54, v56);
  v210 = &v164 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_12BiomeStreams13StorableValueO7elementtMd, &_sSi6offset_12BiomeStreams13StorableValueO7elementtMR);
  MEMORY[0x1EEE9AC00](v58, v59);
  v190 = (&v164 - v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_12BiomeStreams13StorableValueO7elementtSgMd, &_sSi6offset_12BiomeStreams13StorableValueO7elementtSgMR);
  v63 = MEMORY[0x1EEE9AC00](v61 - 8, v62);
  v204 = &v164 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v65);
  v203 = &v164 - v66;
  v67 = 0;
  v192 = a1;
  v68 = *(a1 + 16);
  v182 = 7;
  v199 = (Description + 104);
  v183 = 6;
  v185 = 4;
  v184 = 5;
  v188 = 2;
  v167 = Description;
  v200 = (Description + 88);
  v169 = (v4 + 32);
  v168 = (v4 + 8);
  v175 = (v16 + 32);
  v174 = (v16 + 8);
  v69 = &_s10Foundation4UUIDVSgMd;
  v186 = 3;
  v195 = 1;
  v206 = 0;
  v196 = v68;
  v193 = v23;
  v197 = v58;
  while (1)
  {
    if (v67 == v68)
    {
      v70 = 1;
      v208 = v68;
      v71 = v205;
      v72 = v204;
    }

    else
    {
      if (v67 >= v68)
      {
        goto LABEL_149;
      }

      v73 = v67 + 1;
      v71 = v205;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_150;
      }

      *v190 = v67;
      outlined init with copy of SQLExpressionEvaluatorError();
      v72 = v204;
      outlined init with take of (offset: Int, element: StorableValue)();
      v70 = 0;
      v208 = v73;
    }

    v74 = v203;
    __swift_storeEnumTagSinglePayload(v72, v70, 1, v58);
    outlined init with take of (offset: Int, element: StorableValue)();
    result = __swift_getEnumTagSinglePayload(v74, 1, v58);
    if (result == 1)
    {
      return result;
    }

    v76 = v58;
    v77 = v69;
    v78 = v74;
    v79 = *v74;
    outlined init with take of StorableValue(v78 + *(v76 + 48), v210);
    v80 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v80 < 0xFFFFFFFF80000000)
    {
      goto LABEL_147;
    }

    if (v80 > 0x7FFFFFFF)
    {
      goto LABEL_148;
    }

    outlined init with copy of SQLExpressionEvaluatorError();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v82 = v202;
    v83 = v201;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        (*v199)(v201, v195, v202);
        break;
      case 2:
        (*v199)(v201, v186, v202);
        goto LABEL_21;
      case 3:
        outlined destroy of StorableValue(v207);
        (*v199)(v83, v188, v82);
        break;
      case 4:
        outlined destroy of StorableValue(v207);
        (*v199)(v83, v184, v82);
        break;
      case 5:
        outlined destroy of StorableValue(v207);
        (*v199)(v83, v185, v82);
        break;
      case 6:
        (*v199)(v201, v183, v202);
LABEL_21:
        outlined destroy of StorableValue(v207);
        break;
      case 7:
        (*v199)(v201, v182, v202);
        break;
      default:
        (*v199)(v201, v206, v202);
        break;
    }

    v84 = (*v200)(v83, v82);
    if (v84 == v206)
    {
      v85 = v189;
      outlined init with copy of SQLExpressionEvaluatorError();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_141;
      }

      if ((v85[8] & 1) == 0)
      {
        v86 = sqlite3_bind_int64(v198, v80, *v85);
        goto LABEL_59;
      }

LABEL_58:
      v86 = sqlite3_bind_null(v198, v80);
LABEL_59:
      v90 = v86;
      goto LABEL_60;
    }

    v87 = v193;
    if (v84 == v195)
    {
      v85 = v187;
      outlined init with copy of SQLExpressionEvaluatorError();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_141;
      }

      if (v85[8])
      {
        goto LABEL_58;
      }

      v86 = sqlite3_bind_double(v198, v80, *v85);
      goto LABEL_59;
    }

    if (v84 == v188)
    {
      v85 = v181;
      outlined init with copy of SQLExpressionEvaluatorError();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_141;
      }

      goto LABEL_32;
    }

    if (v84 == v186)
    {
      v91 = v180;
      outlined init with copy of SQLExpressionEvaluatorError();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v155 = v91;
LABEL_142:
        outlined destroy of StorableValue(v155);
LABEL_143:
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        swift_allocError();
        v157 = v156;
        v156[3] = v209;
        __swift_allocate_boxed_opaque_existential_0(v156);
        v158 = v210;
        outlined init with copy of SQLExpressionEvaluatorError();
        *(v157 + 2) = 0u;
        *(v157 + 3) = 0u;
        *(v157 + 64) = 3;
        swift_willThrow();
        v154 = v158;
        return outlined destroy of StorableValue(v154);
      }

      outlined init with take of (offset: Int, element: StorableValue)();
      outlined init with copy of UUID?();
      v92 = v179;
      if (__swift_getEnumTagSinglePayload(v87, 1, v179) == 1)
      {
        outlined destroy of UUID?(v87, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v90 = sqlite3_bind_null(v198, v80);
      }

      else
      {
        v99 = v176;
        (*v175)(v176, v193, v92);
        v100 = v92;
        Date.timeIntervalSince1970.getter();
        v90 = sqlite3_bind_double(v198, v80, v101);
        (*v174)(v99, v100);
      }

      outlined destroy of UUID?(v194, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_60;
    }

    if (v84 == v185)
    {
      v85 = v177;
      outlined init with copy of SQLExpressionEvaluatorError();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_141;
      }

      v93 = *(v85 + 1);
      if (v93 >> 60 == 15)
      {
        goto LABEL_58;
      }

      v94 = *v85;
      switch(v93 >> 62)
      {
        case 1uLL:
          if (v94 >> 32 < v94)
          {
            goto LABEL_156;
          }

          v166 = *v85;
          v165 = v94;
          v121 = __DataStorage._bytes.getter();
          if (v121)
          {
            v122 = __DataStorage._offset.getter();
            v123 = v165;
            if (__OFSUB__(v165, v122))
            {
              goto LABEL_161;
            }

            v121 += v165 - v122;
          }

          else
          {
            v123 = v165;
          }

          v129 = (v94 >> 32) - v123;
          v130 = MEMORY[0x1865F59E0]();
          if (v130 >= v129)
          {
            v112 = v129;
          }

          else
          {
            v112 = v130;
          }

          v113 = v121;
          if (v121)
          {
            if (v112 < 0xFFFFFFFF80000000)
            {
              goto LABEL_154;
            }

            if (v112 > 0x7FFFFFFF)
            {
              goto LABEL_155;
            }
          }

          else
          {
            LODWORD(v112) = 0;
          }

LABEL_102:
          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            swift_once();
          }

          v90 = sqlite3_bind_blob(v198, v80, v113, v112, SQLITE_TRANSIENT);
          v114 = v166;
LABEL_105:
          outlined consume of Data?(v114, v93);
          break;
        case 2uLL:
          v166 = *v85;
          v105 = *(v94 + 16);
          v165 = *(v94 + 24);
          v106 = __DataStorage._bytes.getter();
          if (!v106)
          {
            goto LABEL_66;
          }

          v107 = __DataStorage._offset.getter();
          if (__OFSUB__(v105, v107))
          {
            goto LABEL_160;
          }

          v106 += v105 - v107;
LABEL_66:
          v108 = __OFSUB__(v165, v105);
          v109 = v165 - v105;
          if (v108)
          {
            goto LABEL_157;
          }

          v110 = MEMORY[0x1865F59E0]();
          if (v110 >= v109)
          {
            v111 = v109;
          }

          else
          {
            v111 = v110;
          }

          if (v106)
          {
            v112 = v111;
          }

          else
          {
            v112 = 0;
          }

          if (v112 < 0xFFFFFFFF80000000)
          {
            goto LABEL_158;
          }

          if (v112 > 0x7FFFFFFF)
          {
            goto LABEL_159;
          }

          v113 = v106;
          goto LABEL_102;
        case 3uLL:
          *(&__dst + 6) = 0;
          *&__dst = 0;
          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            swift_once();
          }

          v96 = SQLITE_TRANSIENT;
          v97 = v198;
          v98 = v80;
          v95 = 0;
          goto LABEL_79;
        default:
          *&__dst = *v85;
          WORD4(__dst) = v93;
          BYTE10(__dst) = BYTE2(v93);
          BYTE11(__dst) = BYTE3(v93);
          BYTE12(__dst) = BYTE4(v93);
          BYTE13(__dst) = BYTE5(v93);
          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            swift_once();
          }

          v95 = BYTE6(v93);
          v96 = SQLITE_TRANSIENT;
          v97 = v198;
          v98 = v80;
LABEL_79:
          v90 = sqlite3_bind_blob(v97, v98, &__dst, v95, v96);
          v114 = v94;
          goto LABEL_105;
      }

      goto LABEL_60;
    }

    v85 = v178;
    if (v84 == v184)
    {
      v85 = v172;
      outlined init with copy of SQLExpressionEvaluatorError();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_141;
      }

LABEL_32:
      if (!*(v85 + 1))
      {
        goto LABEL_58;
      }

      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        swift_once();
      }

      v88 = SQLITE_TRANSIENT;
      v89 = String.utf8CString.getter();

      v90 = sqlite3_bind_text(v198, v80, (v89 + 32), -1, v88);

LABEL_60:
      v69 = v77;
      goto LABEL_61;
    }

    if (v84 != v183)
    {
      if (v84 != v182)
      {
        goto LABEL_151;
      }

      v103 = v171;
      outlined init with copy of SQLExpressionEvaluatorError();
      v104 = swift_getEnumCaseMultiPayload();
      outlined destroy of StorableValue(v103);
      if (v104 != 7)
      {
        goto LABEL_143;
      }

      goto LABEL_58;
    }

    outlined init with copy of SQLExpressionEvaluatorError();
    if (swift_getEnumCaseMultiPayload() != 6)
    {
LABEL_141:
      v155 = v85;
      goto LABEL_142;
    }

    outlined init with take of (offset: Int, element: StorableValue)();
    v166 = v15;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v12, 1, v71) == 1)
    {
      outlined destroy of UUID?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v102 = sqlite3_bind_null(v198, v80);
      v15 = v166;
      v90 = v102;
      outlined destroy of UUID?(v166, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v69 = &_s10Foundation4UUIDVSgMd;
      goto LABEL_61;
    }

    (*v169)(v7, v12, v71);
    v115 = v170;
    if (v170)
    {
      if (v170 >= 15)
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        __DataStorage.init(bytes:length:)();
        v116 = v170;
        if (v170 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          inited = swift_initStackObject();
          *(inited + 2) = 0;
          *(inited + 3) = v116;
          v134 = __DataStorage._bytes.getter();
          if (v134)
          {
            v135 = v134;
            v136 = __DataStorage._offset.getter();
            if (__OFSUB__(0, v136))
            {
              goto LABEL_162;
            }

            v137 = (v135 - v136);
          }

          else
          {
            v137 = 0;
          }

          v166 = inited;
          v140 = MEMORY[0x1865F59E0]();
          if (v140 >= v170)
          {
            v141 = v170;
          }

          else
          {
            v141 = v140;
          }

          if (v137)
          {
            if (v141 < 0xFFFFFFFF80000000)
            {
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
            }

            if (v141 > 0x7FFFFFFF)
            {
              goto LABEL_164;
            }
          }

          else
          {
            v141 = 0;
          }

          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            v165 = v141;
            swift_once();
            LODWORD(v141) = v165;
          }

          v90 = sqlite3_bind_blob(v198, v80, v137, v141, SQLITE_TRANSIENT);
        }

        else
        {
          v117 = __DataStorage._bytes.getter();
          if (v117)
          {
            v118 = v117;
            v119 = __DataStorage._offset.getter();
            if (__OFSUB__(0, v119))
            {
              goto LABEL_163;
            }

            v120 = (v118 - v119);
          }

          else
          {
            v120 = 0;
          }

          v138 = MEMORY[0x1865F59E0]();
          v166 = v120;
          if (v120)
          {
            if (v138 >= v170)
            {
              v139 = v170;
            }

            else
            {
              v139 = v138;
            }

            if (v139 < 0xFFFFFFFF80000000)
            {
              goto LABEL_153;
            }
          }

          else
          {
            LODWORD(v139) = 0;
          }

          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            v142 = v139;
            swift_once();
            LODWORD(v139) = v142;
          }

          v90 = sqlite3_bind_blob(v198, v80, v166, v139, SQLITE_TRANSIENT);
        }

        (*v168)(v7, v205);
        v131 = v15;
        v69 = v77;
        v132 = v77;
        goto LABEL_137;
      }

      *(&__dst + 6) = 0;
      *&__dst = 0;
      BYTE14(__dst) = v170;
      memcpy(&__dst, v7, v170);
      v213[0] = __dst;
      *(v213 + 6) = *(&__dst + 6);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        swift_once();
      }

      v124 = SQLITE_TRANSIENT;
      p_dst = v213;
      v128 = v115;
      v126 = v198;
      v127 = v80;
    }

    else
    {
      *(&__dst + 6) = 0;
      *&__dst = 0;
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        swift_once();
      }

      v124 = SQLITE_TRANSIENT;
      p_dst = &__dst;
      v126 = v198;
      v127 = v80;
      v128 = 0;
    }

    v90 = sqlite3_bind_blob(v126, v127, p_dst, v128, v124);
    (*v168)(v7, v205);
    v131 = v15;
    v69 = v77;
    v132 = v77;
LABEL_137:
    outlined destroy of UUID?(v131, v132, &_s10Foundation4UUIDVSgMR);
LABEL_61:
    v58 = v197;
    if (v90)
    {
      if (!sqlite3_sql(v198))
      {
        __break(1u);
        JUMPOUT(0x1848F7C60);
      }

      v143 = String.init(cString:)();
      v145 = v144;
      v146 = BMSQLDatabaseError(v90, v173, 0);
      swift_getErrorValue();
      v147 = Error.localizedDescription.getter();
      v149 = v148;

      *&__dst = v147;
      *(&__dst + 1) = v149;
      strcpy(v213, "BMSQLDatabase");
      HIWORD(v213[1]) = -4864;
      v211 = 0x62617461444C5153;
      v212 = 0xEB00000000657361;
      lazy protocol witness table accessor for type String and conformance String();
      v150 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v152 = v151;

      lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      swift_allocError();
      *v153 = v143;
      *(v153 + 8) = v145;
      *(v153 + 16) = v150;
      *(v153 + 24) = v152;
      *(v153 + 32) = 2;
      swift_willThrow();
      v154 = v210;
      return outlined destroy of StorableValue(v154);
    }

    outlined destroy of StorableValue(v210);
    v68 = v196;
    v67 = v208;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  lazy protocol witness table accessor for type SQLError and conformance SQLError();
  swift_allocError();
  v160 = v159;
  v161 = v202;
  v159[3] = v202;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v159);
  v163 = v210;
  StorableValue.dataType.getter(boxed_opaque_existential_0);
  *(v160 + 2) = 0u;
  *(v160 + 3) = 0u;
  *(v160 + 64) = 3;
  swift_willThrow();
  outlined destroy of StorableValue(v163);
  return v167[1](v201, v161);
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLExpressionEvaluator.execute(sql:bindingValues:)(Swift::String sql, Swift::OpaquePointer bindingValues)
{
  v3 = v2;
  object = sql._object;
  countAndFlagsBits = sql._countAndFlagsBits;
  v48[1] = *MEMORY[0x1E69E9840];
  if (!*(*(v2 + 32) + 16) || (, v7 = OUTLINED_FUNCTION_52(), specialized __RawDictionaryStorage.find<A>(_:)(v7, v8), v10 = v9, , (v10 & 1) == 0))
  {
    v11 = *(v2 + 24);
    v48[0] = 0;
    OUTLINED_FUNCTION_52();
    v12 = String.utf8CString.getter();
    v15 = OUTLINED_FUNCTION_18_0(v11, (v12 + 32), v13, v14, v48);

    if (v15 || (v35 = v48[0]) == 0)
    {
      v16 = BMSQLDatabaseError(v15, v11, 0);
      swift_getErrorValue();
      Error.localizedDescription.getter();

      OUTLINED_FUNCTION_1();
      v46 = v17;
      OUTLINED_FUNCTION_2_7();
      v44 = v18;
      v45 = v19;
      v20 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_14_1(v20, v21, v22, v23, v24, v25, MEMORY[0x1E69E6158], v26, MEMORY[0x1E69E6158], v20, v20, v20, v44, v45, v46);
      OUTLINED_FUNCTION_3_10();
      v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v29 = v28;

      v30 = lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      v31 = OUTLINED_FUNCTION_63(&type metadata for SQLDatabaseError, v30);
      *v32 = countAndFlagsBits;
      v32[1] = object;
      v32[2] = v27;
      v32[3] = v29;
      OUTLINED_FUNCTION_20_2(v31, v32);

      goto LABEL_10;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v3 + 32);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
    *(v3 + 32) = v47;
  }

  v37 = OUTLINED_FUNCTION_52();
  v40 = specialized Dictionary.subscript.getter(v37, v38, v39);
  if (v40)
  {
    v33 = SQLExpressionEvaluator.execute(stmt:bindingValues:)(v40, bindingValues._rawValue);
  }

  else
  {
    _StringGuts.grow(_:)(50);

    v41 = OUTLINED_FUNCTION_52();
    MEMORY[0x1865F6280](v41);
    v33 = OUTLINED_FUNCTION_9_2("Fatal error", v42, v43, 0xD000000000000030, 0x8000000184DDBFC0, "BiomeStreams/SQLExpressionEvaluator.swift");
    __break(1u);
  }

LABEL_10:
  result.value._rawValue = v33;
  result.is_nil = v34;
  return result;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_106(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_81();
  v6(v5);
  return v4;
}

uint64_t outlined init with copy of MaterializedViewPhysicalPlan(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_84();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_81();
  v6(v5);
  return a2;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_106(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_81();
  v6(v5);
  return v4;
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t result, uint64_t a2)
{
  *(v2 - 112) = 0x336574696C71732ELL;
  *(v2 - 104) = 0xE800000000000000;
  *(v2 - 128) = result;
  *(v2 - 120) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_1()
{

  return _s10Foundation4UUIDVSgWOhTm_0(v1, v0, v2);
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

void sub_1848F837C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_84();
  type metadata accessor for MaterializedView();
  OUTLINED_FUNCTION_83();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for SelectCorePhysicalPlan(0);
    OUTLINED_FUNCTION_83();
    if (*(v12 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v11 = OUTLINED_FUNCTION_100();
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t getEnumTagSinglePayload for MaterializedView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
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

uint64_t (*IncrementalViewManager.cachedDatabaseWithAccess(for:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v3 = v2;
  v131 = *MEMORY[0x1E69E9840];
  v119 = type metadata accessor for URL.DirectoryHint();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v6);
  v117 = v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v116 = v105 - v10;
  v123 = type metadata accessor for URL();
  v120 = *(v123 - 1);
  v12 = MEMORY[0x1EEE9AC00](v123, v11);
  v14 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v105 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v105 - v20;
  v22 = *(a2 + 8);
  v23 = *(v22 + 8);
  v121 = a1;
  v122 = v23;
  v24 = v23(a1, v22);
  v26 = v25;
  v27 = OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_cachedDatabaseWithAccesses;
  v28 = specialized Dictionary.subscript.getter(v24, v25, *(v3 + OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_cachedDatabaseWithAccesses));
  if (v28)
  {
    v29 = v28;
LABEL_3:

    return v29;
  }

  v112 = v14;
  v113 = v18;
  v107 = v24;
  v108 = v27;
  v115 = v26;
  v109 = v3;
  v114 = v21;
  v30 = v123;
  type metadata accessor for BMStreamBase(0, &lazy cache variable for type metadata for BMResourceSpecifier, 0x1E698E9F8);
  v31 = v121;
  v29 = v122;
  v32 = v122(v121, v22);
  v34 = BMResourceSpecifier.__allocating_init(type:name:)(3, v32, v33);
  v35 = [objc_allocWithZone(MEMORY[0x1E698E968]) initWithUseCase_];
  v129 = 0;
  v36 = [v35 requestAccessToResource:v34 mode:3 error:&v129];
  if (!v36)
  {
    v67 = v35;
    v68 = v129;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v29;
  }

  v37 = v36;
  v110 = v34;
  v38 = v129;
  v39 = [v37 path];
  v111 = v35;
  if (v39)
  {
    v40 = v39;
    v106 = v37;
    v105[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v105[0] = v41;

    v42 = v29(v31, v22);
    v129 = 0x336574696C71732ELL;
    v130 = 0xE800000000000000;
    v127[0] = v42;
    v127[1] = v43;
    v127[0] = String.init<A>(_:)();
    v127[1] = v44;
    String.append<A>(contentsOf:)();
    v45 = v127[1];
    v122 = v127[0];
    __swift_storeEnumTagSinglePayload(v116, 1, 1, v30);
    v46 = *MEMORY[0x1E6968F70];
    v47 = v118;
    v48 = *(v118 + 104);
    v49 = v117;
    v50 = v119;
    v48(v117, v46, v119);
    v51 = v112;
    URL.init(filePath:directoryHint:relativeTo:)();
    v129 = v122;
    v130 = v45;
    v48(v49, v46, v50);
    lazy protocol witness table accessor for type String and conformance String();
    v52 = v113;
    URL.appending<A>(component:directoryHint:)();
    (*(v47 + 8))(v49, v50);
    v53 = v120 + 8;
    v29 = *(v120 + 8);
    v54 = v51;
    v55 = v123;
    v29(v54, v123);

    v56 = v114;
    URL.standardizedFileURL.getter();
    v29(v52, v55);
    ppDb = 0;
    URL.path(percentEncoded:)(0);
    v57 = String.utf8CString.getter();

    v58 = sqlite3_open_v2((v57 + 32), &ppDb, 2, 0);

    if (v58 || (v82 = ppDb) == 0)
    {

      v59 = BMSQLDatabaseError(v58, ppDb, 0);
      swift_getErrorValue();
      v60 = Error.localizedDescription.getter();
      v62 = v61;

      v129 = v60;
      v130 = v62;
      strcpy(v127, "BMSQLDatabase");
      HIWORD(v127[1]) = -4864;
      v125 = 0x62617461444C5153;
      v126 = 0xEB00000000657361;
      v63 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v65 = v64;

      lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      swift_allocError();
      *v66 = v63;
      *(v66 + 8) = v65;
      *(v66 + 16) = 0;
      *(v66 + 24) = 0;
      *(v66 + 32) = 0;
      swift_willThrow();
      swift_unknownObjectRelease();

      v29(v56, v55);
      return v29;
    }

    v120 = v53;
    v83 = sqlite3_exec(ppDb, "PRAGMA journal_mode=WAL", 0, 0, 0);
    v84 = v111;
    v85 = v106;
    if (v83)
    {
      v86 = v83;

      v87 = BMSQLDatabaseError(v86, v82, 0);
      swift_getErrorValue();
      v88 = Error.localizedDescription.getter();
      v90 = v89;

      v129 = v88;
      v130 = v90;
      strcpy(v127, "BMSQLDatabase");
      HIWORD(v127[1]) = -4864;
      v125 = 0x62617461444C5153;
      v126 = 0xEB00000000657361;
      v91 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v93 = v92;

      lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
      swift_allocError();
      *v94 = 0xD000000000000017;
      *(v94 + 8) = 0x8000000184DDBE30;
      *(v94 + 16) = v91;
      *(v94 + 24) = v93;
      *(v94 + 32) = 1;
      swift_willThrow();
      swift_unknownObjectRelease();

      v29(v56, v123);
      return v29;
    }

    v29(v56, v55);

    type metadata accessor for DatabaseWithAccess();
    v100 = swift_allocObject();
    *(v100 + 16) = v82;
    *(v100 + 24) = v85;
    v101 = v109;
    if (*(v109 + OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_useCache))
    {
      v102 = v100;

      v103 = v108;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = *(v101 + v103);
      v29 = v102;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v102, v107, v115, isUniquelyReferenced_nonNull_native);
      *(v101 + v103) = v129;
    }

    else
    {
      v29 = v100;
    }

    goto LABEL_3;
  }

  if (one-time initialization token for compute != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, static Logging.compute);
  swift_unknownObjectRetain();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    LODWORD(v124) = v71;
    v73 = v72;
    v123 = swift_slowAlloc();
    v129 = v123;
    *v73 = 136315138;
    v74 = [v37 description];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v129);
    v79 = v111;

    *(v73 + 4) = v78;
    v29 = v122;
    _os_log_impl(&dword_1848EE000, v70, v124, "IncrementalViewManager: Access assertion: %s has a nil path", v73, 0xCu);
    v80 = v123;
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    MEMORY[0x1865F7B70](v80, -1, -1);
    MEMORY[0x1865F7B70](v73, -1, -1);

    v81 = v110;
  }

  else
  {

    v81 = v110;
    v79 = v111;
  }

  v95 = v29(v31, v22);
  v97 = v96;
  lazy protocol witness table accessor for type IncrementalViewManager.UpdateError and conformance IncrementalViewManager.UpdateError();
  swift_allocError();
  *v98 = v95;
  *(v98 + 8) = v97;
  *(v98 + 16) = 0;
  swift_willThrow();

  swift_unknownObjectRelease();
  return v29;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_132()
{
  result = *(v1 - 256);
  *(v1 - 152) = *(v0 + 32);
  *(v1 - 144) = v0 + 32;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_1@<X0>(void *a1@<X8>)
{
  v3 = (v1 + v2);
  v4 = a1[1];
  *v3 = *a1;
  v3[1] = v4;
  return 0;
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return dispatch thunk of Sequence.makeIterator()();
}

void OUTLINED_FUNCTION_30_3()
{
  v2 = *v0;
  v3 = *(*(v1 - 208) + 8);
  *(v1 - 192) = v2;
  *(v1 - 184) = v3;
}

uint64_t static BookmarkCache.createBookmarkTableSQL(materializedViewName:)()
{
  OUTLINED_FUNCTION_86_2();
  _StringGuts.grow(_:)(97);
  MEMORY[0x1865F6280](0xD00000000000001BLL, 0x8000000184DDC1D0);

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_136_0();
  MEMORY[0x1865F6280]();
  MEMORY[0x1865F6280](v1, v0);

  MEMORY[0x1865F6280](0xD000000000000044, 0x8000000184DDCF30);
  return 0;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_30_0();
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSs13OpaquePointerVGMd, &_ss17_NativeDictionaryVySSs13OpaquePointerVGMR);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v10);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v18 = *v5;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a3, a1, v18);
  }

  return result;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams18DatabaseWithAccess33_F8FA2739982A459A6E4E81EADE21431CLLCGMd, &_ss17_NativeDictionaryVySS12BiomeStreams18DatabaseWithAccess33_F8FA2739982A459A6E4E81EADE21431CLLCGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v20);
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *OUTLINED_FUNCTION_86_1@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v1;

  return Hasher.init(_seed:)();
}

void QueryPlannerMetadata.init(materializedView:database:cacheSize:)()
{
  OUTLINED_FUNCTION_64();
  v105 = v4;
  v106 = v1;
  v100 = v5;
  v7 = v6;
  v114 = *MEMORY[0x1E69E9840];
  v104 = *v0;
  MatchingRecordCache = type metadata accessor for KeyedFirstMatchingRecordCache(0);
  v9 = OUTLINED_FUNCTION_47(MatchingRecordCache);
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_9();
  v98 = v11;
  v12 = OUTLINED_FUNCTION_43();
  v13 = type metadata accessor for KeyedAggregationMetadataCache(v12);
  v14 = OUTLINED_FUNCTION_47(v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_9();
  v99 = v16;
  OUTLINED_FUNCTION_43();
  v17 = type metadata accessor for MaterializedView();
  OUTLINED_FUNCTION_2_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_9_0();
  v97 = v22;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_30();
  v101 = v25;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v90 - v28;
  v102 = type metadata accessor for BookmarkCache(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_80_2();
  v107 = v0;
  v34 = *(v19 + 16);
  v103 = v0 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_materializedView;
  v34();
  v108 = v7;
  (v34)(v29, v7, v17);
  type metadata accessor for SQLExpressionEvaluator();
  swift_allocObject();
  v35 = v106;
  v36 = v105;
  v37 = SQLExpressionEvaluator.init(db:)(v105);
  v106 = v35;
  if (v35)
  {
    v38 = *(v19 + 8);
    v39 = OUTLINED_FUNCTION_51_1();
    v38(v39);
    (v38)(v29, v17);
LABEL_10:
    (v38)(v103, v17);
    swift_deallocPartialClassInstance();
LABEL_11:
    OUTLINED_FUNCTION_65();
    return;
  }

  v91 = v3;
  v92 = v2;
  v93 = v34;
  v94 = v19 + 16;
  v96 = v19;
  v40 = v37;
  v110._countAndFlagsBits = MaterializedView.name.getter();
  v110._object = v41;

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_136_0();
  MEMORY[0x1865F6280]();

  object = v110._object;
  countAndFlagsBits = v110._countAndFlagsBits;
  MaterializedView.name.getter();
  v43 = static BookmarkCache.createBookmarkTableSQL(materializedViewName:)();
  v45 = v44;

  v46._countAndFlagsBits = v43;
  v47 = v40;
  v46._object = v45;
  SQLExpressionEvaluator.execute(sql:bindingValues:)(v46, MEMORY[0x1E69E7CC0]);
  if (v48)
  {

LABEL_7:

LABEL_8:
    v38 = *(v96 + 8);
LABEL_9:
    v50 = OUTLINED_FUNCTION_51_1();
    v38(v50);
    (v38)(v29, v17);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_121_0();

  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v110._countAndFlagsBits = 0xD00000000000001FLL;
  v110._object = 0x8000000184DDCED0;
  MEMORY[0x1865F6280](countAndFlagsBits, object);
  SQLExpressionEvaluator.execute(sql:bindingValues:)(v110, MEMORY[0x1E69E7CC0]);
  if (v49)
  {

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_121_0();

  if (!v40)
  {
    v106 = *(v102 + 20);

    v61 = 0;
    v62 = v96;
    v53 = v101;
    goto LABEL_20;
  }

  v51 = v96;
  if (*(v40 + 16) != 1)
  {

    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_1_23();
    v71 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v69, v70, &protocol conformance descriptor for MetadataSQLError);
    v72 = OUTLINED_FUNCTION_34_3(v71);
    OUTLINED_FUNCTION_62_2(v72, v73);
    swift_willThrow();

    v38 = *(v51 + 8);
    goto LABEL_9;
  }

  v106 = *(v102 + 20);
  specialized Collection.first.getter(v40, &v110);

  if (v110._object)
  {
    v90[1] = v111;
    countAndFlagsBits = v112;
    v52 = v113;

    v53 = v101;
    if (v52 != 3)
    {
      v75 = OUTLINED_FUNCTION_47_2();
      outlined consume of DatabaseValue(v75, v76, v52);
      OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_1_23();
      v79 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v77, v78, &protocol conformance descriptor for MetadataSQLError);
      v80 = OUTLINED_FUNCTION_34_3(v79);
      OUTLINED_FUNCTION_62_2(v80, v81);
      swift_willThrow();

      goto LABEL_8;
    }

    v90[0] = objc_opt_self();
    v54 = [objc_opt_self() bm_allowedClassesForSecureCodingBMBookmark];
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Set._bridgeToObjectiveC()().super.isa;

    OUTLINED_FUNCTION_47_2();
    v56 = Data._bridgeToObjectiveC()().super.isa;
    v110._countAndFlagsBits = 0;
    v57 = [v90[0] unarchivedObjectOfClasses:isa fromData:v56 error:&v110];

    if (v57)
    {
      v58 = v110._countAndFlagsBits;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10BMBookmark_pMd, &_sSo10BMBookmark_pMR);
      if (swift_dynamicCast())
      {
        v59 = OUTLINED_FUNCTION_47_2();
        outlined consume of DatabaseValue(v59, v60, 3);
        v61 = v109;
        v62 = v96;
        v47 = v40;
LABEL_20:
        v63 = v91;
        *(v91 + v106) = v61;
        (*(v62 + 32))(v63, v29, v17);
        v64 = v102;
        *(v63 + *(v102 + 24)) = 0;
        *(v63 + *(v64 + 28)) = v36;
        *(v63 + *(v64 + 32)) = v47;
        v65 = v92;
        _s12BiomeStreams13StorableValueOWObTm_1(v63, v92);
        v66 = v107;
        _s12BiomeStreams13StorableValueOWObTm_1(v65, v107 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_bookmark);
        v67 = v93;
        (v93)(v53, v108, v17);
        v68 = v99;
        KeyedAggregationMetadataCache.init(materializedView:database:cacheSize:)();
        _s12BiomeStreams13StorableValueOWObTm_1(v68, v66 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_keyedAggregationMetadata);
        (v67)(v97, v108, v17);
        v74 = v98;
        KeyedFirstMatchingRecordCache.init(materializedView:database:cacheSize:)();
        (*(v62 + 8))(v108, v17);
        _s12BiomeStreams13StorableValueOWObTm_1(v74, v66 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_keyedFirstMatchingRecord);
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_1_23();
      v85 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v83, v84, &protocol conformance descriptor for MetadataSQLError);
      v86 = OUTLINED_FUNCTION_34_3(v85);
      OUTLINED_FUNCTION_62_2(v86, v87);
    }

    else
    {
      v82 = v110._countAndFlagsBits;
      _convertNSErrorToError(_:)();
    }

    swift_willThrow();

    v88 = OUTLINED_FUNCTION_47_2();
    outlined consume of DatabaseValue(v88, v89, 3);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t SQLExpressionEvaluator.init(db:)(uint64_t a1)
{
  v3 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = 0;
  *(v1 + 32) = Dictionary.init(dictionaryLiteral:)();
  v4 = OUTLINED_FUNCTION_16_1();
  v9 = OUTLINED_FUNCTION_18_0(v4, v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_25_1(v9);
  swift_getErrorValue();
  Error.localizedDescription.getter();

  OUTLINED_FUNCTION_1();
  v33 = v11;
  OUTLINED_FUNCTION_2_7();
  v31 = v12;
  v32 = v13;
  v14 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_14_1(v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v14, v14, v31, v32, v33);
  OUTLINED_FUNCTION_3_10();
  v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v24 = v23;

  v25 = lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
  v26 = OUTLINED_FUNCTION_63(&type metadata for SQLDatabaseError, v25);
  *v27 = 0xD000000000000054;
  v27[1] = v2;
  v27[2] = v22;
  v27[3] = v24;
  OUTLINED_FUNCTION_20_2(v26, v27);

  OUTLINED_FUNCTION_26_1();
  return v3;
}

uint64_t MaterializedView.name.getter()
{
  v1 = *v0;

  return v1;
}

void OUTLINED_FUNCTION_88_1()
{

  JUMPOUT(0x1865F6280);
}

sqlite3 *SQLExpressionEvaluator.execute(stmt:bindingValues:)(sqlite3_stmt *a1, uint64_t a2)
{
  v6 = a1;
  v7 = *(v2 + 24);
  bind(_:to:db:)(a2, a1, v7);
  if (v3)
  {
    v8 = sqlite3_reset(v6);
    if (!v8)
    {
      return v5;
    }

    v9 = BMSQLDatabaseError(v8, v7, 0);
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = v11;

    v105 = v10;
    v106 = v12;
    lazy protocol witness table accessor for type String and conformance String();
    countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    object = v13;

    if (one-time initialization token for SQL != -1)
    {
LABEL_54:
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logging.SQL);

    v16 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v5))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v105 = v18;
      *v17 = 136315138;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v105);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_1848EE000, v16, v5, "SQLExpressionEvaluator: Failed to reset statement with error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1865F7B70](v18, -1, -1);
      MEMORY[0x1865F7B70](v17, -1, -1);
    }

    else
    {
    }

    if (sqlite3_sql(v6))
    {
LABEL_24:
      v46 = String.init(cString:)();
      specialized Dictionary._Variant.removeValue(forKey:)(v46, v47);

      sqlite3_finalize(v6);
      return v5;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v20 = sqlite3_step(v6);
  if (v20 == 101)
  {
    v49 = sqlite3_reset(v6);
    if (!v49)
    {
      return 0;
    }

    v50 = BMSQLDatabaseError(v49, v7, 0);
    swift_getErrorValue();
    v51 = Error.localizedDescription.getter();
    v53 = v52;

    v105 = v51;
    v106 = v53;
    lazy protocol witness table accessor for type String and conformance String();
    countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    object = v54;

    if (one-time initialization token for SQL == -1)
    {
LABEL_28:
      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logging.SQL);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v105 = v59;
        *v58 = 136315138;
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v105);

        *(v58 + 4) = v60;
        _os_log_impl(&dword_1848EE000, v56, v57, "SQLExpressionEvaluator: Failed to reset statement with error: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x1865F7B70](v59, -1, -1);
        MEMORY[0x1865F7B70](v58, -1, -1);
      }

      else
      {
      }

      if (!sqlite3_sql(v6))
      {
        goto LABEL_60;
      }

      v98 = String.init(cString:)();
      specialized Dictionary._Variant.removeValue(forKey:)(v98, v99);

      sqlite3_finalize(v6);
      return 0;
    }

LABEL_56:
    swift_once();
    goto LABEL_28;
  }

  if (v20 == 100)
  {
    v100 = v7;
    object = sqlite3_column_count(v6);
    v21 = Dictionary.init(dictionaryLiteral:)();
    v102 = object;
    if ((object & 0x80000000) == 0)
    {
      v5 = v21;
      v22 = 0;
      v101 = v6;
      while (v102 != v22)
      {
        if (v22 == 0x7FFFFFFF)
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if (!sqlite3_column_name(v6, v22))
        {
          __break(1u);
          goto LABEL_58;
        }

        String.init(cString:)();
        v23 = String.lowercased()();
        countAndFlagsBits = v23._countAndFlagsBits;
        object = v23._object;

        v103 = v22;
        v24 = DatabaseValue.init(stmt:index:)(v6, v22);
        v26 = v25;
        v28 = v27;
        v104 = v24;
        outlined copy of DatabaseValue(v24, v25, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = v5;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v23._countAndFlagsBits, v23._object);
        v32 = *(v5 + 2);
        v33 = (v31 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_52;
        }

        v35 = v30;
        v36 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13DatabaseValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13DatabaseValueOGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
        {
          v37 = specialized __RawDictionaryStorage.find<A>(_:)(v23._countAndFlagsBits, v23._object);
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_62;
          }

          v35 = v37;
        }

        v5 = v105;
        if (v36)
        {
          v39 = *(v105 + 7) + 24 * v35;
          v40 = *v39;
          countAndFlagsBits = *(v39 + 8);
          v41 = *(v39 + 16);
          v6 = v104;
          *v39 = v104;
          *(v39 + 8) = v26;
          *(v39 + 16) = v28;
        }

        else
        {
          *(v105 + (v35 >> 6) + 8) |= 1 << v35;
          *(*(v5 + 6) + 16 * v35) = v23;
          v42 = *(v5 + 7) + 24 * v35;
          v6 = v104;
          *v42 = v104;
          *(v42 + 8) = v26;
          *(v42 + 16) = v28;
          v43 = *(v5 + 2);
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            goto LABEL_53;
          }

          v40 = 0;
          countAndFlagsBits = 0;
          *(v5 + 2) = v45;
          v41 = -1;
        }

        outlined consume of DatabaseValue(v6, v26, v28);
        outlined consume of DatabaseValue?(v40, countAndFlagsBits, v41);
        v22 = v103 + 1;
        v6 = v101;
      }

      v85 = sqlite3_reset(v6);
      if (!v85)
      {
        return v5;
      }

      v61 = v5;
      v86 = BMSQLDatabaseError(v85, v100, 0);
      swift_getErrorValue();
      v87 = Error.localizedDescription.getter();
      v89 = v88;

      v105 = v87;
      v106 = v89;
      lazy protocol witness table accessor for type String and conformance String();
      v90 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v92 = v91;

      if (one-time initialization token for SQL != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      __swift_project_value_buffer(v93, static Logging.SQL);

      v81 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v81, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v105 = v96;
        *v95 = 136315138;
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v105);

        *(v95 + 4) = v97;
        _os_log_impl(&dword_1848EE000, v81, v94, "SQLExpressionEvaluator: Failed to reset statement with error: %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
        MEMORY[0x1865F7B70](v96, -1, -1);
        MEMORY[0x1865F7B70](v95, -1, -1);
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_56;
  }

  v61 = v7;
  v62 = BMSQLDatabaseError(v20, v7, 0);
  swift_getErrorValue();
  v63 = Error.localizedDescription.getter();
  v65 = v64;

  v105 = v63;
  v106 = v65;
  lazy protocol witness table accessor for type String and conformance String();
  v66 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v68 = v67;

  if (!sqlite3_sql(v6))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v5 = String.init(cString:)();
  v70 = v69;
  lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
  swift_allocError();
  *v71 = v5;
  *(v71 + 8) = v70;
  *(v71 + 16) = v66;
  *(v71 + 24) = v68;
  *(v71 + 32) = 1;
  swift_willThrow();
  v72 = sqlite3_reset(v6);
  if (!v72)
  {
    return v5;
  }

  v73 = BMSQLDatabaseError(v72, v61, 0);
  swift_getErrorValue();
  v74 = Error.localizedDescription.getter();
  v76 = v75;

  v105 = v74;
  v106 = v76;
  v77 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v79 = v78;

  if (one-time initialization token for SQL != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  __swift_project_value_buffer(v80, static Logging.SQL);

  v81 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v81, v5))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v105 = v83;
    *v82 = 136315138;
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v105);

    *(v82 + 4) = v84;
    _os_log_impl(&dword_1848EE000, v81, v5, "SQLExpressionEvaluator: Failed to reset statement with error: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x1865F7B70](v83, -1, -1);
    MEMORY[0x1865F7B70](v82, -1, -1);
  }

  else
  {
  }

  if (sqlite3_sql(v6))
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_48:

LABEL_49:

  v5 = v61;
  if (sqlite3_sql(v6))
  {
    goto LABEL_24;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
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

const void *DatabaseValue.init(stmt:index:)(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_type(a1, a2) - 1;
  result = 0;
  switch(v4)
  {
    case 0:
      return sqlite3_column_int64(a1, a2);
    case 1:
      return COERCE_CONST_VOID_(sqlite3_column_double(a1, a2));
    case 2:
      if (!sqlite3_column_text(a1, a2))
      {
        __break(1u);
LABEL_10:
        _StringGuts.grow(_:)(33);

        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865F6280](v8);

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        JUMPOUT(0x1848FAECCLL);
      }

      return String.init(cString:)();
    case 3:
      result = sqlite3_column_blob(a1, a2);
      if (result)
      {
        v6 = result;
        v7 = sqlite3_column_bytes(a1, a2);
        return MEMORY[0x1865F5B20](v6, v7);
      }

      return result;
    case 4:
      return result;
    default:
      goto LABEL_10;
  }
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

uint64_t outlined consume of DatabaseValue?(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of DatabaseValue(result, a2, a3);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12BiomeStreams13DatabaseValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized Dictionary.startIndex.getter(a1);
  if (v6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v7 = specialized Dictionary.subscript.getter(v19, result, v5, 0, a1);
    v8 = v12;
    v9 = v19[0];
    v10 = v19[1];
    v11 = v20;

    v13 = OUTLINED_FUNCTION_7_2();
    outlined copy of DatabaseValue(v13, v14, v15);

    v16 = OUTLINED_FUNCTION_7_2();
    result = outlined consume of DatabaseValue(v16, v17, v18);
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  return result;
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for Schema, a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for LogicalPlan, a2);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *(v6 + 8);
    *result = *v6;
    *(result + 8) = v7;
    v8 = *(v6 + 16);
    *(result + 16) = v8;

    v9 = OUTLINED_FUNCTION_2_5();
    outlined copy of DatabaseValue(v9, v10, v8);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = type metadata accessor for StorableValue(0);
    outlined init with copy of StorableValue(v7 + *(*(v8 - 8) + 72) * a2, v6);

    return OUTLINED_FUNCTION_2_5();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t outlined copy of DatabaseValue(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t outlined consume of DatabaseValue(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_75_1(int a1@<W8>)
{
  *(v3 - 452) = a1;
  *(v3 - 464) = v1 + 32;
  *(v3 - 472) = v2 + 8;
}

void OUTLINED_FUNCTION_73_1()
{

  JUMPOUT(0x1865F6280);
}

uint64_t outlined init with take of StorableValue(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_84();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_81();
  v6(v5);
  return a2;
}

{
  v4 = type metadata accessor for StorableValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s12BiomeStreams13StorableValueOWObTm_0()
{
  v1 = OUTLINED_FUNCTION_147();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_81();
  v4(v3);
  return v0;
}

uint64_t _s12BiomeStreams13StorableValueOWObTm_1(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_84();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_81();
  v6(v5);
  return a2;
}

void KeyedAggregationMetadataCache.init(materializedView:database:cacheSize:)()
{
  OUTLINED_FUNCTION_64();
  v265 = v0;
  v266 = v2;
  v4 = v3;
  v268 = v5;
  v253 = v6;
  v248 = type metadata accessor for SQLRawDataType();
  OUTLINED_FUNCTION_2_1();
  v246 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v10);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v15);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  OUTLINED_FUNCTION_2_1();
  v259 = v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_51();
  v256 = v21;
  OUTLINED_FUNCTION_43();
  v267 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v263 = v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_9_0();
  v257 = v25;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_51();
  v262 = v28;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
  OUTLINED_FUNCTION_2_1();
  v261 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_9_0();
  v260 = v32;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_45_0();
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v39 = &v230 - v38;
  MEMORY[0x1EEE9AC00](v37, v40);
  v42 = &v230 - v41;
  type metadata accessor for SelectCore();
  OUTLINED_FUNCTION_2_1();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  OUTLINED_FUNCTION_14();
  v49 = (v47 - v48);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v230 - v52;
  type metadata accessor for SQLExpressionEvaluator();
  swift_allocObject();
  v54 = v265;
  v55 = SQLExpressionEvaluator.init(db:)(v4);
  if (v54)
  {
    type metadata accessor for MaterializedView();
    OUTLINED_FUNCTION_5_7();
    (*(v56 + 8))(v268);
LABEL_8:
    OUTLINED_FUNCTION_65();
    return;
  }

  v258 = v49;
  v244 = v42;
  v255 = v39;
  v243 = v1;
  v265 = v4;
  v242 = v55;
  v254 = 0;
  MaterializedView.select.getter(v53);
  v57 = SelectCore.groupBy.getter();
  v58 = *(v44 + 8);
  v59 = OUTLINED_FUNCTION_133_0();
  v58(v59);
  if (!v57)
  {
    v65 = MEMORY[0x1E69E7CC0];
    type metadata accessor for KeyedAggregationMetadataCache(0);
    OUTLINED_FUNCTION_127_0();
    v66 = v253;
    *(v253 + v67) = 0;
    *(v66 + *(v68 + 52)) = v65;
    OUTLINED_FUNCTION_140_0();
    *(v66 + v69) = v70;
    v72 = (v66 + *(v71 + 60));
    *v72 = 0u;
    v72[1] = 0u;
    v74 = v265;
    v73 = v266;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySS12BiomeStreams13StorableValueOGG5value_AA10CacheEventO5eventtMd, &_sSaySDySS12BiomeStreams13StorableValueOGG5value_AA10CacheEventO5eventtMR);
    lazy protocol witness table accessor for type [StorableValue] and conformance <A> [A]();
    OUTLINED_FUNCTION_90_2();
    v75 = Dictionary.init(dictionaryLiteral:)();
    type metadata accessor for KeyedAggregationMetadataCache(0);
    *(v66 + v57[7]) = v75;
    v76 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySS12BiomeStreams13StorableValueOGGSgMd, &_sSaySDySS12BiomeStreams13StorableValueOGGSgMR);
    OUTLINED_FUNCTION_90_2();
    v77 = Dictionary.init(dictionaryLiteral:)();
    v78 = (v66 + v57[8]);
    *v78 = v76;
    v78[1] = v77;
    *(v66 + v57[9]) = v73;
    type metadata accessor for MaterializedView();
    OUTLINED_FUNCTION_12();
    v79 = OUTLINED_FUNCTION_60_2();
    v80(v79);
    v81 = MEMORY[0x1E69E7CD0];
    *(v66 + v57[6]) = MEMORY[0x1E69E7CD0];
    *(v66 + v57[5]) = v81;
    *(v66 + v57[10]) = v74;
    *(v66 + v57[11]) = v242;
    goto LABEL_8;
  }

  v271._countAndFlagsBits = v57;

  v60 = v254;
  specialized MutableCollection<>.sort(by:)();
  v61 = v60;
  if (v60)
  {
    goto LABEL_83;
  }

  countAndFlagsBits = v271._countAndFlagsBits;
  v63 = v258;
  MaterializedView.select.getter(v258);
  selectAndHavingAggregateFunctions(selectCore:)(v63);
  v64 = OUTLINED_FUNCTION_60_2();
  v58(v64);
  static KeyedAggregationMetadataCache.payloadSchema(aggregationFunctions:)();
  v83 = v82;

  _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm();
  v85 = v84;
  MaterializedView.name.getter();
  static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
  v57 = v86;

  v87 = OUTLINED_FUNCTION_20();
  v89 = tableExists(sqlExpressionEvaluator:tableName:)(v87, v88, v57);
  v254 = 0;
  v235 = v85;
  v233 = countAndFlagsBits;
  v90 = v89;

  v74 = v265;
  v232 = v90;
  v234 = v83;
  if (v90)
  {
    v73 = v266;
LABEL_11:

    type metadata accessor for KeyedAggregationMetadataCache(0);
    OUTLINED_FUNCTION_127_0();
    v91 = v253;
    *(v253 + v92) = v233;
    *(v91 + *(v93 + 52)) = v234;
    OUTLINED_FUNCTION_140_0();
    *(v96 + v95) = v94 & ~v232;

    v97 = MaterializedView.name.getter();
    _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm();
    v61 = v98;

    v99 = *(v61 + 16);
    v264 = v61;
    if (v99)
    {
      OUTLINED_FUNCTION_46_2();
      _StringGuts.grow(_:)(28);

      strcpy(&v271, "SELECT * FROM ");
      HIBYTE(v271._object) = -18;
      OUTLINED_FUNCTION_77();
      static KeyedAggregationMetadataCache.tableName(materializedViewName:)();

      v100 = OUTLINED_FUNCTION_94_2();
      MEMORY[0x1865F6280](v100);

      OUTLINED_FUNCTION_88_1();
      v101 = *(v61 + 16);
      v102 = MEMORY[0x1E69E7CC0];
      if (v101)
      {
        v262 = v57;
        v269 = MEMORY[0x1E69E7CC0];
        v103 = OUTLINED_FUNCTION_41_2();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v103, v104, v105);
        v106 = 0;
        OUTLINED_FUNCTION_12_6();
        v263 = v61 + v108;
        v109 = v254;
        v110 = v245;
        while (1)
        {
          v267 = v102;
          if (v106 >= *(v61 + 16))
          {
            goto LABEL_81;
          }

          outlined init with copy of Date?(v263 + *(v107 + 72) * v106, v110, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
          closure #2 in static KeyedQueryPlannerMetadataCache.updateMetadataSQL(materializedViewName:groupBySchema:payloadSchema:)();
          if (v109)
          {

            type metadata accessor for MaterializedView();
            OUTLINED_FUNCTION_5_7();
            (*(v226 + 8))(v268);
            outlined destroy of (columnName: String, dataType: SQLDataType)(v110, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);

            goto LABEL_67;
          }

          v113 = v111;
          v114 = v112;
          outlined destroy of (columnName: String, dataType: SQLDataType)(v110, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
          v102 = v267;
          v269 = v267;
          Kind = v267[1].Kind;
          Description = v267[1].Description;
          if (Kind >= Description >> 1)
          {
            v118 = OUTLINED_FUNCTION_4_9(Description);
            v254 = 0;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v118, Kind + 1, 1);
            v110 = v245;
            v109 = v254;
            v102 = v269;
          }

          ++v106;
          v102[1].Kind = Kind + 1;
          v117 = &v102[Kind];
          v117[2].Kind = v113;
          v117[2].Description = v114;
          v61 = v264;
          v74 = v265;
          v107 = v259;
          if (v101 == v106)
          {
            v254 = v109;
            v66 = v253;
            v73 = v266;
            v57 = v262;
            goto LABEL_68;
          }
        }
      }

      v66 = v253;
LABEL_68:
      v269 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v227 = lazy protocol witness table accessor for type [String] and conformance [A]();
      OUTLINED_FUNCTION_63_2(v227);
      OUTLINED_FUNCTION_75_2();

      OUTLINED_FUNCTION_74_2();

      MEMORY[0x1865F6280](41, 0xE100000000000000);
      object = v271._object;
      v217 = v271._countAndFlagsBits;
    }

    else
    {
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(16);

      strcpy(&v271, "SELECT * FROM ");
      HIBYTE(v271._object) = -18;
      OUTLINED_FUNCTION_77();
      static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
      OUTLINED_FUNCTION_75_2();

      MEMORY[0x1865F6280](v61, v97);

      object = v271._object;
      v217 = v271._countAndFlagsBits;
      v66 = v253;
    }

    v228 = swift_allocObject();
    *(v228 + 16) = v264;
    v229 = (v66 + v57[15]);
    *v229 = v217;
    v229[1] = object;
    v229[2] = closure #2 in static KeyedQueryPlannerMetadataCache.readMetadataSQL(materializedViewName:groupBySchema:)partial apply;
    v229[3] = v228;
    goto LABEL_7;
  }

  v119 = Dictionary.init(dictionaryLiteral:)();
  v120 = 0;
  v121 = *(v83 + 16);
  v258 = (v263 + 32);
  v236 = v263 + 40;
  v240 = (v263 + 8);
  v73 = v266;
  v61 = v264;
  v122 = v243;
  v123 = v244;
LABEL_21:
  v124 = v261;
  while (1)
  {
    if (v121 == v120)
    {
      v264 = *(v235 + 16);
      if (!v264)
      {
LABEL_50:

        v187 = v268;
        v61 = MaterializedView.name.getter();
        OUTLINED_FUNCTION_46_2();
        _StringGuts.grow(_:)(33);

        OUTLINED_FUNCTION_49_1();
        OUTLINED_FUNCTION_70();
        static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
        OUTLINED_FUNCTION_75_2();

        OUTLINED_FUNCTION_74_2();

        OUTLINED_FUNCTION_109_1();
        v188 = *(v119 + 16);
        v189 = MEMORY[0x1E69E7CC0];
        if (v188)
        {
          v272 = MEMORY[0x1E69E7CC0];
          v190 = OUTLINED_FUNCTION_41_2();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v190, v191, v192);
          v189 = v272;
          v193 = specialized Dictionary.startIndex.getter(v119);
          v196 = v263;
          v255 = (v263 + 16);
          v256 = v119 + 64;
          v246 += 8;
          while ((v193 & 0x8000000000000000) == 0 && v193 < 1 << *(v119 + 32))
          {
            v61 = v252;
            if (((*(v256 + ((v193 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v193) & 1) == 0)
            {
              goto LABEL_78;
            }

            LODWORD(v260) = v195;
            v261 = v194;
            v262 = v188;
            v264 = v189;
            if (*(v119 + 36) != v194)
            {
              goto LABEL_79;
            }

            v197 = *(v252 + 48);
            v198 = *(v119 + 56);
            v199 = (*(v119 + 48) + 16 * v193);
            v200 = *v199;
            v201 = v199[1];
            v202 = *(v196 + 72);
            v257 = v193;
            v203 = v267;
            v204 = v251;
            (*(v196 + 16))(v251 + v197, v198 + v202 * v193, v267);
            v205 = v250;
            *v250 = v200;
            *(v205 + 8) = v201;
            (*(v196 + 32))(v205 + *(v61 + 48), v204 + v197, v203);
            OUTLINED_FUNCTION_141_0();

            MEMORY[0x1865F6280](v200, v201);
            MEMORY[0x1865F6280](8226, 0xE200000000000000);
            v206 = v249;
            SQLDataType.columnType()();
            v254 = v207;
            if (v207)
            {

              type metadata accessor for MaterializedView();
              OUTLINED_FUNCTION_5_7();
              (*(v219 + 8))(v268);
              outlined destroy of (columnName: String, dataType: SQLDataType)(v205, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);

              goto LABEL_8;
            }

            v208 = SQLRawDataType.rawValue.getter();
            v210 = v209;
            OUTLINED_FUNCTION_16_0();
            v211(v206, v248);
            MEMORY[0x1865F6280](v208, v210);

            v212 = v269;
            v61 = v270;
            outlined destroy of (columnName: String, dataType: SQLDataType)(v205, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
            v189 = v264;
            v273 = v264;
            v214 = *(v264 + 16);
            v213 = *(v264 + 24);
            if (v214 >= v213 >> 1)
            {
              v216 = OUTLINED_FUNCTION_4_9(v213);
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v216, v214 + 1, 1);
              v189 = v273;
            }

            *(v189 + 16) = v214 + 1;
            v215 = v189 + 16 * v214;
            *(v215 + 32) = v212;
            *(v215 + 40) = v61;
            v193 = specialized _NativeDictionary.index(after:)(v257, v261, v260 & 1, v119);
            v196 = v263;
            v188 = (v262 - 1);
            v74 = v265;
            v73 = v266;
            if (v262 == 1)
            {
              outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v193, v194, v195 & 1);
              v187 = v268;
              goto LABEL_64;
            }
          }

          goto LABEL_77;
        }

LABEL_64:
        v269 = v189;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v220 = BidirectionalCollection<>.joined(separator:)();
        v222 = v221;

        MEMORY[0x1865F6280](v220, v222);

        OUTLINED_FUNCTION_73_1();

        v57 = v271._object;
        v223 = SQLExpressionEvaluator.execute(sql:bindingValues:)(v271, MEMORY[0x1E69E7CC0]);
        if (v224)
        {
          type metadata accessor for MaterializedView();
          OUTLINED_FUNCTION_5_7();
          (*(v225 + 8))(v187);

LABEL_67:

          goto LABEL_8;
        }

        v235 = v223;
        v254 = 0;

        goto LABEL_11;
      }

      v161 = 0;
      OUTLINED_FUNCTION_19_0();
      v162 = *(v247 + 48);
      v261 = v164 + v163;
      v262 = v162;
      v165 = v256;
      v166 = v257;
      v167 = v267;
      while (1)
      {
        if (v161 >= *(v235 + 16))
        {
          goto LABEL_74;
        }

        v61 = v165;
        outlined init with copy of Date?(v261 + *(v259 + 72) * v161, v165, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
        v169 = *v61;
        v168 = *(v61 + 8);
        v170 = *v258;
        (*v258)(v166, v262 + v61, v167);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v271._countAndFlagsBits = v119;
        specialized __RawDictionaryStorage.find<A>(_:)(v169, v168);
        OUTLINED_FUNCTION_27_3();
        v176 = v174 + v175;
        if (__OFADD__(v174, v175))
        {
          goto LABEL_75;
        }

        v177 = v172;
        v61 = v173;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v176))
        {
          v178 = specialized __RawDictionaryStorage.find<A>(_:)(v169, v168);
          v180 = v263;
          v166 = v257;
          if ((v61 & 1) != (v179 & 1))
          {
            goto LABEL_82;
          }

          v177 = v178;
          if ((v61 & 1) == 0)
          {
LABEL_45:
            v119 = v271._countAndFlagsBits;
            OUTLINED_FUNCTION_14_4(v271._countAndFlagsBits + 8 * (v177 >> 6));
            v181 = (*(v119 + 48) + 16 * v177);
            *v181 = v169;
            v181[1] = v168;
            v182 = *(v119 + 56) + *(v180 + 72) * v177;
            v167 = v267;
            v170(v182, v166, v267);
            v183 = *(v119 + 16);
            v157 = __OFADD__(v183, 1);
            v184 = v183 + 1;
            if (v157)
            {
              goto LABEL_80;
            }

            *(v119 + 16) = v184;
            goto LABEL_49;
          }
        }

        else
        {
          v180 = v263;
          v166 = v257;
          if ((v61 & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        v119 = v271._countAndFlagsBits;
        v185 = *(v271._countAndFlagsBits + 56) + *(v180 + 72) * v177;
        v186 = *(v180 + 40);
        v167 = v267;
        v186(v185, v166, v267);
LABEL_49:
        v74 = v265;
        v73 = v266;
        v165 = v256;
        if (v264 == ++v161)
        {
          goto LABEL_50;
        }
      }
    }

    if (v120 >= *(v83 + 16))
    {
      break;
    }

    v125 = *(v83 + 8 * v120++ + 32);
    if (*(v125 + 16))
    {
      v237 = *(v125 + 16);
      v230 = v121;
      v231 = v120;
      v239 = *(v61 + 64);
      OUTLINED_FUNCTION_19_0();
      v238 = v126 + v127;
      v241 = v126;

      v128 = 0;
      while (v128 < *(v241 + 16))
      {
        outlined init with copy of Date?(v238 + *(v124 + 72) * v128, v123, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        v129 = *v123;
        v130 = *(v123 + 16);
        v131 = *(v123 + 24);
        v132 = *(v61 + 64);
        v133 = v123;
        v134 = v119;
        v135 = v255;
        *v255 = v129;
        *(v135 + 2) = v130;
        *(v135 + 3) = v131;
        v61 = v258;
        v136 = *v258;
        v137 = v267;
        (*v258)(v135 + v132, v133 + v239, v267);
        outlined init with copy of Date?(v135, v122, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);

        v139 = *(v122 + 16);
        v138 = *(v122 + 24);
        v140 = v260;
        outlined init with copy of Date?(v135, v260, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);

        v136(v262, v140 + *(v264 + 64), v137);
        v141 = swift_isUniquelyReferenced_nonNull_native();
        v271._countAndFlagsBits = v134;
        v142 = OUTLINED_FUNCTION_68_1();
        specialized __RawDictionaryStorage.find<A>(_:)(v142, v143);
        OUTLINED_FUNCTION_15_3();
        v148 = v146 + v147;
        if (__OFADD__(v146, v147))
        {
          goto LABEL_73;
        }

        v61 = v144;
        v149 = v145;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v141, v148))
        {
          v150 = OUTLINED_FUNCTION_68_1();
          specialized __RawDictionaryStorage.find<A>(_:)(v150, v151);
          OUTLINED_FUNCTION_50_1();
          if (!v153)
          {
            goto LABEL_82;
          }

          v61 = v152;
        }

        v123 = v244;
        if (v149)
        {

          v119 = v271._countAndFlagsBits;
          v154 = v267;
          (*(v263 + 40))(*(v271._countAndFlagsBits + 56) + *(v263 + 72) * v61, v262, v267);
          outlined destroy of (columnName: String, dataType: SQLDataType)(v255, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
        }

        else
        {
          v119 = v271._countAndFlagsBits;
          OUTLINED_FUNCTION_14_4(v271._countAndFlagsBits + 8 * (v61 >> 6));
          v155 = (*(v119 + 48) + 16 * v61);
          *v155 = v139;
          v155[1] = v138;
          v154 = v267;
          (v136)(*(v119 + 56) + *(v263 + 72) * v61, v262);
          outlined destroy of (columnName: String, dataType: SQLDataType)(v255, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
          v156 = *(v119 + 16);
          v157 = __OFADD__(v156, 1);
          v158 = v156 + 1;
          if (v157)
          {
            goto LABEL_76;
          }

          *(v119 + 16) = v158;
        }

        v159 = v265;
        v160 = v266;
        v61 = v264;
        v122 = v243;
        ++v128;
        (*v240)(v243 + *(v264 + 64), v154);
        v124 = v261;
        if (v237 == v128)
        {

          v83 = v234;
          v120 = v231;
          v121 = v230;
          v73 = v160;
          v74 = v159;
          goto LABEL_21;
        }
      }

      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_83:

  __break(1u);
}

uint64_t sub_1848FC994()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t OUTLINED_FUNCTION_82_1()
{

  return type metadata accessor for Date.ISO8601FormatStyle();
}

uint64_t OUTLINED_FUNCTION_61@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *v3 = v1;
  *(v3 + 8) = v2 & 1;
  return v3;
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_97_2();
  v8 = type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_148_0();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_80_2();
  v44 = v7;
  if (v5 != v7)
  {
    v17 = v16;
    v19 = *(v15 + 16);
    v18 = v15 + 16;
    v20 = *(v18 + 56);
    v52 = (v18 - 8);
    v53 = v19;
    v50 = (v18 + 16);
    v51 = *v3;
    v21 = *v3 + v20 * (v5 - 1);
    v49 = -v20;
    v22 = v0 - v5;
    v43 = v20;
    v23 = *v3 + v20 * v5;
    while (2)
    {
      v47 = v21;
      v48 = v5;
      v45 = v23;
      v46 = v22;
      v24 = v21;
      while (1)
      {
        OUTLINED_FUNCTION_113_1();
        v53();
        (v53)(v17, v24, v8);
        v25 = SQLExpression.sql.getter();
        v26 = v1;
        v27 = v17;
        v29 = v28;
        if (v25 == SQLExpression.sql.getter() && v29 == v30)
        {
          break;
        }

        v32 = OUTLINED_FUNCTION_70();
        v35 = OUTLINED_FUNCTION_85(v32, v33, v34);

        v36 = *v52;
        (*v52)(v27, v8);
        v37 = OUTLINED_FUNCTION_94_2();
        v36(v37);
        v17 = v27;
        v1 = v26;
        if (v35)
        {
          if (!v51)
          {
            __break(1u);
            return;
          }

          v38 = *v50;
          OUTLINED_FUNCTION_113_1();
          v38();
          swift_arrayInitWithTakeFrontToBack();
          v39 = OUTLINED_FUNCTION_35_3();
          (v38)(v39);
          v24 += v49;
          v23 += v49;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v41 = *v52;
      (*v52)(v27, v8);
      v42 = OUTLINED_FUNCTION_94_2();
      v41(v42);
      v17 = v27;
      v1 = v26;
LABEL_14:
      v5 = v48 + 1;
      v21 = v47 + v43;
      v22 = v46 - 1;
      v23 = v45 + v43;
      if (v48 + 1 != v44)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_65();
}

{
  OUTLINED_FUNCTION_64();
  v56 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_84();
  v11 = v10(v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_9_0();
  v53 = v14;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_67();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_51();
  v45 = v8;
  if (v6 != v8)
  {
    v21 = v19;
    v23 = *(v20 + 16);
    v22 = v20 + 16;
    v24 = *(v22 + 56);
    v54 = (v22 - 8);
    v55 = v23;
    v25 = *v4 + v24 * (v6 - 1);
    v50 = -v24;
    v51 = (v22 + 16);
    v26 = v0 - v6;
    v52 = *v4;
    v44 = v24;
    v27 = *v4 + v24 * v6;
    while (2)
    {
      v48 = v25;
      v49 = v6;
      v46 = v27;
      v47 = v26;
      v28 = v26;
      while (1)
      {
        v57 = v28;
        v55(v21, v27, v11);
        v29 = (v55)(v1, v25, v11);
        v30 = (v56)(v29);
        v31 = v21;
        v33 = v32;
        v34 = v56();
        if (v30 == v34 && v33 == v35)
        {
          break;
        }

        v37 = OUTLINED_FUNCTION_85(v30, v33, v34);

        v38 = *v54;
        v39 = OUTLINED_FUNCTION_58();
        v38(v39);
        (v38)(v31, v11);
        v21 = v31;
        if (v37)
        {
          if (!v52)
          {
            __break(1u);
            return;
          }

          v40 = *v51;
          v41 = OUTLINED_FUNCTION_50();
          v40(v41);
          OUTLINED_FUNCTION_82();
          swift_arrayInitWithTakeFrontToBack();
          (v40)(v25, v53, v11);
          v25 += v50;
          v27 += v50;
          v28 = v57 + 1;
          if (v57 != -1)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v42 = *v54;
      v43 = OUTLINED_FUNCTION_58();
      v42(v43);
      (v42)(v31, v11);
      v21 = v31;
LABEL_13:
      v6 = v49 + 1;
      v25 = v48 + v44;
      v26 = v47 - 1;
      v27 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_65();
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_7_0();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    a8(a4 + v24, v15, v20 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t SQLExpression.sql.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t OUTLINED_FUNCTION_51_0()
{

  return TimeZone.init(secondsFromGMT:)();
}

uint64_t selectAndHavingAggregateFunctions(selectCore:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
  OUTLINED_FUNCTION_47(v2);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v47 - v5;
  v7 = type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_2_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_14();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_51();
  v49 = v17;
  OUTLINED_FUNCTION_43();
  v18 = type metadata accessor for ResultColumn();
  OUTLINED_FUNCTION_2_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_13();
  v51 = a1;
  v23 = SelectCore.select.getter();
  v24 = *(v23 + 16);
  v50 = v9;
  if (v24)
  {
    v47 = v23;
    v48 = v6;
    v26 = *(v20 + 16);
    v25 = v20 + 16;
    v27 = v23 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v28 = *(v25 + 56);
    v54 = (v9 + 8);
    v55 = v26;
    v56 = v25;
    v57 = v7;
    v52 = v25 - 8;
    v53 = v28;
    v29 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v30 = OUTLINED_FUNCTION_74();
      v31 = v18;
      v55(v30);
      ResultColumn.expression.getter(v14);
      v32 = SQLExpression.aggregationFunctions.getter();
      (*v54)(v14, v57);
      v33 = *(v32 + 16);
      v34 = *(v29 + 16);
      v35 = (v34 + v33);
      if (__OFADD__(v34, v33))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v35 > *(v29 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = v36;
      }

      if (*(v32 + 16))
      {
        v35 = ((*(v29 + 24) >> 1) - *(v29 + 16));
        type metadata accessor for AggregationFunction();
        if (v35 < v33)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        v18 = v31;
        if (v33)
        {
          v37 = *(v29 + 16);
          v38 = __OFADD__(v37, v33);
          v39 = v37 + v33;
          if (v38)
          {
            goto LABEL_23;
          }

          *(v29 + 16) = v39;
        }
      }

      else
      {

        v18 = v31;
        if (v33)
        {
          goto LABEL_21;
        }
      }

      v40 = OUTLINED_FUNCTION_73();
      v41(v40);
      v27 += v53;
      if (!--v24)
      {

        v7 = v57;
        v6 = v48;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);

    __break(1u);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v59 = v29;
    SelectCore.having.getter(v6);
    OUTLINED_FUNCTION_92(v6, 1, v7);
    if (v42)
    {
      outlined destroy of UUID?(v6, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
    }

    else
    {
      v44 = v49;
      v43 = v50;
      (*(v50 + 32))(v49, v6, v7);
      v45 = SQLExpression.aggregationFunctions.getter();
      specialized Array.append<A>(contentsOf:)(v45);
      (*(v43 + 8))(v44, v7);
      v29 = v59;
    }

    v58 = v29;

    specialized MutableCollection<>.sort(by:)(&v58);

    return v58;
  }

  return result;
}

void specialized MutableCollection<>.sort(by:)()
{
  OUTLINED_FUNCTION_84();
  type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_83();
  v2 = v1;
  v3 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v17 = v3 + v6;
  v18 = v5;
  v7 = _minimumMergeRunLength(_:)(v5);
  if (v7 >= v5)
  {
    if (v5)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)();
    }
  }

  else
  {
    v12 = v7;
    if (v5 >= 2)
    {
      OUTLINED_FUNCTION_68_1();
      v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v13 + 16) = v5 >> 1;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v15, &v16, &v17, v12, v8, v9, v10, v11, v14, (v13 + v6), v5 >> 1, v16, v17, v18, v19, v20, v21, v22, v23, v24);
    *(v13 + 16) = 0;
  }

  *v0 = v3;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser13SQLExpressionVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser13SQLExpressionVGMR, type metadata accessor for SQLExpression, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser19AggregationFunctionVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser19AggregationFunctionVGMR, type metadata accessor for AggregationFunction, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  if (a3)
  {
    OUTLINED_FUNCTION_7_0();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  if (v6 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_14BiomeSQLParser11SQLDataTypeO5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_14BiomeSQLParser11SQLDataTypeO5valuetGMR);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v15 = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v15 - v13 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_23;
  }

  v14[2] = v9;
  v14[3] = 2 * ((v15 - v13) / v12);
LABEL_18:
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v18, v9, v14 + v18);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t OUTLINED_FUNCTION_104_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_56()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_6_4()
{

  JUMPOUT(0x1865F6280);
}

uint64_t OUTLINED_FUNCTION_6_6()
{
  v3 = *(v1 - 4);

  return scanner_errposition(v3, v0);
}

uint64_t OUTLINED_FUNCTION_63_2(uint64_t a1)
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t outlined destroy of StorableValue(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s12BiomeStreams13StorableValueOWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s12BiomeStreams13StorableValueOWOhTm_1()
{
  v1 = OUTLINED_FUNCTION_97_2();
  v2(v1);
  OUTLINED_FUNCTION_5_7();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s10Foundation4UUIDVSgWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWObTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_28();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_77_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 - 72) = v5;
  *(v6 - 120) = a4;
  *(v6 - 112) = a5;
  *(v6 - 240) = a2;
  *(v6 - 264) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_98@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void KeyedFirstMatchingRecordCache.init(materializedView:database:cacheSize:)()
{
  OUTLINED_FUNCTION_64();
  v425 = v0;
  v376 = v5;
  v7 = v6;
  v402 = v8;
  v378 = v9;
  v399 = type metadata accessor for SQLRawDataType();
  OUTLINED_FUNCTION_2_1();
  v381 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v13);
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v18);
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  OUTLINED_FUNCTION_2_1();
  v385 = v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
  v26 = OUTLINED_FUNCTION_47(v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_9_0();
  v421 = v28;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_51();
  v414 = v31;
  OUTLINED_FUNCTION_43();
  v396 = type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_2_1();
  v424 = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_51();
  v393 = v37;
  OUTLINED_FUNCTION_43();
  v397 = type metadata accessor for ResultColumn();
  OUTLINED_FUNCTION_2_1();
  v398 = v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_51();
  v392 = v45;
  OUTLINED_FUNCTION_43();
  v418 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v416 = v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v49, v50);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v51, v52);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v53, v54);
  OUTLINED_FUNCTION_30();
  v423 = v55;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v56, v57);
  OUTLINED_FUNCTION_30();
  v422 = v58;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v59, v60);
  OUTLINED_FUNCTION_51();
  v415 = v61;
  OUTLINED_FUNCTION_43();
  v407 = type metadata accessor for Schema();
  OUTLINED_FUNCTION_2_1();
  v406 = v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  OUTLINED_FUNCTION_14();
  v67 = v65 - v66;
  MEMORY[0x1EEE9AC00](v68, v69);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v70, v71);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v72, v73);
  v75 = &v369 - v74;
  v420 = type metadata accessor for FromClause();
  OUTLINED_FUNCTION_2_1();
  v417 = v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  OUTLINED_FUNCTION_9();
  v410 = v79;
  OUTLINED_FUNCTION_43();
  v403 = type metadata accessor for SelectCore();
  OUTLINED_FUNCTION_2_1();
  v388 = v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v83, v84);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v85, v86);
  OUTLINED_FUNCTION_24_4();
  type metadata accessor for SQLExpressionEvaluator();
  swift_allocObject();
  v87 = v425;
  v88 = SQLExpressionEvaluator.init(db:)(v7);
  if (v87)
  {
    type metadata accessor for MaterializedView();
    OUTLINED_FUNCTION_5_7();
    v89 = OUTLINED_FUNCTION_147_0();
    v90(v89);
LABEL_3:
    OUTLINED_FUNCTION_65();
    return;
  }

  v425 = v75;
  v412 = v1;
  v371 = v67;
  v372 = v3;
  v390 = v4;
  v373 = v88;
  v384 = 0;
  v370 = v7;
  v389 = MEMORY[0x1E69E7CC0];
  v91 = v418;
  v92 = Dictionary.init(dictionaryLiteral:)();
  MaterializedView.select.getter(v2);
  v93 = v410;
  SelectCore.from.getter(v410);
  v94 = *(v388 + 8);
  v388 += 8;
  v374 = v94;
  v94(v2, v403);
  v95 = v93;
  v96 = FromClause.schemas.getter();
  (*(v417 + 1))(v93, v420);
  v97 = 0;
  v420 = *(v96 + 16);
  v404 = v406 + 16;
  LODWORD(v410) = 7;
  v408 = v416 + 104;
  v98 = (v416 + 8);
  v409 = v406 + 8;
  v387 = v406 + 32;
  v417 = v416 + 8;
  OUTLINED_FUNCTION_134_0();
  v419 = v92;
  v413 = v99;
LABEL_5:
  v101 = v424;
  v100 = v425;
  v102 = v407;
  while (v420 != v97)
  {
    if (v97 >= v99[2])
    {
      __break(1u);
LABEL_126:

      type metadata accessor for MaterializedView();
      OUTLINED_FUNCTION_5_7();
      v351 = OUTLINED_FUNCTION_147_0();
      v352(v351);
      outlined destroy of (columnName: String, dataType: SQLDataType)(v92, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
LABEL_131:

      goto LABEL_3;
    }

    v103 = v406;
    OUTLINED_FUNCTION_19_0();
    v401 = v104;
    v400 = *(v103 + 72);
    (*(v103 + 16))(v100, v105 + v104 + v400 * v97, v102);
    v106 = Schema.tableName.getter();
    v108 = v107;
    OUTLINED_FUNCTION_16_0();
    v109 = v415;
    v110(v415, v410, v91);
    static Schema.JSONEach(with:)(v109, v412);
    (*v98)(v109, v91);
    v111 = Schema.tableName.getter();
    v95 = v112;
    v113 = *(v103 + 8);
    v114 = OUTLINED_FUNCTION_69_1();
    v113(v114);
    v115 = v106 == v111 && v108 == v95;
    if (v115)
    {
    }

    else
    {
      OUTLINED_FUNCTION_52();
      v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v116 & 1) == 0)
      {
        OUTLINED_FUNCTION_124_0();
        v118 = *v117;
        (*v117)(v371, v425, v407);
        v119 = v389;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v428._countAndFlagsBits = v119;
        v91 = v418;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v121 = OUTLINED_FUNCTION_129_0();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v121, v122, v123);
        }

        OUTLINED_FUNCTION_134_0();
        v126 = *(countAndFlagsBits + 16);
        v125 = *(countAndFlagsBits + 24);
        if (v126 >= v125 >> 1)
        {
          OUTLINED_FUNCTION_4_9(v125);
          v95 = &v428;
          OUTLINED_FUNCTION_71_1();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v127, v128, v129);
          OUTLINED_FUNCTION_134_0();
          countAndFlagsBits = v428._countAndFlagsBits;
        }

        v97 = (v97 + 1);
        *(countAndFlagsBits + 16) = v126 + 1;
        v389 = countAndFlagsBits;
        OUTLINED_FUNCTION_124_0();
        v118();
        v92 = v419;
        v98 = v417;
        v99 = v413;
        goto LABEL_5;
      }
    }

    v100 = v425;
    v102 = v407;
    (v113)(v425, v407);
    v97 = (v97 + 1);
    v91 = v418;
    v92 = v419;
    v98 = v417;
    v101 = v424;
    OUTLINED_FUNCTION_134_0();
    v99 = v413;
  }

  v387 = *(v389 + 16);
  if (v387)
  {
    v130 = v406;
    OUTLINED_FUNCTION_19_0();
    v400 = v131 + v133;
    object = v416;
    v420 = (v416 + 16);
    v425 = v416 + 32;
    v408 = v416 + 40;
    v135 = v411;
    while (1)
    {
      if (v132 >= *(v131 + 16))
      {
        goto LABEL_138;
      }

      v136 = v132;
      (*(v130 + 16))(v95, v400 + *(v130 + 72) * v132, v407);
      v401 = v136 + 1;
      v137 = v95;
      v138 = Schema.columns.getter();
      v139 = v421;
      v140 = v138;
      (*(v130 + 8))(v137, v407);
      v141 = 0;
      v410 = v140;
      OUTLINED_FUNCTION_58_1();
      v100 = v144 & v143;
      v146 = ((v145 + 63) >> 6);
      v412 = v146;
      v413 = v142;
      if ((v144 & v143) != 0)
      {
        goto LABEL_30;
      }

      while (1)
      {
LABEL_26:
        v147 = (v141 + 1);
        if (__OFADD__(v141, 1))
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v147 >= v146)
        {
          break;
        }

        v100 = v142[v147];
        ++v141;
        if (v100)
        {
          v141 = v147;
          goto LABEL_30;
        }
      }

      __swift_storeEnumTagSinglePayload(v139, 1, 1, v135);
      v100 = 0;
LABEL_31:
      v155 = v139;
      v156 = v414;
      outlined init with take of UUID?(v155, v414, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
      if (__swift_getEnumTagSinglePayload(v156, 1, v135) != 1)
      {
        break;
      }

      OUTLINED_FUNCTION_124_0();
      v132 = v401;
      v100 = v402;
      v130 = v406;
      v95 = v405;
      v131 = v389;
      if (v401 == v181)
      {

        goto LABEL_49;
      }
    }

    v157 = v156 + *(v135 + 48);
    v419 = *v425;
    v419(v422, v157, v91);
    OUTLINED_FUNCTION_81();
    v158 = String.lowercased()();
    v135 = v158._countAndFlagsBits;
    object = v158._object;

    OUTLINED_FUNCTION_113_1();
    v159();
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v428._countAndFlagsBits = v92;
    v160 = OUTLINED_FUNCTION_133_0();
    specialized __RawDictionaryStorage.find<A>(_:)(v160, v161);
    OUTLINED_FUNCTION_27_3();
    v92 = v164 + v165;
    if (__OFADD__(v164, v165))
    {
      __break(1u);
      goto LABEL_96;
    }

    v166 = v162;
    v167 = v163;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
    v168 = OUTLINED_FUNCTION_87_2();
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v168, v92))
    {
      v169 = OUTLINED_FUNCTION_133_0();
      specialized __RawDictionaryStorage.find<A>(_:)(v169, v170);
      OUTLINED_FUNCTION_50_1();
      v101 = v424;
      if (!v115)
      {
        goto LABEL_147;
      }

      v166 = v171;
    }

    else
    {
      v101 = v424;
    }

    v139 = v421;
    if (v167)
    {

      v92 = v428._countAndFlagsBits;
      v172 = OUTLINED_FUNCTION_117_0();
      v91 = v418;
      (*(v158._object + 5))(v172, v423, v418);
      v173 = OUTLINED_FUNCTION_116_0();
      v174(v173);
    }

    else
    {
      v92 = v428._countAndFlagsBits;
      OUTLINED_FUNCTION_14_4(v428._countAndFlagsBits + 8 * (v166 >> 6));
      *(*(v92 + 48) + 16 * v166) = v158;
      v175 = OUTLINED_FUNCTION_117_0();
      v91 = v418;
      v419(v175, v423, v418);
      v176 = OUTLINED_FUNCTION_116_0();
      v177(v176);
      v178 = *(v92 + 16);
      v179 = __OFADD__(v178, 1);
      v180 = v178 + 1;
      if (v179)
      {
        __break(1u);
LABEL_111:
        OUTLINED_FUNCTION_10_7();
        _StringGuts.grow(_:)(16);

        OUTLINED_FUNCTION_48_1();
        OUTLINED_FUNCTION_75_2();

        MEMORY[0x1865F6280](v135, v91);

        goto LABEL_133;
      }

      *(v92 + 16) = v180;
    }

    v135 = v411;
    v146 = v412;
    v142 = v413;
    if (!v100)
    {
      goto LABEL_26;
    }

LABEL_30:
    v100 &= v100 - 1;
    OUTLINED_FUNCTION_111_0();
    v150 = *v148;
    v149 = v148[1];
    (*(object + 2))(v415, v152 + *(object + 9) * v151, v91);
    v153 = v421;
    *v421 = v150;
    *(v153 + 1) = v149;
    v139 = v153;
    OUTLINED_FUNCTION_113_1();
    v154();
    __swift_storeEnumTagSinglePayload(v139, 0, 1, v135);

    v101 = v424;
    goto LABEL_31;
  }

LABEL_48:

  OUTLINED_FUNCTION_70_1();
LABEL_49:
  MaterializedView.select.getter(v372);
  v182 = SelectCore.select.getter();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_123();
  v183();
  v135 = 0;
  v184 = *(v182 + 16);
  OUTLINED_FUNCTION_137_0();
  v423 = (v101 + 8);
  v424 = v185 + 8;
  v425 = v185 + 16;
  v421 = v185 + 32;
  v422 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_89_2();
  v186 = v394;
  OUTLINED_FUNCTION_103_2();
LABEL_50:
  v188 = v392;
  while (1)
  {
    if (v184 == v135)
    {

      v421 = *(v422 + 16);
      if (!v421)
      {
        v241 = v390;
LABEL_79:

        MaterializedView.select.getter(v241);
        v166 = SelectCore.groupBy.getter();
        OUTLINED_FUNCTION_123();
        v254();
        if (v166)
        {
          v428._countAndFlagsBits = v166;

          v255 = v384;
          specialized MutableCollection<>.sort(by:)();
          v135 = v255;
          object = v378;
          if (v255)
          {
            goto LABEL_148;
          }

          v256 = v428._countAndFlagsBits;
          _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm();
          v425 = v257;
          MaterializedView.name.getter();
          static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
          v166 = v258;

          v259 = OUTLINED_FUNCTION_29_5();
          tableExists(sqlExpressionEvaluator:tableName:)(v259, v260, v166);
          OUTLINED_FUNCTION_128_0();
          v135 = v418;
          v410 = v256;
          LODWORD(v412) = v261;

          v419 = v92;
          if (v412)
          {
            v135 = v410;
          }

          else
          {
LABEL_96:
            v296 = v425;
            v423 = *(v425 + 2);
            if (v423)
            {
              v422 = *(v377 + 48);
              OUTLINED_FUNCTION_19_0();
              v421 = &v296[v297];
              v424 = v416 + 32;
              v420 = (v416 + 40);

              v298 = v92;
              v299 = 0;
              v300 = v382;
              v301 = v383;
              while (v299 < *(v296 + 2))
              {
                outlined init with copy of Date?(&v421[*(v385 + 72) * v299], v300, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
                v302 = v135;
                v303 = v298;
                v304 = *v300;
                v135 = v300[1];
                v305 = *v424;
                (*v424)(v301, v300 + v422, v302);
                v101 = swift_isUniquelyReferenced_nonNull_native();
                v428._countAndFlagsBits = v303;
                specialized __RawDictionaryStorage.find<A>(_:)(v304, v135);
                OUTLINED_FUNCTION_27_3();
                v310 = v308 + v309;
                if (__OFADD__(v308, v309))
                {
                  goto LABEL_141;
                }

                v311 = v306;
                v100 = v307;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
                v312 = OUTLINED_FUNCTION_87_2();
                if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v312, v310))
                {
                  v313 = specialized __RawDictionaryStorage.find<A>(_:)(v304, v135);
                  v101 = v399;
                  v315 = v381;
                  if ((v100 & 1) != (v314 & 1))
                  {
                    goto LABEL_147;
                  }

                  v311 = v313;
                }

                else
                {
                  OUTLINED_FUNCTION_103_2();
                  v315 = v381;
                }

                v301 = v383;
                if (v100)
                {

                  v298 = v428._countAndFlagsBits;
                  v316 = OUTLINED_FUNCTION_85_2(*(v428._countAndFlagsBits + 56));
                  v135 = v418;
                  (*(v317 + 40))(v316, v301, v418);
                }

                else
                {
                  OUTLINED_FUNCTION_14_4(v428._countAndFlagsBits + 8 * (v311 >> 6));
                  v319 = (*(v318 + 48) + 16 * v311);
                  *v319 = v304;
                  v319[1] = v135;
                  v298 = v318;
                  v135 = v418;
                  v305(*(v318 + 56) + *(v416 + 9) * v311, v301, v418);
                  OUTLINED_FUNCTION_142_0();
                  if (v179)
                  {
                    goto LABEL_145;
                  }

                  *(v298 + 16) = v320;
                }

                OUTLINED_FUNCTION_70_1();
                v300 = v382;
                v296 = v425;
                if (v423 == ++v299)
                {
                  goto LABEL_113;
                }
              }

              goto LABEL_140;
            }

            v298 = v92;
            v315 = v381;
LABEL_113:

            MaterializedView.name.getter();
            OUTLINED_FUNCTION_96_2();
            OUTLINED_FUNCTION_46_2();
            _StringGuts.grow(_:)(33);

            OUTLINED_FUNCTION_49_1();
            OUTLINED_FUNCTION_35_3();
            v321 = static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
            v323 = v322;

            MEMORY[0x1865F6280](v321, v323);

            OUTLINED_FUNCTION_109_1();
            v324 = *(v298 + 16);
            v325 = MEMORY[0x1E69E7CC0];
            if (v324)
            {
              v429 = MEMORY[0x1E69E7CC0];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v324, 0);
              v325 = v429;
              v326 = specialized Dictionary.startIndex.getter(v298);
              v420 = (v298 + 64);
              v414 = v416 + 32;
              v415 = v416 + 16;
              v413 = (v315 + 8);
              v417 = v298;
              while ((v326 & 0x8000000000000000) == 0 && v326 < 1 << *(v298 + 32))
              {
                v329 = v386;
                v100 = v379;
                if (((*(&v420->Kind + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v326) & 1) == 0)
                {
                  goto LABEL_143;
                }

                LODWORD(v422) = v328;
                v424 = v324;
                v425 = v325;
                v330 = *(v298 + 36);
                v423 = v327;
                if (v330 != v327)
                {
                  goto LABEL_144;
                }

                v331 = v411;
                v332 = *(v411 + 48);
                v333 = *(v298 + 56);
                v334 = (*(v298 + 48) + 16 * v326);
                v335 = *v334;
                v336 = v334[1];
                v337 = v416;
                v338 = *(v416 + 9);
                v421 = v326;
                v339 = v418;
                (*(v416 + 2))(v379 + v332, v333 + v338 * v326, v418);
                *v329 = v335;
                v329[1] = v336;
                v337[4](v386 + *(v331 + 48), v100 + v332, v339);
                OUTLINED_FUNCTION_141_0();

                v340 = OUTLINED_FUNCTION_35_3();
                MEMORY[0x1865F6280](v340);
                MEMORY[0x1865F6280](8226, 0xE200000000000000);
                v92 = v386;
                SQLDataType.columnType()();
                OUTLINED_FUNCTION_128_0();
                if (v341)
                {
                  goto LABEL_126;
                }

                SQLRawDataType.rawValue.getter();
                OUTLINED_FUNCTION_96_2();
                (*v413)(v342, v101);
                v343 = OUTLINED_FUNCTION_35_3();
                MEMORY[0x1865F6280](v343);

                v135 = v426;
                v344 = v427;
                outlined destroy of (columnName: String, dataType: SQLDataType)(v92, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
                v325 = v425;
                v430 = v425;
                v346 = *(v425 + 2);
                v345 = *(v425 + 3);
                if (v346 >= v345 >> 1)
                {
                  OUTLINED_FUNCTION_4_9(v345);
                  OUTLINED_FUNCTION_71_1();
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v348, v349, v350);
                  v325 = v430;
                }

                *(v325 + 2) = v346 + 1;
                v347 = &v325[16 * v346];
                *(v347 + 4) = v135;
                *(v347 + 5) = v344;
                v298 = v417;
                v326 = specialized _NativeDictionary.index(after:)(v421, v423, v422 & 1, v417);
                v324 = (v424 - 1);
                v92 = v419;
                v101 = v399;
                if (v424 == 1)
                {
                  outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v326, v327, v328 & 1);
                  goto LABEL_127;
                }
              }

              goto LABEL_142;
            }

            v92 = v419;
LABEL_127:
            v426 = v325;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            lazy protocol witness table accessor for type [String] and conformance [A]();
            BidirectionalCollection<>.joined(separator:)();
            OUTLINED_FUNCTION_96_2();

            v353 = OUTLINED_FUNCTION_35_3();
            MEMORY[0x1865F6280](v353);

            OUTLINED_FUNCTION_73_1();

            v166 = v428._object;
            SQLExpressionEvaluator.execute(sql:bindingValues:)(v428, MEMORY[0x1E69E7CC0]);
            OUTLINED_FUNCTION_70_1();
            OUTLINED_FUNCTION_128_0();
            if (v354)
            {
              type metadata accessor for MaterializedView();
              OUTLINED_FUNCTION_5_7();
              (*(v355 + 8))(v100);

              goto LABEL_3;
            }

            object = v378;
            v135 = v410;
          }

          type metadata accessor for KeyedFirstMatchingRecordCache(0);
          OUTLINED_FUNCTION_127_0();
          *&object[v267] = v135;
          OUTLINED_FUNCTION_140_0();
          object[v269] = v268 & ~v412;

          v91 = MaterializedView.name.getter();
          _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE13groupBySchema0hI6FieldsSaySS_0A9SQLParser11SQLDataTypeOtGSayAF13SQLExpressionVG_tFZAA0c19FirstMatchingRecordG0V_Tt0g5Tm();
          v141 = v270;

          if (!*(v141 + 2))
          {
            goto LABEL_111;
          }

          OUTLINED_FUNCTION_46_2();
          _StringGuts.grow(_:)(28);

          OUTLINED_FUNCTION_48_1();
          OUTLINED_FUNCTION_75_2();

          OUTLINED_FUNCTION_74_2();

          OUTLINED_FUNCTION_88_1();
          v135 = *(v141 + 2);
          v271 = MEMORY[0x1E69E7CC0];
          if (v135)
          {
            v422 = v166;
            v426 = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v135, 0);
            v272 = 0;
            OUTLINED_FUNCTION_12_6();
            v424 = &v141[v275];
            v276 = v375;
            v277 = v141;
            v423 = v141;
            while (1)
            {
              v425 = v274;
              if (v272 >= *(v277 + 2))
              {
                goto LABEL_146;
              }

              v278 = v135;
              outlined init with copy of Date?(&v424[*(v273 + 72) * v272], v276, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
              v279 = v384;
              closure #2 in static KeyedQueryPlannerMetadataCache.updateMetadataSQL(materializedViewName:groupBySchema:payloadSchema:)();
              OUTLINED_FUNCTION_128_0();
              if (v279)
              {

                type metadata accessor for MaterializedView();
                OUTLINED_FUNCTION_5_7();
                v356 = OUTLINED_FUNCTION_147_0();
                v357(v356);
                outlined destroy of (columnName: String, dataType: SQLDataType)(v276, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);

                goto LABEL_131;
              }

              v100 = v280;
              v282 = v281;
              outlined destroy of (columnName: String, dataType: SQLDataType)(v276, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
              v274 = v425;
              v426 = v425;
              v284 = *(v425 + 2);
              v283 = *(v425 + 3);
              if (v284 >= v283 >> 1)
              {
                v286 = OUTLINED_FUNCTION_4_9(v283);
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v286, v284 + 1, 1);
                v276 = v375;
                v274 = v426;
              }

              ++v272;
              *(v274 + 2) = v284 + 1;
              v285 = &v274[16 * v284];
              *(v285 + 4) = v100;
              *(v285 + 5) = v282;
              v135 = v278;
              v92 = v419;
              v273 = v385;
              v277 = v423;
              if (v278 == v272)
              {
                v141 = v423;
                OUTLINED_FUNCTION_70_1();
                object = v378;
                v166 = v422;
                break;
              }
            }
          }

          v426 = v271;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          v358 = lazy protocol witness table accessor for type [String] and conformance [A]();
          OUTLINED_FUNCTION_63_2(v358);
          OUTLINED_FUNCTION_75_2();

          OUTLINED_FUNCTION_74_2();

          MEMORY[0x1865F6280](41, 0xE100000000000000);
LABEL_133:
          v359 = v428._countAndFlagsBits;
          v360 = v428._object;
          v361 = swift_allocObject();
          *(v361 + 16) = v141;
          v362 = &object[*(v166 + 60)];
          *v362 = v359;
          v362[1] = v360;
          v362[2] = partial apply for closure #2 in static KeyedQueryPlannerMetadataCache.readMetadataSQL(materializedViewName:groupBySchema:);
          v362[3] = v361;
        }

        else
        {
          type metadata accessor for KeyedFirstMatchingRecordCache(0);
          OUTLINED_FUNCTION_127_0();
          object = v378;
          *&v378[v262] = 0;
          OUTLINED_FUNCTION_140_0();
          object[v263] = v264;
          v266 = &object[*(v265 + 60)];
          *v266 = 0u;
          *(v266 + 1) = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams12ChangeRecordV5value_AA10CacheEventO5eventtMd, &_s12BiomeStreams12ChangeRecordV5value_AA10CacheEventO5eventtMR);
        lazy protocol witness table accessor for type [StorableValue] and conformance <A> [A]();
        OUTLINED_FUNCTION_90_2();
        v363 = Dictionary.init(dictionaryLiteral:)();
        type metadata accessor for KeyedFirstMatchingRecordCache(0);
        *&object[*(v166 + 28)] = v363;
        v364 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams12ChangeRecordVSgMd, &_s12BiomeStreams12ChangeRecordVSgMR);
        OUTLINED_FUNCTION_90_2();
        v365 = Dictionary.init(dictionaryLiteral:)();
        v366 = &object[*(v166 + 32)];
        *v366 = v364;
        *(v366 + 1) = v365;
        *&object[*(v166 + 36)] = v376;
        type metadata accessor for MaterializedView();
        OUTLINED_FUNCTION_12();
        (*(v367 + 32))(object, v100);
        v368 = MEMORY[0x1E69E7CD0];
        *&object[*(v166 + 24)] = MEMORY[0x1E69E7CD0];
        *&object[*(v166 + 20)] = v368;
        *&object[*(v166 + 40)] = v370;
        *&object[*(v166 + 44)] = v373;
        *&object[*(v166 + 52)] = v92;
        goto LABEL_3;
      }

      v207 = 0;
      OUTLINED_FUNCTION_137_0();
      OUTLINED_FUNCTION_12_6();
      v420 = (v209 + v208);
      v414 = v416 + 32;
      v412 = v416 + 16;
      v413 = (v416 + 40);
      OUTLINED_FUNCTION_126_0();
      while (1)
      {
        if (v207 >= *(v422 + 16))
        {
          goto LABEL_136;
        }

        v210 = OUTLINED_FUNCTION_125_0();
        v211(v210);
        v212 = v92;
        v213 = ResultColumn.name.getter();
        v215 = v214;
        if (*(v212 + 16))
        {
          v216 = OUTLINED_FUNCTION_69_1();
          v218 = specialized __RawDictionaryStorage.find<A>(_:)(v216, v217);
          if (v219)
          {
            v419 = v212;
            v220 = v416;
            (*(v416 + 2))(v186, *(v212 + 56) + *(v416 + 9) * v218, v418);
            v186 = v393;
            ResultColumn.expression.getter(v393);
            SQLExpression.returnType.getter(v415);
            v221 = OUTLINED_FUNCTION_104_2();
            v222(v221, v135);
            lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType, type metadata accessor for SQLDataType, &protocol conformance descriptor for SQLDataType);
            v223 = dispatch thunk of static Equatable.== infix(_:_:)();
            v224 = *(v220 + 1);
            v225 = OUTLINED_FUNCTION_70();
            v135 = v417;
            v224(v225);
            if ((v223 & 1) == 0)
            {

              OUTLINED_FUNCTION_156_0();
              OUTLINED_FUNCTION_1_23();
              v289 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v287, v288, &protocol conformance descriptor for MetadataSQLError);
              OUTLINED_FUNCTION_33_4(v289);
              *v290 = v213;
              v290[1] = v215;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              type metadata accessor for MaterializedView();
              OUTLINED_FUNCTION_5_7();
              v291 = OUTLINED_FUNCTION_147_0();
              v292(v291);
              v293 = OUTLINED_FUNCTION_86();
              v224(v293);
              OUTLINED_FUNCTION_83_2();
              v295(*(v294 - 256), v397);

              goto LABEL_3;
            }

            v226 = OUTLINED_FUNCTION_86();
            v224(v226);
            v212 = v419;
            OUTLINED_FUNCTION_126_0();
          }
        }

        v227 = v391;
        ResultColumn.expression.getter(v391);
        SQLExpression.returnType.getter(v395);
        (*v423)(v227, v135);
        v101 = swift_isUniquelyReferenced_nonNull_native();
        v428._countAndFlagsBits = v212;
        v228 = OUTLINED_FUNCTION_69_1();
        specialized __RawDictionaryStorage.find<A>(_:)(v228, v229);
        OUTLINED_FUNCTION_27_3();
        v234 = v232 + v233;
        if (__OFADD__(v232, v233))
        {
          goto LABEL_137;
        }

        v235 = v230;
        v135 = v231;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
        v236 = OUTLINED_FUNCTION_87_2();
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v236, v234))
        {
          v237 = OUTLINED_FUNCTION_69_1();
          v239 = specialized __RawDictionaryStorage.find<A>(_:)(v237, v238);
          v101 = v399;
          v241 = v390;
          if ((v135 & 1) != (v240 & 1))
          {
            goto LABEL_147;
          }

          v235 = v239;
          OUTLINED_FUNCTION_89_2();
          if ((v135 & 1) == 0)
          {
LABEL_72:
            OUTLINED_FUNCTION_14_4(v428._countAndFlagsBits + 8 * (v235 >> 6));
            v243 = (*(v242 + 48) + 16 * v235);
            *v243 = v213;
            v243[1] = v215;
            v92 = v242;
            v244 = OUTLINED_FUNCTION_85_2(*(v242 + 56));
            (*(v245 + 32))(v244, v395, v418);
            OUTLINED_FUNCTION_83_2();
            v246 = OUTLINED_FUNCTION_81();
            v247(v246);
            v248 = *(v92 + 16);
            v179 = __OFADD__(v248, 1);
            v249 = v248 + 1;
            if (v179)
            {
              goto LABEL_139;
            }

            *(v92 + 16) = v249;
            goto LABEL_76;
          }
        }

        else
        {
          OUTLINED_FUNCTION_103_2();
          OUTLINED_FUNCTION_89_2();
          v241 = v390;
          if ((v135 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        v92 = v428._countAndFlagsBits;
        v250 = OUTLINED_FUNCTION_85_2(*(v428._countAndFlagsBits + 56));
        (*(v251 + 40))(v250, v395, v418);
        OUTLINED_FUNCTION_83_2();
        v252 = OUTLINED_FUNCTION_81();
        v253(v252);
LABEL_76:
        ++v207;
        v100 = v402;
        v135 = v396;
        if (v421 == v207)
        {
          goto LABEL_79;
        }
      }
    }

    if (v135 >= *(v182 + 16))
    {
      break;
    }

    v100 = (*(v187 + 80) + 32) & ~*(v187 + 80);
    v101 = *(v187 + 72);
    v189 = OUTLINED_FUNCTION_125_0();
    v190(v189);
    ResultColumn.alias.getter();
    if (v191)
    {

      v186 = v393;
      ResultColumn.expression.getter(v393);
      v192 = SQLExpression.aggregationFunctions.getter();
      v193 = OUTLINED_FUNCTION_104_2();
      v194(v193, v396);
      v195 = *(v192 + 16);
      v188 = v392;

      if (!v195)
      {
        v420 = *v421;
        (v420)(v380, v188, v397);
        v196 = v422;
        v197 = swift_isUniquelyReferenced_nonNull_native();
        v428._countAndFlagsBits = v196;
        v419 = v92;
        if ((v197 & 1) == 0)
        {
          v198 = OUTLINED_FUNCTION_129_0();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v198, v199, v200);
          OUTLINED_FUNCTION_89_2();
          v196 = v428._countAndFlagsBits;
        }

        v202 = *(v196 + 16);
        v201 = *(v196 + 24);
        v203 = v196;
        if (v202 >= v201 >> 1)
        {
          OUTLINED_FUNCTION_4_9(v201);
          OUTLINED_FUNCTION_71_1();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v204, v205, v206);
          OUTLINED_FUNCTION_89_2();
          v203 = v428._countAndFlagsBits;
        }

        ++v135;
        *(v203 + 16) = v202 + 1;
        v422 = v203;
        (v420)(v203 + v100 + v202 * v101);
        OUTLINED_FUNCTION_70_1();
        v92 = v419;
        OUTLINED_FUNCTION_103_2();
        OUTLINED_FUNCTION_137_0();
        goto LABEL_50;
      }
    }

    (*v424)(v188, v397);
    ++v135;
    OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_103_2();
    OUTLINED_FUNCTION_137_0();
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_148:

  __break(1u);
}

void AggregationFunction.newAggregation()()
{
  OUTLINED_FUNCTION_64();
  v257 = v1;
  v259 = v2;
  v261 = type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_2_1();
  v260 = v3;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_9_0();
  v253 = v6;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_30();
  v255 = v9;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_51();
  v249 = v12;
  OUTLINED_FUNCTION_43();
  type metadata accessor for AggregationFunction.AggregationType();
  OUTLINED_FUNCTION_2_1();
  v258 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  v19 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_9_0();
  v251 = v24;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_30();
  v254 = v27;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_30();
  v248 = v30;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = (&object - v33);
  AggregationFunction.name()();
  v35 = String.lowercased()();
  v36 = v18;
  v37 = v258;

  AggregationFunction.returnType.getter(v34);
  AggregationFunction.aggregationType.getter(v18);
  v38 = OUTLINED_FUNCTION_39();
  v40 = v39(v38);
  if (!v40)
  {
    v41 = OUTLINED_FUNCTION_21();
    v42(v41);
    v43 = type metadata accessor for AVG(0);
    v44 = v259;
    v259[3] = v43;
    v44[4] = &protocol witness table for AVG;
    __swift_allocate_boxed_opaque_existential_0Tm(v44);
    OUTLINED_FUNCTION_62_0();
    v47 = OUTLINED_FUNCTION_38(v45, v46);
    v48(v47);
    (*(v21 + 32))(v0 + v43[6], v34, v19);
    *(&v0->_countAndFlagsBits + v43[7]) = 0;
    *(&v0->_countAndFlagsBits + v43[8]) = 0;
    *v0 = v35;
    goto LABEL_9;
  }

  v49 = v259;
  countAndFlagsBits = v35._countAndFlagsBits;
  object = v35._object;
  v250 = v34;
  v50 = v21;
  v252 = v19;
  if (v40 == 1)
  {
    v51 = OUTLINED_FUNCTION_21();
    v52(v51);
    v53 = type metadata accessor for COUNT(0);
    OUTLINED_FUNCTION_55(v53, &protocol witness table for COUNT);
    OUTLINED_FUNCTION_62_0();
    v56 = OUTLINED_FUNCTION_38(v54, v55);
    v57(v56);
    v58 = OUTLINED_FUNCTION_46(*(v53 + 24));
    v59(v58);
    *(v49 + *(v53 + 28)) = 0;
LABEL_5:
    *v49 = countAndFlagsBits;
LABEL_8:
    v49[1] = object;
    goto LABEL_9;
  }

  v60 = v260;
  v61 = countAndFlagsBits;
  switch(v40)
  {
    case 2:
      v62 = OUTLINED_FUNCTION_21();
      v63(v62);
      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13SQLExpressionV10expression_ACSg9separatortMd, &_s14BiomeSQLParser13SQLExpressionV10expression_ACSg9separatortMR) + 48);
      v65 = type metadata accessor for GROUP_CONCAT(0);
      OUTLINED_FUNCTION_55(v65, &protocol witness table for GROUP_CONCAT);
      OUTLINED_FUNCTION_62_0();
      v68 = OUTLINED_FUNCTION_38(v66, v67);
      v69(v68);
      outlined init with take of UUID?(v36 + v64, v49 + v65[6], &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
      v70 = OUTLINED_FUNCTION_46(v65[7]);
      v71(v70);
      v72 = (v49 + v65[8]);
      *v72 = 0;
      v72[1] = 0;
      *v49 = v61;
      goto LABEL_8;
    case 3:
      v73 = OUTLINED_FUNCTION_21();
      v74(v73);
      v75 = v255;
      OUTLINED_FUNCTION_18();
      v76();
      v77 = v50;
      v78 = (v50 + 16);
      v79 = *(v50 + 16);
      v80 = v254;
      v81 = v250;
      v82 = v252;
      v258 = v78;
      v79(v254, v250, v252);
      v83 = (*(v77 + 88))(v80, v82);
      if (!v83)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVys5Int64VGMd, &_s12BiomeStreams3MAXVys5Int64VGMR);
        OUTLINED_FUNCTION_44();
        v85 = OUTLINED_FUNCTION_55(v84, &protocol witness table for MAX<A>);
        v86 = OUTLINED_FUNCTION_8_0(v85);
        v87(v86, v82, v37);
        v79(v49 + v75[10], v81, v82);
        v88 = (v49 + v75[11]);
        *v88 = String.lowercased()();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_25();
        v89 = OUTLINED_FUNCTION_57();
        v90(v89);
        (*(v77 + 8))(v81, v252);
        goto LABEL_9;
      }

      v253 = v77;
      v106 = v81;
      switch(v83)
      {
        case 1:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVySdGMd, &_s12BiomeStreams3MAXVySdGMR);
          OUTLINED_FUNCTION_44();
          v108 = OUTLINED_FUNCTION_55(v107, &protocol witness table for MAX<A>);
          v109 = OUTLINED_FUNCTION_3_5(v108);
          v110(v109);
          v111 = OUTLINED_FUNCTION_26();
          (v79)(v111);
          *v81 = OUTLINED_FUNCTION_16();
          v81[1] = v112;
          OUTLINED_FUNCTION_11();
LABEL_35:
          OUTLINED_FUNCTION_25();
          v177 = OUTLINED_FUNCTION_57();
          v178(v177);
          v145 = OUTLINED_FUNCTION_76();
          goto LABEL_36;
        case 2:
          goto LABEL_24;
        case 3:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVy10Foundation4DateVGMd, &_s12BiomeStreams3MAXVy10Foundation4DateVGMR);
          OUTLINED_FUNCTION_44();
          v168 = OUTLINED_FUNCTION_55(v167, &protocol witness table for MAX<A>);
          v169 = OUTLINED_FUNCTION_3_5(v168);
          v170(v169);
          v171 = OUTLINED_FUNCTION_26();
          (v79)(v171);
          *v81 = OUTLINED_FUNCTION_16();
          v81[1] = v172;
          OUTLINED_FUNCTION_87();
          type metadata accessor for Date();
          break;
        case 4:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVy10Foundation4DataVGMd, &_s12BiomeStreams3MAXVy10Foundation4DataVGMR);
          v134 = v82;
          OUTLINED_FUNCTION_44();
          v192 = OUTLINED_FUNCTION_55(v191, &protocol witness table for MAX<A>);
          v193 = OUTLINED_FUNCTION_3_5(v192);
          v194(v193);
          v195 = OUTLINED_FUNCTION_20_0();
          v196(v195);
          *v106 = OUTLINED_FUNCTION_16();
          v106[1] = v197;
          *(v49 + v75[12]) = xmmword_184D27CF0;
          goto LABEL_25;
        case 5:
LABEL_24:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVySSGMd, &_s12BiomeStreams3MAXVySSGMR);
          v134 = v82;
          OUTLINED_FUNCTION_44();
          v136 = OUTLINED_FUNCTION_55(v135, &protocol witness table for MAX<A>);
          v137 = OUTLINED_FUNCTION_3_5(v136);
          v138(v137);
          v139 = OUTLINED_FUNCTION_20_0();
          v140(v139);
          *v106 = OUTLINED_FUNCTION_16();
          v106[1] = v141;
          v142 = (v49 + v75[12]);
          *v142 = 0;
          v142[1] = 0;
LABEL_25:
          OUTLINED_FUNCTION_25();
          v143 = OUTLINED_FUNCTION_57();
          v144(v143);
          v145 = OUTLINED_FUNCTION_71();
          v147 = v134;
LABEL_36:
          v146(v145, v147);
          goto LABEL_9;
        case 6:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVy10Foundation4UUIDVGMd, &_s12BiomeStreams3MAXVy10Foundation4UUIDVGMR);
          OUTLINED_FUNCTION_44();
          v215 = OUTLINED_FUNCTION_55(v214, &protocol witness table for MAX<A>);
          v216 = OUTLINED_FUNCTION_3_5(v215);
          v217(v216);
          v218 = OUTLINED_FUNCTION_26();
          (v79)(v218);
          *v81 = OUTLINED_FUNCTION_16();
          v81[1] = v219;
          OUTLINED_FUNCTION_87();
          type metadata accessor for UUID();
          break;
        case 7:
          v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVys5Int64VGMd, &_s12BiomeStreams3MAXVys5Int64VGMR);
          v226 = OUTLINED_FUNCTION_55(v225, &protocol witness table for MAX<A>);
          OUTLINED_FUNCTION_8_0(v226);
          v134 = v82;
          OUTLINED_FUNCTION_18();
          v227();
          v228 = OUTLINED_FUNCTION_20_0();
          v229(v228);
          *v106 = OUTLINED_FUNCTION_16();
          v106[1] = v230;
          OUTLINED_FUNCTION_11();
          goto LABEL_25;
        default:

          v237 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
          OUTLINED_FUNCTION_63(&type metadata for SQLError, v237);
          v238[3] = v82;
          boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v238);
          v79(boxed_opaque_existential_0Tm, v81, v82);
          OUTLINED_FUNCTION_15();
          swift_willThrow();
          (*(v60 + 1))(v255, v261);
          v240 = *(v253 + 8);
          v240(v81, v82);
          v240(v254, v82);
          goto LABEL_9;
      }

      OUTLINED_FUNCTION_102();
      __swift_storeEnumTagSinglePayload(v173, v174, v175, v176);
      goto LABEL_35;
    case 4:
      v91 = OUTLINED_FUNCTION_21();
      v92(v91);
      v93 = v253;
      (*(v60 + 4))(v253, v36, v261);
      v94 = v50;
      v95 = v60;
      v96 = (v50 + 16);
      v97 = *(v50 + 16);
      v98 = v251;
      v99 = v252;
      v97(v251, v250, v252);
      v100 = (*(v94 + 88))(v98, v99);
      if (!v100)
      {
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MINVys5Int64VGMd, &_s12BiomeStreams3MINVys5Int64VGMR);
        v102 = v250;
        v103 = v93;
        v104 = v101;
        v105 = OUTLINED_FUNCTION_55(v101, &protocol witness table for MIN<A>);
        (*(v95 + 2))(v105 + *(v104 + 36), v103, v261);
        v97(v105 + *(v104 + 40), v102, v99);
        OUTLINED_FUNCTION_4_3();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_25();
        (*(v95 + 1))(v253, v261);
        (*(v94 + 8))(v102, v99);
        goto LABEL_9;
      }

      v258 = v97;
      switch(v100)
      {
        case 1:
          v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MINVySdGMd, &_s12BiomeStreams3MINVySdGMR);
          v126 = OUTLINED_FUNCTION_55(v125, &protocol witness table for MIN<A>);
          v127 = OUTLINED_FUNCTION_6_0(v126);
          v128(v127, v93, v261);
          v129 = OUTLINED_FUNCTION_5_1();
          v130(v129);
          OUTLINED_FUNCTION_4_3();
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_25();
          (*(v95 + 1))(v93, v261);
          v131 = OUTLINED_FUNCTION_86();
          v133(v131, v132);
          goto LABEL_9;
        case 2:
LABEL_31:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MINVySSGMd, &_s12BiomeStreams3MINVySSGMR);
          OUTLINED_FUNCTION_44();
          v162 = OUTLINED_FUNCTION_55(v161, &protocol witness table for MIN<A>);
          OUTLINED_FUNCTION_6_0(v162);
          OUTLINED_FUNCTION_34();
          v163();
          v164 = OUTLINED_FUNCTION_5_1();
          v165(v164);
          OUTLINED_FUNCTION_4_3();
          v166 = (v49 + *(v93 + 48));
          *v166 = 0;
          v166[1] = 0;
LABEL_48:
          OUTLINED_FUNCTION_25();
          (*(v95 + 1))(v94, v61);
          v212 = OUTLINED_FUNCTION_86();
          v213(v212);
          goto LABEL_9;
        case 3:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MINVy10Foundation4DateVGMd, &_s12BiomeStreams3MINVy10Foundation4DateVGMR);
          OUTLINED_FUNCTION_44();
          v183 = OUTLINED_FUNCTION_55(v182, &protocol witness table for MIN<A>);
          OUTLINED_FUNCTION_6_0(v183);
          OUTLINED_FUNCTION_34();
          v184();
          v185 = OUTLINED_FUNCTION_5_1();
          v186(v185);
          OUTLINED_FUNCTION_4_3();
          OUTLINED_FUNCTION_87();
          type metadata accessor for Date();
          break;
        case 4:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MINVy10Foundation4DataVGMd, &_s12BiomeStreams3MINVy10Foundation4DataVGMR);
          OUTLINED_FUNCTION_44();
          v208 = OUTLINED_FUNCTION_55(v207, &protocol witness table for MIN<A>);
          OUTLINED_FUNCTION_6_0(v208);
          OUTLINED_FUNCTION_34();
          v209();
          v210 = OUTLINED_FUNCTION_5_1();
          v211(v210);
          OUTLINED_FUNCTION_4_3();
          *(v49 + *(v93 + 48)) = xmmword_184D27CF0;
          goto LABEL_48;
        case 5:
          goto LABEL_31;
        case 6:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MINVy10Foundation4UUIDVGMd, &_s12BiomeStreams3MINVy10Foundation4UUIDVGMR);
          OUTLINED_FUNCTION_44();
          v221 = OUTLINED_FUNCTION_55(v220, &protocol witness table for MIN<A>);
          OUTLINED_FUNCTION_6_0(v221);
          OUTLINED_FUNCTION_34();
          v222();
          v223 = OUTLINED_FUNCTION_5_1();
          v224(v223);
          OUTLINED_FUNCTION_4_3();
          OUTLINED_FUNCTION_87();
          type metadata accessor for UUID();
          break;
        case 7:
          v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams3MAXVys5Int64VGMd, &_s12BiomeStreams3MAXVys5Int64VGMR);
          v232 = OUTLINED_FUNCTION_55(v231, &protocol witness table for MAX<A>);
          OUTLINED_FUNCTION_6_0(v232);
          v94 = v253;
          OUTLINED_FUNCTION_34();
          v233();
          v234 = OUTLINED_FUNCTION_5_1();
          v235(v234);
          *v96 = OUTLINED_FUNCTION_16();
          v96[1] = v236;
          OUTLINED_FUNCTION_11();
          goto LABEL_48;
        default:

          v241 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
          OUTLINED_FUNCTION_63(&type metadata for SQLError, v241);
          v242 = v252;
          v243[3] = v252;
          v244 = __swift_allocate_boxed_opaque_existential_0Tm(v243);
          v245 = v250;
          v258(v244, v250, v242);
          OUTLINED_FUNCTION_15();
          swift_willThrow();
          (*(v260 + 1))(v253, v261);
          v246 = *(v94 + 8);
          v246(v245, v242);
          v246(v251, v242);
          goto LABEL_9;
      }

      OUTLINED_FUNCTION_102();
      __swift_storeEnumTagSinglePayload(v187, v188, v189, v190);
      goto LABEL_48;
    case 5:
      v113 = OUTLINED_FUNCTION_21();
      v114(v113);
      OUTLINED_FUNCTION_18();
      v260 = v115;
      v115();
      v116 = v248;
      v117 = v252;
      (*(v50 + 104))(v248, 0, v252);
      v118 = v250;
      v119 = OUTLINED_FUNCTION_72();
      v121 = specialized == infix<A>(_:_:)(v119, v120);
      (*(v50 + 8))(v116, v117);
      if (v121)
      {
        v122 = type metadata accessor for SUM_INT(0);
        v123 = v122;
        v124 = &protocol witness table for SUM_INT;
      }

      else
      {
        v122 = type metadata accessor for SUM_NON_INT(0);
        v123 = v122;
        v124 = &protocol witness table for SUM_NON_INT;
      }

      OUTLINED_FUNCTION_55(v122, v124);
      OUTLINED_FUNCTION_62_0();
      (v260)(v159 + v160, v249, v37);
      (*(v50 + 32))(v49 + v123[6], v118, v117);
      *(v49 + v123[7]) = 0;
      *(v49 + v123[8]) = 0;
      goto LABEL_5;
  }

  v148 = object;
  if (v40 == 6)
  {
    v149 = OUTLINED_FUNCTION_21();
    v150(v149);
    v151 = type metadata accessor for TOTAL(0);
    OUTLINED_FUNCTION_55(v151, &protocol witness table for TOTAL);
    OUTLINED_FUNCTION_62_0();
    v154 = OUTLINED_FUNCTION_38(v152, v153);
    v155(v154);
    v156 = OUTLINED_FUNCTION_46(*(v151 + 24));
    v157(v156);
    v158 = *(v151 + 28);
  }

  else
  {
    if (v40 != 7)
    {

      v198 = lazy protocol witness table accessor for type SQLError and conformance SQLError();
      OUTLINED_FUNCTION_63(&type metadata for SQLError, v198);
      v200 = v199;
      v201 = v252;
      v199[3] = v252;
      v202 = __swift_allocate_boxed_opaque_existential_0Tm(v199);
      (*(v50 + 16))(v202, v250, v201);
      *(v200 + 2) = 0u;
      *(v200 + 3) = 0u;
      *(v200 + 64) = 3;
      swift_willThrow();
      v203 = OUTLINED_FUNCTION_77();
      v204(v203);
      v205 = OUTLINED_FUNCTION_39();
      v206(v205);
      goto LABEL_9;
    }

    v179 = type metadata accessor for COUNT_STAR(0);
    OUTLINED_FUNCTION_55(v179, &protocol witness table for COUNT_STAR);
    OUTLINED_FUNCTION_62_0();
    (*(v50 + 32))(v180 + v181, v250, v252);
    v158 = *(v179 + 24);
  }

  *(v49 + v158) = 0;
  *v49 = v61;
  v49[1] = v148;
LABEL_9:
  OUTLINED_FUNCTION_65();
}

void static KeyedAggregationMetadataCache.payloadSchema(aggregationFunctions:)()
{
  OUTLINED_FUNCTION_64();
  v1 = v0;
  v3 = v2;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59(v8);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
  OUTLINED_FUNCTION_2_1();
  v165 = v9;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v10, v11);
  v186 = v143 - v12;
  v13 = OUTLINED_FUNCTION_43();
  v157 = type metadata accessor for StorableValue(v13);
  OUTLINED_FUNCTION_2_1();
  v156 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_9();
  v158 = v17;
  OUTLINED_FUNCTION_43();
  v178 = type metadata accessor for SQLDataType();
  OUTLINED_FUNCTION_2_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_59(v22);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_51();
  v163 = v29;
  OUTLINED_FUNCTION_43();
  v30 = type metadata accessor for AggregationFunction();
  OUTLINED_FUNCTION_2_1();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_9();
  v174 = v35;
  v36 = *(v3 + 16);
  if (v36)
  {
    v144 = *(v3 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
    v38 = *(v32 + 16);
    v37 = v32 + 16;
    v150 = v38;
    OUTLINED_FUNCTION_19_0();
    v149 = v3 + v41;
    v143[7] = 7;
    v155 = v19 + 104;
    v143[6] = 6;
    v143[5] = 4;
    v143[4] = 5;
    v143[3] = 2;
    v143[2] = 3;
    v173 = v19 + 32;
    v153 = v19 + 40;
    v184 = v19 + 16;
    v147 = v37 - 8;
    v143[1] = 1;
    v143[0] = 0;
    v148 = *(v37 + 56);
    v175 = v19;
    v146 = v30;
    v145 = v37;
    while (1)
    {
      v152 = v39;
      v154 = v40;
      OUTLINED_FUNCTION_124_0();
      v150(v174, v42 + v148 * v43, v30);
      AggregationFunction.newAggregation()();
      if (v1)
      {
        break;
      }

      __swift_project_boxed_opaque_existential_1(&v188, v189);
      v44 = OUTLINED_FUNCTION_35_3();
      v46 = v45(v44);
      v151 = 0;
      ++v154;
      v47 = Dictionary.init(dictionaryLiteral:)();
      v48 = v46 + 64;
      OUTLINED_FUNCTION_58_1();
      v51 = v50 & v49;
      v53 = (v52 + 63) >> 6;

      v54 = 0;
      v180 = v53;
      v181 = v46 + 64;
      v182 = v46;
LABEL_5:
      v177 = v47;
      if (v51)
      {
        goto LABEL_10;
      }

      while (1)
      {
        v55 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
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
LABEL_67:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          JUMPOUT(0x184901CD0);
        }

        if (v55 >= v53)
        {
          break;
        }

        v51 = *(v48 + 8 * v55);
        ++v54;
        if (v51)
        {
          v54 = v55;
LABEL_10:
          v56 = __clz(__rbit64(v51));
          v51 &= v51 - 1;
          v57 = v56 | (v54 << 6);
          v58 = *(v46 + 56);
          v59 = (*(v46 + 48) + 16 * v57);
          v61 = *v59;
          v60 = v59[1];
          v62 = v161;
          v63 = v163;
          _s12BiomeStreams13StorableValueOWOcTm_0(v58 + *(v156 + 72) * v57, v163 + *(v161 + 48));
          *v63 = v61;
          v63[1] = v60;
          v64 = v160;
          outlined init with copy of Date?(v63, v160, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
          v65 = *(v64 + 8);
          v183 = *v64;
          v185 = v65;
          v66 = v164;
          outlined init with copy of Date?(v63, v164, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);

          _s12BiomeStreams13StorableValueOWOcTm_0(v66 + *(v62 + 48), v158);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v68 = v177;
          switch(EnumCaseMultiPayload)
          {
            case 1:
              v69 = OUTLINED_FUNCTION_6_5();
              v71 = (&v172 + 4);
              goto LABEL_18;
            case 2:
              v72 = OUTLINED_FUNCTION_6_5();
              v74 = &v173;
              goto LABEL_20;
            case 3:
              OUTLINED_FUNCTION_0_24();
              OUTLINED_FUNCTION_153();
              v69 = OUTLINED_FUNCTION_6_5();
              v71 = (&v173 + 4);
              goto LABEL_18;
            case 4:
              OUTLINED_FUNCTION_0_24();
              OUTLINED_FUNCTION_153();
              v69 = OUTLINED_FUNCTION_6_5();
              v71 = &v174;
              goto LABEL_18;
            case 5:
              OUTLINED_FUNCTION_0_24();
              OUTLINED_FUNCTION_153();
              v69 = OUTLINED_FUNCTION_6_5();
              v71 = (&v174 + 4);
              goto LABEL_18;
            case 6:
              v72 = OUTLINED_FUNCTION_6_5();
              v74 = &v175;
LABEL_20:
              v73(v72, *(v74 - 64), v178);
              OUTLINED_FUNCTION_0_24();
              OUTLINED_FUNCTION_153();
              goto LABEL_21;
            case 7:
              v69 = OUTLINED_FUNCTION_6_5();
              v71 = (&v175 + 4);
              goto LABEL_18;
            default:
              v69 = OUTLINED_FUNCTION_6_5();
              v71 = &v172;
LABEL_18:
              v70(v69, *(v71 - 64), v178);
LABEL_21:
              v75 = v185;
              v76 = v183;
              OUTLINED_FUNCTION_0_24();
              _s12BiomeStreams13StorableValueOWOhTm_1();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v187 = v68;
              v78 = OUTLINED_FUNCTION_68_1();
              specialized __RawDictionaryStorage.find<A>(_:)(v78, v79);
              OUTLINED_FUNCTION_15_3();
              v84 = v82 + v83;
              if (__OFADD__(v82, v83))
              {
                goto LABEL_65;
              }

              v85 = v80;
              v86 = v81;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss17_NativeDictionaryVySS14BiomeSQLParser11SQLDataTypeOGMR);
              if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v84))
              {
                goto LABEL_25;
              }

              v87 = OUTLINED_FUNCTION_68_1();
              v89 = specialized __RawDictionaryStorage.find<A>(_:)(v87, v88);
              if ((v86 & 1) != (v90 & 1))
              {
                goto LABEL_67;
              }

              v85 = v89;
LABEL_25:
              if (v86)
              {

                v47 = v187;
                v91 = OUTLINED_FUNCTION_144_0();
                (*(v92 + 40))(v91, v162, v178);
                outlined destroy of (columnName: String, dataType: SQLDataType)(v163, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
              }

              else
              {
                v47 = v187;
                OUTLINED_FUNCTION_14_4(v187 + 8 * (v85 >> 6));
                v93 = (*(v47 + 48) + 16 * v85);
                *v93 = v76;
                v93[1] = v75;
                v94 = OUTLINED_FUNCTION_144_0();
                (*(v95 + 32))(v94, v162, v178);
                outlined destroy of (columnName: String, dataType: SQLDataType)(v163, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
                OUTLINED_FUNCTION_142_0();
                if (v97)
                {
                  goto LABEL_66;
                }

                *(v47 + 16) = v96;
              }

              OUTLINED_FUNCTION_0_24();
              _s12BiomeStreams13StorableValueOWOhTm_1();
              v48 = v181;
              v46 = v182;
              v53 = v180;
              break;
          }

          goto LABEL_5;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v188);
      v98 = *(v47 + 16);
      if (v98)
      {
        v187 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v98, 0);
        v185 = v187;
        v101 = specialized Dictionary.startIndex.getter(v47);
        v102 = 0;
        v103 = v47 + 64;
        v170 = v99;
        v159 = v47 + 72;
        v171 = v98;
        v172 = v47 + 64;
        do
        {
          if (v101 < 0 || v101 >= 1 << *(v47 + 32))
          {
            goto LABEL_59;
          }

          if ((*(v103 + 8 * (v101 >> 6)) & (1 << v101)) == 0)
          {
            goto LABEL_60;
          }

          if (*(v47 + 36) != v99)
          {
            goto LABEL_61;
          }

          v181 = 1 << v101;
          v182 = v101 >> 6;
          v179 = v102;
          v180 = v99;
          v176 = v100;
          v104 = v169;
          v105 = *(v169 + 48);
          v106 = (*(v47 + 48) + 16 * v101);
          v108 = *v106;
          v107 = v106[1];
          v109 = v175;
          v110 = *(v47 + 56) + *(v175 + 72) * v101;
          v183 = *(v175 + 16);
          v111 = v167;
          v112 = v178;
          v183(v167 + v105, v110, v178);
          v113 = v168;
          *v168 = v108;
          *(v113 + 8) = v107;
          v114 = *(v104 + 48);
          (*(v109 + 32))(v113 + v114, v111 + v105, v112);
          v115 = *(v166 + 64);

          v188 = AggregationFunction.name()();

          MEMORY[0x1865F6280](95, 0xE100000000000000);

          MEMORY[0x1865F6280](v108, v107);

          object = v188._object;
          countAndFlagsBits = v188._countAndFlagsBits;
          v183(&v186[v115], v113 + v114, v112);
          *v186 = v108;
          *(v186 + 1) = v107;
          *(v186 + 1) = __PAIR128__(object, countAndFlagsBits);
          v118 = v186;

          v119 = v185;
          outlined destroy of (columnName: String, dataType: SQLDataType)(v113, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
          v187 = v119;
          v121 = *(v119 + 16);
          v120 = *(v119 + 24);
          v185 = v119;
          if (v121 >= v120 >> 1)
          {
            OUTLINED_FUNCTION_4_9(v120);
            OUTLINED_FUNCTION_71_1();
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v133, v134, v135);
            v185 = v187;
          }

          *(v185 + 16) = v121 + 1;
          OUTLINED_FUNCTION_12_6();
          outlined init with take of UUID?(v118, v123 + v122 + *(v124 + 72) * v121, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR);
          v47 = v177;
          v125 = 1 << *(v177 + 32);
          v103 = v172;
          if (v101 >= v125)
          {
            goto LABEL_62;
          }

          v126 = *(v172 + 8 * v182);
          if ((v126 & v181) == 0)
          {
            goto LABEL_63;
          }

          if (*(v177 + 36) != v180)
          {
            goto LABEL_64;
          }

          v127 = v126 & (-2 << (v101 & 0x3F));
          if (v127)
          {
            v125 = __clz(__rbit64(v127)) | v101 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v128 = v182 << 6;
            v129 = v182 + 1;
            v130 = (v159 + 8 * v182);
            while (v129 < (v125 + 63) >> 6)
            {
              v132 = *v130++;
              v131 = v132;
              v128 += 64;
              ++v129;
              if (v132)
              {
                outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v101, v180, v176 & 1);
                v125 = __clz(__rbit64(v131)) + v128;
                goto LABEL_48;
              }
            }

            outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v101, v180, v176 & 1);
          }

LABEL_48:
          v100 = 0;
          v102 = v179 + 1;
          v101 = v125;
          v99 = v170;
        }

        while (v179 + 1 != v171);
      }

      else
      {

        v185 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_16_0();
      v30 = v146;
      v136(v174, v146);
      v39 = v152;
      v190 = v152;
      v138 = *(v152 + 16);
      v137 = *(v152 + 24);
      v1 = v151;
      if (v138 >= v137 >> 1)
      {
        OUTLINED_FUNCTION_4_9(v137);
        OUTLINED_FUNCTION_71_1();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v139, v140, v141);
        v39 = v190;
      }

      *(v39 + 16) = v138 + 1;
      *(v39 + 8 * v138 + 32) = v185;
      v40 = v154;
      if (v154 == v144)
      {
        goto LABEL_57;
      }
    }

    OUTLINED_FUNCTION_16_0();
    v142(v174, v30);
  }

LABEL_57:
  OUTLINED_FUNCTION_65();
}

uint64_t outlined destroy of UUID?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_28();
  (*(v4 + 8))(a1);
  return a1;
}

Swift::String __swiftcall AggregationFunction.name()()
{
  outlined init with copy of AggregationFunction.AggregationType(v0, &v23);
  if (v35 > 3u)
  {
    if (v35 <= 5u)
    {
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17 = v23;
      v18 = v24;
      if (v35 == 4)
      {
        v1 = 678324589;
      }

      else
      {
        v1 = 678262131;
      }

      goto LABEL_18;
    }

    if (v35 != 6)
    {
      v3 = 0xE800000000000000;
      v2 = 0x292A28746E756F63;
      goto LABEL_21;
    }

    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v17 = v23;
    v18 = v24;
    v1 = 0x286C61746F74;
  }

  else
  {
    if (v35 > 1u)
    {
      if (v35 == 2)
      {
        v19 = v25;
        v20 = v26;
        v21 = v27;
        v22 = v28;
        v17 = v23;
        v18 = v24;
        v16[2] = v31;
        v16[3] = v32;
        v16[4] = v33;
        v16[5] = v34;
        v16[0] = v29;
        v16[1] = v30;
        outlined init with copy of PgQuery_Alias?(v16, &v8, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        if (*(&v9 + 1))
        {
          v14[2] = v10;
          v14[3] = v11;
          v14[4] = v12;
          v15 = v13;
          v14[0] = v8;
          v14[1] = v9;
          *&v8 = 0;
          *(&v8 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          strcpy(&v8, "group_concat(");
          HIWORD(v8) = -4864;
          MEMORY[0x1865F6280](v22, *(&v22 + 1));
          MEMORY[0x1865F6280](8236, 0xE200000000000000);
          MEMORY[0x1865F6280](v15, *(&v15 + 1));
          MEMORY[0x1865F6280](41, 0xE100000000000000);
          v3 = *(&v8 + 1);
          v2 = v8;
          outlined destroy of SQLExpression(v14);
        }

        else
        {
          _s10Foundation4UUIDVSgWOhTm_0(&v8, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
          *&v14[0] = 0;
          *(&v14[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(16);

          strcpy(v14, "group_concat(");
          HIWORD(v14[0]) = -4864;
          MEMORY[0x1865F6280](v22, *(&v22 + 1));
          MEMORY[0x1865F6280](41, 0xE100000000000000);
          v3 = *(&v14[0] + 1);
          v2 = *&v14[0];
        }

        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser13SQLExpressionVSgMd, &_s14BiomeSQLParser13SQLExpressionVSgMR);
        goto LABEL_20;
      }

      v19 = v25;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17 = v23;
      v18 = v24;
      v1 = 678977901;
      goto LABEL_18;
    }

    if (!v35)
    {
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17 = v23;
      v18 = v24;
      v1 = 677869153;
LABEL_18:
      v4 = 0xE400000000000000;
      goto LABEL_19;
    }

    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v17 = v23;
    v18 = v24;
    v1 = 0x28746E756F63;
  }

  v4 = 0xE600000000000000;
LABEL_19:
  *&v16[0] = v1;
  *(&v16[0] + 1) = v4;
  MEMORY[0x1865F6280](v22, *(&v22 + 1));
  MEMORY[0x1865F6280](41, 0xE100000000000000);
  v3 = *(&v16[0] + 1);
  v2 = *&v16[0];
LABEL_20:
  outlined destroy of SQLExpression(&v17);
LABEL_21:
  v5 = v2;
  v6 = v3;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return MEMORY[0x1EEDC70C8](v2, v1, a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_0_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_25()
{

  return errstart(20, 0);
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return errstart(20, 0);
}

uint64_t OUTLINED_FUNCTION_0_27(_DWORD *a1)
{
  *a1 = -1;

  return errstart(20, 0);
}

uint64_t OUTLINED_FUNCTION_200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 - 120) = a5;
  *(v6 - 112) = v5;
  *(v6 - 136) = a1;
  *(v6 - 128) = a4;
  *(v6 - 160) = a2;

  return type metadata accessor for String.Encoding();
}

uint64_t COUNT_STAR.aggregationMetadata()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMd, &_ss23_ContiguousArrayStorageCySS_12BiomeStreams13StorableValueOtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12BiomeStreams13StorableValueOtMd, &_sSS_12BiomeStreams13StorableValueOtMR);
  OUTLINED_FUNCTION_47_0();
  v1 = OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_191(v1, xmmword_184D29AA0);
  if (one-time initialization token for countKey != -1)
  {
    OUTLINED_FUNCTION_71_0();
    swift_once();
  }

  v2 = OUTLINED_FUNCTION_30_1(&static COUNT_STAR.countKey);
  v3 = type metadata accessor for COUNT_STAR(v2);
  OUTLINED_FUNCTION_164(*(v0 + *(v3 + 24)));
  OUTLINED_FUNCTION_140();
  swift_storeEnumTagMultiPayload();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t outlined init with copy of StorableValue()
{
  v1 = OUTLINED_FUNCTION_147();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_81();
  v4(v3);
  return v0;
}

uint64_t _s12BiomeStreams13StorableValueOWOcTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_84();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_81();
  v6(v5);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_83();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLExpression(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  Description = type metadata accessor for AggregationFunction()[-1].Description;
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6 = (Description[80] + 32) & ~Description[80];
  v12 = v3 + v6;
  v13 = v5;
  v7 = _minimumMergeRunLength(_:)(v5);
  if (v7 >= v5)
  {
    if (v5)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)();
    }
  }

  else
  {
    v8 = v7;
    if (v5 >= 2)
    {
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v5 >> 1;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v10, &v11, &v12, v8, type metadata accessor for AggregationFunction, AggregationFunction.name(), AggregationFunction.name(), type metadata accessor for AggregationFunction, specialized UnsafeMutablePointer.moveInitialize(from:count:), (v9 + v6), v5 >> 1, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    *(v9 + 16) = 0;
  }

  *a1 = v3;
}

{
  Description = type metadata accessor for SQLExpression()[-1].Description;
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6 = (Description[80] + 32) & ~Description[80];
  v12 = v3 + v6;
  v13 = v5;
  v7 = _minimumMergeRunLength(_:)(v5);
  if (v7 >= v5)
  {
    if (v5)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)();
    }
  }

  else
  {
    v8 = v7;
    if (v5 >= 2)
    {
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v5 >> 1;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v10, &v11, &v12, v8, type metadata accessor for SQLExpression, SQLExpression.sql.getter, SQLExpression.sql.getter, type metadata accessor for SQLExpression, specialized UnsafeMutablePointer.moveInitialize(from:count:), (v9 + v6), v5 >> 1, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    *(v9 + 16) = 0;
  }

  *a1 = v3;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14BiomeSQLParser19AggregationFunctionV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = OUTLINED_FUNCTION_15_1(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = OUTLINED_FUNCTION_19_3();
  v11 = *(a5(v10) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v12)
  {
    if ((result - v13) != 0x8000000000000000 || v12 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v12);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_14BiomeSQLParser19AggregationFunctionV0C4TypeO(uint64_t a1)
{
  if ((*(a1 + 192) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 192) & 7;
  }
}

uint64_t outlined init with copy of PgQuery_Alias?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_87_0(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
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

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
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

        v9 = v7 + 4;
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

  return MEMORY[0x1E69E7CC0];
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
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

id BMSQLVirtualTables(void *a1, void *a2, void *a3, void *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v38 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = v7;
  v41 = [v9 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v41)
  {
    v40 = *v47;
    *&v10 = 138412290;
    v35 = v10;
    v37 = v8;
    obj = v9;
    while (2)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = v12;
        v15 = [&unk_1EF309278 objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17;

        v45 = 0;
        v19 = [v6 streamWithIdentifier:v18 error:&v45];
        v20 = v45;
        v21 = v20;
        if (v20)
        {
          v22 = [v20 domain];
          if (![v22 isEqualToString:@"BMLibraryErrorDomain"])
          {

LABEL_22:
            if (a4)
            {
              v33 = v21;
              *a4 = v21;
            }

            objc_autoreleasePoolPop(v13);
            v9 = obj;

            v32 = 0;
            goto LABEL_25;
          }

          v23 = [v21 code];

          if (v23 != 1)
          {
            goto LABEL_22;
          }

          v24 = __biome_log_for_category();
          if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_DEBUG))
          {
            *buf = v35;
            v51 = v18;
            _os_log_debug_impl(&dword_1848EE000, &v24->super, OS_LOG_TYPE_DEBUG, "BMSQLDatabase failed to add virtual table for stream %@ because it is not in BiomeLibrary", buf, 0xCu);
          }
        }

        else
        {
          if ([v14 isEqualToString:v18])
          {
            v24 = [[BMStreamVirtualTable alloc] initWithStream:v19 useCase:v38];
          }

          else
          {
            v25 = [BMSQLSchema alloc];
            v26 = [v19 schema];
            [v26 columns];
            v28 = v27 = v6;
            v29 = [(BMSQLSchema *)v25 initWithTableName:v14 columns:v28];

            v30 = [BMStreamVirtualTable alloc];
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __BMSQLVirtualTables_block_invoke;
            v42[3] = &unk_1E6E53D28;
            v43 = v19;
            v44 = v38;
            v31 = v30;
            v6 = v27;
            v8 = v37;
            v24 = [(BMStreamVirtualTable *)v31 initWithSchema:v29 publisherBlock:v42];
          }

          [v8 addObject:{v24, v35}];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = obj;
      v41 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v41)
      {
        continue;
      }

      break;
    }
  }

  v32 = [v8 copy];
LABEL_25:

  return v32;
}

uint64_t bmstream_vtab_connect(sqlite3 *a1, id *a2, int a3, uint64_t a4, void *a5, char **a6)
{
  v12 = objc_autoreleasePoolPush();
  if (a3 == 3)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(a4 + 16)];
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      bmstream_vtab_connect_cold_1();
    }

    WeakRetained = objc_loadWeakRetained(a2);
    v16 = [WeakRetained virtualTableForName:v13];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 schema];

      if (v18)
      {
        v19 = [v17 schema];
        v20 = [v19 createTableSQL];

        v21 = __biome_log_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          bmstream_vtab_connect_cold_2();
        }

        v22 = sqlite3_declare_vtab(a1, [v20 UTF8String]);
        if (!v22)
        {
          v23 = sqlite3_malloc(40);
          if (v23)
          {
            *v23 = 0u;
            *(v23 + 1) = 0u;
            *(v23 + 4) = 0;
            v24 = (v23 + 32);
            *a5 = v23;
            objc_storeStrong(v23 + 3, v17);
            objc_storeWeak(v24, WeakRetained);
            v22 = 0;
          }

          else
          {
            *a5 = 0;
            v22 = 7;
          }
        }

        goto LABEL_22;
      }

      if (a6)
      {
        v25 = [v17 schema];

        if (v25)
        {
          goto LABEL_16;
        }

        *a6 = sqlite3_mprintf("stream %s does not have a schema", [v13 UTF8String]);
      }
    }

    else if (a6)
    {
LABEL_16:
      v26 = [0 localizedDescription];
      v27 = v26;
      if (v26)
      {
        *a6 = sqlite3_mprintf("%s", [v26 UTF8String]);
      }
    }

    v22 = 1;
LABEL_22:

    goto LABEL_23;
  }

  v22 = 1;
LABEL_23:
  objc_autoreleasePoolPop(v12);
  return v22;
}

__CFString *BMSQLDataTypeToString(unint64_t a1)
{
  if (a1 < 7)
  {
    return off_1E6E53478[a1];
  }

  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    BMSQLDataTypeToString_cold_1(a1, v3);
  }

  return @"TEXT";
}

void *bm_sqlite3_malloc(int a1)
{
  v2 = sqlite3_malloc(a1);
  v3 = v2;
  if (v2)
  {
    bzero(v2, a1);
  }

  return v3;
}

uint64_t bmstream_authorizer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = @"DENY";
  v8 = 1;
  if (a2 > 14)
  {
    if (a2 > 0x21)
    {
      goto LABEL_15;
    }

    if (((1 << a2) & 0x283600000) != 0)
    {
      goto LABEL_52;
    }

    if (a2 != 20)
    {
      if (a2 == 23)
      {
        if (a3)
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
        }

        else
        {
          v9 = 0;
        }

        v14 = ([v9 isEqualToString:@"sqlite_master"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"sqlite_temp_master") & 1) == 0;
        goto LABEL_49;
      }

LABEL_15:
      if (a2 != 15)
      {
        if (a2 != 18)
        {
          goto LABEL_53;
        }

LABEL_17:
        if (a3)
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
        }

        else
        {
          v10 = 0;
        }

        v11 = [v10 isEqualToString:@"sqlite_temp_master"];

        if ((v11 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      goto LABEL_52;
    }

    if (a3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
      if (a4)
      {
LABEL_24:
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
        goto LABEL_27;
      }
    }

    else
    {
      v9 = 0;
      if (a4)
      {
        goto LABEL_24;
      }
    }

    v13 = 0;
LABEL_27:
    if ([v9 isEqualToString:@"sqlite_master"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"json_each"))
    {
      v14 = 0;
    }

    else
    {
      v15 = [a1 privileges];
      v16 = v15;
      if (v15)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v26;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v26 != v20)
              {
                objc_enumerationMutation(v17);
              }

              if ([*(*(&v25 + 1) + 8 * i) checkTable:v9 column:{v13, v25}])
              {
                v14 = 0;
                goto LABEL_45;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v14 = 1;
LABEL_45:
      }

      else
      {
        v14 = 0;
      }
    }

LABEL_49:
    if (v14)
    {
      v7 = @"DENY";
LABEL_51:
      v8 = 1;
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (a2 > 8)
  {
    if (a2 == 9)
    {
      goto LABEL_17;
    }

    if (a2 == 13)
    {
LABEL_52:
      v8 = 0;
      v7 = @"ALLOW";
    }
  }

  else if (a2 == 4 || a2 == 6)
  {
    goto LABEL_52;
  }

LABEL_53:
  v22 = __biome_log_for_category();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v24 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    *buf = 138413058;
    v30 = v7;
    v31 = 2112;
    v32 = v24;
    v33 = 2080;
    v34 = a3;
    v35 = 2080;
    v36 = a4;
    _os_log_debug_impl(&dword_1848EE000, v22, OS_LOG_TYPE_DEBUG, "bmstream_authorizer callback %@ for action %@, (%s, %s)", buf, 0x2Au);
  }

  return v8;
}