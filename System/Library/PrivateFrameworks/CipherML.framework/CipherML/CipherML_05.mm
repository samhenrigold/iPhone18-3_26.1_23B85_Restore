Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V8CipherML027AspireHeSerializedKeySwitchI0VGMd, &_ss18_DictionaryStorageCys6UInt64V8CipherML027AspireHeSerializedKeySwitchI0VGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        outlined init with take of AspirePirSymmetricPirClientConfig(v25, v7, type metadata accessor for AspireHeSerializedKeySwitchKey);
      }

      else
      {
        outlined init with copy of UserIdentifier(v25, v7, type metadata accessor for AspireHeSerializedKeySwitchKey);
      }

      result = MEMORY[0x22AA61400](*(v10 + 40), v23);
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v7, *(v10 + 56) + v24 * v18, type metadata accessor for AspireHeSerializedKeySwitchKey);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

void *specialized static RequestsManager.cachedAndMissingKeywordsInBatch(keywords:shardIds:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(a1 + 16);
    if (v6 != v7)
    {
      if (one-time initialization token for daemon != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_36;
    }
  }

  if (!a3)
  {
    v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_AESgTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    return v78;
  }

  swift_unknownObjectRetain();
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_AESgTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v9 = *(a1 + 16);
  v78 = v8;
  if (v6)
  {
    if (v9)
    {
      v10 = 0;
      v77 = a1 + 32;
      v11 = a2 + 40;
      v12 = MEMORY[0x277D84F90];
      v13 = MEMORY[0x277D84F90];
      v76 = v6;
      v75 = v11;
      while (2)
      {
        v7 = (v11 + 16 * v10);
        v14 = v10;
        while (1)
        {
          if (v14 >= v9)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          if (__OFADD__(v14, 1))
          {
            goto LABEL_64;
          }

          if (v6 == v14)
          {
            goto LABEL_61;
          }

          if (v14 >= v6)
          {
            goto LABEL_65;
          }

          v80 = v14 + 1;
          v87 = v13;
          v85 = *(v77 + 16 * v14);
          v15 = *v7;
          v79 = *(v7 - 1);
          ObjectType = swift_getObjectType();
          v17 = *(a4 + 40);

          outlined copy of Data._Representation(v85, *(&v85 + 1));
          v18 = v17(v85, *(&v85 + 1), ObjectType, a4);
          if (v19 >> 60 != 11)
          {
            break;
          }

          outlined copy of Data._Representation(v85, *(&v85 + 1));
          v13 = v87;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v87 + 2) + 1, 1, v87);
          }

          v21 = *(v13 + 2);
          v20 = *(v13 + 3);
          if (v21 >= v20 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v13);
          }

          *(v13 + 2) = v21 + 1;
          *&v13[16 * v21 + 32] = v85;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
          }

          v23 = *(v12 + 2);
          v22 = *(v12 + 3);
          if (v23 >= v22 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v12);
          }

          ++v14;
          v7 += 2;
          outlined consume of Data._Representation(v85, *(&v85 + 1));
          *(v12 + 2) = v23 + 1;
          v24 = &v12[16 * v23];
          *(v24 + 4) = v79;
          *(v24 + 5) = v15;
          v6 = v76;
          if (v80 == v9)
          {
            goto LABEL_61;
          }
        }

        v25 = v18;
        v26 = v19;

        outlined copy of Data?(v25, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v85, *(&v85 + 1));
        v30 = v78[2];
        v31 = (v28 & 1) == 0;
        v32 = v30 + v31;
        if (__OFADD__(v30, v31))
        {
          __break(1u);
        }

        else
        {
          if (v78[3] >= v32)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v83 = v28;
              v44 = v29;
              specialized _NativeDictionary.copy()();
              v29 = v44;
              v28 = v83;
            }
          }

          else
          {
            v33 = isUniquelyReferenced_nonNull_native;
            v34 = v28;
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, v33);
            v35 = specialized __RawDictionaryStorage.find<A>(_:)(v85, *(&v85 + 1));
            if ((v34 & 1) != (v36 & 1))
            {
              goto LABEL_71;
            }

            v29 = v35;
            v28 = v34;
          }

          if (v28)
          {
            v37 = (v78[7] + 16 * v29);
            v38 = *v37;
            v39 = v37[1];
            *v37 = v25;
            v37[1] = v26;
            outlined consume of Data?(v38, v39);
            outlined consume of Data._Representation(v85, *(&v85 + 1));
            outlined consume of Data??(v25, v26);
            goto LABEL_33;
          }

          v78[(v29 >> 6) + 8] |= 1 << v29;
          *(v78[6] + 16 * v29) = v85;
          v40 = (v78[7] + 16 * v29);
          *v40 = v25;
          v40[1] = v26;
          outlined consume of Data??(v25, v26);
          v41 = v78[2];
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (!v42)
          {
            v78[2] = v43;
LABEL_33:
            v13 = v87;
            v6 = v76;
            v10 = v14 + 1;
            v11 = v75;
            if (v80 != v9)
            {
              continue;
            }

            goto LABEL_61;
          }
        }

        break;
      }

      __break(1u);
LABEL_71:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_61:
    swift_unknownObjectRelease();
    return v78;
  }

  if (!v9)
  {
    goto LABEL_61;
  }

  v86 = swift_getObjectType();
  v82 = *(a4 + 40);
  v7 = (a1 + 40);
  v49 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = *(v7 - 1);
    v53 = *v7;
    outlined copy of Data._Representation(v6, *v7);
    v54 = v82(v6, v53, v86, a4);
    if (v55 >> 60 == 11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
      }

      v57 = *(v49 + 2);
      v56 = *(v49 + 3);
      if (v57 >= v56 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v49);
      }

      *(v49 + 2) = v57 + 1;
      v58 = &v49[16 * v57];
      *(v58 + 4) = v6;
      *(v58 + 5) = v53;
      goto LABEL_43;
    }

    v59 = v54;
    v60 = v55;
    v81 = v9;
    v88 = v49;
    outlined copy of Data?(v54, v55);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v63 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v53);
    v64 = v78[2];
    v65 = (v62 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      break;
    }

    v67 = v62;
    if (v78[3] >= v66)
    {
      if ((v61 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v66, v61);
      v68 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v53);
      if ((v67 & 1) != (v69 & 1))
      {
        goto LABEL_71;
      }

      v63 = v68;
    }

    if (v67)
    {
      v50 = (v78[7] + 16 * v63);
      v51 = *v50;
      v52 = v50[1];
      *v50 = v59;
      v50[1] = v60;
      outlined consume of Data?(v51, v52);
      outlined consume of Data._Representation(v6, v53);
      outlined consume of Data??(v59, v60);
    }

    else
    {
      v78[(v63 >> 6) + 8] |= 1 << v63;
      v70 = (v78[6] + 16 * v63);
      *v70 = v6;
      v70[1] = v53;
      v71 = (v78[7] + 16 * v63);
      *v71 = v59;
      v71[1] = v60;
      outlined consume of Data??(v59, v60);
      v72 = v78[2];
      v42 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (v42)
      {
        goto LABEL_67;
      }

      v78[2] = v73;
    }

    v49 = v88;
    v9 = v81;
LABEL_43:
    v7 += 2;
    if (!--v9)
    {
      goto LABEL_61;
    }
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  swift_once();
LABEL_36:
  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.daemon);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134349312;
    *(v48 + 4) = v6;

    *(v48 + 12) = 2050;
    *(v48 + 14) = v7;

    _os_log_impl(&dword_224E26000, v46, v47, "shardIds (length %{public}ld must be empty or match keywords.count %{public}ld.", v48, 0x16u);
    MEMORY[0x22AA61F40](v48, -1, -1);
  }

  else
  {
  }

  type metadata accessor for CipherMLError(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void *specialized RequestsManager.EmptyAndNonEmptyShards.init(keywords:shardIds:context:)(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v68 = a3;
  v7 = type metadata accessor for AspireApiPIRShardConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v61 - v10);
  v12 = *(a2 + 16);
  v66 = a1;
  if (v12)
  {
    if (v12 != a1[2])
    {
      if (one-time initialization token for daemon == -1)
      {
LABEL_42:
        v53 = type metadata accessor for Logger();
        __swift_project_value_buffer(v53, static Logger.daemon);

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = a2;
          v57 = swift_slowAlloc();
          *v57 = 134349312;
          v58 = *(v56 + 16);

          *(v57 + 4) = v58;

          *(v57 + 12) = 2050;
          v59 = a1[2];

          *(v57 + 14) = v59;

          _os_log_impl(&dword_224E26000, v54, v55, "shardIds (length %{public}ld must be empty or match keywords.count %{public}ld.", v57, 0x16u);
          MEMORY[0x22AA61F40](v57, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        type metadata accessor for CipherMLError(0);
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        outlined destroy of AspirePirKeywordPirParameters(v68, type metadata accessor for RequestsManager.PIRContext);
        return v4;
      }

LABEL_57:
      swift_once();
      goto LABEL_42;
    }

    v67 = v3;
    v13 = 0;
    v63 = a1 + 4;
    v64 = v9;
    v4 = MEMORY[0x277D84F90];
    v69 = MEMORY[0x277D84F90];
    v14 = v68;
    v65 = a2;
LABEL_4:
    v62 = v4;
    v4 = (16 * v13);
    v15 = v13;
    v16 = v69;
    while (v15 < v12)
    {
      v17 = *(a2 + 16);
      v69 = v16;
      if (v15 == v17)
      {
        goto LABEL_44;
      }

      if (v15 >= v17)
      {
        goto LABEL_55;
      }

      v18 = *(v4 + v63);
      v19 = *(v4 + v63 + 8);
      v20 = v4 + a2;
      v22 = *(v4 + a2 + 32);
      v21 = *(v20 + 5);
      type metadata accessor for RequestsManager.PIRContext(0);
      outlined copy of Data._Representation(v18, v19);

      outlined copy of Data._Representation(v18, v19);

      v23 = v64;
      v24 = v67;
      AspireApiPIRConfig.shardConfig(at:)(v22, v21, 0, v64);
      v67 = v24;
      if (v24)
      {

        outlined consume of Data._Representation(v18, v19);

        outlined consume of Data._Representation(v18, v19);
        outlined destroy of AspirePirKeywordPirParameters(v14, type metadata accessor for RequestsManager.PIRContext);

        return v4;
      }

      outlined consume of Data._Representation(v18, v19);

      v25 = *v23;
      outlined destroy of AspirePirKeywordPirParameters(v23, type metadata accessor for AspireApiPIRShardConfig);
      outlined copy of Data._Representation(v18, v19);

      if (!v25)
      {
        v30 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v4 = v30;
        if (v32 >= v31 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
        }

        v13 = v15 + 1;
        outlined consume of Data._Representation(v18, v19);

        v4[2] = v32 + 1;
        v33 = &v4[4 * v32];
        v33[4] = v18;
        v33[5] = v19;
        v33[6] = v22;
        v33[7] = v21;
        a2 = v65;
        a1 = v66;
        v12 = *(v66 + 16);
        v14 = v68;
        if (v12 - 1 == v15)
        {
          goto LABEL_45;
        }

        goto LABEL_4;
      }

      v26 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
      }

      v28 = v26[2];
      v27 = v26[3];
      v69 = v26;
      if (v28 >= v27 >> 1)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v69);
      }

      ++v15;
      outlined consume of Data._Representation(v18, v19);

      v16 = v69;
      v69[2] = v28 + 1;
      v29 = &v16[4 * v28];
      v29[4] = v18;
      v29[5] = v19;
      v29[6] = v22;
      v29[7] = v21;
      a2 = v65;
      a1 = v66;
      v12 = *(v66 + 16);
      v4 += 2;
      v14 = v68;
      if (v15 == v12)
      {
LABEL_44:
        v4 = v62;
LABEL_45:
        outlined destroy of AspirePirKeywordPirParameters(v14, type metadata accessor for RequestsManager.PIRContext);

        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v34 = a1[2];
  if (v34)
  {
    v67 = v11;
    a2 = 0;
    v35 = (a1 + 5);
    v65 = v34;
    v63 = (v34 - 1);
    v36 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    v64 = (a1 + 5);
LABEL_24:
    v62 = v4;
    v37 = &v35[2 * a2];
    v4 = a2;
    while (v4 < a1[2])
    {
      v69 = v36;
      v38 = *(v37 - 1);
      v39 = *v37;
      type metadata accessor for RequestsManager.PIRContext(0);
      outlined copy of Data._Representation(v38, v39);
      outlined copy of Data._Representation(v38, v39);
      v40 = v68;
      v41 = AspireApiPIRConfig.shardIndex(for:)(v38, v39);
      if (v3)
      {
        outlined consume of Data._Representation(v38, v39);
        outlined consume of Data._Representation(v38, v39);

        outlined destroy of AspirePirKeywordPirParameters(v40, type metadata accessor for RequestsManager.PIRContext);

        return v4;
      }

      v42 = v41;
      outlined consume of Data._Representation(v38, v39);
      v43 = v67;
      AspireApiPIRConfig.shardConfig(at:)(v42, 0, 1, v67);
      v44 = *v43;
      outlined destroy of AspirePirKeywordPirParameters(v43, type metadata accessor for AspireApiPIRShardConfig);
      outlined copy of Data._Representation(v38, v39);
      a1 = v66;
      if (!v44)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62[2] + 1, 1, v62);
        }

        v49 = v62[2];
        v48 = v62[3];
        if (v49 >= v48 >> 1)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v62);
        }

        a2 = v4 + 1;
        outlined consume of Data._Representation(v38, v39);

        v50 = v62;
        v62[2] = v49 + 1;
        v51 = &v50[4 * v49];
        v51[4] = v38;
        v51[5] = v39;
        v51[6] = 0;
        v51[7] = 0;
        v52 = v63 == v4;
        v4 = v50;
        v36 = v69;
        v35 = v64;
        if (v52)
        {
          goto LABEL_51;
        }

        goto LABEL_24;
      }

      v45 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45[2] + 1, 1, v45);
      }

      a2 = v45[2];
      v46 = v45[3];
      v36 = v45;
      if (a2 >= v46 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), a2 + 1, 1, v45);
      }

      v4 = (v4 + 1);
      outlined consume of Data._Representation(v38, v39);

      v36[2] = a2 + 1;
      v47 = &v36[4 * a2];
      v47[4] = v38;
      v47[5] = v39;
      v47[6] = 0;
      v47[7] = 0;
      v37 += 2;
      if (v65 == v4)
      {
        v4 = v62;
        goto LABEL_51;
      }
    }

    goto LABEL_56;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_51:
  outlined destroy of AspirePirKeywordPirParameters(v68, type metadata accessor for RequestsManager.PIRContext);
LABEL_52:

  return v4;
}

uint64_t specialized RequestsManager.EmptyAndNonEmptyShards.nonEmptyShardIds.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 56;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 32 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v8 = *v5;
    v5 += 4;
    v7 = v8;
    ++v1;
    if (v8)
    {
      v9 = *(v5 - 5);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized RequestsManager.loadCache(requestContext:)(uint64_t a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v22 - v6);
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v8, static OSSignposter.daemon);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  static OSSignpostID.exclusive.getter();
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v27 = v10;
  *v9 = 136315138;
  v11 = [*v7 useCase];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = a1;
  v13 = v12;
  v15 = v14;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v27);

  *(v9 + 4) = v16;
  v17 = OSSignposter.logHandle.getter();
  LOBYTE(v16) = static os_signpost_type_t.begin.getter();
  v18 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_224E26000, v17, v16, v18, "LRUCache: init", "%s", v9, 0xCu);
  closure #1 in RequestsManager.loadCache(requestContext:)(v23, &v26);
  LOBYTE(v16) = static os_signpost_type_t.end.getter();
  v19 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_224E26000, v17, v16, v19, "LRUCache: init", "%s", v9, 0xCu);

  v20 = v26;
  __swift_destroy_boxed_opaque_existential_0(v10);
  MEMORY[0x22AA61F40](v10, -1, -1);
  MEMORY[0x22AA61F40](v9, -1, -1);
  (*(v24 + 8))(v4, v25);
  return v20;
}

uint64_t specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for PIR.SymmetricPIRClient();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for SymmetricPIRClient(0);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:), 0, 0);
}

uint64_t specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:)()
{
  RequestsManager.PIRContext.symmetricPirConfig()((v0 + 16));
  v1 = *(v0 + 24);
  if (v1 >> 60 == 15)
  {
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 48);
    *(v0 + 64) = *(v0 + 32);
    *(v0 + 80) = v3;
    outlined copy of Data._Representation(v2, v1);
    outlined copy of Data._Representation(v2, v1);
    PIR.SymmetricPIRClient.init(serverPublicKey:)();
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 144);
    v7 = *(v0 + 96);
    (*(*(v0 + 128) + 32))(v5, *(v0 + 136), *(v0 + 120));
    v8 = v5 + *(v6 + 20);
    *v8 = v2;
    *(v8 + 8) = v1;
    v9 = *(v0 + 80);
    *(v8 + 16) = *(v0 + 64);
    *(v8 + 32) = v9;
    outlined init with take of AspirePirSymmetricPirClientConfig(v5, v4, type metadata accessor for SymmetricPIRClient);
    v10 = swift_task_alloc();
    *(v10 + 16) = v4;
    v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DataVG_16CryptoKitPrivate3PIRO14BlindedKeywordVsAE_pTg5(partial apply for closure #1 in SymmetricPIRClient.blind(keywords:), v10, v7);
    *(v0 + 168) = v11;
    v14 = v11;

    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:);
    v16 = *(v0 + 104);

    return RequestsManager.PIRContext.requestOPRFData(for:networkManager:)(v14, v16);
  }
}

{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  v6 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay16CryptoKitPrivate3PIRO14BlindedKeywordVGSay8CipherML21AspireApiOPRFResponseVGG_10Foundation4DataVsAE_pTg504_s16fg14Private3PIRO14jk2V8l4ML21nop14V10Foundation4r3Vs5C33_pIgnnozo_AE_AHtAKsAL_pIegnrzr_TRAlpUsAE_pIgnnozo_Tf1cn_n(v3, v1, partial apply for closure #1 in SymmetricPIRClient.validateThenHash(blindedKeywords:oprfResponses:), v5);
  v7 = v0[20];
  if (v2)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?((v0 + 2), &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);

    outlined destroy of AspirePirKeywordPirParameters(v7, type metadata accessor for SymmetricPIRClient);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v6;

    v11 = swift_task_alloc();
    *(v11 + 16) = v7;
    v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DataVG_8CipherML19SymmetricPirKeywordVs5NeverOTg5(partial apply for closure #2 in SymmetricPIRClient.validateThenHash(blindedKeywords:oprfResponses:), v11, v10);

    outlined destroy of AMDPbHEConfig.OneOf_Config?((v0 + 2), &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);

    outlined destroy of AspirePirKeywordPirParameters(v7, type metadata accessor for SymmetricPIRClient);

    v13 = v0[1];

    return v13(v12);
  }
}

{
  v1 = *(v0 + 160);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for SymmetricPIRClient);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {

    v4 = specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:);
  }

  else
  {
    v4 = specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  type metadata accessor for AspireApiResponses(0);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = type metadata accessor for RequestsManager.PIRContext(0);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v6[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v6[28] = swift_task_alloc();
  v7 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v6[29] = v7;
  v6[30] = *(v7 - 8);
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:), 0, 0);
}

uint64_t specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[15] + *(v0[24] + 24);
  v5 = *(v4 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v0[32] = v5;
  v6 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v5 + v6, v3, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v7 = *(v2 + 48);
  v8 = v7(v3, 1, v1);
  v9 = v0[31];
  if (v8 == 1)
  {
    v11 = v0[28];
    v10 = v0[29];
    *v9 = 0;
    *(v9 + 8) = 0;
    UnknownStorage.init()();
    v12 = *(v10 + 28);
    v13 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v13 - 8) + 56))(v9 + v12, 1, 1, v13);
    v14 = *(v10 + 32);
    v15 = type metadata accessor for AspirePirPIRShardingFunction(0);
    (*(*(v15 - 8) + 56))(v9 + v14, 1, 1, v15);
    if (v7(v11, 1, v10) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[28], &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirSymmetricPirClientConfig(v0[28], v0[31], type metadata accessor for AspirePirKeywordPirParameters);
  }

  v16 = v0[31];
  v17 = v0[27];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + *(v0[29] + 28), v17, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  outlined destroy of AspirePirKeywordPirParameters(v16, type metadata accessor for AspirePirKeywordPirParameters);
  v18 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  LODWORD(v16) = (*(*(v18 - 8) + 48))(v17, 1, v18);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  if (v16 == 1)
  {
    v19 = v0[25];
    v21 = v0[17];
    v20 = v0[18];
    outlined init with copy of UserIdentifier(v0[15], v19, type metadata accessor for RequestsManager.PIRContext);

    v22 = specialized RequestsManager.EmptyAndNonEmptyShards.init(keywords:shardIds:context:)(v21, v20, v19);
    v24 = v23;
    v25 = *(v23 + 16);
    v26 = MEMORY[0x277D84F90];
    v85 = v22;
    if (v25)
    {
      v87 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
      v27 = v87;
      v83 = v24;
      v28 = (v24 + 40);
      do
      {
        v29 = *(v28 - 1);
        v30 = *v28;
        outlined copy of Data._Representation(v29, *v28);
        v32 = v87[2];
        v31 = v87[3];
        if (v32 >= v31 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        }

        v28 += 4;
        v87[2] = v32 + 1;
        v33 = &v87[2 * v32];
        v33[4] = v29;
        v33[5] = v30;
        --v25;
      }

      while (v25);
      v24 = v83;
      v22 = v85;
      v26 = MEMORY[0x277D84F90];
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v39 = v0[22];
    v40 = specialized RequestsManager.EmptyAndNonEmptyShards.nonEmptyShardIds.getter(v24);
    v41 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
    v0[42] = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
    swift_beginAccess();
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v5 + v41, v39, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v42 = type metadata accessor for AspirePirBatchPirParameters(0);
    v0[43] = v42;
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);
    v0[44] = v44;
    v0[45] = (v43 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v45 = v44(v39, 1, v42);
    v46 = v0[22];
    if (v45 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[22], &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
      v47 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v27, v40);

      v48 = v47;
    }

    else
    {

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
      v48 = RequestsManager.PIRContext.createBatchPIRQueries(_:)(v27);
    }

    v84 = v48;
    v0[46] = v48;

    v49 = v22[2];
    v50 = v0[16];
    if (v49)
    {

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
      v51 = v26;
      v52 = v22 + 5;
      do
      {
        v53 = *(v52 - 1);
        v54 = *v52;
        outlined copy of Data._Representation(v53, *v52);
        v56 = v51[2];
        v55 = v51[3];
        v57 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
        }

        v52 += 4;
        v51[2] = v57;
        v58 = &v51[2 * v56];
        v58[4] = v53;
        v58[5] = v54;
        --v49;
      }

      while (v49);
      v50 = v0[16];
    }

    else
    {
      v57 = v26[2];

      v51 = v26;
      if (!v57)
      {
LABEL_33:
        v0[47] = v50;

        v66 = *(v24 + 16);
        if (v66)
        {
          v88 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66, 0);
          v67 = v88;
          v68 = (v24 + 40);
          do
          {
            v69 = *(v68 - 1);
            v70 = *v68;
            outlined copy of Data._Representation(v69, *v68);
            v72 = *(v88 + 16);
            v71 = *(v88 + 24);
            if (v72 >= v71 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
            }

            v68 += 4;
            *(v88 + 16) = v72 + 1;
            v73 = v88 + 16 * v72;
            *(v73 + 32) = v69;
            *(v73 + 40) = v70;
            --v66;
          }

          while (v66);
        }

        else
        {

          v67 = MEMORY[0x277D84F90];
        }

        v0[48] = v67;
        v74 = v0[24];
        v75 = v0[14];
        v76 = v0[15];
        v77 = v75[3];
        v78 = v75[4];
        __swift_project_boxed_opaque_existential_1(v75, v77);
        v79 = *(v74 + 20);
        v80 = v76 + *(type metadata accessor for UserIdentifier(0) + 20);
        v86 = (*(v78 + 32) + **(v78 + 32));
        v81 = swift_task_alloc();
        v0[49] = v81;
        *v81 = v0;
        v81[1] = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
        v82 = v0[19];

        return v86(v82, v84, v80 + v79, v77, v78);
      }
    }

    v59 = v24;
    v60 = v51 + 5;
    do
    {
      v61 = *(v60 - 1);
      v62 = *v60;
      outlined copy of Data._Representation(v61, *v60);
      v63 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v62);
      if (v64)
      {
        v65 = v63;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          specialized _NativeDictionary.copy()();
        }

        outlined consume of Data._Representation(*(*(v50 + 48) + 16 * v65), *(*(v50 + 48) + 16 * v65 + 8));
        outlined consume of Data?(*(*(v50 + 56) + 16 * v65), *(*(v50 + 56) + 16 * v65 + 8));
        specialized _NativeDictionary._delete(at:)(v65, v50);
      }

      outlined consume of Data._Representation(v61, v62);
      v60 += 2;
      --v57;
    }

    while (v57);
    v24 = v59;
    goto LABEL_33;
  }

  v34 = swift_task_alloc();
  v0[33] = v34;
  *v34 = v0;
  v34[1] = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
  v35 = v0[17];
  v36 = v0[14];
  v37 = v0[15];

  return specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:)(v35, v36, v37);
}

{
  v95 = v0;
  v1 = *(v0 + 272);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    *&v92 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v92;
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      outlined copy of Data._Representation(v5, *v4);
      *&v92 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v3 = v92;
      }

      v4 += 4;
      v3[2] = v8 + 1;
      v9 = &v3[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      --v2;
    }

    while (v2);
  }

  v10 = v86[35];
  v11 = v86[26];
  v12 = v86[18];
  outlined init with copy of UserIdentifier(v86[15], v11, type metadata accessor for RequestsManager.PIRContext);

  v14 = specialized RequestsManager.EmptyAndNonEmptyShards.init(keywords:shardIds:context:)(v3, v12, v11);
  if (v10)
  {

    v70 = v86[1];

    return v70();
  }

  v15 = v13;
  specialized Zip2Sequence.Iterator.next()(&v92);
  v16 = *(&v92 + 1);
  v17 = MEMORY[0x277D84F90];
  v87 = v15;
  v82 = v14;
  if (*(&v92 + 1) >> 60 == 15)
  {
    v83 = MEMORY[0x277D84F90];
    v84 = MEMORY[0x277D84F90];
  }

  else
  {
    v88 = v86 + 11;
    v18 = v92;
    v84 = MEMORY[0x277D84F90];
    v85 = (v15 + 40);
    v83 = MEMORY[0x277D84F90];
    v19 = v93;
    v89 = v94;
    do
    {
      while (1)
      {
        v20 = *(v15 + 16);
        v90 = v19;
        if (v20)
        {
          v21 = v18;
          *&v92 = v17;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
          v17 = v92;
          v22 = v85;
          do
          {
            v23 = *(v22 - 1);
            v24 = *v22;
            outlined copy of Data._Representation(v23, *v22);
            *&v92 = v17;
            v26 = *(v17 + 16);
            v25 = *(v17 + 24);
            if (v26 >= v25 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
              v17 = v92;
            }

            v22 += 4;
            *(v17 + 16) = v26 + 1;
            v27 = v17 + 16 * v26;
            *(v27 + 32) = v23;
            *(v27 + 40) = v24;
            --v20;
          }

          while (v20);
          v15 = v87;
          v18 = v21;
          v19 = v90;
        }

        *v88 = v19;
        v28 = swift_task_alloc();
        *(v28 + 16) = v88;
        v29 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v28, v17);

        if ((v29 & 1) == 0)
        {
          break;
        }

        outlined copy of Data._Representation(v90, *(&v90 + 1));
        outlined copy of Data._Representation(v89, *(&v89 + 1));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 2) + 1, 1, v84);
        }

        v31 = *(v84 + 2);
        v30 = *(v84 + 3);
        v32 = v90;
        if (v31 >= v30 >> 1)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v84);
          v32 = v90;
          v84 = v37;
        }

        *(v84 + 2) = v31 + 1;
        v33 = &v84[32 * v31];
        *(v33 + 2) = v32;
        *(v33 + 3) = v89;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v83 + 2) + 1, 1, v83);
        }

        v35 = *(v83 + 2);
        v34 = *(v83 + 3);
        if (v35 >= v34 >> 1)
        {
          v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v83);
        }

        outlined consume of Data._Representation(v90, *(&v90 + 1));
        outlined consume of Data._Representation(v89, *(&v89 + 1));
        *(v83 + 2) = v35 + 1;
        v36 = &v83[16 * v35];
        *(v36 + 4) = v18;
        *(v36 + 5) = v16;
        specialized Zip2Sequence.Iterator.next()(&v92);
        v16 = *(&v92 + 1);
        v18 = v92;
        v19 = v93;
        v89 = v94;
        v14 = v82;
        v17 = MEMORY[0x277D84F90];
        if (*(&v92 + 1) >> 60 == 15)
        {
          goto LABEL_29;
        }
      }

      outlined consume of Data._Representation(v18, v16);
      outlined consume of Data._Representation(v90, *(&v90 + 1));
      outlined consume of Data._Representation(v89, *(&v89 + 1));
      specialized Zip2Sequence.Iterator.next()(&v92);
      v16 = *(&v92 + 1);
      v18 = v92;
      v19 = v93;
      v89 = v94;
      v17 = MEMORY[0x277D84F90];
    }

    while (*(&v92 + 1) >> 60 != 15);
    v14 = v82;
  }

LABEL_29:
  v86[36] = v84;
  v86[37] = v83;

  v38 = v14[2];
  v39 = v86[16];
  if (v38)
  {
    *&v92 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
    v40 = v92;
    v41 = v14 + 5;
    do
    {
      v42 = *(v41 - 1);
      v43 = *v41;
      outlined copy of Data._Representation(v42, *v41);
      *&v92 = v40;
      v45 = v40[2];
      v44 = v40[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
        v40 = v92;
      }

      v41 += 4;
      v40[2] = v46;
      v47 = &v40[2 * v45];
      v47[4] = v42;
      v47[5] = v43;
      --v38;
    }

    while (v38);
    v15 = v87;
    v39 = v86[16];
    goto LABEL_36;
  }

  v40 = MEMORY[0x277D84F90];
  v46 = *(MEMORY[0x277D84F90] + 16);

  if (v46)
  {
LABEL_36:
    v48 = v40 + 5;
    do
    {
      v49 = *(v48 - 1);
      v50 = *v48;
      outlined copy of Data._Representation(v49, *v48);
      v51 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v50);
      if (v52)
      {
        v53 = v51;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v92 = v39;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v39 = v92;
        }

        outlined consume of Data._Representation(*(*(v39 + 48) + 16 * v53), *(*(v39 + 48) + 16 * v53 + 8));
        outlined consume of Data?(*(*(v39 + 56) + 16 * v53), *(*(v39 + 56) + 16 * v53 + 8));
        specialized _NativeDictionary._delete(at:)(v53, v39);
      }

      outlined consume of Data._Representation(v49, v50);
      v48 += 2;
      --v46;
    }

    while (v46);
  }

  v86[38] = v39;

  v55 = *(v15 + 16);
  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    *&v92 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
    v56 = v92;
    v57 = (v15 + 40);
    do
    {
      v58 = *(v57 - 1);
      v59 = *v57;
      outlined copy of Data._Representation(v58, *v57);
      *&v92 = v56;
      v61 = v56[2];
      v60 = v56[3];
      if (v61 >= v60 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
        v56 = v92;
      }

      v57 += 4;
      v56[2] = v61 + 1;
      v62 = &v56[2 * v61];
      v62[4] = v58;
      v62[5] = v59;
      --v55;
    }

    while (v55);
  }

  v63 = v86[32];
  v64 = v86[23];
  v65 = specialized RequestsManager.EmptyAndNonEmptyShards.nonEmptyShardIds.getter(v87);

  v66 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v63 + v66, v64, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v67 = type metadata accessor for AspirePirBatchPirParameters(0);
  v68 = (*(*(v67 - 8) + 48))(v64, 1, v67);
  v69 = v86[23];
  if (v68 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v86[23], &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v72 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v56, v65);
  }

  else
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v69, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v72 = RequestsManager.PIRContext.createBatchPIRQueries(_:)(v56);
  }

  v86[39] = v72;
  v73 = v86[24];
  v74 = v86[14];
  v75 = v86[15];

  v76 = v74[3];
  v77 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v76);
  v78 = *(v73 + 20);
  v79 = v75 + *(type metadata accessor for UserIdentifier(0) + 20);
  v91 = (*(v77 + 32) + **(v77 + 32));
  v80 = swift_task_alloc();
  v86[40] = v80;
  *v80 = v86;
  v80[1] = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
  v81 = v86[20];

  return v91(v81, v72, v79 + v78, v76, v77);
}

{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
  }

  else
  {
    v2 = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
  }

  else
  {
    v2 = specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[44];
  v2 = v0[43];
  v3 = v0[21];
  v4 = v0[19];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[32] + v0[42], v3, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  LODWORD(v1) = v1(v3, 1, v2);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v5 = *v4;
  v6 = v0[50];
  v7 = v0[48];
  v8 = v0[15];
  if (v1 == 1)
  {
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    v10 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML17AspireApiResponseVGSay10Foundation4DataVGG_ANSgsAE_pTg503_s8f4ML17hij14V10Foundation4l7VAFSgs5C33_pIgngozo_AC_AFtAGsAH_pIegnrzr_TRAjnQsAE_pIgngozo_Tf1cn_n(v5, v7, closure #1 in RequestsManager.PIRContext.decryptKeywordPIRResponses(_:for:)partial apply, v9);
    if (v6)
    {
      v11 = v0[19];

      outlined destroy of AspirePirKeywordPirParameters(v11, type metadata accessor for AspireApiResponses);
LABEL_6:

      v14 = v0[1];

      return v14();
    }

    v16 = v10;
  }

  else
  {

    v13 = RequestsManager.PIRContext.decryptBatchPIRResponses(_:for:)(v12, v7);
    if (v6)
    {
      outlined destroy of AspirePirKeywordPirParameters(v0[19], type metadata accessor for AspireApiResponses);

      goto LABEL_6;
    }

    v16 = v13;
  }

  v17 = v0[47];
  v18 = v0[48];
  v19 = *(v18 + 16);

  v63 = v19;
  if (v19)
  {
    v59 = v16;
    v20 = 0;
    v61 = v18 + 32;
    v62 = v0[24];
    result = v16;
    v60 = v0;
    do
    {
      v24 = *(result + 16);
      if (v20 == v24)
      {
        break;
      }

      if (v20 >= v24)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        return result;
      }

      v25 = *(v61 + 16 * v20);
      v26 = (v0[15] + *(v62 + 36));
      v65 = v25;
      v66 = *(result + 16 * v20 + 32);
      v27 = *(result + 16 * v20 + 40);
      v28 = *(v61 + 16 * v20 + 8);
      if (*v26)
      {
        v29 = v26[1];
        ObjectType = swift_getObjectType();
        v64 = *(v29 + 48);
        outlined copy of Data._Representation(v65, v28);
        outlined copy of Data?(v66, v27);
        outlined copy of Data._Representation(v65, v28);
        outlined copy of Data?(v66, v27);
        v64(v66, v27, v65, v28, ObjectType, v29);
      }

      else
      {
        outlined copy of Data._Representation(v25, *(&v25 + 1));
        outlined copy of Data?(v66, v27);
      }

      outlined copy of Data?(v66, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v28);
      v34 = v17[2];
      v35 = (v32 & 1) == 0;
      result = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_49;
      }

      v36 = v32;
      if (v17[3] >= result)
      {
        v39 = v66;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v32)
          {
            goto LABEL_13;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v39 = v66;
          if (v36)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, isUniquelyReferenced_nonNull_native);
        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v28);
        if ((v36 & 1) != (v38 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v33 = v37;
        v39 = v66;
        if (v36)
        {
LABEL_13:
          v21 = (v17[7] + 16 * v33);
          v22 = *v21;
          v23 = v21[1];
          *v21 = v39;
          outlined consume of Data?(v22, v23);
          outlined consume of Data._Representation(v65, v28);
          outlined consume of Data?(v66, v27);
          goto LABEL_14;
        }
      }

      v17[(v33 >> 6) + 8] |= 1 << v33;
      v40 = 16 * v33;
      *(v17[6] + v40) = v65;
      *(v17[7] + v40) = v39;
      result = outlined consume of Data?(v66, v27);
      v41 = v17[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_50;
      }

      v17[2] = v43;
LABEL_14:
      ++v20;
      result = v59;
      v0 = v60;
    }

    while (v63 != v20);
  }

  v44 = v0[13];
  v45 = *(v44 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v67 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45, 0);
    v46 = v67;
    v47 = (v44 + 40);
    do
    {
      if (v17[2])
      {
        v48 = *(v47 - 1);
        v49 = *v47;
        outlined copy of Data._Representation(v48, *v47);
        v50 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v49);
        if (v51)
        {
          v52 = (v17[7] + 16 * v50);
          v53 = *v52;
          v54 = v52[1];
          outlined copy of Data?(*v52, v54);
        }

        else
        {
          v53 = 0;
          v54 = 0xF000000000000000;
        }

        outlined consume of Data._Representation(v48, v49);
      }

      else
      {
        v53 = 0;
        v54 = 0xF000000000000000;
      }

      v56 = *(v67 + 16);
      v55 = *(v67 + 24);
      if (v56 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
      }

      v47 += 2;
      *(v67 + 16) = v56 + 1;
      v57 = v67 + 16 * v56;
      *(v57 + 32) = v53;
      *(v57 + 40) = v54;
      --v45;
    }

    while (v45);
  }

  outlined destroy of AspirePirKeywordPirParameters(v0[19], type metadata accessor for AspireApiResponses);

  v58 = v0[1];

  return v58(v46);
}

uint64_t specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)(uint64_t a1)
{
  v3 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:), 0, 0);
  }
}

unint64_t specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)()
{
  v1 = v0[41];
  v2 = v0[36];

  v4 = RequestsManager.PIRContext.decryptSymmetricPIRResponses(_:symmetricPirKeywords:)(v3, v2);
  if (v1)
  {
    outlined destroy of AspirePirKeywordPirParameters(v0[20], type metadata accessor for AspireApiResponses);

    v5 = v0[1];

    return v5();
  }

  v7 = v4;
  v8 = v0[37];

  v9 = *(v8 + 16);

  v54 = v9;
  if (v9)
  {
    v10 = 0;
    v11 = v0[38];
    v52 = v0[37] + 32;
    v53 = v0[24];
    result = v7;
    v50 = v7;
    v51 = v0;
    while (1)
    {
      v15 = *(result + 16);
      if (v10 == v15)
      {
        goto LABEL_26;
      }

      if (v10 >= v15)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return result;
      }

      v16 = *(v52 + 16 * v10);
      v17 = (v0[15] + *(v53 + 36));
      v56 = v16;
      v57 = *(result + 16 * v10 + 32);
      v18 = *(result + 16 * v10 + 40);
      v19 = *(v52 + 16 * v10 + 8);
      if (*v17)
      {
        v20 = v17[1];
        ObjectType = swift_getObjectType();
        v55 = *(v20 + 48);
        outlined copy of Data._Representation(v56, v19);
        outlined copy of Data?(v57, v18);
        outlined copy of Data._Representation(v56, v19);
        outlined copy of Data?(v57, v18);
        v55(v57, v18, v56, v19, ObjectType, v20);
      }

      else
      {
        outlined copy of Data._Representation(v16, *(&v16 + 1));
        outlined copy of Data?(v57, v18);
      }

      outlined copy of Data?(v57, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v56, v19);
      v24 = v11[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_44;
      }

      v28 = v23;
      if (v11[3] >= v27)
      {
        v0 = v51;
        v30 = v57;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v23)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v34 = result;
          specialized _NativeDictionary.copy()();
          v30 = v57;
          result = v34;
          v11 = v58;
          if (v28)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v56, v19);
        v0 = v51;
        if ((v28 & 1) != (v29 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v30 = v57;
        if (v28)
        {
LABEL_7:
          v12 = (v11[7] + 16 * result);
          v13 = *v12;
          v14 = v12[1];
          *v12 = v30;
          outlined consume of Data?(v13, v14);
          outlined consume of Data._Representation(v56, v19);
          outlined consume of Data?(v57, v18);
          goto LABEL_8;
        }
      }

      v11[(result >> 6) + 8] |= 1 << result;
      v31 = 16 * result;
      *(v11[6] + v31) = v56;
      *(v11[7] + v31) = v30;
      result = outlined consume of Data?(v57, v18);
      v32 = v11[2];
      v26 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v26)
      {
        goto LABEL_45;
      }

      v11[2] = v33;
LABEL_8:
      ++v10;
      result = v50;
      if (v54 == v10)
      {
        goto LABEL_26;
      }
    }
  }

  v11 = v0[38];
LABEL_26:

  v35 = v0[13];
  v36 = *(v35 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v59 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
    v37 = v59;
    v38 = (v35 + 40);
    do
    {
      if (v11[2])
      {
        v39 = *(v38 - 1);
        v40 = *v38;
        outlined copy of Data._Representation(v39, *v38);
        v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
        if (v42)
        {
          v43 = (v11[7] + 16 * v41);
          v44 = *v43;
          v45 = v43[1];
          outlined copy of Data?(*v43, v45);
        }

        else
        {
          v44 = 0;
          v45 = 0xF000000000000000;
        }

        outlined consume of Data._Representation(v39, v40);
      }

      else
      {
        v44 = 0;
        v45 = 0xF000000000000000;
      }

      v47 = *(v59 + 16);
      v46 = *(v59 + 24);
      if (v47 >= v46 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
      }

      v38 += 2;
      *(v59 + 16) = v47 + 1;
      v48 = v59 + 16 * v47;
      *(v48 + 32) = v44;
      *(v48 + 40) = v45;
      --v36;
    }

    while (v36);
  }

  outlined destroy of AspirePirKeywordPirParameters(v0[20], type metadata accessor for AspireApiResponses);

  v49 = v0[1];

  return v49(v37);
}

uint64_t partial apply for closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for RequestsManager.PIRContext(0);
  v8 = *(v1 + 24);
  v16 = *(v1 + 16);
  v9 = v1 + v5;
  v10 = *(v1 + v5);
  v11 = *(v9 + 8);
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(a1, v16, v8, v1 + v4, v10, v11, v12, v13);
}

uint64_t partial apply for closure #2 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #2 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(a1, v4, v5, v6, v7, v9, v8);
}

void type metadata completion function for RequestsManager.PIRContext(uint64_t a1)
{
  type metadata accessor for UserIdentifier(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AspireApiPIRConfig(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SecretKey(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for KeyValueCache?(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AspireHeEvaluationKeyConfig?(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for KeyValueCache?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyValueCache?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8CipherML13KeyValueCache_pMd, &_s8CipherML13KeyValueCache_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyValueCache?);
    }
  }
}

void type metadata accessor for AspireHeEvaluationKeyConfig?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AspireHeEvaluationKeyConfig?)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AspireHeEvaluationKeyConfig?);
    }
  }
}

uint64_t getEnumTagSinglePayload for RequestsManager.CachedAndMissingKeywords(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for RequestsManager.CachedAndMissingKeywords(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RequestsManager.EmptyAndNonEmptyShards(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for RequestsManager.EmptyAndNonEmptyShards(uint64_t result, int a2, int a3)
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

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t partial apply for specialized closure #1 in Coordinator.run(key:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return specialized closure #1 in Coordinator.run(key:_:)(a1, v4, v5, v6);
}

uint64_t outlined consume of Data??(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return outlined consume of Data?(result, a2);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for AspireApiConfigResponse(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {

    v6 = *(v5 + 24);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of AspirePirKeywordPirParameters(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of UserIdentifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of AspirePirSymmetricPirClientConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t NetworkManagerError.errorDescription.getter()
{
  v1 = type metadata accessor for NetworkManagerError(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of NetworkManagerError(v0, v3, type metadata accessor for NetworkManagerError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of AspireApiConfigResponse(v3, type metadata accessor for AspireApiConfigResponse);
      return 0xD00000000000001ALL;
    }

    v10 = *v3;
    v9 = v3[1];
    v11 = 0;
    v12 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    MEMORY[0x22AA60A80](0xD000000000000034, 0x8000000225036490);
    MEMORY[0x22AA60A80](v10, v9);
  }

  else
  {
    v6 = *v3;
    v11 = 0;
    v12 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v11 = 0xD000000000000019;
    v12 = 0x80000002250364F0;
    if (v6)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v6)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    MEMORY[0x22AA60A80](v7, v8);

    MEMORY[0x22AA60A80](41, 0xE100000000000000);
  }

  return v11;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerType.AmsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerType.AmsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance NetworkManagerType.AseCodingKeys()
{
  v1 = 0x746E696F70646E65;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4965727574616566;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NetworkManagerType.AseCodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized NetworkManagerType.AseCodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerType.AseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerType.AseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance NetworkManagerType.AspireCodingKeys()
{
  v1 = 0x746E696F70646E65;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x726575737369;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NetworkManagerType.AspireCodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized NetworkManagerType.AspireCodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerType.AspireCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerType.AspireCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NetworkManagerType.AseCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA61420](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkManagerType.AseCodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x22AA61420](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NetworkManagerType.CodingKeys()
{
  v1 = *v0;
  v2 = 7564641;
  v3 = 0x657269707361;
  v4 = 0x656E696C66666FLL;
  if (v1 != 3)
  {
    v4 = 0x73757361676570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6648673;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NetworkManagerType.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized NetworkManagerType.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerType.OfflineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerType.OfflineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerType.PegasusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerType.PegasusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkManagerType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO17PegasusCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO17PegasusCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v61 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO17OfflineCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO17OfflineCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v58 = &v55 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO16AspireCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO16AspireCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v64 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v55 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v65 = v7;
  v66 = v8;
  MEMORY[0x28223BE20](v7);
  v71 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO13AseCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO13AseCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v57 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO13AmsCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO13AmsCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v18 = &v55 - v17;
  v19 = type metadata accessor for NetworkManagerType(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML18NetworkManagerTypeO10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v73 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v23 = &v55 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys();
  v75 = v23;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of NetworkManagerError(v72, v21, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v30 = v67;
    v31 = v68;
    v72 = v13;
    v32 = v69;
    v33 = v70;
    v34 = v71;
    if (EnumCaseMultiPayload)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
      v43 = v42[12];
      v44 = &v21[v42[16]];
      v46 = *v44;
      v45 = *(v44 + 1);
      v67 = v46;
      v68 = v45;
      LODWORD(v63) = v21[v42[20]];
      v48 = v65;
      v47 = v66;
      (*(v66 + 32))(v34, v21, v65);
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(&v21[v43], v72, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v86 = 2;
      lazy protocol witness table accessor for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys();
      v49 = v32;
      v50 = v75;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v85 = 0;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
      v51 = v74;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v51)
      {

        (*(v64 + 8))(v49, v33);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v72, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*(v47 + 8))(v34, v48);
        return (*(v73 + 8))(v50, v76);
      }

      else
      {
        v84 = 1;
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        v83 = 2;
        KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
        v53 = v66;

        v82 = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
        v54 = v71;
        (*(v64 + 8))(v49, v33);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v72, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*(v53 + 8))(v54, v48);
        return (*(v73 + 8))(v75, v76);
      }
    }

    else
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
      v36 = *(v35 + 48);
      LODWORD(v72) = v21[*(v35 + 64)];
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(&v21[v36], v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v81 = 1;
      lazy protocol witness table accessor for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys();
      v38 = v75;
      v37 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v80[0] = 0;
      v39 = v31;
      v40 = v74;
      KeyedEncodingContainer.encode(_:forKey:)();

      if (v40)
      {
        (*(v57 + 8))(v30, v31);
      }

      else
      {
        v79 = 1;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        v52 = v57;
        v78 = 2;
        KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
        (*(v52 + 8))(v30, v39);
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      return (*(v73 + 8))(v38, v37);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v77 = 0;
      lazy protocol witness table accessor for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys();
      v27 = v75;
      v26 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v55 + 8))(v18, v56);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v87 = 3;
        lazy protocol witness table accessor for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys();
        v25 = v58;
        v27 = v75;
        v26 = v76;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v29 = v59;
        v28 = v60;
      }

      else
      {
        v88 = 4;
        lazy protocol witness table accessor for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys();
        v25 = v61;
        v27 = v75;
        v26 = v76;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v29 = v62;
        v28 = v63;
      }

      (*(v29 + 8))(v25, v28);
    }

    return (*(v73 + 8))(v27, v26);
  }
}

uint64_t NetworkManagerType.hash(into:)(uint64_t a1)
{
  v53 = a1;
  v2 = type metadata accessor for URL();
  v52 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = type metadata accessor for NetworkManagerType(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NetworkManagerError(v1, v22, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v49 = v7;
    v50 = v4;
    v51 = v2;
    v25 = v52;
    if (EnumCaseMultiPayload)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
      v31 = v30[12];
      v32 = &v22[v30[16]];
      v34 = *v32;
      v33 = *(v32 + 1);
      v46 = v34;
      v47 = v33;
      v48 = v22[v30[20]];
      v35 = v25;
      v36 = *(v25 + 32);
      v38 = v50;
      v37 = v51;
      v45 = v36;
      v36(v50, v22, v51);
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(&v22[v31], v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      MEMORY[0x22AA61420](2);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      dispatch thunk of Hashable.hash(into:)();
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if ((*(v35 + 48))(v10, 1, v37) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v42 = v49;
        v45(v49, v10, v37);
        Hasher._combine(_:)(1u);
        dispatch thunk of Hashable.hash(into:)();
        v43 = v42;
        v38 = v50;
        (*(v35 + 8))(v43, v37);
      }

      if (v47)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v48);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      return (*(v35 + 8))(v38, v37);
    }

    else
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
      v27 = *(v26 + 48);
      LODWORD(v50) = v22[*(v26 + 64)];
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(&v22[v27], v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      MEMORY[0x22AA61420](1);
      String.hash(into:)();

      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v19, v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v28 = v51;
      if ((*(v25 + 48))(v16, 1, v51) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v39 = v49;
        (*(v25 + 32))(v49, v16, v28);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        dispatch thunk of Hashable.hash(into:)();
        (*(v25 + 8))(v39, v28);
      }

      v40 = v50;
      if (v50 == 2)
      {
        v41 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v41 = v40 & 1;
      }

      Hasher._combine(_:)(v41);
      return outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v24 = 0;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    return MEMORY[0x22AA61420](v24);
  }
}

Swift::Int NetworkManagerType.hashValue.getter()
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t NetworkManagerType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO17PegasusCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO17PegasusCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x28223BE20](v3);
  v81 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO17OfflineCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO17OfflineCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v80 = &v67 - v6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO16AspireCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO16AspireCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v78 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO13AseCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO13AseCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  MEMORY[0x28223BE20](v8);
  v82 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO13AmsCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO13AmsCodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x28223BE20](v11);
  v79 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML18NetworkManagerTypeO10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v86 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  v16 = type metadata accessor for NetworkManagerType(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v67 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = &v67 - v23;
  v25 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  lazy protocol witness table accessor for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys();
  v26 = v87;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v26)
  {
    v67 = v21;
    v27 = v82;
    v28 = v83;
    v68 = v18;
    v87 = v16;
    v69 = v24;
    v29 = v84;
    v30 = v85;
    v31 = v15;
    v32 = KeyedDecodingContainer.allKeys.getter();
    v33 = v32;
    if (*(v32 + 16) != 1 || (v34 = *(v32 + 32), v34 == 5))
    {
      v36 = type metadata accessor for DecodingError();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v38 = v87;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
      swift_willThrow();
      (*(v86 + 8))(v15, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v32 + 32) <= 1u)
      {
        if (*(v32 + 32))
        {
          v93 = 1;
          lazy protocol witness table accessor for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v40 = v30;
          v45 = v27;
          v81 = v31;
          v92[0] = 0;
          v46 = v76;
          v49 = KeyedDecodingContainer.decode(_:forKey:)();
          v80 = v13;
          v51 = v50;
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
          v79 = 0;
          v53 = v52;
          v54 = v67;
          *v67 = v49;
          v54[1] = v51;
          v84 = v51;
          type metadata accessor for URL();
          v91 = 1;
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
          v55 = v79;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          if (v55)
          {
            (*(v77 + 8))(v45, v46);
            (*(v86 + 8))(v81, v80);

            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0(v88);
          }

          v90 = 2;
          v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v62 = *(v53 + 64);
          (*(v77 + 8))(v45, v46);
          (*(v86 + 8))(v81, v80);
          swift_unknownObjectRelease();
          v63 = v67;
          *(v67 + v62) = v61;
          swift_storeEnumTagMultiPayload();
          v64 = v63;
          v41 = v69;
          outlined init with take of NetworkManagerType(v64, v69, type metadata accessor for NetworkManagerType);
        }

        else
        {
          v89 = 0;
          lazy protocol witness table accessor for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys();
          v39 = v79;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v40 = v30;
          (*(v70 + 8))(v39, v71);
          (*(v86 + 8))(v31, v13);
          swift_unknownObjectRelease();
          v41 = v69;
          swift_storeEnumTagMultiPayload();
        }
      }

      else if (v34 == 2)
      {
        v98 = 2;
        lazy protocol witness table accessor for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v80 = v13;
        v81 = v15;
        type metadata accessor for URL();
        v97 = 0;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
        v42 = v28;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v82 = v33;
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
        v96 = 1;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v48 = v78;
        v95 = 2;
        v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v57 = v68;
        v58 = &v68[*(v47 + 64)];
        *v58 = v56;
        v58[1] = v59;
        v77 = v59;
        v94 = 3;
        v60 = KeyedDecodingContainer.decode(_:forKey:)();
        v79 = 0;
        v65 = v60;
        v66 = *(v47 + 80);
        (*(v48 + 8))(v42, v29);
        (*(v86 + 8))(v81, v80);
        swift_unknownObjectRelease();
        *(v57 + v66) = v65 & 1;
        swift_storeEnumTagMultiPayload();
        v41 = v69;
        outlined init with take of NetworkManagerType(v57, v69, type metadata accessor for NetworkManagerType);
        v40 = v30;
      }

      else
      {
        if (v34 == 3)
        {
          v99 = 3;
          lazy protocol witness table accessor for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys();
          v35 = v80;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v72 + 8))(v35, v73);
        }

        else
        {
          v100 = 4;
          lazy protocol witness table accessor for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys();
          v43 = v81;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v74 + 8))(v43, v75);
        }

        (*(v86 + 8))(v15, v13);
        swift_unknownObjectRelease();
        v41 = v69;
        swift_storeEnumTagMultiPayload();
        v40 = v30;
      }

      outlined init with take of NetworkManagerType(v41, v40, type metadata accessor for NetworkManagerType);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v88);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NetworkManagerType()
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkManagerType(uint64_t a1)
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NetworkConfig.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NetworkConfig.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002250365E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML13NetworkConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML13NetworkConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for NetworkManagerType(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type NetworkManagerType and conformance NetworkManagerType, type metadata accessor for NetworkManagerType, &protocol conformance descriptor for NetworkManagerType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for NetworkConfig(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void NetworkConfig.hash(into:)(uint64_t a1)
{
  NetworkManagerType.hash(into:)(a1);
  if (*(v1 + *(type metadata accessor for NetworkConfig(0) + 20) + 8))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int NetworkConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v2);
  if (*(v0 + *(type metadata accessor for NetworkConfig(0) + 20) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t NetworkConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for NetworkManagerType(0);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML13NetworkConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML13NetworkConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v21 - v6;
  v8 = type metadata accessor for NetworkConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v8;
  v11 = v10;
  v12 = v24;
  v28 = 0;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type NetworkManagerType and conformance NetworkManagerType, type metadata accessor for NetworkManagerType, &protocol conformance descriptor for NetworkManagerType);
  v14 = v25;
  v13 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of NetworkManagerType(v14, v11, type metadata accessor for NetworkManagerType);
  v27 = 1;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  (*(v12 + 8))(v7, v13);
  v18 = v23;
  v19 = (v11 + *(v22 + 20));
  *v19 = v15;
  v19[1] = v17;
  outlined init with copy of NetworkManagerError(v11, v18, type metadata accessor for NetworkConfig);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of AspireApiConfigResponse(v11, type metadata accessor for NetworkConfig);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NetworkConfig(uint64_t a1)
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v4);
  if (*(v1 + *(a1 + 20) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance NetworkConfig(uint64_t a1, uint64_t a2)
{
  NetworkManagerType.hash(into:)(a1);
  if (*(v2 + *(a2 + 20) + 8))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkConfig(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v5);
  if (*(v2 + *(a2 + 20) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t NetworkConfig.secondaryIdentifier.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NetworkManagerConfig.CodingKeys()
{
  if (*v0)
  {
    return 0x69746167656C6564;
  }

  else
  {
    return 0x6769666E6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NetworkManagerConfig.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6769666E6F63 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746167656C6564 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NetworkManagerConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NetworkManagerConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkManagerConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20NetworkManagerConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20NetworkManagerConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  type metadata accessor for NetworkConfig(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type NetworkConfig and conformance NetworkConfig, type metadata accessor for NetworkConfig, &protocol conformance descriptor for NetworkConfig);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for NetworkManagerConfig(0) + 20));
    v10[15] = 1;
    lazy protocol witness table accessor for type NetworkDelegationConfig and conformance NetworkDelegationConfig();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NetworkManagerConfig.hash(into:)(uint64_t a1)
{
  NetworkManagerType.hash(into:)(a1);
  if (*(v1 + *(type metadata accessor for NetworkConfig(0) + 20) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (!*(v1 + *(type metadata accessor for NetworkManagerConfig(0) + 20) + 8))
  {
    return MEMORY[0x22AA61420](0);
  }

  MEMORY[0x22AA61420](1);

  return String.hash(into:)();
}

Swift::Int NetworkManagerConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v2);
  if (*(v0 + *(type metadata accessor for NetworkConfig(0) + 20) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + *(type metadata accessor for NetworkManagerConfig(0) + 20) + 8))
  {
    MEMORY[0x22AA61420](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x22AA61420](0);
  }

  return Hasher._finalize()();
}

uint64_t NetworkConfig.init(type:secondaryIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  outlined init with take of NetworkManagerType(a1, a6, a4);
  result = a5(0);
  v11 = (a6 + *(result + 20));
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t NetworkManagerConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for NetworkConfig(0);
  MEMORY[0x28223BE20](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20NetworkManagerConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20NetworkManagerConfigV10CodingKeys33_E53CCD3F3975B4FD880F7F3C8C82C70FLLOGMR);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for NetworkManagerConfig(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v17;
  v13 = v11;
  LOBYTE(v20) = 0;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type NetworkConfig and conformance NetworkConfig, type metadata accessor for NetworkConfig, &protocol conformance descriptor for NetworkConfig);
  v14 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of NetworkManagerType(v19, v13, type metadata accessor for NetworkConfig);
  v21 = 1;
  lazy protocol witness table accessor for type NetworkDelegationConfig and conformance NetworkDelegationConfig();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v20;
  outlined init with copy of NetworkManagerError(v13, v16, type metadata accessor for NetworkManagerConfig);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of AspireApiConfigResponse(v13, type metadata accessor for NetworkManagerConfig);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NetworkManagerConfig(uint64_t a1, uint64_t a2)
{
  NetworkManagerType.hash(into:)(a1);
  if (*(v2 + *(type metadata accessor for NetworkConfig(0) + 20) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (!*(v2 + *(a2 + 20) + 8))
  {
    return MEMORY[0x22AA61420](0);
  }

  MEMORY[0x22AA61420](1);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkManagerConfig(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  NetworkManagerType.hash(into:)(v5);
  if (*(v2 + *(type metadata accessor for NetworkConfig(0) + 20) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + *(a2 + 20) + 8))
  {
    MEMORY[0x22AA61420](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x22AA61420](0);
  }

  return Hasher._finalize()();
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for NetworkManagerHelper();
  v0 = swift_allocObject();
  result = NetworkManagerHelper.init(cacheSize:)(15);
  static NetworkManagerHelper.shared = v0;
  return result;
}

{
  type metadata accessor for WorkAroundForIdleMemory(0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = static ContinuousClock.Instant.now.getter();
  *(v0 + OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_transaction) = 0;
  static WorkAroundForIdleMemory.shared = v0;
  return result;
}

{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for tokenCacheFile != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static CacheDirectory.tokenCacheFile);
  (*(v1 + 16))(v3, v4, v0);
  result = specialized TokenCache.__allocating_init(file:currentDate:)(v3, closure #1 in default argument 1 of TokenCache.init(file:currentDate:), 0);
  static TokenCache.shared = result;
  return result;
}

uint64_t NetworkManagerHelper.__allocating_init(cacheSize:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NetworkManagerHelper.init(cacheSize:)(a1);
  return v2;
}

uint64_t *NetworkManagerHelper.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static NetworkManagerHelper.shared;
}

uint64_t static NetworkManagerHelper.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for aseURL()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v3, static NetworkManagerHelper.aseURL);
  v4 = __swift_project_value_buffer(v3, static NetworkManagerHelper.aseURL);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t NetworkManagerHelper.aseURL.unsafeMutableAddressor()
{
  if (one-time initialization token for aseURL != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();

  return __swift_project_value_buffer(v0, static NetworkManagerHelper.aseURL);
}

uint64_t static NetworkManagerHelper.aseURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for aseURL != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static NetworkManagerHelper.aseURL);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t NetworkManagerHelper.init(cacheSize:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16InMemoryLRUCacheCyAA20NetworkManagerConfigVAA0fG0_pGMd, &_s8CipherML16InMemoryLRUCacheCyAA20NetworkManagerConfigVAA0fG0_pGMR);
  v3 = swift_allocObject();
  v4 = type metadata accessor for NetworkManagerConfig(0);
  v3[4] = 0;
  v3[3] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16InMemoryLRUCacheC14LinkedListNodeCyAA20NetworkManagerConfigVAA0iJ0_p_GMd, &_s8CipherML16InMemoryLRUCacheC14LinkedListNodeCyAA20NetworkManagerConfigVAA0iJ0_p_GMR);
  v6 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type NetworkManagerConfig and conformance NetworkManagerConfig, type metadata accessor for NetworkManagerConfig, &protocol conformance descriptor for NetworkManagerConfig);
  v3[2] = MEMORY[0x22AA608D0](a1, v4, v5, v6);
  swift_beginAccess();
  v3[3] = 0;

  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy8CipherML16InMemoryLRUCacheCyAC20NetworkManagerConfigVAC0hI0_pGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy8CipherML16InMemoryLRUCacheCyAC20NetworkManagerConfigVAC0hI0_pGSo16os_unfair_lock_sVGMR);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v3;
  *(v1 + 16) = v7;
  return v1;
}

uint64_t static NetworkManagerHelper.networkManager(managerConfig:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static NetworkManagerHelper.shared + 96))();
}

uint64_t static NetworkManagerHelper.createNetworkManager(managerConfig:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v152 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v145 = &v136 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v143 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v149 = &v136 - v8;
  MEMORY[0x28223BE20](v9);
  v146 = &v136 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v136 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v136 - v15;
  MEMORY[0x28223BE20](v17);
  v144 = &v136 - v18;
  v148 = type metadata accessor for URL();
  v151 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v20 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v136 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v136 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v136 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v136 - v31;
  v33 = type metadata accessor for NetworkManagerType(0);
  MEMORY[0x28223BE20](v33);
  v35 = (&v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = type metadata accessor for NetworkConfig(0);
  MEMORY[0x28223BE20](v147);
  v154 = &v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NetworkManagerError(a1, v154, type metadata accessor for NetworkConfig);
  v37 = (a1 + *(type metadata accessor for NetworkManagerConfig(0) + 20));
  v39 = *v37;
  v38 = v37[1];
  v150 = v39;
  v153 = v38;
  outlined init with copy of NetworkManagerError(a1, v35, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v140 = v20;
    v141 = v16;
    v142 = v23;
    v144 = v26;
    v45 = v149;
    if (EnumCaseMultiPayload)
    {
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
      v73 = v72[12];
      v74 = (v35 + v72[16]);
      v75 = *v74;
      v141 = v74[1];
      v139 = *(v35 + v72[20]);
      v76 = v151;
      v77 = *(v151 + 32);
      v78 = v144;
      v79 = v148;
      v136 = v151 + 32;
      v137 = v77;
      v138 = v75;
      v77(v144, v35, v148);
      v80 = v35 + v73;
      v81 = v146;
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v80, v146, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v82 = *(v76 + 16);
      v83 = v142;
      v82(v142, v78, v79);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v81, v45, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v84 = (v154 + *(v147 + 20));
      v85 = *v84;
      v86 = v84[1];
      v147 = type metadata accessor for AspireNetworkManager(0);
      v87 = swift_allocObject();
      v88 = v153;

      v89 = v150;
      v90 = specialized static NetworkManagerHelper.urlSessionConfiguration(delegation:secondaryIdentifier:)(v150, v88, v85, v86);
      type metadata accessor for ManagedURLSession();
      v91 = swift_allocObject();
      v92 = [objc_opt_self() sessionWithConfiguration_];

      *(v91 + 16) = v92;
      v93 = v79;
      v94 = v83;
      v95 = v82;
      v82((v87 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl), v94, v79);
      v96 = (v87 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_authenticationToken);
      v97 = v141;
      *v96 = v138;
      v96[1] = v97;
      v98 = (v87 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig);
      *v98 = v89;
      v98[1] = v88;
      *(v87 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_privacyProxyFailClosed) = v139;
      if (v97)
      {
        v99 = v143;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v149, v143, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v100 = v151;
        v101 = *(v151 + 48);
        if (v101(v99, 1, v93) == 1)
        {
          v102 = v140;
          v95(v140, v142, v93);
          v103 = v101(v99, 1, v93);
          v104 = v141;
          swift_bridgeObjectRetain_n();
          v105 = v103 == 1;
          v106 = v102;
          v107 = v146;
          v108 = v144;
          v109 = v99;
          v110 = v104;
          if (!v105)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v109, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          }
        }

        else
        {
          v106 = v140;
          v137(v140, v99, v93);
          v110 = v141;
          swift_bridgeObjectRetain_n();
          v107 = v146;
          v108 = v144;
        }

        v129 = v145;
        v137(v145, v106, v93);
        v131 = type metadata accessor for TokenFetcher(0);
        v132 = (v129 + v131[5]);
        *v132 = v138;
        v132[1] = v110;
        *(v129 + v131[6]) = v91;
        *(v129 + v131[7]) = v139;
        (*(*(v131 - 1) + 56))(v129, 0, 1, v131);

        v130 = v149;
      }

      else
      {
        v128 = type metadata accessor for TokenFetcher(0);
        v129 = v145;
        (*(*(v128 - 8) + 56))(v145, 1, 1, v128);
        v100 = v151;
        v107 = v146;
        v130 = v149;
        v108 = v144;
      }

      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v129, v87 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
      v133 = (v87 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId);
      *v133 = 0;
      v133[1] = 0;
      *(v87 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) = v91;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v130, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v134 = *(v100 + 8);
      v134(v142, v93);
      v135 = v152;
      v152[3] = v147;
      v135[4] = &protocol witness table for AspireNetworkManager;
      *v135 = v87;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v107, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v134(v108, v93);
    }

    else
    {
      v46 = v35[1];
      v149 = *v35;
      v146 = v46;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
      v48 = *(v35 + *(v47 + 64));
      v49 = v35 + *(v47 + 48);
      v50 = v141;
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v49, v141, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v50, v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v51 = v151;
      v52 = *(v151 + 48);
      v53 = v148;
      if (v52(v13, 1, v148) == 1)
      {
        v54 = one-time initialization token for aseURL;

        if (v54 != -1)
        {
          swift_once();
        }

        v53 = v148;
        v55 = __swift_project_value_buffer(v148, static NetworkManagerHelper.aseURL);
        v51 = v151;
        (*(v151 + 16))(v29, v55, v53);
        v56 = v29;
        if (v52(v13, 1, v53) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        }
      }

      else
      {
        v56 = v29;
        (*(v51 + 32))(v29, v13, v53);
      }

      LODWORD(v148) = (v48 == 2) | v48;
      v111 = (v154 + *(v147 + 20));
      v112 = *v111;
      v113 = v111[1];
      v114 = type metadata accessor for AspireNetworkManager(0);
      v115 = swift_allocObject();
      v116 = v150;
      v117 = v153;
      v118 = specialized static NetworkManagerHelper.urlSessionConfiguration(delegation:secondaryIdentifier:)(v150, v153, v112, v113);
      type metadata accessor for ManagedURLSession();
      v119 = swift_allocObject();
      v120 = [objc_opt_self() sessionWithConfiguration_];

      *(v119 + 16) = v120;
      (*(v51 + 16))(v115 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl, v56, v53);
      v121 = (v115 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_authenticationToken);
      *v121 = 0;
      v121[1] = 0;
      v122 = (v115 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig);
      *v122 = v116;
      v122[1] = v117;
      *(v115 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_privacyProxyFailClosed) = v148 & 1;
      v123 = OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher;
      v124 = type metadata accessor for TokenFetcher(0);
      (*(*(v124 - 8) + 56))(v115 + v123, 1, 1, v124);
      v125 = (v115 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId);
      v126 = v146;
      *v125 = v149;
      v125[1] = v126;
      *(v115 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) = v119;
      (*(v51 + 8))(v56, v53);
      v127 = v152;
      v152[3] = v114;
      v127[4] = &protocol witness table for AspireNetworkManager;
      *v127 = v115;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v141, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    v68 = v154;
    return outlined destroy of AspireApiConfigResponse(v68, type metadata accessor for NetworkConfig);
  }

  if (EnumCaseMultiPayload != 2)
  {
    v41 = v153;
    v42 = v154;
    if (EnumCaseMultiPayload == 3)
    {
      result = outlined destroy of AspireApiConfigResponse(v154, type metadata accessor for NetworkConfig);
      v44 = v152;
      *v152 = 0u;
      *(v44 + 1) = 0u;
      v44[4] = 0;
      return result;
    }

    v69 = type metadata accessor for PegasusNetworking();
    v70 = swift_allocObject();

    swift_defaultActor_initialize();
    v70[15] = v150;
    v70[16] = v41;
    type metadata accessor for PegasusProxyForEncryptedPQAGeo();
    swift_allocObject();

    v70[14] = PegasusProxyForEncryptedPQAGeo.init(clientBundleId:)();
    v71 = v152;
    v152[3] = v69;
    v71[4] = &protocol witness table for PegasusNetworking;
    *v71 = v70;
    v68 = v42;
    return outlined destroy of AspireApiConfigResponse(v68, type metadata accessor for NetworkConfig);
  }

  v57 = v154;
  v58 = (v154 + *(v147 + 20));
  v59 = *v58;
  v60 = v58[1];

  v61 = v153;

  v62 = v144;
  URL.init(string:)();
  v63 = v151;
  v64 = v148;
  result = (*(v151 + 48))(v62, 1, v148);
  if (result != 1)
  {
    (*(v63 + 32))(v32, v62, v64);
    v65 = type metadata accessor for AMSNetworking(0);
    swift_allocObject();
    v66 = AMSNetworking.init(networkDelegationConfig:secondaryIdentifier:baseURL:)(v150, v61, v59, v60, v32);
    v67 = v152;
    v152[3] = v65;
    v67[4] = &protocol witness table for AMSNetworking;
    *v67 = v66;
    v68 = v57;
    return outlined destroy of AspireApiConfigResponse(v68, type metadata accessor for NetworkConfig);
  }

  __break(1u);
  return result;
}

double NetworkManagerHelper.networkManager(managerConfig:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for NetworkManagerConfig(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v3 + 16);
  v14 = a1;
  os_unfair_lock_lock((v9 + 24));
  partial apply for closure #1 in NetworkManagerHelper.networkManager(managerConfig:)(v9 + 16);
  os_unfair_lock_unlock((v9 + 24));
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, &v15, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  if (v16)
  {
    outlined init with take of LocalizedError(&v15, a2);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v15, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    type metadata accessor for NetworkManagerHelper();
    static NetworkManagerHelper.createNetworkManager(managerConfig:)(a1, &v15);
    outlined assign with take of NetworkManager?(&v15, v17);
    os_unfair_lock_lock((v9 + 24));
    v11 = *(v9 + 16);
    outlined init with copy of NetworkManagerError(a1, v8, type metadata accessor for NetworkManagerConfig);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, &v15, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    (*(*v11 + 248))(&v15, v8);
    os_unfair_lock_unlock((v9 + 24));
    result = *v17;
    v12 = v17[1];
    *a2 = v17[0];
    *(a2 + 16) = v12;
    *(a2 + 32) = v18;
  }

  return result;
}

uint64_t NetworkManagerHelper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized static NetworkManagerConfig.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if ((specialized static NetworkManagerType.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for NetworkConfig(0) + 20);
  v5 = &a1[v4];
  v6 = *&a1[v4 + 8];
  v7 = &a2[v4];
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(type metadata accessor for NetworkManagerConfig(0) + 20);
  v11 = &a1[v10];
  v12 = *&a1[v10 + 8];
  v13 = &a2[v10];
  v14 = v13[1];
  if (v12)
  {
    if (v14)
    {
      v15 = *v11 == *v13 && v12 == v14;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
}

uint64_t specialized static NetworkManagerType.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v117 = a1;
  v118 = a2;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v113 = v2;
  v114 = v3;
  MEMORY[0x28223BE20](v2);
  v112 = &v99[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v109 = &v99[-v6];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  MEMORY[0x28223BE20](v110);
  v116 = &v99[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v115 = &v99[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v108 = &v99[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v111 = &v99[-v13];
  MEMORY[0x28223BE20](v14);
  v16 = &v99[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v99[-v18];
  MEMORY[0x28223BE20](v20);
  v22 = &v99[-v21];
  MEMORY[0x28223BE20](v23);
  v25 = &v99[-v24];
  v26 = type metadata accessor for NetworkManagerType(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v99[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v31 = &v99[-v30];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18NetworkManagerTypeO_ACtMd, &_s8CipherML18NetworkManagerTypeO_ACtMR);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v99[-v33];
  v36 = &v99[*(v35 + 56) - v33];
  outlined init with copy of NetworkManagerError(v117, &v99[-v33], type metadata accessor for NetworkManagerType);
  outlined init with copy of NetworkManagerError(v118, v36, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    if (swift_getEnumCaseMultiPayload() == 4)
    {
LABEL_12:
      v46 = v34;
LABEL_13:
      outlined destroy of AspireApiConfigResponse(v46, type metadata accessor for NetworkManagerType);
      return 1;
    }

LABEL_21:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML18NetworkManagerTypeO_ACtMd, &_s8CipherML18NetworkManagerTypeO_ACtMR);
    return 0;
  }

  v105 = v19;
  v106 = v22;
  v117 = v25;
  v118 = v16;
  v38 = v115;
  v39 = v116;
  v107 = v34;
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of NetworkManagerError(v34, v31, type metadata accessor for NetworkManagerType);
    v41 = *v31;
    v40 = v31[1];
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
    v43 = *(v42 + 48);
    v44 = *(v42 + 64);
    v45 = *(v31 + v44);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v31 + v43, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

LABEL_20:
      v34 = v107;
      goto LABEL_21;
    }

    LODWORD(v116) = v45;
    v72 = *v36;
    v73 = v36[1];
    LODWORD(v118) = *(v36 + v44);
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v31 + v43, v117, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v74 = v106;
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v36 + v43, v106, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v41 == v72 && v40 == v73)
    {

      v76 = v109;
      v75 = v110;
      v77 = v38;
    }

    else
    {
      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v76 = v109;
      v75 = v110;
      v77 = v38;
      if ((v79 & 1) == 0)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v74, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v117, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        goto LABEL_45;
      }
    }

    v80 = *(v75 + 48);
    v81 = v117;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v117, v77, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v74, v77 + v80, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v82 = v114;
    v83 = *(v114 + 48);
    v84 = v74;
    v85 = v113;
    if (v83(v77, 1, v113) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v84, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (v83(v77 + v80, 1, v85) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v77, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        goto LABEL_37;
      }
    }

    else
    {
      v86 = v105;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v77, v105, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (v83(v77 + v80, 1, v85) != 1)
      {
        (*(v82 + 32))(v76, v77 + v80, v85);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v88 = dispatch thunk of static Equatable.== infix(_:_:)();
        v89 = *(v82 + 8);
        v89(v76, v85);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v106, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v117, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v89(v86, v85);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v77, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        if (v88)
        {
LABEL_37:
          if (v116 == 2)
          {
            v46 = v107;
            if (v118 == 2)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v46 = v107;
            if (v118 != 2 && ((v118 ^ v116) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

LABEL_46:
          outlined destroy of AspireApiConfigResponse(v46, type metadata accessor for NetworkManagerType);
          return 0;
        }

LABEL_45:
        v46 = v107;
        goto LABEL_46;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v106, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v117, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v82 + 8))(v86, v85);
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v77, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    goto LABEL_45;
  }

  v48 = v28;
  outlined init with copy of NetworkManagerError(v34, v28, type metadata accessor for NetworkManagerType);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
  v50 = v49[12];
  v51 = v49[16];
  v53 = *&v28[v51];
  v52 = *&v28[v51 + 8];
  v54 = v49[20];
  v55 = v48[v54];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v48[v50], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v114 + 8))(v48, v113);
    goto LABEL_20;
  }

  v117 = v52;
  v56 = *(v36 + v51 + 8);
  v102 = *(v36 + v51);
  v103 = v53;
  v115 = v56;
  v104 = *(v36 + v54);
  v58 = v113;
  v57 = v114;
  v59 = v112;
  v105 = *(v114 + 32);
  v106 = (v114 + 32);
  (v105)(v112, v36, v113);
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(&v48[v50], v118, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v60 = v36 + v50;
  v61 = v58;
  v62 = v111;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v60, v111, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v63 = static URL.== infix(_:_:)();
  v64 = *(v57 + 8);
  v64(v48, v61);
  if ((v63 & 1) == 0)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v62, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v78 = v118;
LABEL_43:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v78, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v90 = v59;
    goto LABEL_44;
  }

  v100 = v55;
  v101 = v64;
  v65 = *(v110 + 48);
  v66 = v118;
  v67 = v39;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v118, v39, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v68 = v114;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v62, v39 + v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v69 = *(v68 + 48);
  v70 = v69(v39, 1, v61);
  v71 = v66;
  if (v70 == 1)
  {
    if (v69(v67 + v65, 1, v61) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v67, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v64 = v101;
      goto LABEL_49;
    }

    v64 = v101;
    goto LABEL_41;
  }

  v87 = v108;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v67, v108, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v69(v67 + v65, 1, v61) == 1)
  {

    v64 = v101;
    v101(v87, v61);
LABEL_41:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v67, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
LABEL_42:
    v59 = v112;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v111, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v78 = v66;
    goto LABEL_43;
  }

  v91 = v67 + v65;
  v92 = v87;
  v93 = v109;
  (v105)(v109, v91, v61);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v94 = dispatch thunk of static Equatable.== infix(_:_:)();
  v64 = v101;
  v101(v93, v61);
  v64(v92, v61);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v67, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v94 & 1) == 0)
  {

    goto LABEL_42;
  }

LABEL_49:
  v95 = v115;
  if (v117)
  {
    v96 = v100;
    if (v115)
    {
      if (v103 == v102 && v117 == v115)
      {

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v62, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v64(v112, v61);
      }

      else
      {
        v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v62, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v64(v112, v61);
        if ((v97 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_63;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v62, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v90 = v112;
LABEL_44:
    v64(v90, v61);
    goto LABEL_45;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v62, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v66, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v64(v112, v61);
  v96 = v100;
  if (v95)
  {

    goto LABEL_45;
  }

LABEL_63:
  v98 = v96 ^ v104;
  outlined destroy of AspireApiConfigResponse(v107, type metadata accessor for NetworkManagerType);
  return v98 ^ 1u;
}

uint64_t specialized static NetworkConfig.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (specialized static NetworkManagerType.== infix(_:_:)(a1, a2))
  {
    v4 = *(type metadata accessor for NetworkConfig(0) + 20);
    v5 = &a1[v4];
    v6 = *&a1[v4 + 8];
    v7 = &a2[v4];
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t specialized static NetworkManagerError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for AspireApiConfigResponse(0);
  MEMORY[0x28223BE20](v30);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for NetworkManagerError(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v29 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML19NetworkManagerErrorO_ACtMd, &_s8CipherML19NetworkManagerErrorO_ACtMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v29 - v16;
  v19 = (&v29 + *(v18 + 56) - v16);
  outlined init with copy of NetworkManagerError(a1, &v29 - v16, type metadata accessor for NetworkManagerError);
  outlined init with copy of NetworkManagerError(a2, v19, type metadata accessor for NetworkManagerError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of NetworkManagerError(v17, v11, type metadata accessor for NetworkManagerError);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of NetworkManagerType(v19, v5, type metadata accessor for AspireApiConfigResponse);
        _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_8CipherML15AspireApiConfigVTt1g5(*v11, *v5);
        if (v21 & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AspireApiKeyStatusV_Tt1g5(v11[1], v5[1]))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            outlined destroy of AspireApiConfigResponse(v5, type metadata accessor for AspireApiConfigResponse);
            outlined destroy of AspireApiConfigResponse(v11, type metadata accessor for AspireApiConfigResponse);
LABEL_25:
            outlined destroy of AspireApiConfigResponse(v17, type metadata accessor for NetworkManagerError);
            v23 = 1;
            return v23 & 1;
          }
        }

        outlined destroy of AspireApiConfigResponse(v5, type metadata accessor for AspireApiConfigResponse);
        outlined destroy of AspireApiConfigResponse(v11, type metadata accessor for AspireApiConfigResponse);
LABEL_21:
        outlined destroy of AspireApiConfigResponse(v17, type metadata accessor for NetworkManagerError);
        goto LABEL_22;
      }

      outlined destroy of AspireApiConfigResponse(v11, type metadata accessor for AspireApiConfigResponse);
    }

    else
    {
      outlined init with copy of NetworkManagerError(v17, v8, type metadata accessor for NetworkManagerError);
      v25 = *v8;
      v24 = v8[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (v25 == *v19 && v24 == v19[1])
        {

          goto LABEL_25;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v27)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

LABEL_19:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML19NetworkManagerErrorO_ACtMd, &_s8CipherML19NetworkManagerErrorO_ACtMR);
LABEL_22:
    v23 = 0;
    return v23 & 1;
  }

  outlined init with copy of NetworkManagerError(v17, v14, type metadata accessor for NetworkManagerError);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_19;
  }

  v22 = *v14 ^ *v19;
  outlined destroy of AspireApiConfigResponse(v17, type metadata accessor for NetworkManagerError);
  v23 = v22 ^ 1;
  return v23 & 1;
}

unint64_t specialized static NetworkManagerHelper.inQaEnvironment()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x22AA609C0](0xD00000000000001ALL, 0x8000000225036600);
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = MEMORY[0x22AA609C0](7761509, 0xE300000000000000);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
    v2 = *(&v7 + 1) != 0;
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(&v8, &_sypSgMd, &_sypSgMR);
  return v2;
}

void specialized static NetworkManagerHelper.configureSecondaryIdentifier(configuration:secondaryIdentifier:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (specialized static NetworkManagerHelper.inQaEnvironment()())
    {
      if (one-time initialization token for networking != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.networking);

      oslog = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v16 = v9;
        *v8 = 136446210;
        *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v16);
        _os_log_impl(&dword_224E26000, oslog, v7, "Skipping setting secondaryIdentifier = %{public}s because we are in a QA environment", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x22AA61F40](v9, -1, -1);
        MEMORY[0x22AA61F40](v8, -1, -1);

        return;
      }
    }

    else
    {
      if (one-time initialization token for networking != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.networking);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v16 = v14;
        *v13 = 136446210;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v16);
        _os_log_impl(&dword_224E26000, v11, v12, "Setting secondaryIdentifier %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x22AA61F40](v14, -1, -1);
        MEMORY[0x22AA61F40](v13, -1, -1);
      }

      oslog = MEMORY[0x22AA609C0](a2, a3);
      [a1 set:oslog sourceApplicationSecondaryIdentifier:?];
    }
  }
}

id specialized static NetworkManagerHelper.urlSessionConfiguration(delegation:secondaryIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = [objc_opt_self() ephemeralSessionConfiguration];
  [v8 setURLCache_];
  [v8 setURLCredentialStorage_];
  [v8 setHTTPCookieStorage_];
  [v8 set:0 alternativeServicesStorage:?];
  if (a2)
  {
    v9 = MEMORY[0x22AA609C0](a1, a2);
    [v8 set:v9 sourceApplicationBundleIdentifier:?];
  }

  specialized static NetworkManagerHelper.configureSecondaryIdentifier(configuration:secondaryIdentifier:)(v8, a3, a4);
  [v8 setUsesClassicLoadingMode_];
  return v8;
}

unint64_t lazy protocol witness table accessor for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.CodingKeys and conformance NetworkManagerType.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of NetworkManagerError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys()
{
  result = lazy protocol witness table cache variable for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.PegasusCodingKeys and conformance NetworkManagerType.PegasusCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys()
{
  result = lazy protocol witness table cache variable for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.OfflineCodingKeys and conformance NetworkManagerType.OfflineCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys()
{
  result = lazy protocol witness table cache variable for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.AspireCodingKeys and conformance NetworkManagerType.AspireCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys()
{
  result = lazy protocol witness table cache variable for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.AseCodingKeys and conformance NetworkManagerType.AseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys()
{
  result = lazy protocol witness table cache variable for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerType.AmsCodingKeys and conformance NetworkManagerType.AmsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkConfig.CodingKeys and conformance NetworkConfig.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of AspireApiConfigResponse(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkManagerConfig.CodingKeys and conformance NetworkManagerConfig.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkDelegationConfig and conformance NetworkDelegationConfig()
{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig and conformance NetworkDelegationConfig;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig and conformance NetworkDelegationConfig)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig and conformance NetworkDelegationConfig);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig and conformance NetworkDelegationConfig;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig and conformance NetworkDelegationConfig)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig and conformance NetworkDelegationConfig);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkDelegationConfig and conformance NetworkDelegationConfig;
  if (!lazy protocol witness table cache variable for type NetworkDelegationConfig and conformance NetworkDelegationConfig)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkDelegationConfig and conformance NetworkDelegationConfig);
  }

  return result;
}

uint64_t outlined init with take of NetworkManagerType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of NetworkManager?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata completion function for NetworkManagerError(uint64_t a1)
{
  type metadata accessor for (fetchingNewConfig: Bool)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (updatedConfigs: AspireApiConfigResponse)();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (usecases: String)();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for (fetchingNewConfig: Bool)()
{
  result = lazy cache variable for type metadata for (fetchingNewConfig: Bool);
  if (!lazy cache variable for type metadata for (fetchingNewConfig: Bool))
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &lazy cache variable for type metadata for (fetchingNewConfig: Bool));
  }

  return result;
}

void type metadata accessor for (updatedConfigs: AspireApiConfigResponse)()
{
  if (!lazy cache variable for type metadata for (updatedConfigs: AspireApiConfigResponse))
  {
    v0 = type metadata accessor for AspireApiConfigResponse(0);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (updatedConfigs: AspireApiConfigResponse));
    }
  }
}

uint64_t type metadata accessor for (usecases: String)()
{
  result = lazy cache variable for type metadata for (usecases: String);
  if (!lazy cache variable for type metadata for (usecases: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (usecases: String));
  }

  return result;
}

uint64_t dispatch thunk of NetworkManager.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of NetworkManager.uploadKeys(evaluationKeys:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of NetworkManager.queries(requests:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of NetworkManager.cancel()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v7(a1, a2);
}

void type metadata completion function for NetworkManagerType(uint64_t a1)
{
  type metadata accessor for (featureId: String, endpoint: URL?, privacyProxyFailClosed: Bool?)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (endpoint: URL, issuer: URL?, authenticationToken: String?, privacyProxyFailClosed: Bool)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (featureId: String, endpoint: URL?, privacyProxyFailClosed: Bool?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (featureId: String, endpoint: URL?, privacyProxyFailClosed: Bool?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd, &_sSbSgMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (featureId: String, endpoint: URL?, privacyProxyFailClosed: Bool?));
    }
  }
}

void type metadata accessor for (endpoint: URL, issuer: URL?, authenticationToken: String?, privacyProxyFailClosed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (endpoint: URL, issuer: URL?, authenticationToken: String?, privacyProxyFailClosed: Bool))
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for URL();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (endpoint: URL, issuer: URL?, authenticationToken: String?, privacyProxyFailClosed: Bool));
    }
  }
}

void type metadata completion function for NetworkConfig(uint64_t a1)
{
  type metadata accessor for NetworkManagerType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata completion function for NetworkManagerConfig(uint64_t a1)
{
  result = type metadata accessor for NetworkConfig(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkManagerConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkManagerConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NetworkManagerType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkManagerType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkManagerType.AseCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkManagerType.AseCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkManagerType.AspireCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkManagerType.AspireCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized NetworkManagerType.AseCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4965727574616566 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000225035CA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized NetworkManagerType.AspireCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726575737369 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000225035C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000225035CA0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized NetworkManagerType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7564641 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6648673 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657269707361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E696C66666FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73757361676570 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t WorkAroundForIdleMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  static ContinuousClock.Instant.now.getter();
  *(v0 + OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_transaction) = 0;
  return v0;
}

uint64_t *WorkAroundForIdleMemory.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static WorkAroundForIdleMemory.shared;
}

uint64_t static WorkAroundForIdleMemory.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t key path getter for WorkAroundForIdleMemory.deadline : WorkAroundForIdleMemory@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_deadline;
  swift_beginAccess();
  v5 = type metadata accessor for ContinuousClock.Instant();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for WorkAroundForIdleMemory.deadline : WorkAroundForIdleMemory(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ContinuousClock.Instant();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_deadline;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t WorkAroundForIdleMemory.deadline.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_deadline;
  swift_beginAccess();
  v4 = type metadata accessor for ContinuousClock.Instant();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t WorkAroundForIdleMemory.deadline.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_deadline;
  swift_beginAccess();
  v4 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path setter for WorkAroundForIdleMemory.transaction : WorkAroundForIdleMemory(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_transaction;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t WorkAroundForIdleMemory.transaction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_transaction;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t static WorkAroundForIdleMemory.run<A>(_:)(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static WorkAroundForIdleMemory.run<A>(_:);

  return v6(a1);
}

uint64_t static WorkAroundForIdleMemory.run<A>(_:)()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = static WorkAroundForIdleMemory.run<A>(_:);
  }

  else
  {
    v2 = static WorkAroundForIdleMemory.run<A>(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 32) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](static WorkAroundForIdleMemory.run<A>(_:), v1, 0);
}

{
  WorkAroundForIdleMemory.trigger()();
  v1 = *(v0 + 8);

  return v1();
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 40) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](static WorkAroundForIdleMemory.run<A>(_:), v1, 0);
}

{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](static WorkAroundForIdleMemory.run<A>(_:), 0, 0);
}

uint64_t static WorkAroundForIdleMemory.run<A>(_:)(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t WorkAroundForIdleMemory.trigger()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for ContinuousClock.Instant();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  (*(v6 + 8))(v8, v5);
  v12 = OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_deadline;
  swift_beginAccess();
  (*(v6 + 40))(v1 + v12, v11, v5);
  swift_endAccess();
  v13 = OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_transaction;
  result = swift_beginAccess();
  if (!*(v1 + v13))
  {
    *(v1 + v13) = os_transaction_create();
    swift_unknownObjectRelease();
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v1;

    _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in WorkAroundForIdleMemory.trigger(), v16);

    return outlined destroy of TaskPriority?(v4);
  }

  return result;
}

uint64_t closure #1 in WorkAroundForIdleMemory.trigger()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return WorkAroundForIdleMemory.loop()();
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of TaskPriority?(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t WorkAroundForIdleMemory.loop()()
{
  v1[11] = v0;
  v2 = type metadata accessor for ContinuousClock();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock.Instant();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkAroundForIdleMemory.loop(), v0, 0);
}

{
  v1 = *(v0 + 128);
  *(v0 + 160) = OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_deadline;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  *(v0 + 168) = v2;
  *(v0 + 176) = v7;
  v2(v3, v6 + v4, v5);
  *(v0 + 72) = 0;
  *(v0 + 64) = 0;
  *(v0 + 80) = 1;
  static Clock<>.continuous.getter();
  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  v9 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  *v8 = v0;
  v8[1] = WorkAroundForIdleMemory.loop();
  v10 = *(v0 + 152);
  v11 = *(v0 + 112);
  v12 = *(v0 + 96);

  return MEMORY[0x282200488](v10, v0 + 64, v11, v12, v9);
}

{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = v2[19];
    v4 = v2[15];
    v5 = v2[16];
    v7 = v2[13];
    v6 = v2[14];
    v9 = v2 + 11;
    v8 = v2[11];
    (*(v7 + 8))(v6, v9[1]);
    (*(v5 + 8))(v3, v4);
    v10 = WorkAroundForIdleMemory.loop();
    v11 = v8;
  }

  else
  {
    v12 = v2[19];
    v13 = v2[15];
    v14 = v2[16];
    v15 = v2[11];
    (*(v2[13] + 8))(v2[14], v2[12]);
    v16 = *(v14 + 8);
    v2[25] = v16;
    v2[26] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v12, v13);
    v10 = WorkAroundForIdleMemory.loop();
    v11 = v15;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

{
  v1 = *(v0 + 200);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  (*(v0 + 168))(v2, *(v0 + 88) + *(v0 + 160), v4);
  static ContinuousClock.Instant.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85910]);
  v5 = dispatch thunk of static Comparable.> infix(_:_:)();
  v1(v3, v4);
  v1(v2, v4);
  if (v5)
  {
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v8 = *(v0 + 152);
    v9 = *(v0 + 120);
    v10 = *(v0 + 88);
    *(v0 + 176) = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v8, v10 + v7, v9);
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    static Clock<>.continuous.getter();
    v11 = swift_task_alloc();
    *(v0 + 184) = v11;
    v12 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    *v11 = v0;
    v11[1] = WorkAroundForIdleMemory.loop();
    v13 = *(v0 + 152);
    v14 = *(v0 + 112);
    v15 = *(v0 + 96);

    return MEMORY[0x282200488](v13, v0 + 64, v14, v15, v12);
  }

  else
  {
    v16 = *(v0 + 88);
    v17 = OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_transaction;
    swift_beginAccess();
    *(v16 + v17) = 0;
    swift_unknownObjectRelease();

    v18 = *(v0 + 8);

    return v18();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WorkAroundForIdleMemory.deinit()
{
  v1 = OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_deadline;
  v2 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t WorkAroundForIdleMemory.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_deadline;
  v2 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t WorkAroundForIdleMemory.init()()
{
  swift_defaultActor_initialize();
  static ContinuousClock.Instant.now.getter();
  *(v0 + OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_transaction) = 0;
  return v0;
}

uint64_t type metadata accessor for WorkAroundForIdleMemory(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkAroundForIdleMemory;
  if (!type metadata singleton initialization cache for WorkAroundForIdleMemory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for WorkAroundForIdleMemory(uint64_t a1)
{
  result = type metadata accessor for ContinuousClock.Instant();
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

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in WorkAroundForIdleMemory.trigger()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #1 in WorkAroundForIdleMemory.trigger()();
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static Telemetry.reportErrorToServer(useCase:identifier:method:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = MEMORY[0x22AA609C0](a1, a2);
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](a5, a6);
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v17 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = v14;
  v18[5] = a7;
  v18[6] = v16;
  v30 = partial apply for closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:);
  v31 = v18;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v29 = &block_descriptor_0;
  v19 = _Block_copy(&v26);

  v20 = v14;
  v21 = a7;

  AnalyticsSendEventLazy();
  _Block_release(v19);

  v22 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v16;
  v30 = partial apply for closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:);
  v31 = v23;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v29 = &block_descriptor_6;
  v24 = _Block_copy(&v26);
  v25 = v20;

  AnalyticsSendEventLazy();
  _Block_release(v24);
}

uint64_t closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022950;
  *(inited + 32) = 0xD000000000000021;
  *(inited + 40) = 0x80000002250367C0;
  if (a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = 1701736270;
  }

  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  *(inited + 48) = MEMORY[0x22AA609C0](v10, v11);
  *(inited + 56) = 0x6E69616D6F64;
  *(inited + 64) = 0xE600000000000000;
  v12 = [a3 domain];
  if (v12)
  {
    v13 = v12;

    *(inited + 72) = v13;
    *(inited + 80) = 1701080931;
    *(inited + 88) = 0xE400000000000000;
    [a3 code];
    *(inited + 96) = Int._bridgeToObjectiveC()();
    *(inited + 104) = 0x7470697263736564;
    *(inited + 112) = 0xEB000000006E6F69;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v15 = MEMORY[0x22AA609C0](v14);

    *(inited + 120) = v15;
    v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayDestroy();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = a5;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v16, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v19);

    return v19;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022930;
  *(inited + 32) = 0x636375735F646964;
  *(inited + 40) = 0xEB00000000646565;
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(0);
  *(inited + 56) = 0x6E69616D6F64;
  *(inited + 64) = 0xE600000000000000;
  v5 = [a1 domain];
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(inited + 72) = v5;
  *(inited + 80) = 1701080931;
  *(inited + 88) = 0xE400000000000000;
  *&v27[0] = [a1 code];
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = MEMORY[0x22AA609C0](v6);

  *(inited + 96) = v7;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v9 = [a1 userInfo];
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v10 + 16))
  {

    goto LABEL_9;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  outlined init with copy of Any(*(v10 + 56) + 32 * v13, v26);

  outlined init with take of Any(v26, v27);
  outlined init with copy of Any(v27, v26);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(v27);
LABEL_10:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v27[0] = a2;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v8, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v27);

    return *&v27[0];
  }

  v16 = [v25 domain];
  if (v16)
  {
    v17 = v16;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    *&v26[0] = v8;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0xD000000000000017, 0x8000000225036780, v18);
    v19 = *&v26[0];
    *&v26[0] = [v25 code];
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = MEMORY[0x22AA609C0](v20);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v26[0] = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, 0xD000000000000015, 0x80000002250367A0, v22);

    v8 = *&v26[0];
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #1 in static Telemetry.reportSuccessToServer(useCase:method:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022960;
  *(inited + 32) = 0x636375735F646964;
  *(inited + 40) = 0xEB00000000646565;
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, NSObject)(inited + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  return v6;
}

void static Telemetry.reportKeyRotationEvent(groupName:keyStatuses:activeUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x22AA609C0](0xD000000000000021, 0x8000000225036730);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v11[4] = partial apply for closure #1 in static Telemetry.reportKeyRotationEvent(groupName:keyStatuses:activeUseCases:);
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v11[3] = &block_descriptor_12;
  v10 = _Block_copy(v11);

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

unint64_t closure #1 in static Telemetry.reportKeyRotationEvent(groupName:keyStatuses:activeUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for AspireApiKeyStatus(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022930;
  *(inited + 32) = 0x6D614E70756F7267;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = MEMORY[0x22AA609C0](a1, a2);
  strcpy((inited + 56), "keyTimestamp");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  v13 = *(a3 + 16);
  if (v13)
  {
    v31 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      outlined init with copy of AspireApiKeyStatus(v14, v11);
      UInt64._bridgeToObjectiveC()();
      outlined destroy of AspireApiKeyStatus(v11);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(inited + 72) = isa;
  strcpy((inited + 80), "activeUseCase");
  *(inited + 94) = -4864;
  v17 = a4[2];
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v30[1] = inited + 32;
    v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v17, 0);
    v20 = specialized Sequence._copySequenceContents(initializing:)(&v31, v19 + 4, v17, a4);
    v21 = v31;

    outlined consume of [String : [TokenCache.CachedToken]].Iterator._Variant(v21);
    if (v20 != v17)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v31 = v19;
  specialized MutableCollection<>.sort(by:)(&v31);
  v22 = v31;
  v23 = *(v31 + 2);
  if (v23)
  {
    v31 = v18;
    specialized ContiguousArray.reserveCapacity(_:)();
    v24 = (v22 + 40);
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;

      MEMORY[0x22AA609C0](v25, v26);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v24 += 2;
      --v23;
    }

    while (v23);
  }

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v27 = Array._bridgeToObjectiveC()().super.isa;

  *(inited + 96) = v27;
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  return v28;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

id specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized static Telemetry.reportSuccessToServer(useCase:method:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = MEMORY[0x22AA609C0](a1, a2);
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](a3, a4);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v10 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v13[4] = partial apply for closure #1 in static Telemetry.reportSuccessToServer(useCase:method:);
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v13[3] = &block_descriptor_18;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

uint64_t outlined init with copy of AspireApiKeyStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiKeyStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AspireApiKeyStatus(uint64_t a1)
{
  v2 = type metadata accessor for AspireApiKeyStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of (String, NSObject)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v48 = a5;
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
  v40 = v6;
  while (v9)
  {
    v43 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v47[0] = *v18;
    v47[1] = v19;
    v47[2] = v20;

    v21 = v20;
    a2(&v44, v47);

    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = *v48;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v45);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v43 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, v43 & 1);
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v48;
    if (v31)
    {
      v12 = *(v34[7] + 8 * v27);

      v13 = v34[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v22;
      v35[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v15;
    v6 = v40;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      outlined consume of [String : [TokenCache.CachedToken]].Iterator._Variant(a1);
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v43 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for NSNumber(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();
  type metadata accessor for Optional();
  v6[13] = swift_task_alloc();
  v6[14] = *(a3 - 8);
  v6[15] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](Sequence.asyncMap<A>(_:), 0, 0);
}

uint64_t Sequence.asyncMap<A>(_:)()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = static Array._allocateUninitialized(_:)();
  (*(v2 + 16))(v1, v3, v4);
  dispatch thunk of Sequence.makeIterator()();
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = Sequence.asyncMap<A>(_:);
    v13 = v0[12];
    v14 = v0[9];

    return v15(v14, v13);
  }
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = Sequence.asyncMap<A>(_:);
  }

  else
  {
    v2 = Sequence.asyncMap<A>(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  type metadata accessor for Array();
  Array.append(_:)();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v7 = v0[2];

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v10 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = Sequence.asyncMap<A>(_:);
    v12 = v0[12];
    v13 = v0[9];

    return v14(v13, v12);
  }
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence.asyncCompactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v9 = type metadata accessor for Optional();
  v6[9] = v9;
  v6[10] = *(v9 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = *(a4 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v6[16] = *(AssociatedTypeWitness - 8);
  v6[17] = swift_task_alloc();
  type metadata accessor for Optional();
  v6[18] = swift_task_alloc();
  v6[19] = *(a3 - 8);
  v6[20] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v6[21] = v11;
  v6[22] = *(v11 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](Sequence.asyncCompactMap<A>(_:), 0, 0);
}

uint64_t Sequence.asyncCompactMap<A>(_:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = static Array._allocateUninitialized(_:)();
  (*(v2 + 16))(v1, v3, v4);
  dispatch thunk of Sequence.makeIterator()();
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = Sequence.asyncCompactMap<A>(_:);
    v13 = v0[17];
    v14 = v0[11];

    return v15(v14, v13);
  }
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = Sequence.asyncCompactMap<A>(_:);
  }

  else
  {
    v2 = Sequence.asyncCompactMap<A>(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[6];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  if (v4 == 1)
  {
    v8 = v0[9];
    v9 = v0[10];
    (*(v6 + 8))(v0[17], v0[15]);
    (*(v9 + 8))(v1, v8);
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    type metadata accessor for Array();
    Array.append(_:)();
    (*(v2 + 8))(v10, v3);
    (*(v6 + 8))(v5, v7);
  }

  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v15 = v0[2];

    v16 = v0[1];

    return v16(v15);
  }

  else
  {
    v18 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v22 = (v18 + *v18);
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = Sequence.asyncCompactMap<A>(_:);
    v20 = v0[17];
    v21 = v0[11];

    return v22(v21, v20);
  }
}

{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

CipherML::StaticPIRParameters::CodingKeys_optional __swiftcall StaticPIRParameters.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StaticPIRParameters.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t StaticPIRParameters.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x647261685378616DLL;
  v2 = 0xD000000000000013;
  if (a1 != 3)
  {
    v2 = 0xD000000000000011;
  }

  if (a1 == 2)
  {
    v2 = 0xD000000000000017;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance StaticPIRParameters.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized StaticPIRParameters.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StaticPIRParameters.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = StaticPIRParameters.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance StaticPIRParameters.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized StaticPIRParameters.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StaticPIRParameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StaticPIRParameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StaticPIRParameters.shardingDependsOn.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StaticPIRParameters.init(maxShards:cacheElementCount:cacheEntryMinutesToLive:cacheEvictionPolicy:shardingDependsOn:)(CipherML::StaticPIRParameters *__return_ptr retstr, Swift::Int maxShards, Swift::Int_optional cacheElementCount, Swift::Int_optional cacheEntryMinutesToLive, CipherML::CacheEvictionPolicy_optional cacheEvictionPolicy, Swift::String_optional shardingDependsOn)
{
  object = shardingDependsOn.value._object;
  countAndFlagsBits = shardingDependsOn.value._countAndFlagsBits;
  value = cacheEntryMinutesToLive.value;
  v10 = cacheElementCount.value;
  v13 = *cacheEvictionPolicy.value;
  v16 = *cacheEvictionPolicy.value;
  is_nil = cacheElementCount.is_nil;
  v15 = cacheEntryMinutesToLive.is_nil;
  specialized static StaticPIRParameters.validateCacheParams(cacheElementCount:cacheEntryMinutesToLive:cacheEvictionPolicy:)(cacheElementCount.value, cacheElementCount.is_nil, cacheEntryMinutesToLive.value, cacheEntryMinutesToLive.is_nil, &v16);
  if (v6)
  {
  }

  else
  {
    retstr->maxShards = maxShards;
    retstr->cacheElementCount.value = v10;
    retstr->cacheElementCount.is_nil = is_nil;
    *(&retstr->cacheEntryMinutesToLive.value + 7) = value;
    LOBYTE(retstr->shardingDependsOn.value._countAndFlagsBits) = v15;
    BYTE1(retstr->shardingDependsOn.value._countAndFlagsBits) = v13;
    retstr->shardingDependsOn.value._object = countAndFlagsBits;
    retstr[1].maxShards = object;
  }
}

uint64_t StaticPIRParameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML19StaticPIRParametersV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8CipherML19StaticPIRParametersV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v16 = *(v1 + 8);
  v15 = *(v1 + 16);
  v14 = *(v1 + 24);
  v13 = *(v1 + 32);
  v11 = *(v1 + 33);
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 0;
  v7 = v17;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v7)
  {
    v8 = v11;
    v22 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = v8;
    v19 = 3;
    lazy protocol witness table accessor for type CacheEvictionPolicy and conformance CacheEvictionPolicy();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t StaticPIRParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML19StaticPIRParametersV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8CipherML19StaticPIRParametersV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v34) = 0;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 1;
  LOBYTE(v34) = 1;
  v11 = KeyedDecodingContainer.contains(_:)();
  v29 = a2;
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    LOBYTE(v30) = 1;
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, &_sSiSgMd, &_sSiSgMR);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v34;
    v10 = v35;
    v43 = v35;
    a2 = v29;
  }

  else
  {
    v27 = 0;
    v43 = 1;
  }

  v26 = v10;
  LOBYTE(v34) = 2;
  if (KeyedDecodingContainer.contains(_:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    LOBYTE(v30) = 2;
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, &_sSiSgMd, &_sSiSgMR);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v34;
    v25 = v35;
    v42 = v35;
    a2 = v29;
  }

  else
  {
    v12 = 0;
    v25 = 1;
    v42 = 1;
  }

  LOBYTE(v34) = 3;
  if (KeyedDecodingContainer.contains(_:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML19CacheEvictionPolicyOSgMd, &_s8CipherML19CacheEvictionPolicyOSgMR);
    LOBYTE(v30) = 3;
    lazy protocol witness table accessor for type CacheEvictionPolicy? and conformance <A> A?();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v12;
    v13 = v34;
  }

  else
  {
    v24 = v12;
    v13 = 2;
  }

  LOBYTE(v34) = 4;
  if (KeyedDecodingContainer.contains(_:)())
  {
    HIDWORD(v21) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    LOBYTE(v30) = 4;
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v34;
    v23 = v35;
    a2 = v29;
    LOBYTE(v13) = BYTE4(v21);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v44 = v13;
  v14 = v27;
  v15 = v13;
  v16 = v24;
  specialized static StaticPIRParameters.validateCacheParams(cacheElementCount:cacheEntryMinutesToLive:cacheEvictionPolicy:)(v27, v26, v24, v25, &v44);
  (*(v6 + 8))(v8, v5);
  *&v30 = v28;
  *(&v30 + 1) = v14;
  v26 = v43;
  LOBYTE(v31) = v43;
  *(&v31 + 1) = v16;
  v17 = v42;
  LOBYTE(v32) = v42;
  BYTE1(v32) = v15;
  v18 = v22;
  v19 = v23;
  *(&v32 + 1) = v22;
  v33 = v23;
  *(a2 + 48) = v23;
  v20 = v31;
  *a2 = v30;
  *(a2 + 16) = v20;
  *(a2 + 32) = v32;
  outlined init with copy of StaticPIRParameters(&v30, &v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34 = v28;
  v35 = v14;
  v36 = v26;
  v37 = v16;
  v38 = v17;
  v39 = v15;
  v40 = v18;
  v41 = v19;
  return outlined destroy of StaticPIRParameters(&v34);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PECDPParameters.CodingKeys()
{
  v1 = *v0;
  v2 = 0x4373736563637573;
  v3 = 0xD00000000000001ALL;
  v4 = 0x6C6169725478616DLL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PECDPParameters.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PECDPParameters.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PECDPParameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PECDPParameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PECDPParameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML15PECDPParametersV10CodingKeys33_5CF42E5E2777FA72EA9A88AEEA7FA59FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML15PECDPParametersV10CodingKeys33_5CF42E5E2777FA72EA9A88AEEA7FA59FLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

double PECDPParameters.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized PECDPParameters.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

void __swiftcall PECDPParameters.init(successCount:successProbability:maxQueryCountPerDpInterval:maxFakesPerQuery:maxTrials:)(CipherML::PECDPParameters *__return_ptr retstr, Swift::Double successCount, Swift::Double successProbability, Swift::Int maxQueryCountPerDpInterval, Swift::Int maxFakesPerQuery, Swift::Int maxTrials)
{
  retstr->successCount = successCount;
  retstr->successProbability = successProbability;
  retstr->maxQueryCountPerDpInterval = maxQueryCountPerDpInterval;
  retstr->maxFakesPerQuery = maxFakesPerQuery;
  retstr->maxTrials = maxTrials;
}

double protocol witness for Decodable.init(from:) in conformance PECDPParameters@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized PECDPParameters.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

__n128 StaticPECParameters.differentialPrivacyParameters.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

void __swiftcall StaticPECParameters.init(differentialPrivacyParameters:)(CipherML::StaticPECParameters *__return_ptr retstr, CipherML::PECDPParameters_optional *differentialPrivacyParameters)
{
  maxTrials = differentialPrivacyParameters->value.maxTrials;
  is_nil = differentialPrivacyParameters->is_nil;
  v4 = *&differentialPrivacyParameters->value.maxQueryCountPerDpInterval;
  *&retstr->differentialPrivacyParameters.value.successCount = *&differentialPrivacyParameters->value.successCount;
  *&retstr->differentialPrivacyParameters.value.maxQueryCountPerDpInterval = v4;
  retstr->differentialPrivacyParameters.value.maxTrials = maxTrials;
  retstr->differentialPrivacyParameters.is_nil = is_nil;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StaticPECParameters.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA61420](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StaticPECParameters.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA61420](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StaticPECParameters.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x8000000225036850 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StaticPECParameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StaticPECParameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StaticPECParameters.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML19StaticPECParametersV10CodingKeys33_5CF42E5E2777FA72EA9A88AEEA7FA59FLLOGMd, &_ss22KeyedEncodingContainerVy8CipherML19StaticPECParametersV10CodingKeys33_5CF42E5E2777FA72EA9A88AEEA7FA59FLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[1];
  v10 = *v2;
  v11[0] = v8;
  *(v11 + 9) = *(v2 + 25);
  lazy protocol witness table accessor for type PECDPParameters and conformance PECDPParameters();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

double StaticPECParameters.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized StaticPECParameters.init(from:)(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

double protocol witness for Decodable.init(from:) in conformance StaticPECParameters@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized StaticPECParameters.init(from:)(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

CipherML::UseCaseGroup::CodingKeys_optional __swiftcall UseCaseGroup.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UseCaseGroup.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t UseCaseGroup.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7974697275636573;
  v2 = 0xD000000000000025;
  v3 = 0x7365736143657375;
  if (a1 != 4)
  {
    v3 = 0x436B726F7774656ELL;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000014;
  if (a1 != 1)
  {
    v4 = 0xD000000000000022;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StaticPIRParameters.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StaticPIRParameters.CodingKeys(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance StaticPIRParameters.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StaticPIRParameters.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UseCaseGroup.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized UseCaseGroup.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UseCaseGroup.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = UseCaseGroup.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance UseCaseGroup.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized UseCaseGroup.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UseCaseGroup.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UseCaseGroup.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UseCaseGroup.securityLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HE.SecurityLevel();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UseCaseGroup.useCases.getter()
{
  type metadata accessor for UseCaseGroup(0);
}

uint64_t UseCaseGroup.managesOwnNetworking.getter()
{
  v1 = type metadata accessor for NetworkManagerType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(type metadata accessor for UseCaseGroup(0) + 36);
  swift_storeEnumTagMultiPayload();
  v5 = specialized static NetworkManagerType.== infix(_:_:)((v0 + v4), v3);
  outlined destroy of NetworkManagerType(v3, type metadata accessor for NetworkManagerType);
  return v5 & 1;
}

uint64_t UseCaseGroup.init(useCases:networkConfig:keyExpirationMinutes:keyRotationBeforeExpirationMinutes:keyRotationIgnoreMissingEvaluationKey:securityLevel:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a6;
  v40 = a5;
  v13 = type metadata accessor for NetworkManagerType(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  if ((a3 & 0x8000000000000000) != 0 || (a4 & 0x8000000000000000) != 0 || a3 < a4)
  {

    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.framework);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134349312;
      *(v32 + 4) = a3;
      *(v32 + 12) = 2050;
      *(v32 + 14) = a3;
      _os_log_impl(&dword_224E26000, v30, v31, "Invalid keyExpirationMinutes '%{public}ld' or 'keyExpirationMinutes %{public}ld'", v32, 0x16u);
      MEMORY[0x22AA61F40](v32, -1, -1);
    }

    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_1(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v33 = v41;
    goto LABEL_19;
  }

  v39 = a2;
  outlined init with copy of NetworkConfig(a2, &v38 - v17, type metadata accessor for NetworkManagerType);
  swift_storeEnumTagMultiPayload();
  v19 = specialized static NetworkManagerType.== infix(_:_:)(v18, v15);
  outlined destroy of NetworkManagerType(v15, type metadata accessor for NetworkManagerType);
  outlined destroy of NetworkManagerType(v18, type metadata accessor for NetworkManagerType);
  if ((v19 & 1) == 0 && a3 > 0xA8C0)
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.framework);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42 = v24;
      *v23 = 134349570;
      *(v23 + 4) = a3;
      *(v23 + 12) = 2082;
      v25 = Dictionary.description.getter();
      v27 = v26;

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v42);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2050;
      *(v23 + 24) = 43200;
      _os_log_impl(&dword_224E26000, v21, v22, "Invalid keyExpirationMinutes '%{public}ld'\nfor self-managed networking usecases '%{public}s'.\nMust be <= %{public}ld", v23, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AA61F40](v24, -1, -1);
      MEMORY[0x22AA61F40](v23, -1, -1);
    }

    else
    {
    }

    a2 = v39;
    v33 = v41;
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_1(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_19;
  }

  a2 = v39;
  v33 = v41;
  specialized static UseCaseGroup.validate(useCases:networkConfig:keyExpirationMinutes:keyRotationBeforeExpirationMinutes:securityLevel:)(a1, v39, a3, a4);
  if (v7)
  {

LABEL_19:
    v34 = type metadata accessor for HE.SecurityLevel();
    (*(*(v34 - 8) + 8))(v33, v34);
    return outlined destroy of NetworkManagerType(a2, type metadata accessor for NetworkConfig);
  }

  v36 = type metadata accessor for UseCaseGroup(0);
  *(a7 + v36[5]) = a3;
  *(a7 + v36[6]) = a4;
  *(a7 + v36[7]) = v40 & 1;
  *(a7 + v36[8]) = a1;
  v37 = type metadata accessor for HE.SecurityLevel();
  (*(*(v37 - 8) + 32))(a7, v33, v37);
  return outlined init with take of NetworkConfig(a2, a7 + v36[9]);
}

uint64_t UseCaseGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML12UseCaseGroupV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8CipherML12UseCaseGroupV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  type metadata accessor for HE.SecurityLevel();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_1(&lazy protocol witness table cache variable for type HE.SecurityLevel and conformance HE.SecurityLevel, MEMORY[0x277D02EF8], MEMORY[0x277D02F00]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for UseCaseGroup(0);
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS8CipherML7UseCaseOGMd, &_sSDySS8CipherML7UseCaseOGMR);
    lazy protocol witness table accessor for type [String : UseCase] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : UseCase] and conformance <> [A : B], lazy protocol witness table accessor for type UseCase and conformance UseCase, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[14] = 5;
    type metadata accessor for NetworkConfig(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_1(&lazy protocol witness table cache variable for type NetworkConfig and conformance NetworkConfig, type metadata accessor for NetworkConfig, &protocol conformance descriptor for NetworkConfig);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t UseCaseGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = type metadata accessor for NetworkConfig(0);
  MEMORY[0x28223BE20](v31);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HE.SecurityLevel();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML12UseCaseGroupV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8CipherML12UseCaseGroupV10CodingKeysOGMR);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for UseCaseGroup(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys();
  v12 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v36 = v9;
  v13 = v33;
  v43 = 0;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_1(&lazy protocol witness table cache variable for type HE.SecurityLevel and conformance HE.SecurityLevel, MEMORY[0x277D02EF8], MEMORY[0x277D02F20]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = *(v13 + 32);
  v15 = v11;
  v14(v11, v35, v4);
  v42 = 1;
  v16 = v8;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v36;
  *&v11[v36[5]] = v17;
  v41 = 2;
  v19 = v17;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = a1;
  v29 = v19;
  *(v15 + v18[6]) = v20;
  v40 = 3;
  v22 = v20;
  v35 = v6;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v34;
  v28 = v22;
  *(v15 + v18[7]) = v23 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS8CipherML7UseCaseOGMd, &_sSDySS8CipherML7UseCaseOGMR);
  v39 = 4;
  lazy protocol witness table accessor for type [String : UseCase] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : UseCase] and conformance <> [A : B], lazy protocol witness table accessor for type UseCase and conformance UseCase, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v37;
  *(v15 + v18[8]) = v37;
  v38 = 5;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_1(&lazy protocol witness table cache variable for type NetworkConfig and conformance NetworkConfig, type metadata accessor for NetworkConfig, &protocol conformance descriptor for NetworkConfig);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v16;
  v27 = v18[9];
  outlined init with take of NetworkConfig(v32, v15 + v27);
  specialized static UseCaseGroup.validate(useCases:networkConfig:keyExpirationMinutes:keyRotationBeforeExpirationMinutes:securityLevel:)(v26, (v15 + v27), v29, v28);
  (*(v24 + 8))(v31, v35);
  outlined init with copy of NetworkConfig(v15, v30, type metadata accessor for UseCaseGroup);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return outlined destroy of NetworkManagerType(v15, type metadata accessor for UseCaseGroup);
}

uint64_t specialized static UseCaseGroup.validate(useCases:networkConfig:keyExpirationMinutes:keyRotationBeforeExpirationMinutes:securityLevel:)(uint64_t a1, _BYTE *a2, int64_t a3, int64_t a4)
{
  v8 = type metadata accessor for NetworkManagerType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0 || a4 < 0 || a3 < a4)
  {
    if (one-time initialization token for framework == -1)
    {
LABEL_12:
      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.framework);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134349312;
        *(v23 + 4) = a3;
        *(v23 + 12) = 2050;
        *(v23 + 14) = a3;
        _os_log_impl(&dword_224E26000, v21, v22, "Invalid keyExpirationMinutes '%{public}ld' or 'keyExpirationMinutes %{public}ld'", v23, 0x16u);
        MEMORY[0x22AA61F40](v23, -1, -1);
      }

      goto LABEL_15;
    }

LABEL_37:
    swift_once();
    goto LABEL_12;
  }

  swift_storeEnumTagMultiPayload();
  v11 = specialized static NetworkManagerType.== infix(_:_:)(a2, v10);
  outlined destroy of NetworkManagerType(v10, type metadata accessor for NetworkManagerType);
  if ((v11 & 1) == 0 && a3 > 0xA8C0)
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.framework);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 134349570;
      *(v15 + 4) = a3;
      *(v15 + 12) = 2082;
      v17 = Dictionary.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v46);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2050;
      *(v15 + 24) = 43200;
      _os_log_impl(&dword_224E26000, v13, v14, "Invalid keyExpirationMinutes '%{public}ld' for self-managed networking usecases\n'%{public}s'. Must be <= %{public}ld", v15, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA61F40](v16, -1, -1);
      MEMORY[0x22AA61F40](v15, -1, -1);
    }

LABEL_15:
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_1(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  swift_storeEnumTagMultiPayload();
  a3 = specialized static NetworkManagerType.== infix(_:_:)(a2, v10);
  result = outlined destroy of NetworkManagerType(v10, type metadata accessor for NetworkManagerType);
  if (a3)
  {
    v25 = 0;
    v26 = 1 << *(a1 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(a1 + 64);
    v29 = (v26 + 63) >> 6;
    while (v28)
    {
      v30 = v25;
LABEL_27:
      v31 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v32 = v31 | (v30 << 6);
      v33 = (*(a1 + 48) + 16 * v32);
      v34 = *v33;
      a3 = v33[1];
      v35 = (*(a1 + 56) + (v32 << 6));
      v37 = v35[1];
      v36 = v35[2];
      v38 = *v35;
      *&v48[9] = *(v35 + 41);
      v47 = v37;
      *v48 = v36;
      v46 = v38;
      if ((v48[24] & 1) != 0 && ((v47 & 1) == 0 || (v48[0] & 1) == 0))
      {

        outlined init with copy of UseCase(&v46, v45);
        if (one-time initialization token for framework != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.framework);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v45[0] = v43;
          *v42 = 136446210;
          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, a3, v45);

          *(v42 + 4) = v44;
          _os_log_impl(&dword_224E26000, v40, v41, "Invalid use case '%{public}s'\nfor self-managed networking use case group.\nMust have no cache.", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x22AA61F40](v43, -1, -1);
          MEMORY[0x22AA61F40](v42, -1, -1);
        }

        else
        {
        }

        type metadata accessor for CipherMLError(0);
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_1(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return outlined destroy of UseCase(&v46);
      }

      v25 = v30;
    }

    while (1)
    {
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v30 >= v29)
      {
        return result;
      }

      v28 = *(a1 + 64 + 8 * v30);
      ++v25;
      if (v28)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  return result;
}