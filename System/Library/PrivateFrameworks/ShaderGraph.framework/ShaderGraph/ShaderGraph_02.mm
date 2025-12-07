uint64_t sub_265D9C914()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265D9C94C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say11ShaderGraph7NodeDefV14ImplementationVGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 64); ; i += 5)
    {
      v12 = *(i - 4);
      v11 = *(i - 3);
      v13 = *(i - 1);
      v30 = *(i - 2);
      v14 = *i;
      v15 = *a3;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
      v17 = v15[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        break;
      }

      v21 = v16;
      if (v15[3] >= v20)
      {
        if ((a2 & 1) == 0)
        {
          v28 = result;
          specialized _NativeDictionary.copy()();
          result = v28;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a2 & 1);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
        if ((v21 & 1) != (v22 & 1))
        {
          goto LABEL_17;
        }
      }

      v23 = *a3;
      if (v21)
      {
        v6 = 24 * result;
        v7 = (v23[7] + 24 * result);
        v8 = v7[1];
        v29 = *v7;
        v9 = v7[2];

        v10 = (v23[7] + v6);
        *v10 = v29;
        v10[1] = v8;
        v10[2] = v9;
      }

      else
      {
        v23[(result >> 6) + 8] |= 1 << result;
        v24 = (v23[6] + 16 * result);
        *v24 = v12;
        v24[1] = v11;
        v25 = (v23[7] + 24 * result);
        *v25 = v30;
        v25[1] = v13;
        v25[2] = v14;
        v26 = v23[2];
        v19 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v19)
        {
          goto LABEL_16;
        }

        v23[2] = v27;
      }

      a2 = 1;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = a3;
    LOBYTE(v5) = a2;
    v6 = result;
    v8 = *(result + 32);
    v7 = *(result + 40);
    v9 = *(result + 56);
    v45 = *(result + 48);
    v10 = *a3;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    v12 = *(v10 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    LOBYTE(v16) = v11;
    v46 = v4;
    if (*(v10 + 24) < v15)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if ((v16 & 1) == (v17 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if ((v5 & 1) == 0)
    {
      v24 = result;
      specialized _NativeDictionary.copy()();
      result = v24;
      v18 = *v46;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

LABEL_7:
    v18 = *v4;
    if (v16)
    {
LABEL_8:
      v19 = 16 * result;
      v20 = (v18[7] + 16 * result);
      v22 = *v20;
      v21 = v20[1];

      v23 = (v18[7] + v19);
      *v23 = v22;
      v23[1] = v21;

LABEL_12:
      v16 = v3 - 1;
      v4 = v46;
      if (v3 == 1)
      {
        return result;
      }

      v5 = (v6 + 88);
      while (1)
      {
        v7 = *(v5 - 3);
        v9 = *(v5 - 2);
        v3 = *(v5 - 1);
        v6 = *v5;
        v34 = *v4;

        result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v14 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v14)
        {
          goto LABEL_23;
        }

        v8 = v35;
        if (*(v34 + 24) < v38)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
          if ((v8 & 1) != (v39 & 1))
          {
            goto LABEL_5;
          }
        }

        v40 = *v4;
        if (v8)
        {
          v29 = 16 * result;
          v30 = (v40[7] + 16 * result);
          v32 = *v30;
          v31 = v30[1];

          v33 = (v40[7] + v29);
          *v33 = v32;
          v33[1] = v31;
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v7;
          v41[1] = v9;
          v42 = (v40[7] + 16 * result);
          *v42 = v3;
          v42[1] = v6;
          v43 = v40[2];
          v14 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v14)
          {
            goto LABEL_24;
          }

          v40[2] = v44;
        }

        v5 += 4;
        --v16;
        v4 = v46;
        if (!v16)
        {
          return result;
        }
      }
    }

LABEL_10:
    v18[(result >> 6) + 8] |= 1 << result;
    v25 = (v18[6] + 16 * result);
    *v25 = v8;
    v25[1] = v7;
    v26 = (v18[7] + 16 * result);
    *v26 = v45;
    v26[1] = v9;
    v27 = v18[2];
    v14 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v28;
    goto LABEL_12;
  }

  return result;
}

{
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  LOBYTE(v6) = a2;
  v7 = result;
  v8 = *(result + 32);
  v9 = *(result + 40);
  v10 = *a3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    goto LABEL_21;
  }

  LOBYTE(v3) = v11;
  if (v10[3] >= v15)
  {
    goto LABEL_6;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v6 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  if ((v3 & 1) != (v16 & 1))
  {
LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_6:
    if ((v6 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  while (1)
  {
    v3 = v4 - 1;
    if (v4 == 1)
    {
      return result;
    }

    v6 = (v7 + 56);
    v4 = 1;
    while (1)
    {
      v7 = *(v6 - 1);
      v9 = *v6;
      v20 = *a3;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      v22 = v20[2];
      v23 = (v21 & 1) == 0;
      v14 = __OFADD__(v22, v23);
      v24 = v22 + v23;
      if (v14)
      {
        break;
      }

      v8 = v21;
      if (v20[3] < v24)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, 1);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
        if ((v8 & 1) != (v25 & 1))
        {
          goto LABEL_5;
        }
      }

      if ((v8 & 1) == 0)
      {
        v26 = *a3;
        *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
        *(v26[6] + 8 * result) = v7;
        *(v26[7] + 8 * result) = v9;
        v27 = v26[2];
        v14 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v14)
        {
          goto LABEL_20;
        }

        v26[2] = v28;
      }

      v6 += 2;
      if (!--v3)
      {
        return result;
      }
    }

LABEL_21:
    while (1)
    {
      __break(1u);
LABEL_22:
      v29 = result;
      specialized _NativeDictionary.copy()();
      result = v29;
      if (v3)
      {
        break;
      }

LABEL_8:
      v17 = *a3;
      *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
      *(v17[6] + 8 * result) = v8;
      *(v17[7] + 8 * result) = v9;
      v18 = v17[2];
      v14 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (!v14)
      {
        v17[2] = v19;
        goto LABEL_10;
      }

LABEL_20:
      __break(1u);
    }
  }
}

uint64_t specialized Dictionary<>.init(_:)(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= *(a1 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    ++v2;
    v7 = v6 + 48;
    v8 = *(a1 + v6 + 72);
    v6 += 48;
    if ((v8 & 1) == 0)
    {
      v9 = *(a1 + v7 - 8);
      v19 = *(a1 + v7 - 16);
      v10 = *(a1 + v7);
      v11 = *(a1 + v7 + 8);
      v12 = *(a1 + v7 + 16);

      outlined copy of TextureSource(v11, v12);
      v20 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      }

      v14 = v5[2];
      v13 = v5[3];
      if (v14 >= v13 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v5);
      }

      v5[2] = v14 + 1;
      v15 = &v5[5 * v14];
      v15[4] = v11;
      v15[5] = v12;
      v3 = v20;
      v15[6] = v19;
      v15[7] = v9;
      v15[8] = v10;
      goto LABEL_2;
    }
  }

  v16 = specialized _arrayForceCast<A, B>(_:)(v5);

  if (*(v16 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2S19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss18_DictionaryStorageCyS2S19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typetGMR);
    v17 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v21 = v17;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v16, 1, &v21);

  return v21;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_AC05MetaleF0_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMd, &_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 48)
    {
      outlined init with copy of [Input](i, &v11, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptMd, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of MetalFunctionNode(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph0aB4NodeVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for RESurfaceShaderMaterial(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RESurfaceShaderMaterial(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0cD4NodeV2IDV_AGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph5InputV_AC14FunctionNodeIDVTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(__int128 *))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 8)
    {
      v9 = *(i - 1);
      v10 = *i;
      v11 = i[1];
      v12 = i[2];
      v13 = *(i + 24);
      v14 = i[4];
      v15 = i[5];
      *&v23 = *(i - 2);
      *(&v23 + 1) = v9;
      *&v24 = v10;
      *(&v24 + 1) = v11;
      *&v25 = v12;
      BYTE8(v25) = v13;
      v26 = v14;

      result = a4(&v23);
      if (v17)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = v7[6] + 56 * result;
      v19 = v24;
      *v18 = v23;
      *(v18 + 16) = v19;
      *(v18 + 32) = v25;
      *(v18 + 48) = v26;
      *(v7[7] + 8 * result) = v15;
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_11ShaderGraph010SGDataTypeD0VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi11ShaderGraph010SGDataTypeD0VGMd, &_ss18_DictionaryStorageCySi11ShaderGraph010SGDataTypeD0VGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v19 = *(a1 + 56);
  v21 = *(a1 + 72);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  v9 = v19;
  v8 = v21;
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 128);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v12 = v3[7] + 48 * result;
    *v12 = v5;
    *(v12 + 8) = v6;
    *(v12 + 16) = v9;
    *(v12 + 32) = v8;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = (v11 + 56);
    v4 = *(v11 - 5);
    v5 = *(v11 - 4);
    v6 = *(v11 - 3);
    v18 = *v11;
    v20 = *(v11 - 1);

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    v8 = v18;
    v9 = v20;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph7SGGraphC15ReplacementNodeVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7SGGraphC15ReplacementNodeVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7SGGraphC15ReplacementNodeVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLV_AC0cD4NodeVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVAC0cD4NodeVGMd, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVAC0cD4NodeVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[6];
      *v30 = v4[5];
      *&v30[16] = v6;
      *&v30[25] = *(v4 + 105);
      v7 = v4[4];
      v28 = v4[3];
      v29 = v7;
      v8 = v4[1];
      v26[0] = *v4;
      v26[1] = v8;
      v10 = *v4;
      v9 = v4[1];
      v27 = v4[2];
      v33 = v27;
      v34 = v28;
      v35 = v7;
      v24 = *&v30[8];
      v11 = *v30;
      v12 = *&v30[24];
      v13 = *&v30[32];
      v14 = v30[40];
      v31 = v10;
      v32 = v9;
      outlined init with copy of [Input](v26, v25, &_s11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLV_AA0aB4NodeVtMd, &_s11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLV_AA0aB4NodeVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v16)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v3[6] + 80 * result);
      v18 = v34;
      v17[2] = v33;
      v17[3] = v18;
      v17[4] = v35;
      v19 = v32;
      *v17 = v31;
      v17[1] = v19;
      v20 = v3[7] + 48 * result;
      *v20 = v11;
      *(v20 + 8) = v24;
      *(v20 + 24) = v12;
      *(v20 + 32) = v13;
      *(v20 + 40) = v14;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_11;
      }

      v3[2] = v23;
      if (!i)
      {

        return v3;
      }

      v4 += 8;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC05LL3for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC17OrderedDictionaryVySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_V_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC07OrderedA0VySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_VSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC07OrderedA0VySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_VSSGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[3];
      v20 = v4[2];
      v21 = v6;
      v7 = v4[5];
      v22 = v4[4];
      v23 = v7;
      v8 = v4[1];
      v19[0] = *v4;
      v19[1] = v8;
      v9 = v7;
      v27 = v6;
      v28 = v22;
      v25 = v8;
      v26 = v20;
      v24 = v19[0];
      outlined init with copy of [Input](v19, &v18, &_s11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381I14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctiondB0CGAA0cA7ProgramC_AA17OrderedDictionaryVySSSo0T0_pGzSo10MTLLibrary_pSaySoAS_pGtKF11ConstantKeyL_V_SStMd, &_s11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381I14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctiondB0CGAA0cA7ProgramC_AA17OrderedDictionaryVySSSo0T0_pGzSo10MTLLibrary_pSaySoAS_pGtKF11ConstantKeyL_V_SStMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 80 * result);
      v13 = v27;
      v12[2] = v26;
      v12[3] = v13;
      v12[4] = v28;
      v14 = v25;
      *v12 = v24;
      v12[1] = v14;
      *(v3[7] + 16 * result) = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {

        return v3;
      }

      v4 += 6;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph13MetalDataTypeC_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph13MetalDataTypeCSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph13MetalDataTypeCSSGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVSSGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeC_ypSgtSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeC_ypSgtSgGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeC_ypSgtSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [Input](v4, &v16, &_sSS_11ShaderGraph13MetalDataTypeC_ypSgtSgtMd, &_sSS_11ShaderGraph13MetalDataTypeC_ypSgtSgtMR);
      v5 = v16;
      v6 = v17;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id outlined copy of SGDataTypeStorage(id result, id a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9)
{
  if (a9 == 23 || a9 == 22)
  {
    return result;
  }

  if (a9 == 6)
  {
  }

  return result;
}

void outlined consume of SGDataTypeStorage(void *a1, id a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9)
{
  if (a9 == 23 || a9 == 22)
  {
  }

  else if (a9 == 6)
  {
  }
}

uint64_t outlined consume of UserGraph.Adjacent?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return v6;
}

uint64_t sub_265D9E048()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t outlined consume of ShaderGraphNode?(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    outlined consume of NodePersonality(result);
  }

  return result;
}

unint64_t outlined copy of ShaderGraphNode?(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    outlined copy of NodePersonality(result);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t TextureSource.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x266772770](a4 & 1);

  return String.hash(into:)();
}

Swift::Int TextureSource.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a3 & 1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextureSource()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TextureSource(uint64_t a1)
{
  MEMORY[0x266772770](*(v1 + 16));

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureSource(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t TypedTexture.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  MEMORY[0x266772770](a4 & 1);
  String.hash(into:)();
  return (*(*a5 + 120))(a1);
}

Swift::Int TypedTexture.hashValue.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a3 & 1);
  String.hash(into:)();
  (*(*a4 + 120))(v7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TypedTexture()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v1);
  String.hash(into:)();
  (*(*v2 + 120))(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TypedTexture(uint64_t a1)
{
  v3 = *(v1 + 24);
  MEMORY[0x266772770](*(v1 + 16));
  String.hash(into:)();
  return (*(*v3 + 120))(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TypedTexture(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v2);
  String.hash(into:)();
  (*(*v3 + 120))(v5);
  return Hasher._finalize()();
}

uint64_t TextureAssignment.uniformName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TextureAssignment.source.getter()
{
  v1 = *(v0 + 24);
  outlined copy of TextureSource(v1, *(v0 + 32));
  return v1;
}

uint64_t TextureAssignment.init(uniformName:metalType:source:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextureAssignment(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return specialized static TextureAssignment.== infix(_:_:)(&v5, &v7);
}

uint64_t NodeDef.metalTextureType.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v2 == 0x7865545655647355 && v1 == 0xEC00000065727574;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (v2 == 0xD000000000000014 && 0x8000000265F2DB60 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 5;
  }

  if (v2 == 0x6567616D69 && v1 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0x616D6964656C6974 && v1 == 0xEA00000000006567 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000013 && 0x8000000265F2DB80 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000010 && 0x8000000265F2DBA0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (v2 == 0xD000000000000015 && 0x8000000265F2DBC0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000018 && 0x8000000265F2DBE0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001DLL && 0x8000000265F2DC00 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 5;
  }

  if (v2 == 0xD000000000000015 && 0x8000000265F2DC20 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (v2 == 0xD00000000000001CLL && 0x8000000265F2DC40 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (v2 == 0xD000000000000017 && 0x8000000265F2DC60 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 7;
  }

  if (v2 == 0xD000000000000013 && 0x8000000265F2DC80 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000016 && 0x8000000265F2DCA0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001BLL && 0x8000000265F2DCC0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000018 && 0x8000000265F2DCE0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001BLL && 0x8000000265F2DD00 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000020 && 0x8000000265F2DD20 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (v2 == 0xD000000000000018 && 0x8000000265F2DD50 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001BLL && 0x8000000265F2DD70 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000020 && 0x8000000265F2DD90 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001DLL && 0x8000000265F2DDC0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000020 && 0x8000000265F2DDE0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000025 && 0x8000000265F2DE10 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (v2 == 0xD000000000000013 && 0x8000000265F2DE40 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000016 && 0x8000000265F2DE60 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001BLL && 0x8000000265F2DE80 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000018 && 0x8000000265F2DEA0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001BLL && 0x8000000265F2DEC0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000020 && 0x8000000265F2DEE0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 7;
  }

  if (v2 == 0xD00000000000001ELL && 0x8000000265F2DF10 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000002FLL && 0x8000000265F2DF30 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if ((v2 != 0xD000000000000013 || 0x8000000265F2DF60 != v1) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *v0;
  v6 = v0[1];
  if (v5 == 0xD000000000000024 && 0x8000000265F2DA40 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v5 == 0xD000000000000025 && 0x8000000265F2DA70 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (v5 == 0xD000000000000024 && 0x8000000265F2DAA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v5 == 0xD000000000000025 && 0x8000000265F2DAD0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 7;
  }

  if (v5 == 0xD000000000000026 && 0x8000000265F2DB00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v5 == 0xD000000000000027 && 0x8000000265F2DB30 == v6)
  {
    return 5;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

uint64_t MTLTextureType.sgDebugName.getter(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      return 0x6562754365707974;
    }

    switch(a1)
    {
      case 7:
        return 0x443365707974;
      case 8:
        return 0xD000000000000016;
      case 9:
        return 0xD000000000000011;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x443265707974;
      }

      if (a1 != 3)
      {
        return 0xD000000000000011;
      }

      v2 = 0x443265707974;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7241000000000000;
    }

    if (!a1)
    {
      return 0x443165707974;
    }

    if (a1 == 1)
    {
      v2 = 0x443165707974;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7241000000000000;
    }
  }

  return 0x6E776F6E6B6E75;
}

uint64_t metalDataTypeForTexture(type:elementType:)(uint64_t a1, uint64_t a2)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v2 = type metadata accessor for Logger();
          __swift_project_value_buffer(v2, logger);
          v3 = Logger.logObject.getter();
          v4 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v3, v4))
          {
            goto LABEL_63;
          }

          v5 = swift_slowAlloc();
          v6 = swift_slowAlloc();
          v68 = v6;
          *v5 = 136315394;
          v7 = SGDataType.stringValue.getter();
          v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v68);

          *(v5 + 4) = v9;
          *(v5 + 12) = 2080;
          v10 = "type2DMultisample";
          goto LABEL_17;
        }

        if (a2 != 3)
        {
          if (a2 != 7)
          {
            if (a2 == 9)
            {
              if (one-time initialization token for texture2darray_float == -1)
              {
              }

              goto LABEL_98;
            }

            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v64 = type metadata accessor for Logger();
            __swift_project_value_buffer(v64, logger);
            v3 = Logger.logObject.getter();
            v4 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v3, v4))
            {
              goto LABEL_63;
            }

            v5 = swift_slowAlloc();
            v6 = swift_slowAlloc();
            v68 = v6;
            *v5 = 136315394;
            v65 = SGDataType.stringValue.getter();
            v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v68);

            *(v5 + 4) = v67;
            *(v5 + 12) = 2080;
            v21 = 0x443265707974;
            goto LABEL_24;
          }

          if (one-time initialization token for texture2darray_half == -1)
          {
          }

          goto LABEL_98;
        }

        if (one-time initialization token for texture2darray_int != -1)
        {
          goto LABEL_98;
        }
      }

      switch(a2)
      {
        case 3:
          if (one-time initialization token for texture2d_int == -1)
          {
          }

          goto LABEL_98;
        case 7:
          if (one-time initialization token for texture2d_half == -1)
          {
          }

          goto LABEL_98;
        case 9:
          if (one-time initialization token for texture2d_float == -1)
          {
          }

          goto LABEL_98;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, logger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_63;
      }

      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v68 = v6;
      *v5 = 136315394;
      v57 = SGDataType.stringValue.getter();
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v68);

      *(v5 + 4) = v59;
      *(v5 + 12) = 2080;
      v33 = 0x443265707974;
LABEL_35:
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, 0xE600000000000000, &v68);
LABEL_60:

      *(v5 + 14) = v34;
      goto LABEL_61;
    }

    if (!a1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, logger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_63;
      }

      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v68 = v6;
      *v5 = 136315394;
      v30 = SGDataType.stringValue.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v68);

      *(v5 + 4) = v32;
      *(v5 + 12) = 2080;
      v33 = 0x443165707974;
      goto LABEL_35;
    }

    if (a1 == 1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, logger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_63;
      }

      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v68 = v6;
      *v5 = 136315394;
      v18 = SGDataType.stringValue.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v68);

      *(v5 + 4) = v20;
      *(v5 + 12) = 2080;
      v21 = 0x443165707974;
LABEL_24:
      v22 = v21 & 0xFFFFFFFFFFFFLL | 0x7241000000000000;
      v23 = 0xEB00000000796172;
LABEL_30:
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v68);

      *(v5 + 14) = v28;
LABEL_61:
      _os_log_impl(&dword_265D7D000, v3, v4, "Unsupported element type %s for texture type %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266773120](v6, -1, -1);
      v39 = v5;
LABEL_62:
      MEMORY[0x266773120](v39, -1, -1);
LABEL_63:

      return 0;
    }

    goto LABEL_64;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        switch(a2)
        {
          case 3:
            if (one-time initialization token for texture3d_int == -1)
            {
            }

            goto LABEL_98;
          case 7:
            if (one-time initialization token for texture3d_half == -1)
            {
            }

            goto LABEL_98;
          case 9:
            if (one-time initialization token for texture3d_float == -1)
            {
            }

            goto LABEL_98;
        }

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        __swift_project_value_buffer(v60, logger);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_63;
        }

        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v68 = v6;
        *v5 = 136315394;
        v61 = SGDataType.stringValue.getter();
        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v68);

        *(v5 + 4) = v63;
        *(v5 + 12) = 2080;
        v33 = 0x443365707974;
        goto LABEL_35;
      case 8:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, logger);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_63;
        }

        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v68 = v6;
        *v5 = 136315394;
        v36 = SGDataType.stringValue.getter();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v68);

        *(v5 + 4) = v38;
        *(v5 + 12) = 2080;
        v16 = 0xD000000000000016;
        v15 = 0x8000000265F2DFA0;
        goto LABEL_59;
      case 9:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, logger);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_63;
        }

        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v68 = v6;
        *v5 = 136315394;
        v12 = SGDataType.stringValue.getter();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v68);

        *(v5 + 4) = v14;
        *(v5 + 12) = 2080;
        v10 = "typeTextureBuffer";
LABEL_17:
        v15 = (v10 - 32) | 0x8000000000000000;
        v16 = 0xD000000000000011;
LABEL_59:
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v68);
        goto LABEL_60;
    }

LABEL_64:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, logger);
    v3 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v43))
    {
      goto LABEL_63;
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v68 = v45;
    *v44 = 136315394;
    v46 = SGDataType.stringValue.getter();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v68);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = MTLTextureType.sgDebugName.getter(a1);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v68);

    *(v44 + 14) = v51;
    _os_log_impl(&dword_265D7D000, v3, v43, "Unsupported element type %s for texture type %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266773120](v45, -1, -1);
    v39 = v44;
    goto LABEL_62;
  }

  if (a1 != 5)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_63;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v68 = v6;
    *v5 = 136315394;
    v25 = SGDataType.stringValue.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v68);

    *(v5 + 4) = v27;
    *(v5 + 12) = 2080;
    v22 = 0x6562754365707974;
    v23 = 0xED00007961727241;
    goto LABEL_30;
  }

  if (a2 == 7)
  {
    if (one-time initialization token for texturecube_half == -1)
    {
    }

    goto LABEL_98;
  }

  if (a2 != 9)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_63;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v68 = v6;
    *v5 = 136315394;
    v53 = SGDataType.stringValue.getter();
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v68);

    *(v5 + 4) = v55;
    *(v5 + 12) = 2080;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6562754365707974, 0xE800000000000000, &v68);
    goto LABEL_60;
  }

  if (one-time initialization token for texturecube_float != -1)
  {
LABEL_98:
    swift_once();
  }
}

uint64_t specialized static TypedTexture.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a3)
  {
    if ((a7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a7)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return (*(*a4 + 128))(a8) & 1;
  }

  v9 = a8;
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  a8 = v9;
  if (v10)
  {
    return (*(*a4 + 128))(a8) & 1;
  }

  return 0;
}

uint64_t specialized static TextureSource.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

BOOL specialized static TextureAssignment.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(*a1[2] + 128))(*(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (a1[5])
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }

    if (v5 == v7 && v6 == v8)
    {
      return 1;
    }
  }

  else
  {
    if (*(a2 + 40))
    {
      return 0;
    }

    if (v5 == v7 && v6 == v8)
    {
      return 1;
    }
  }

  return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
}

uint64_t specialized SGNode.textureType(nodeDefStore:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___SGNode_data);
  if (*(v1 + OBJC_IVAR___SGNode_data + 80) > 0x3Fu)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = v1;
  v5 = *v2;
  v6 = v2[1];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(*v2, v6);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 56) + 152 * v7;
  v10 = *(v9 + 16);
  v53[0] = *v9;
  v53[1] = v10;
  v11 = *(v9 + 80);
  v13 = *(v9 + 32);
  v12 = *(v9 + 48);
  v53[4] = *(v9 + 64);
  v53[5] = v11;
  v53[2] = v13;
  v53[3] = v12;
  v15 = *(v9 + 112);
  v14 = *(v9 + 128);
  v16 = *(v9 + 96);
  v54 = *(v9 + 144);
  v53[7] = v15;
  v53[8] = v14;
  v53[6] = v16;
  v17 = v53[0];
  if (v53[0] == __PAIR128__(0xEF65727574786554, 0x56556473555F444ELL) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v5 == 0xD000000000000024 ? (v18 = 0x8000000265F2DA40 == v6) : (v18 = 0), v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (one-time initialization token for texture2d_half == -1)
    {
    }

LABEL_62:
    swift_once();
  }

  v20 = v5 == 0xD000000000000025 && 0x8000000265F2DA70 == v6;
  if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for texture2d_float == -1)
    {
    }

    goto LABEL_62;
  }

  v21 = v5 == 0xD000000000000024 && 0x8000000265F2DAA0 == v6;
  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for texture3d_half == -1)
    {
    }

    goto LABEL_62;
  }

  if (v5 == 0xD000000000000025 && 0x8000000265F2DAD0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for texture3d_float == -1)
    {
    }

    goto LABEL_62;
  }

  if (v5 == 0xD000000000000026 && 0x8000000265F2DB00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for texturecube_half == -1)
    {
    }

    goto LABEL_62;
  }

  if (v5 == 0xD000000000000027 && 0x8000000265F2DB30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for texturecube_float == -1)
    {
    }

    goto LABEL_62;
  }

  v22 = NodeDef.metalTextureType.getter();
  if (v23)
  {
    outlined init with copy of NodeDef(v53, v52);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, logger);
    outlined init with copy of NodeDef(v53, v52);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    outlined destroy of NodeDef(v53);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v52[0] = v28;
      *v27 = 136315138;

      outlined destroy of NodeDef(v53);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, *(&v17 + 1), v52);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_265D7D000, v25, v26, "Unable to determine texture type for nodeDef %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x266773120](v28, -1, -1);
      MEMORY[0x266773120](v27, -1, -1);
    }

    else
    {

      outlined destroy of NodeDef(v53);
    }

    return 0;
  }

  v30 = v22;
  v31 = *(v4 + OBJC_IVAR___SGNode_outputs);
  if (!(v31 >> 62))
  {
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

LABEL_66:
    if (one-time initialization token for logger == -1)
    {
LABEL_67:
      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, logger);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_265D7D000, v48, v49, "Unable to find expected output on node.", v50, 2u);
        MEMORY[0x266773120](v50, -1, -1);
      }

      return 0;
    }

LABEL_73:
    swift_once();
    goto LABEL_67;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_66;
  }

LABEL_50:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x266772030](0, v31);
    goto LABEL_53;
  }

  if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_73;
  }

  v32 = *(v31 + 32);
LABEL_53:
  v33 = v32;
  v34 = OBJC_IVAR___SGOutput_type;
  swift_beginAccess();
  v35 = SGDataType.vectorElementType()(*&v33[v34]);
  if ((v36 & 1) == 0)
  {
    v46 = metalDataTypeForTexture(type:elementType:)(v30, v35);

    return v46;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, logger);
  v38 = v33;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v51 = v42;
    *v41 = 136315138;
    v43 = SGDataType.stringValue.getter();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v51);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_265D7D000, v39, v40, "Output type has no vector element type. %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x266773120](v42, -1, -1);
    MEMORY[0x266773120](v41, -1, -1);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type TextureSource and conformance TextureSource()
{
  result = lazy protocol witness table cache variable for type TextureSource and conformance TextureSource;
  if (!lazy protocol witness table cache variable for type TextureSource and conformance TextureSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureSource and conformance TextureSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TypedTexture and conformance TypedTexture()
{
  result = lazy protocol witness table cache variable for type TypedTexture and conformance TypedTexture;
  if (!lazy protocol witness table cache variable for type TypedTexture and conformance TypedTexture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedTexture and conformance TypedTexture);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextureSource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for TextureSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

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

uint64_t getEnumTagSinglePayload for TypedTexture(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for TypedTexture(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

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

uint64_t getEnumTagSinglePayload for TextureAssignment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for TextureAssignment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph6SGNodeCG_SO_AF0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_GtsAE_pTg504_s11d8Graph010hi104B0V_10idSequence9constantsAcA7SGGraphC_AA015InfiniteIntegerF0VzSayAA21FunctionConstantValueVGtKcfcSO_AA0m2V4g6VyAC11j7V_GtAA6F8CKXEfU1_SiAF0tU8SequenceVAKyAQGTf1cn_n(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v73 = a4;
  if (result >> 62)
  {
    goto LABEL_30;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v8 = result;
  v70 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v70;
    v10 = v8;
    v46 = v8 & 0xFFFFFFFFFFFFFF8;
    v47 = v4;
    v49 = v6 - 1;
    v50 = v8 & 0xC000000000000001;
    v53 = a2;
    v48 = v8;
    while (1)
    {
      v52 = v7;
      if (v50)
      {
        v11 = MEMORY[0x266772030](v9, v10);
      }

      else
      {
        if (v9 >= *(v46 + 16))
        {
          goto LABEL_29;
        }

        v11 = *(v10 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = *&v11[OBJC_IVAR___SGNode_data + 16];
      v64 = *&v11[OBJC_IVAR___SGNode_data];
      v65 = v13;
      v15 = *&v11[OBJC_IVAR___SGNode_data + 48];
      v14 = *&v11[OBJC_IVAR___SGNode_data + 64];
      v16 = *&v11[OBJC_IVAR___SGNode_data + 32];
      v69 = v11[OBJC_IVAR___SGNode_data + 80];
      v67 = v15;
      v68 = v14;
      v66 = v16;
      v17 = v64;
      v18 = v65;
      v19 = v16;
      v20 = v69 >> 6;
      v51 = v9;
      if (v20)
      {
        if (v20 == 1)
        {
          v21 = swift_allocObject();
          v22 = v17;
          v4 = v47;
          specialized SGDataTypeGraph.init(_:idSequence:constants:)(v22, a3, MEMORY[0x277D84F90], v71);
          if (v47)
          {
            swift_deallocUninitializedObject();

            return v7;
          }

          v23 = v71[1];
          *(v21 + 16) = v71[0];
          *(v21 + 32) = v23;
          *(v21 + 48) = v71[2];
          v24 = v21 | 0x4000000000000000;
          v25 = *&v12[OBJC_IVAR___SGNode_name];
          v26 = *&v12[OBJC_IVAR___SGNode_name + 8];
          goto LABEL_17;
        }

        v28 = v69 & 0x3F;
        v29 = swift_allocObject();
        *(v29 + 16) = v17;
        *(v29 + 32) = v18;
        *(v29 + 48) = v19;
        v30 = v68;
        *(v29 + 64) = v67;
        *(v29 + 80) = v30;
        *(v29 + 96) = v28;
        v24 = v29 | 0x8000000000000000;
      }

      else
      {
        v27 = *(&v64 + 1);
        v24 = swift_allocObject();
        *(v24 + 16) = v17;
        *(v24 + 24) = v27;
        *(v24 + 32) = v18;
        *(v24 + 48) = v19;
      }

      v25 = *&v12[OBJC_IVAR___SGNode_name];
      v26 = *&v12[OBJC_IVAR___SGNode_name + 8];
      outlined init with copy of NodeData(&v64, &v61);
LABEL_17:

      v31 = *v73;
      v72[0] = *(*v73 + 16);
      v32 = v72[0];
      v72[1] = v53;
      v72[2] = v24;
      v72[3] = v25;
      v72[4] = v26;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      _s11ShaderGraph0B0V8AdjacentVyAEyx_GAC4NodeVyx_GcfCAA010SGDataTypeB0V11PersonalityV_Tt0g5Tf4g_n(v72, &v58);
      *&v61 = v32;
      *(&v61 + 1) = v53;
      *&v62 = v24;
      *(&v62 + 1) = v25;
      *v63 = v26;
      *&v63[8] = v58;
      *&v63[24] = v59;
      *&v63[40] = v60;
      outlined init with copy of [Input](&v61, v54, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
      }

      v34 = v31[2];
      v33 = v31[3];
      v35 = v12;
      if (v34 >= v33 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
      }

      a2 = v53;
      v54[0] = v32;
      v54[1] = v53;
      v54[2] = v24;
      v54[3] = v25;
      v54[4] = v26;
      v55 = v58;
      v56 = v59;
      v57 = v60;
      outlined destroy of [Input](v54, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      v31[2] = v34 + 1;
      v36 = &v31[11 * v34];
      v37 = v62;
      *(v36 + 2) = v61;
      *(v36 + 3) = v37;
      v39 = *&v63[16];
      v38 = *&v63[32];
      v40 = *v63;
      v36[14] = *&v63[48];
      *(v36 + 5) = v39;
      *(v36 + 6) = v38;
      *(v36 + 4) = v40;
      *v73 = v31;

      v7 = v52;
      v70 = v52;
      v42 = *(v52 + 16);
      v41 = *(v52 + 24);
      if (v42 >= v41 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
        v7 = v70;
      }

      *(v7 + 16) = v42 + 1;
      v43 = (v7 + 48 * v42);
      v43[4] = v35;
      v43[5] = v32;
      v43[6] = v53;
      v43[7] = v24;
      v43[8] = v25;
      v43[9] = v26;
      if (v49 == v51)
      {
        return v7;
      }

      v9 = v51 + 1;
      v10 = v48;
      if (__OFADD__(v51 + 1, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        v44 = result;
        v6 = __CocoaSet.count.getter();
        result = v44;
        goto LABEL_3;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph21FunctionConstantValueVG_SS_AF0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_Gts5NeverOTg504_s11d8Graph010jk70B0V_10idSequence9constantsAcA7SGGraphC_AA015InfiniteIntegerF0VzSayAA21fgh13VGtKcfcSS_AA0p2V4i6VyAC11L12V_GtAKXEfU2_SiAKyAQGTf1cn_n(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v55 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v35 = v4 - 1;
    v36 = v55;
    v7 = a1 + 64;
    v34 = a3;
    while (1)
    {
      v8 = *(v7 - 16);
      v47 = *(v7 - 32);
      v48 = v8;
      v9 = *(v7 + 48);
      v49[2] = *(v7 + 32);
      v49[3] = v9;
      v50 = *(v7 + 64);
      v10 = *(v7 + 16);
      v49[0] = *v7;
      v49[1] = v10;
      v11 = v47;
      v12 = v48;
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v14 = *(v7 + 48);
      *(v13 + 64) = *(v7 + 32);
      *(v13 + 80) = v14;
      *(v13 + 96) = *(v7 + 64);
      v15 = *(v7 + 16);
      *(v13 + 32) = *v7;
      *(v13 + 48) = v15;
      v16 = v13 | 0x8000000000000000;
      *&v39 = 0x5F436E6366;
      *(&v39 + 1) = 0xE500000000000000;
      outlined init with copy of FunctionConstantValue(&v47, v42);
      outlined init with copy of SGDataTypeStorage(v49, v42);
      MEMORY[0x266771550](v11, *(&v11 + 1));
      v17 = v39;
      v18 = *a3;
      v19 = *(*a3 + 16);
      *&v53 = v19;
      *(&v53 + 1) = a2;
      *v54 = v16;
      *&v54[8] = v39;
      swift_retain_n();
      swift_bridgeObjectRetain_n();

      _s11ShaderGraph0B0V8AdjacentVyAEyx_GAC4NodeVyx_GcfCAA010SGDataTypeB0V11PersonalityV_Tt0g5Tf4g_n(&v53, &v39);
      *&v51 = v19;
      *(&v51 + 1) = a2;
      *v52 = v16;
      *&v52[8] = v17;
      *&v52[24] = v39;
      *&v52[40] = v40;
      *&v52[56] = v41;
      outlined init with copy of [Input](&v51, v42, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
      }

      v42[0] = v19;
      v42[1] = a2;
      v42[2] = v16;
      v43 = v17;
      v44 = v39;
      v45 = v40;
      v46 = v41;
      outlined destroy of [Input](v42, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      v18[2] = v21 + 1;
      v22 = &v18[11 * v21];
      v23 = *v52;
      *(v22 + 2) = v51;
      *(v22 + 3) = v23;
      v24 = *&v52[48];
      v25 = *&v52[32];
      v26 = *&v52[16];
      v22[14] = *&v52[64];
      *(v22 + 5) = v25;
      *(v22 + 6) = v24;
      *(v22 + 4) = v26;
      a3 = v34;
      *v34 = v18;

      outlined destroy of FunctionConstantValue(&v47);
      v27 = v53;
      v28 = *v54;
      v29 = *&v54[16];
      result = v36;
      v55 = v36;
      v31 = *(v36 + 16);
      v30 = *(v36 + 24);
      if (v31 >= v30 >> 1)
      {
        v37 = v53;
        v33 = *v54;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v28 = v33;
        v27 = v37;
        result = v55;
      }

      *(result + 16) = v11 + 1;
      v32 = result + 56 * v11;
      *(v32 + 32) = v11;
      *(v32 + 48) = v27;
      *(v32 + 64) = v28;
      *(v32 + 80) = v29;
      if (!v35)
      {
        break;
      }

      --v35;
      v36 = result;
      v7 += 112;
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_SS_SSts5NeverOTg5149_s11ShaderGraph010SGDataTypeB0V18structuralEdgeList15topologicalSort14textureMappingSaySSGAC011TopologicalI0V_SDyS2SGtKFSS_SStSS3key_SS5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v33 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v33;
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v26 = v3 + 72;
  v27 = v1;
  v28 = v8;
  v29 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v30 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = v11[1];
    v13 = (*(v3 + 56) + 16 * v6);
    v31 = *v13;
    v32 = *v11;
    v14 = v3;
    v15 = v13[1];
    v16 = *(v33 + 16);
    v17 = *(v33 + 24);

    if (v16 >= v17 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v16 + 1, 1);
    }

    *(v33 + 16) = v16 + 1;
    v18 = (v33 + 32 * v16);
    v18[4] = v31;
    v18[5] = v15;
    v18[6] = v32;
    v18[7] = v12;
    v9 = 1 << *(v14 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v14;
    v4 = v29;
    v19 = *(v29 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v28;
    if (v28 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (v26 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = outlined consume of [String : String].Index._Variant(v6, v28, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : String].Index._Variant(v6, v28, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v27)
    {
      return v2;
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
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void SGDataTypeGraph.PersonalityKind.hash(into:)(__int128 *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      v3 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v9 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v10 = v3;
      v8 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v12 = *(&v9 + 1);
      *(&v12 + 1) = v3;
      v13 = v4;
      v7[0] = *(&v3 + 1);
      MEMORY[0x266772770](1);
      outlined init with copy of String(&v13, &v11);
      outlined init with copy of [Input](&v12, &v11, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      outlined init with copy of [Input](&v12 + 8, &v11, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      outlined init with copy of [Input](v7, &v11, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
      SGDataTypeGraph.hash(into:)(a1);
      outlined destroy of String(&v13);
      outlined destroy of [Input](&v12, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      outlined destroy of [Input](&v12 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      outlined destroy of [Input](v7, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    }

    else
    {
      v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x266772770](2);
      MEMORY[0x266772770](v6);
      SGDataTypeStorage.hash(into:)(a1);
    }
  }

  else
  {
    v5 = *(a2 + 32);
    v8 = *(a2 + 16);
    v9 = v5;
    v10 = *(a2 + 48);
    v11 = v8;
    v12 = v5;
    v13 = v10;
    MEMORY[0x266772770](0);
    outlined init with copy of String(&v11, v7);
    outlined init with copy of [Input](&v12, v7, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined init with copy of [Input](&v12 + 8, v7, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined init with copy of MaterialXAvailability(&v13, v7);
    BuiltInDefinition.hash(into:)(a1);
    outlined destroy of String(&v11);
    outlined destroy of [Input](&v12, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined destroy of [Input](&v12 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined destroy of MaterialXAvailability(&v13);
  }
}

Swift::Int SGDataTypeGraph.PersonalityKind.hashValue.getter(unint64_t a1)
{
  Hasher.init(_seed:)();
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v2 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v12 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v13 = v2;
      v11 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v17 = __PAIR128__(v2, *(&v12 + 1));
      v9[0] = *(&v2 + 1);
      MEMORY[0x266772770](1);
      outlined init with copy of String(&v18, &v16);
      outlined init with copy of [Input](&v17, &v16, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      outlined init with copy of [Input](&v17 + 8, &v16, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      outlined init with copy of [Input](v9, &v16, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
      SGDataTypeGraph.hash(into:)(v10);
      outlined destroy of String(&v18);
      outlined destroy of [Input](&v17, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      outlined destroy of [Input](&v17 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      outlined destroy of [Input](v9, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    }

    else
    {
      v4 = a1 & 0x3FFFFFFFFFFFFFFFLL;
      v5 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *(v4 + 64);
      v14 = *(v4 + 80);
      v15 = *(v4 + 96);
      v7 = *(v4 + 32);
      v12 = *(v4 + 48);
      v13 = v6;
      v11 = v7;
      MEMORY[0x266772770](2);
      MEMORY[0x266772770](v5);
      SGDataTypeStorage.hash(into:)(v10);
    }
  }

  else
  {
    v3 = *(a1 + 32);
    v11 = *(a1 + 16);
    v12 = v3;
    v13 = *(a1 + 48);
    v16 = v11;
    v17 = v3;
    v18 = v13;
    MEMORY[0x266772770](0);
    outlined init with copy of String(&v16, v9);
    outlined init with copy of [Input](&v17, v9, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined init with copy of [Input](&v17 + 8, v9, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined init with copy of MaterialXAvailability(&v18, v9);
    BuiltInDefinition.hash(into:)(v10);
    outlined destroy of String(&v16);
    outlined destroy of [Input](&v17, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined destroy of [Input](&v17 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined destroy of MaterialXAvailability(&v18);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGDataTypeGraph.PersonalityKind(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  SGDataTypeGraph.PersonalityKind.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t static SGDataTypeGraph.Personality.== infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != a5 || (specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(a2, a6) & 1) == 0)
  {
    return 0;
  }

  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t SGDataTypeGraph.Personality.hash(into:)(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x266772770](a2);
  if (a3 >> 62)
  {
    if (a3 >> 62 == 1)
    {
      v7 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v17 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v18 = v7;
      v16 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v22 = __PAIR128__(v7, *(&v17 + 1));
      v23 = v8;
      v15[0] = *(&v7 + 1);
      MEMORY[0x266772770](1);
      outlined init with copy of String(&v23, &v21);
      outlined init with copy of [Input](&v22, &v21, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      outlined init with copy of [Input](&v22 + 8, &v21, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      outlined init with copy of [Input](v15, &v21, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
      SGDataTypeGraph.hash(into:)(a1);
      outlined destroy of String(&v23);
      outlined destroy of [Input](&v22, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      outlined destroy of [Input](&v22 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      outlined destroy of [Input](v15, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    }

    else
    {
      v10 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v11 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *(v10 + 80);
      v18 = *(v10 + 64);
      v19 = v12;
      v20 = *(v10 + 96);
      v13 = *(v10 + 48);
      v16 = *(v10 + 32);
      v17 = v13;
      MEMORY[0x266772770](2);
      MEMORY[0x266772770](v11);
      SGDataTypeStorage.hash(into:)(a1);
    }
  }

  else
  {
    v9 = *(a3 + 32);
    v16 = *(a3 + 16);
    v17 = v9;
    v18 = *(a3 + 48);
    v21 = v16;
    v22 = v9;
    v23 = v18;
    MEMORY[0x266772770](0);
    outlined init with copy of String(&v21, v15);
    outlined init with copy of [Input](&v22, v15, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined init with copy of [Input](&v22 + 8, v15, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined init with copy of MaterialXAvailability(&v23, v15);
    BuiltInDefinition.hash(into:)(a1);
    outlined destroy of String(&v21);
    outlined destroy of [Input](&v22, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined destroy of [Input](&v22 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined destroy of MaterialXAvailability(&v23);
  }

  return String.hash(into:)();
}

Swift::Int SGDataTypeGraph.Personality.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  SGDataTypeGraph.Personality.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGDataTypeGraph.Personality()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  SGDataTypeGraph.Personality.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGDataTypeGraph.Personality(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  Hasher.init(_seed:)();
  SGDataTypeGraph.Personality.hash(into:)(v7, v2, v3, v5, v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGDataTypeGraph.Personality(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if ((specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v2 == v4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t SGDataTypeGraph.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SGDataTypeGraph.graph.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

double SGDataTypeGraph.argumentsNode.getter@<D0>(uint64_t a1@<X8>)
{
  specialized SGDataTypeGraph.argumentsNode.getter(v5, *(v1 + 40));
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double SGDataTypeGraph.resultNode.getter@<D0>(uint64_t a1@<X8>)
{
  specialized SGDataTypeGraph.resultNode.getter(v5, *(v1 + 40));
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t SGDataTypeGraph.hash(into:)(__int128 *a1)
{
  v2 = v1;
  MEMORY[0x266772770](*v2);
  String.hash(into:)();
  v4 = v2[3];
  v5 = *(v4 + 16);
  MEMORY[0x266772770](v5);
  if (v5)
  {
    v6 = (v4 + 56);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v6 += 32;

      String.hash(into:)();
      MEMORY[0x266772770](v7);
      Hasher._combine(_:)(v8);

      --v5;
    }

    while (v5);
  }

  v9 = v2[4];
  v10 = *(v9 + 16);
  MEMORY[0x266772770](v10);
  if (v10)
  {
    v11 = (v9 + 48);
    do
    {
      v12 = *v11;
      v11 += 3;

      String.hash(into:)();
      MEMORY[0x266772770](v12);

      --v10;
    }

    while (v10);
  }

  v13 = v2[5];

  return specialized Array<A>.hash(into:)(a1, v13);
}

Swift::Int SGDataTypeGraph.hashValue.getter()
{
  Hasher.init(_seed:)();
  SGDataTypeGraph.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t SGDataTypeGraph.init(id:name:inputs:outputs:graph:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGDataTypeGraph()
{
  Hasher.init(_seed:)();
  SGDataTypeGraph.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGDataTypeGraph(uint64_t a1)
{
  Hasher.init(_seed:)();
  SGDataTypeGraph.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for static Equatable.== infix(_:_:) in conformance SGDataTypeGraph(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return specialized static SGDataTypeGraph.== infix(_:_:)(v7, v8) & 1;
}

Swift::String __swiftcall SGDataTypeGraph.Personality.operationalDescription(replacements:)(Swift::OpaquePointer replacements)
{
  v2 = specialized SGDataTypeGraph.Personality.operationalDescription(replacements:)(replacements._rawValue, v1);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t SGDataTypeGraph.Personality.description.getter(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      v2 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v3 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);

      MEMORY[0x266771550](v2, v3);

      MEMORY[0x266771550](41, 0xE100000000000000);
      return 0x706172476C6C6163;
    }

    else
    {
      v7 = SGDataTypeStorage.valueString.getter();
      MEMORY[0x266771550](8250, 0xE200000000000000);
      v6 = SGDataType.stringValue.getter();
      MEMORY[0x266771550](v6);

      return v7;
    }
  }

  else
  {
    v5 = *(a2 + 16);

    return v5;
  }
}

double Graph.Node<>.input(named:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  specialized Graph.Node<>.input(named:)(a1, a2, *v3, *(v3 + 16), &v7);
  v5 = v8[0];
  *a3 = v7;
  a3[1] = v5;
  result = *(v8 + 9);
  *(a3 + 25) = *(v8 + 9);
  return result;
}

double Graph.Node<>.output(named:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized Graph.Node<>.output(named:)(a1, a2, *v3, *(v3 + 16), v7);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  return result;
}

uint64_t SGDataTypeGraph.TopologicalSort.Element.node.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t SGDataTypeGraph.TopologicalSort.Element.graphName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SGDataTypeGraph.TopologicalSort.Element.nodeGraphCallNode.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

__n128 SGDataTypeGraph.TopologicalSort.Element.init(node:graphID:graphName:nodeGraphCallNode:elementIndex:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a1 + 32);
  result = *a1;
  v10 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v10;
  *(a8 + 32) = v8;
  *(a8 + 40) = a2;
  *(a8 + 48) = a3;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  *(a8 + 72) = a6 & 1;
  *(a8 + 80) = a7;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SGDataTypeGraph.TopologicalSort.Element(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static SGDataTypeGraph.TopologicalSort.Element.== infix(_:_:)(v7, v9);
}

Swift::Int SGDataTypeGraph.NodeID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  MEMORY[0x266772770](a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGDataTypeGraph.NodeID()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v1);
  MEMORY[0x266772770](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GraphIndex()
{
  v1 = v0[1];
  MEMORY[0x266772770](*v0);
  return MEMORY[0x266772770](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGDataTypeGraph.NodeID(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v2);
  MEMORY[0x266772770](v3);
  return Hasher._finalize()();
}

uint64_t SGDataTypeGraph.TopologicalSort.rootGraph.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

__n128 SGDataTypeGraph.TopologicalSort.init(elements:graphs:nodeElements:rootGraph:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v5 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *(a5 + 40) = v5;
  result = *(a4 + 32);
  *(a5 + 56) = result;
  return result;
}

uint64_t SGDataTypeGraph.topologicalSort()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v48 = (v1 + 1);
  v50 = *v1;
  v51 = *(v1 + 2);
  v52 = *(v1 + 1);
  into._rawValue = MEMORY[0x277D84F90];
  graphs._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_11ShaderGraph010SGDataTypeD0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v63.value = 0;
  v63.is_nil = 1;
  v49 = v1;
  SGDataTypeGraph.collectNodes(into:graphs:from:)(&into, &graphs, v63);
  rawValue = into._rawValue;
  v5 = *(into._rawValue + 2);
  v6 = lazy protocol witness table accessor for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID();
  v7 = MEMORY[0x2667712B0](v5, &type metadata for SGDataTypeGraph.NodeID, MEMORY[0x277D83B88], v6);
  v8 = rawValue;
  v53 = v7;
  v9 = rawValue[2];
  v10 = graphs._rawValue;
  if (!v9)
  {
    goto LABEL_22;
  }

  v11 = 0;
  v12 = (rawValue + 8);
  v46 = v3;
  v47 = a1;
  v54 = rawValue[2];
  v55 = graphs._rawValue;
  v45 = (rawValue + 8);
  while (2)
  {
    v13 = &v12[88 * v11];
    v14 = v11;
    while (1)
    {
      if (v14 >= v9)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_24;
      }

      if (v10[2])
      {
        v15 = *(v13 - 4);
        v16 = *(v13 + 6);
        v17 = v8;
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(*(v13 + 1));
        v9 = v54;
        v10 = v55;
        v8 = v17;
        if (v19)
        {
          break;
        }
      }

      ++v14;
      v13 += 88;
      if (v11 == v9)
      {
        v3 = v46;
        a1 = v47;
        goto LABEL_22;
      }
    }

    v44 = v16;
    v20 = *(v55[7] + 48 * v18);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v62 = v53;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v15);
    v24 = *(v53 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (*(v53 + 24) < v26)
    {
      v27 = v22;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
      v28 = v15;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v15);
      v31 = v30 & 1;
      v22 = v27;
      v32 = v27 & 1;
      v3 = v46;
      a1 = v47;
      if (v32 == v31)
      {
        v23 = v29;
        goto LABEL_15;
      }

LABEL_27:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v28 = v15;
    v33 = isUniquelyReferenced_nonNull_native;
    v3 = v46;
    a1 = v47;
    if ((v33 & 1) == 0)
    {
      v39 = v22;
      v40 = v23;
      specialized _NativeDictionary.copy()();
      v23 = v40;
      v22 = v39;
    }

LABEL_15:
    v34 = v62;
    v53 = v62;
    if ((v22 & 1) == 0)
    {
      *(v62 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v35 = (v34[6] + 16 * v23);
      *v35 = v20;
      v35[1] = v28;
      *(v34[7] + 8 * v23) = v44;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (!v37)
      {
        v34[2] = v38;
        goto LABEL_19;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *(*(v62 + 56) + 8 * v23) = v44;
LABEL_19:

    v9 = v54;
    v10 = v55;
    v12 = v45;
    v8 = v17;
    if (v11 != v54)
    {
      continue;
    }

    break;
  }

LABEL_22:
  v62 = *v48;
  v41 = v49[3];
  v60 = v49[4];
  v61 = v41;
  v59 = v49[5];
  v42 = v8;
  outlined init with copy of String(&v62, v56);
  outlined init with copy of [Input](&v61, v56, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
  outlined init with copy of [Input](&v60, v56, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
  result = outlined init with copy of [Input](&v59, v56, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
  *a1 = v42;
  *(a1 + 8) = v10;
  *(a1 + 16) = v53;
  *(a1 + 24) = v50;
  *(a1 + 32) = v3;
  *(a1 + 40) = v52;
  *(a1 + 56) = v51;
  return result;
}

Swift::Void __swiftcall SGDataTypeGraph.collectNodes(into:graphs:from:)(Swift::OpaquePointer *into, Swift::OpaquePointer *graphs, Swift::Int_optional from)
{
  is_nil = from.is_nil;
  value = from.value;
  v5 = *(v3 + 40);
  specialized SGDataTypeGraph.resultNode.getter(v74, v5);
  v6 = v75;
  if (v75)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0E0V4NodeVyAC010SGDataTypeE0V11PersonalityV_GGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0E0V4NodeVyAC010SGDataTypeE0V11PersonalityV_GGMR);
    v7 = swift_allocObject();
    v8 = v74[1];
    *(v7 + 32) = v74[0];
    *(v7 + 48) = v8;
    *(v7 + 16) = xmmword_265F1F670;
    *(v7 + 64) = v6;

    outlined destroy of [Input](v74, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = *v60;
  if (!*(graphs->_rawValue + 2) || (specialized __RawDictionaryStorage.find<A>(_:)(*v60), (v10 & 1) == 0))
  {
    v82[0] = *(v60 + 8);
    v11 = *(v60 + 24);
    v80 = *(v60 + 32);
    v81 = v11;
    outlined init with copy of String(v82, &v69);
    outlined init with copy of [Input](&v81, &v69, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined init with copy of [Input](&v80, &v69, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69 = graphs->_rawValue;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v60, v9, isUniquelyReferenced_nonNull_native);
    graphs->_rawValue = v69;
  }

  v57 = v9;

  v13 = MEMORY[0x277D84F90];
  v14 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(MEMORY[0x277D84F90]);
  v16 = v15;
  v17 = v5;
  v18 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(v13);
  v20 = v19;
  v21 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_s16IndexingIteratorVySayAA0B5IndexVGGSaySi_AMtGTt0g5Tf4g_n(v13);
  *&v69 = v17;
  *(&v69 + 1) = v7;
  *&v70 = v14;
  *(&v70 + 1) = v16;
  *&v71 = v18;
  *(&v71 + 1) = v20;
  *&v72 = v21;
  *(&v72 + 1) = v22;
  v73 = v23;
  v67 = v72;
  v68 = v23;
  v65 = v70;
  v66 = v71;
  v64 = v69;
  outlined init with copy of [Input](&v69, v62, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
  specialized ShallowDepthFirstNodeIterator.next()(&v76);
  v24 = v79;
  if (!v79)
  {
LABEL_34:
    v62[2] = v66;
    v62[3] = v67;
    v63 = v68;
    v62[0] = v64;
    v62[1] = v65;
    outlined destroy of [Input](v62, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
    outlined destroy of [Input](&v69, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
    return;
  }

  v25 = v78;
  v26 = v77;
  v56 = into;
  while (1)
  {
    v29 = v76;
    v61 = v26;
    if (*(&v26 + 1) >> 62 == 1)
    {
      break;
    }

    v42 = *(v60 + 8);
    v43 = *(v60 + 16);
    rawValue = into->_rawValue;
    v44 = *(into->_rawValue + 2);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 + 1, 1, rawValue);
    }

    v46 = *(rawValue + 2);
    v45 = *(rawValue + 3);
    v47 = v61;
    if (v46 >= v45 >> 1)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, rawValue);
      v47 = v61;
      rawValue = v48;
    }

    *(rawValue + 2) = v46 + 1;
    v27 = &rawValue[88 * v46];
    *(v27 + 4) = v29;
    *(v27 + 40) = v47;
    *(v27 + 7) = v25;
    *(v27 + 8) = v24;
    *(v27 + 9) = v57;
    *(v27 + 10) = v42;
    *(v27 + 11) = v43;
    *(v27 + 12) = value;
    v27[104] = is_nil;
    v28 = v62[0];
    *(v27 + 27) = *(v62 + 3);
    *(v27 + 105) = v28;
    *(v27 + 14) = v44;
LABEL_10:
    into = v56;
    v56->_rawValue = rawValue;
    specialized ShallowDepthFirstNodeIterator.next()(&v76);
    v26 = v77;
    v25 = v78;
    v24 = v79;
    if (!v79)
    {
      goto LABEL_34;
    }
  }

  v54 = v76;
  v55 = v25;
  v30 = *((*(&v26 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v31 = *((*(&v26 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v83 = *((*(&v26 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v84 = v30;
  v82[1] = *((*(&v26 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v86 = *(&v83 + 1);
  v87[0] = v30;
  v85 = v31;
  v32 = *(into->_rawValue + 2);

  outlined init with copy of String(&v85, v62);
  outlined init with copy of [Input](&v86, v62, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
  outlined init with copy of [Input](v87, v62, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
  outlined init with copy of [Input](v87 + 8, v62, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
  v88.value = v32;
  v88.is_nil = 0;
  SGDataTypeGraph.collectNodes(into:graphs:from:)(into, graphs, v88);
  outlined destroy of String(&v85);
  outlined destroy of [Input](&v86, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
  outlined destroy of [Input](v87, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
  outlined destroy of [Input](v87 + 8, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
  v33 = *(v60 + 8);
  v34 = *(v60 + 16);
  rawValue = into->_rawValue;
  v36 = *(into->_rawValue + 2);
  if (v36 < v32)
  {
    goto LABEL_37;
  }

  if (v32 == v36)
  {

LABEL_15:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
    }

    v38 = *(rawValue + 2);
    v37 = *(rawValue + 3);
    v39 = v61;
    if (v38 >= v37 >> 1)
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, rawValue);
      v39 = v61;
      rawValue = v52;
    }

    *(rawValue + 2) = v38 + 1;
    v40 = &rawValue[88 * v38];
    *(v40 + 4) = v54;
    *(v40 + 40) = v39;
    *(v40 + 7) = v55;
    *(v40 + 8) = v24;
    *(v40 + 9) = v57;
    *(v40 + 10) = v33;
    *(v40 + 11) = v34;
    *(v40 + 12) = value;
    v40[104] = is_nil;
    v41 = v62[0];
    *(v40 + 27) = *(v62 + 3);
    *(v40 + 105) = v41;
    *(v40 + 14) = v36;

    goto LABEL_10;
  }

  if (v32 >= v36)
  {
    goto LABEL_38;
  }

  v49 = 88 * v32;
  v50 = v32;
  while (v50 < *(rawValue + 2))
  {
    if ((rawValue[v49 + 104] & 1) == 0 && *&rawValue[v49 + 96] == v32)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(rawValue);
      }

      if (v50 >= *(rawValue + 2))
      {
        goto LABEL_36;
      }

      v51 = &rawValue[v49];
      *(v51 + 12) = v36;
      v51[104] = 0;
    }

    ++v50;
    v49 += 88;
    if (v36 == v50)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

void specialized ShallowDepthFirstNodeIterator.next()(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = v2 + 2;
  v3 = v2[2];
  v5 = 0uLL;
  if (!v3)
  {
    v9 = 0;
    v56 = 0uLL;
    goto LABEL_54;
  }

  v6 = v1;
  v59 = a1;
  while (1)
  {
    v7 = &v2[5 * v3];
    v8 = *(v7 - 1);
    v9 = v7[3];
    v10 = *(v6 + 48);
    v11 = *(v6 + 56);
    v12 = *(v6 + 64);
    v13 = v11 + 32;
    v14 = *(v11 + 16);
    v60 = *(v7 + 1);
    v61 = v8;
    if (v10)
    {
      v15 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v8, v13, v14, v10 + 16, v10 + 32);
      if (v16)
      {
        goto LABEL_12;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (!v14)
      {
LABEL_12:
        v21 = *(v6 + 16);
        v22 = *(v6 + 32);
        v23 = *(v6 + 40);
        v63[0] = *v6;
        v20 = v63[0];
        v63[1] = v2;
        v64 = v21;
        v65 = v22;
        v66 = v23;
        v67 = v10;
        v68 = v11;
        v69 = v12;

        outlined init with copy of [Input](v63, v62, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
        v19 = specialized Graph.connectedInputIndices(for:)(v61, v20);
        outlined destroy of [Input](v63, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
        v18 = 0;
        goto LABEL_13;
      }

      v15 = 0;
      while (*(v13 + 8 * v15) != v8)
      {
        if (v14 == ++v15)
        {
          goto LABEL_12;
        }
      }
    }

    if (v15 >= *(v12 + 16))
    {
      goto LABEL_59;
    }

    v17 = v12 + 16 * v15;
    v19 = *(v17 + 32);
    v18 = *(v17 + 40);

LABEL_13:
    v24 = *(v19 + 16);
    if (v18 == v24)
    {

      goto LABEL_25;
    }

    if (v18 >= v24)
    {
      goto LABEL_57;
    }

    v25 = *(v19 + 16 * v18 + 32);
    if ((v25 & 0x8000000000000000) != 0 || v25 >= *(*v6 + 16))
    {
      v27 = 0;
      v28 = 0;
      v30 = 0;
      v29 = 0;
      goto LABEL_24;
    }

    v26 = (*v6 + 88 * v25);
    v27 = v26[4];
    v28 = v26[5];
    v30 = v26[6];
    v29 = v26[7];
    v31 = v26[8];
    if (v31)
    {
      break;
    }

LABEL_24:

    outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v27, v28, v30, v29, 0);
LABEL_25:
    v35 = *(v6 + 16);
    v36 = *(v6 + 24);
    v37 = (v36 + 32);
    v38 = *(v36 + 16);
    v39 = v61;
    if (v35)
    {
      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v61, v37, v38, v35 + 16, v35 + 32);
      v39 = v61;
      if (v40)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (!v38)
      {
LABEL_44:
        specialized OrderedSet._append(_:)(v39);
        if (*v4)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v51 = v2[2];
            if (v51)
            {
LABEL_47:
              v2[2] = v51 - 1;

              *(v6 + 8) = v2;
              v56 = v60;
              v5 = v61;
              goto LABEL_48;
            }

            goto LABEL_62;
          }

LABEL_61:
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v51 = v2[2];
          if (v51)
          {
            goto LABEL_47;
          }

LABEL_62:
          __break(1u);
LABEL_63:
          swift_once();
          goto LABEL_51;
        }

LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      while (1)
      {
        v42 = *v37++;
        if (v42 == v61)
        {
          break;
        }

        if (!--v38)
        {
          goto LABEL_44;
        }
      }
    }

    if (!*v4)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v41 = v2[2];
      if (!v41)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v41 = v2[2];
      if (!v41)
      {
        goto LABEL_56;
      }
    }

    v2[2] = v41 - 1;

    *(v6 + 8) = v2;
LABEL_31:
    v4 = v2 + 2;
    v3 = v2[2];
    v5 = 0uLL;
    if (!v3)
    {
      v9 = 0;
      v56 = 0uLL;
LABEL_48:
      a1 = v59;
      goto LABEL_54;
    }
  }

  v32 = *v4 + 1;
  v33 = 4;
  do
  {
    if (!--v32)
    {
      v57 = *v4;
      v43 = v31;
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v27, v28, v30, v29, v31);

      v58 = v43;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57 + 1, 1, v2);
      }

      v44 = v61;
      v46 = v2[2];
      v45 = v2[3];
      v47 = v46 + 1;
      v48 = v58;
      if (v46 >= v45 >> 1)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v2);
        v47 = v46 + 1;
        v48 = v58;
        v44 = v61;
        v2 = v50;
      }

      v2[2] = v47;
      v49 = &v2[5 * v46];
      v49[4] = v27;
      v49[5] = v28;
      v49[6] = v30;
      v49[7] = v29;
      v49[8] = v48;
      *(v6 + 8) = v2;
      specialized OrderedDictionary.subscript.setter(v19, v18 + 1, v44);

      v2 = *(v6 + 8);
      goto LABEL_31;
    }

    v34 = v2[v33];
    v33 += 5;
  }

  while (v34 != v25);
  outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v27, v28, v30, v29, v31);

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_63;
  }

LABEL_51:
  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, logger);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_265D7D000, v53, v54, "Cycle in graph", v55, 2u);
    MEMORY[0x266773120](v55, -1, -1);
  }

  v9 = 0;
  v56 = 0uLL;
  a1 = v59;
  v5 = 0uLL;
LABEL_54:
  *a1 = v5;
  *(a1 + 16) = v56;
  *(a1 + 32) = v9;
}

Swift::Void __swiftcall SGDataTypeGraph.collectGraphs(into:)(Swift::OpaquePointer *into)
{
  v35 = *(v1 + 40);
  rawValue = specialized SGDataTypeGraph.subgraphNodes()(v35);
  v31 = rawValue;
  v30 = MEMORY[0x277D84FA0];
  v4 = *(rawValue + 2);
  v27 = into;
  if (!v4)
  {

LABEL_23:

    v34 = *(v26 + 8);
    v20 = *(v26 + 3);
    v32 = *(v26 + 4);
    v33 = v20;
    rawValue = into->_rawValue;
    outlined init with copy of String(&v34, v29);
    outlined init with copy of [Input](&v33, v29, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined init with copy of [Input](&v32, v29, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined init with copy of [Input](&v35, v29, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v6 = *&rawValue[40 * v4 + 8];
    if (v6 >> 62 != 1)
    {
      goto LABEL_4;
    }

    v28 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v8 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v9 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v10 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
    if (!*(v30 + 16) || (v11 = MEMORY[0x266772750](*(v30 + 40), v28), v12 = -1 << *(v30 + 32), v13 = v11 & ~v12, ((*(v30 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0))
    {
LABEL_3:

      specialized Set._Variant.insert(_:)(&v34, v28);
      v5 = specialized SGDataTypeGraph.subgraphNodes()(v10);

      specialized Array.append<A>(contentsOf:)(v5);

      rawValue = v31;
      goto LABEL_4;
    }

    v14 = ~v12;
    while (*(*(v30 + 48) + 8 * v13) != v28)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v30 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v15 = into->_rawValue;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[48 * v17];
    *(v18 + 2) = v28;
    *(v18 + 6) = v7;
    *(v18 + 7) = v8;
    *(v18 + 8) = v9;
    *(v18 + 9) = v10;
    into = v27;
    v27->_rawValue = v15;
    if (!*(rawValue + 2))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(rawValue);
    }

    v19 = *(rawValue + 2);
    if (!v19)
    {
      goto LABEL_28;
    }

    *(rawValue + 2) = v19 - 1;

    v31 = rawValue;
LABEL_4:
    v4 = *(rawValue + 2);
    if (!v4)
    {

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
LABEL_24:
  v22 = *(rawValue + 2);
  v21 = *(rawValue + 3);
  if (v22 >= v21 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, rawValue);
  }

  *(rawValue + 2) = v22 + 1;
  v23 = &rawValue[48 * v22];
  v24 = *v26;
  v25 = v26[2];
  *(v23 + 3) = v26[1];
  *(v23 + 4) = v25;
  *(v23 + 2) = v24;
  v27->_rawValue = rawValue;
}

uint64_t SGDataTypeGraph.TopologicalSort.surfaceNodeElement(ofType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 16);
  if (!v4)
  {
    v14 = 0;
    v19 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    goto LABEL_13;
  }

  v5 = result;
  v6 = *v2 + 88 * v4 - 56;
  do
  {
    v7 = *(v6 + 16);
    v21 = *v6;
    v22 = v7;
    v8 = *(v6 + 32);
    v9 = *(v6 + 48);
    v10 = *(v6 + 64);
    v26 = *(v6 + 80);
    v24 = v9;
    v25 = v10;
    v23 = v8;
    if (!(v22 >> 62))
    {
      v11 = *(v22 + 16);
      v12 = *(v22 + 24);

      outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v21, v20);
      v13 = specialized Surface.init(nodeDefID:)(v11, v12);
      if (v13 <= 2)
      {
        goto LABEL_3;
      }

      if (v13 == 3)
      {

        if (v5)
        {
LABEL_12:
          v14 = v26;
          v15 = v24;
          v16 = v25;
          v17 = v22;
          v18 = v23;
          v19 = v21;
          goto LABEL_13;
        }

        goto LABEL_4;
      }

      if (v13 == 4)
      {
LABEL_3:

        if ((v5 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

LABEL_4:
      result = outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v21);
    }

    v6 -= 88;
    --v4;
  }

  while (v4);
  v14 = 0;
  v17 = 0uLL;
  v18 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v19 = 0uLL;
LABEL_13:
  *a2 = v19;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  *(a2 + 48) = v15;
  *(a2 + 64) = v16;
  *(a2 + 80) = v14;
  return result;
}

uint64_t SGDataTypeGraph.Personality.inputCount.getter(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v2 = 32;
    return *(*(a2 + v2) + 16);
  }

  if (a2 >> 62 == 1)
  {
    a2 &= 0x3FFFFFFFFFFFFFFFuLL;
    v2 = 40;
    return *(*(a2 + v2) + 16);
  }

  return 0;
}

uint64_t SGDataTypeGraph.Personality.outputCount.getter(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v2 = 40;
    return *(*(a2 + v2) + 16);
  }

  if (a2 >> 62 == 1)
  {
    a2 &= 0x3FFFFFFFFFFFFFFFuLL;
    v2 = 48;
    return *(*(a2 + v2) + 16);
  }

  return 1;
}

uint64_t protocol witness for GraphElement.inputCount.getter in conformance SGDataTypeGraph.Personality()
{
  v1 = *(v0 + 8);
  if (!(v1 >> 62))
  {
    v2 = 32;
    return *(*(v1 + v2) + 16);
  }

  if (v1 >> 62 == 1)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
    v2 = 40;
    return *(*(v1 + v2) + 16);
  }

  return 0;
}

uint64_t protocol witness for GraphElement.outputCount.getter in conformance SGDataTypeGraph.Personality()
{
  v1 = *(v0 + 8);
  if (!(v1 >> 62))
  {
    v2 = 40;
    return *(*(v1 + v2) + 16);
  }

  if (v1 >> 62 == 1)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
    v2 = 48;
    return *(*(v1 + v2) + 16);
  }

  return 1;
}

unint64_t protocol witness for GraphElement.input(at:) in conformance SGDataTypeGraph.Personality@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SGDataTypeGraph.Personality.input(at:)(a1, *(v2 + 8));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7 & 1;
  return result;
}

unint64_t protocol witness for GraphElement.output(at:) in conformance SGDataTypeGraph.Personality@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized SGDataTypeGraph.Personality.output(at:)(a1, *(v2 + 8));
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

double SGDataTypeGraph.init(_:idSequence:constants:)@<D0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  specialized SGDataTypeGraph.init(_:idSequence:constants:)(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[1];
    *a4 = v8[0];
    a4[1] = v7;
    result = *&v9;
    a4[2] = v9;
  }

  return result;
}

Swift::Int __swiftcall InfiniteIntegerSequence.next()()
{
  result = *v0;
  if (__OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v0;
  }

  return result;
}

void closure #5 in SGDataTypeGraph.init(_:idSequence:constants:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *(*a1 + OBJC_IVAR___SGEdge_from);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v14 = Strong;
  v53 = a6;
  v15 = *(v11 + OBJC_IVAR___SGEdge_to);
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {

LABEL_13:
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v28 = 0xD000000000000020;
    *(v28 + 8) = 0x8000000265F2E090;
    *(v28 + 16) = 21;
    swift_willThrow();
    return;
  }

  v59 = v16;
  if (!*(a2 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v18 & 1) == 0) || (v19 = *(a2 + 56), v20 = (v19 + 40 * v17), v50 = *v20, v52 = v20[2], v51 = v20[4], v21 = specialized __RawDictionaryStorage.find<A>(_:)(v59), (v22 & 1) == 0))
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v27 = 0xD000000000000020;
    *(v27 + 8) = 0x8000000265F2E090;
    *(v27 + 16) = 21;
    swift_willThrow();

    return;
  }

  v23 = (v19 + 40 * v21);
  v49 = *v23;
  v24 = v23[2];
  v25 = (v12 + OBJC_IVAR___SGOutput_name);
  specialized Graph.Node<>.output(named:)(*v25, v25[1], v50, v52, v56);
  if (!v57)
  {

LABEL_16:
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v29 = 0xD000000000000020;
    *(v29 + 8) = 0x8000000265F2E090;
    *(v29 + 16) = 21;
    swift_willThrow();

    return;
  }

  v50 = v57;
  v47 = v56[0];
  v48 = v56[1];
  specialized Graph.Node<>.input(named:)(*(v15 + OBJC_IVAR___SGInput_name), *(v15 + OBJC_IVAR___SGInput_name + 8), v49, v24, v58);
  if (!v58[3])
  {

    outlined destroy of [Input](v56, &_s11ShaderGraph0B0V6OutputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V6OutputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
    goto LABEL_16;
  }

  v26 = v58[0];
  v49 = v58[1];
  if (!*(a3 + 16) || v14 != *(a4 + OBJC_IVAR___SGGraph_argumentsNode) || !*(a5 + 16))
  {

    v30 = v47;
LABEL_18:
    specialized Graph.connect(_:_:)(v30, v48, v26, v49);

    outlined destroy of [Input](v58, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
    return;
  }

  v46 = v58[0];
  v31 = *v25;
  v32 = v25[1];
  v52 = v24 & 0x3FFFFFFFFFFFFFFFLL;

  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
    v30 = v47;
LABEL_31:
    v26 = v46;
    goto LABEL_18;
  }

  v37 = 40;
  v38 = *(a5 + 56) + 40 * v33;
  v39 = *(v38 + 32);
  v40 = *(v38 + 16);
  v54[0] = *v38;
  v54[1] = v40;
  v55 = v39;
  v41 = v40;
  if (!(v40 >> 62))
  {
    goto LABEL_24;
  }

  if (v40 >> 62 == 1)
  {
    v41 = v40 & 0x3FFFFFFFFFFFFFFFLL;
    v37 = 48;
LABEL_24:
    v42 = *(*(v41 + v37) + 16);
    goto LABEL_27;
  }

  v42 = 1;
LABEL_27:
  MEMORY[0x28223BE20](v36);
  v45[2] = v54;

  v43 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.outputs.getter, v45, 0, v42);
  v44 = v47;
  if (!v43[2])
  {
LABEL_30:

    v30 = v44;
    goto LABEL_31;
  }

  outlined destroy of [Input](v56, &_s11ShaderGraph0B0V6OutputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V6OutputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
  if (v43[2])
  {
    v44 = v43[4];
    v48 = v43[5];
    v50 = v43[7];

    goto LABEL_30;
  }

  __break(1u);
}

uint64_t closure #3 in SGDataTypeGraph.structuralEdgeList(topologicalSort:textureMapping:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v7 = *(a1 + 6);
  v6 = *(a1 + 7);
  v8 = *(a2 + 8);
  if (!*(v8 + 16) || (v9 = v4, v12 = a1[1], v114 = *a1, v115 = v12, v112 = *(a1 + 10), v13 = *(a1 + 4), v14 = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 5)), (v15 & 1) == 0))
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v23 = v7;
    *(v23 + 8) = v6;
    *(v23 + 16) = 21;
    swift_willThrow();
  }

  v105 = a3;
  v16 = (*(v8 + 56) + 48 * v14);
  v17 = *v16;
  v18 = v16[2];
  v19 = v16[3];
  v20 = v16[4];
  v136 = v16[5];
  v128 = v114;
  v129 = v115;
  *&v130 = v13;
  v21 = v115;
  v108 = a4;
  v103 = v17;
  if (v115 >> 62)
  {
    if (v115 >> 62 != 1)
    {
      v25 = 0;
      goto LABEL_10;
    }

    v21 = v115 & 0x3FFFFFFFFFFFFFFFLL;
    v22 = 40;
  }

  else
  {
    v22 = 32;
  }

  v25 = *(*(v21 + v22) + 16);
LABEL_10:
  v104 = a2;
  MEMORY[0x28223BE20](v18);
  v91[2] = &v128;
  v111 = v26;

  v110 = v19;

  v109 = v20;

  result = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.inputs.getter, v91, 0, v25);
  v27 = result;
  v107 = v9;
  v28 = *(result + 16);
  if (v28)
  {
    v29 = 0;
    v30 = result + 32;
    v113 = v28 - 1;
    v31 = MEMORY[0x277D84F90];
    *&v114 = result + 32;
    do
    {
      *&v115 = v31;
      v32 = (v30 + 48 * v29);
      v33 = v29;
      while (1)
      {
        if (v33 >= *(v27 + 16))
        {
          __break(1u);
          goto LABEL_50;
        }

        v34 = *v32;
        v35 = v32[1];
        *&v135[9] = *(v32 + 25);
        v134 = v34;
        *v135 = v35;
        v29 = v33 + 1;

        specialized Graph.edge(to:)(&v134, v136, &v128);
        outlined destroy of [Input](&v134, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GMR);
        if (*(&v129 + 1))
        {
          break;
        }

        v124 = v130;
        v125 = v131;
        v126 = v132;
        v127 = v133;
        v122 = v128;
        v123 = v129;
        result = outlined destroy of [Input](&v122, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
        v32 += 3;
        ++v33;
        if (v28 == v29)
        {
          v31 = v115;
          goto LABEL_24;
        }
      }

      v124 = v130;
      v125 = v131;
      v126 = v132;
      v127 = v133;
      v122 = v128;
      v123 = v129;
      v36 = v115;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
        v36 = result;
      }

      v37 = v36;
      v38 = v36[2];
      v39 = v37;
      v40 = v37[3];
      v41 = v38 + 1;
      if (v38 >= v40 >> 1)
      {
        *&v115 = v38 + 1;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v38 + 1, 1, v39);
        v41 = v115;
        v39 = result;
      }

      v118 = v124;
      v119 = v125;
      v120 = v126;
      v121 = v127;
      v42 = v122;
      v116 = v122;
      v117 = v123;
      v39[2] = v41;
      v43 = &v39[11 * v38];
      v31 = v39;
      *(v43 + 3) = v117;
      v44 = v118;
      v45 = v119;
      v46 = v120;
      *(v43 + 112) = v121;
      *(v43 + 5) = v45;
      *(v43 + 6) = v46;
      *(v43 + 4) = v44;
      *(v43 + 2) = v42;
      v30 = v114;
    }

    while (v113 != v33);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

LABEL_24:

  v47 = v31[2];
  if (v47)
  {
    v48 = 0;
    v49 = v136 + 32;
    v50 = MEMORY[0x277D84F90];
    v51 = 32;
    *&v115 = v31;
    v113 = v136 + 32;
    *&v114 = v47;
    v101 = 32;
    v102 = v47 - 1;
LABEL_26:
    v106 = v50;
    v52 = v51 + 88 * v48;
    v53 = v48;
    while (v53 < v31[2])
    {
      v54 = *(v31 + v52 + 80);
      v56 = *(v31 + v52 + 48);
      v55 = *(v31 + v52 + 64);
      v130 = *(v31 + v52 + 32);
      v131 = v56;
      v132 = v55;
      v57 = *(v31 + v52 + 16);
      v128 = *(v31 + v52);
      v129 = v57;
      v133 = v54;
      if ((*(&v130 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v58 = *(v136 + 16);
      if (*(&v130 + 1) >= v58)
      {
        goto LABEL_52;
      }

      v59 = (v49 + 88 * *(&v130 + 1));
      v60 = v59[4];
      if (v60)
      {
        if (v128 >= v58)
        {
          goto LABEL_53;
        }

        v61 = *v59;
        v62 = v59[1];
        v64 = v59[2];
        v63 = v59[3];
        v65 = (v49 + 88 * v128);
        v66 = v65[4];
        if (v66)
        {
          v96 = *(&v131 + 1);
          v95 = *(&v132 + 1);
          v97 = v132;
          v93 = v130;
          v94 = v129;
          v68 = v65[2];
          v67 = v65[3];
          v70 = *v65;
          v69 = v65[1];
          v98 = v70;
          v99 = v69;
          v100 = v67;
          outlined init with copy of [Input](&v128, &v122, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
          outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v61, v62, v64, v63, v60);
          v71 = v98;
          outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v98, v99, v68, v100, v66);

          v72 = v105;
          v92 = specialized SGDataTypeGraph.Personality.operationalDescription(replacements:)(v105, v68);
          v99 = v73;

          v100 = v68;

          v74 = specialized SGDataTypeGraph.Personality.operationalDescription(replacements:)(v72, v64);
          v76 = v75;

          v77 = v71;
          v48 = v53 + 1;
          v78 = *v104 + 72;
          v79 = *(*v104 + 16) + 1;
          do
          {
            if (!--v79)
            {

              lazy protocol witness table accessor for type APIError and conformance APIError();
              swift_allocError();
              *v90 = 0xD000000000000028;
              *(v90 + 8) = 0x8000000265F2E040;
              *(v90 + 16) = 21;
              swift_willThrow();

              outlined destroy of [Input](&v128, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
            }

            v80 = v78;
            v78 += 88;
          }

          while (*v80 != v103 || *(v80 - 5) != v77);
          v81 = *(v78 - 48);
          *&v122 = 0;
          *(&v122 + 1) = 0xE000000000000000;
          v98 = v76;
          _StringGuts.grow(_:)(23);

          *&v122 = v92;
          *(&v122 + 1) = v99;
          MEMORY[0x266771550](58, 0xE100000000000000);
          *&v116 = v81;
          v82 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x266771550](v82);

          MEMORY[0x266771550](58, 0xE100000000000000);
          v83 = SGDataType.stringValue.getter();
          MEMORY[0x266771550](v83);

          MEMORY[0x266771550](58, 0xE100000000000000);
          MEMORY[0x266771550](v94, *(&v94 + 1));
          MEMORY[0x266771550](124, 0xE100000000000000);
          MEMORY[0x266771550](v74, v98);

          MEMORY[0x266771550](58, 0xE100000000000000);
          *&v116 = v112;
          v84 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x266771550](v84);

          MEMORY[0x266771550](58, 0xE100000000000000);
          v85 = SGDataType.stringValue.getter();
          MEMORY[0x266771550](v85);

          MEMORY[0x266771550](58, 0xE100000000000000);
          MEMORY[0x266771550](v96, v97);

          outlined destroy of [Input](&v128, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
          v86 = v122;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 2) + 1, 1, v106);
            v106 = result;
          }

          v88 = *(v106 + 2);
          v87 = *(v106 + 3);
          v31 = v115;
          if (v88 >= v87 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v106);
            v106 = result;
          }

          v89 = v106;
          *(v106 + 2) = v88 + 1;
          *&v89[16 * v88 + 32] = v86;
          v50 = v89;
          v51 = v101;
          v49 = v113;
          v47 = v114;
          if (v102 != v53)
          {
            goto LABEL_26;
          }

          goto LABEL_47;
        }

        outlined init with copy of [Input](&v128, &v122, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v61, v62, v64, v63, v60);

        result = outlined destroy of [Input](&v128, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
        v31 = v115;
        v49 = v113;
        v47 = v114;
      }

      ++v53;
      v52 += 88;
      if (v47 == v53)
      {
        v50 = v106;
        goto LABEL_47;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
LABEL_47:

    *v108 = v50;
  }

  return result;
}

uint64_t specialized OrderedSet._reserveCapacity(_:persistent:)(uint64_t result, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t))
{
  if (result < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = v4;
  v9 = result;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if (isUniquelyReferenced_nonNull_native && v9 <= *(v11 + 24) >> 1)
  {
    v14 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    a3();
    v11 = *v10;
    v14 = *v7;
    if (*v7)
    {
LABEL_5:
      swift_beginAccess();
      v15 = v14[2] & 0x3FLL;
      v16 = specialized static _HashTable.scale(forCapacity:)(v9);
      v17 = v16;
      if (a2)
      {
        v18 = v16;
        if (v15 >= v16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        swift_beginAccess();
        v18 = v14[3] & 0x3FLL;
        if (v15 >= v17)
        {
          goto LABEL_17;
        }
      }

LABEL_13:
      if (v18 <= v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = v18;
      }

LABEL_24:
      v22 = a4(v11, v20, 0, v18);

      *v7 = v22;
      return result;
    }
  }

  v19 = specialized static _HashTable.scale(forCapacity:)(v9);
  v17 = v19;
  v15 = 0;
  if (a2)
  {
    v18 = v19;
  }

  else
  {
    v18 = 0;
  }

  if (v19 > 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  result = specialized static _HashTable.scale(forCapacity:)(*(v11 + 16));
  if (v18 <= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v18;
  }

  if (result <= v21)
  {
    v20 = v21;
  }

  else
  {
    v20 = result;
  }

  if (v20 < v15)
  {
    goto LABEL_24;
  }

  if (v14)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      v24 = *v7;
      if (!*v7)
      {
LABEL_40:
        __break(1u);
        return result;
      }

      v25 = v24[2];
      v26 = (v25 & 0x3F) << v25;
      v27 = __OFADD__(v26, 64);
      v28 = v26 + 64;
      if (v27)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v30 = v28 - 1;
      v29 = v28 < 1;
      v31 = v28 + 62;
      if (!v29)
      {
        v31 = v30;
      }

      v32 = v31 >> 6;
      type metadata accessor for _HashTable.Storage(0);
      v33 = 8 * v32;
      v23 = swift_allocObject();
      v34 = v24[3];
      v23[2] = v25;
      v23[3] = v34;
      memcpy(v23 + 4, v24 + 4, v33);

      *v7 = v23;
      if (v23)
      {
        goto LABEL_29;
      }

      goto LABEL_36;
    }
  }

  v23 = *v7;
  if (!*v7)
  {
LABEL_36:
    if (!v18)
    {
      return result;
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_29:
  result = swift_beginAccess();
  if ((v23[3] & 0x3FLL) != v18)
  {
    v23[3] = v23[3] & 0xFFFFFFFFFFFFFFC0 | v18 & 0x3F;
  }

  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCSgGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCSgGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMd, &_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMR);
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
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        outlined init with take of MetalFunctionNode(v21, v30);
      }

      else
      {
        outlined init with copy of MetalFunctionNode(v21, v30);
      }

      Hasher.init(_seed:)();
      MEMORY[0x266772770](v20);
      result = Hasher._finalize()();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of MetalFunctionNode(v30, *(v7 + 56) + 40 * v15);
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

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11ShaderGraph6OutputVAC14FunctionNodeIDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph6OutputVAC14FunctionNodeIDVGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAC08FunctioneF0VGMd, &_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAC08FunctioneF0VGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11ShaderGraph5InputVAC14FunctionNodeIDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph5InputVAC14FunctionNodeIDVGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMR);
  v41 = v4;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 152 * v21;
      if (v41)
      {
        v42 = *(v25 + 8);
        v43 = *(v25 + 24);
        v44 = *v25;
        v45 = *(v25 + 32);
        v46 = *(v25 + 48);
        v47 = *(v25 + 16);
        v48 = *(v25 + 72);
        v49 = *(v25 + 80);
        v52 = *(v25 + 88);
        v53 = *(v25 + 96);
        v54 = *(v25 + 112);
        v55 = *(v25 + 128);
        v50 = *(v25 + 64);
        v51 = *(v25 + 144);
      }

      else
      {
        v26 = *(v25 + 16);
        v57 = *v25;
        v58 = v26;
        v27 = *(v25 + 80);
        v29 = *(v25 + 32);
        v28 = *(v25 + 48);
        v61 = *(v25 + 64);
        v62 = v27;
        v59 = v29;
        v60 = v28;
        v31 = *(v25 + 112);
        v30 = *(v25 + 128);
        v32 = *(v25 + 96);
        v66 = *(v25 + 144);
        v64 = v31;
        v65 = v30;
        v63 = v32;
        v54 = v31;
        v55 = v30;
        v53 = v32;
        v51 = v66;
        v52 = *(&v62 + 1);
        v49 = v62;
        v50 = v61;
        v45 = v29;
        v46 = v60;
        v47 = v58;
        v48 = *(&v61 + 1);
        v43 = *(&v58 + 1);
        v42 = *(&v57 + 1);
        v44 = v57;

        outlined init with copy of NodeDef(&v57, v56);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v7 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 152 * v15;
      *v17 = v44;
      *(v17 + 8) = v42;
      *(v17 + 16) = v47;
      *(v17 + 24) = v43;
      *(v17 + 32) = v45;
      *(v17 + 48) = v46;
      *(v17 + 64) = v50;
      *(v17 + 72) = v48;
      *(v17 + 80) = v49;
      *(v17 + 88) = v52;
      *(v17 + 96) = v53;
      *(v17 + 112) = v54;
      *(v17 + 128) = v55;
      *(v17 + 144) = v51;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay11ShaderGraph7NodeDefV14ImplementationVGGMd, &_ss18_DictionaryStorageCySSSay11ShaderGraph7NodeDefV14ImplementationVGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCyS2S19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss18_DictionaryStorageCyS2S19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typetGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph010SGDataTypeD0V6NodeIDVSiGMd, &_ss18_DictionaryStorageCy11ShaderGraph010SGDataTypeD0V6NodeIDVSiGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v23);
      MEMORY[0x266772770](v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v22;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMd, &_ss18_DictionaryStorageCySS11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMR);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 40 * v21;
      v37 = *v25;
      v38 = *(v25 + 16);
      v26 = *(v25 + 32);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v37;
      *(v17 + 16) = v38;
      *(v17 + 32) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph13TextureSourceOSayAC05TypedE0VGGMd, &_ss18_DictionaryStorageCy11ShaderGraph13TextureSourceOSayAC05TypedE0VGGMR);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v37 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
        outlined copy of TextureSource(*v22, *(v22 + 8));
      }

      Hasher.init(_seed:)();
      MEMORY[0x266772770](v25);
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
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
        v37 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GAC0cdE0V2IDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GAC0cdE0V2IDVGMR);
  v41 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v40 = v5;
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
    v15 = v5;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v15 + 48) + 40 * v21);
      v45 = *v22;
      v23 = v22[2];
      v44 = v22[1];
      v24 = v22[4];
      v42 = *(*(v15 + 56) + 8 * v21);
      v43 = v22[3];
      if ((v41 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x266772770](v45);
      MEMORY[0x266772770](v44);
      if (v23 >> 62)
      {
        if (v23 >> 62 == 1)
        {
          v25 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          *&v46[15] = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v26 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          *&v46[17] = v25;
          *&v46[19] = v26;
          MEMORY[0x266772770](1);
          SGDataTypeGraph.hash(into:)(v46);
        }

        else
        {
          v28 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v29 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
          *&v46[25] = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
          *&v46[27] = v29;
          v47 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
          v30 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          *&v46[21] = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          *&v46[23] = v30;
          MEMORY[0x266772770](2);
          v31 = v28;
          v15 = v40;
          MEMORY[0x266772770](v31);
          SGDataTypeStorage.hash(into:)(v46);
        }
      }

      else
      {
        v27 = *(v23 + 32);
        *&v46[9] = *(v23 + 16);
        *&v46[11] = v27;
        *&v46[13] = *(v23 + 48);
        MEMORY[0x266772770](0);
        BuiltInDefinition.hash(into:)(v46);
      }

      String.hash(into:)();

      result = Hasher._finalize()();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v7 + 48) + 40 * v16);
      *v17 = v45;
      v17[1] = v44;
      v17[2] = v23;
      v17[3] = v43;
      v17[4] = v24;
      *(*(v7 + 56) + 8 * v16) = v42;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v39 = 1 << *(v15 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero(v9, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v40 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMd, &_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMR);
  v38 = v4;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(v5 + 56) + 160 * v23;
      if (v38)
      {
        v40 = *v25;
        v46 = *(v25 + 72);
        v47 = *(v25 + 88);
        *v48 = *(v25 + 104);
        *&v48[15] = *(v25 + 119);
        v42 = *(v25 + 8);
        v43 = *(v25 + 24);
        v44 = *(v25 + 40);
        v45 = *(v25 + 56);
        v39 = *(v25 + 128);
        v41 = *(v25 + 144);
      }

      else
      {
        v26 = *(v25 + 16);
        *v49 = *v25;
        *&v49[16] = v26;
        v27 = *(v25 + 80);
        v29 = *(v25 + 32);
        v28 = *(v25 + 48);
        *&v49[64] = *(v25 + 64);
        *&v49[80] = v27;
        *&v49[32] = v29;
        *&v49[48] = v28;
        v30 = *(v25 + 144);
        v32 = *(v25 + 96);
        v31 = *(v25 + 112);
        v50 = *(v25 + 128);
        v51 = v30;
        *&v49[96] = v32;
        *&v49[112] = v31;
        v41 = v30;
        v39 = v50;
        v40 = v49[0];
        outlined init with copy of NodeDef.Availability(v49, &v42);
        v46 = *&v49[72];
        v47 = *&v49[88];
        *v48 = *&v49[104];
        *&v48[15] = *&v49[119];
        v42 = *&v49[8];
        v43 = *&v49[24];
        v44 = *&v49[40];
        v45 = *&v49[56];
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v15) >> 6;
        while (++v17 != v34 || (v33 & 1) == 0)
        {
          v35 = v17 == v34;
          if (v17 == v34)
          {
            v17 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v17);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *&v49[39] = v44;
      *&v49[55] = v45;
      *&v49[7] = v42;
      *&v49[23] = v43;
      *&v49[118] = *&v48[15];
      *&v49[87] = v47;
      *&v49[103] = *v48;
      *&v49[71] = v46;
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = *(v7 + 56) + 160 * v18;
      *v19 = v40;
      *(v19 + 65) = *&v49[64];
      *(v19 + 81) = *&v49[80];
      *(v19 + 97) = *&v49[96];
      *(v19 + 107) = *&v49[106];
      *(v19 + 1) = *v49;
      *(v19 + 17) = *&v49[16];
      *(v19 + 33) = *&v49[32];
      *(v19 + 49) = *&v49[48];
      *(v19 + 128) = v39;
      *(v19 + 144) = v41;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 6);
      if (v40)
      {
        v41 = *(v25 + 8);
        v42 = *v25;
        v43 = *(v25 + 32);
        v26 = *(v25 + 40);
        v46 = *(v25 + 24);
        v47 = *(v25 + 48);
        v44 = *(v25 + 56);
        v45 = *(v25 + 41);
      }

      else
      {
        v27 = *v25;
        v28 = *(v25 + 16);
        v29 = *(v25 + 32);
        *&v49[9] = *(v25 + 41);
        *&v48[16] = v28;
        *v49 = v29;
        *v48 = v27;
        v44 = v49[24];
        v45 = BYTE9(v29);
        v46 = *(&v28 + 1);
        v47 = *&v49[16];
        v43 = v29;
        v26 = BYTE8(v29);
        v42 = v27;
        v41 = *&v48[8];

        outlined init with copy of GeomPropDef(v48, v50);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v48[0] = v26;
      v50[0] = v44;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v42;
      *(v17 + 8) = v41;
      *(v17 + 24) = v46;
      *(v17 + 32) = v43;
      *(v17 + 40) = v26;
      *(v17 + 41) = v45;
      *(v17 + 48) = v47;
      *(v17 + 56) = v44;
      ++*(v7 + 16);
      v5 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS11ShaderGraph9InputSpecVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph9InputSpecVGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph0cD4NodeV2IDVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph0cD4NodeV2IDVGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAGGMd, &_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVSSGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVAC0cD4NodeVGMd, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVAC0cD4NodeVGMR);
  v42 = v4;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      if (v42)
      {
        v22 = *(v5 + 56);
        v23 = *(v5 + 48) + 80 * v21;
        v24 = *(v23 + 48);
        v55 = *(v23 + 32);
        v56 = v24;
        v57 = *(v23 + 64);
        v25 = *(v23 + 16);
        v53 = *v23;
        v54 = v25;
        v26 = *(v23 + 72);
        v27 = v22 + 48 * v21;
        v28 = *v27;
        v46 = *(v27 + 8);
        v44 = *(v27 + 32);
        v45 = *(v27 + 24);
        v43 = *(v27 + 40);
      }

      else
      {
        v29 = *(v5 + 48) + 80 * v21;
        v48 = *v29;
        v31 = *(v29 + 32);
        v30 = *(v29 + 48);
        v32 = *(v29 + 64);
        v49 = *(v29 + 16);
        v50 = v31;
        LOBYTE(v52) = v32;
        v51 = v30;
        v26 = *(v29 + 72);
        v33 = *(v5 + 56) + 48 * v21;
        v28 = *v33;
        v46 = *(v33 + 8);
        v44 = *(v33 + 32);
        v45 = *(v33 + 24);
        v43 = *(v33 + 40);
        outlined init with copy of SGDataTypeStorage(&v48, v47);

        outlined copy of NodePersonality(v28);
        v55 = v50;
        v56 = v51;
        v57 = v52;
        v53 = v48;
        v54 = v49;
      }

      v60 = v55;
      v61 = v56;
      v62 = v57;
      v58 = v53;
      v59 = v54;
      v50 = v55;
      v51 = v56;
      LOBYTE(v52) = v57;
      v48 = v53;
      v49 = v54;
      Hasher.init(_seed:)();
      SGDataTypeStorage.hash(into:)(v47);
      (*(*v26 + 120))(v47);
      result = Hasher._finalize()();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 80 * v15;
      *(v16 + 16) = v49;
      *(v16 + 32) = v50;
      *(v16 + 48) = v51;
      *(v16 + 64) = v52;
      *v16 = v48;
      *(v16 + 72) = v26;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v28;
      *(v17 + 8) = v46;
      *(v17 + 24) = v45;
      *(v17 + 32) = v44;
      *(v17 + 40) = v43;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v2;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS11ShaderGraph8SGOutputCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph8SGOutputCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS11ShaderGraph7SGInputCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7SGInputCGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVSSGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x266772770](v21);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay11ShaderGraph19NodeDefinitionStoreV0E0VGGMd, &_ss18_DictionaryStorageCySSSay11ShaderGraph19NodeDefinitionStoreV0E0VGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV8GeomPropVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV8GeomPropVGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 6);
      if (v39)
      {
        v44 = *(v25 + 16);
        v42 = *v25;
        v43 = *(v25 + 24);
        v40 = *(v25 + 8);
        v41 = *(v25 + 32);
        v45 = *(v25 + 48);
        v26 = *(v25 + 56);
        v46 = *(v25 + 57);
      }

      else
      {
        v27 = *v25;
        v28 = *(v25 + 16);
        v29 = *(v25 + 32);
        *&v48[10] = *(v25 + 42);
        v47[1] = v28;
        *v48 = v29;
        v47[0] = v27;
        v46 = v48[25];
        v26 = v48[24];
        v44 = v28;
        v45 = *&v48[16];
        v43 = *(&v28 + 1);
        v41 = v29;
        v40 = *(&v27 + 1);
        v42 = v27;

        outlined init with copy of NodeDefinitionStore.GeomProp(v47, v49);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v47[0]) = v26;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v42;
      *(v17 + 8) = v40;
      *(v17 + 16) = v44;
      *(v17 + 24) = v43;
      *(v17 + 32) = v41;
      *(v17 + 48) = v45;
      *(v17 + 56) = v26;
      *(v17 + 57) = v46;
      ++*(v7 + 16);
      v5 = v38;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV0E0VGMd, &_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV0E0VGMR);
  v41 = v4;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 160 * v21;
      if (v41)
      {
        v42 = *(v25 + 8);
        v43 = *(v25 + 24);
        v44 = *v25;
        v45 = *(v25 + 32);
        v46 = *(v25 + 48);
        v47 = *(v25 + 16);
        v48 = *(v25 + 72);
        v49 = *(v25 + 80);
        v50 = *(v25 + 64);
        v51 = *(v25 + 88);
        v53 = *(v25 + 96);
        v52 = *(v25 + 104);
        v54 = *(v25 + 112);
        v57 = *(v25 + 128);
        v58 = *(v25 + 144);
        v55 = *(v25 + 136);
        v56 = *(v25 + 152);
      }

      else
      {
        v26 = *(v25 + 16);
        v60[0] = *v25;
        v60[1] = v26;
        v27 = *(v25 + 80);
        v29 = *(v25 + 32);
        v28 = *(v25 + 48);
        v63 = *(v25 + 64);
        v64 = v27;
        v61 = v29;
        v62 = v28;
        v30 = *(v25 + 144);
        v32 = *(v25 + 96);
        v31 = *(v25 + 112);
        v67 = *(v25 + 128);
        v68 = v30;
        v65 = v32;
        v66 = v31;
        v57 = v67;
        v58 = v30;
        v55 = *(&v67 + 1);
        v56 = *(&v30 + 1);
        v54 = v31;
        v52 = *(&v32 + 1);
        v53 = v32;
        v49 = v64;
        v50 = v63;
        v51 = *(&v64 + 1);
        v48 = *(&v63 + 1);
        v45 = v61;
        v46 = v62;
        v43 = *(&v26 + 1);
        v47 = v26;
        v42 = *(&v60[0] + 1);
        v44 = *&v60[0];

        outlined init with copy of NodeDefinitionStore.Node(v60, v59);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v7 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 160 * v15;
      *v17 = v44;
      *(v17 + 8) = v42;
      *(v17 + 16) = v47;
      *(v17 + 24) = v43;
      *(v17 + 32) = v45;
      *(v17 + 48) = v46;
      *(v17 + 64) = v50;
      *(v17 + 72) = v48;
      *(v17 + 80) = v49;
      *(v17 + 88) = v51;
      *(v17 + 96) = v53;
      *(v17 + 104) = v52;
      *(v17 + 112) = v54;
      *(v17 + 128) = v57;
      *(v17 + 136) = v55;
      *(v17 + 144) = v58;
      *(v17 + 152) = v56;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC07OrderedA0VySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_VSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC07OrderedA0VySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_VSSGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo29MTLFunctionStitchingInputNodeCGMd, &_ss18_DictionaryStorageCySSSo29MTLFunctionStitchingInputNodeCGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 56 * v22;
      v25 = *(v24 + 8);
      v42 = *v24;
      v26 = *(v24 + 16);
      v27 = *(v24 + 24);
      v39 = *(v24 + 32);
      v41 = *(v24 + 40);
      v40 = *(v24 + 48);
      v38 = *(v23 + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x266772770](v42);
      (*(*v25 + 120))(v43);
      String.hash(into:)();
      if (v41)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v39);
      }

      MEMORY[0x266772770](v40);
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 56 * v17;
      *v18 = v42;
      *(v18 + 8) = v25;
      *(v18 + 16) = v26;
      *(v18 + 24) = v27;
      *(v18 + 32) = v39;
      *(v18 + 40) = v41;
      *(v18 + 48) = v40;
      *(*(v9 + 56) + 8 * v17) = v38;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_36;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_36:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v4;
    v38 = v7;
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
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = v24[1];
      v26 = (*(v7 + 56) + 24 * v23);
      v27 = v26[1];
      v40 = *v26;
      v41 = *v24;
      v28 = v26[2];
      if ((v39 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v41;
      v18[1] = v25;
      v19 = (*(v9 + 56) + 24 * v17);
      *v19 = v40;
      v19[1] = v27;
      v19[2] = v28;
      ++*(v9 + 16);
      v7 = v38;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v6;
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v22);
      result = Hasher._finalize()();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_31;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_31:
  *v5 = v9;
  return result;
}

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

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
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
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      if (v44)
      {
        v24 = *(v7 + 56);
        v25 = *(v7 + 48) + 80 * v23;
        v56 = *(v25 + 64);
        v26 = *(v25 + 48);
        v54 = *(v25 + 32);
        v55 = v26;
        v27 = *(v25 + 16);
        v52 = *v25;
        v53 = v27;
        v28 = *(v25 + 72);
        v29 = (v24 + 16 * v23);
        v30 = v29[1];
        v45 = *v29;
      }

      else
      {
        v31 = *(v7 + 48) + 80 * v23;
        v47 = *v31;
        v33 = *(v31 + 32);
        v32 = *(v31 + 48);
        v34 = *(v31 + 64);
        v48 = *(v31 + 16);
        v49 = v33;
        LOBYTE(v51) = v34;
        v50 = v32;
        v28 = *(v31 + 72);
        v35 = (*(v7 + 56) + 16 * v23);
        v30 = v35[1];
        v45 = *v35;
        outlined init with copy of SGDataTypeStorage(&v47, v46);
        v54 = v49;
        v55 = v50;
        v56 = v51;
        v52 = v47;
        v53 = v48;
      }

      v59 = v54;
      v60 = v55;
      v61 = v56;
      v57 = v52;
      v58 = v53;
      v49 = v54;
      v50 = v55;
      LOBYTE(v51) = v56;
      v47 = v52;
      v48 = v53;
      Hasher.init(_seed:)();
      SGDataTypeStorage.hash(into:)(v46);
      (*(*v28 + 120))(v46);
      result = Hasher._finalize()();
      v36 = -1 << *(v9 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v16 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v16 + 8 * v38);
          if (v42 != -1)
          {
            v17 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v37) & ~*(v16 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 80 * v17;
      *(v18 + 16) = v48;
      *(v18 + 32) = v49;
      *(v18 + 48) = v50;
      *(v18 + 64) = v51;
      *v18 = v47;
      *(v18 + 72) = v28;
      v19 = (*(v9 + 56) + 16 * v17);
      *v19 = v45;
      v19[1] = v30;
      ++*(v9 + 16);
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_34;
    }

    v43 = 1 << *(v7 + 32);
    v5 = v4;
    if (v43 >= 64)
    {
      bzero((v7 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v43;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
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

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
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
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi11ShaderGraph010SGDataTypeD0VGMd, &_ss18_DictionaryStorageCySi11ShaderGraph010SGDataTypeD0VGMR);
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
      v22 = *(v5 + 56) + 48 * v20;
      v37 = *v22;
      v23 = *(v22 + 24);
      v38 = *(v22 + 16);
      v24 = *(v22 + 32);
      v25 = *(v22 + 40);
      if ((v36 & 1) == 0)
      {
      }

      result = MEMORY[0x266772750](*(v7 + 40), v21);
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
      v16 = *(v7 + 56) + 48 * v15;
      *v16 = v37;
      *(v16 + 16) = v38;
      *(v16 + 24) = v23;
      *(v16 + 32) = v24;
      *(v16 + 40) = v25;
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
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMd, &_ss18_DictionaryStorageCySO11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMR);
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
      v22 = *(v5 + 56) + 40 * v20;
      v33 = *v22;
      v34 = *(v22 + 16);
      v23 = *(v22 + 32);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x266772750](*(v7 + 40), v21);
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
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v33;
      *(v16 + 16) = v34;
      *(v16 + 32) = v23;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSiGMd, &_ss18_DictionaryStorageCySOSiGMR);
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
      result = MEMORY[0x266772750](*(v7 + 40), v20);
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCSgGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCSgGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMd, &_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of MetalFunctionNode(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = outlined init with take of MetalFunctionNode(v19, *(v4 + 56) + 40 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11ShaderGraph6OutputVAC14FunctionNodeIDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph6OutputVAC14FunctionNodeIDVGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAC08FunctioneF0VGMd, &_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAC08FunctioneF0VGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11ShaderGraph5InputVAC14FunctionNodeIDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph5InputVAC14FunctionNodeIDVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of NodeDef(&v39, v38))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 152;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 80);
      v43 = *(v21 + 64);
      v44 = v24;
      v42 = v23;
      v26 = *(v21 + 112);
      v25 = *(v21 + 128);
      v27 = *(v21 + 96);
      v48 = *(v21 + 144);
      v46 = v26;
      v47 = v25;
      v45 = v27;
      v28 = *(v21 + 16);
      v39 = *v21;
      v40 = v28;
      v41 = v22;
      v29 = (*(v4 + 48) + v17);
      *v29 = v20;
      v29[1] = v19;
      v30 = *(v4 + 56) + v16;
      v31 = v40;
      *v30 = v39;
      *(v30 + 16) = v31;
      v32 = v41;
      v33 = v42;
      v34 = v44;
      *(v30 + 64) = v43;
      *(v30 + 80) = v34;
      *(v30 + 32) = v32;
      *(v30 + 48) = v33;
      v35 = v45;
      v36 = v46;
      v37 = v47;
      *(v30 + 144) = v48;
      *(v30 + 112) = v36;
      *(v30 + 128) = v37;
      *(v30 + 96) = v35;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay11ShaderGraph7NodeDefV14ImplementationVGGMd, &_ss18_DictionaryStorageCySSSay11ShaderGraph7NodeDefV14ImplementationVGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCyS2S19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss18_DictionaryStorageCyS2S19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typetGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi11ShaderGraph010SGDataTypeD0VGMd, &_ss18_DictionaryStorageCySi11ShaderGraph010SGDataTypeD0VGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 48 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *(v18 + 40);
        v23 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = *(v4 + 56) + 48 * v17;
        *v24 = v23;
        *(v24 + 16) = v19;
        *(v24 + 24) = v20;
        *(v24 + 32) = v21;
        *(v24 + 40) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph010SGDataTypeD0V6NodeIDVSiGMd, &_ss18_DictionaryStorageCy11ShaderGraph010SGDataTypeD0V6NodeIDVSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMd, &_ss18_DictionaryStorageCySS11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 32);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        v26 = *(v22 + 16);
        *v24 = v20;
        v24[1] = v21;
        v27 = *(v4 + 56) + v17;
        *v27 = v25;
        *(v27 + 16) = v26;
        *(v27 + 32) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMd, &_ss18_DictionaryStorageCySO11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 40 * v17;
        v19 = *(v18 + 32);
        v20 = *v18;
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 40 * v17;
        *v22 = v20;
        *(v22 + 16) = v21;
        *(v22 + 32) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSiGMd, &_ss18_DictionaryStorageCySOSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GAC0cdE0V2IDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GAC0cdE0V2IDVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = *(v18 + 32);
        v21 = *(v4 + 48) + 40 * v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 16) = v22;
        *(v21 + 32) = v20;
        *(*(v4 + 56) + 8 * v17) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMd, &_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        v19 = (*(v2 + 56) + 160 * v17);
        v20 = v19[2];
        v21 = v19[3];
        v22 = v19[5];
        v40 = v19[4];
        v41 = v22;
        v39 = v21;
        v23 = v19[9];
        v25 = v19[6];
        v24 = v19[7];
        v44 = v19[8];
        v45 = v23;
        v42 = v25;
        v43 = v24;
        v26 = v19[1];
        v36 = *v19;
        v37 = v26;
        v38 = v20;
        *(*(v4 + 48) + v17) = v18;
        v27 = (*(v4 + 56) + 160 * v17);
        v28 = v37;
        *v27 = v36;
        v27[1] = v28;
        v29 = v38;
        v30 = v39;
        v31 = v41;
        v27[4] = v40;
        v27[5] = v31;
        v27[2] = v29;
        v27[3] = v30;
        v32 = v42;
        v33 = v43;
        v34 = v45;
        v27[8] = v44;
        v27[9] = v34;
        v27[6] = v32;
        v27[7] = v33;
        result = outlined init with copy of NodeDef.Availability(&v36, &v35);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[9] = *(v19 + v17 + 41);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 41) = *&v34[9];
        v27[1] = v29;
        v27[2] = v30;
        *v27 = v28;

        result = outlined init with copy of GeomPropDef(&v32, &v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS11ShaderGraph9InputSpecVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph9InputSpecVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph0cD4NodeV2IDVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph0cD4NodeV2IDVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAGGMd, &_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVSSGMR);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVAC0cD4NodeVGMd, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVAC0cD4NodeVGMR);
  v37 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 80 * v16;
        v18 = *(v1 + 48) + 80 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v18 + 40);
        v25 = *(v18 + 48);
        v26 = *(v18 + 56);
        v27 = *(v18 + 64);
        LODWORD(v38) = *(v18 + 65);
        *(&v38 + 3) = *(v18 + 68);
        v28 = *(v18 + 72);
        v16 *= 48;
        v29 = *(v1 + 56) + v16;
        v30 = *v29;
        v31 = *(v29 + 8);
        v32 = *(v29 + 16);
        v33 = *(v29 + 40);
        v34 = *(v3 + 48) + v17;
        v35 = *(v29 + 24);
        *v34 = v19;
        *(v34 + 8) = v20;
        *(v34 + 16) = v21;
        *(v34 + 24) = v22;
        *(v34 + 32) = v23;
        *(v34 + 40) = v24;
        *(v34 + 48) = v25;
        *(v34 + 56) = v26;
        *(v34 + 64) = v27;
        *(v34 + 68) = *(&v38 + 3);
        *(v34 + 65) = v38;
        *(v34 + 72) = v28;
        v36 = *(v3 + 56) + v16;
        *v36 = v30;
        *(v36 + 8) = v31;
        *(v36 + 16) = v32;
        *(v36 + 24) = v35;
        *(v36 + 40) = v33;
        outlined copy of SGDataTypeStorage(v19, v20, v21, v22, v23, v24, v25, v26, v27);

        outlined copy of NodePersonality(v30);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v37 = v3;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVSSGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV8GeomPropVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV8GeomPropVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[10] = *(v19 + v17 + 42);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 42) = *&v34[10];
        v27[1] = v29;
        v27[2] = v30;
        *v27 = v28;

        result = outlined init with copy of NodeDefinitionStore.GeomProp(&v32, &v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV0E0VGMd, &_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV0E0VGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 160;
        v23 = *(v19 + v17 + 32);
        v24 = *(v19 + v17 + 48);
        v25 = *(v19 + v17 + 80);
        v44 = *(v19 + v17 + 64);
        v45 = v25;
        v43 = v24;
        v26 = *(v19 + v17 + 144);
        v28 = *(v19 + v17 + 96);
        v27 = *(v19 + v17 + 112);
        v48 = *(v19 + v17 + 128);
        v49 = v26;
        v46 = v28;
        v47 = v27;
        v29 = *(v19 + v17 + 16);
        v40 = *(v19 + v17);
        v41 = v29;
        v42 = v23;
        v30 = (*(v4 + 48) + v18);
        *v30 = v22;
        v30[1] = v21;
        v31 = (*(v4 + 56) + v17);
        v32 = v41;
        *v31 = v40;
        v31[1] = v32;
        v33 = v42;
        v34 = v43;
        v35 = v45;
        v31[4] = v44;
        v31[5] = v35;
        v31[2] = v33;
        v31[3] = v34;
        v36 = v46;
        v37 = v47;
        v38 = v49;
        v31[8] = v48;
        v31[9] = v38;
        v31[6] = v36;
        v31[7] = v37;

        result = outlined init with copy of NodeDefinitionStore.Node(&v40, &v39);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC07OrderedA0VySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_VSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC07OrderedA0VySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_VSSGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}