BOOL GetContactAttributeCATsModern.hasSameLabels(matches:alternatives:)(unint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (a1 >> 62)
    {
      if ((a1 & 0x8000000000000000) == 0)
      {
        a1 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      if (MEMORY[0x26D5E2AA0](a1))
      {
        goto LABEL_8;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 >> 62)
  {
    v6 = (a2 & 0x8000000000000000) == 0 ? a2 & 0xFFFFFFFFFFFFFF8 : a2;
    v4 = MEMORY[0x26D5E2AA0](v6);
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = a2;
  if (!v4)
  {
    return 0;
  }

LABEL_8:

  return Array<A>.hasSameLabels.getter(v3);
}

void GetContactAttributeCATsModern.hasAnyMatchingLabels(matches:alternatives:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = specialized Array._getCount()();

  v5 = 0;
  v6 = v2;
  while (1)
  {
    if (v4 == v5)
    {

      if (*(v6 + 16))
      {
        v19 = v6;
      }

      else
      {

        v20 = MEMORY[0x277D84F90];
        if (a2)
        {
          v21 = a2;
        }

        else
        {
          v21 = MEMORY[0x277D84F90];
        }

        v22 = specialized Array._getCount()();

        v23 = 0;
        while (v22 != v23)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x26D5E29D0](v23, v21);
          }

          else
          {
            if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v24 = *(v21 + 8 * v23 + 32);
          }

          v25 = v24;
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_43;
          }

          outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v24);
          if (v27)
          {
            v28 = String.sanitizeCNLabel.getter();
            v30 = v29;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
              v20 = v34;
            }

            v32 = *(v20 + 16);
            v31 = *(v20 + 24);
            if (v32 >= v31 >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v20);
              v20 = v35;
            }

            *(v20 + 16) = v32 + 1;
            v33 = v20 + 16 * v32;
            *(v33 + 32) = v28;
            *(v33 + 40) = v30;
            v23 = v26;
          }

          else
          {

            ++v23;
          }
        }

        if (!*(v20 + 16))
        {

          return;
        }

        v19 = v20;
      }

      ContactAttributeCATsModernC20hasAnyMatchingLabels33_17E3B5D044AD8F195FEC4FF0BA8A61F87matches12alternativesSbSayAA0eF0CGSg_AKtFS2SXEfU0_Tf1nc_nTm = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_SaySSGTt1g5165_s19SiriContactsIntents29GetContactAttributeCATsModernC20hasAnyMatchingLabels33_17E3B5D044AD8F195FEC4FF0BA8A61F87matches12alternativesSbSayAA0eF0CGSg_AKtFS2SXEfU0_Tf1nc_nTm(v19);
      specialized _NativeDictionary.filter(_:)(ContactAttributeCATsModernC20hasAnyMatchingLabels33_17E3B5D044AD8F195FEC4FF0BA8A61F87matches12alternativesSbSayAA0eF0CGSg_AKtFS2SXEfU0_Tf1nc_nTm);

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D5E29D0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v7);
    if (v10)
    {
      v11 = String.sanitizeCNLabel.getter();
      v13 = v12;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
        v6 = v17;
      }

      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1, v6);
        v6 = v18;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v5 = v9;
    }

    else
    {

      ++v5;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_SaySSGTt1g5165_s19SiriContactsIntents29GetContactAttributeCATsModernC20hasAnyMatchingLabels33_17E3B5D044AD8F195FEC4FF0BA8A61F8LL7matches12alternativesSbSayAA0eF0CGSg_AKtFS2SXEfU0_Tf1nc_nTm(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v4 = *(a1 + 16);
  v5 = (a1 + 40);
  v30 = v4;
  while (1)
  {
    if (v4 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v7 = *(v5 - 1);
    v6 = *v5;
    swift_bridgeObjectRetain_n();
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v10 = v3[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_19;
    }

    v13 = v8;
    if (v3[3] < v12)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, 1);
      v3 = v33;
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_21;
      }

      v9 = v14;
    }

    if (v13)
    {
      v32 = v2;

      v16 = v3[7];
      v17 = *(v16 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 8 * v9) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17);
        v17 = v27;
        *(v16 + 8 * v9) = v27;
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v17);
        v17 = v28;
        *(v16 + 8 * v9) = v28;
      }

      *(v17 + 16) = v20 + 1;
      v21 = v17 + 16 * v20;
      *(v21 + 32) = v7;
      *(v21 + 40) = v6;
      v1 = a1;
      v2 = v32;
      v4 = v30;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_266966D90;
      *(v22 + 32) = v7;
      *(v22 + 40) = v6;
      v3[(v9 >> 6) + 8] |= 1 << v9;
      v23 = (v3[6] + 16 * v9);
      *v23 = v7;
      v23[1] = v6;
      *(v3[7] + 8 * v9) = v22;
      v24 = v3[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v3[2] = v26;
    }

    v5 += 2;
    ++v2;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSaySSGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB19VKXEfU_SS_SaySSGTG5AIxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAHIsgnndzo_Tf1nc_n026_sSSSaySSGSbIgggd_SSAASbs5s154_pIegnndzo_TR174_s19SiriContactsIntents29GetContactAttributeCATsModernC20hasAnyMatchingLabels33_17E3B5D044AD8F195FEC4FF0BA8A61F8LL7matches12alternativesSbq17AA0eF0CGSg_AKtFSbp1_Q19SSGtXEfU4_Tf3nnpf_nTf1nnc_nTm(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(v5, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  ContactAttributeCATsModernC20hasAnyMatchingLabels33_17E3B5D044AD8F195FEC4FF0BA8A61F87matches12alternativesSbq17AA0eF0CGSg_AKtFSbp1_Q19SSGtXEfU4_Tf3nnpf_nTf1nnc_nTm = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      ContactAttributeCATsModernC20hasAnyMatchingLabels33_17E3B5D044AD8F195FEC4FF0BA8A61F87matches12alternativesSbq17AA0eF0CGSg_AKtFSbp1_Q19SSGtXEfU4_Tf3nnpf_nTf1nnc_nTm = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSaySSGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB19VKXEfU_SS_SaySSGTG5AIxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAHIsgnndzo_Tf1nc_n026_sSSSaySSGSbIgggd_SSAASbs5s154_pIegnndzo_TR174_s19SiriContactsIntents29GetContactAttributeCATsModernC20hasAnyMatchingLabels33_17E3B5D044AD8F195FEC4FF0BA8A61F87matches12alternativesSbq17AA0eF0CGSg_AKtFSbp1_Q19SSGtXEfU4_Tf3nnpf_nTf1nnc_nTm(v8, v4, ContactAttributeCATsModernC20hasAnyMatchingLabels33_17E3B5D044AD8F195FEC4FF0BA8A61F87matches12alternativesSbq17AA0eF0CGSg_AKtFSbp1_Q19SSGtXEfU4_Tf3nnpf_nTf1nnc_nTm);
      MEMORY[0x26D5E3300](v8, -1, -1);
      return ContactAttributeCATsModernC20hasAnyMatchingLabels33_17E3B5D044AD8F195FEC4FF0BA8A61F87matches12alternativesSbq17AA0eF0CGSg_AKtFSbp1_Q19SSGtXEfU4_Tf3nnpf_nTf1nnc_nTm;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v4, v5);
  v6 = specialized closure #1 in _NativeDictionary.filter(_:)(v5, v4, ContactAttributeCATsModernC20hasAnyMatchingLabels33_17E3B5D044AD8F195FEC4FF0BA8A61F87matches12alternativesSbq17AA0eF0CGSg_AKtFSbp1_Q19SSGtXEfU4_Tf3nnpf_nTf1nnc_nTm);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return ContactAttributeCATsModernC20hasAnyMatchingLabels33_17E3B5D044AD8F195FEC4FF0BA8A61F87matches12alternativesSbq17AA0eF0CGSg_AKtFSbp1_Q19SSGtXEfU4_Tf3nnpf_nTf1nnc_nTm;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_12()
{
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_8_8@<X0>(unint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  *a2 = v3 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a2[1] = a3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_23_4@<X0>(unint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  *a2 = v3 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a2[1] = a3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_24_3(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t type metadata accessor for GetContactAttributeCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for GetContactAttributeCATs;
  if (!type metadata singleton initialization cache for GetContactAttributeCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void GetContactAttributeCATs.disambiguateAddress(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_5(v2, v3);
  v4 = OUTLINED_FUNCTION_26_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_18_0(v6);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_27_1(v8);
  OUTLINED_FUNCTION_0_13(v9, xmmword_266967D10);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B13AddressHandleCGMd, &_sSay19SiriContactsIntents0B13AddressHandleCGMR);
  OUTLINED_FUNCTION_5_13(v10, "alternativeHandles");
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_2_0(v1);
  if (v12)
  {

    outlined destroy of ResponseMode?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 144) = 0u;
    *(v9 + 160) = 0u;
  }

  else
  {
    *(v9 + 168) = v11;
    __swift_allocate_boxed_opaque_existential_1((v9 + 144));
    OUTLINED_FUNCTION_0_5();
    (*(v13 + 32))();
  }

  OUTLINED_FUNCTION_1_13();
  *(v9 + 176) = v14;
  *(v9 + 184) = v15;
  if (v0)
  {
    v16 = type metadata accessor for DialogPerson();
    v17 = v0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_13_3();
    *(v9 + 200) = 0;
    *(v9 + 208) = 0;
  }

  *(v9 + 192) = v17;
  OUTLINED_FUNCTION_10_10(v16);
  OUTLINED_FUNCTION_6_9(MEMORY[0x277D839B0]);
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_22_5();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_14();
}

void GetContactAttributeCATs.disambiguateEmail(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_5(v2, v3);
  v4 = OUTLINED_FUNCTION_26_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_18_0(v6);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_27_1(v8);
  OUTLINED_FUNCTION_0_13(v9, xmmword_266967D10);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B11EmailHandleCGMd, &_sSay19SiriContactsIntents0B11EmailHandleCGMR);
  OUTLINED_FUNCTION_5_13(v10, "alternativeHandles");
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_2_0(v1);
  if (v12)
  {

    outlined destroy of ResponseMode?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 144) = 0u;
    *(v9 + 160) = 0u;
  }

  else
  {
    *(v9 + 168) = v11;
    __swift_allocate_boxed_opaque_existential_1((v9 + 144));
    OUTLINED_FUNCTION_0_5();
    (*(v13 + 32))();
  }

  OUTLINED_FUNCTION_1_13();
  *(v9 + 176) = v14;
  *(v9 + 184) = v15;
  if (v0)
  {
    v16 = type metadata accessor for DialogPerson();
    v17 = v0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_13_3();
    *(v9 + 200) = 0;
    *(v9 + 208) = 0;
  }

  *(v9 + 192) = v17;
  OUTLINED_FUNCTION_10_10(v16);
  OUTLINED_FUNCTION_6_9(MEMORY[0x277D839B0]);
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_22_5();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_14();
}

void GetContactAttributeCATs.disambiguatePhone(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_5(v2, v3);
  v4 = OUTLINED_FUNCTION_26_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_18_0(v6);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_27_1(v8);
  OUTLINED_FUNCTION_0_13(v9, xmmword_266967D10);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B11PhoneHandleCGMd, &_sSay19SiriContactsIntents0B11PhoneHandleCGMR);
  OUTLINED_FUNCTION_5_13(v10, "alternativeHandles");
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_2_0(v1);
  if (v12)
  {

    outlined destroy of ResponseMode?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 144) = 0u;
    *(v9 + 160) = 0u;
  }

  else
  {
    *(v9 + 168) = v11;
    __swift_allocate_boxed_opaque_existential_1((v9 + 144));
    OUTLINED_FUNCTION_0_5();
    (*(v13 + 32))();
  }

  OUTLINED_FUNCTION_1_13();
  *(v9 + 176) = v14;
  *(v9 + 184) = v15;
  if (v0)
  {
    v16 = type metadata accessor for DialogPerson();
    v17 = v0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_13_3();
    *(v9 + 200) = 0;
    *(v9 + 208) = 0;
  }

  *(v9 + 192) = v17;
  OUTLINED_FUNCTION_10_10(v16);
  OUTLINED_FUNCTION_6_9(MEMORY[0x277D839B0]);
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_22_5();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_14();
}

void GetContactAttributeCATs.intentHandledShowAddress(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_8_9(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_0_13(v7, xmmword_266967D20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B13AddressHandleCGMd, &_sSay19SiriContactsIntents0B13AddressHandleCGMR);
  OUTLINED_FUNCTION_4_7(v8, "alternativeHandles");
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_2_0(v1);
  if (v10)
  {

    outlined destroy of ResponseMode?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v7 + 144) = 0u;
    *(v7 + 160) = 0u;
  }

  else
  {
    *(v7 + 168) = v9;
    __swift_allocate_boxed_opaque_existential_1((v7 + 144));
    OUTLINED_FUNCTION_0_5();
    (*(v11 + 32))();
  }

  OUTLINED_FUNCTION_1_13();
  *(v7 + 176) = v12;
  *(v7 + 184) = v13;
  if (v0)
  {
    v14 = type metadata accessor for DialogPerson();
    v15 = v0;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_13_3();
    *(v7 + 200) = 0;
    *(v7 + 208) = 0;
  }

  *(v7 + 192) = v15;
  OUTLINED_FUNCTION_12_5(v14);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_22_5();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_14();
}

uint64_t GetContactAttributeCATs.intentHandledShowAge(birthdayInfo:ageInfo:contact:isMe:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_16_3(v8, xmmword_266967350);
  if (a1)
  {
    v9 = type metadata accessor for DialogCalendar();
    v10 = a1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_13_3();
    v8[3].n128_u64[1] = 0;
    v8[4].n128_u64[0] = 0;
  }

  v8[3].n128_u64[0] = v10;
  v8[4].n128_u64[1] = v9;
  v8[5].n128_u64[0] = 0x6F666E49656761;
  v8[5].n128_u64[1] = 0xE700000000000000;
  if (a2)
  {
    type metadata accessor for ContactsAgeInfo();
    v11 = a2;
  }

  else
  {
    OUTLINED_FUNCTION_13_3();
    v8[6].n128_u64[1] = 0;
    v8[7].n128_u64[0] = 0;
  }

  v8[6].n128_u64[0] = v11;
  OUTLINED_FUNCTION_2_14();
  v8[7].n128_u64[1] = v12;
  v8[8].n128_u64[0] = v13;
  v8[8].n128_u64[1] = 0xE700000000000000;
  if (a3)
  {
    type metadata accessor for DialogPerson();
    v14 = a3;
  }

  else
  {
    OUTLINED_FUNCTION_13_3();
    v8[9].n128_u64[1] = 0;
    v8[10].n128_u64[0] = 0;
  }

  v8[9].n128_u64[0] = v14;
  OUTLINED_FUNCTION_19_3();
  v8[10].n128_u64[1] = v15;
  v8[11].n128_u64[0] = v16;
  v8[11].n128_u64[1] = 0xE400000000000000;
  v8[13].n128_u64[1] = MEMORY[0x277D839B0];
  v8[12].n128_u8[0] = a4 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t GetContactAttributeCATs.intentHandledShowBirthday(birthdayInfo:contact:isMe:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_16_3(v6, xmmword_266966D80);
  if (a1)
  {
    type metadata accessor for DialogCalendar();
    v7 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_13_3();
    v6[3].n128_u64[1] = 0;
    v6[4].n128_u64[0] = 0;
  }

  v6[3].n128_u64[0] = v7;
  OUTLINED_FUNCTION_2_14();
  v6[4].n128_u64[1] = v8;
  v6[5].n128_u64[0] = v9;
  v6[5].n128_u64[1] = 0xE700000000000000;
  if (a2)
  {
    type metadata accessor for DialogPerson();
    v10 = a2;
  }

  else
  {
    OUTLINED_FUNCTION_13_3();
    v6[6].n128_u64[1] = 0;
    v6[7].n128_u64[0] = 0;
  }

  v6[6].n128_u64[0] = v10;
  OUTLINED_FUNCTION_19_3();
  v6[7].n128_u64[1] = v11;
  v6[8].n128_u64[0] = v12;
  v6[8].n128_u64[1] = 0xE400000000000000;
  v6[10].n128_u64[1] = MEMORY[0x277D839B0];
  v6[9].n128_u8[0] = a3 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

void GetContactAttributeCATs.intentHandledShowCompany(isMe:companyName:contact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v28);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_266966D80;
  OUTLINED_FUNCTION_19_3();
  *(v33 + 32) = v34;
  *(v33 + 40) = 0xE400000000000000;
  v35 = MEMORY[0x277D839B0];
  *(v33 + 48) = v27;
  *(v33 + 72) = v35;
  *(v33 + 80) = 0x4E796E61706D6F63;
  *(v33 + 88) = 0xEB00000000656D61;
  _s10Foundation3URLVSgWOcTm_0(v25, v31, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v36 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v31, 1, v36) == 1)
  {
    outlined destroy of ResponseMode?(v31, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v32 + 96) = 0u;
    *(v32 + 112) = 0u;
  }

  else
  {
    *(v32 + 120) = v36;
    __swift_allocate_boxed_opaque_existential_1((v32 + 96));
    OUTLINED_FUNCTION_52();
    (*(v37 + 32))();
  }

  OUTLINED_FUNCTION_1_13();
  *(v32 + 128) = v38;
  *(v32 + 136) = v39;
  if (v23)
  {
    v40 = type metadata accessor for DialogPerson();
    v41 = v23;
  }

  else
  {
    v40 = OUTLINED_FUNCTION_13_3();
    *(v32 + 152) = 0;
    *(v32 + 160) = 0;
  }

  *(v32 + 144) = v41;
  *(v32 + 168) = v40;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_14();
}

void GetContactAttributeCATs.intentHandledShowEmail(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_8_9(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_0_13(v7, xmmword_266967D20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B11EmailHandleCGMd, &_sSay19SiriContactsIntents0B11EmailHandleCGMR);
  OUTLINED_FUNCTION_4_7(v8, "alternativeHandles");
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_2_0(v1);
  if (v10)
  {

    outlined destroy of ResponseMode?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v7 + 144) = 0u;
    *(v7 + 160) = 0u;
  }

  else
  {
    *(v7 + 168) = v9;
    __swift_allocate_boxed_opaque_existential_1((v7 + 144));
    OUTLINED_FUNCTION_0_5();
    (*(v11 + 32))();
  }

  OUTLINED_FUNCTION_1_13();
  *(v7 + 176) = v12;
  *(v7 + 184) = v13;
  if (v0)
  {
    v14 = type metadata accessor for DialogPerson();
    v15 = v0;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_13_3();
    *(v7 + 200) = 0;
    *(v7 + 208) = 0;
  }

  *(v7 + 192) = v15;
  OUTLINED_FUNCTION_12_5(v14);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_22_5();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_14();
}

void GetContactAttributeCATs.intentHandledShowName(nicknameRequest:lastNameRequest:nameValue:contact:isMe:)()
{
  OUTLINED_FUNCTION_15();
  v31 = v0;
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v29[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v18 = OUTLINED_FUNCTION_27_1(v17);
  *(v18 + 16) = xmmword_266967D10;
  v19 = MEMORY[0x277D839B0];
  *(v18 + 32) = 0x656D616E6B63696ELL;
  *(v18 + 40) = 0xEF74736575716552;
  *(v18 + 48) = v9;
  *(v18 + 72) = v19;
  *(v18 + 80) = 0x656D614E7473616CLL;
  *(v18 + 88) = 0xEF74736575716552;
  *(v18 + 96) = v7;
  v20 = v19;
  *(v18 + 120) = v19;
  *(v18 + 128) = 0x756C6156656D616ELL;
  *(v18 + 136) = 0xE900000000000065;
  _s10Foundation3URLVSgWOcTm_0(v5, v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v16, 1, v21) == 1)
  {
    outlined destroy of ResponseMode?(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v18 + 144) = 0u;
    *(v18 + 160) = 0u;
  }

  else
  {
    *(v18 + 168) = v21;
    __swift_allocate_boxed_opaque_existential_1((v18 + 144));
    OUTLINED_FUNCTION_52();
    (*(v22 + 32))();
  }

  OUTLINED_FUNCTION_1_13();
  *(v18 + 176) = v23;
  *(v18 + 184) = v24;
  if (v3)
  {
    type metadata accessor for DialogPerson();
    v25 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_13_3();
    *(v18 + 200) = 0;
    *(v18 + 208) = 0;
  }

  *(v18 + 192) = v25;
  OUTLINED_FUNCTION_19_3();
  *(v18 + 216) = v26;
  *(v18 + 224) = v27;
  *(v18 + 232) = 0xE400000000000000;
  *(v18 + 240) = v30 & 1;
  *(v18 + 264) = v20;
  strcpy((v18 + 272), "nicknameValue");
  *(v18 + 286) = -4864;
  if (v3)
  {

    DialogPerson.nickname.getter();
    if (__swift_getEnumTagSinglePayload(v14, 1, v21) != 1)
    {
      *(v18 + 312) = v21;
      __swift_allocate_boxed_opaque_existential_1((v18 + 288));
      OUTLINED_FUNCTION_52();
      (*(v28 + 32))();
      goto LABEL_12;
    }

    outlined destroy of ResponseMode?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  *(v18 + 288) = 0u;
  *(v18 + 304) = 0u;
LABEL_12:
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_14();
}

void GetContactAttributeCATs.intentHandledShowPhone(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_8_9(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_0_13(v7, xmmword_266967D20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B11PhoneHandleCGMd, &_sSay19SiriContactsIntents0B11PhoneHandleCGMR);
  OUTLINED_FUNCTION_4_7(v8, "alternativeHandles");
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_2_0(v1);
  if (v10)
  {

    outlined destroy of ResponseMode?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v7 + 144) = 0u;
    *(v7 + 160) = 0u;
  }

  else
  {
    *(v7 + 168) = v9;
    __swift_allocate_boxed_opaque_existential_1((v7 + 144));
    OUTLINED_FUNCTION_0_5();
    (*(v11 + 32))();
  }

  OUTLINED_FUNCTION_1_13();
  *(v7 + 176) = v12;
  *(v7 + 184) = v13;
  if (v0)
  {
    v14 = type metadata accessor for DialogPerson();
    v15 = v0;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_13_3();
    *(v7 + 200) = 0;
    *(v7 + 208) = 0;
  }

  *(v7 + 192) = v15;
  OUTLINED_FUNCTION_12_5(v14);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_22_5();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_14();
}

uint64_t GetContactAttributeCATs.promptForContactAttribute(contactName:isMe:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](GetContactAttributeCATs.promptForContactAttribute(contactName:isMe:), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_266966ED0;
  *(v3 + 32) = 0x4E746361746E6F63;
  *(v3 + 40) = 0xEB00000000656D61;
  _s10Foundation3URLVSgWOcTm_0(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    outlined destroy of ResponseMode?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_0_5();
    (*(v5 + 32))();
  }

  v6 = *(v0 + 72);
  *(v3 + 80) = 1699574633;
  *(v3 + 88) = 0xE400000000000000;
  *(v3 + 120) = MEMORY[0x277D839B0];
  *(v3 + 96) = v6;
  v10 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = GetContactAttributeCATs.promptForContactAttribute(contactName:isMe:);
  v8 = *(v0 + 16);

  return v10(v8, 0xD00000000000002DLL, 0x800000026696F840, v3);
}

{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](GetContactAttributeCATs.promptForContactAttribute(contactName:isMe:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  OUTLINED_FUNCTION_4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GetContactAttributeCATs.unsupportedContactAttribute()(uint64_t a1)
{
  v6 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = GetContactAttributeCATs.unsupportedContactAttribute();
  v4 = MEMORY[0x277D84F90];

  return v6(a1, 0xD00000000000002FLL, 0x800000026696F810, v4);
}

uint64_t GetContactAttributeCATs.unsupportedContactAttribute()()
{
  OUTLINED_FUNCTION_4();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void GetContactAttributeCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for CATOption();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_18_0(v33);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_3();
  _s10Foundation3URLVSgWOcTm_0(v28, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v30 + 16))(v32, v26, v29);
  ContactsCommonCATs.init(templateDir:options:globals:)(v20, v32, v24);
  (*(v30 + 8))(v26, v29);
  outlined destroy of ResponseMode?(v28, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_14();
}

uint64_t _s10Foundation3URLVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_52();
  v5 = OUTLINED_FUNCTION_26_3();
  v6(v5);
  return a2;
}

__n128 *OUTLINED_FUNCTION_0_13(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x676E69686374616DLL;
  result[2].n128_u64[1] = 0xEF73656C646E6148;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_7()
{
  *(v2 + 240) = v1 & 1;
  *(v2 + 264) = v0;
  strcpy((v2 + 272), "hasSameLabels");
  *(v2 + 286) = -4864;
  *(v2 + 288) = *(v3 - 104) & 1;
  *(v2 + 312) = v0;
  *(v2 + 320) = 0x4D6563696F567369;
  *(v2 + 328) = 0xEB0000000065646FLL;
  *(v2 + 360) = v0;
  *(v2 + 336) = *(v3 - 100) & 1;
}

uint64_t OUTLINED_FUNCTION_4_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v6 + 48) = v8;
  *(v6 + 72) = a1;
  *(v6 + 80) = v5;
  *(v6 + 88) = (a2 - 32) | 0x8000000000000000;
  *(v6 + 96) = v7;
  *(v6 + 120) = a1;
  strcpy((v6 + 128), "requestedLabel");
  *(v6 + 143) = -18;

  return _s10Foundation3URLVSgWOcTm_0(v2, v9, v3, v4);
}

uint64_t OUTLINED_FUNCTION_5_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v5 + 48) = v7;
  *(v5 + 72) = a1;
  *(v5 + 80) = v4;
  *(v5 + 88) = (a2 - 32) | 0x8000000000000000;
  *(v5 + 96) = v6;
  *(v5 + 120) = a1;
  strcpy((v5 + 128), "requestedLabel");
  *(v5 + 143) = -18;

  return _s10Foundation3URLVSgWOcTm_0(v9, v8, v2, v3);
}

uint64_t OUTLINED_FUNCTION_6_9@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 240) = v1 & 1;
  *(v2 + 264) = a1;
  *(v2 + 272) = 0x4D6563696F567369;
  *(v2 + 280) = 0xEB0000000065646FLL;
  *(v2 + 312) = a1;
  *(v2 + 288) = *(v3 - 100) & 1;
}

void OUTLINED_FUNCTION_7_5(int a1@<W5>, uint64_t a2@<X8>)
{
  *(v3 - 96) = a2;
  *(v3 - 88) = v2;
  *(v3 - 100) = a1;
}

void OUTLINED_FUNCTION_8_9(int a1@<W5>, int a2@<W6>, uint64_t a3@<X8>)
{
  *(v4 - 96) = a3;
  *(v4 - 88) = v3;
  *(v4 - 104) = a1;
  *(v4 - 100) = a2;
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t result)
{
  v1[27] = result;
  v1[28] = 1699574633;
  v1[29] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_5(uint64_t result)
{
  v1[27] = result;
  v1[28] = 1699574633;
  v1[29] = 0xE400000000000000;
  return result;
}

__n128 *OUTLINED_FUNCTION_16_3(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "birthdayInfo");
  result[2].n128_u8[13] = 0;
  result[2].n128_u16[7] = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t specialized DisplayHintFactory.build(for:handles:contactAttributeType:_:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  return specialized DisplayHintFactory.build(for:handles:contactAttributeType:_:)(a1, a2, a3, a4, a5, closure #1 in static ContactsContextProvider.getContactAttribute(contact:handles:contactAttributeType:needsSDA:));
}

{
  return specialized DisplayHintFactory.build(for:handles:contactAttributeType:_:)(a1, a2, a3, a4, a5, closure #1 in static ContactsContextProvider.handleGetContact(contact:needsSDA:));
}

{
  return specialized DisplayHintFactory.build(for:handles:contactAttributeType:_:)(a1, a2, a3, a4, a5, closure #1 in static ContactsContextProvider.disambiguate(contacts:));
}

uint64_t specialized DisplayHintFactory.build(for:handles:contactAttributeType:_:)(int64_t a1, uint64_t a2, const char *a3, int a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v152 = a6;
  v145 = a4;
  v146 = a3;
  v144 = a2;
  type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_1_0();
  v157 = v8;
  v158 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v12 = (v10 - v11);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  v142 = &v141 - v14;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  v143 = &v141 - v16;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  OUTLINED_FUNCTION_1_0();
  v154 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_4();
  v21 = (v19 - v20);
  MEMORY[0x28223BE20](v22);
  v155 = &v141 - v23;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  v156 = (&v141 - v25);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  v159 = &v141 - v27;
  type metadata accessor for OrdinalDisplayHintsBuilder();
  OUTLINED_FUNCTION_1_0();
  v150 = v29;
  v151 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  v32 = v31 - v30;
  v33 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8();
  v36 = (v35 - v34);
  v37 = one-time initialization token for contactsLog;
  v153 = a5;
  swift_retain_n();
  if (v37 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v38 = static Signpost.contactsLog;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    v39 = "BuildDisplayHints";
    v40 = 17;
    v147 = v38;
    os_signpost(_:dso:log:name:signpostID:)();
    v41 = *(v33 + 20);
    v148 = v32;
    v149 = v36;
    v42 = &v36[v41];
    *v42 = "BuildDisplayHints";
    *(v42 + 1) = 17;
    v42[16] = 2;
    OrdinalDisplayHintsBuilder.init(referenceNode:)();
    v43 = MEMORY[0x277D84F90];
    v162 = MEMORY[0x277D84F90];
    v163 = MEMORY[0x277D84F90];
    v44 = specialized Array._getCount()();
    if (!v44)
    {
      v66 = v12;
      goto LABEL_11;
    }

    v45 = v44;
    v46 = a1;
    if (v44 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVG12displayHints_AC13SemanticValueV02idL0tGMd, _ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVG12displayHints_AC13SemanticValueV02idL0tGMR);
      v47 = (*(v154 + 80) + 32) & ~*(v154 + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_266966D90;
      v12 = (v48 + v47);
      v40 = v46 & 0xC000000000000001;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      v155 = v48;
      v39 = v43;
      if (v145)
      {
        if (v40)
        {
          goto LABEL_61;
        }

        v49 = *(v46 + 32);
        goto LABEL_7;
      }

      if (v40)
      {
        v116 = MEMORY[0x26D5E29D0](0, v46);
      }

      else
      {
        v116 = *(v46 + 32);
      }

      v117 = v116;
      v118 = v146;
      v119 = v144;
      v120 = *(v160 + 48);
      if (specialized Array._getCount()() && specialized Array._getCount()() && (v118 - 1) < 3)
      {
        v121 = [v117 identifier];
        v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v124 = v123;

        v125 = DisplayHintFactory.buildGetAttributeListDisplayHint(contactId:type:labeledHandles:)(v12 + v120, v122, v124, v118, v119);
      }

      else
      {
        v125 = DisplayHintFactory.buildContactDisambiguationDisplayHint(_:)(v12 + v120, v117);
      }

      *v12 = v125;
      v161 = v39;
      v126 = v159;
      outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(v12, v159);
      v127 = v156;
      outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v126, v156);
      v128 = *v127;
      v129 = v160;
      v130 = OUTLINED_FUNCTION_10_11(*(v160 + 48));
      v131(v130);
      OUTLINED_FUNCTION_1_14();
      specialized Array.append<A>(contentsOf:)(v128);
      OUTLINED_FUNCTION_16_4();
      OUTLINED_FUNCTION_12_6(MEMORY[0x277D84F90]);
      v132 = v161;
      outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(v12, v126);

      outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v126, v127);

      v133 = v38[4];
      v133(v143, v127 + *(v129 + 48), v120);
      OUTLINED_FUNCTION_13_4();
      if (v61)
      {
        OUTLINED_FUNCTION_3_8();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v138, v139, v140);
        v132 = v161;
      }

      v134 = OUTLINED_FUNCTION_6_10();
      (v133)(v134);
      OUTLINED_FUNCTION_2_15();
      specialized Array.append<A>(contentsOf:)(v132);
      v111 = v153;
      v112 = v148;
      v65 = v149;
      if ((v146 - 1) > 2)
      {

        goto LABEL_42;
      }

LABEL_41:
      v113 = OrdinalDisplayHintsBuilder.build(for:)();

      specialized Array.append<A>(contentsOf:)(v113);
LABEL_42:
      v114 = v163;

      specialized closure #1 in DisplayHintFactory.build(for:handles:contactAttributeType:_:)(v114, v111, v152);

      (*(v150 + 8))(v112, v151);
      goto LABEL_43;
    }

    v161 = v43;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 & ~(v44 >> 63), 0);
    if (v45 < 0)
    {
      break;
    }

    v100 = 0;
    v43 = v161;
    v66 = v12;
    do
    {
      v101 = v43;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v102 = MEMORY[0x26D5E29D0](v100, a1);
      }

      else
      {
        v102 = *(a1 + 8 * v100 + 32);
      }

      v103 = v102;
      v104 = DisplayHintFactory.buildContactDisambiguationDisplayHint(_:)(v21 + *(v160 + 48), v102);

      *v21 = v104;
      v43 = v101;
      v161 = v101;
      v105 = *(v101 + 16);
      if (v105 >= *(v43 + 24) >> 1)
      {
        OUTLINED_FUNCTION_3_8();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v108, v109, v110);
        v43 = v161;
      }

      ++v100;
      *(v43 + 16) = v105 + 1;
      OUTLINED_FUNCTION_4_8();
      outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v21, v43 + v106 + *(v107 + 72) * v105);
    }

    while (v45 != v100);
LABEL_11:
    v67 = *(v43 + 16);
    v21 = MEMORY[0x277D84F90];
    v146 = v43;
    if (!v67)
    {
LABEL_24:
      specialized Array.append<A>(contentsOf:)(v21);
      v80 = *(v146 + 2);
      if (v80)
      {
        v161 = MEMORY[0x277D84F90];
        v81 = v146;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80, 0);
        v82 = v161;
        OUTLINED_FUNCTION_4_8();
        v84 = &v81[v83];
        v86 = *(v85 + 72);
        v87 = v157;
        v88 = (v158 + 32);
        do
        {
          v89 = v159;
          outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(v84, v159);
          v90 = v89;
          v91 = v156;
          outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v90, v156);

          v92 = *v88;
          (*v88)(v66, v91 + *(v160 + 48), v87);
          v161 = v82;
          v93 = v66;
          v94 = *(v82 + 16);
          if (v94 >= *(v82 + 24) >> 1)
          {
            OUTLINED_FUNCTION_3_8();
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v97, v98, v99);
            v87 = v157;
            v82 = v161;
          }

          *(v82 + 16) = v94 + 1;
          OUTLINED_FUNCTION_4_8();
          v92((v82 + v95 + *(v96 + 72) * v94), v93, v87);
          v84 += v86;
          --v80;
          v66 = v93;
        }

        while (v80);
      }

      else
      {

        v82 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v82);
      v111 = v153;
      v112 = v148;
      v65 = v149;
      goto LABEL_41;
    }

    OUTLINED_FUNCTION_4_8();
    v33 = v43 + v68;
    v70 = *(v69 + 72);
    v36 = (v158 + 8);
    while (1)
    {
      v71 = v155;
      outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(v33, v155);
      v72 = v71;
      v73 = v159;
      outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v72, v159);
      v74 = *v73;
      (*v36)(&v73[*(v160 + 48)], v157);
      v32 = *(v74 + 16);
      v75 = v21[2];
      a1 = v75 + v32;
      if (__OFADD__(v75, v32))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || a1 > (v21[3] >> 1))
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v76;
      }

      v66 = v12;
      if (*(v74 + 16))
      {
        a1 = (v21[3] >> 1) - v21[2];
        type metadata accessor for DisplayHint();
        if (a1 < v32)
        {
          goto LABEL_57;
        }

        swift_arrayInitWithCopy();

        v66 = v12;
        if (v32)
        {
          v77 = v21[2];
          v78 = __OFADD__(v77, v32);
          v79 = v77 + v32;
          if (v78)
          {
            goto LABEL_58;
          }

          v21[2] = v79;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_56;
        }
      }

      v33 += v70;
      if (!--v67)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

  __break(1u);
LABEL_61:
  v49 = MEMORY[0x26D5E29D0](0, v46);
LABEL_7:
  v50 = v49;
  v51 = v160;
  v52 = DisplayHintFactory.buildContactCardDisplayHint(contact:)(v12 + *(v160 + 48), v49);

  *v12 = v52;
  v161 = v39;
  v53 = v159;
  outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(v12, v159);
  v54 = v156;
  outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v53, v156);
  v55 = *v54;
  v56 = OUTLINED_FUNCTION_10_11(*(v51 + 48));
  v57(v56);
  OUTLINED_FUNCTION_1_14();
  specialized Array.append<A>(contentsOf:)(v55);
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_12_6(MEMORY[0x277D84F90]);
  v58 = v161;
  outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(v12, v53);

  outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v53, v54);

  v59 = *(v51 + 48);
  v60 = v38[4];
  v60(v142, v54 + v59, v40);
  OUTLINED_FUNCTION_13_4();
  if (v61)
  {
    OUTLINED_FUNCTION_3_8();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v135, v136, v137);
    v58 = v161;
  }

  v62 = OUTLINED_FUNCTION_6_10();
  (v60)(v62);
  OUTLINED_FUNCTION_2_15();
  specialized Array.append<A>(contentsOf:)(v58);

  v63 = v163;
  v64 = v153;

  specialized closure #1 in DisplayHintFactory.build(for:handles:contactAttributeType:_:)(v63, v64, v152);

  (*(v150 + 8))(v148, v151);
  v65 = v149;
LABEL_43:
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v65);
}

uint64_t specialized closure #1 in DisplayHintFactory.build(for:handles:contactAttributeType:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for DisplayHint();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = 0;
  v12 = *(a1 + 16);
  v13 = (v6 + 16);
  v36 = (v6 + 16);
  v37 = v12;
  while (v12 != v11)
  {
    v14 = *(v6 + 80);
    v15 = *(v6 + 72);
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriContacts);
    (*v13)(v10, a1 + ((v14 + 32) & ~v14) + v15 * v11, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v20;
      *v19 = 136315138;
      v21 = DisplayHint.description.getter();
      v38 = v11;
      v22 = v6;
      v23 = a1;
      v25 = v24;
      v26 = OUTLINED_FUNCTION_15_4();
      v27(v26);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v25, &v39);
      a1 = v23;
      v6 = v22;
      v11 = v38;

      *(v19 + 4) = v28;
      _os_log_impl(&dword_26686A000, v17, v18, "DisplayHint: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v29 = v20;
      v13 = v36;
      MEMORY[0x26D5E3300](v29, -1, -1);
      v30 = v19;
      v12 = v37;
      MEMORY[0x26D5E3300](v30, -1, -1);
    }

    else
    {

      v31 = OUTLINED_FUNCTION_15_4();
      v32(v31);
    }

    ++v11;
  }

  a3(a1, a2);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_7(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  result = OUTLINED_FUNCTION_11_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v3 = specialized Array._getCount()();
  v4 = specialized Array._getCount()();
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t DisplayHintFactory.buildContactCardDisplayHint(contact:)(uint64_t a1, void *a2)
{
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v55 = (&v52 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = (&v52 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v58 = (&v52 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = (&v52 - v13);
  v15 = *(v4 + 56);
  v16 = [a2 identifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = [a2 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = v14;
  v22 = specialized DisplayHintFactory.buildGetAttributeListDisplayHint<A>(contactId:labeledHandles:)(v14 + v15, v17, v19, v21);

  *v14 = v22;
  v23 = *(v4 + 56);
  v24 = [a2 identifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = [a2 postalAddresses];
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v58;
  v31 = specialized DisplayHintFactory.buildGetAttributeListDisplayHint<A>(contactId:labeledHandles:)(v58 + v23, v25, v27, v29);

  *v30 = v31;
  v32 = *(v4 + 56);
  v33 = [a2 identifier];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = [a2 emailAddresses];
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = v54;
  v40 = specialized DisplayHintFactory.buildGetAttributeListDisplayHint<A>(contactId:labeledHandles:)(v54 + v32, v34, v36, v38);

  *v39 = v40;
  v41 = v55;
  *v41 = DisplayHintFactory.buildContactDisambiguationDisplayHint(_:)(v55 + *(v4 + 56), a2);
  v59 = v22;

  specialized Array.append<A>(contentsOf:)(v42);

  specialized Array.append<A>(contentsOf:)(v43);

  specialized Array.append<A>(contentsOf:)(v44);
  v45 = v59;
  v46 = v53;
  v47 = v56;
  outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(v53, v56);
  v48 = v47;

  v49 = *(v4 + 56);
  v50 = type metadata accessor for SemanticValue();
  (*(*(v50 - 8) + 32))(v57, v48 + v49, v50);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v41, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v39, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v58, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v46, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  return v45;
}

uint64_t DisplayHintFactory.buildContactDisambiguationDisplayHint(_:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for SemanticValue();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, _s11SiriKitFlow13SemanticValueVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v51 = type metadata accessor for DisplayHint();
  v48 = *(v51 - 8);
  v9 = MEMORY[0x28223BE20](v51);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v46 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = [a2 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  SemanticValue.init(string:label:)();
  v16 = CNContact.formattedFullName.getter();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  v49 = v5;
  v50 = a1;
  if (v19)
  {
    (*(v5 + 16))(v8, a1, v4);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v4);
    CNContact.formattedFullName.getter();
    SemanticValue.init(string:label:)();
    DisplayHint.init(idValue:displayValue:)();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v21 = v20;
    v22 = *(v20 + 16);
    if (v22 >= *(v20 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v21 = v41;
    }

    v23 = v48;
    *(v21 + 16) = v22 + 1;
    (*(v23 + 32))(v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v22, v14, v51);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
    v23 = v48;
  }

  v24 = [a2 givenName];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    (*(v49 + 16))(v8, v50, v4);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v4);
    v29 = [a2 givenName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    SemanticValue.init(string:label:)();
    v30 = v46;
    DisplayHint.init(idValue:displayValue:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v21 = v42;
    }

    v31 = *(v21 + 16);
    if (v31 >= *(v21 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v21 = v43;
    }

    *(v21 + 16) = v31 + 1;
    (*(v23 + 32))(v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v31, v30, v51);
  }

  v32 = [a2 familyName];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    (*(v49 + 16))(v8, v50, v4);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v4);
    v37 = [a2 familyName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    SemanticValue.init(string:label:)();
    v38 = v47;
    DisplayHint.init(idValue:displayValue:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v21 = v44;
    }

    v39 = *(v21 + 16);
    if (v39 >= *(v21 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v21 = v45;
    }

    *(v21 + 16) = v39 + 1;
    (*(v23 + 32))(v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v39, v38, v51);
  }

  return v21;
}

uint64_t DisplayHintFactory.buildGetAttributeListDisplayHint(contactId:type:labeledHandles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  v50 = type metadata accessor for SemanticValue();
  v7 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, _s11SiriKitFlow13SemanticValueVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v38 - v10;
  v48 = type metadata accessor for DisplayHint();
  v42 = *(v48 - 8);
  v12 = MEMORY[0x28223BE20](v48);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = v38 - v15;

  v51 = a1;
  SemanticValue.init(string:label:)();
  v43 = a5;
  result = specialized Array._getCount()();
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  if (result >= 1)
  {
    v17 = 0;
    v38[1] = "ilType";
    v39 = v43 & 0xC000000000000001;
    v45 = v42 + 32;
    v46 = (v7 + 16);
    v18 = MEMORY[0x277D84F90];
    v40 = result;
    v41 = v14;
    do
    {
      if (v39)
      {
        v19 = MEMORY[0x26D5E29D0](v17, v43);
      }

      else
      {
        v19 = *(v43 + 8 * v17 + 32);
      }

      v44 = v19;
      outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v19);
      if (v20)
      {
        v21 = String.sanitizeCNLabel.getter();
        v23 = v22;
      }

      else
      {
        v21 = static String.EMPTY.getter();
        v23 = v24;
      }

      v25 = *v46;
      v26 = v50;
      (*v46)(v11, v51, v50);
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v26);
      String.mapToNLAttributeValue(forType:)(v52, v21, v23);
      SemanticValue.init(string:label:)();
      DisplayHint.init(idValue:displayValue:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v35;
      }

      v27 = *(v18 + 16);
      if (v27 >= *(v18 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v36;
      }

      *(v18 + 16) = v27 + 1;
      v28 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v29 = *(v42 + 72);
      v30 = v18 + v28 + v29 * v27;
      v31 = *(v42 + 32);
      v31(v30, v47, v48);
      v32 = v50;
      v25(v11, v51, v50);
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v32);
      String.mapToNLContactTypeValue(forType:)(v52, v21, v23);

      SemanticValue.init(string:label:)();
      v33 = v41;
      DisplayHint.init(idValue:displayValue:)();
      v34 = *(v18 + 16);
      if (v34 >= *(v18 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v37;
      }

      ++v17;

      *(v18 + 16) = v34 + 1;
      v31(v18 + v28 + v34 * v29, v33, v48);
    }

    while (v40 != v17);
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t specialized DisplayHintFactory.buildGetAttributeListDisplayHint<A>(contactId:labeledHandles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = type metadata accessor for SemanticValue();
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, _s11SiriKitFlow13SemanticValueVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v48 = type metadata accessor for DisplayHint();
  v42 = *(v48 - 8);
  v11 = MEMORY[0x28223BE20](v48);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v38 - v14;

  v51 = a1;
  SemanticValue.init(string:label:)();
  v43 = a4;
  result = specialized Array._getCount()();
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  if (result >= 1)
  {
    v16 = 0;
    v38 = "ilType";
    v39 = v43 & 0xC000000000000001;
    v45 = v42 + 32;
    v46 = (v6 + 16);
    v17 = MEMORY[0x277D84F90];
    v40 = result;
    v41 = v13;
    do
    {
      if (v39)
      {
        v18 = MEMORY[0x26D5E29D0](v16, v43);
      }

      else
      {
        v18 = *(v43 + 8 * v16 + 32);
      }

      v44 = v18;
      v19 = [v18 label];
      if (v19)
      {
        v20 = v19;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = String.sanitizeCNLabel.getter();
        v23 = v22;
      }

      else
      {
        v21 = static String.EMPTY.getter();
        v23 = v24;
      }

      v25 = *v46;
      v26 = v50;
      (*v46)(v10, v51, v50);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v26);
      String.mapToNLAttributeValue(forType:)(2, v21, v23);
      SemanticValue.init(string:label:)();
      DisplayHint.init(idValue:displayValue:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v35;
      }

      v27 = *(v17 + 16);
      if (v27 >= *(v17 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v36;
      }

      *(v17 + 16) = v27 + 1;
      v28 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v29 = *(v42 + 72);
      v30 = v17 + v28 + v29 * v27;
      v31 = *(v42 + 32);
      v31(v30, v47, v48);
      v32 = v50;
      v25(v10, v51, v50);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v32);
      String.mapToNLContactTypeValue(forType:)(2, v21, v23);

      SemanticValue.init(string:label:)();
      v33 = v41;
      DisplayHint.init(idValue:displayValue:)();
      v34 = *(v17 + 16);
      if (v34 >= *(v17 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v37;
      }

      ++v16;

      *(v17 + 16) = v34 + 1;
      v31(v17 + v28 + v34 * v29, v33, v48);
    }

    while (v40 != v16);
    return v17;
  }

  __break(1u);
  return result;
}

{
  v64 = type metadata accessor for SemanticValue();
  v6 = *(v64 - 8);
  v7 = MEMORY[0x28223BE20](v64);
  v55 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, _s11SiriKitFlow13SemanticValueVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v53 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v48 - v13;
  v63 = type metadata accessor for DisplayHint();
  v56 = *(v63 - 8);
  v15 = MEMORY[0x28223BE20](v63);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v62 = v48 - v18;

  SemanticValue.init(string:label:)();
  v57 = a4;
  result = specialized Array._getCount()();
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  if (result >= 1)
  {
    v20 = 0;
    v48[1] = "ilType";
    v49 = v57 & 0xC000000000000001;
    v60 = (v6 + 16);
    v21 = MEMORY[0x277D84F90];
    v61 = a1;
    v51 = v17;
    v52 = v14;
    v50 = result;
    do
    {
      v59 = v20;
      if (v49)
      {
        v22 = MEMORY[0x26D5E29D0](v20, v57);
      }

      else
      {
        v22 = *(v57 + 8 * v20 + 32);
      }

      v58 = v22;
      v23 = [v22 label];
      if (v23)
      {
        v24 = v23;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = String.sanitizeCNLabel.getter();
        v27 = v26;
      }

      else
      {
        v25 = static String.EMPTY.getter();
        v27 = v28;
      }

      v29 = *v60;
      v30 = v64;
      (*v60)(v14, a1, v64);
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v30);
      v31 = v25 == 7174503 && v27 == 0xE300000000000000;
      if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v32 = v25 == 1701670760 && v27 == 0xE400000000000000;
        if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v43 = v25 == 1802661751 && v27 == 0xE400000000000000;
          if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v25 != 0x6C6F6F686373 || v27 != 0xE600000000000000))
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }
        }
      }

      SemanticValue.init(string:label:)();
      DisplayHint.init(idValue:displayValue:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v45;
      }

      v33 = *(v21 + 16);
      if (v33 >= *(v21 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v46;
      }

      *(v21 + 16) = v33 + 1;
      v34 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v35 = *(v56 + 72);
      v36 = *(v56 + 32);
      v36(v21 + v34 + v35 * v33, v62, v63);
      v37 = v53;
      v38 = v64;
      v29(v53, v61, v64);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
      SemanticValue.init(string:label:)();
      v39 = v51;
      DisplayHint.init(idValue:displayValue:)();
      v40 = *(v21 + 16);
      if (v40 >= *(v21 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v47;
      }

      v41 = v52;
      v42 = v59 + 1;

      *(v21 + 16) = v40 + 1;
      v36(v21 + v34 + v40 * v35, v39, v63);
      v20 = v42;
      v31 = v50 == v42;
      v14 = v41;
      a1 = v61;
    }

    while (!v31);
    return v21;
  }

  __break(1u);
  return result;
}

{
  v71 = type metadata accessor for SemanticValue();
  v6 = *(v71 - 8);
  v7 = MEMORY[0x28223BE20](v71);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, _s11SiriKitFlow13SemanticValueVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v70 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  v69 = type metadata accessor for DisplayHint();
  v63 = *(v69 - 8);
  v15 = MEMORY[0x28223BE20](v69);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v55 - v18;

  v72 = a1;
  SemanticValue.init(string:label:)();
  v64 = a4;
  result = specialized Array._getCount()();
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  if (result >= 1)
  {
    v20 = 0;
    v56 = "ilType";
    v57 = v64 & 0xC000000000000001;
    v67 = (v6 + 16);
    v21 = MEMORY[0x277D84F90];
    v59 = v17;
    v60 = v14;
    v58 = result;
    v55 = v63 + 32;
    do
    {
      if (v57)
      {
        v22 = MEMORY[0x26D5E29D0](v20, v64);
      }

      else
      {
        v22 = *(v64 + 8 * v20 + 32);
      }

      v66 = v22;
      v23 = [v22 label];
      if (v23)
      {
        v24 = v23;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = String.sanitizeCNLabel.getter();
        v27 = v26;
      }

      else
      {
        v25 = static String.EMPTY.getter();
        v27 = v28;
      }

      v29 = *v67;
      v30 = v71;
      (*v67)(v14, v72, v71);
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v30);
      v31 = v25 == 1802661751 && v27 == 0xE400000000000000;
      v32 = v31;
      v65 = v32;
      if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v25 != 0x6C616E6F73726570 || v27 != 0xE800000000000000))
      {
        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v42 = v25 == 1701670760 && v27 == 0xE400000000000000;
        v43 = v42;
        if ((v41 & 1) == 0 && !v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v48 = v25 == 0x6C6F6F686373 && v27 == 0xE600000000000000;
          if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v25 != 0x726568746FLL || v27 != 0xE500000000000000))
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }
        }
      }

      SemanticValue.init(string:label:)();
      DisplayHint.init(idValue:displayValue:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v52;
      }

      v33 = *(v21 + 16);
      if (v33 >= *(v21 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v53;
      }

      *(v21 + 16) = v33 + 1;
      v34 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v35 = *(v63 + 72);
      v36 = v21 + v34 + v35 * v33;
      v37 = *(v63 + 32);
      v37(v36, v68, v69);
      v39 = v70;
      v38 = v71;
      v29(v70, v72, v71);
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v38);
      if (v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v25 == 0x6C616E6F73726570 ? (v44 = v27 == 0xE800000000000000) : (v44 = 0), v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v25 == 1701670760 ? (v47 = v27 == 0xE400000000000000) : (v47 = 0), v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v25 == 0x6C6F6F686373 ? (v49 = v27 == 0xE600000000000000) : (v49 = 0), v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v25 == 0x726568746FLL ? (v51 = v27 == 0xE500000000000000) : (v51 = 0), v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))))
      {
      }

      SemanticValue.init(string:label:)();
      v45 = v59;
      DisplayHint.init(idValue:displayValue:)();
      v46 = *(v21 + 16);
      if (v46 >= *(v21 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v54;
      }

      ++v20;

      *(v21 + 16) = v46 + 1;
      v37(v21 + v34 + v46 * v35, v45, v69);
      v14 = v60;
    }

    while (v58 != v20);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t DisplayHint.description.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, _s11SiriKitFlow13SemanticValueVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_1_4();
  v3 = v1 - v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v42 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v42 = 40;
  v43 = 0xE100000000000000;
  DisplayHint.displayValue.getter();
  v13 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_0_2(v12);
  if (v14)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v12, &_s11SiriKitFlow13SemanticValueVSgMd, _s11SiriKitFlow13SemanticValueVSgMR);
LABEL_5:

    v17 = 0xE300000000000000;
    v15 = 7104878;
    goto LABEL_6;
  }

  v15 = SemanticValue.label.getter();
  v17 = v16;
  OUTLINED_FUNCTION_5_14();
  (*(v18 + 8))(v12, v13);
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_6:
  MEMORY[0x26D5E2570](v15, v17);

  MEMORY[0x26D5E2570](8236, 0xE200000000000000);
  DisplayHint.displayValue.getter();
  OUTLINED_FUNCTION_0_2(v10);
  if (v14)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v10, &_s11SiriKitFlow13SemanticValueVSgMd, _s11SiriKitFlow13SemanticValueVSgMR);
  }

  else
  {
    SemanticValue.string.getter();
    v20 = v19;
    OUTLINED_FUNCTION_5_14();
    (*(v21 + 8))(v10, v13);
    if (v20)
    {
      v22 = String.debugDescription.getter();
      v24 = v23;

      goto LABEL_12;
    }
  }

  v24 = 0xE300000000000000;
  v22 = 7104878;
LABEL_12:
  MEMORY[0x26D5E2570](v22, v24);

  MEMORY[0x26D5E2570](0x203E3D2029, 0xE500000000000000);
  v26 = v42;
  v25 = v43;
  v42 = 40;
  v43 = 0xE100000000000000;
  DisplayHint.idValue.getter();
  OUTLINED_FUNCTION_0_2(v7);
  if (v14)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s11SiriKitFlow13SemanticValueVSgMd, _s11SiriKitFlow13SemanticValueVSgMR);
LABEL_16:

    v29 = 0xE300000000000000;
    v27 = 7104878;
    goto LABEL_17;
  }

  v27 = SemanticValue.label.getter();
  v29 = v28;
  OUTLINED_FUNCTION_5_14();
  (*(v30 + 8))(v7, v13);
  if (!v29)
  {
    goto LABEL_16;
  }

LABEL_17:
  MEMORY[0x26D5E2570](v27, v29);

  MEMORY[0x26D5E2570](8236, 0xE200000000000000);
  DisplayHint.idValue.getter();
  OUTLINED_FUNCTION_0_2(v3);
  if (v14)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v3, &_s11SiriKitFlow13SemanticValueVSgMd, _s11SiriKitFlow13SemanticValueVSgMR);
LABEL_22:
    v35 = MEMORY[0x26D5E2880](7104878, 0xE300000000000000);
    goto LABEL_23;
  }

  v31 = SemanticValue.string.getter();
  v33 = v32;
  OUTLINED_FUNCTION_5_14();
  (*(v34 + 8))(v3, v13);
  if (!v33)
  {
    goto LABEL_22;
  }

  v35 = specialized Collection.prefix(_:)(30, v31, v33);
LABEL_23:
  v36 = MEMORY[0x26D5E24E0](v35);
  v38 = v37;

  MEMORY[0x26D5E2570](v36, v38);

  MEMORY[0x26D5E2570](41, 0xE100000000000000);
  v39 = v42;
  v40 = v43;
  v42 = v26;
  v43 = v25;

  MEMORY[0x26D5E2570](v39, v40);

  return v42;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    v3 = String.subscript.getter();

    return v3;
  }

  return result;
}

uint64_t outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v4 < 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x26D5E2AA0](v6);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x26D5E2AA0](v12);
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array._getCount()();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, _sSo16SASTTemplateItem_pMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [SASTTemplateItem] and conformance [A]();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, _sSaySo16SASTTemplateItem_pGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
          v11 = *v10;
          swift_unknownObjectRetain();
          (v9)(v13, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  IsNativeType = specialized Array._hoistableIsNativeTypeChecked()(a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (IsNativeType)
  {
    v7 = swift_unknownObjectRetain();
  }

  else
  {
    v7 = MEMORY[0x26D5E29D0](a2, a3);
  }

  *a1 = v7;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

unint64_t lazy protocol witness table accessor for type [SASTTemplateItem] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16SASTTemplateItem_pGMd, _sSaySo16SASTTemplateItem_pGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A]);
  }

  return result;
}

void OUTLINED_FUNCTION_12_6(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_16_4()
{
  v2 = *(v0 - 112);

  return specialized Array.append<A>(contentsOf:)(v2);
}

uint64_t ContactsCommonCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  _s10Foundation3URLVSgWOcTm_1(a1, &v13 - v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v11 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of ResponseMode?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v11;
}

uint64_t ContactsCommonCATs.genericError()()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_0_14(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v1[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_11_8();

  return v3();
}

uint64_t ContactsCommonCATs.meCardSetup(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ContactsCommonCATs.meCardSetup(device:)()
{
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_29_1(v2);
  v0[5] = v3;
  *(v3 + 16) = xmmword_266966D90;
  *(v3 + 32) = 0x656369766564;
  *(v3 + 40) = 0xE600000000000000;
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  v9 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[6] = v5;
  *v5 = v6;
  v5[1] = ContactsCommonCATs.meCardSetup(device:);
  v7 = v0[2];

  return v9(v7, 0xD00000000000001ALL, 0x800000026696FA50, v3);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v10();
  }
}

uint64_t ContactsCommonCATs.promptCancelled()()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_0_14(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_11_8();

  return v3();
}

uint64_t ContactsCommonCATs.promptForContact()()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_0_14(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_11_8();

  return v3();
}

uint64_t ContactsCommonCATs.unsupportedAction()()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_0_14(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_11_8();

  return v3();
}

uint64_t ContactsCommonCATs.unsupportedAuthFailed()()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_0_14(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_11_8();

  return v3();
}

uint64_t ContactsCommonCATs.unsupportedCompanyNotFound(requestedCompany:)()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_14_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_29_1(v4);
  *(v2 + 48) = v5;
  *(v5 + 16) = xmmword_266966D90;
  *(v5 + 32) = v3;
  *(v5 + 40) = 0x800000026696F990;
  _s10Foundation3URLVSgWOcTm_1(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_16_5(v6);
  if (v7)
  {
    outlined destroy of ResponseMode?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_52();
    (*(v8 + 32))();
  }

  OUTLINED_FUNCTION_0_14(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v2 + 56) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_10_12(v9);

  return v12(v11);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v10();
  }
}

uint64_t ContactsCommonCATs.unsupportedContactNotFound(requestedContact:)()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_14_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_29_1(v4);
  *(v2 + 48) = v5;
  *(v5 + 16) = xmmword_266966D90;
  *(v5 + 32) = v3;
  *(v5 + 40) = 0x800000026696F940;
  _s10Foundation3URLVSgWOcTm_1(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_16_5(v6);
  if (v7)
  {
    outlined destroy of ResponseMode?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_52();
    (*(v8 + 32))();
  }

  OUTLINED_FUNCTION_0_14(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v2 + 56) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_10_12(v9);

  return v12(v11);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v10();
  }
}

uint64_t ContactsCommonCATs.unsupportedLearnPronunciation()()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_0_14(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_11_8();

  return v3();
}

uint64_t ContactsCommonCATs.unsupportedMissingMeCard(isMe:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ContactsCommonCATs.unsupportedMissingMeCard(isMe:)()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_29_1(v2);
  *(v3 + 32) = 1699574633;
  *(v3 + 40) = 0xE400000000000000;
  *(v3 + 72) = MEMORY[0x277D839B0];
  v4 = MEMORY[0x277D55BF0];
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_0_14(v4);
  *(v0 + 32) = v3;
  *(v3 + 16) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 40) = v6;
  *v6 = v7;
  v6[1] = ContactsCommonCATs.unsupportedMissingMeCard(isMe:);
  v8 = *(v0 + 16);

  return v10(v8, 0xD000000000000027, 0x800000026696F910, v3);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t ContactsCommonCATs.unsupportedRelationshipNotFound()()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_0_14(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v1[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_11_8();

  return v3();
}

uint64_t ContactsCommonCATs.__deallocating_deinit()
{
  v0 = CATWrapper.deinit();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t type metadata accessor for ContactsCommonCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContactsCommonCATs;
  if (!type metadata singleton initialization cache for ContactsCommonCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s10Foundation3URLVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_52();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t GetContactAttributeCATs.intentHandledResponse(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:mockGlobals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, void *a10)
{
  v149 = a9;
  v155 = a2;
  HIDWORD(v143) = a8;
  v154 = a1;
  v156 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_0();
  v128 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v126 = v18 - v17;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_6();
  v141 = v20;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_6();
  v140 = v22;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_6();
  v146 = v25;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_19_4();
  v139 = v28;
  type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_1_0();
  v147 = v29;
  v148 = v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_6();
  v142 = v35;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19_4();
  v133 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v40 = OUTLINED_FUNCTION_18_0(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7_6();
  v151 = v42;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_19_4();
  v157 = v44;
  v45 = type metadata accessor for Locale();
  v46 = OUTLINED_FUNCTION_18_0(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8();
  v49 = v48 - v47;
  v50 = type metadata accessor for DialogPerson();
  v51 = a4;

  v150 = a6;
  v52 = a7;
  Locale.init(identifier:)();
  v153 = a5;
  v144 = v50;
  v145 = v49;
  v53 = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v51, a5, v49, 0);
  outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(a3);
  if (v54)
  {
    String.sanitizeCNLabel.getter();

    SpeakableString.init(print:speak:)();
    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  __swift_storeEnumTagSinglePayload(v157, v55, 1, v156);
  LODWORD(v143) = GetContactAttributeCATsModern.hasSameLabels(matches:alternatives:)(v154, v155);
  switch([a3 contactAttributeType])
  {
    case 1uLL:
      v62 = Optional<A>.toContactsEmailHandles.getter(v154);
      Optional<A>.toContactsEmailHandles.getter(v155);
      OUTLINED_FUNCTION_14_8();

      OUTLINED_FUNCTION_5_15();
      v63 = v140;
      OUTLINED_FUNCTION_13_5();
      GetContactAttributeCATs.intentHandledShowEmail(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)();

      outlined destroy of SpeakableString?(v155);
      if (OUTLINED_FUNCTION_20_3() == 1)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_10_13();
      v112 = &v162;
      goto LABEL_38;
    case 2uLL:
      v62 = Optional<A>.toContactsPhoneHandles.getter(v154);
      Optional<A>.toContactsPhoneHandles.getter(v155);
      OUTLINED_FUNCTION_14_8();

      OUTLINED_FUNCTION_5_15();
      v63 = v138;
      OUTLINED_FUNCTION_13_5();
      GetContactAttributeCATs.intentHandledShowPhone(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)();

      outlined destroy of SpeakableString?(v155);
      if (OUTLINED_FUNCTION_20_3() == 1)
      {
LABEL_17:
        OUTLINED_FUNCTION_15_5();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        swift_willThrowTypedImpl();

        type metadata accessor for ContactsError(0);
        v86 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        v87 = OUTLINED_FUNCTION_15_1(v86);
        OUTLINED_FUNCTION_6_11(v87, v88);
        OUTLINED_FUNCTION_3_9();
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_10_13();
      v112 = &v160;
      goto LABEL_38;
    case 3uLL:
      v72 = v150;
      v73 = v52;
      Optional<A>.toContactsAddressHandles(localeString:)(v150, v52, v154, v56, v57, v58, v59, v60, v124, v126, v128, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
      v75 = v74;
      v63 = v141;
      if (!__swift_getEnumTagSinglePayload(v157, 1, v156))
      {
        (*(v129 + 16))(v127, v157, v156);
        v164._countAndFlagsBits = SpeakableString.print.getter();
        v72 = v150;
        v81 = ContactNLIntent.ContactPostalAddressField.init(rawValue:)(v164);
        (*(v129 + 8))(v127, v156);
        if (v81 != 5)
        {
          if (specialized Array._getCount()())
          {
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
            v82 = v125;
            if ((v75 & 0xC000000000000001) != 0)
            {
              v123 = MEMORY[0x26D5E29D0](0, v75);
              outlined init with copy of SpeakableString?(v123 + OBJC_IVAR____TtC19SiriContactsIntents21ContactsAddressHandle_addressLabel, v125);
              swift_unknownObjectRelease();
            }

            else
            {
              outlined init with copy of SpeakableString?(*(v75 + 32) + OBJC_IVAR____TtC19SiriContactsIntents21ContactsAddressHandle_addressLabel, v125);
            }
          }

          else
          {
            v82 = v125;
            __swift_storeEnumTagSinglePayload(v125, 1, 1, v156);
          }

          outlined assign with take of SpeakableString?(v82, v157);
        }
      }

      Optional<A>.toContactsAddressHandles(localeString:)(v72, v73, v155, v76, v77, v78, v79, v80, v125, v127, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
      v62 = v116;
      OUTLINED_FUNCTION_14_8();

      OUTLINED_FUNCTION_5_15();
      GetContactAttributeCATs.intentHandledShowAddress(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)();

      outlined destroy of SpeakableString?(v73);
      if (OUTLINED_FUNCTION_20_3() == 1)
      {
        OUTLINED_FUNCTION_15_5();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        swift_willThrowTypedImpl();

        type metadata accessor for ContactsError(0);
        v117 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        v118 = OUTLINED_FUNCTION_15_1(v117);
        OUTLINED_FUNCTION_6_11(v118, v119);
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_10_13();
      v112 = &v163;
LABEL_38:
      v71 = *(v112 - 32);
      goto LABEL_39;
    case 4uLL:
      type metadata accessor for DialogCalendar();
      v98 = a10;
      v99 = v51;
      DialogCalendar.init(contact:mockGlobals:)(v99, a10);
      v62 = v100;
      type metadata accessor for ContactsAgeInfo();
      v101 = ContactsAgeInfo.__allocating_init(contact:contactAttribute:mockGlobals:)(v99, a3, 0);

      v89 = v139;
      GetContactAttributeCATs.intentHandledShowAge(birthdayInfo:ageInfo:contact:isMe:)(v62, v101, v53, v153 & 1);

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_16_6();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        swift_willThrowTypedImpl();

        type metadata accessor for ContactsError(0);
        v102 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        v103 = OUTLINED_FUNCTION_15_1(v102);
        OUTLINED_FUNCTION_6_11(v103, v104);
        OUTLINED_FUNCTION_3_9();
        v70 = v105 - 2;
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_10_13();
      v113 = &v161;
      goto LABEL_29;
    case 5uLL:
      type metadata accessor for DialogCalendar();
      v106 = a10;
      DialogCalendar.init(contact:mockGlobals:)(v51, a10);
      v62 = v107;

      v89 = v136;
      GetContactAttributeCATs.intentHandledShowBirthday(birthdayInfo:contact:isMe:)(v62, v53, v153 & 1);

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_16_6();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        swift_willThrowTypedImpl();

        type metadata accessor for ContactsError(0);
        v108 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        v109 = OUTLINED_FUNCTION_15_1(v108);
        OUTLINED_FUNCTION_6_11(v109, v110);
        OUTLINED_FUNCTION_3_9();
        v70 = v111 + 3;
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_10_13();
      v113 = v158;
      goto LABEL_29;
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
      [a3 contactAttributeType];
      [a3 contactAttributeType];
      CNContact.requestedName(_:)([a3 contactAttributeType]);
      SpeakableString.init(print:speak:)();
      __swift_storeEnumTagSinglePayload(v151, 0, 1, v156);
      v61 = v51;

      Locale.init(identifier:)();
      v62 = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v61, 1, v145, 0);
      v63 = v146;
      GetContactAttributeCATs.intentHandledShowName(nicknameRequest:lastNameRequest:nameValue:contact:isMe:)();

      outlined destroy of SpeakableString?(v151);
      if (OUTLINED_FUNCTION_20_3() == 1)
      {
        OUTLINED_FUNCTION_15_5();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        swift_willThrowTypedImpl();

        type metadata accessor for ContactsError(0);
        v64 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        v65 = OUTLINED_FUNCTION_15_1(v64);
        OUTLINED_FUNCTION_6_11(v65, v66);
        OUTLINED_FUNCTION_3_9();
        v70 = v69 - 1;
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_10_13();
      v71 = v142;
LABEL_39:
      v114 = v71;
      v115 = v63;
      goto LABEL_40;
    case 0xBuLL:
      v62 = v151;
      DialogPerson.company.getter();

      v89 = v137;
      GetContactAttributeCATs.intentHandledShowCompany(isMe:companyName:contact:)(v153 & 1, v151, v53, v90, v91, v92, v93, v94, v124, v126, v128, v130, v131, v132, v133, v134, v135, v136, v137, v138);

      outlined destroy of SpeakableString?(v151);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_16_6();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        swift_willThrowTypedImpl();

        type metadata accessor for ContactsError(0);
        v95 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        v96 = OUTLINED_FUNCTION_15_1(v95);
        OUTLINED_FUNCTION_6_11(v96, v97);
LABEL_34:
        OUTLINED_FUNCTION_3_9();
        v70 = v120 + 2;
LABEL_35:
        *v67 = v70;
        v67[1] = v68;
LABEL_36:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return outlined destroy of SpeakableString?(v157);
      }

      else
      {

        OUTLINED_FUNCTION_10_13();
        v113 = &v159;
LABEL_29:
        v71 = *(v113 - 32);
        v114 = v71;
        v115 = v89;
LABEL_40:
        v122 = v147;
        (v62)(v114, v115, v147);
        (v62)(v149, v71, v122);
        return outlined destroy of SpeakableString?(v157);
      }

    default:
      type metadata accessor for ContactsError(0);
      v83 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
      v84 = OUTLINED_FUNCTION_15_1(v83);
      OUTLINED_FUNCTION_6_11(v84, v85);
      goto LABEL_36;
  }
}

uint64_t GetContactAttributeCATs.disambiguateLabeledAttribute(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v90 = a1;
  HIDWORD(v92) = a8;
  HIDWORD(v95) = a5;
  v91 = a2;
  v88 = a9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_2_16();
  v85 = v13;
  OUTLINED_FUNCTION_16();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v82 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = (&v82 - v18);
  type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_1_0();
  v86 = v21;
  v87 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_16();
  v84 = v22;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_6();
  v82 = v24;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_19_4();
  v83 = v26;
  v27 = type metadata accessor for Locale();
  v28 = OUTLINED_FUNCTION_18_0(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v33 = OUTLINED_FUNCTION_18_0(v32);
  MEMORY[0x28223BE20](v33);
  v35 = &v82 - v34;
  outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(a3);
  if (v36)
  {
    SpeakableString.init(print:speak:)();
    v37 = type metadata accessor for SpeakableString();
    v38 = 0;
  }

  else
  {
    v37 = type metadata accessor for SpeakableString();
    v38 = 1;
  }

  __swift_storeEnumTagSinglePayload(v35, v38, 1, v37);
  type metadata accessor for DialogPerson();
  v39 = a4;

  Locale.init(identifier:)();
  DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v39, BYTE4(v95) & 1, v31, 0);
  v40 = [a3 contactAttributeType];
  if (v40 == 1)
  {
    Optional<A>.toContactsEmailHandles.getter(v90);
    Optional<A>.toContactsEmailHandles.getter(v91);

    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_11_9();
    GetContactAttributeCATs.disambiguateEmail(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)();

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v65 = *v17;
      v97 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      swift_willThrowTypedImpl();

      type metadata accessor for ContactsError(0);
      v66 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
      v67 = OUTLINED_FUNCTION_15_1(v66);
      OUTLINED_FUNCTION_6_11(v67, v68);
      goto LABEL_13;
    }

    outlined destroy of SpeakableString?(v35);
    v77 = *(v86 + 32);
    v78 = v82;
    v79 = v17;
    v80 = v87;
    v77(v82, v79, v87);
    return (v77)(v88, v78, v80);
  }

  else
  {
    if (v40 == 3)
    {
      Optional<A>.toContactsAddressHandles(localeString:)(a6, a7, v90, v41, v42, v43, v44, v45, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
      v51 = v50;
      Optional<A>.toContactsAddressHandles(localeString:)(a6, a7, v91, v52, v53, v54, v55, v56, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);

      OUTLINED_FUNCTION_8_10();
      v57 = v85;
      OUTLINED_FUNCTION_11_9();
      GetContactAttributeCATs.disambiguateAddress(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_16_6();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        swift_willThrowTypedImpl();

        type metadata accessor for ContactsError(0);
        v58 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        v59 = OUTLINED_FUNCTION_15_1(v58);
        OUTLINED_FUNCTION_6_11(v59, v60);
        OUTLINED_FUNCTION_18_4();
        v64 = v63 | 2;
LABEL_14:
        *v61 = v64;
        v61[1] = v62;
LABEL_16:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return outlined destroy of SpeakableString?(v35);
      }

      outlined destroy of SpeakableString?(v35);
      v73 = *(v86 + 32);
      v74 = v84;
      v75 = v84;
      v76 = v57;
    }

    else
    {
      if (v40 != 2)
      {
        type metadata accessor for ContactsError(0);
        v69 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        v70 = OUTLINED_FUNCTION_15_1(v69);
        OUTLINED_FUNCTION_6_11(v70, v71);
        goto LABEL_16;
      }

      Optional<A>.toContactsPhoneHandles.getter(v90);
      Optional<A>.toContactsPhoneHandles.getter(v91);

      OUTLINED_FUNCTION_8_10();
      OUTLINED_FUNCTION_11_9();
      GetContactAttributeCATs.disambiguatePhone(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v97 = *v19;
        v46 = v97;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        swift_willThrowTypedImpl();

        type metadata accessor for ContactsError(0);
        v47 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        v48 = OUTLINED_FUNCTION_15_1(v47);
        OUTLINED_FUNCTION_6_11(v48, v49);
LABEL_13:
        OUTLINED_FUNCTION_18_4();
        goto LABEL_14;
      }

      outlined destroy of SpeakableString?(v35);
      v73 = *(v86 + 32);
      v74 = v83;
      v75 = v83;
      v76 = v19;
    }

    v81 = v87;
    v73(v75, v76, v87);
    return (v73)(v88, v74, v81);
  }
}

uint64_t OUTLINED_FUNCTION_14_8()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 152);

  return outlined init with copy of SpeakableString?(v2, v3);
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t DialogDuration.init(_:mockGlobals:)()
{
  OUTLINED_FUNCTION_0_16();
  type metadata accessor for DialogDuration.Builder();
  swift_allocObject();
  DialogDuration.Builder.init()();
  dispatch thunk of DialogDuration.Builder.withSecs(_:)();

  v1 = dispatch thunk of DialogDuration.__allocating_init(builder:)();
  if (v0)
  {
    dispatch thunk of DialogDuration.mockGlobals.setter();
  }

  return v1;
}

uint64_t DialogCalendar.init(_:mockGlobals:)()
{
  OUTLINED_FUNCTION_0_16();
  type metadata accessor for DialogCalendar.Builder();
  swift_allocObject();
  DialogCalendar.Builder.init()();
  dispatch thunk of DialogCalendar.Builder.withSecs(_:)();

  v1 = dispatch thunk of DialogCalendar.__allocating_init(builder:)();
  if (v0)
  {
    dispatch thunk of DialogCalendar.mockGlobals.setter();
  }

  return v1;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized Collection.first.getter(a1, MEMORY[0x277D5FE08], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D5DB80], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D5E4F0], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D5E5B8], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D5BDD8], a2);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t Recommendation<A>.assignConfidence()()
{
  v1 = type metadata accessor for Contact();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v59 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - v17;
  (*(v15 + 16))(&v59 - v17, v0, v13);
  v19 = (*(v15 + 88))(v18, v13);
  if (v19 == *MEMORY[0x277D56080])
  {
    v20 = OUTLINED_FUNCTION_6_12();
    v21(v20);
    (*(v3 + 32))(v12, v18, v1);
    v22 = Contact.id.getter();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference7ContactVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference7ContactVGMR);
      v26 = v1;
      v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_266966D90;
      static Contact.confidenceScore = 1;
      (*(v3 + 16))(v28 + v27, v12, v26);
      (*(v3 + 8))(v12, v26);
      return v28;
    }

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.siriContacts);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26686A000, v51, v52, "ContactResolver: Contact resolved but no ID is present, will not consider as a match", v53, 2u);
      MEMORY[0x26D5E3300](v53, -1, -1);
    }

    (*(v3 + 8))(v12, v1);
    return MEMORY[0x277D84F90];
  }

  if (v19 == *MEMORY[0x277D56068])
  {
    v29 = OUTLINED_FUNCTION_6_12();
    v30(v29);
    (*(v3 + 32))(v10, v18, v1);
    v31 = Contact.id.getter();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference7ContactVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference7ContactVGMR);
      v35 = v1;
      v36 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_266966D90;
      static Contact.confidenceScore = 0;
      (*(v3 + 16))(v28 + v36, v10, v35);
      (*(v3 + 8))(v10, v35);
      return v28;
    }

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.siriContacts);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_26686A000, v55, v56, "ContactResolver: Contact resolved but no ID is present, will not consider as a match", v57, 2u);
      MEMORY[0x26D5E3300](v57, -1, -1);
    }

    (*(v3 + 8))(v10, v1);
    return MEMORY[0x277D84F90];
  }

  if (v19 != *MEMORY[0x277D56070])
  {
    if (v19 != *MEMORY[0x277D56078])
    {
      MEMORY[0x28223BE20](v19);
      *(&v59 - 2) = v0;
      fatalError(_:file:line:)(partial apply for implicit closure #1 in Recommendation<A>.assignConfidence(), (&v59 - 4), "/Library/Caches/com.apple.xbs/Sources/SiriContacts/SiriContactsIntents/Extension/SiriInference/ContactResolver+SiriContacts.swift", 129, 2u, 46);
    }

    return MEMORY[0x277D84F90];
  }

  v37 = OUTLINED_FUNCTION_6_12();
  v38(v37);
  v39 = *v18;
  v40 = *(*v18 + 16);
  if (!v40)
  {

    return MEMORY[0x277D84F90];
  }

  v62 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
  v28 = v62;
  v42 = *(v3 + 16);
  v41 = v3 + 16;
  v43 = *(v41 + 64);
  v59 = v39;
  v60 = (v43 + 32) & ~v43;
  v61 = v42;
  v44 = v39 + v60;
  v45 = *(v41 + 56);
  v46 = (v41 + 16);
  do
  {
    v61(v7, v44, v1);
    static Contact.confidenceScore = 0;
    v62 = v28;
    v47 = v1;
    v49 = *(v28 + 16);
    v48 = *(v28 + 24);
    if (v49 >= v48 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1);
      v28 = v62;
    }

    *(v28 + 16) = v49 + 1;
    (*v46)(v28 + v60 + v49 * v45, v7, v47);
    v44 += v45;
    --v40;
    v1 = v47;
  }

  while (v40);

  return v28;
}

uint64_t Contact.asHighConfidenceMatch.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Contact.confidenceScore = a1;
  v4 = type metadata accessor for Contact();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t implicit closure #1 in Recommendation<A>.assignConfidence()()
{
  v0 = type metadata accessor for ContactsError(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
  lazy protocol witness table accessor for type Recommendation<Contact> and conformance Recommendation<A>();
  *v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v2[1] = v3;
  swift_storeEnumTagMultiPayload();
  v4 = ContactsError.errorDescription.getter();
  outlined destroy of ContactsError(v2);
  return v4;
}

uint64_t Contact.formattedFullName.getter()
{
  v0 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  PersonNameComponents.init()();
  Contact.namePrefix.getter();
  PersonNameComponents.namePrefix.setter();
  Contact.givenName.getter();
  PersonNameComponents.givenName.setter();
  Contact.middleName.getter();
  PersonNameComponents.middleName.setter();
  Contact.familyName.getter();
  PersonNameComponents.familyName.setter();
  Contact.nameSuffix.getter();
  PersonNameComponents.nameSuffix.setter();
  v7 = objc_opt_self();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v9 = [v7 localizedStringFromPersonNameComponents:isa style:2 options:0];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v2 + 8))(v6, v0);
  return v10;
}

{
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponents();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PersonNameComponents.init()();
  outlined bridged method (pb) of @objc Contact.namePrefix.getter(v1);
  PersonNameComponents.namePrefix.setter();
  outlined bridged method (pb) of @objc Contact.givenName.getter(v1);
  PersonNameComponents.givenName.setter();
  outlined bridged method (pb) of @objc Contact.middleName.getter(v1);
  PersonNameComponents.middleName.setter();
  outlined bridged method (pb) of @objc Contact.familyName.getter(v1);
  PersonNameComponents.familyName.setter();
  outlined bridged method (pb) of @objc Contact.nameSuffix.getter(v1);
  PersonNameComponents.nameSuffix.setter();
  v6 = objc_opt_self();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v8 = [v6 localizedStringFromPersonNameComponents:isa style:2 options:0];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v3 + 8))(v5, v2);
  return v9;
}

BOOL Contact.isEmpty.getter(uint64_t a1)
{
  v1 = Contact.namePrefix.getter();
  OUTLINED_FUNCTION_2_17(v1, v2);
  OUTLINED_FUNCTION_0_17();
  if (v3)
  {
    return 0;
  }

  v4 = Contact.nameSuffix.getter();
  OUTLINED_FUNCTION_2_17(v4, v5);
  OUTLINED_FUNCTION_0_17();
  if (v6)
  {
    return 0;
  }

  v7 = Contact.givenName.getter();
  OUTLINED_FUNCTION_2_17(v7, v8);
  OUTLINED_FUNCTION_0_17();
  if (v9)
  {
    return 0;
  }

  v10 = Contact.middleName.getter();
  OUTLINED_FUNCTION_2_17(v10, v11);
  OUTLINED_FUNCTION_0_17();
  if (v12)
  {
    return 0;
  }

  v13 = Contact.familyName.getter();
  OUTLINED_FUNCTION_2_17(v13, v14);
  OUTLINED_FUNCTION_0_17();
  if (v15)
  {
    return 0;
  }

  v16 = Contact.organizationName.getter();
  OUTLINED_FUNCTION_2_17(v16, v17);
  OUTLINED_FUNCTION_0_17();
  if (v18)
  {
    return 0;
  }

  v19 = *(Contact.contactRelations.getter() + 16);

  if (v19)
  {
    return 0;
  }

  v20 = Contact.nickname.getter();
  OUTLINED_FUNCTION_2_17(v20, v21);
  OUTLINED_FUNCTION_0_17();
  if (v22)
  {
    return 0;
  }

  v23 = *(Contact.handles.getter() + 16);

  if (v23)
  {
    return 0;
  }

  v24 = Contact.id.getter();
  OUTLINED_FUNCTION_2_17(v24, v25);
  OUTLINED_FUNCTION_0_17();
  return !v26 && Contact.isMe.getter() == 2;
}

uint64_t Contact.asContactQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  OUTLINED_FUNCTION_18_0(v2);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v3);
  v57 = v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference24ContactRelationshipQueryVSgMd, &_s13SiriInference24ContactRelationshipQueryVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  v56 = v55 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7ContactV12LabeledValueVy_SSGMd, &_s13SiriInference7ContactV12LabeledValueVy_SSGMR);
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v10);
  v59 = v55 - v11;
  v12 = type metadata accessor for ContactHandle.HandleType();
  v13 = OUTLINED_FUNCTION_18_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13ContactHandleVSgMd, &_s13SiriInference13ContactHandleVSgMR);
  OUTLINED_FUNCTION_18_0(v14);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v15);
  v17 = v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference18ContactHandleQueryVSgMd, _s13SiriInference18ContactHandleQueryVSgMR);
  OUTLINED_FUNCTION_18_0(v18);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v19);
  v21 = v55 - v20;
  v22 = type metadata accessor for ContactOntologySource();
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  v28 = v27 - v26;
  ContactQuery.init()();
  (*(v24 + 104))(v28, *MEMORY[0x277D56118], v22);
  ContactQuery.ontologySource.setter();
  Contact.givenName.getter();
  ContactQuery.fullName.setter();
  Contact.isMe.getter();
  ContactQuery.isMe.setter();
  v29 = Contact.handles.getter();
  specialized Collection.first.getter(v29, MEMORY[0x277D56040], v17);

  v30 = type metadata accessor for ContactHandle();
  if (__swift_getEnumTagSinglePayload(v17, 1, v30) == 1)
  {
    outlined destroy of ContactHandle?(v17);
    v31 = 1;
  }

  else
  {
    ContactHandle.type.getter();
    ContactHandle.label.getter();
    ContactHandle.value.getter();
    ContactHandleQuery.init(type:label:value:)();
    (*(*(v30 - 8) + 8))(v17, v30);
    v31 = 0;
  }

  v32 = type metadata accessor for ContactHandleQuery();
  __swift_storeEnumTagSinglePayload(v21, v31, 1, v32);
  ContactQuery.handle.setter();
  Contact.middleName.getter();
  ContactQuery.middleName.setter();
  Contact.nickname.getter();
  ContactQuery.nickname.setter();
  Contact.namePrefix.getter();
  ContactQuery.namePrefix.setter();
  Contact.nameSuffix.getter();
  ContactQuery.nameSuffix.setter();
  Contact.organizationName.getter();
  ContactQuery.organizationName.setter();
  Contact.previousFamilyName.getter();
  ContactQuery.previousFamilyName.setter();
  v33 = Contact.contactRelations.getter();
  v34 = *(v33 + 16);
  if (v34)
  {
    v55[1] = v33;
    v55[2] = a1;
    v36 = *(v9 + 16);
    v35 = v9 + 16;
    v58 = v36;
    v37 = v33 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v38 = *(v35 + 56);
    v39 = (v35 - 8);
    v40 = MEMORY[0x277D84F90];
    do
    {
      v42 = v59;
      v41 = v60;
      v58(v59, v37, v60);
      v43 = Contact.LabeledValue.label.getter();
      v45 = v44;
      (*v39)(v42, v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 16) + 1, 1, v40);
        v40 = v49;
      }

      v47 = *(v40 + 16);
      v46 = *(v40 + 24);
      if (v47 >= v46 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v40);
        v40 = v50;
      }

      *(v40 + 16) = v47 + 1;
      v48 = v40 + 16 * v47;
      *(v48 + 32) = v43;
      *(v48 + 40) = v45;
      v37 += v38;
      --v34;
    }

    while (v34);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  if (!*(v40 + 16))
  {
  }

  v51 = type metadata accessor for ContactQuery();
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v51);
  v52 = v56;
  ContactRelationshipQuery.init(label:fromContact:)();
  v53 = type metadata accessor for ContactRelationshipQuery();
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);
  return ContactQuery.relationship.setter();
}

unint64_t lazy protocol witness table accessor for type Recommendation<Contact> and conformance Recommendation<A>()
{
  result = lazy protocol witness table cache variable for type Recommendation<Contact> and conformance Recommendation<A>;
  if (!lazy protocol witness table cache variable for type Recommendation<Contact> and conformance Recommendation<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Recommendation<Contact> and conformance Recommendation<A>);
  }

  return result;
}

uint64_t outlined destroy of ContactsError(uint64_t a1)
{
  v2 = type metadata accessor for ContactsError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of ContactHandle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13ContactHandleVSgMd, &_s13SiriInference13ContactHandleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1, uint64_t a2)
{
}

uint64_t UsoTaskBuilder_noVerb_common_Person.init(name:contactId:handle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = dispatch thunk of UsoTaskBuilder_noVerb_common_Person.__allocating_init()();
  type metadata accessor for UsoEntityBuilder_common_Person();
  v7 = a5;

  UsoEntityBuilder_common_Person.init(name:contactId:handle:)();
  dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();

  return v6;
}

uint64_t ContactNLv3Intent.toSiriKitIntent(referenceResolver:previousIntent:)(uint64_t a1)
{
  v33 = a1;
  v1 = type metadata accessor for ContactNLv3Intent(0);
  MEMORY[0x28223BE20](v1);
  v34 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = MEMORY[0x277D837D0];
  v35[4] = lazy protocol witness table accessor for type String and conformance String();
  strcpy(v35, "NLv3IntentOnly");
  HIBYTE(v35[1]) = -18;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v6 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v7 = static os_signpost_type_t.begin.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266966D90;
  outlined init with copy of DeviceState(v35, v8 + 32);
  os_signpost(_:dso:log:name:signpostID:_:_:)(v7, &dword_26686A000, v6, "ToSiriKitIntent", 15, 2, v5, "Parse = %s", 0xA);

  v9 = &v5[*(v3 + 20)];
  *v9 = "ToSiriKitIntent";
  *(v9 + 1) = 15;
  v9[16] = 2;
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  if ((ContactNLv3Intent.isAskingForAllContacts.getter() & 1) != 0 || (ContactNLv3Intent.isDeleteContacts.getter(3) & 1) != 0 || (ContactNLv3Intent.isDeleteContacts.getter(2) & 1) != 0 || ContactNLv3Intent.isModifyUnsupportedAttribute.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v10 = type metadata accessor for Logger();
    v11 = OUTLINED_FUNCTION_52_0(v10, static Logger.siriContacts);
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_30();
      *v13 = 0;
      _os_log_impl(&dword_26686A000, v11, v12, "#ContactNLv3Intent.toSiriKitIntent: found unsupported parse, returning nil", v13, 2u);
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_12;
  }

  if (ContactNLv3Intent.hasModifyVerb.getter())
  {
    goto LABEL_25;
  }

  if (one-time initialization token for setNickName != -1)
  {
    OUTLINED_FUNCTION_6_13(&one-time initialization token for setNickName);
  }

  v16 = static ContactNLv3Intent.setNickName;
  lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent();
  OUTLINED_FUNCTION_16_7(v16);
  if (v35[1])
  {
    goto LABEL_24;
  }

  if (one-time initialization token for setRelationship != -1)
  {
    OUTLINED_FUNCTION_5_16(&one-time initialization token for setRelationship);
  }

  OUTLINED_FUNCTION_16_7(static ContactNLv3Intent.setRelationship);
  if (v35[1])
  {
    goto LABEL_24;
  }

  if (one-time initialization token for removeRelationship != -1)
  {
    OUTLINED_FUNCTION_4_9(&one-time initialization token for removeRelationship);
  }

  OUTLINED_FUNCTION_16_7(static ContactNLv3Intent.removeRelationship);
  if (v35[1])
  {
LABEL_24:

LABEL_25:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_52_0(v17, static Logger.siriContacts);
    v19 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_6(v19))
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_9_10(&dword_26686A000, v20, v21, "#ContactNLv3Intent.toSiriKitIntent: converting parse to ModifyContactAttributeIntent");
      OUTLINED_FUNCTION_6();
    }

    type metadata accessor for ModifyContactAttributeIntent();
    OUTLINED_FUNCTION_10_14();
    outlined init with copy of DeviceState(v33, v35);
    v14 = ModifyContactAttributeIntent.__allocating_init(_:referenceResolver:)(15, v35);
    goto LABEL_13;
  }

  if (ContactNLv3Intent.isGetContactAttribute.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v22 = type metadata accessor for Logger();
    v23 = OUTLINED_FUNCTION_52_0(v22, static Logger.siriContacts);
    v24 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_6(v24))
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_9_10(&dword_26686A000, v25, v26, "#ContactNLv3Intent.toSiriKitIntent: converting parse to GetContactAttributeIntent");
      OUTLINED_FUNCTION_6();
    }

    type metadata accessor for GetContactAttributeIntent();
    OUTLINED_FUNCTION_10_14();
    outlined init with copy of DeviceState(v33, v35);
    v14 = GetContactAttributeIntent.__allocating_init(_:referenceResolver:)(0xF, v35);
  }

  else
  {
    if ((ContactNLv3Intent.isGetContact.getter() & 1) == 0)
    {
LABEL_12:
      v14 = 0;
      goto LABEL_13;
    }

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v27 = type metadata accessor for Logger();
    v28 = OUTLINED_FUNCTION_52_0(v27, static Logger.siriContacts);
    v29 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_6(v29))
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_9_10(&dword_26686A000, v30, v31, "#ContactNLv3Intent.toSiriKitIntent: converting parse to GetContactIntent");
      OUTLINED_FUNCTION_6();
    }

    type metadata accessor for GetContactIntent();
    OUTLINED_FUNCTION_10_14();
    outlined init with copy of DeviceState(v33, v35);
    v14 = GetContactIntent.__allocating_init(_:referenceResolver:)(15, v35);
  }

LABEL_13:
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v5);
  return v14;
}

uint64_t ContactNLv3Intent.isGetContactAttribute.getter()
{
  if (one-time initialization token for contactAttributes != -1)
  {
    OUTLINED_FUNCTION_8_11(&one-time initialization token for contactAttributes);
  }

  type metadata accessor for ContactNLv3Intent(0);
  lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent();
  OUTLINED_FUNCTION_2_18();
  v0 = *(IntentNodeTraversable.values<A>(forNode:)() + 16);

  if (!v0 || ContactNLv3Intent.containsAttribute(_:)())
  {
    if (one-time initialization token for contactType != -1)
    {
      OUTLINED_FUNCTION_7_7(&one-time initialization token for contactType);
    }

    OUTLINED_FUNCTION_2_18();
    IntentNodeTraversable.value<A>(forNode:)();
    if (v3)
    {
    }

    else if ((ContactNLv3Intent.isPronounceName.getter() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if ((ContactNLv3Intent.hasModifyVerb.getter() & 1) == 0)
  {
    v1 = ContactNLv3Intent.isLearnPronunciation.getter() ^ 1;
    return v1 & 1;
  }

LABEL_11:
  v1 = 0;
  return v1 & 1;
}

uint64_t ContactNLv3Intent.getSiriKitIntentType()(uint64_t a1)
{
  if ((ContactNLv3Intent.isAskingForAllContacts.getter() & 1) != 0 || (ContactNLv3Intent.isDeleteContacts.getter(3) & 1) != 0 || (ContactNLv3Intent.isDeleteContacts.getter(2) & 1) != 0 || ContactNLv3Intent.isModifyUnsupportedAttribute.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v1 = type metadata accessor for Logger();
    v2 = OUTLINED_FUNCTION_52_0(v1, static Logger.siriContacts);
    v3 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v3))
    {
      v4 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v4);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v5, v6, "#ContactNLv3Intent.getSiriKitIntentType: found unsupported parse, returning nil");
      OUTLINED_FUNCTION_11_1();
    }

    return 0;
  }

  if (ContactNLv3Intent.hasModifyVerb.getter())
  {
    goto LABEL_21;
  }

  if (one-time initialization token for setNickName != -1)
  {
    OUTLINED_FUNCTION_6_13(&one-time initialization token for setNickName);
  }

  type metadata accessor for ContactNLv3Intent(0);
  lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent();
  OUTLINED_FUNCTION_2_18();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v26)
  {

LABEL_21:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v8 = type metadata accessor for Logger();
    v9 = OUTLINED_FUNCTION_52_0(v8, static Logger.siriContacts);
    v10 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v10))
    {
      v11 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v11);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v12, v13, "#ContactNLv3Intent.getSiriKitIntentType: ModifyContactAttributeIntent");
      OUTLINED_FUNCTION_11_1();
    }

    return type metadata accessor for ModifyContactAttributeIntent();
  }

  if (one-time initialization token for setRelationship != -1)
  {
    OUTLINED_FUNCTION_5_16(&one-time initialization token for setRelationship);
  }

  OUTLINED_FUNCTION_2_18();
  IntentNodeTraversable.value<A>(forNode:)();
  if (one-time initialization token for removeRelationship != -1)
  {
    OUTLINED_FUNCTION_4_9(&one-time initialization token for removeRelationship);
  }

  OUTLINED_FUNCTION_2_18();
  IntentNodeTraversable.value<A>(forNode:)();
  if (ContactNLv3Intent.isGetContactAttribute.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v14 = type metadata accessor for Logger();
    v15 = OUTLINED_FUNCTION_52_0(v14, static Logger.siriContacts);
    v16 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v16))
    {
      v17 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v17);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v18, v19, "#ContactNLv3Intent.getSiriKitIntentType: GetContactAttributeIntent");
      OUTLINED_FUNCTION_11_1();
    }

    return type metadata accessor for GetContactAttributeIntent();
  }

  else
  {
    if ((ContactNLv3Intent.isGetContact.getter() & 1) == 0)
    {
      return 0;
    }

    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v20 = type metadata accessor for Logger();
    v21 = OUTLINED_FUNCTION_52_0(v20, static Logger.siriContacts);
    v22 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_2(v22))
    {
      v23 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v23);
      OUTLINED_FUNCTION_7_4(&dword_26686A000, v24, v25, "#ContactNLv3Intent.getSiriKitIntentType: GetContactIntent");
      OUTLINED_FUNCTION_11_1();
    }

    return type metadata accessor for GetContactIntent();
  }
}

uint64_t ContactNLv3Intent.isDeleteContacts.getter(uint64_t a1)
{
  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10(&one-time initialization token for contactVerb);
  }

  type metadata accessor for ContactNLv3Intent(0);
  lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v4 == 17)
  {
    v2 = 0;
  }

  else
  {
    v2 = specialized == infix<A>(_:_:)(v4, a1);
  }

  return v2 & 1;
}

BOOL ContactNLv3Intent.isModifyUnsupportedAttribute.getter()
{
  if ((ContactNLv3Intent.hasFreshVerb.getter() & 1) == 0)
  {
    return 0;
  }

  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10(&one-time initialization token for contactVerb);
  }

  type metadata accessor for ContactNLv3Intent(0);
  lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v4 != 17 && (specialized == infix<A>(_:_:)(v4, 4) & 1) != 0)
  {
    return (ContactNLv3Intent.isModifyOtherContactNickname.getter() & 1) != 0 || (ContactNLv3Intent.hasAddressAttribute.getter() & 1) != 0 || ContactNLv3Intent.containsAttribute(_:)() || (ContactNLv3Intent.containsAttribute(_:)(), (v0 & 1) != 0) || ContactNLv3Intent.containsContactType(_:)(&outlined read-only object #0 of one-time initialization function for emailAttributes) || (ContactNLv3Intent.containsAttribute(_:)(), (v1 & 1) != 0) || ContactNLv3Intent.containsContactType(_:)(&outlined read-only object #0 of one-time initialization function for phoneAttributes) || ContactNLv3Intent.containsAttribute(_:)() || ContactNLv3Intent.containsAttribute(_:)() || ContactNLv3Intent.containsAttribute(_:)();
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent and conformance ContactNLv3Intent;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent and conformance ContactNLv3Intent)
  {
    type metadata accessor for ContactNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent and conformance ContactNLv3Intent);
  }

  return result;
}

uint64_t outlined destroy of PersonIntentNode?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ContactNLv3Intent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactNLv3Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_11(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_10_14()
{
  v3 = *(v1 - 128);

  return outlined init with copy of ContactNLv3Intent(v0, v3);
}

BOOL OUTLINED_FUNCTION_15_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_16_7(uint64_t a1)
{

  return IntentNodeTraversable.value<A>(forNode:)();
}

uint64_t type metadata accessor for GetContactCATsModern(uint64_t a1)
{
  result = type metadata singleton initialization cache for GetContactCATsModern;
  if (!type metadata singleton initialization cache for GetContactCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GetContactCATsModern.intentHandledResponse(isMe:requestedContact:shouldPrompt:)(char a1, uint64_t a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  *(v4 + 56) = a1;
  return MEMORY[0x2822009F8](GetContactCATsModern.intentHandledResponse(isMe:requestedContact:shouldPrompt:), 0, 0);
}

uint64_t GetContactCATsModern.intentHandledResponse(isMe:requestedContact:shouldPrompt:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 32) = 1699574633;
  *(v3 + 40) = 0xE400000000000000;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 16) = xmmword_266966D80;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0xD000000000000010;
  *(v3 + 88) = 0x800000026696F940;
  v5 = 0;
  if (v1)
  {
    v5 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  v6 = *(v0 + 57);
  *(v3 + 96) = v1;
  *(v3 + 120) = v5;
  strcpy((v3 + 128), "shouldPrompt");
  *(v3 + 141) = 0;
  *(v3 + 142) = -5120;
  *(v3 + 168) = v4;
  *(v3 + 144) = v6;
  v9 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = GetContactCATsModern.intentHandledResponse(isMe:requestedContact:shouldPrompt:);

  return v9(0xD000000000000020, 0x800000026696FBB0, v3);
}

uint64_t GetContactCATsModern.intentHandledResponse(isMe:requestedContact:shouldPrompt:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](ContactsLabelCATsModern.ageUnitsAsLabels(age:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t GetContactCATsModern.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_10_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  outlined init with copy of URL?(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of URL?(a1);
  return v13;
}

uint64_t GetContactCATsModern.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_10_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = CATWrapperSimple.init(useResponseMode:options:)();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t ContactsUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  OUTLINED_FUNCTION_16_1();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t ContactsUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  type metadata accessor for ParameterResolutionRecord();
  v1 = ParameterResolutionRecord.intent.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v3[55] = a2;
  v3[56] = v2;
  v3[54] = a1;
  v4 = *v2;
  v3[57] = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  v3[58] = OUTLINED_FUNCTION_10_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v6);
  v3[59] = OUTLINED_FUNCTION_10_0();
  v3[60] = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_21_0();
  v3[61] = v7;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = *(v4 + 240);
  v3[68] = type metadata accessor for ParameterResolutionRecord();
  OUTLINED_FUNCTION_21_0();
  v3[69] = v8;
  v3[70] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v78 = v0;
  v1 = ParameterResolutionRecord.result.getter();
  v2 = [v1 unsupportedReason];

  v3.value = SiriKitContactUnsupportedReason.init(rawValue:)(v2).value;
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 440);
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriContacts);
  (*(v5 + 16))(v4, v7, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 560);
  v13 = *(v0 + 552);
  v14 = *(v0 + 544);
  if (v11)
  {
    value = v3.value;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v15 = 136315650;
    v17 = _typeName(_:qualified:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v77);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v0 + 720) = value;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMd, &_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMR);
    v20 = Optional.debugDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v77);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2112;
    v23 = ParameterResolutionRecord.result.getter();
    (*(v13 + 8))(v12, v14);
    *(v15 + 24) = v23;
    *v16 = v23;
    _os_log_impl(&dword_26686A000, v9, v10, "#ContactsUnsupportedValueStrategyAsync<%s> Processing unsupported reason: %s in intentResolutionResult: %@", v15, 0x20u);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_6();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    v3.value = value;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  if (ContactsStrategy.isSmartEnabled.getter())
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26686A000, v24, v25, "#ContactsUnsupportedValueStrategy makeIntentHandledResponse SMART enabled but not yet implemented for the intent", v26, 2u);
      OUTLINED_FUNCTION_6();
    }
  }

  switch(v3.value)
  {
    case SiriContactsIntents_SiriKitContactUnsupportedReason_authFailed:
      OUTLINED_FUNCTION_9_11();
      OUTLINED_FUNCTION_21_0();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 688) = v27;
      *v27 = v28;
      v27[1] = ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_10_9();

      __asm { BRAA            X1, X16 }

      return result;
    case SiriContactsIntents_SiriKitContactUnsupportedReason_missingMeCard:
      v52 = *(v0 + 536);
      v54 = *(v0 + 448);
      v53 = *(v0 + 456);
      v55 = *(v54 + 104);
      outlined init with copy of DeviceState(v54 + 16, v0 + 352);
      *(v0 + 721) = *(v54 + 112);

      v56 = ParameterResolutionRecord.intent.getter();
      v57 = (*(*(v53 + 264) + 24))(v52);

      if (v57)
      {
        [v57 BOOLValue];
      }

      v69 = *(v0 + 432);
      v70 = type metadata accessor for AceOutput();
      v71 = MEMORY[0x277D5C1D8];
      v69[3] = v70;
      v69[4] = v71;
      *(v0 + 568) = __swift_allocate_boxed_opaque_existential_1(v69);
      outlined init with copy of DeviceState(v0 + 352, v0 + 104);
      *(v0 + 176) = &type metadata for InstalledAppsProvider;
      *(v0 + 184) = &protocol witness table for InstalledAppsProvider;
      *(v0 + 144) = v55;
      specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
      *(v0 + 576) = v72;
      outlined destroy of MissingMeCardViewBuilder(v0 + 104);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 584) = v73;
      *v73 = v74;
      v73[1] = ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_10_9();

      return ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:)();
    case SiriContactsIntents_SiriKitContactUnsupportedReason_noContactsFound:
      v35 = *(v0 + 432);
      *(v0 + 600) = ParameterResolutionRecord.intent.getter();
      v36 = type metadata accessor for AceOutput();
      v37 = MEMORY[0x277D5C1D8];
      v35[3] = v36;
      v35[4] = v37;
      __swift_allocate_boxed_opaque_existential_1(v35);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 608) = v38;
      *v38 = v39;
      OUTLINED_FUNCTION_25_2(v38);
      goto LABEL_30;
    case SiriContactsIntents_SiriKitContactUnsupportedReason_noContactsFoundForCompany:
      v40 = ParameterResolutionRecord.intent.getter();
      *(v0 + 624) = v40;
      ObjectType = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v40, ObjectType, &protocol descriptor for SiriKitGetEntityIntent))
      {
        v43 = v42;
        v44 = swift_getObjectType();
        (*(v43 + 40))(v44, v43);
        if (!v45)
        {
          static String.EMPTY.getter();
        }

        v46 = *(v0 + 464);
        SpeakableString.init(print:speak:)();
        v47 = type metadata accessor for SpeakableString();
        __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);
        OUTLINED_FUNCTION_21_0();
        swift_task_alloc();
        OUTLINED_FUNCTION_36_0();
        *(v0 + 632) = v48;
        *v48 = v49;
        v48[1] = ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
        OUTLINED_FUNCTION_10_9();

        __asm { BRAA            X2, X16 }
      }

      v62 = *(v0 + 432);

      *(v0 + 648) = ParameterResolutionRecord.intent.getter();
      v63 = type metadata accessor for AceOutput();
      v64 = MEMORY[0x277D5C1D8];
      v62[3] = v63;
      v62[4] = v64;
      __swift_allocate_boxed_opaque_existential_1(v62);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 656) = v65;
      *v65 = v66;
      OUTLINED_FUNCTION_25_2(v65);
LABEL_30:
      OUTLINED_FUNCTION_10_9();

      return ContactsUnsupportedValueStrategy.noContactsFound(intent:)();
    case SiriContactsIntents_SiriKitContactUnsupportedReason_noContactsFoundForRelation:
      OUTLINED_FUNCTION_9_11();
      OUTLINED_FUNCTION_21_0();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 672) = v31;
      *v31 = v32;
      v31[1] = ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_10_9();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      OUTLINED_FUNCTION_9_11();
      OUTLINED_FUNCTION_21_0();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 704) = v58;
      *v58 = v59;
      v58[1] = ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_10_9();

      __asm { BRAA            X1, X16 }

      return result;
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 592) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 616) = v0;

  if (!v0)
  {

    OUTLINED_FUNCTION_19_5();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_8_6();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_8_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 640) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 624);
  v2 = *(v0 + 520);
  v3 = *(v0 + 472);
  v4 = *(v0 + 448);
  v5 = *(v0 + 432);
  v6 = *(v4 + 112);
  v7 = type metadata accessor for NLContextUpdate();
  v8 = OUTLINED_FUNCTION_13_6(v7);
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  *(v0 + 344) = 0;
  v9 = MEMORY[0x277D5C1D8];
  v5[3] = v8;
  v5[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_15_7(v2, v4 + 16, v6, MEMORY[0x277D84F90], v10, v11, v12, v13, v0 + 312);

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v0 + 312, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v14 = OUTLINED_FUNCTION_18_5();
  v15(v14);
  OUTLINED_FUNCTION_2_19();

  OUTLINED_FUNCTION_6_4();

  return v16();
}

{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 664) = v0;

  if (!v0)
  {

    OUTLINED_FUNCTION_19_5();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_8_6();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_8_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 680) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 696) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v1 = *(v0 + 504);
  v2 = *(v0 + 488);
  v12 = *(v0 + 480);
  v3 = *(v0 + 472);
  v4 = *(v0 + 448);
  v5 = *(v0 + 432);
  outlined init with copy of DeviceState(v4 + 16, v0 + 16);
  v6 = *(v4 + 104);
  *(v0 + 88) = &type metadata for InstalledAppsProvider;
  *(v0 + 96) = &protocol witness table for InstalledAppsProvider;
  *(v0 + 56) = v6;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  outlined destroy of ErrorViewBuilder(v0 + 16);
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  v8 = type metadata accessor for AceOutput();
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  *(v0 + 232) = 0u;
  v9 = MEMORY[0x277D5C1D8];
  v5[3] = v8;
  v5[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v0 + 232, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v12);
  OUTLINED_FUNCTION_2_19();

  OUTLINED_FUNCTION_6_4();

  return v10();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 712) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_39();
  v13 = *(v12 + 528);
  v14 = *(v12 + 480);
  v15 = *(v12 + 488);
  v16 = *(v12 + 472);
  v17 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  *(v12 + 424) = 0;
  *(v12 + 392) = 0u;
  *(v12 + 408) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v12 + 392, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v15 + 8))(v13, v14);
  __swift_destroy_boxed_opaque_existential_0Tm((v12 + 352));
  OUTLINED_FUNCTION_2_19();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_28_4();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v12 + 392, a10, a11, a12);
}

uint64_t ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 432);
  __swift_destroy_boxed_opaque_existential_0Tm((v10 + 352));
  __swift_deallocate_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_0_18();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 432);

  __swift_deallocate_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_0_18();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_0_18();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 432);

  __swift_deallocate_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_0_18();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_18();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_18();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_18();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t ContactsUnsupportedValueStrategy.noContactsFound(intent:)()
{
  OUTLINED_FUNCTION_4();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v1[12] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v1[13] = OUTLINED_FUNCTION_10_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  v1[14] = OUTLINED_FUNCTION_10_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v6);
  v1[15] = OUTLINED_FUNCTION_10_0();
  v1[16] = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_21_0();
  v1[17] = v7;
  v1[18] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 160) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6_4();

  return v6();
}

{

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t ContactsUnsupportedValueStrategy.noContactsFound(intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_39();
  v13 = *(v12[11] + 96);
  v14 = (*(*(v12[12] + 264) + 40))(*(v12[12] + 240));
  if (v15)
  {
    v16 = v12[14];
    v17 = v12[11];
    v18 = String.sanitizeHomophones.getter(v14, v15);
    v20 = v19;

    v12[7] = v18;
    v12[8] = v20;
    __swift_project_boxed_opaque_existential_1((v17 + 16), *(v17 + 40));
    dispatch thunk of DeviceState.siriLocale.getter();
    v21 = type metadata accessor for Locale();
    OUTLINED_FUNCTION_26_4(v21);
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.capitalized(with:)();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  }

  else
  {
    static String.EMPTY.getter();
  }

  SpeakableString.init(print:speak:)();
  v22 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_26_4(v22);
  v35 = *v13 + class metadata base offset for ContactsCommonCATs + 512;
  OUTLINED_FUNCTION_21_0();
  v36 = v23 + *v23;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v12[19] = v24;
  *v24 = v25;
  v24[1] = ContactsUnsupportedValueStrategy.noContactsFound(intent:);
  OUTLINED_FUNCTION_28_4();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, a11, a12);
}

uint64_t ContactsUnsupportedValueStrategy.__deallocating_deinit()
{
  v0 = ContactsStrategy.deinit();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance ContactsUnsupportedValueStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 288) + **(**v2 + 288));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return v8(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance ContactsUnsupportedValueStrategy<A, B, C>(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance ContactsUnsupportedValueStrategy<A, B, C>;

  return ContactsUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance ContactsUnsupportedValueStrategy<A, B, C>()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance ContactsUnsupportedValueStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 56) = v9;
  v10 = *(a3 + 272);
  v11 = *(a3 + 256);
  *(v4 + 16) = *(a3 + 240);
  *(v4 + 32) = v11;
  *(v4 + 48) = v10;
  v12 = type metadata accessor for ContactsUnsupportedValueStrategy(0, v4 + 16);
  *v9 = v4;
  v9[1] = protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance ContactsUnsupportedValueStrategy<A, B, C>;

  return MEMORY[0x2821B9E00](a1, a2, v12, a4);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance ContactsUnsupportedValueStrategy<A, B, C>()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t type metadata accessor for GetContactUnsupportedValueStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for GetContactUnsupportedValueStrategy;
  if (!type metadata singleton initialization cache for GetContactUnsupportedValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x26D5E3300);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_18()
{
}

uint64_t OUTLINED_FUNCTION_2_19()
{
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return type metadata accessor for AceOutput();
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t OUTLINED_FUNCTION_19_5()
{
}

uint64_t OUTLINED_FUNCTION_26_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

id GetContactIntent.__allocating_init(_:referenceResolver:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = [objc_allocWithZone(v2) init];
  v17 = ContactNLv3Intent.isMeCardRequest.getter();
  type metadata accessor for NSNumber();
  isa = NSNumber.init(integerLiteral:)(v17 & 1).super.super.isa;
  OUTLINED_FUNCTION_4_10(isa, sel_setIsMe_);

  v19 = a1;
  ContactNLv3Intent.person.getter(v20, v21, v22, v23, v24, v25, v26, v27, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    outlined destroy of PersonIntentNode?(v8);
    if (one-time initialization token for contactId != -1)
    {
      swift_once();
    }

    type metadata accessor for ContactNLv3Intent(0);
    lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent();
    IntentNodeTraversable.value<A>(forNode:)();
    if (v49)
    {
      v28 = String.sanitizeContactIdURL.getter(v48, v49);
      v30 = v29;

      outlined bridged method (mbgnn) of @objc GetContactIntent.contactIdentifier.setter(v28, v30, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_266966A40;
      type metadata accessor for SiriMatch();
      v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      *(v31 + 32) = @nonobjc INObject.init(identifier:display:)(v28, v30, v28, v30);
      outlined bridged method (mbnn) of @objc GetContactIntent.siriMatches.setter(v31, v16);
    }

    else
    {
      SiriKitGetEntityIntent.runReferenceResolution(_:)(a2, v3, &protocol witness table for GetContactIntent);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(a2);
    outlined destroy of ContactNLv3Intent(a1);
  }

  else
  {
    (*(v11 + 32))(v15, v8, v9);
    OUTLINED_FUNCTION_1_16();
    v33 = PersonIntentNodeContaining.firstName.getter();
    if (v34)
    {
      MEMORY[0x26D5E2470](v33);
      v33 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v33, sel_setFirstName_);

    OUTLINED_FUNCTION_1_16();
    v35 = PersonIntentNodeContaining.nickName.getter();
    if (v36)
    {
      MEMORY[0x26D5E2470](v35);
      v35 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v35, sel_setNickName_);

    OUTLINED_FUNCTION_1_16();
    v37 = PersonIntentNodeContaining.lastName.getter();
    if (v38)
    {
      MEMORY[0x26D5E2470](v37);
      v37 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v37, sel_setLastName_);

    OUTLINED_FUNCTION_1_16();
    v39 = PersonIntentNodeContaining.fullName.getter();
    if (v40)
    {
      MEMORY[0x26D5E2470](v39);
      v39 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v39, sel_setFullName_);

    OUTLINED_FUNCTION_1_16();
    v41 = PersonIntentNodeContaining.middleName.getter();
    if (v42)
    {
      MEMORY[0x26D5E2470](v41);
      v41 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v41, sel_setMiddleName_);

    OUTLINED_FUNCTION_1_16();
    v43 = PersonIntentNodeContaining.company.getter();
    if (v44)
    {
      MEMORY[0x26D5E2470](v43);
      v43 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v43, sel_setOrganizationName_);

    OUTLINED_FUNCTION_1_16();
    v45 = PersonIntentNodeContaining.relationship.getter();
    if (v46)
    {
      MEMORY[0x26D5E2470](v45);
      v45 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v45, sel_setContactRelation_);

    __swift_destroy_boxed_opaque_existential_0Tm(a2);
    outlined destroy of ContactNLv3Intent(a1);
    (*(v11 + 8))(v15, v9);
  }

  return v16;
}

uint64_t GetContactIntent.siriInferenceContact.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ContactHandle.HandleType();
  OUTLINED_FUNCTION_1_0();
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v36 = v6 - v5;
  v7 = type metadata accessor for ContactHandle();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  Contact.init()();
  outlined bridged method (pb) of @objc GetContactIntent.contactIdentifier.getter(v0);
  if (v14)
  {
    Contact.id.setter();
  }

  outlined bridged method (pb) of @objc GetContactIntent.contactRelation.getter(v0);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference7ContactV12LabeledValueVy_SSGGMd, &_ss23_ContiguousArrayStorageCy13SiriInference7ContactV12LabeledValueVy_SSGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7ContactV12LabeledValueVy_SSGMd, &_s13SiriInference7ContactV12LabeledValueVy_SSGMR);
    *(swift_allocObject() + 16) = xmmword_266966D90;
    static String.EMPTY.getter();
    v38[0] = static String.EMPTY.getter();
    v38[1] = v16;
    Contact.LabeledValue.init(id:label:value:)();
    Contact.contactRelations.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_fullName);
  if (v17)
  {
    Contact.givenName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_firstName);
  if (v18)
  {
    Contact.givenName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_middleName);
  if (v19)
  {
    Contact.middleName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_lastName);
  if (v20)
  {
    Contact.familyName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_nickName);
  if (v21)
  {
    Contact.nickname.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_organizationName);
  if (v22)
  {
    Contact.organizationName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_phoneNumber);
  if (v23)
  {
    (*(v37 + 104))(v36, *MEMORY[0x277D56010], v2);
    OUTLINED_FUNCTION_2_20();
    ContactHandle.init(id:type:label:value:isSuggested:)();
    v24 = Contact.handles.modify();
    v26 = v25;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v27 = *(*v26 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v27);
    v28 = *v26;
    *(v28 + 16) = v27 + 1;
    (*(v9 + 32))(v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v13, v7);
    v24(v38, 0);
  }

  result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v1, &selRef_emailAddress);
  if (v30)
  {
    (*(v37 + 104))(v36, *MEMORY[0x277D56008], v2);
    OUTLINED_FUNCTION_2_20();
    ContactHandle.init(id:type:label:value:isSuggested:)();
    v31 = Contact.handles.modify();
    v33 = v32;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v34 = *(*v33 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v34);
    v35 = *v33;
    *(v35 + 16) = v34 + 1;
    (*(v9 + 32))(v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v34, v13, v7);
    return v31(v38, 0);
  }

  return result;
}

uint64_t GetContactIntent.requestedName.getter()
{
  result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_fullName);
  if (!v2)
  {
    result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_firstName);
    if (!v3)
    {
      result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_middleName);
      if (!v4)
      {
        result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_lastName);
        if (!v5)
        {
          return outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_nickName);
        }
      }
    }
  }

  return result;
}

uint64_t GetContactIntent.handleTypePreference.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContactHandleTypePreference();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

char *GetContactIntentResponse.__allocating_init(contactIdentifiers:code:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = GetContactIntentResponse.init(code:userActivity:)(a2, 0);
  v7 = v6;
  if (a1)
  {
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  [v6 setContactIdentifiers_];

  return v6;
}

uint64_t outlined destroy of ContactNLv3Intent(uint64_t a1)
{
  v2 = type metadata accessor for ContactNLv3Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v0 = v3;
  }
}

void specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = v2;
  }
}

void outlined bridged method (mbgnn) of @objc GetContactIntent.contactIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5E2470](a1, a2);
  [a3 setContactIdentifier_];
}

void outlined bridged method (mbnn) of @objc GetContactIntent.siriMatches.setter(uint64_t a1, void *a2)
{
  type metadata accessor for SiriMatch();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setSiriMatches_];
}

id OUTLINED_FUNCTION_4_10(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_5_17()
{
}

uint64_t type metadata accessor for GetContactCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for GetContactCATs;
  if (!type metadata singleton initialization cache for GetContactCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GetContactCATs.intentHandledResponse(isMe:requestedContact:shouldPrompt:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a2;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](GetContactCATs.intentHandledResponse(isMe:requestedContact:shouldPrompt:), 0, 0);
}

uint64_t GetContactCATs.intentHandledResponse(isMe:requestedContact:shouldPrompt:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  *(v3 + 32) = 1699574633;
  *(v3 + 40) = 0xE400000000000000;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 16) = xmmword_266966D80;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0xD000000000000010;
  *(v3 + 88) = 0x800000026696F940;
  v5 = 0;
  if (v1)
  {
    v5 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  v6 = *(v0 + 65);
  *(v3 + 96) = v1;
  *(v3 + 120) = v5;
  strcpy((v3 + 128), "shouldPrompt");
  *(v3 + 141) = 0;
  *(v3 + 142) = -5120;
  *(v3 + 168) = v4;
  *(v3 + 144) = v6;
  v10 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = GetContactCATs.intentHandledResponse(isMe:requestedContact:shouldPrompt:);
  v8 = *(v0 + 16);

  return v10(v8, 0xD000000000000020, 0x800000026696FBB0, v3);
}

{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](ContactsLabelCATsModern.modernBirthdayAsLabels(contact:birthdayInfo:isToday:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t GetContactCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CATOption();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  outlined init with copy of URL?(a1, &v15 - v11);
  (*(v7 + 16))(v9, a2, v6);
  v13 = ContactsCommonCATs.init(templateDir:options:globals:)(v12, v9, a3);
  (*(v7 + 8))(a2, v6);
  outlined destroy of URL?(a1);
  return v13;
}

uint64_t static ContactsContextProvider.getContactAttribute(contact:handles:contactAttributeType:needsSDA:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for NLContextUpdate();
  v11 = swift_allocBox();
  v13 = v12;
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_0_19();
  NLContextUpdate.currentDomainName.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266966A40;
  *(inited + 32) = a1;

  v15 = a1;
  specialized DisplayHintFactory.build(for:handles:contactAttributeType:_:)(inited, a2, a3, 0, v11);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (specialized Array._getCount()() < 2)
  {
    v29 = static RREntity.makeEntityList(for:)(v15);
    OUTLINED_FUNCTION_11_10(v29, v32);
    OUTLINED_FUNCTION_21_4();
    NLContextUpdate.rrEntities.setter();
LABEL_9:
    swift_endAccess();
    goto LABEL_10;
  }

  v16 = static RREntity.makeDisambiguationGroup(for:with:)(v15, a2);
  OUTLINED_FUNCTION_11_10(v16, v32);
  OUTLINED_FUNCTION_21_4();
  NLContextUpdate.rrEntities.setter();
  swift_endAccess();
  if (a4)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriContacts);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_31(v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26686A000, v18, v19, "#ContactsContextProvider needsSDA is true, attaching SDA", v20, 2u);
      OUTLINED_FUNCTION_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    OUTLINED_FUNCTION_9_12();
    v21 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    OUTLINED_FUNCTION_1_1(v21);
    OUTLINED_FUNCTION_13_7();
    v24 = v23 & ~v22;
    v27 = OUTLINED_FUNCTION_22_6(v26, v24 + v25);
    *(v27 + 16) = xmmword_266966D90;
    v28 = static ContactsContextProvider.makeSDAForDisambiguateGetContactAttribute(contact:handles:)(v15, a2, v27 + v24);
    OUTLINED_FUNCTION_11_10(v28, v32);
    OUTLINED_FUNCTION_21_4();
    NLContextUpdate.nluSystemDialogActs.setter();
    goto LABEL_9;
  }

LABEL_10:
  swift_beginAccess();
  OUTLINED_FUNCTION_17_4();
  (*(v30 + 16))(a5, v13, v10);
}

uint64_t static ContactsContextProvider.handleGetContact(contact:needsSDA:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for NLContextUpdate();
  v6 = swift_allocBox();
  v8 = v7;
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_0_19();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  v34[0] = 1;
  ContactNLv3Constants.canonicalName.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266966A40;
  *(inited + 32) = a1;

  v10 = a1;
  specialized DisplayHintFactory.build(for:handles:contactAttributeType:_:)(inited, MEMORY[0x277D84F90], 0, 1, v6);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v11 = type metadata accessor for MachineUtteranceBuilder();
  OUTLINED_FUNCTION_2_6(v11);
  MachineUtteranceBuilder.init()();
  v12 = [v10 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_4_11();
  dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

  dispatch thunk of MachineUtteranceBuilder.build()();

  OUTLINED_FUNCTION_11_10(v13, v34);
  NLContextUpdate.nlInput.setter();
  swift_endAccess();
  v14 = static RREntity.makeEntityList(for:)(v10);
  OUTLINED_FUNCTION_11_10(v14, v34);
  OUTLINED_FUNCTION_21_4();
  NLContextUpdate.rrEntities.setter();
  swift_endAccess();
  if (a2)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriContacts);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_31(v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26686A000, v16, v17, "#ContactsContextProvider needsSDA is true, attaching SDA", v18, 2u);
      OUTLINED_FUNCTION_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    OUTLINED_FUNCTION_9_12();
    v19 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    OUTLINED_FUNCTION_1_1(v19);
    OUTLINED_FUNCTION_13_7();
    v22 = v21 & ~v20;
    v25 = OUTLINED_FUNCTION_22_6(v24, v22 + v23);
    *(v25 + 16) = xmmword_266966D90;
    v26 = [v10 identifier];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    static ContactsContextProvider.makeSDAForRequestCommonPerson(contactIdentifier:)(v27, v29, v25 + v22);

    OUTLINED_FUNCTION_11_10(v30, v34);
    OUTLINED_FUNCTION_21_4();
    NLContextUpdate.nluSystemDialogActs.setter();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_17_4();
  (*(v31 + 16))(a3, v8, v5);
}

uint64_t static ContactsContextProvider.needsValueGetContactAttribute(contactIdentifier:contactAttributeValue:contactTypeValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_0_19();
  NLContextUpdate.currentDomainName.setter();
  ContactNLv3Constants.canonicalName.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_16_8(v9, xmmword_266966D90);
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_1_17();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v37 = ContactNLv3Constants.canonicalName.getter();
  v38 = v10;
  v11 = OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D5E2570](v11, 0xE700000000000000);
  v12 = String.uppercased()();

  MEMORY[0x26D5E2570](v12._countAndFlagsBits, v12._object);

  v9[2].n128_u64[0] = v37;
  v9[2].n128_u64[1] = v38;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_266968180;
  *(v13 + 32) = ContactNLv3Constants.canonicalName.getter();
  *(v13 + 40) = v14;
  *(v13 + 48) = ContactNLv3Constants.canonicalName.getter();
  *(v13 + 56) = v15;
  *(v13 + 64) = ContactNLv3Constants.canonicalName.getter();
  *(v13 + 72) = v16;
  *(v13 + 80) = ContactNLv3Constants.canonicalName.getter();
  *(v13 + 88) = v17;
  *(v13 + 96) = ContactNLv3Constants.canonicalName.getter();
  *(v13 + 104) = v18;
  *(v13 + 112) = ContactNLv3Constants.canonicalName.getter();
  *(v13 + 120) = v19;
  *(v13 + 128) = ContactNLv3Constants.canonicalName.getter();
  *(v13 + 136) = v20;
  *(v13 + 144) = ContactNLv3Constants.canonicalName.getter();
  *(v13 + 152) = v21;
  *(v13 + 160) = ContactNLv3Constants.canonicalName.getter();
  *(v13 + 168) = v22;
  *(v13 + 176) = ContactNLv3Constants.canonicalName.getter();
  *(v13 + 184) = v23;
  *(v13 + 192) = ContactNLv3Constants.canonicalName.getter();
  *(v13 + 200) = v24;
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  v25 = type metadata accessor for MachineUtteranceBuilder();
  OUTLINED_FUNCTION_2_6(v25);
  MachineUtteranceBuilder.init()();
  if (a4)
  {
    dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();
  }

  if (a6)
  {
    OUTLINED_FUNCTION_4_11();
    dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();
  }

  dispatch thunk of MachineUtteranceBuilder.build()();

  OUTLINED_FUNCTION_26_5();
  if (v26)
  {
    dispatch thunk of MachineUtteranceBuilder.build()();
  }

  NLContextUpdate.nlInput.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  OUTLINED_FUNCTION_9_12();
  v27 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_1_1(v27);
  OUTLINED_FUNCTION_13_7();
  v30 = v29 & ~v28;
  v33 = OUTLINED_FUNCTION_22_6(v32, v30 + v31);
  *(v33 + 16) = xmmword_266966D90;
  v34 = v33 + v30;
  if (a4 | a2 | a6)
  {
    static ContactsContextProvider.makeSDAForRequestCommonPerson(contactIdentifier:)(a1, a2, v34);
  }

  else
  {
    static ContactsContextProvider.makeSDAForSummariseCommonPerson()(v34);
  }

  OUTLINED_FUNCTION_12_7();
  NLContextUpdate.nluSystemDialogActs.setter();
}

uint64_t static ContactsContextProvider.confirm(person:attribute:)(uint64_t a1, uint64_t a2, int a3)
{
  HIDWORD(v57) = a3;
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_0_19();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  ContactNLv3Constants.canonicalName.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266966D80;
  String.uppercased()();
  OUTLINED_FUNCTION_19_6();
  v4 = lazy protocol witness table accessor for type String and conformance String();
  v5 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_18_6(v4, v6, v7, v8, v9, v10, v11, v12, MEMORY[0x277D837D0], v4, v4, v4, v50, a1, v57, a2, v65, v68, v71);
  OUTLINED_FUNCTION_1_17();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v74 = OUTLINED_FUNCTION_25_3(v13);
  v77 = v14;
  OUTLINED_FUNCTION_23_6();
  v15 = String.uppercased()();

  MEMORY[0x26D5E2570](v15._countAndFlagsBits, v15._object);

  *(v3 + 32) = v74;
  *(v3 + 40) = v77;
  String.uppercased()();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_18_6(v16, v17, v18, v19, v20, v21, v22, v23, v48, v49, v4, v4, v51, v54, v58, v62, v66, v69, v72);
  OUTLINED_FUNCTION_1_17();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v75 = OUTLINED_FUNCTION_25_3(v24);
  v78 = v25;
  OUTLINED_FUNCTION_23_6();
  v26 = String.uppercased()();

  MEMORY[0x26D5E2570](v26._countAndFlagsBits, v26._object);

  *(v3 + 48) = v75;
  *(v3 + 56) = v78;
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_18_6(v27, v28, v29, v30, v31, v32, v33, v34, v5, v4, v4, v4, v52, v55, v59, v63, v67, v70, v73);
  OUTLINED_FUNCTION_1_17();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v76 = OUTLINED_FUNCTION_25_3(v35);
  v79 = v36;
  OUTLINED_FUNCTION_23_6();
  v37 = String.uppercased()();

  MEMORY[0x26D5E2570](v37._countAndFlagsBits, v37._object);

  *(v3 + 64) = v76;
  *(v3 + 72) = v79;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  if (v56)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_266966A40;
    *(v38 + 32) = v56;
    v39 = v56;
    OUTLINED_FUNCTION_12_7();
    NLContextUpdate.applicationContextObjects.setter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  OUTLINED_FUNCTION_9_12();
  v40 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_1_1(v40);
  OUTLINED_FUNCTION_13_7();
  v43 = v42 & ~v41;
  v46 = OUTLINED_FUNCTION_22_6(v45, v43 + v44);
  *(v46 + 16) = xmmword_266966D90;
  static ContactsContextProvider.makeSDAForConfirmation(_:)(v64, v60 & 1, v46 + v43);
  OUTLINED_FUNCTION_12_7();
  return NLContextUpdate.nluSystemDialogActs.setter();
}

uint64_t static ContactsContextProvider.contactResponseTargets.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266966EE0;
  *(v0 + 32) = ContactNLv3Constants.canonicalName.getter();
  *(v0 + 40) = v1;
  *(v0 + 48) = ContactNLv3Constants.canonicalName.getter();
  *(v0 + 56) = v2;
  *(v0 + 64) = ContactNLv3Constants.canonicalName.getter();
  *(v0 + 72) = v3;
  *(v0 + 80) = ContactNLv3Constants.canonicalName.getter();
  *(v0 + 88) = v4;
  *(v0 + 96) = ContactNLv3Constants.canonicalName.getter();
  *(v0 + 104) = v5;
  return v0;
}

uint64_t closure #1 in static ContactsContextProvider.handleGetContact(contact:needsSDA:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_12();
  type metadata accessor for NLContextUpdate();
  v2 = swift_projectBox();
  OUTLINED_FUNCTION_14_9(v2, v5);

  NLContextUpdate.displayHints.setter();
  swift_endAccess();
  v3 = static ContactsContextProvider.contactResponseTargets.getter();
  OUTLINED_FUNCTION_7_8(v3, v5);
  OUTLINED_FUNCTION_12_7();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  return swift_endAccess();
}

uint64_t static ContactsContextProvider.makeSDAForRequestCommonPerson(contactIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37[1] = a1;
  v38 = a3;
  v4 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v37[0] = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = v37 - v7;
  v8 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v37 - v13;
  v15 = type metadata accessor for UsoIdentifier();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UsoTaskBuilder_request_common_Person();
  swift_allocObject();
  v19 = UsoTaskBuilder_request_common_Person.init()();
  type metadata accessor for UsoEntityBuilder_common_Person();
  swift_allocObject();
  v39 = UsoEntityBuilder_common_Person.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceSelect.setSelect(value:)();
  if (a2)
  {

    UsoIdentifier.init(value:appBundleId:namespace:)();
    dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
    (*(v16 + 8))(v18, v15);
  }

  static Siri_Nlu_External_SystemPrompted.from(_:)(v19);
  v20 = v38;
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v9 + 16))(v12, v14, v8);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  (*(v9 + 8))(v14, v8);
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriContacts);
  v22 = v40;
  v23 = v41;
  v24 = *(v41 + 16);
  v25 = v42;
  v24(v40, v20, v42);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v19;
    v30 = v29;
    v43 = v29;
    *v28 = 136315138;
    v24(v37[0], v22, v25);
    v31 = String.init<A>(describing:)();
    v32 = v22;
    v34 = v33;
    (*(v23 + 8))(v32, v25);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v34, &v43);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_26686A000, v26, v27, "#ContactsContextProvider Returning SystemPrompted for handle GetContactAttributeIntent: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x26D5E3300](v30, -1, -1);
    MEMORY[0x26D5E3300](v28, -1, -1);
  }

  else
  {

    return (*(v23 + 8))(v22, v25);
  }
}

uint64_t closure #1 in static ContactsContextProvider.getContactAttribute(contact:handles:contactAttributeType:needsSDA:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_12();
  type metadata accessor for NLContextUpdate();
  v2 = swift_projectBox();
  OUTLINED_FUNCTION_14_9(v2, v6);

  NLContextUpdate.displayHints.setter();
  swift_endAccess();
  v3 = static ContactsContextProvider.contactResponseTargets.getter();
  OUTLINED_FUNCTION_7_8(v3, v6);
  OUTLINED_FUNCTION_12_7();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  swift_endAccess();
  v6[0] = 1;
  v4 = ContactNLv3Constants.canonicalName.getter();
  OUTLINED_FUNCTION_7_8(v4, v6);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  return swift_endAccess();
}

uint64_t static ContactsContextProvider.makeSDAForDisambiguateGetContactAttribute(contact:handles:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a1;
  v84 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v5 = *(v84 - 8);
  v6 = MEMORY[0x28223BE20](v84);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v77 - v9;
  v87 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v85 = *(v87 - 8);
  v11 = MEMORY[0x28223BE20](v87);
  v79 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v77 - v14;
  MEMORY[0x28223BE20](v13);
  v86 = &v77 - v16;
  v99 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v17 = *(v99 - 8);
  v18 = MEMORY[0x28223BE20](v99);
  v98 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v97 = &v77 - v20;
  v21 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v102 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v77 - v25;
  v101 = a2;
  v27 = specialized Array._getCount()();
  v83 = v5;
  v82 = v10;
  v78 = v8;
  v81 = a3;
  v80 = v15;
  if (v27)
  {
    v28 = v27;
    result = type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
    v96 = result;
    if (v28 < 1)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    v92 = (v17 + 16);
    v93 = v101 & 0xC000000000000001;
    v90 = (v22 + 16);
    v91 = (v17 + 8);
    v88 = v22 + 32;
    v89 = v22 + 8;
    v31 = MEMORY[0x277D84F90];
    v94 = v28;
    v95 = v21;
    do
    {
      if (v93)
      {
        v32 = MEMORY[0x26D5E29D0](v30, v101);
      }

      else
      {
        v32 = *(v101 + 8 * v30 + 32);
      }

      v33 = v32;
      v34 = v100;
      v35 = CNContact.formattedFullName.getter();
      v37 = v36;
      v38 = [v34 identifier];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = v33;
      UsoTaskBuilder_noVerb_common_Person.init(name:contactId:handle:)(v35, v37, v39, v41, v33);
      v43 = v97;
      static Siri_Nlu_External_UserStatedTask.from(_:)();
      Siri_Nlu_External_UserDialogAct.init()();
      v44 = v99;
      (*v92)(v98, v43, v99);
      Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
      (*v91)(v43, v44);
      v45 = v95;
      (*v90)(v102, v26, v95);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v31 = v47;
      }

      v46 = *(v31 + 16);
      if (v46 >= *(v31 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v31 = v48;
      }

      ++v30;

      (*(v22 + 8))(v26, v45);
      *(v31 + 16) = v46 + 1;
      (*(v22 + 32))(v31 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v46, v102, v45);
    }

    while (v94 != v30);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logger.siriContacts);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v87;
  v54 = v85;
  if (v52)
  {
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    *(v55 + 4) = *(v31 + 16);

    _os_log_impl(&dword_26686A000, v50, v51, "#ContactsContextProvider %ld SystemGaveOptions for contact attribute disambiguation", v55, 0xCu);
    MEMORY[0x26D5E3300](v55, -1, -1);
  }

  else
  {
  }

  v56 = v86;

  Siri_Nlu_External_SystemGaveOptions.init()();
  MEMORY[0x26D5E05C0](v31);
  v57 = *(v54 + 16);
  v58 = v54;
  v59 = v80;
  v57(v80, v56, v53);
  v60 = v81;
  Siri_Nlu_External_SystemDialogAct.init()();
  v57(v79, v59, v53);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  v102 = *(v58 + 8);
  (v102)(v59, v53);
  v61 = v83;
  v62 = *(v83 + 16);
  v63 = v82;
  v64 = v60;
  v65 = v84;
  v62(v82, v64, v84);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    LODWORD(v101) = v67;
    v69 = v68;
    v70 = swift_slowAlloc();
    v103 = v70;
    *v69 = 136315138;
    v62(v78, v63, v65);
    v71 = String.init<A>(describing:)();
    v73 = v72;
    (*(v61 + 8))(v63, v65);
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v103);

    *(v69 + 4) = v74;
    _os_log_impl(&dword_26686A000, v66, v101, "#ContactsContextProvider Returning SystemDialogAct for contact attribute disambiguation %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v70);
    MEMORY[0x26D5E3300](v70, -1, -1);
    MEMORY[0x26D5E3300](v69, -1, -1);

    v75 = v86;
    v76 = v87;
  }

  else
  {

    (*(v61 + 8))(v63, v65);
    v75 = v56;
    v76 = v53;
  }

  return (v102)(v75, v76);
}

uint64_t static ContactsContextProvider.makeSDAForSummariseCommonPerson()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v27[0] = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v27 - v13;
  type metadata accessor for UsoTaskBuilder_summarise_common_Person();
  swift_allocObject();
  v15 = UsoTaskBuilder_summarise_common_Person.init()();
  type metadata accessor for UsoEntityBuilder_common_Person();
  swift_allocObject();
  v27[1] = UsoEntityBuilder_common_Person.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_Reference.setReference(value:)();
  v27[2] = v15;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v15);
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v9 + 16))(v12, v14, v8);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  (*(v9 + 8))(v14, v8);
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriContacts);
  v17 = *(v3 + 16);
  v17(v7, a1, v2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315138;
    v17(v27[0], v7, v2);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    (*(v3 + 8))(v7, v2);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v28);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_26686A000, v18, v19, "#ContactsContextProvider Returning SystemPrompted for handle GetContactIntent: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x26D5E3300](v21, -1, -1);
    MEMORY[0x26D5E3300](v20, -1, -1);
  }

  else
  {

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t static ContactsContextProvider.makeSDAForNeedsValueModifyRelationship()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_1_0();
  v40 = v4;
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v39 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  updated = type metadata accessor for UsoTaskBuilder_update_common_Person();
  OUTLINED_FUNCTION_2_6(updated);
  v19 = UsoTaskBuilder_update_common_Person.init()();
  v20 = type metadata accessor for UsoEntityBuilder_common_Person();
  OUTLINED_FUNCTION_2_6(v20);
  v21 = UsoEntityBuilder_common_Person.init()();
  v22 = type metadata accessor for UsoEntityBuilder_common_PersonRelationship();
  OUTLINED_FUNCTION_2_6(v22);
  UsoEntityBuilder_common_PersonRelationship.init()();
  dispatch thunk of UsoEntityBuilder_common_Person.setIdentifyingRelationship(value:)();

  v42 = v21;
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceTarget.setTarget(value:)();
  v43 = v19;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v19);
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v10 + 16))(v14, v17, v8);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  (*(v10 + 8))(v17, v8);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriContacts);
  v24 = v41;
  v25 = *(v40 + 16);
  v25(v1, a1, v41);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44 = v29;
    *v28 = 136315138;
    v25(v39, v1, v24);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    v33 = OUTLINED_FUNCTION_10_15();
    v34(v33);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v44);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_26686A000, v26, v27, "#ContactsContextProvider Returning SystemPrompted for prompt for relationship in Modify Relationship: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v37 = OUTLINED_FUNCTION_10_15();
    return v38(v37);
  }
}

uint64_t static ContactsContextProvider.needsValueModifyNickname()(uint64_t a1)
{
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_0_19();
  NLContextUpdate.currentDomainName.setter();
  ContactNLv3Constants.canonicalName.getter();
  NLContextUpdate.dictationPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_16_8(v1, xmmword_266966ED0);
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_1_17();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v20 = ContactNLv3Constants.canonicalName.getter();
  v22 = v2;
  v3 = OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D5E2570](v3, 0xE700000000000000);
  v4 = String.uppercased()();

  MEMORY[0x26D5E2570](v4._countAndFlagsBits, v4._object);

  v1[2].n128_u64[0] = v20;
  v1[2].n128_u64[1] = v22;
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_1_17();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v21 = ContactNLv3Constants.canonicalName.getter();
  v23 = v5;
  v6 = OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D5E2570](v6, 0xE700000000000000);
  v7 = String.uppercased()();

  MEMORY[0x26D5E2570](v7._countAndFlagsBits, v7._object);

  v1[3].n128_u64[0] = v21;
  v1[3].n128_u64[1] = v23;
  NLContextUpdate.dictationPromptAbortValues.setter();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266966D90;
  *(v8 + 32) = ContactNLv3Constants.canonicalName.getter();
  *(v8 + 40) = v9;
  NLContextUpdate.dictationPromptTargetNodes.setter();
  v10 = type metadata accessor for MachineUtteranceBuilder();
  OUTLINED_FUNCTION_2_6(v10);
  MachineUtteranceBuilder.init()();
  OUTLINED_FUNCTION_4_11();
  dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

  dispatch thunk of MachineUtteranceBuilder.build()();

  OUTLINED_FUNCTION_26_5();
  if (v11)
  {
    dispatch thunk of MachineUtteranceBuilder.build()();
  }

  NLContextUpdate.nlInput.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  OUTLINED_FUNCTION_9_12();
  v12 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_1_1(v12);
  OUTLINED_FUNCTION_13_7();
  v15 = v14 & ~v13;
  v18 = OUTLINED_FUNCTION_22_6(v17, v15 + v16);
  *(v18 + 16) = xmmword_266966D90;
  static ContactsContextProvider.makeSDAForNeedsValueModifyNickname()(v18 + v15);
  OUTLINED_FUNCTION_12_7();
  NLContextUpdate.nluSystemDialogActs.setter();
}

uint64_t static ContactsContextProvider.makeSDAForNeedsValueModifyNickname()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v32 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - v12;
  type metadata accessor for UsoTaskBuilder_update_common_Person();
  swift_allocObject();
  updated = UsoTaskBuilder_update_common_Person.init()();
  type metadata accessor for UsoEntityBuilder_common_Person();
  swift_allocObject();
  v15 = UsoEntityBuilder_common_Person.init()();
  type metadata accessor for UsoEntityBuilder_common_PersonName();
  swift_allocObject();
  v16 = UsoEntityBuilder_common_PersonName.init()();
  dispatch thunk of UsoEntityBuilder_common_PersonName.setNickName(value:)();

  dispatch thunk of UsoEntityBuilder_common_Person.setStructuredName(value:)();
  v35 = v16;

  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceTarget.setTarget(value:)();
  v36 = updated;
  static Siri_Nlu_External_SystemPrompted.from(_:)(updated);
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v8 + 16))(v11, v13, v7);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  (*(v8 + 8))(v13, v7);
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriContacts);
  v19 = v33;
  v18 = v34;
  v20 = *(v33 + 16);
  v20(v6, a1, v34);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31[1] = v15;
    v25 = v24;
    v37 = v24;
    *v23 = 136315138;
    v20(v32, v6, v18);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    (*(v19 + 8))(v6, v18);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v37);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_26686A000, v21, v22, "#ContactsContextProvider Returning SystemPrompted for prompt for Modify Nickname: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x26D5E3300](v25, -1, -1);
    MEMORY[0x26D5E3300](v23, -1, -1);
  }

  else
  {

    return (*(v19 + 8))(v6, v18);
  }
}

uint64_t static ContactsContextProvider.needsValueRelatedSiriMatches()(uint64_t a1)
{
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_0_19();
  NLContextUpdate.currentDomainName.setter();
  ContactNLv3Constants.canonicalName.getter();
  NLContextUpdate.dictationPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_16_8(v1, xmmword_266966ED0);
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_1_17();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v16 = ContactNLv3Constants.canonicalName.getter();
  v18 = v2;
  v3 = OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D5E2570](v3, 0xE700000000000000);
  v4 = String.uppercased()();

  MEMORY[0x26D5E2570](v4._countAndFlagsBits, v4._object);

  v1[2].n128_u64[0] = v16;
  v1[2].n128_u64[1] = v18;
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_1_17();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v17 = ContactNLv3Constants.canonicalName.getter();
  v19 = v5;
  v6 = OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D5E2570](v6, 0xE700000000000000);
  v7 = String.uppercased()();

  MEMORY[0x26D5E2570](v7._countAndFlagsBits, v7._object);

  v1[3].n128_u64[0] = v17;
  v1[3].n128_u64[1] = v19;
  NLContextUpdate.dictationPromptAbortValues.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  OUTLINED_FUNCTION_9_12();
  v8 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_1_1(v8);
  OUTLINED_FUNCTION_13_7();
  v11 = v10 & ~v9;
  v14 = OUTLINED_FUNCTION_22_6(v13, v11 + v12);
  *(v14 + 16) = xmmword_266966D90;
  static ContactsContextProvider.makeSDAForPromptForRelatedPersonName()(v14 + v11);
  OUTLINED_FUNCTION_12_7();
  return NLContextUpdate.nluSystemDialogActs.setter();
}

void static ContactsContextProvider.makeSDAForPromptForRelatedPersonName()(uint64_t a1@<X8>)
{
  v38 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v37 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  updated = type metadata accessor for UsoTaskBuilder_update_common_Person();
  OUTLINED_FUNCTION_2_6(updated);
  v20 = UsoTaskBuilder_update_common_Person.init()();
  v21 = type metadata accessor for UsoEntityBuilder_common_Person();
  OUTLINED_FUNCTION_2_6(v21);
  UsoEntityBuilder_common_Person.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceTarget.setReference(value:)();

  v39 = v20;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v20);
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v11 + 16))(v15, v18, v9);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  (*(v11 + 8))(v18, v9);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriContacts);
  v23 = *(v4 + 16);
  v24 = v38;
  v23(v1, a1, v38);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40 = v28;
    *v27 = 136315138;
    v23(v37, v1, v24);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    v32 = OUTLINED_FUNCTION_10_15();
    v33(v32);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v40);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_26686A000, v25, v26, "#ContactsContextProvider Returning SystemPrompted for prompt for related person name in Modify Relationship: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v35 = OUTLINED_FUNCTION_10_15();
    v36(v35);
  }
}

uint64_t static ContactsContextProvider.disambiguate(contacts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NLContextUpdate();
  v5 = swift_allocBox();
  v7 = v6;
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_0_19();
  NLContextUpdate.currentDomainName.setter();

  specialized DisplayHintFactory.build(for:handles:contactAttributeType:_:)(a1, MEMORY[0x277D84F90], 0, 1, v5);
  static RREntity.makeDisambiguationGroup(with:)(a1);
  OUTLINED_FUNCTION_14_9(v7, v15);
  NLContextUpdate.rrEntities.setter();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v8 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_1_1(v8);
  OUTLINED_FUNCTION_13_7();
  v11 = v10 & ~v9;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_266966D90;
  static ContactsContextProvider.makeSDAForDisambiguateContacts(_:)(a1, v12 + v11);
  OUTLINED_FUNCTION_14_9(v7, v15);
  NLContextUpdate.nluSystemDialogActs.setter();
  swift_endAccess();
  OUTLINED_FUNCTION_17_4();
  (*(v13 + 16))(a2, v7, v4);
}

uint64_t closure #1 in static ContactsContextProvider.disambiguate(contacts:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_12();
  type metadata accessor for NLContextUpdate();
  v2 = swift_projectBox();
  OUTLINED_FUNCTION_14_9(v2, &v18);

  NLContextUpdate.displayHints.setter();
  swift_endAccess();
  LOBYTE(v18) = 1;
  v3 = ContactNLv3Constants.canonicalName.getter();
  OUTLINED_FUNCTION_7_8(v3, &v18);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_16_8(v4, xmmword_266966D90);
  v19 = v5;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_1_17();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v18 = ContactNLv3Constants.canonicalName.getter();
  v19 = v6;
  v7 = OUTLINED_FUNCTION_3_11();
  MEMORY[0x26D5E2570](v7, 0xE700000000000000);
  v8 = String.uppercased()();

  MEMORY[0x26D5E2570](v8._countAndFlagsBits, v8._object);

  v10 = v19;
  v4[2].n128_u64[0] = v18;
  v4[2].n128_u64[1] = v10;
  OUTLINED_FUNCTION_7_8(v9, &v18);
  NLContextUpdate.weightedPromptResponseOptions.setter();
  swift_endAccess();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_266967350;
  LOBYTE(v18) = 5;
  *(v11 + 32) = ContactNLv3Constants.canonicalName.getter();
  *(v11 + 40) = v12;
  *(v11 + 48) = ContactNLv3Constants.canonicalName.getter();
  *(v11 + 56) = v13;
  *(v11 + 64) = ContactNLv3Constants.canonicalName.getter();
  *(v11 + 72) = v14;
  v15 = ContactNLv3Constants.canonicalName.getter();
  *(v11 + 80) = v15;
  *(v11 + 88) = v16;
  OUTLINED_FUNCTION_7_8(v15, &v18);
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  return swift_endAccess();
}

uint64_t static ContactsContextProvider.makeSDAForDisambiguateContacts(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v79 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v74 - v7;
  v8 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v75 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v74 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v74 - v15;
  v94 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v17 = *(v94 - 8);
  v18 = MEMORY[0x28223BE20](v94);
  v93 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v92 = &v74 - v20;
  v97 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v21 = *(v97 - 1);
  v22 = MEMORY[0x28223BE20](v97);
  v96 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v74 - v24;
  v95 = a1;
  v26 = specialized Array._getCount()();
  v82 = v16;
  v83 = v8;
  v80 = v3;
  v81 = v9;
  v74 = v6;
  v76 = v14;
  if (v26)
  {
    v27 = v26;
    result = type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
    v91 = result;
    if (v27 < 1)
    {
      __break(1u);
      return result;
    }

    v29 = 0;
    v88 = (v17 + 16);
    v89 = v95 & 0xC000000000000001;
    v86 = (v21 + 16);
    v87 = (v17 + 8);
    v84 = v21 + 32;
    v85 = v21 + 8;
    v30 = MEMORY[0x277D84F90];
    v90 = v27;
    do
    {
      if (v89)
      {
        v31 = MEMORY[0x26D5E29D0](v29, v95);
      }

      else
      {
        v31 = *(v95 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = CNContact.formattedFullName.getter();
      v35 = v34;
      v36 = [v32 identifier];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      UsoTaskBuilder_noVerb_common_Person.init(name:contactId:handle:)(v33, v35, v37, v39, 0);
      v40 = v92;
      static Siri_Nlu_External_UserStatedTask.from(_:)();
      Siri_Nlu_External_UserDialogAct.init()();
      v41 = v94;
      (*v88)(v93, v40, v94);
      Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
      (*v87)(v40, v41);
      (*v86)(v96, v25, v97);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v30 = v45;
      }

      v42 = v90;
      v43 = *(v30 + 16);
      if (v43 >= *(v30 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v30 = v46;
      }

      ++v29;

      v44 = v97;
      (*(v21 + 8))(v25, v97);
      *(v30 + 16) = v43 + 1;
      (*(v21 + 32))(v30 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v43, v96, v44);
    }

    while (v42 != v29);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.siriContacts);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v82;
  v52 = v83;
  v53 = v81;
  v54 = v77;
  v55 = v76;
  if (v50)
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    *(v56 + 4) = *(v30 + 16);

    _os_log_impl(&dword_26686A000, v48, v49, "#ContactsContextProvider %ld SystemGaveOptions for contact attribute disambiguation", v56, 0xCu);
    MEMORY[0x26D5E3300](v56, -1, -1);
  }

  else
  {
  }

  v57 = v79;

  Siri_Nlu_External_SystemGaveOptions.init()();
  MEMORY[0x26D5E05C0](v30);
  v58 = *(v53 + 16);
  v58(v55, v51, v52);
  Siri_Nlu_External_SystemDialogAct.init()();
  v58(v75, v55, v52);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  v97 = *(v53 + 8);
  (v97)(v55, v52);
  v59 = *(v57 + 16);
  v60 = v78;
  v61 = v54;
  v62 = v80;
  v59(v78, v61, v80);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    LODWORD(v96) = v64;
    v66 = v65;
    v67 = swift_slowAlloc();
    v98 = v67;
    *v66 = 136315138;
    v59(v74, v60, v62);
    v68 = String.init<A>(describing:)();
    v70 = v69;
    (*(v57 + 8))(v60, v62);
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v98);

    *(v66 + 4) = v71;
    _os_log_impl(&dword_26686A000, v63, v96, "#ContactsContextProvider Returning SystemDialogAct for contact disambiguation %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    MEMORY[0x26D5E3300](v67, -1, -1);
    MEMORY[0x26D5E3300](v66, -1, -1);

    v72 = v82;
    v73 = v83;
  }

  else
  {

    (*(v57 + 8))(v60, v62);
    v72 = v51;
    v73 = v52;
  }

  return (v97)(v72, v73);
}

uint64_t static ContactsContextProvider.makeSDAForConfirmation(_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v47) = a2;
  v5 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v40 - v8;
  v9 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  static ContactsContextProvider.buildWantedToProceed(for:)(a1, v47 & 1);
  static Siri_Nlu_External_SystemOffered.from(_:)();
  (*(v10 + 8))(v12, v9);
  v23 = *(v14 + 16);
  v47 = v22;
  v23(v20, v22, v13);
  Siri_Nlu_External_SystemDialogAct.init()();
  v23(v17, v20, v13);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  v24 = *(v14 + 8);
  v46 = v14 + 8;
  v24(v20, v13);
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.siriContacts);
  v27 = v44;
  v26 = v45;
  v28 = *(v44 + 16);
  v28(v48, a3, v45);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v41 = v13;
    v42 = v24;
    v32 = v48;
    v33 = v31;
    v34 = swift_slowAlloc();
    v49 = v34;
    *v33 = 136315138;
    v28(v43, v32, v26);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    (*(v27 + 8))(v32, v26);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v49);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_26686A000, v29, v30, "#ContactsContextProvider Returning SystemOffered for confirm ModifyContactAttributeIntent: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x26D5E3300](v34, -1, -1);
    MEMORY[0x26D5E3300](v33, -1, -1);

    return v42(v47, v41);
  }

  else
  {

    (*(v27 + 8))(v48, v26);
    return (v24)(v47, v13);
  }
}

uint64_t static ContactsContextProvider.buildWantedToProceed(for:)(uint64_t a1, char a2)
{
  type metadata accessor for UsoTaskBuilder_update_common_Person();
  swift_allocObject();
  updated = UsoTaskBuilder_update_common_Person.init()();
  if ((a2 & 1) == 0 && a1 == 6)
  {
    type metadata accessor for UsoEntityBuilder_common_Person();
    swift_allocObject();
    UsoEntityBuilder_common_Person.init()();
    type metadata accessor for UsoEntityBuilder_common_PersonName();
    swift_allocObject();
    UsoEntityBuilder_common_PersonName.init()();
    dispatch thunk of UsoEntityBuilder_common_PersonName.setNickName(value:)();

    dispatch thunk of UsoEntityBuilder_common_Person.setStructuredName(value:)();

    dispatch thunk of Uso_VerbTemplateBuilder_ReferenceTarget.setTarget(value:)();
  }

  static Siri_Nlu_External_UserWantedToProceed.from(_:)(updated);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_7_8(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_9(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return String.uppercased()()._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_16_8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return String.uppercased()()._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_22_6(uint64_t a1, uint64_t a2)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_23_6()
{

  JUMPOUT(0x26D5E2570);
}

unint64_t OUTLINED_FUNCTION_25_3(uint64_t a1)
{

  return ContactNLv3Constants.canonicalName.getter();
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return type metadata accessor for Siri_Nlu_External_SystemPrompted();
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0xEF6E6F6974617265;
  v3 = 0x704F796669646F6DLL;
  v4 = a1;
  v5 = 0x704F796669646F6DLL;
  v6 = 0xEF6E6F6974617265;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0xD000000000000012;
      v7 = "contactAttributeToModify";
      goto LABEL_5;
    case 3:
      v5 = 0x694E796669646F6DLL;
      v8 = 0x656D614E6B63;
      goto LABEL_8;
    case 4:
      v5 = 0xD000000000000012;
      v7 = "modifyRelationship";
LABEL_5:
      v6 = v7 | 0x8000000000000000;
      break;
    case 5:
      v5 = 0x43646574616C6572;
      v8 = 0x746361746E6FLL;
LABEL_8:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      v6 = 0x800000026696E3F0;
      v5 = 0xD000000000000018;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0xD000000000000012;
      v9 = "contactAttributeToModify";
      goto LABEL_13;
    case 3:
      v3 = 0x694E796669646F6DLL;
      v10 = 0x656D614E6B63;
      goto LABEL_16;
    case 4:
      v3 = 0xD000000000000012;
      v9 = "modifyRelationship";
LABEL_13:
      v2 = v9 | 0x8000000000000000;
      break;
    case 5:
      v3 = 0x43646574616C6572;
      v10 = 0x746361746E6FLL;
LABEL_16:
      v2 = v10 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      v2 = 0x800000026696E3F0;
      v3 = 0xD000000000000018;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  return specialized == infix<A>(_:_:)(a1, a2, GetContactAttributeSlots.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContactNLv3Constants.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContactNLv3Intent.NLContactAttributesValue.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContactNLv3Intent.NLContactReferenceValue.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContactNLv3Intent.NLContactVerbValue.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, GetContactSlots.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContactNLIntent.NLContactTypeValue.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ContactsLabelCATsModern.ContactsLabelDialogIDs.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, MEMORY[0x277D5EA60], &lazy protocol witness table cache variable for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues, MEMORY[0x277D5EA60], MEMORY[0x277D5EA78]);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, MEMORY[0x277D5E830], &lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues, MEMORY[0x277D5E830], MEMORY[0x277D5E840]);
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x64695F6D657469;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x64695F6D657469;
  switch(v4)
  {
    case 1:
      v3 = 0x800000026696E150;
      v5 = 0xD000000000000012;
      break;
    case 2:
      v5 = 0x65746C615F727361;
      v3 = 0xEF65766974616E72;
      break;
    case 3:
      v6 = 0x54656E6F6870;
      goto LABEL_6;
    case 4:
      v6 = 0x546C69616D65;
LABEL_6:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x7079000000000000;
      v3 = 0xE900000000000065;
      break;
    case 5:
      v5 = 0x5473736572646461;
      goto LABEL_9;
    case 6:
      v5 = 0xD000000000000011;
      v3 = 0x800000026696E1A0;
      break;
    case 7:
      v5 = 0x54746361746E6F63;
LABEL_9:
      v3 = 0xEB00000000657079;
      break;
    case 8:
      v5 = 0x6369746E616D6573;
      v3 = 0xEE0065756C61765FLL;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0x800000026696E150;
      v2 = 0xD000000000000012;
      break;
    case 2:
      v2 = 0x65746C615F727361;
      v7 = 0xEF65766974616E72;
      break;
    case 3:
      v8 = 0x54656E6F6870;
      goto LABEL_17;
    case 4:
      v8 = 0x546C69616D65;
LABEL_17:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x7079000000000000;
      v7 = 0xE900000000000065;
      break;
    case 5:
      v2 = 0x5473736572646461;
      goto LABEL_20;
    case 6:
      v2 = 0xD000000000000011;
      v7 = 0x800000026696E1A0;
      break;
    case 7:
      v2 = 0x54746361746E6F63;
LABEL_20:
      v7 = 0xEB00000000657079;
      break;
    case 8:
      v2 = 0x6369746E616D6573;
      v7 = 0xEE0065756C61765FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_20(v5, a2, v2);
  }

  return v10 & 1;
}

{
  v2 = 7562617;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7562617;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28526;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C65636E6163;
      break;
    case 3:
      v5 = 0x206D7269666E6F63;
      v3 = 0xEF746361746E6F63;
      break;
    case 4:
      v5 = 0x63207463656A6572;
      v3 = 0xEE00746361746E6FLL;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C65636E6163;
      break;
    case 3:
      v2 = 0x206D7269666E6F63;
      v6 = 0xEF746361746E6F63;
      break;
    case 4:
      v2 = 0x63207463656A6572;
      v6 = 0xEE00746361746E6FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_20(v5, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 0x73736572646441;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x73736572646441;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6645569;
      break;
    case 2:
      v5 = 0x73726576696E6E41;
      v3 = 0xEB00000000797261;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x7961646874726942;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1685217603;
      break;
    case 5:
      v5 = 0x796E61706D6F43;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x6C69616D45;
      break;
    case 7:
      v3 = 0xE400000000000000;
      v5 = 1701667150;
      break;
    case 8:
      v3 = 0xE500000000000000;
      v5 = 0x656E6F6850;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 6645569;
      break;
    case 2:
      v2 = 0x73726576696E6E41;
      v6 = 0xEB00000000797261;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x7961646874726942;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1685217603;
      break;
    case 5:
      v2 = 0x796E61706D6F43;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v2 = 0x6C69616D45;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v2 = 1701667150;
      break;
    case 8:
      v6 = 0xE500000000000000;
      v2 = 0x656E6F6850;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_20(v5, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 6645601;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6645601;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000013;
      v3 = 0x800000026696E8A0;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x65674174736170;
      break;
    case 3:
      v5 = 0x6741657275747566;
      v3 = 0xE900000000000065;
      break;
    case 4:
      v5 = 0x6574736575716572;
      v3 = 0xED00006574614464;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000013;
      v6 = 0x800000026696E8A0;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x65674174736170;
      break;
    case 3:
      v2 = 0x6741657275747566;
      v6 = 0xE900000000000065;
      break;
    case 4:
      v2 = 0x6574736575716572;
      v6 = 0xED00006574614464;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_20(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_20(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_6_14();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_20(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xED0000676E697274;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_6_14();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_20(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xED0000656C646E61;
  }

  else
  {
    v1 = 0xEC0000006C656261;
  }

  OUTLINED_FUNCTION_6_14();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_20(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xEB00000000656C64;
  }

  else
  {
    v1 = 0xEA00000000006C65;
  }

  OUTLINED_FUNCTION_6_14();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_20(v2, v3, v4);
  }

  return v9 & 1;
}

{
  if (a1)
  {
    v1 = 0xEB00000000656C64;
  }

  else
  {
    v1 = 0xEA00000000006C65;
  }

  OUTLINED_FUNCTION_6_14();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_20(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_20(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x7961646874726962;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x800000026696E460;
  }

  if (a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x7961646874726962;
  }

  if (a2)
  {
    v6 = 0x800000026696E460;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_20(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent(a4, a5, a6);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t GetContactAttributeIntent.requestedName.getter()
{
  result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_fullName);
  if (!v2)
  {
    result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_firstName);
    if (!v3)
    {
      result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_middleName);
      if (!v4)
      {
        result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_lastName);
        if (!v5)
        {
          return outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_nickName);
        }
      }
    }
  }

  return result;
}

id GetContactAttributeIntent.__allocating_init(_:referenceResolver:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v54 - v7;
  v9 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = [objc_allocWithZone(v2) init];
  v17 = ContactNLv3Intent.isMeCardRequest.getter();
  type metadata accessor for NSNumber();
  isa = NSNumber.init(integerLiteral:)(v17 & 1).super.super.isa;
  OUTLINED_FUNCTION_4_10(isa, sel_setIsMe_);

  v19 = a1;
  ContactNLv3Intent.person.getter(v20, v21, v22, v23, v24, v25, v26, v27, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    outlined destroy of PersonIntentNode?(v8);
    if (one-time initialization token for contactId != -1)
    {
      swift_once();
    }

    type metadata accessor for ContactNLv3Intent(0);
    lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent(&lazy protocol witness table cache variable for type ContactNLv3Intent and conformance ContactNLv3Intent, type metadata accessor for ContactNLv3Intent, &protocol conformance descriptor for ContactNLv3Intent);
    IntentNodeTraversable.value<A>(forNode:)();
    if (v55)
    {
      v28 = String.sanitizeContactIdURL.getter(v54, v55);
      v30 = v29;

      outlined bridged method (mbgnn) of @objc GetContactIntent.contactIdentifier.setter(v28, v30, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_266966A40;
      type metadata accessor for SiriMatch();
      v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      *(v31 + 32) = @nonobjc INObject.init(identifier:display:)(v28, v30, v28, v30);
      outlined bridged method (mbnn) of @objc GetContactIntent.siriMatches.setter(v31, v16);
    }

    else
    {
      SiriKitGetEntityIntent.runReferenceResolution(_:)(a2, v3, &protocol witness table for GetContactAttributeIntent);
    }
  }

  else
  {
    (*(v11 + 32))(v15, v8, v9);
    OUTLINED_FUNCTION_1_16();
    v33 = PersonIntentNodeContaining.firstName.getter();
    if (v34)
    {
      MEMORY[0x26D5E2470](v33);
      v33 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v33, sel_setFirstName_);

    OUTLINED_FUNCTION_1_16();
    v35 = PersonIntentNodeContaining.nickName.getter();
    if (v36)
    {
      MEMORY[0x26D5E2470](v35);
      v35 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v35, sel_setNickName_);

    OUTLINED_FUNCTION_1_16();
    v37 = PersonIntentNodeContaining.lastName.getter();
    if (v38)
    {
      MEMORY[0x26D5E2470](v37);
      v37 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v37, sel_setLastName_);

    OUTLINED_FUNCTION_1_16();
    v39 = PersonIntentNodeContaining.fullName.getter();
    if (v40)
    {
      MEMORY[0x26D5E2470](v39);
      v39 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v39, sel_setFullName_);

    OUTLINED_FUNCTION_1_16();
    v41 = PersonIntentNodeContaining.middleName.getter();
    if (v42)
    {
      MEMORY[0x26D5E2470](v41);
      v41 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v41, sel_setMiddleName_);

    OUTLINED_FUNCTION_1_16();
    v43 = PersonIntentNodeContaining.company.getter();
    if (v44)
    {
      MEMORY[0x26D5E2470](v43);
      v43 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v43, sel_setOrganizationName_);

    OUTLINED_FUNCTION_1_16();
    v45 = PersonIntentNodeContaining.relationship.getter();
    if (v46)
    {
      MEMORY[0x26D5E2470](v45);
      v45 = OUTLINED_FUNCTION_5_17();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_4_10(v45, sel_setContactRelation_);

    (*(v11 + 8))(v15, v9);
  }

  type metadata accessor for ContactAttribute();
  v47 = ContactNLv3Intent.requestedContactAttribute.getter();
  v48 = ContactNLv3Intent.requestedContactAttributeLabel.getter();
  v50 = v49;
  v51 = static DateTimeUtil.getRequestedAgeDateTime(from:)(a1);
  v52 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v47, 0, 0, v48, v50, 0, 0, v51, 0);
  OUTLINED_FUNCTION_4_10(v52, sel_setContactAttributeToGet_);

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  outlined destroy of ContactNLv3Intent(a1);
  return v16;
}

uint64_t GetContactAttributeIntent.siriInferenceContact.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ContactHandle.HandleType();
  OUTLINED_FUNCTION_1_0();
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v36 = v6 - v5;
  v7 = type metadata accessor for ContactHandle();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  Contact.init()();
  outlined bridged method (pb) of @objc GetContactIntent.contactIdentifier.getter(v0);
  if (v14)
  {
    Contact.id.setter();
  }

  outlined bridged method (pb) of @objc GetContactIntent.contactRelation.getter(v0);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference7ContactV12LabeledValueVy_SSGGMd, &_ss23_ContiguousArrayStorageCy13SiriInference7ContactV12LabeledValueVy_SSGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7ContactV12LabeledValueVy_SSGMd, &_s13SiriInference7ContactV12LabeledValueVy_SSGMR);
    *(swift_allocObject() + 16) = xmmword_266966D90;
    static String.EMPTY.getter();
    v38[0] = static String.EMPTY.getter();
    v38[1] = v16;
    Contact.LabeledValue.init(id:label:value:)();
    Contact.contactRelations.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_fullName);
  if (v17)
  {
    Contact.givenName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_firstName);
  if (v18)
  {
    Contact.givenName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_middleName);
  if (v19)
  {
    Contact.middleName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_lastName);
  if (v20)
  {
    Contact.familyName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_nickName);
  if (v21)
  {
    Contact.nickname.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_organizationName);
  if (v22)
  {
    Contact.organizationName.setter();
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(v0, &selRef_phoneNumber);
  if (v23)
  {
    (*(v37 + 104))(v36, *MEMORY[0x277D56010], v2);
    OUTLINED_FUNCTION_2_20();
    ContactHandle.init(id:type:label:value:isSuggested:)();
    v24 = Contact.handles.modify();
    v26 = v25;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v27 = *(*v26 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v27);
    v28 = *v26;
    *(v28 + 16) = v27 + 1;
    (*(v9 + 32))(v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v13, v7);
    v24(v38, 0);
  }

  result = outlined bridged method (pb) of @objc PostalAddress.street.getter(v1, &selRef_emailAddress);
  if (v30)
  {
    (*(v37 + 104))(v36, *MEMORY[0x277D56008], v2);
    OUTLINED_FUNCTION_2_20();
    ContactHandle.init(id:type:label:value:isSuggested:)();
    v31 = Contact.handles.modify();
    v33 = v32;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v34 = *(*v33 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v34);
    v35 = *v33;
    *(v35 + 16) = v34 + 1;
    (*(v9 + 32))(v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v34, v13, v7);
    return v31(v38, 0);
  }

  return result;
}

uint64_t GetContactAttributeIntent.handleTypePreference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 contactAttributeToGet];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 contactAttributeType];

    if (v5 == 2)
    {
      static ContactHandleTypePreference.preferPhone.getter();
LABEL_7:
      v9 = 0;
      goto LABEL_9;
    }
  }

  v6 = [v1 contactAttributeToGet];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 contactAttributeType];

    if (v8 == 1)
    {
      static ContactHandleTypePreference.preferEmail.getter();
      goto LABEL_7;
    }
  }

  v9 = 1;
LABEL_9:
  v10 = type metadata accessor for ContactHandleTypePreference();

  return __swift_storeEnumTagSinglePayload(a1, v9, 1, v10);
}

char *GetContactAttributeIntentResponse.__allocating_init(contactIdentifiers:code:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = GetContactAttributeIntentResponse.init(code:userActivity:)(a2, 0);
  v7 = v6;
  if (a1)
  {
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  [v6 setContactIdentifiers_];

  return v6;
}

uint64_t lazy protocol witness table accessor for type ContactNLv3Intent and conformance ContactNLv3Intent(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id SAPerson.init(contact:isMe:)(void *a1, void *a2)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v85 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v85 - v10;
  v11 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v24 = v23 - v22;
  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v25);
  if (v26)
  {
  }

  else
  {
    UUID.init()();
    v27 = UUID.uuidString.getter();
    v85 = v17;
    v86 = v13;
    v28 = v8;
    v29 = v6;
    v30 = v27;
    v31 = v25;
    v32 = a1;
    v33 = v11;
    v35 = v34;
    (*(v20 + 8))(v24, v18);
    v36 = v30;
    v6 = v29;
    v8 = v28;
    v37 = v35;
    v11 = v33;
    a1 = v32;
    v25 = v31;
    v17 = v85;
    v13 = v86;
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v36, v37, v25, &selRef_setAceId_);
  }

  v38 = v88;
  if (a1)
  {
    v39 = [objc_opt_self() assistantIDFromContact_];
    if (v39)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v40);
      v39 = v41;
      (*(v13 + 8))(v17, v11);
    }

    v42 = v87;
    [v25 setIdentifier_];

    v43 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v44, v45, v46, &selRef_setInternalGUID_);
    v47 = [a1 birthday];
    if (v47)
    {
      v48 = v47;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    v50 = type metadata accessor for DateComponents();
    __swift_storeEnumTagSinglePayload(v6, v49, 1, v50);
    outlined init with take of DateComponents?(v6, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v50) == 1)
    {
      outlined destroy of DateComponents?(v8);
      v51 = type metadata accessor for Date();
      __swift_storeEnumTagSinglePayload(v42, 1, 1, v51);
      isa = 0;
    }

    else
    {
      DateComponents.date.getter();
      (*(*(v50 - 8) + 8))(v8, v50);
      v53 = type metadata accessor for Date();
      isa = 0;
      if (__swift_getEnumTagSinglePayload(v42, 1, v53) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(*(v53 - 8) + 8))(v42, v53);
      }
    }

    [v25 setBirthday_];

    v54 = [a1 organizationName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v55, v56, v57, &selRef_setCompany_);
    v58 = [a1 givenName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v59, v60, v61, &selRef_setFirstName_);
    v62 = CNContact.formattedFullName.getter();
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v62, v63, v25, &selRef_setFullName_);
    v64 = [a1 familyName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v65, v66, v67, &selRef_setLastName_);
    [v25 setMe_];
    v68 = [a1 middleName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v69, v70, v71, &selRef_setMiddleName_);
    v72 = [a1 nickname];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v73, v74, v75, &selRef_setNickName_);
    v76 = [a1 namePrefix];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v77, v78, v79, &selRef_setPrefix_);
    v80 = [a1 nameSuffix];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_0_21(v81, v82, v83, &selRef_setSuffix_);
  }

  return v25;
}

id SAUIButton.init(commands:text:)()
{
  v3 = [objc_allocWithZone(OUTLINED_FUNCTION_4_12()) init];
  outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(v2, v3);
  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v1, v0, v3, &selRef_setText_);

  return v3;
}

id SAABPersonSnippet.init(contact:attributeType:isMe:appUtil:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v15);
  if (v16)
  {
  }

  else
  {
    UUID.init()();
    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v10 + 8))(v14, v8);
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v17, v19, v15, &selRef_setAceId_);
  }

  v20 = AppUtil.buildSash()();
  [v15 setSash_];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v21, v22, v15, &selRef_setItemType_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SAABPerson, 0x277D470F0);
  v24 = a1;
  v25 = a3;
  *(v23 + 32) = SAPerson.init(contact:isMe:)(a1, v25);
  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(v23, v15, &lazy cache variable for type metadata for SAPerson, 0x277D47630, &selRef_setPersons_);
  if (a2 == 3 || a2 == 2 || a2 == 1)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v27 = OUTLINED_FUNCTION_5_18(v26);
    *(v27 + 16) = xmmword_266966D90;
    *(v27 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v27 + 40) = v28;
  }

  else
  {
    type metadata accessor for ContactService();
    v27 = static ContactService.defaultPropertiesString.getter();
  }

  outlined bridged method (mbnn) of @objc SAABPersonSnippet.displayProperties.setter(v27, v15);

  outlined destroy of AppUtil(a4);
  return v15;
}

id SAABPersonSnippet.init(_:isMe:)(void *a1, void *a2)
{
  v4 = &type metadata for InstalledAppsProvider;
  v5 = &protocol witness table for InstalledAppsProvider;
  return SAABPersonSnippet.init(contact:attributeType:isMe:appUtil:)(a1, 0, a2, v3);
}

id SAStartLocalRequest.init(clientBoundCommands:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = v2;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  [v2 setClientBoundCommands_];

  return v2;
}

id SASTHeaderItem.init(header:text:)()
{
  v3 = [objc_allocWithZone(OUTLINED_FUNCTION_4_12()) init];
  [v3 setHeader_];
  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v1, v0, v3, &selRef_setText_);

  return v3;
}

id SASTLineDetailItem.init(title:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setTitle_];

  return v2;
}

id SAUIDecoratedText.init(text:regions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(a1, a2, v6, &selRef_setText_);
  if (a3)
  {
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SATextDecorationRegion, 0x277D479C8);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  [v6 setRegions_];

  return v6;
}

id SATextDecorationRegion.init(start:length:property:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v8 setStart_];
  [v8 setLength_];
  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(a3, a4, v8, &selRef_setProperty_);

  return v8;
}

id SASTPropertyListItem.init(decoratedTitle:decoratedValues:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setDecoratedTitle_];
  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(a2, v4, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40, &selRef_setDecoratedValues_);

  return v4;
}

id SASTColumnDataListItem.init(title:decoratedRows:action:)(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setTitle_];
  outlined bridged method (mbnn) of @objc SASTColumnDataListItem.decoratedRows.setter(a2, v6, &lazy cache variable for type metadata for SAUIDecoratedText, 0x277D47A40, &selRef_setDecoratedRows_);
  v7 = a3;
  [v6 setAction_];

  return v6;
}