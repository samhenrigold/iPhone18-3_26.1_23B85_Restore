uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[8 * v11] <= __src)
    {
      v26 = a2;
      v27 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v27;
      a2 = v26;
    }

    v46 = &__src[8 * v11];
    v13 = __src;
    if (v9 >= 8 && a2 > v5)
    {
      v42 = __src;
LABEL_31:
      v28 = (a2 - 8);
      v4 -= 8;
      v29 = v46;
      v43 = (a2 - 8);
      v45 = a2;
      do
      {
        v46 = v29;
        v31 = *(v29 - 1);
        v29 -= 8;
        v30 = v31;
        v32 = *v28;
        v33 = v31 & 0xFFFFFFFFFFFFFFFLL;
        switch(v31 >> 60)
        {
          case 1uLL:
          case 2uLL:
          case 3uLL:
          case 4uLL:
          case 5uLL:
          case 6uLL:
          case 7uLL:
          case 8uLL:
          case 9uLL:
          case 0xAuLL:
          case 0xBuLL:
          case 0xCuLL:
            v30 = v33;
            break;
          default:
            break;
        }

        v34 = *(*v30 + 376);

        v36 = v34(v35);
        if (v32 >> 60)
        {
          v37 = v32 & 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v32;
        }

        v38 = *(*v37 + 376);

        v40 = v38(v39);

        if (v36 < v40)
        {
          if (v4 + 8 != v45)
          {
            *v4 = *v43;
          }

          v13 = v42;
          if (v46 <= v42 || (a2 = v43, v43 <= v5))
          {
            a2 = v43;
            goto LABEL_47;
          }

          goto LABEL_31;
        }

        if (v4 + 8 != v46)
        {
          *v4 = *v29;
        }

        v4 -= 8;
        v13 = v42;
        v28 = v43;
      }

      while (v29 > v42);
      v46 = v29;
      a2 = v45;
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v46 = &v13[v8];
    if (v6 >= 8 && v12 < v4)
    {
      v14 = v12;
      while (1)
      {
        v44 = v14;
        v15 = *v14;
        v16 = *v13;
        switch(*v14 >> 60)
        {
          case 1uLL:
          case 2uLL:
          case 3uLL:
          case 4uLL:
          case 5uLL:
          case 6uLL:
          case 7uLL:
          case 8uLL:
          case 9uLL:
          case 0xAuLL:
          case 0xBuLL:
          case 0xCuLL:
            v15 = *v14 & 0xFFFFFFFFFFFFFFFLL;
            break;
          default:
            break;
        }

        v17 = *(*v15 + 376);

        v19 = v17(v18);
        v20 = v16 >> 60 ? v16 & 0xFFFFFFFFFFFFFFFLL : v16;
        v21 = *(*v20 + 376);

        v23 = v21(v22);

        if (v19 >= v23)
        {
          break;
        }

        v24 = v44;
        v14 = v44 + 1;
        if (v5 != v44)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v5;
        if (v13 >= v46 || v14 >= v4)
        {
          goto LABEL_24;
        }
      }

      v24 = v13;
      v25 = v5 == v13++;
      v14 = v44;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v5 = *v24;
      goto LABEL_22;
    }

LABEL_24:
    a2 = v5;
  }

LABEL_47:
  if (a2 != v13 || a2 >= v13 + ((v46 - v13 + (v46 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8))
  {
    memmove(a2, v13, 8 * ((v46 - v13) / 8));
  }

  return 1;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    specialized _NativeDictionary._delete(at:)();
  }

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
LABEL_3:
  v8 = *(a1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_31:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(a1 + 16);
        if (v3 == v10)
        {
          goto LABEL_27;
        }

        if (v3 >= v10)
        {
          goto LABEL_31;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + 16 * v11 + 32);
        if (!v2)
        {
          v13 = v5[3];
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v28 = *(v9 + 16 * v11 + 32);
          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI11CloudRecord_pXpGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudRecord_pXpGMR);
          v16 = swift_allocObject();
          v17 = _swift_stdlib_malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 17;
          }

          v19 = v18 >> 4;
          v16[2] = v15;
          v16[3] = 2 * (v18 >> 4);
          v20 = (v16 + 4);
          v21 = v5[3] >> 1;
          if (v5[2])
          {
            v22 = v5 + 4;
            if (v16 != v5 || v20 >= v22 + 16 * v21)
            {
              v23 = v18 >> 4;
              memmove(v16 + 4, v22, 16 * v21);
              v19 = v23;
            }

            v5[2] = 0;
          }

          v6 = (v20 + 16 * v21);
          v2 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

          v5 = v16;
          v12 = v28;
        }

        v24 = __OFSUB__(v2--, 1);
        if (v24)
        {
          goto LABEL_33;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v25 = v5[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v24 = __OFSUB__(v26, v2);
    v27 = v26 - v2;
    if (v24)
    {
LABEL_35:
      __break(1u);
      return;
    }

    v5[2] = v27;
  }
}

{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  v26 = (MEMORY[0x277D84F90] + 32);
LABEL_4:
  v6 = *(a1 + 16);
  if (v3 == v6)
  {
    goto LABEL_38;
  }

  if (v3 >= v6)
  {
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
    goto LABEL_47;
  }

  while (1)
  {
    v7 = *(v4 + 8 * v3);

    if (!v7)
    {
      goto LABEL_9;
    }

    if (v7 >> 62)
    {
      break;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_9:
    ++v3;
    v8 = *(a1 + 16);
    if (v3 == v8)
    {
      goto LABEL_38;
    }

    if (v3 >= v8)
    {
      goto LABEL_42;
    }
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_9;
  }

LABEL_13:
  v9 = 0;
  ++v3;
  if ((v7 & 0xC000000000000001) == 0)
  {
    while (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v7 + 8 * v9 + 32);

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_37;
      }

LABEL_20:
      if (!v2)
      {
        v12 = v5[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_46;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 25;
        }

        v18 = v17 >> 3;
        v15[2] = v14;
        v15[3] = (2 * (v17 >> 3)) | 1;
        v19 = (v15 + 4);
        v20 = v5[3] >> 1;
        if (v5[2])
        {
          v21 = v5 + 4;
          v27 = v5;
          if (v15 != v5 || v19 >= v21 + 8 * v20)
          {
            v22 = v17 >> 3;
            memmove(v15 + 4, v21, 8 * v20);
            v18 = v22;
          }

          v27[2] = 0;
        }

        v26 = (v19 + 8 * v20);
        v2 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v5 = v15;
      }

      v11 = __OFSUB__(v2--, 1);
      if (v11)
      {
        goto LABEL_45;
      }

      *v26++ = v10;
      if (v7 >> 62)
      {
        if (v9 == __CocoaSet.count.getter())
        {
          goto LABEL_4;
        }
      }

      else if (v9 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        goto LABEL_35;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_44;
  }

LABEL_35:
  v10 = MEMORY[0x21CE93180](v9, v7);
  v11 = __OFADD__(v9++, 1);
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_37:
  __break(1u);
LABEL_38:

  v23 = v5[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v11 = __OFSUB__(v24, v2);
    v25 = v24 - v2;
    if (!v11)
    {
      v5[2] = v25;
      return;
    }

LABEL_47:
    __break(1u);
  }
}

uint64_t specialized FlattenSequence.Iterator.next()()
{
  v2 = v0[2];
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_2:
  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v1 = v0[3];
  if (v1 == result)
  {
    while (1)
    {
LABEL_5:
      v4 = v0[1];
      v5 = *(*v0 + 16);
      if (v4 == v5)
      {
        return 0;
      }

      if (v4 >= v5)
      {
        break;
      }

      v2 = *(*v0 + 8 * v4 + 32);
      v0[1] = v4 + 1;
      v1 = v0[2];

      v0[2] = v2;
      v0[3] = 0;
      if (v2)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    result = MEMORY[0x21CE93180](v1, v2);
    v6 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_17;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    v6 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
LABEL_15:
      v0[3] = v6;
      return result;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void specialized static DBAsset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v86 = 0;
  v96 = type metadata accessor for UUID();
  v85 = *(v96 - 8);
  v4 = MEMORY[0x28223BE20](v96);
  v87 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v95 = &v70 - v6;
  v7 = *(a1 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say9MomentsUI12DBAssetModelCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v99[0] = v10;
  v11 = *(v9 + 16);

  if (!v11)
  {
    v76 = v10;
    goto LABEL_11;
  }

  for (i = 0; i != v11; ++i)
  {
    if (i >= *(v9 + 16))
    {
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v98 = *(v9 + 32 + 8 * i);

    v13 = v86;
    closure #1 in static DBAsset.== infix(_:_:)(v99, &v98);
    v86 = v13;
    if (v13)
    {
      goto LABEL_106;
    }
  }

  v76 = v99[0];
LABEL_11:

  if (*(a2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v14 = *(a2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v14 = v8;
  }

  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say9MomentsUI12DBAssetModelCGTt0g5Tf4g_n(v8);
  v99[0] = v15;
  v16 = v14[2];

  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (j >= v14[2])
      {
        goto LABEL_100;
      }

      v98 = v14[j + 4];

      v18 = v86;
      closure #1 in static DBAsset.== infix(_:_:)(v99, &v98);
      v86 = v18;
      if (v18)
      {
        goto LABEL_106;
      }
    }

    v15 = v99[0];
  }

  v19 = v76;
  v20 = v15;
  if (v76[2] != v15[2])
  {

    return;
  }

  v21 = 0;
  v22 = v76 + 8;
  v23 = 1 << *(v76 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v76[8];
  v70 = (v23 + 63) >> 6;
  v93 = (v85 + 8);
  v94 = (v85 + 16);
  v72 = v15;
  v71 = v76 + 8;
LABEL_25:
  while (2)
  {
    if (v25)
    {
      if (!v20[2])
      {
        goto LABEL_98;
      }
    }

    else
    {
      do
      {
        v38 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_102;
        }

        if (v38 >= v70)
        {

          return;
        }

        v25 = v22[v38];
        ++v21;
      }

      while (!v25);
      v21 = v38;
      if (!v20[2])
      {
        goto LABEL_98;
      }
    }

    v26 = v25;
    v75 = v21;
    v27 = __clz(__rbit64(v25)) | (v21 << 6);
    v28 = *(v19[7] + 8 * v27);
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(*(v19[6] + 8 * v27));
    if ((v30 & 1) == 0)
    {
      goto LABEL_98;
    }

    v31 = *(v20[7] + 8 * v29);
    v32 = v28 >> 62;
    v81 = v28;
    v88 = v31;
    if (v28 >> 62)
    {
      v33 = __CocoaSet.count.getter();
      v31 = v88;
      v34 = v88 >> 62;
      if (!(v88 >> 62))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v33 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v31 >> 62;
      if (!(v31 >> 62))
      {
LABEL_30:
        v35 = v26;
        if (v33 != *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        goto LABEL_31;
      }
    }

    v68 = v33;
    v69 = __CocoaSet.count.getter();
    v33 = v68;
    v35 = v26;
    if (v68 != v69)
    {
LABEL_97:

      goto LABEL_98;
    }

LABEL_31:
    v74 = (v35 - 1) & v35;
    v73 = v33;
    if (v33 != 1)
    {
      goto LABEL_49;
    }

    if (v34)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_49;
      }

LABEL_34:
      v36 = v88;
      if ((v88 & 0xC000000000000001) != 0)
      {

        MEMORY[0x21CE93180](0, v36);
        if (!v32)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_104;
        }

        if (!v32)
        {
LABEL_37:
          if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          goto LABEL_90;
        }
      }

      if (!__CocoaSet.count.getter())
      {
LABEL_90:

        goto LABEL_50;
      }

LABEL_38:

      if ((v81 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CE93180](0, v81);
LABEL_41:

        type metadata accessor for DBAssetModel(0);
        v37 = static DBAssetModel.== infix(_:_:)();

        v19 = v76;
        v20 = v72;
        v21 = v75;
        v22 = v71;
        v25 = v74;
        if ((v37 & 1) == 0)
        {
          goto LABEL_98;
        }

        continue;
      }

      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_41;
      }

LABEL_105:
      __break(1u);
LABEL_106:

      __break(1u);
      return;
    }

    break;
  }

  if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_49:

LABEL_50:
  v99[0] = MEMORY[0x277D84FA0];
  if (v32)
  {
    v39 = __CocoaSet.count.getter();
    v40 = v88;
    if (!v39)
    {
LABEL_55:

      v41 = MEMORY[0x277D84FA0];
      goto LABEL_83;
    }
  }

  else
  {
    v39 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v40 = v88;
    if (!v39)
    {
      goto LABEL_55;
    }
  }

  v79 = v39;
  v84 = v40 & 0xFFFFFFFFFFFFFF8;
  if (v34)
  {
    v91 = __CocoaSet.count.getter();
    v40 = v88;
  }

  else
  {
    v91 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = 0;
  v80 = v81 & 0xC000000000000001;
  v78 = v81 & 0xFFFFFFFFFFFFFF8;
  v77 = v81 + 32;
  v90 = v40 & 0xC000000000000001;
  v83 = v40 + 32;
  while (1)
  {
    if (v80)
    {
      v43 = v42;
      v89 = MEMORY[0x21CE93180](v42);
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v46 = v42;
      if (v42 >= *(v78 + 16))
      {
        goto LABEL_103;
      }

      v89 = *(v77 + 8 * v42);

      v44 = __OFADD__(v46, 1);
      v45 = v46 + 1;
      if (v44)
      {
        goto LABEL_101;
      }
    }

    v82 = v45;
    if (v91)
    {
      break;
    }

LABEL_58:

    v42 = v82;
    if (v82 == v79)
    {

      v41 = v99[0];
LABEL_83:
      v67 = *(v41 + 16);

      if (v67 != v73)
      {
        goto LABEL_98;
      }

      v19 = v76;
      v20 = v72;
      v21 = v75;
      v22 = v71;
      v25 = v74;
      goto LABEL_25;
    }
  }

  v47 = 0;
  while (2)
  {
    if (v90)
    {
      v51 = MEMORY[0x21CE93180](v47, v88);
      v44 = __OFADD__(v47, 1);
      v52 = v47 + 1;
      if (v44)
      {
        goto LABEL_94;
      }

LABEL_75:
      v53 = v99[0];
      v54 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
      v55 = *(v99[0] + 16);
      v92 = v52;
      v97 = v51;
      if (v55 && (_s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v56 = dispatch thunk of Hashable._rawHashValue(seed:)(), v57 = -1 << *(v53 + 32), v58 = v56 & ~v57, ((*(v53 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) != 0))
      {
        v59 = ~v57;
        v60 = *(v85 + 72);
        v61 = *(v85 + 16);
        while (1)
        {
          v63 = v95;
          v62 = v96;
          v61(v95, *(v53 + 48) + v60 * v58, v96);
          _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v64 = v54;
          v65 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v93)(v63, v62);
          if (v65)
          {
            break;
          }

          v58 = (v58 + 1) & v59;
          v54 = v64;
          if (((*(v53 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
          {
            goto LABEL_80;
          }
        }

LABEL_81:
      }

      else
      {
LABEL_80:
        type metadata accessor for DBAssetModel(0);
        v66 = v97;
        if ((static DBAssetModel.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_81;
        }

        v48 = v87;
        v49 = v96;
        (*v94)(v87, v66 + v54, v96);
        v50 = v95;
        specialized Set._Variant.insert(_:)(v95, v48);

        (*v93)(v50, v49);
      }

      v47 = v92;
      if (v92 == v91)
      {
        goto LABEL_58;
      }

      continue;
    }

    break;
  }

  if (v47 >= *(v84 + 16))
  {
    goto LABEL_95;
  }

  v51 = *(v83 + 8 * v47);

  v44 = __OFADD__(v47, 1);
  v52 = v47 + 1;
  if (!v44)
  {
    goto LABEL_75;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_98:
}

unint64_t specialized DBAsset.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBAsset.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBAsset(uint64_t a1)
{
  result = type metadata singleton initialization cache for DBAsset;
  if (!type metadata singleton initialization cache for DBAsset)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized DBAsset.assetDataLookup.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v5 = *(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      v8 = *(v5 + 32 + 8 * v7++);
      switch(v8 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v8 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      v9 = *(*v8 + 264);
      swift_retain_n();

      v9(a1, a2);

      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

void specialized DBAsset.assetDataGet.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v5 = *(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      v8 = *(v5 + 32 + 8 * v7++);
      switch(v8 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v8 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      v9 = *(*v8 + 288);
      swift_retain_n();

      v9(a1, a2);

      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

void specialized DBAsset.assetURLGet.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v5 = *(v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      v8 = *(v5 + 32 + 8 * v7++);
      switch(v8 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v8 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      v9 = *(*v8 + 312);
      swift_retain_n();

      v9(a1, a2);

      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

double outlined consume of DBAssetModelType?(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t type metadata completion function for DBAsset(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t _s10Foundation4UUIDVACSEAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DBWriter.mergedSuggestionsInWorking(with:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](DBWriter.mergedSuggestionsInWorking(with:), v4, v3);
}

uint64_t DBWriter.mergedSuggestionsInWorking(with:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v0[2] = MEMORY[0x277D84F90];
  v3 = *(v1 + 112);

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = DBWriter.mergedSuggestionsInWorking(with:);
  v5 = v0[3];

  return specialized DBManager.beginMainWriteAsync(_:)(v3, v5, (v0 + 2), v2);
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = DBWriter.mergedSuggestionsInWorking(with:);
  }

  else
  {
    v5 = DBWriter.mergedSuggestionsInWorking(with:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 163) = a3;
  *(v4 + 162) = a2;
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;
  v5 = type metadata accessor for Date();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v3, 0);
}

uint64_t DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:)()
{
  v1 = *(*(v0 + 64) + 112);
  *(v0 + 96) = v1;
  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v1, 0);
}

{
  specialized DBManager.beginMultiThreadedWrite(_:)(v0[12], v0 + 2, v0 + 4, v0 + 6);
  v0[13] = 0;
  v1 = v0[8];

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v1, 0);
}

{
  v26 = v0;
  v1 = *(v0 + 48);
  *(v0 + 112) = v1;
  if (v1)
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    *(v0 + 120) = v2;
    if (!v2 || (v4 = *(v0 + 24)) != 0 && (*(v0 + 16) == v3 ? (v5 = v4 == v2) : (v5 = 0), v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      if (*(v0 + 163) != 1 || (*(v0 + 162) & 1) != 0)
      {
        v17 = *(v0 + 112);
        v18 = *(v0 + 96);
        *(v0 + 144) = (*(*v17 + 304))(v6);
        *(v0 + 152) = (*(*v17 + 352))();
        *(v0 + 164) = v19;

        return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v18, 0);
      }

      else
      {
        if (one-time initialization token for analytics != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, static CommonLogger.analytics);

        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.info.getter();
        v10 = os_log_type_enabled(v8, v9);
        v11 = *(v0 + 112);
        if (v10)
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v25 = v13;
          *v12 = 136446466;
          *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000021657F9F0, &v25);
          *(v12 + 12) = 2048;
          *(v12 + 14) = (*(*v11 + 304))();

          _os_log_impl(&dword_21607C000, v8, v9, "[DBWriter.%{public}s] Sending snapshot analytics event for createDelta, sequence=%llu", v12, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x21CE94770](v13, -1, -1);
          MEMORY[0x21CE94770](v12, -1, -1);
        }

        else
        {
        }

        *(v0 + 161) = 1;

        v21 = swift_task_alloc();
        *(v0 + 136) = v21;
        *v21 = v0;
        v21[1] = DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:);
        v22 = *(v0 + 112);
        v23 = *(v0 + 88);
        v24 = *(v0 + 56);

        return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v22, v24, 0, v23, (v0 + 161));
      }
    }

    else
    {

      v20 = swift_task_alloc();
      *(v0 + 128) = v20;
      *v20 = v0;
      v20[1] = DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:);

      return DBManager.setSnapshotGeneration(_:)(v3, v2);
    }
  }

  else
  {
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError();
    swift_allocError();
    *v14 = 11;
    swift_willThrow();
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v15 = *(v0 + 8);

    return v15();
  }
}

{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v1, 0);
}

{
  v17 = v0;
  if (*(v0 + 163) != 1 || (*(v0 + 162) & 1) != 0)
  {
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);
    *(v0 + 144) = (*(*v8 + 304))();
    *(v0 + 152) = (*(*v8 + 352))();
    *(v0 + 164) = v10;

    return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v9, 0);
  }

  else
  {
    if (one-time initialization token for analytics != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static CommonLogger.analytics);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 112);
    if (v4)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136446466;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000021657F9F0, &v16);
      *(v6 + 12) = 2048;
      *(v6 + 14) = (*(*v5 + 304))();

      _os_log_impl(&dword_21607C000, v2, v3, "[DBWriter.%{public}s] Sending snapshot analytics event for createDelta, sequence=%llu", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x21CE94770](v7, -1, -1);
      MEMORY[0x21CE94770](v6, -1, -1);
    }

    else
    {
    }

    *(v0 + 161) = 1;

    v11 = swift_task_alloc();
    *(v0 + 136) = v11;
    *v11 = v0;
    v11[1] = DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:);
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);
    v14 = *(v0 + 56);

    return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v12, v14, 0, v13, (v0 + 161));
  }
}

{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v1, 0);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  *(v0 + 144) = (*(*v1 + 304))();
  *(v0 + 152) = (*(*v1 + 352))();
  *(v0 + 164) = v3;

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v2, 0);
}

{
  v4.value = *(v0 + 144);
  v5.value = *(v0 + 152);
  v1 = *(v0 + 64);
  v5.is_nil = *(v0 + 164) & 1;
  v4.is_nil = 0;
  DBManager.addSnapshotEnd(sequence:suggestions:)(v4, v5);

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v1, 0);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:)(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 96);
  v6 = *(v5 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v3 + 64);
    *(v5 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount) = v8;
    v10 = v8 > 0;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v3 + 160) = v10;

    static Published.subscript.setter();
    a1 = DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:);
    a2 = v9;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:)(uint64_t a1)
{
  v2 = v1[12];
  Date.init()();
  v1[2] = 0;
  v1[3] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;

  return MEMORY[0x2822009F8](DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:), v2, 0);
}

Swift::Void __swiftcall DBWriter.publishDraft(rendered:total:)(Swift::UInt64 rendered, Swift::UInt64 total)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v10 = _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBWriter and conformance DBWriter, v9, type metadata accessor for DBWriter, &protocol conformance descriptor for DBWriter);
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v10;
  v11[4] = rendered;
  v11[5] = total;
  v11[6] = v2;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in DBWriter.publishDraft(rendered:total:), v11);
}

void DBWriter.saveSuggestionsIntoDraft(_:context:renderedCount:publish:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = *v4;
  v10 = MEMORY[0x21CE93DB0]();
  closure #1 in DBWriter.saveSuggestionsIntoDraft(_:context:renderedCount:publish:)(a2, a1, a3, v5, v4, v9, &v11);
  objc_autoreleasePoolPop(v10);
}

uint64_t static DBWriter.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static DBWriter.Class = a1;
  unk_27CA90F20 = a2;
  byte_27CA90F28 = a3;
  return result;
}

uint64_t DBWriter.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static DBWriter.Log);
}

uint64_t static DBWriter.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBWriter.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DBWriter.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBWriter.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DBWriter.Log.modify(uint64_t a1))()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static DBWriter.Log);
  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance DBWriter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBWriter.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DBWriter.Constants.defaultSnapshotExpiration.getter()
{
  specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)();

  return Date.init(timeIntervalSinceNow:)();
}

Swift::Int DBWriter.FetchError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](0);
  return Hasher._finalize()();
}

uint64_t DBWriter.__allocating_init(database:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t DBWriter.init(database:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  return v1;
}

uint64_t DBWriter.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DBWriter.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void DBWriter.latestSnapshots()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v15 = 0;
  v16 = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  v14 = MEMORY[0x277D84F90];
  v7 = dispatch thunk of ModelContainer.mainContext.getter();
  closure #1 in DBWriter.latestSnapshots()(v7, &v14, &v15, v6 + 16);
  if (v1)
  {
    dispatch thunk of ModelContext.rollback()();
  }

  else if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    dispatch thunk of ModelContext.save()();

    goto LABEL_6;
  }

LABEL_6:
  if (v16 != 1)
  {
    v8 = v15;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    type metadata accessor for MainActor();

    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v2;
    v11[5] = v8;
    v11[6] = v6;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #2 in DBWriter.latestSnapshots(), v11);
  }
}

uint64_t closure #1 in DBWriter.latestSnapshots()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMR);
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMd, &_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  SortDescriptor.order.setter();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMR);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMd, &_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMR);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21658CA50;
  (*(v11 + 16))(v16 + v15, v13, v10);
  type metadata accessor for DBSnapshot(0);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  FetchDescriptor.init(predicate:sortBy:)();
  v17 = v34;
  v18 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v17)
  {
    (*(v7 + 8))(v9, v35);
    return (*(v11 + 8))(v13, v10);
  }

  v34 = v7;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  *v32 = v18;

  v23 = *v22;
  if (v23 >> 62)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    (*(v34 + 8))(v9, v35);
    return (*(v11 + 8))(v13, v10);
  }

  if ((v23 & 0xC000000000000001) != 0)
  {

    v24 = MEMORY[0x21CE93180](0, v23);
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v24 = *(v23 + 32);
  }

  *v20 = (*(*v24 + 304))(v25);
  *(v20 + 8) = 0;
  v26 = (*(*v24 + 352))();
  v28 = v27;

  (*(v34 + 8))(v9, v35);
  result = (*(v11 + 8))(v13, v10);
  *v21 = v26;
  *(v21 + 8) = v28 & 1;
  return result;
}

uint64_t closure #2 in DBWriter.latestSnapshots()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x2822009F8](closure #2 in DBWriter.latestSnapshots(), v8, v7);
}

uint64_t closure #2 in DBWriter.latestSnapshots()()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 40) + 112);
  *(v0 + 88) = v2;
  swift_beginAccess();
  *(v0 + 96) = *(v1 + 16);
  *(v0 + 104) = *(v1 + 24);

  return MEMORY[0x2822009F8](closure #2 in DBWriter.latestSnapshots(), v2, 0);
}

{
  DBManager.setLatestLocalSnapshotSequence(_:_:)(*(v0 + 48), *(v0 + 96));
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](closure #2 in DBWriter.latestSnapshots(), v1, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DBWriter.pruneSnapshotsTo(_:)(Swift::Int a1)
{
  v4 = dispatch thunk of ModelContainer.mainContext.getter();
  closure #1 in DBWriter.pruneSnapshotsTo(_:)(v4, a1);
  if (v2)
  {
    dispatch thunk of ModelContext.rollback()();

LABEL_5:

    goto LABEL_6;
  }

  if ((dispatch thunk of ModelContext.hasChanges.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  dispatch thunk of ModelContext.save()();

LABEL_6:

  specialized BTask.init(name:operation:)(0xD00000000000001DLL, 0x800000021657FA30, &async function pointer to partial apply for closure #2 in DBWriter.pruneSnapshotsTo(_:), v1);
}

void closure #1 in DBWriter.pruneSnapshotsTo(_:)(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v43 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMR);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMd, &_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMR);
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMd, &_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMR);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21658CA50;
  v15 = v14 + v13;
  v16 = v8;
  (*(v9 + 16))(v15, v11, v8);
  type metadata accessor for DBSnapshot(0);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  v17 = v7;
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.includePendingChanges.setter();
  v18 = v45;
  v19 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v18)
  {
    (*(v44 + 8))(v7, v5);
    (*(v9 + 8))(v11, v8);
    return;
  }

  v20 = v19;
  v21 = v5;
  v38 = 0;
  v39 = v11;
  v40 = v9;
  v41 = v17;
  v23 = v43;
  v22 = v44;
  v47 = v19;
  if (one-time initialization token for processing != -1)
  {
LABEL_52:
    swift_once();
  }

  v45 = v21;
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static CommonLogger.processing);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218240;
    if (v20 >> 62)
    {
      v28 = __CocoaSet.count.getter();
    }

    else
    {
      v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v27 + 4) = v28;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v23;
    _os_log_impl(&dword_21607C000, v25, v26, "[pruneSnapshotsTo] local snapshots n=%ld, target count=%ld", v27, 0x16u);
    MEMORY[0x21CE94770](v27, -1, -1);
  }

  v42 = v16;

  while (1)
  {
    v29 = v20 & 0x8000000000000000;
    v16 = v20 >> 62;
    v30 = v22;
    if (v20 >> 62)
    {
      break;
    }

    v21 = v20 & 0xFFFFFFFFFFFFFF8;
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v23)
    {
      goto LABEL_46;
    }

    swift_beginAccess();
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_12:
    if ((v20 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x21CE93180](0, v20);
      v31 = v20 & 0xFFFFFFFFFFFFFF8;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v30 = *(v20 + 32);

      v31 = v20 & 0xFFFFFFFFFFFFFF8;
      if (!v16)
      {
LABEL_15:
        v32 = *(v31 + 16);
        if (!v32)
        {
          goto LABEL_50;
        }

        goto LABEL_31;
      }
    }

    if (v29)
    {
      v21 = v20;
    }

    else
    {
      v21 = v31;
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_50;
    }

    if (__CocoaSet.count.getter() < 1)
    {
      goto LABEL_51;
    }

    v32 = __CocoaSet.count.getter();
LABEL_31:
    v21 = v32 - 1;
    if (__OFSUB__(v32, 1))
    {
      goto LABEL_49;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v16)
      {
        v33 = (v20 & 0xFFFFFFFFFFFFFF8);
        if (v21 <= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_37:
      __CocoaSet.count.getter();
      goto LABEL_38;
    }

    if (v16)
    {
      goto LABEL_37;
    }

LABEL_38:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v33 = (v20 & 0xFFFFFFFFFFFFFF8);
LABEL_39:

    if (v20 >> 62)
    {
      v36 = __CocoaSet.count.getter();
      if (__OFSUB__(v36, 1))
      {
        goto LABEL_56;
      }

      memmove(v33 + 4, v33 + 5, 8 * (v36 - 1));
      v37 = __CocoaSet.count.getter();
      v35 = v37 - 1;
      if (__OFSUB__(v37, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        (*(v30 + 8))(v41, v45);
        (*(v40 + 8))(v39, v42);

        return;
      }
    }

    else
    {
      v34 = v33[2];
      memmove(v33 + 4, v33 + 5, 8 * v34 - 8);
      v35 = v34 - 1;
      if (__OFSUB__(v34, 1))
      {
        goto LABEL_45;
      }
    }

    v33[2] = v35;
    v47 = v20;
    swift_endAccess();
    dispatch thunk of ModelContext.delete<A>(_:)();
  }

  if (v29)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 & 0xFFFFFFFFFFFFFF8;
  }

  if (__CocoaSet.count.getter() <= v23)
  {
    goto LABEL_46;
  }

  swift_beginAccess();
  if (__CocoaSet.count.getter())
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_55;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t closure #2 in DBWriter.pruneSnapshotsTo(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = closure #2 in DBWriter.pruneSnapshotsTo(_:);

  return DBManager.cleanup(wait:)(0);
}

uint64_t DBWriter.latestSuggestions(uiLaunch:allowDraft:)(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 217) = a2;
  *(v3 + 216) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v3 + 24) = swift_task_alloc();
  *(v3 + 32) = type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v5, v4);
}

uint64_t DBWriter.latestSuggestions(uiLaunch:allowDraft:)(uint64_t a1)
{
  v1[8] = *(v1[2] + 112);
  v1[9] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v3, v2);
}

uint64_t DBWriter.latestSuggestions(uiLaunch:allowDraft:)()
{
  v1 = *(v0 + 64);
  *(v0 + 96) = dispatch thunk of ModelContainer.mainContext.getter();

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v1, 0);
}

{
  *(v0 + 104) = DBManager.getSnapshotGeneration()();
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v2, v1);
}

{
  v36 = v0;
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 217);

  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  specialized static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)(v2, v1, 0, v4, v3, v32);
  v7 = v32[0];
  v6 = v32[1];
  *(v0 + 128) = 0;
  *(v0 + 136) = v6;
  *(v0 + 218) = v33;
  *(v0 + 144) = v34;
  *(v0 + 219) = v35;
  *(v5 + 16) = v7;
  if (v7)
  {
    v8 = *(*v7 + 624);

    v10 = v8(v9);

    if (v10)
    {
      v32[0] = MEMORY[0x277D84F90];
      v30 = v5;
      if (v10 >> 62)
      {
LABEL_28:
        v11 = __CocoaSet.count.getter();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = 0;
      v31 = MEMORY[0x277D84F90];
      while (v11 != v12)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CE93180](v12, v10);
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        v14 = DBSuggestion.asSuggestion.getter();

        ++v12;
        if (v14)
        {
          MEMORY[0x21CE92260](v15);
          if (*((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v31 = v32[0];
          v12 = v13;
        }
      }

      v5 = v30;
      v16 = v31;
      v17 = *(v30 + 16);
      if (v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v16 = 0;
      v17 = *(v5 + 16);
      if (v17)
      {
LABEL_18:
        v18 = *(*v17 + 304);

        v7 = v18(v19);

        v20 = 0;
        goto LABEL_23;
      }
    }

    v7 = 0;
  }

  else
  {
    v16 = 0;
  }

  v20 = 1;
LABEL_23:
  *(v0 + 152) = v16;
  *(v0 + 160) = v7;
  *(v0 + 220) = v20;
  v21 = *(v0 + 24);
  v22 = *(v0 + 216);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);

  v24 = static MainActor.shared.getter();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  *(v25 + 32) = v22;
  *(v25 + 40) = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v21, &async function pointer to partial apply for closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:), v25);

  v27 = *(v0 + 80);
  v28 = *(v0 + 88);

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v27, v28);
}

{
  v1 = *(v0 + 128);

  dispatch thunk of ModelContext.rollback()();

  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 223) = 1;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 221) = 257;
  *(v0 + 176) = 0;
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v2, 0);
}

{

  if ((dispatch thunk of ModelContext.hasChanges.getter() & 1) == 0)
  {

    goto LABEL_5;
  }

  v1 = *(v0 + 128);
  dispatch thunk of ModelContext.save()();
  *(v0 + 168) = v1;

  if (!v1)
  {
LABEL_5:
    v5 = *(v0 + 218);
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v0 + 136);
    }

    v9 = *(v0 + 220);
    v10 = *(v0 + 152);
    v11 = *(v0 + 219);
    *(v0 + 200) = *(v0 + 160);
    *(v0 + 208) = v10;
    *(v0 + 223) = v9;
    *(v0 + 222) = v5;
    *(v0 + 184) = v7;
    *(v0 + 192) = v6;
    *(v0 + 221) = v11;
    *(v0 + 176) = v8;
    v2 = *(v0 + 64);
    v4 = DBWriter.latestSuggestions(uiLaunch:allowDraft:);
    v3 = 0;
    goto LABEL_9;
  }

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = DBWriter.latestSuggestions(uiLaunch:allowDraft:);
LABEL_9:

  return MEMORY[0x2822009F8](v4, v2, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v5.is_nil = *(v0 + 221);
  v5.value = *(v0 + 184);
  DBManager.setLatestLocalSnapshotSequence(_:_:)(*(v0 + 176), v5);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](DBWriter.latestSuggestions(uiLaunch:allowDraft:), v1, v2);
}

{
  v1 = *(v0 + 217);

  if ((v1 & 1) != 0 || (*(v0 + 222) & 1) == 0 && *(v0 + 192))
  {
    v2 = *(v0 + 223);

    v3 = *(v0 + 8);
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);

    return v3(v4, v5, v2);
  }

  else
  {
    lazy protocol witness table accessor for type DBWriter.FetchError and conformance DBWriter.FetchError();
    swift_allocError();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  *(v5 + 113) = a4;
  v6 = type metadata accessor for Date();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v8;
  *(v5 + 88) = v7;

  return MEMORY[0x2822009F8](closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:), v8, v7);
}

uint64_t closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:)()
{
  v13 = v0;
  if (*(v0 + 113) == 1)
  {
    if (one-time initialization token for analytics != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static CommonLogger.analytics);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136446210;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000021657FBF0, &v12);
      _os_log_impl(&dword_21607C000, v2, v3, "%{public}s Sending snapshot analytics event from UI launch", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x21CE94770](v5, -1, -1);
      MEMORY[0x21CE94770](v4, -1, -1);
    }

    v6 = *(v0 + 40);
    swift_beginAccess();
    v7 = *(v6 + 16);
    *(v0 + 96) = v7;

    static Date.now.getter();
    *(v0 + 112) = 5;
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:);
    v9 = *(v0 + 64);

    return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v7, 0, 1, v9, (v0 + 112));
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x2822009F8](closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:), v6, v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DBWriter.latestSnapshotMain(prefetch:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 160) = a1;
  *(v2 + 24) = type metadata accessor for MainActor();
  *(v2 + 32) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v4, v3);
}

uint64_t DBWriter.latestSnapshotMain(prefetch:)(uint64_t a1)
{
  v1[7] = *(v1[2] + 112);
  v1[8] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v3, v2);
}

uint64_t DBWriter.latestSnapshotMain(prefetch:)()
{
  v1 = *(v0 + 56);
  *(v0 + 88) = dispatch thunk of ModelContainer.mainContext.getter();

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v1, 0);
}

{
  v0[6] = DBManager.getSnapshotGeneration()();
  v0[7]._countAndFlagsBits = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v2, v1);
}

{
  v12 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 160);

  specialized static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)(v2, v1, v4, 0, v3, &v8);
  *(v0 + 120) = 0;
  *(v0 + 128) = v8;
  *(v0 + 161) = v9;
  *(v0 + 144) = v10;
  *(v0 + 162) = v11;

  v5 = *(v0 + 72);
  v6 = *(v0 + 80);

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v5, v6);
}

{

  if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    v1 = v0[15];
    dispatch thunk of ModelContext.save()();
    v0[19] = v1;

    if (v1)
    {
      v2 = v0[5];
      v3 = v0[6];
      v4 = DBWriter.latestSnapshotMain(prefetch:);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v2 = v0[5];
  v3 = v0[6];
  v4 = DBWriter.latestSnapshotMain(prefetch:);
LABEL_6:

  return MEMORY[0x2822009F8](v4, v2, v3);
}

{
  v1 = v0[15];

  dispatch thunk of ModelContext.rollback()();

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v2, v3);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  if (*(v0 + 161) == 1)
  {

    v1 = *(v0 + 128);
    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    v4 = *(v0 + 56);

    return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v4, 0);
  }
}

{
  v5.is_nil = *(v0 + 162);
  v5.value = *(v0 + 144);
  DBManager.setLatestLocalSnapshotSequence(_:_:)(*(v0 + 136), v5);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotMain(prefetch:), v1, v2);
}

{

  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in DBWriter.mergedSuggestionsInWorking(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DBWriter.mergedSuggestionsInWorking(with:), v8, v7);
}

uint64_t closure #1 in DBWriter.mergedSuggestionsInWorking(with:)()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  v8 = MEMORY[0x21CE93DB0](v7);
  closure #1 in closure #1 in DBWriter.mergedSuggestionsInWorking(with:)(v6, v5, v4, v3, v2, v1, v0 + 2);
  objc_autoreleasePoolPop(v8);
  v9 = v0[1];

  return v9();
}

void closure #1 in closure #1 in DBWriter.mergedSuggestionsInWorking(with:)(uint64_t a1, unsigned int (**a2)(unint64_t, uint64_t, uint64_t), unint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v304 = a7;
  v292 = a5;
  v310 = a4;
  v312 = a2;
  v315 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v287 = &v269 - v9;
  v294 = type metadata accessor for Date();
  v295 = *(v294 - 8);
  v10 = MEMORY[0x28223BE20](v294);
  v307 = &v269 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v283 = &v269 - v13;
  MEMORY[0x28223BE20](v12);
  v284 = &v269 - v14;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v286);
  v285 = &v269 - v15;
  *&v298 = type metadata accessor for PersistentIdentifier();
  v313 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v297 = (&v269 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v282 = &v269 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v288 = &v269 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v291 = &v269 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v289 = &v269 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v306 = &v269 - v27;
  MEMORY[0x28223BE20](v26);
  v308 = &v269 - v28;
  v318 = type metadata accessor for UUID();
  v314 = *(v318 - 8);
  v29 = MEMORY[0x28223BE20](v318);
  v311 = &v269 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v290 = &v269 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v280 = &v269 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v279 = &v269 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v281 = &v269 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v269 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v269 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v269 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v269 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v269 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v269 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v269 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v269 - v60;
  v62 = v317;
  specialized static DBWriter.draftSnapshot(context:)();
  if (v62)
  {
LABEL_2:
    *v304 = v62;
    return;
  }

  v317 = v61;
  v299 = v59;
  v316 = v56;
  v309 = v53;
  v296 = v47;
  v276 = v44;
  v277 = v41;
  v302 = v50;
  v303 = a3;
  if (v63)
  {
    v278 = 0;
    v64 = v318;
    v65 = v310;
    isUniquelyReferenced_nonNull_native = v316;
  }

  else
  {
    specialized static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)(v315, v312, 0, 0, v303, v320);
    v65 = v310;
    isUniquelyReferenced_nonNull_native = v316;
    v278 = 0;
    v63 = v320[0];
    v64 = v318;
    if (!v320[0])
    {
LABEL_62:
      if (one-time initialization token for processing == -1)
      {
        goto LABEL_63;
      }

      goto LABEL_183;
    }
  }

  v67 = v63;
  v68 = (*(*v63 + 624))();
  if (!v68)
  {

    goto LABEL_62;
  }

  a3 = v68;
  v305 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI12DBSuggestionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v322 = v305;
  v273 = (v65 >> 62);
  if (v65 >> 62)
  {
    goto LABEL_157;
  }

  for (i = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v70 = v313;
    v274 = v67;
    v315 = a3;
    if (!i)
    {
      break;
    }

    v71 = 0;
    v313 = (v65 & 0xC000000000000001);
    v293 = (v65 & 0xFFFFFFFFFFFFFF8);
    v312 = (v314 + 48);
    v301 = v314 + 32;
    v275 = (v70 + 1);
    v307 = v314 + 16;
    v300 = (v314 + 8);
    v67 = v308;
    v311 = i;
    while (v313)
    {
      v73 = MEMORY[0x21CE93180](v71, v65);
      v74 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_148;
      }

LABEL_18:
      (*(*v73 + 344))();
      if ((*v312)(v67, 1, v64) != 1)
      {
        (*v301)(v317, v67, v64);
        a3 = type metadata accessor for DBSuggestion(0);
        v67 = _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, 255, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
        v75 = PersistentModel.modelContext.getter();
        if (v75)
        {
          v64 = v75;
          type metadata accessor for ModelContext();
          if (static ModelContext.== infix(_:_:)())
          {
            v76 = v297;
            PersistentModel.persistentModelID.getter();
            dispatch thunk of ModelContext.model(for:)();
            (*v275)(v76, v298);
            a3 = swift_dynamicCastClass();
            if (!a3)
            {
              swift_unknownObjectRelease();
            }

            v77 = v299;
            v67 = *v307;
            (*v307)(v299, v317, v318);
            if (a3)
            {
              v305 = v67;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v78 = v322;
              v320[0] = v322;
              v65 = specialized __RawDictionaryStorage.find<A>(_:)(v77);
              v80 = *(v78 + 16);
              v81 = (v79 & 1) == 0;
              v82 = v80 + v81;
              if (__OFADD__(v80, v81))
              {
                goto LABEL_156;
              }

              v83 = v79;
              if (*(v78 + 24) >= v82)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v86 = v320[0];
                  if ((v79 & 1) == 0)
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
                  specialized _NativeDictionary.copy()();
                  v86 = v320[0];
                  if ((v83 & 1) == 0)
                  {
                    goto LABEL_50;
                  }
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v82, isUniquelyReferenced_nonNull_native);
                v84 = specialized __RawDictionaryStorage.find<A>(_:)(v299);
                if ((v83 & 1) != (v85 & 1))
                {
                  goto LABEL_190;
                }

                v65 = v84;
                v86 = v320[0];
                if ((v83 & 1) == 0)
                {
LABEL_50:
                  v86[(v65 >> 6) + 8] |= 1 << v65;
                  (v305)(v86[6] + *(v314 + 72) * v65, v299, v318);
                  *(v86[7] + 8 * v65) = a3;
                  v117 = v86[2];
                  v94 = __OFADD__(v117, 1);
                  v118 = v117 + 1;
                  if (v94)
                  {
                    goto LABEL_182;
                  }

                  v86[2] = v118;
LABEL_52:
                  v67 = v308;
                  v119 = *v300;
                  v106 = v318;
                  (*v300)(v299, v318);

                  v305 = v86;
                  v322 = v86;
                  v108 = v119;
LABEL_53:
                  isUniquelyReferenced_nonNull_native = v316;
                  (v108)(v317, v106);
                  v64 = v106;
                  a3 = v315;
                  v65 = v310;
                  v72 = v311;
                  goto LABEL_11;
                }
              }

              *(v86[7] + 8 * v65) = a3;

              goto LABEL_52;
            }

            v100 = specialized __RawDictionaryStorage.find<A>(_:)(v77);
            if (v101)
            {
              v102 = v100;
              v103 = swift_isUniquelyReferenced_nonNull_native();
              v104 = v322;
              v320[0] = v322;
              if ((v103 & 1) == 0)
              {
                specialized _NativeDictionary.copy()();
                v104 = v320[0];
              }

              v105 = *(v104 + 48) + *(v314 + 72) * v102;
              v272 = *(v314 + 8);
              v106 = v318;
              (v272)(v105, v318);

              specialized _NativeDictionary._delete(at:)(v102, v104);
              v107 = v272;
              (v272)(v299, v106);
              v108 = v107;

              v305 = v104;
              v322 = v104;
              v67 = v308;
            }

            else
            {
              v108 = *v300;
              v109 = v77;
              v106 = v318;
              (*v300)(v109, v318);

              v67 = v308;
            }

            goto LABEL_53;
          }

          v65 = v310;
        }

        v64 = *v307;
        (*v307)(isUniquelyReferenced_nonNull_native, v317, v318);

        v87 = swift_isUniquelyReferenced_nonNull_native();
        v88 = isUniquelyReferenced_nonNull_native;
        isUniquelyReferenced_nonNull_native = v87;
        v89 = v322;
        v320[0] = v322;
        v90 = specialized __RawDictionaryStorage.find<A>(_:)(v88);
        v92 = *(v89 + 16);
        v93 = (v91 & 1) == 0;
        v94 = __OFADD__(v92, v93);
        v95 = v92 + v93;
        if (v94)
        {
          goto LABEL_152;
        }

        v96 = v91;
        if (*(v89 + 24) >= v95)
        {
          a3 = v315;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_35;
          }

          v110 = v90;
          specialized _NativeDictionary.copy()();
          v90 = v110;
          v98 = v320[0];
          if ((v96 & 1) == 0)
          {
            goto LABEL_46;
          }

LABEL_36:
          *(*(v98 + 56) + 8 * v90) = v73;

          v99 = *v300;
          v64 = v318;
          (*v300)(v316, v318);
          (v99)(v317, v64);
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v95, isUniquelyReferenced_nonNull_native);
          v90 = specialized __RawDictionaryStorage.find<A>(_:)(v316);
          a3 = v315;
          if ((v96 & 1) != (v97 & 1))
          {
LABEL_190:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

LABEL_35:
          v98 = v320[0];
          if (v96)
          {
            goto LABEL_36;
          }

LABEL_46:
          v305 = v74;
          isUniquelyReferenced_nonNull_native = v65;
          v65 = v98;
          *(v98 + 8 * (v90 >> 6) + 64) |= 1 << v90;
          a3 = v314;
          v111 = v90;
          v112 = *(v98 + 48) + *(v314 + 72) * v90;
          v113 = v316;
          v114 = v318;
          v64(v112, v316, v318);
          v64 = v114;
          *(*(v65 + 56) + 8 * v111) = v73;

          v67 = *(a3 + 8);
          (v67)(v113, v114);
          (v67)(v317, v114);
          v115 = *(v65 + 16);
          v94 = __OFADD__(v115, 1);
          v116 = v115 + 1;
          if (v94)
          {
            goto LABEL_155;
          }

          *(v65 + 16) = v116;
          a3 = v315;
          v98 = v65;
          v65 = isUniquelyReferenced_nonNull_native;
          v74 = v305;
        }

        v305 = v98;
        v322 = v98;
        v67 = v308;
        v72 = v311;
        isUniquelyReferenced_nonNull_native = v316;
        goto LABEL_11;
      }

      outlined destroy of UTType?(v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v72 = v311;
LABEL_11:
      ++v71;
      if (v74 == v72)
      {
        goto LABEL_54;
      }
    }

    if (v71 >= *(v293 + 2))
    {
      goto LABEL_150;
    }

    v73 = *(v65 + 8 * v71 + 32);

    v74 = v71 + 1;
    if (!__OFADD__(v71, 1))
    {
      goto LABEL_18;
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
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
    ;
  }

LABEL_54:
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v120 = type metadata accessor for Logger();
  isa = __swift_project_value_buffer(v120, static CommonLogger.processing);

  v312 = isa;
  v121 = Logger.logObject.getter();
  LOBYTE(isa) = static os_log_type_t.default.getter();
  v123 = os_log_type_enabled(v121, isa);
  v124 = a3 >> 62;
  v125 = v306;
  if (!v123)
  {

    goto LABEL_90;
  }

  v126 = swift_slowAlloc();
  *v126 = 134218496;
  if (v273)
  {
    v127 = __CocoaSet.count.getter();
  }

  else
  {
    v127 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v126 + 4) = v127;

  *(v126 + 12) = 2048;
  if (v124)
  {
    goto LABEL_185;
  }

  v142 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    *(v126 + 14) = v142;

    *(v126 + 22) = 2048;
    *(v126 + 24) = *(v305 + 16);
    _os_log_impl(&dword_21607C000, v121, isa, "[mergeSuggestionsIntoDraft] new suggestions n=%ld, working n=%ld, uuidToDBSuggestion count n=%ld", v126, 0x20u);
    MEMORY[0x21CE94770](v126, -1, -1);

LABEL_90:
    v67 = a3 & 0xFFFFFFFFFFFFFF8;
    v143 = v295;
    if (!v124)
    {
      v144 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v64 = v318;
      if (v144)
      {
        goto LABEL_92;
      }

      goto LABEL_159;
    }

    v245 = __CocoaSet.count.getter();
    v143 = v295;
    v144 = v245;
    v64 = v318;
    if (v245)
    {
LABEL_92:
      v301 = a3 & 0xFFFFFFFFFFFFFF8;
      v145 = 0;
      v311 = (a3 & 0xC000000000000001);
      v313 = (v314 + 48);
      v307 = v314 + 16;
      v308 = (v314 + 32);
      v275 = (v314 + 56);
      v310 = (v314 + 8);
      v273 = (v143 + 48);
      v270 = (v143 + 32);
      v272 = (v143 + 8);
      *&v134 = 136315138;
      v298 = v134;
      *&v134 = 136315650;
      v271 = v134;
      v305 = v144;
      do
      {
        if (v311)
        {
          v146 = MEMORY[0x21CE93180](v145, a3);
          v147 = &v145->isa + 1;
          if (__OFADD__(v145, 1))
          {
            goto LABEL_149;
          }
        }

        else
        {
          if (v145 >= *(v301 + 16))
          {
            goto LABEL_151;
          }

          v147 = &v145->isa + 1;
          if (__OFADD__(v145, 1))
          {
            goto LABEL_149;
          }
        }

        v316 = v147;
        v65 = *(*v146 + 344);
        isUniquelyReferenced_nonNull_native = *v146 + 344;
        v317 = v146;
        (v65)();
        v148 = *v313;
        if ((*v313)(v125, 1, v64) == 1)
        {
          outlined destroy of UTType?(v125, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v67 = Logger.logObject.getter();
          v149 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v67, v149))
          {
            isUniquelyReferenced_nonNull_native = swift_slowAlloc();
            *isUniquelyReferenced_nonNull_native = 0;
            _os_log_impl(&dword_21607C000, v67, v149, "[mergeSuggestionsIntoDraft] no suggestionID decoded", isUniquelyReferenced_nonNull_native, 2u);
            MEMORY[0x21CE94770](isUniquelyReferenced_nonNull_native, -1, -1);
          }

          goto LABEL_94;
        }

        v150 = v309;
        v151 = *v308;
        (*v308)(v309, v125, v64);
        swift_beginAccess();
        v152 = v322;
        if (*(v322 + 16) && (v153 = specialized __RawDictionaryStorage.find<A>(_:)(v150), (v154 & 1) != 0))
        {
          v155 = *(*(v152 + 56) + 8 * v153);
          swift_endAccess();

          v157 = v317;
          v158 = specialized static DBSuggestion.== infix(_:_:)(v156, v317);
          v299 = v155;
          if ((v158 & 1) == 0)
          {
            v177 = v289;
            (*(*v155 + 344))();
            v178 = v177;
            v179 = v148(v177, 1, v64);
            v180 = v307;
            v297 = (v307 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
            if (v179 == 1)
            {
              outlined destroy of UTType?(v178, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              v181 = *v180;
              v125 = v306;
              v182 = v290;
              v183 = v309;
              v144 = v305;
              v184 = v299;
              v65 = v318;
              v181(v290, v309, v318);
              goto LABEL_125;
            }

            v186 = v277;
            v187 = v178;
            v188 = v318;
            v151(v277, v187, v318);
            v189 = v291;
            v293 = *v180;
            v293(v291, v186, v188);
            v190 = (*v275)(v189, 0, 1, v188);
            v191 = v288;
            (v65)(v190);
            v192 = *(v286 + 48);
            v193 = v285;
            outlined init with copy of DateInterval?(v189, v285, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v300 = v192;
            outlined init with copy of DateInterval?(v191, v192 + v193, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v194 = v148(v193, 1, v318);
            v144 = v305;
            if (v194 == 1)
            {
              outlined destroy of UTType?(v191, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              outlined destroy of UTType?(v291, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              v195 = v148(&v300[v193], 1, v318);
              v125 = v306;
              v182 = v290;
              if (v195 != 1)
              {
                goto LABEL_123;
              }

              outlined destroy of UTType?(v193, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              v196 = v281;
            }

            else
            {
              v197 = v282;
              outlined init with copy of DateInterval?(v193, v282, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              v198 = v300;
              v199 = v148(&v300[v193], 1, v318);
              v125 = v306;
              if (v199 == 1)
              {
                outlined destroy of UTType?(v288, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                outlined destroy of UTType?(v291, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                (*v310)(v197, v318);
                v182 = v290;
LABEL_123:
                outlined destroy of UTType?(v193, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
                v200 = *v310;
LABEL_124:
                v65 = v318;
                v200(v277, v318);
                v183 = v309;
                v184 = v299;
                v293(v182, v309, v65);
LABEL_125:
                swift_retain_n();
                v201 = v183;
                v67 = Logger.logObject.getter();
                v202 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v67, v202))
                {
                  LODWORD(v300) = v202;
                  v203 = v65;
                  v65 = swift_slowAlloc();
                  v297 = swift_slowAlloc();
                  v320[0] = v297;
                  *v65 = v271;
                  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                  v204 = dispatch thunk of CustomStringConvertible.description.getter();
                  v206 = v205;
                  v293 = *v310;
                  (v293)(v182, v203);
                  v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v204, v206, v320);

                  *(v65 + 4) = v207;
                  *(v65 + 12) = 2048;
                  v209 = (*(*v184 + 440))(v208);
                  if (v210)
                  {
                    (*(*v184 + 392))(&v321, v209);
                  }

                  else
                  {
                    DBSuggestion.SuggestionType.init(rawValue:)(v209);
                  }

                  if (v321 == 13)
                  {
                    v211 = 0;
                  }

                  else
                  {
                    v211 = v321;
                  }

                  v212 = v294;
                  v213 = v287;
                  v214 = v273;

                  *(v65 + 14) = v211 - 1;

                  *(v65 + 22) = 2080;
                  (*(*v184 + 728))(v215);
                  v216 = *v214;
                  if ((*v214)(v213, 1, v212) == 1)
                  {
                    v217 = v284;
                    static Date.distantPast.getter();
                    v218 = v216(v213, 1, v212);
                    v219 = v212;
                    if (v218 != 1)
                    {
                      outlined destroy of UTType?(v287, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                    }
                  }

                  else
                  {
                    v217 = v284;
                    (*v270)(v284, v213, v212);
                    v219 = v212;
                  }

                  v220 = Date.description.getter();
                  isUniquelyReferenced_nonNull_native = v221;
                  (*v272)(v217, v219);
                  v222 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, isUniquelyReferenced_nonNull_native, v320);

                  *(v65 + 24) = v222;
                  _os_log_impl(&dword_21607C000, v67, v300, "[mergeSuggestionsIntoDraft] suggestion %s has changed, using new one, interfaceType=%ld, startDate=%s", v65, 0x20u);
                  v223 = v297;
                  swift_arrayDestroy();
                  MEMORY[0x21CE94770](v223, -1, -1);
                  MEMORY[0x21CE94770](v65, -1, -1);

                  v64 = v318;
                  (v293)(v309, v318);
                  v125 = v306;
                  a3 = v315;
                }

                else
                {

                  isUniquelyReferenced_nonNull_native = v310;
                  v67 = *v310;
                  (*v310)(v182, v65);
                  (v67)(v201, v65);
                  v64 = v65;
                  a3 = v315;
                }

                goto LABEL_94;
              }

              v224 = v281;
              v225 = v318;
              v151(v281, v198 + v193, v318);
              v196 = v224;
              _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
              LODWORD(v269) = dispatch thunk of static Equatable.== infix(_:_:)();
              v300 = v145;
              v200 = *v310;
              (*v310)(v224, v225);
              outlined destroy of UTType?(v288, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              outlined destroy of UTType?(v291, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              v200(v197, v225);
              v145 = v300;
              outlined destroy of UTType?(v193, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              v182 = v290;
              if ((v269 & 1) == 0)
              {
                goto LABEL_124;
              }
            }

            if (DBSuggestion.copyWithReuseAndNewMetadata(newReference:context:)(v299, v303))
            {
              isUniquelyReferenced_nonNull_native = v309;
              v64 = v318;
              v226 = v293;
              v293(v196, v309, v318);
              swift_beginAccess();

              specialized Dictionary.subscript.setter(v300, v196);
              swift_endAccess();
              v227 = v280;
              v226(v280, isUniquelyReferenced_nonNull_native, v64);
              v228 = Logger.logObject.getter();
              v65 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v228, v65))
              {
                v229 = swift_slowAlloc();
                v269 = v229;
                v293 = swift_slowAlloc();
                v320[0] = v293;
                *v229 = v298;
                _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v230 = dispatch thunk of CustomStringConvertible.description.getter();
                v232 = v231;
                v297 = *v310;
                (v297)(v227, v318);
                v233 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v230, v232, v320);

                isUniquelyReferenced_nonNull_native = v269;
                *(v269 + 4) = v233;
                v234 = v228;
                _os_log_impl(&dword_21607C000, v228, v65, "[mergeSuggestionsIntoDraft] updating suggestion %s", isUniquelyReferenced_nonNull_native, 0xCu);
                v235 = v293;
                __swift_destroy_boxed_opaque_existential_1(v293);
                MEMORY[0x21CE94770](v235, -1, -1);
                MEMORY[0x21CE94770](isUniquelyReferenced_nonNull_native, -1, -1);

                v67 = v297;
                (v297)(v277, v318);
                (v67)(v309, v318);
                v64 = v318;
              }

              else
              {

                v67 = *v310;
                (*v310)(v227, v64);
                (v67)(v277, v64);
                (v67)(v309, v64);
              }

              a3 = v315;
              goto LABEL_94;
            }

            isUniquelyReferenced_nonNull_native = v279;
            v160 = v309;
            v64 = v318;
            v293(v279, v309, v318);
            v236 = Logger.logObject.getter();
            v65 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v236, v65))
            {
              v237 = swift_slowAlloc();
              v300 = v236;
              v238 = isUniquelyReferenced_nonNull_native;
              v239 = v237;
              v297 = swift_slowAlloc();
              v320[0] = v297;
              *v239 = v298;
              _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v240 = dispatch thunk of CustomStringConvertible.description.getter();
              isUniquelyReferenced_nonNull_native = v241;
              v242 = *v310;
              (*v310)(v238, v318);
              v243 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v240, isUniquelyReferenced_nonNull_native, v320);

              *(v239 + 4) = v243;
              v67 = v300;
              _os_log_impl(&dword_21607C000, v300, v65, "[mergeSuggestionsIntoDraft] failed to update suggestion, fallback to new %s", v239, 0xCu);
              v244 = v297;
              __swift_destroy_boxed_opaque_existential_1(v297);
              MEMORY[0x21CE94770](v244, -1, -1);
              MEMORY[0x21CE94770](v239, -1, -1);

              v242(v277, v318);
              v242(v309, v318);
              v64 = v318;
              goto LABEL_113;
            }

            v67 = *v310;
            (*v310)(isUniquelyReferenced_nonNull_native, v64);
            v185 = v277;
            goto LABEL_117;
          }

          swift_beginAccess();

          v159 = swift_isUniquelyReferenced_nonNull_native();
          v321 = v322;
          v160 = v309;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v157, v309, v159);
          v322 = v321;
          swift_endAccess();
          isUniquelyReferenced_nonNull_native = v276;
          (*v307)(v276, v160, v64);
          v67 = Logger.logObject.getter();
          v65 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v67, v65))
          {

            v67 = *v310;
            v185 = isUniquelyReferenced_nonNull_native;
LABEL_117:
            (v67)(v185, v64);
            v176 = v160;
            goto LABEL_112;
          }

          v161 = swift_slowAlloc();
          v320[0] = swift_slowAlloc();
          v162 = v320[0];
          *v161 = v298;
          _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v163 = dispatch thunk of CustomStringConvertible.description.getter();
          v164 = isUniquelyReferenced_nonNull_native;
          isUniquelyReferenced_nonNull_native = v165;
          v300 = *v310;
          (v300)(v164, v318);
          v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, isUniquelyReferenced_nonNull_native, v320);

          *(v161 + 4) = v166;
          _os_log_impl(&dword_21607C000, v67, v65, "[mergeSuggestionsIntoDraft] reusing suggestion %s", v161, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v162);
          v167 = v162;
          v64 = v318;
          MEMORY[0x21CE94770](v167, -1, -1);
          MEMORY[0x21CE94770](v161, -1, -1);

          (v300)(v309, v64);
        }

        else
        {
          swift_endAccess();
          isUniquelyReferenced_nonNull_native = v296;
          (*v307)(v296, v150, v64);
          v67 = Logger.logObject.getter();
          v168 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v67, v168))
          {

            v67 = *v310;
            (*v310)(isUniquelyReferenced_nonNull_native, v64);
            v176 = v150;
LABEL_112:
            (v67)(v176, v64);
            goto LABEL_113;
          }

          v169 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v320[0] = v65;
          *v169 = v298;
          _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v170 = dispatch thunk of CustomStringConvertible.description.getter();
          v171 = isUniquelyReferenced_nonNull_native;
          isUniquelyReferenced_nonNull_native = v172;
          v300 = v145;
          v173 = *v310;
          (*v310)(v171, v318);
          v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, isUniquelyReferenced_nonNull_native, v320);

          *(v169 + 4) = v174;
          _os_log_impl(&dword_21607C000, v67, v168, "[mergeSuggestionsIntoDraft] removing suggestion %s from draft", v169, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v65);
          MEMORY[0x21CE94770](v65, -1, -1);
          v175 = v169;
          v64 = v318;
          MEMORY[0x21CE94770](v175, -1, -1);

          v173(v150, v64);
          v145 = v300;
          v125 = v306;
        }

LABEL_113:
        a3 = v315;
        v144 = v305;
LABEL_94:
        v145 = (v145 + 1);
      }

      while (v316 != v144);
    }

LABEL_159:

    swift_beginAccess();
    v121 = v322;
    v246 = v322 + 64;
    v247 = 1 << *(v322 + 32);
    v248 = -1;
    if (v247 < 64)
    {
      v248 = ~(-1 << v247);
    }

    v249 = v248 & *(v322 + 64);
    v250 = (v247 + 63) >> 6;
    a3 = v314 + 32;
    swift_bridgeObjectRetain_n();
    v65 = 0;
    v251 = MEMORY[0x277D84F90];
    if (v249)
    {
      goto LABEL_166;
    }

    while (1)
    {
      v252 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        swift_once();
LABEL_63:
        v128 = type metadata accessor for Logger();
        __swift_project_value_buffer(v128, static CommonLogger.processing);

        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.default.getter();
        v131 = os_log_type_enabled(v129, v130);
        isUniquelyReferenced_nonNull_native = v311;
        if (v131)
        {
          v132 = swift_slowAlloc();
          *v132 = 134217984;
          if (v65 >> 62)
          {
            v133 = __CocoaSet.count.getter();
          }

          else
          {
            v133 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v132 + 4) = v133;

          _os_log_impl(&dword_21607C000, v129, v130, "[mergeSuggestionsIntoDraft] new suggestions n=%ld, new draft", v132, 0xCu);
          MEMORY[0x21CE94770](v132, -1, -1);
        }

        else
        {
        }

        v67 = v307;
        static Date.now.getter();
        v135 = v278;
        v136 = specialized static DBWriter._createDraftSnapshot(with:context:renderedCount:creationDate:)(v65, v303, 0, v67);
        v278 = v135;
        if (v135)
        {
          (*(v295 + 8))(v67, v294, v136);
          v62 = v278;
          goto LABEL_2;
        }

        (*(v295 + 8))(v67, v294, v136);
        if (v65 >> 62)
        {
          v137 = __CocoaSet.count.getter();
          if (v137)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v137 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v137)
          {
LABEL_73:
            v138 = 0;
            v317 = v65 & 0xC000000000000001;
            v139 = v65 & 0xFFFFFFFFFFFFFF8;
            v64 = MEMORY[0x277D84F90];
            v65 = v137;
            while (1)
            {
              if (v317)
              {
                v140 = MEMORY[0x21CE93180](v138, v310);
                a3 = v138 + 1;
                if (__OFADD__(v138, 1))
                {
                  goto LABEL_153;
                }
              }

              else
              {
                if (v138 >= *(v139 + 16))
                {
                  goto LABEL_154;
                }

                v140 = v310[v138 + 4];

                a3 = v138 + 1;
                if (__OFADD__(v138, 1))
                {
                  goto LABEL_153;
                }
              }

              (*(*v140 + 296))();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 2) + 1, 1, v64);
              }

              v67 = *(v64 + 2);
              v141 = *(v64 + 3);
              if (v67 >= v141 >> 1)
              {
                v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v141 > 1), v67 + 1, 1, v64);
              }

              *(v64 + 2) = v67 + 1;
              (*(v314 + 32))(v64 + ((*(v314 + 80) + 32) & ~*(v314 + 80)) + *(v314 + 72) * v67, isUniquelyReferenced_nonNull_native, v318);
              ++v138;
              if (a3 == v65)
              {
                goto LABEL_189;
              }
            }
          }
        }

        v64 = MEMORY[0x277D84F90];
LABEL_189:
        *v292 = v64;

        return;
      }

      if (v252 >= v250)
      {
        break;
      }

      v249 = *(v246 + 8 * v252);
      ++v65;
      if (v249)
      {
        v65 = v252;
        do
        {
LABEL_166:
          v253 = *(**(v121[7].isa + ((v65 << 9) | (8 * __clz(__rbit64(v249))))) + 296);

          v253(v254);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v251 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v251[2] + 1, 1, v251);
          }

          v256 = v251[2];
          v255 = v251[3];
          if (v256 >= v255 >> 1)
          {
            v251 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v255 > 1), v256 + 1, 1, v251);
          }

          v249 &= v249 - 1;
          v251[2] = v256 + 1;
          (*(v314 + 32))(v251 + ((*(v314 + 80) + 32) & ~*(v314 + 80)) + *(v314 + 72) * v256);
        }

        while (v249);
      }
    }

    v257 = v292;
    *v292 = v251;

    isa = v121[2].isa;
    if (isa)
    {
      isUniquelyReferenced_nonNull_native = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5();
      v126 = specialized Sequence._copySequenceContents(initializing:)(v320, (isUniquelyReferenced_nonNull_native + 32), isa, v121);
      v259 = v320[0];
      v124 = v320[1];
      a3 = v320[2];
      v65 = v320[3];
      v125 = v320[4];

      v258 = outlined consume of [String : DBAssetData].Iterator._Variant(v259);
      if (v126 == isa)
      {
        v257 = v292;
        goto LABEL_176;
      }

      __break(1u);
LABEL_185:
      v142 = __CocoaSet.count.getter();
      continue;
    }

    break;
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
LABEL_176:
  v260 = v274;
  if ((*(*v274 + 304))(v258))
  {
    v261 = v283;
    static Date.now.getter();
    v62 = v278;
    v262 = specialized static DBWriter._createDraftSnapshot(with:context:renderedCount:creationDate:)(isUniquelyReferenced_nonNull_native, v303, 0, v261);
    if (v62)
    {
      (*(v295 + 8))(v261, v294, v262);

      goto LABEL_2;
    }

    (*(v295 + 8))(v261, v294, v262);
  }

  else
  {
    (*(*v260 + 512))(isUniquelyReferenced_nonNull_native);
    v263 = *v257;
    v264 = *(*v260 + 592);

    v265 = v264(v320);
    v267 = v266;
    v268 = swift_isUniquelyReferenced_nonNull_native();
    v319 = *v267;
    *v267 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v263, 1, v268);
    *v267 = v319;
    v265(v320, 0);
  }
}

void static DBWriter._workingSnapshot(generation:context:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  specialized static DBWriter.draftSnapshot(context:)();
  if (!v3 && !v7)
  {
    specialized static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)(a1, a2, 0, 0, a3, v8);
  }
}

uint64_t DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 192) = a4;
  *(v6 + 200) = v5;
  *(v6 + 499) = a5;
  *(v6 + 176) = a2;
  *(v6 + 184) = a3;
  *(v6 + 168) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGSgMd, &_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGSgMR);
  *(v6 + 208) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData17HistoryDescriptorVyAA07DefaultC11TransactionVGMd, &_s9SwiftData17HistoryDescriptorVyAA07DefaultC11TransactionVGMR);
  *(v6 + 216) = v7;
  *(v6 + 224) = *(v7 - 8);
  *(v6 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v6 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v6 + 248) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v6 + 256) = v8;
  *(v6 + 264) = *(v8 - 8);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v6 + 288) = v9;
  *(v6 + 296) = *(v9 - 8);
  *(v6 + 304) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v6 + 312) = v10;
  *(v6 + 320) = *(v10 - 8);
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 352) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 360) = v12;
  *(v6 + 368) = v11;

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v12, v11);
}

uint64_t DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:)(uint64_t a1)
{
  v2 = *(v1 + 200);
  Date.init()();
  v3 = *(v2 + 112);
  *(v1 + 376) = v3;

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v3, 0);
}

{
  v89 = v1;
  v2 = *(v1 + 400);
  if (v2)
  {
    v3 = *(v1 + 392);
    *(v1 + 152) = v3;
    *(v1 + 160) = v2;

    v4 = dispatch thunk of ModelContainer.mainContext.getter();

    v5 = specialized static DBWriter._newSnapshotSequenceNumber(generation:context:)(v3, v2, v4);

    v81 = v3;
    v28 = v3;
    v29 = v2;
    v80 = v5;
    if (v5 == 1)
    {
      v31 = *(v1 + 296);
      v30 = *(v1 + 304);
      v32 = *(v1 + 288);
      UUID.init()();
      v28 = UUID.uuidString.getter();
      v34 = v33;
      (*(v31 + 8))(v30, v32);
      swift_beginAccess();
      *(v1 + 152) = v28;
      *(v1 + 160) = v34;
      v86 = v34;

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v36 = *(v1 + 264);
      v35 = *(v1 + 272);
      v37 = *(v1 + 256);
      v38 = __swift_project_value_buffer(v37, static DBWriter.Log);
      swift_beginAccess();
      (*(v36 + 16))(v35, v38, v37);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();
      v41 = os_log_type_enabled(v39, v40);
      v43 = *(v1 + 264);
      v42 = *(v1 + 272);
      v44 = *(v1 + 256);
      if (v41)
      {
        v83 = *(v1 + 272);
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v88[0] = v46;
        *v45 = 136446722;
        v78 = v44;
        swift_beginAccess();
        v47 = StaticString.description.getter();
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v88);

        *(v45 + 4) = v49;
        *(v45 + 12) = 2082;
        *(v45 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x800000021657FAA0, v88);
        *(v45 + 22) = 2080;
        v29 = v86;

        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v86, v88);

        *(v45 + 24) = v50;
        _os_log_impl(&dword_21607C000, v39, v40, "%{public}s.%{public}s Rotating new snapshot generation: %s", v45, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v46, -1, -1);
        MEMORY[0x21CE94770](v45, -1, -1);

        (*(v43 + 8))(v83, v78);
      }

      else
      {

        (*(v43 + 8))(v42, v44);
        v29 = v86;
      }
    }

    v84 = v28;
    v87 = v29;
    *(v1 + 432) = v29;
    v54 = *(v1 + 328);
    v76 = *(v1 + 376);
    v77 = *(v1 + 336);
    v56 = *(v1 + 312);
    v55 = *(v1 + 320);
    v58 = *(v1 + 240);
    v57 = *(v1 + 248);
    v59 = *(v1 + 176);
    v79 = *(v1 + 184);
    v60 = *(v1 + 168);
    (*(*(v1 + 296) + 56))(v57, 1, 1, *(v1 + 288));

    static Date.now.getter();
    (*(v55 + 16))(v54, v60, v56);
    v61 = OBJC_IVAR____TtC9MomentsUI9DBManager_blobFolderURL;
    v62 = type metadata accessor for URL();
    v63 = *(v62 - 8);
    (*(v63 + 16))(v58, v76 + v61, v62);
    (*(v63 + 56))(v58, 0, 1, v62);
    type metadata accessor for DBSnapshot(0);
    swift_allocObject();

    v64 = DBSnapshot.init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(v57, v84, v87, v80, v77, v54, v59, v79, v58, 0);
    v65 = *(v1 + 208);
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);

    dispatch thunk of ModelContext.insert<A>(_:)();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMd, &_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMR);
    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
    type metadata accessor for DefaultHistoryTransaction();
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DefaultHistoryTransaction and conformance DefaultHistoryTransaction, 255, MEMORY[0x277CDD588], MEMORY[0x277CDD580]);
    HistoryDescriptor.init(predicate:)();
    dispatch thunk of ModelContext.deleteHistory<A>(_:)();
    (*(*(v1 + 224) + 8))(*(v1 + 232), *(v1 + 216));

    v75 = dispatch thunk of ModelContext.hasChanges.getter();
    if (v75)
    {
      dispatch thunk of ModelContext.save()();
      *(v1 + 440) = 0;
    }

    *(v1 + 448) = v64;
    *(v1 + 456) = v87;

    if (v81 == v84 && v87 == v2)
    {

LABEL_20:
      v68 = *(v1 + 499);
      *(v1 + 497) = 6;
      v69 = swift_task_alloc();
      *(v1 + 472) = v69;
      *v69 = v1;
      v69[1] = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);
      v70 = *(v1 + 448);
      v71 = *(v1 + 344);
      v72 = *(v1 + 192);

      return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v70, v72, v68 & 1, v71, (v1 + 497));
    }

    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v67)
    {
      goto LABEL_20;
    }

    v74 = swift_task_alloc();
    *(v1 + 464) = v74;
    *v74 = v1;
    v74[1] = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);
    v52 = v84;
    v53 = v87;
  }

  else
  {
    v7 = *(v1 + 296);
    v6 = *(v1 + 304);
    v8 = *(v1 + 288);
    UUID.init()();
    v9 = UUID.uuidString.getter();
    v11 = v10;
    *(v1 + 408) = v9;
    *(v1 + 416) = v10;
    (*(v7 + 8))(v6, v8);
    v12 = one-time initialization token for Log;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = *(v1 + 280);
    v14 = *(v1 + 256);
    v15 = *(v1 + 264);
    v16 = __swift_project_value_buffer(v14, static DBWriter.Log);
    swift_beginAccess();
    (*(v15 + 16))(v13, v16, v14);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v1 + 280);
    v22 = *(v1 + 256);
    v21 = *(v1 + 264);
    if (v19)
    {
      v85 = *(v1 + 256);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v88[0] = v24;
      *v23 = 136446722;
      swift_beginAccess();
      v25 = StaticString.description.getter();
      v82 = v20;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v88);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x800000021657FAA0, v88);
      *(v23 + 22) = 2080;
      *(v23 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v88);
      _os_log_impl(&dword_21607C000, v17, v18, "%{public}s.%{public}s Rotating new snapshot generation: %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v24, -1, -1);
      MEMORY[0x21CE94770](v23, -1, -1);

      (*(v21 + 8))(v82, v85);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    v51 = swift_task_alloc();
    *(v1 + 424) = v51;
    *v51 = v1;
    v51[1] = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);
    v52 = v9;
    v53 = v11;
  }

  return DBManager.setSnapshotGeneration(_:)(v52, v53);
}

uint64_t DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 376);
  v6 = OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount;
  *(v3 + 384) = OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount;
  v7 = *(v5 + v6);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v5 + v6) = v9;
    v10 = v9 > 0;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v3 + 496) = v10;

    static Published.subscript.setter();
    a1 = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);
    a2 = v5;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:)()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 136));

  *(v0 + 392) = *(v0 + 136);
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v1, v2);
}

{
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v3, v2);
}

{
  v61 = v0;
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);

  *(v0 + 152) = v2;
  *(v0 + 160) = v1;
  v3 = dispatch thunk of ModelContainer.mainContext.getter();

  v4 = specialized static DBWriter._newSnapshotSequenceNumber(generation:context:)(v2, v1, v3);

  v55 = v2;
  v5 = v2;
  v6 = v1;
  v54 = v4;
  if (v4 == 1)
  {
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v9 = *(v0 + 288);
    UUID.init()();
    v5 = UUID.uuidString.getter();
    v11 = v10;
    (*(v8 + 8))(v7, v9);
    swift_beginAccess();
    *(v0 + 152) = v5;
    *(v0 + 160) = v11;
    v58 = v11;

    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 264);
    v12 = *(v0 + 272);
    v14 = *(v0 + 256);
    v15 = __swift_project_value_buffer(v14, static DBWriter.Log);
    swift_beginAccess();
    (*(v13 + 16))(v12, v15, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 256);
    if (v18)
    {
      v56 = *(v0 + 256);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v60[0] = v23;
      *v22 = 136446722;
      v52 = v19;
      swift_beginAccess();
      v24 = StaticString.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v60);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x800000021657FAA0, v60);
      *(v22 + 22) = 2080;
      v6 = v58;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v58, v60);

      *(v22 + 24) = v27;
      _os_log_impl(&dword_21607C000, v16, v17, "%{public}s.%{public}s Rotating new snapshot generation: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v23, -1, -1);
      MEMORY[0x21CE94770](v22, -1, -1);

      (*(v20 + 8))(v52, v56);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      v6 = v11;
    }
  }

  v57 = v5;
  v59 = v6;
  *(v0 + 432) = v6;
  v28 = *(v0 + 328);
  v50 = *(v0 + 376);
  v51 = *(v0 + 336);
  v30 = *(v0 + 312);
  v29 = *(v0 + 320);
  v32 = *(v0 + 240);
  v31 = *(v0 + 248);
  v33 = *(v0 + 176);
  v53 = *(v0 + 184);
  v34 = *(v0 + 168);
  (*(*(v0 + 296) + 56))(v31, 1, 1, *(v0 + 288));

  static Date.now.getter();
  (*(v29 + 16))(v28, v34, v30);
  v35 = OBJC_IVAR____TtC9MomentsUI9DBManager_blobFolderURL;
  v36 = type metadata accessor for URL();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v32, v50 + v35, v36);
  (*(v37 + 56))(v32, 0, 1, v36);
  type metadata accessor for DBSnapshot(0);
  swift_allocObject();

  v38 = DBSnapshot.init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(v31, v57, v59, v54, v51, v28, v33, v53, v32, 0);
  v39 = *(v0 + 208);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);

  dispatch thunk of ModelContext.insert<A>(_:)();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMd, &_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMR);
  (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  type metadata accessor for DefaultHistoryTransaction();
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DefaultHistoryTransaction and conformance DefaultHistoryTransaction, 255, MEMORY[0x277CDD588], MEMORY[0x277CDD580]);
  HistoryDescriptor.init(predicate:)();
  dispatch thunk of ModelContext.deleteHistory<A>(_:)();
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

  v49 = dispatch thunk of ModelContext.hasChanges.getter();
  if (v49)
  {
    dispatch thunk of ModelContext.save()();
    *(v0 + 440) = 0;
  }

  *(v0 + 448) = v38;
  *(v0 + 456) = v59;

  if (v55 == v57 && v1 == v59)
  {

LABEL_12:
    v42 = *(v0 + 499);
    *(v0 + 497) = 6;
    v43 = swift_task_alloc();
    *(v0 + 472) = v43;
    *v43 = v0;
    v43[1] = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);
    v44 = *(v0 + 448);
    v45 = *(v0 + 344);
    v46 = *(v0 + 192);

    return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v44, v46, v42 & 1, v45, (v0 + 497));
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    goto LABEL_12;
  }

  v48 = swift_task_alloc();
  *(v0 + 464) = v48;
  *v48 = v0;
  v48[1] = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);

  return DBManager.setSnapshotGeneration(_:)(v57, v59);
}

{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v2 + v1);
  v4 = v3 == 1;
  v5 = v3 < 1;
  v6 = v3 - 1;
  if (!v5)
  {
    *(v2 + v1) = v6;
    v7 = !v4;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 498) = v7;

    static Published.subscript.setter();
  }

  v8 = *(v0 + 360);
  v9 = *(v0 + 368);

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v8, v9);
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 499);
  *(v1 + 497) = 6;
  v4 = swift_task_alloc();
  *(v1 + 472) = v4;
  *v4 = v2;
  v4[1] = DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);
  v5 = *(v1 + 344);
  v6 = *(v1 + 192);
  v7 = *(v1 + 448);

  return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v7, v6, v3 & 1, v5, (v1 + 497));
}

{
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v3, v2);
}

{
  v1 = *(v0 + 448);
  if (v1)
  {
    v2 = (*(*v1 + 304))();
    v3 = (*(*v1 + 352))();
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = 1;
  }

  *(v0 + 500) = v4 & 1;
  *(v0 + 480) = v3;
  *(v0 + 488) = v2;
  v5 = *(v0 + 376);

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v5, 0);
}

{
  v6.is_nil = *(v0 + 500);
  v6.value = *(v0 + 480);
  v5.value = *(v0 + 488);
  v5.is_nil = *(v0 + 448) == 0;
  DBManager.addSnapshotEnd(sequence:suggestions:)(v5, v6);
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return MEMORY[0x2822009F8](DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v1, v2);
}

{
  v1 = v0[43];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[25];

  v5 = specialized BTask.init(name:operation:)(0xD000000000000043, 0x800000021657FA50, &async function pointer to partial apply for closure #2 in DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:), v4);
  (*(v3 + 8))(v1, v2, v5);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[43];
  v2 = v0[39];
  v3 = v0[40];

  swift_willThrow();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t closure #2 in DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:)()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = closure #2 in DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:);

  return DBManager.cleanup(wait:)(0);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DBWriter.deleteSnapshotsMain(snapshots:)(Swift::OpaquePointer snapshots)
{
  dispatch thunk of ModelContainer.mainContext.getter();
  if (snapshots._rawValue >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((snapshots._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  do
  {
    if ((snapshots._rawValue & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CE93180](v4, snapshots._rawValue);
    }

    else
    {
    }

    ++v4;
    type metadata accessor for DBSnapshot(0);
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
    dispatch thunk of ModelContext.delete<A>(_:)();
  }

  while (v3 != v4);
LABEL_10:
  if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    dispatch thunk of ModelContext.save()();

    if (v1)
    {
      return;
    }
  }

  else
  {
  }

  specialized BTask.init(name:operation:)(0xD000000000000028, 0x800000021657FAE0, &async function pointer to partial apply for closure #2 in DBWriter.deleteSnapshotsMain(snapshots:), v5);
}

uint64_t DBWriter.lookupSuggestionID(_:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v2[10] = v3;
  *v3 = v2;
  v3[1] = DBWriter.lookupSuggestionID(_:);

  return DBWriter.latestSnapshotMain(prefetch:)(0);
}

{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = DBWriter.lookupSuggestionID(_:);
  }

  else
  {
    v6 = DBWriter.lookupSuggestionID(_:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t DBWriter.lookupSuggestionID(_:)()
{
  v1 = *(v0 + 88);

  if (v1)
  {
    v3 = *(v0 + 88);
    *(v0 + 40) = 0;
    v4 = (*(*v3 + 304))(v2);
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static CommonLogger.processing);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_21607C000, v6, v7, "latest snapshot sequence %llu", v8, 0xCu);
      MEMORY[0x21CE94770](v8, -1, -1);
    }

    v9 = *(v0 + 96);
    v10 = *(v0 + 48);

    v11 = dispatch thunk of ModelContainer.mainContext.getter();
    specialized closure #1 in DBWriter.lookupSuggestionID(_:)(v11, v10, v4, (v0 + 40));
    if (v9)
    {
      dispatch thunk of ModelContext.rollback()();
    }

    else
    {
      if (dispatch thunk of ModelContext.hasChanges.getter())
      {
        dispatch thunk of ModelContext.save()();
      }
    }

    swift_beginAccess();
    v16 = *(v0 + 40);
  }

  else
  {
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static CommonLogger.processing);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21607C000, v13, v14, "No latest snapshot found.", v15, 2u);
      MEMORY[0x21CE94770](v15, -1, -1);
    }

    v16 = 0;
  }

  v17 = *(v0 + 8);

  return v17(v16);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized closure #1 in DBWriter.lookupSuggestionID(_:)(uint64_t a1, void *a2, unint64_t a3, NSObject **a4)
{
  v55 = a4;
  v5 = type metadata accessor for UUID();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v53 = a3;
  v54 = a2;
  v59 = a2;
  v60 = a3;
  v15 = type metadata accessor for DBSuggestion(0);
  LOBYTE(a3) = v15;
  v62[5] = v15;
  Predicate.init(_:)();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMR);
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, 255, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  v18 = MEMORY[0x277D84F90];
  FetchDescriptor.init(predicate:sortBy:)();
  v19 = v58;
  v20 = dispatch thunk of ModelContext.fetch<A>(_:)();
  v21 = v19;
  if (v19)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v23 = v20;
  v58 = v7;
  v52 = v14;
  v24 = (v20 >> 62);
  if (v20 >> 62)
  {
LABEL_39:
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = v12;
  v51 = v11;
  v49 = v21;
  v48 = v24;
  if (!v25)
  {
    v7 = (v23 & 0xC000000000000001);
    goto LABEL_13;
  }

  if (v25 >= 1)
  {
    v26 = 0;
    v7 = (v23 & 0xC000000000000001);
    do
    {
      if (v7)
      {
        v24 = MEMORY[0x21CE93180](v26, v23);
      }

      else
      {
        v24 = *(v23 + 8 * v26 + 32);
      }

      ++v26;
      (*(*v24 + 1344))();
    }

    while (v25 != v26);
LABEL_13:
    a3 = 0;
    v62[0] = v18;
    v12 = v23 & 0xFFFFFFFFFFFFFF8;
    while (v25 != a3)
    {
      if (v7)
      {
        v24 = MEMORY[0x21CE93180](a3, v23);
        v11 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (a3 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v24 = *(v23 + 8 * a3 + 32);

        v11 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      v21 = DBSuggestion.asSuggestion.getter();

      ++a3;
      if (v21)
      {
        v24 = v62;
        MEMORY[0x21CE92260](v27);
        if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v18 = v62[0];
        a3 = v11;
      }
    }

    v28 = v55;
    swift_beginAccess();
    *v28 = v18;

    v29 = v52;
    v30 = v56;
    v31 = v54;
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static CommonLogger.notification);
    v33 = v58;
    v34 = v31;
    v35 = v57;
    (*(v30 + 16))(v58, v34, v57);

    v18 = Logger.logObject.getter();
    LOBYTE(a3) = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v18, a3))
    {

      swift_bridgeObjectRelease_n();
      (*(v30 + 8))(v33, v35);
      return (*(v50 + 8))(v29, v51);
    }

    v25 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v61 = v36;
    *v25 = 134218754;
    v54 = v36;
    if (v48)
    {
      v37 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v55;

    *(v25 + 4) = v37;

    LOWORD(v21) = 2048;
    *(v25 + 12) = 2048;
    swift_beginAccess();
    v39 = *v38;
    v12 = v50;
    v11 = v51;
    if (v39)
    {
      v23 = v57;
      v7 = v58;
      if (v39 >> 62)
      {
        goto LABEL_41;
      }

      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    else
    {
      v40 = -1;
      v23 = v57;
      v7 = v58;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_41:
  v40 = __CocoaSet.count.getter();
LABEL_36:
  *(v25 + 14) = v40;
  *(v25 + 22) = 2080;
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v41 = dispatch thunk of CustomStringConvertible.description.getter();
  v42 = v23;
  v44 = v43;
  (*(v56 + 8))(v7, v42);
  v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v44, &v61);

  *(v25 + 24) = v45;
  *(v25 + 32) = v21;
  *(v25 + 34) = v53;
  _os_log_impl(&dword_21607C000, v18, a3, "[NotificationHandlingManager] fetched n=%ld from db, converted=%ld,  suggestionID=%s, latestSnapshot=%llu", v25, 0x2Au);
  v46 = v54;
  __swift_destroy_boxed_opaque_existential_1(v54);
  MEMORY[0x21CE94770](v46, -1, -1);
  MEMORY[0x21CE94770](v25, -1, -1);

  return (*(v12 + 8))(v52, v11);
}

uint64_t closure #2 in closure #1 in DBWriter.lookupSuggestionID(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v33 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR);
  v6 = *(v5 - 8);
  v34 = v5;
  v35 = v6;
  MEMORY[0x28223BE20](v5);
  v32 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAoEy_AGy_AMSayAJ10DBSnapshotCGSgGAtC11ConjunctionVy_AC5EqualVy_AIy_AOGAC5ValueVy_AOGGAC21SequenceContainsWhereVy_AIy_ATGAZy_AGy_AIy_ASGs6UInt64VGA1_y_A9_GGGGSbGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAoEy_AGy_AMSayAJ10DBSnapshotCGSgGAtC11ConjunctionVy_AC5EqualVy_AIy_AOGAC5ValueVy_AOGGAC21SequenceContainsWhereVy_AIy_ATGAZy_AGy_AIy_ASGs6UInt64VGA1_y_A9_GGGGSbGSbGMR);
  v17 = *(v16 - 8);
  v30 = v16;
  v31 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - v18;
  v20 = *a1;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v9 + 8))(v11, v8);
  v36 = v20;
  v37 = v28;
  v38 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC11ConjunctionVy_AC5EqualVy_AIy_AA4UUIDVGAC5ValueVy_AXGGAC21SequenceContainsWhereVy_AIy_APGAVy_AGy_AIy_AOGs6UInt64VGA_y_A7_GGGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC11ConjunctionVy_AC5EqualVy_AIy_AA4UUIDVGAC5ValueVy_AXGGAC21SequenceContainsWhereVy_AIy_APGAVy_AGy_AIy_AOGs6UInt64VGA_y_A7_GGGGSbGMR);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGMR, MEMORY[0x277CC90C0]);
  v21 = MEMORY[0x277CC8F70];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC11ConjunctionVy_AC5EqualVy_AIy_AA4UUIDVGAC5ValueVy_AXGGAC21SequenceContainsWhereVy_AIy_APGAVy_AGy_AIy_AOGs6UInt64VGA_y_A7_GGGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC11ConjunctionVy_AC5EqualVy_AIy_AA4UUIDVGAC5ValueVy_AXGGAC21SequenceContainsWhereVy_AIy_APGAVy_AGy_AIy_AOGs6UInt64VGA_y_A7_GGGGSbGMR, MEMORY[0x277CC8F70]);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v13 + 8))(v15, v12);
  v39 = 0;
  v22 = v32;
  static PredicateExpressions.build_Arg<A>(_:)();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAqGy_AIy_AOSayAL10DBSnapshotCGSgGAvC11ConjunctionVy_AC5EqualVy_AKy_AQGAC5ValueVy_AQGGAC21SequenceContainsWhereVy_AKy_AVGA0_y_AIy_AKy_AUGs6UInt64VGA3_y_A11_GGGGSbGSbGA3_y_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAqGy_AIy_AOSayAL10DBSnapshotCGSgGAvC11ConjunctionVy_AC5EqualVy_AKy_AQGAC5ValueVy_AQGGAC21SequenceContainsWhereVy_AKy_AVGA0_y_AIy_AKy_AUGs6UInt64VGA3_y_A11_GGGGSbGSbGA3_y_SbGGMR);
  v24 = v33;
  v33[3] = v23;
  v24[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v24);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAoEy_AGy_AMSayAJ10DBSnapshotCGSgGAtC11ConjunctionVy_AC5EqualVy_AIy_AOGAC5ValueVy_AOGGAC21SequenceContainsWhereVy_AIy_ATGAZy_AGy_AIy_ASGs6UInt64VGA1_y_A9_GGGGSbGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAoEy_AGy_AMSayAJ10DBSnapshotCGSgGAtC11ConjunctionVy_AC5EqualVy_AIy_AOGAC5ValueVy_AOGGAC21SequenceContainsWhereVy_AIy_ATGAZy_AGy_AIy_ASGs6UInt64VGA1_y_A9_GGGGSbGSbGMR, v21);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR, MEMORY[0x277CC9080]);
  v25 = v30;
  v26 = v34;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v35 + 8))(v22, v26);
  return (*(v31 + 8))(v19, v25);
}

uint64_t closure #1 in closure #2 in closure #1 in DBWriter.lookupSuggestionID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  v19 = a1;
  v20 = v16;
  v21 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AKGGAC21SequenceContainsWhereVy_AIy_Say9MomentsUI10DBSnapshotCGGAGy_AC7KeyPathVy_AIy_AUGs6UInt64VGANy_A0_GGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AKGGAC21SequenceContainsWhereVy_AIy_Say9MomentsUI10DBSnapshotCGGAGy_AC7KeyPathVy_AIy_AUGs6UInt64VGANy_A0_GGGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI10DBSnapshotCGMd, &_sSay9MomentsUI10DBSnapshotCGMR);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>> and conformance PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AKGGAC21SequenceContainsWhereVy_AIy_Say9MomentsUI10DBSnapshotCGGAGy_AC7KeyPathVy_AIy_AUGs6UInt64VGANy_A0_GGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AKGGAC21SequenceContainsWhereVy_AIy_Say9MomentsUI10DBSnapshotCGGAGy_AC7KeyPathVy_AIy_AUGs6UInt64VGANy_A0_GGGGMR, MEMORY[0x277CC8F18]);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  return (*(v11 + 8))(v13, v10);
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in DBWriter.lookupSuggestionID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a1;
  v36 = a4;
  v29[1] = a2;
  v29[2] = a3;
  v40 = a5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMR);
  v37 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMd, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMR);
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  MEMORY[0x28223BE20](v6);
  v34 = v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_AA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4UUIDVGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AIGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AIGGMR);
  v18 = *(v17 - 8);
  v31 = v17;
  v32 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = v29 - v19;
  v21 = MEMORY[0x277CC90F8];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<UUID> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4UUIDVGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  type metadata accessor for UUID();
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMR, MEMORY[0x277CC9080]);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<[DBSnapshot]> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMR, v21);
  v22 = v30;
  v23 = v33;
  static PredicateExpressions.build_Arg<A>(_:)();
  v41 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMR);
  v24 = MEMORY[0x277CC9070];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMR, MEMORY[0x277CC9070]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DBSnapshot] and conformance [A], &_sSay9MomentsUI10DBSnapshotCGMd, &_sSay9MomentsUI10DBSnapshotCGMR, MEMORY[0x277D83970]);
  v25 = v34;
  static PredicateExpressions.build_contains<A, B>(_:where:)();
  (*(v37 + 8))(v22, v23);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AIGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AIGGMR, v24);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance PredicateExpressions.SequenceContainsWhere<A, B>, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMd, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMR, MEMORY[0x277CC9010]);
  v26 = v31;
  v27 = v38;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v39 + 8))(v25, v27);
  return (*(v32 + 8))(v20, v26);
}

uint64_t DBWriter.fetchEligibleNotificationSuggestions(after:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);
  v2[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMR);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMR);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v2[5] = 0;
  v5 = swift_task_alloc();
  v2[22] = v5;
  *v5 = v2;
  v5[1] = DBWriter.fetchEligibleNotificationSuggestions(after:);

  return DBWriter.latestSnapshotMain(prefetch:)(0);
}

{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = DBWriter.fetchEligibleNotificationSuggestions(after:);
  }

  else
  {
    v6 = DBWriter.fetchEligibleNotificationSuggestions(after:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t DBWriter.fetchEligibleNotificationSuggestions(after:)()
{
  v1 = v0[23];

  if (v1)
  {
    v3 = (*(*v0[23] + 304))(v2);
    if (one-time initialization token for processing != -1)
    {
LABEL_53:
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static CommonLogger.processing);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v3;
      _os_log_impl(&dword_21607C000, v4, v5, "latest snapshot sequence %llu", v6, 0xCu);
      MEMORY[0x21CE94770](v6, -1, -1);
    }

    v49 = v0[24];
    v7 = v0[18];
    v8 = v0[19];
    v9 = v0[17];
    v11 = v0[14];
    v10 = v0[15];
    v46 = v0[13];
    v47 = v0[12];
    v12 = v0[9];
    v45 = v0[16];
    v13 = v0[7];

    *(swift_task_alloc() + 16) = v13;
    v14 = type metadata accessor for DBSuggestion(0);
    v0[6] = v14;
    Predicate.init(_:)();
    *(swift_task_alloc() + 16) = &outlined read-only object #0 of DBWriter.fetchEligibleNotificationSuggestions(after:);
    Predicate.init(_:)();
    v43 = v3;
    *(swift_task_alloc() + 16) = v3;
    Predicate.init(_:)();
    *(swift_task_alloc() + 16) = 202;
    Predicate.init(_:)();
    *(swift_task_alloc() + 16) = &outlined read-only object #1 of DBWriter.fetchEligibleNotificationSuggestions(after:);
    Predicate.init(_:)();
    dispatch thunk of ModelContainer.mainContext.getter();
    v15 = swift_task_alloc();
    v15[2] = v8;
    v15[3] = v7;
    v15[4] = v9;
    v15[5] = v45;
    v15[6] = v10;
    Predicate.init(_:)();
    (*(v11 + 56))(v12, 0, 1, v46);
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, 255, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
    v16 = MEMORY[0x277D84F90];
    v17 = v47;
    FetchDescriptor.init(predicate:sortBy:)();
    v18 = v49;
    v19 = dispatch thunk of ModelContext.fetch<A>(_:)();
    if (v49)
    {
      (*(v0[11] + 8))(v0[12], v0[10]);
      dispatch thunk of ModelContext.rollback()();

      v14 = 0;
LABEL_47:

      v35 = v0[18];
      v34 = v0[19];
      v37 = v0[16];
      v36 = v0[17];
      v38 = v0[15];
      v39 = v0[13];
      v40 = *(v0[14] + 8);

      v40(v38, v39);
      v40(v37, v39);
      v40(v36, v39);
      v40(v35, v39);
      v40(v34, v39);

      goto LABEL_48;
    }

    v24 = v19;
    v50 = v16;
    v3 = v19 >> 62;
    if (v19 >> 62)
    {
      v25 = __CocoaSet.count.getter();
    }

    else
    {
      v25 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v3;
    if (v25)
    {
      if (v25 < 1)
      {
        __break(1u);
LABEL_56:
        v33 = __CocoaSet.count.getter();
LABEL_43:
        *(v17 + 14) = v33;
        *(v17 + 22) = 2048;
        *(v17 + 24) = v43;
        _os_log_impl(&dword_21607C000, v16, v18, "[NotificationHandlingManager] fetched n=%ld from db, converted=%ld, latestSnapshot=%llu", v17, 0x20u);
        MEMORY[0x21CE94770](v17, -1, -1);
LABEL_44:

        (*(v0[11] + 8))(v0[12], v0[10]);
        if (dispatch thunk of ModelContext.hasChanges.getter())
        {
          dispatch thunk of ModelContext.save()();
        }

        goto LABEL_47;
      }

      v26 = 0;
      v27 = v24 & 0xC000000000000001;
      do
      {
        if (v27)
        {
          v28 = MEMORY[0x21CE93180](v26, v24);
        }

        else
        {
          v28 = *(v24 + 8 * v26 + 32);
        }

        ++v26;
        (*(*v28 + 1344))();
      }

      while (v25 != v26);
    }

    else
    {
      v27 = v24 & 0xC000000000000001;
    }

    v29 = 0;
    v51 = v16;
    while (v25 != v29)
    {
      if (v27)
      {
        MEMORY[0x21CE93180](v29, v24);
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v29 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

      v3 = DBSuggestion.asSuggestion.getter();

      ++v29;
      if (v3)
      {
        MEMORY[0x21CE92260](v31);
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v50 = v51;
        v29 = v30;
      }
    }

    swift_beginAccess();
    v0[5] = v50;
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v44, static CommonLogger.notification);

    v16 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v16, v18))
    {
      swift_bridgeObjectRelease_n();
      v14 = v50;
      goto LABEL_44;
    }

    v17 = swift_slowAlloc();
    *v17 = 134218496;
    if (v48)
    {
      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 4) = v32;

    *(v17 + 12) = 2048;
    v14 = v50;
    if (!(v50 >> 62))
    {
      v33 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_43;
    }

    goto LABEL_56;
  }

  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static CommonLogger.processing);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_21607C000, v21, v22, "No latest snapshot found.", v23, 2u);
    MEMORY[0x21CE94770](v23, -1, -1);
  }

  v14 = 0;
LABEL_48:

  v41 = v0[1];

  return v41(v14);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #7 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a2;
  v27 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR);
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAoC10ComparisonVy_AIy_AOGAC5ValueVy_AOGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAoC10ComparisonVy_AIy_AOGAC5ValueVy_AOGGSbGMR);
  v16 = *(v15 - 8);
  v25 = v15;
  v26 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  v30 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10ComparisonVy_AC8VariableVy_AA4DateVGAC5ValueVy_AIGGMd, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC8VariableVy_AA4DateVGAC5ValueVy_AIGGMR);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>> and conformance PredicateExpressions.Comparison<A, B>, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC8VariableVy_AA4DateVGAC5ValueVy_AIGGMd, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC8VariableVy_AA4DateVGAC5ValueVy_AIGGMR, MEMORY[0x277CC8EB0]);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v12 + 8))(v14, v11);
  v31 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAqC10ComparisonVy_AKy_AQGAC5ValueVy_AQGGSbGAXy_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAqC10ComparisonVy_AKy_AQGAC5ValueVy_AQGGSbGAXy_SbGGMR);
  v20 = v27;
  v27[3] = v19;
  v20[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v20);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAoC10ComparisonVy_AIy_AOGAC5ValueVy_AOGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAoC10ComparisonVy_AIy_AOGAC5ValueVy_AOGGSbGMR, MEMORY[0x277CC8F70]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR, MEMORY[0x277CC9080]);
  v21 = v25;
  v22 = v28;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v29 + 8))(v6, v22);
  return (*(v26 + 8))(v18, v21);
}

uint64_t closure #1 in closure #7 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a2;
  v18 = a3;
  v16 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMR);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_AA4DateVGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4DateVGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Date> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4DateVGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4DateVGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  type metadata accessor for Date();
  static PredicateExpressions.build_Arg<A>(_:)();
  v13 = v16;
  (*(v3 + 104))(v5, *MEMORY[0x277CC8FC0], v16);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Date> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMR, MEMORY[0x277CC9080]);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v3 + 8))(v5, v13);
  (*(v17 + 8))(v8, v6);
  return (*(v10 + 8))(v12, v9);
}

uint64_t closure #8 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v26 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v25 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAIy_SiGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAIy_SiGGSbGMR);
  v14 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v16 = &v23 - v15;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySiGGAC8VariableVy_SiGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySiGGAC8VariableVy_SiGGMR);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>> and conformance PredicateExpressions.SequenceContains<A, B>, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySiGGAC8VariableVy_SiGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySiGGAC8VariableVy_SiGGMR, MEMORY[0x277CC8FA0]);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v11 + 8))(v13, v10);
  v30 = 0;
  v17 = v25;
  static PredicateExpressions.build_Arg<A>(_:)();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAKy_SiGGSbGAUy_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAKy_SiGGSbGAUy_SbGGMR);
  v19 = v26;
  v26[3] = v18;
  v19[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v19);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAIy_SiGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAIy_SiGGSbGMR, MEMORY[0x277CC8F70]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR, MEMORY[0x277CC9080]);
  v20 = v24;
  v21 = v27;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v28 + 8))(v17, v21);
  return (*(v14 + 8))(v16, v20);
}

uint64_t closure #1 in closure #8 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SiGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SaySiGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SaySiGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  v13[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Int> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<[Int]> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SaySiGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SaySiGGMR, MEMORY[0x277CC9080]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd, &_sSaySiGMR, MEMORY[0x277D83970]);
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #9 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a2;
  v27 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR);
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGs6UInt64VGAC5ValueVy_AZGGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGs6UInt64VGAC5ValueVy_AZGGGSbGMR);
  v16 = *(v15 - 8);
  v25 = v15;
  v26 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  v30 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMd, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI10DBSnapshotCGMd, &_sSay9MomentsUI10DBSnapshotCGMR);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance PredicateExpressions.SequenceContainsWhere<A, B>, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMd, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMR, MEMORY[0x277CC9010]);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v12 + 8))(v14, v11);
  v31 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAL10DBSnapshotCGSgGArC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGs6UInt64VGAC5ValueVy_A0_GGGSbGA3_y_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAL10DBSnapshotCGSgGArC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGs6UInt64VGAC5ValueVy_A0_GGGSbGA3_y_SbGGMR);
  v20 = v27;
  v27[3] = v19;
  v20[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v20);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGs6UInt64VGAC5ValueVy_AZGGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGs6UInt64VGAC5ValueVy_AZGGGSbGMR, MEMORY[0x277CC8F70]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR, MEMORY[0x277CC9080]);
  v21 = v25;
  v22 = v28;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v29 + 8))(v6, v22);
  return (*(v26 + 8))(v18, v21);
}

uint64_t closure #1 in closure #9 in DBWriter.fetchEligibleNotificationSuggestions(after:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<[DBSnapshot]> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  v9 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMR);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMR, MEMORY[0x277CC9070]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DBSnapshot] and conformance [A], &_sSay9MomentsUI10DBSnapshotCGMd, &_sSay9MomentsUI10DBSnapshotCGMR, MEMORY[0x277D83970]);
  static PredicateExpressions.build_contains<A, B>(_:where:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in DBWriter.lookupSuggestionID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a1;
  v17 = a2;
  v19 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMR);
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  v20 = v17;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UInt64> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMR, MEMORY[0x277CC9080]);
  v14 = v18;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v14);
  return (*(v11 + 8))(v13, v10);
}

uint64_t closure #10 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v26 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v25 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AIy_SiGAC5ValueVy_SiGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AIy_SiGAC5ValueVy_SiGGSbGMR);
  v14 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v16 = &v23 - v15;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8NotEqualVy_AC8VariableVy_SiGAC5ValueVy_SiGGMd, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC8VariableVy_SiGAC5ValueVy_SiGGMR);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>> and conformance PredicateExpressions.NotEqual<A, B>, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC8VariableVy_SiGAC5ValueVy_SiGGMd, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC8VariableVy_SiGAC5ValueVy_SiGGMR, MEMORY[0x277CC90E0]);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v11 + 8))(v13, v10);
  v30 = 0;
  v17 = v25;
  static PredicateExpressions.build_Arg<A>(_:)();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AKy_SiGAC5ValueVy_SiGGSbGAVy_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AKy_SiGAC5ValueVy_SiGGSbGAVy_SbGGMR);
  v19 = v26;
  v26[3] = v18;
  v19[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v19);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AIy_SiGAC5ValueVy_SiGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AIy_SiGAC5ValueVy_SiGGSbGMR, MEMORY[0x277CC8F70]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR, MEMORY[0x277CC9080]);
  v20 = v24;
  v21 = v27;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v28 + 8))(v17, v21);
  return (*(v14 + 8))(v16, v20);
}

uint64_t closure #1 in closure #10 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SiGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SiGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Int> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  v13[1] = a2;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Int> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SiGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiGMR, MEMORY[0x277CC9080]);
  static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #11 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v26 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v25 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAIy_SuGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAIy_SuGGSbGMR);
  v14 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v16 = &v23 - v15;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySuGGAC8VariableVy_SuGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySuGGAC8VariableVy_SuGGMR);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>> and conformance PredicateExpressions.SequenceContains<A, B>, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySuGGAC8VariableVy_SuGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySuGGAC8VariableVy_SuGGMR, MEMORY[0x277CC8FA0]);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v11 + 8))(v13, v10);
  v30 = 0;
  v17 = v25;
  static PredicateExpressions.build_Arg<A>(_:)();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAKy_SuGGSbGAUy_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAKy_SuGGSbGAUy_SbGGMR);
  v19 = v26;
  v26[3] = v18;
  v19[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v19);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAIy_SuGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAIy_SuGGSbGMR, MEMORY[0x277CC8F70]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMR, MEMORY[0x277CC9080]);
  v20 = v24;
  v21 = v27;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v28 + 8))(v17, v21);
  return (*(v14 + 8))(v16, v20);
}

uint64_t closure #1 in closure #11 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SuGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SuGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SaySuGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SaySuGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  v13[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd, &_sSaySuGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<UInt> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SuGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SuGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<[UInt]> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SaySuGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SaySuGGMR, MEMORY[0x277CC9080]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [UInt] and conformance [A], &_sSaySuGMd, &_sSaySuGMR, MEMORY[0x277D83970]);
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #2 in closure #6 in DBWriter.fetchEligibleNotificationSuggestions(after:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v70 = a6;
  v69 = a5;
  v74 = a3;
  v75 = a4;
  v71 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ALG_QPGMd, &_s10Foundation20PredicateExpressionsO0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ALG_QPGMR);
  v17 = *(v16 - 8);
  v83 = v16;
  v84 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v61 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v60 = &v55 - v20;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGMR);
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v76 = &v55 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGMR);
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v55 - v22;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGMR);
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v77 = &v55 - v23;
  v85 = *a1;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  v24 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  v92 = v8;
  v93 = v11;
  v25 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGMR, MEMORY[0x277CC9080]);
  v91 = v24;
  v72 = v24;
  v26 = v15;
  v78 = v12;
  v80 = v25;
  static PredicateExpressions.build_evaluate<A, B>(_:_:)();
  v27 = *(v13 + 8);
  v27(v15, v12);
  v28 = v27;
  v82 = v27;
  v79 = v13 + 8;
  v29 = *(v9 + 8);
  v30 = v8;
  v29(v11, v8);
  v81 = v29;
  v73 = v9 + 8;
  static PredicateExpressions.build_Arg<A>(_:)();
  static PredicateExpressions.build_Arg<A>(_:)();
  v90 = v11;
  v31 = v61;
  v32 = v78;
  static PredicateExpressions.build_evaluate<A, B>(_:_:)();
  v28(v26, v32);
  v29(v11, v30);
  v74 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>, &_s10Foundation20PredicateExpressionsO0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ALG_QPGMd, &_s10Foundation20PredicateExpressionsO0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ALG_QPGMR, MEMORY[0x277CC8E98]);
  v33 = v60;
  v34 = v83;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v35 = *(v84 + 8);
  v84 += 8;
  v35(v31, v34);
  v35(v33, v34);
  v59 = v35;
  static PredicateExpressions.build_Arg<A>(_:)();
  v58 = v30;
  static PredicateExpressions.build_Arg<A>(_:)();
  v89 = v11;
  v57 = v11;
  v56 = v26;
  v36 = v78;
  static PredicateExpressions.build_evaluate<A, B>(_:_:)();
  v82(v26, v36);
  v81(v11, v30);
  v75 = MEMORY[0x277CC8F18];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGMR, MEMORY[0x277CC8F18]);
  v37 = v62;
  v38 = v76;
  v39 = v33;
  v40 = v63;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v35(v33, v34);
  (*(v64 + 8))(v38, v40);
  v41 = v56;
  static PredicateExpressions.build_Arg<A>(_:)();
  v42 = v57;
  v43 = v58;
  static PredicateExpressions.build_Arg<A>(_:)();
  v88 = v42;
  v44 = v78;
  static PredicateExpressions.build_evaluate<A, B>(_:_:)();
  v82(v41, v44);
  v81(v42, v43);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGMR, v75);
  v45 = v37;
  v46 = v65;
  v47 = v83;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v48 = v59;
  v59(v39, v47);
  (*(v66 + 8))(v45, v46);
  static PredicateExpressions.build_Arg<A>(_:)();
  static PredicateExpressions.build_Arg<A>(_:)();
  v87 = v42;
  static PredicateExpressions.build_evaluate<A, B>(_:_:)();
  v82(v41, v44);
  v81(v42, v43);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGATGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGATGMR);
  v50 = v71;
  v71[3] = v49;
  v50[4] = lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v50);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGMR, v75);
  v51 = v77;
  v52 = v67;
  v53 = v83;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v48(v39, v53);
  return (*(v68 + 8))(v51, v52);
}

uint64_t DBWriter.latestSnapshotSequence()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x2822009F8](DBWriter.latestSnapshotSequence(), v0, 0);
}

{
  v1 = v0[5];
  swift_beginAccess();
  v0[6] = static CloudManager.systemIdiom;
  v2 = *(v1 + 112);
  v0[7] = v2;

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotSequence(), v2, 0);
}

{
  v9 = v0;
  v1 = *(v0 + 48) == 0;
  type metadata accessor for ModelContext();
  swift_allocObject();

  v2 = ModelContext.init(_:)();
  v3 = DBManager.getSnapshotGeneration()();
  specialized static DBWriter._latestSnapshotSequence(generation:context:nilFallback:loadedSuggestionCount:)(v3._countAndFlagsBits, v3._object, v2, v1, 1, v6);
  *(v0 + 64) = v7;
  *(v0 + 80) = v8;

  if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    dispatch thunk of ModelContext.save()();
  }

  v4 = *(v0 + 56);

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotSequence(), v4, 0);
}

{
  DBManager.setLatestLocalSnapshotSequence(_:_:)(*(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t DBWriter.latestSnapshotSequenceWithGeneration()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](DBWriter.latestSnapshotSequenceWithGeneration(), v1, 0);
}

uint64_t DBWriter.latestSnapshotSequenceWithGeneration()()
{
  v1 = v0[6];
  swift_beginAccess();
  v0[7] = static CloudManager.systemIdiom;
  v2 = *(v1 + 112);
  v0[8] = v2;

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotSequenceWithGeneration(), v2, 0);
}

{
  v16 = v0;
  v1 = *(v0 + 56) == 0;
  type metadata accessor for ModelContext();
  swift_allocObject();

  v2 = ModelContext.init(_:)();
  v3 = DBManager.getSnapshotGeneration()();
  specialized static DBWriter._latestSnapshotSequence(generation:context:nilFallback:loadedSuggestionCount:)(v3._countAndFlagsBits, v3._object, v2, v1, 1, &v11);
  v4 = v11;
  v5 = v12;
  *(v0 + 72) = v12;
  v7 = v13;
  v6 = v14;
  v8 = v15;

  if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    dispatch thunk of ModelContext.save()();
    *(v0 + 80) = 0;
  }

  *(v0 + 104) = v4;
  *(v0 + 112) = v5;
  *(v0 + 120) = v8;
  *(v0 + 88) = v6;
  *(v0 + 96) = v7;
  v9 = *(v0 + 64);

  return MEMORY[0x2822009F8](DBWriter.latestSnapshotSequenceWithGeneration(), v9, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v5 = *(v0 + 88);
  v6 = *(v0 + 104);
  v8.value = v5.i64[0];
  v8.is_nil = v1;
  DBManager.setLatestLocalSnapshotSequence(_:_:)(v5.u64[1], v8);
  *v2 = v6;
  *(v2 + 16) = vextq_s8(v5, v5, 8uLL);
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 192) = v14;
  *(v9 + 200) = v8;
  *(v9 + 342) = v15;
  *(v9 + 341) = v13;
  *(v9 + 176) = a7;
  *(v9 + 184) = a8;
  *(v9 + 160) = a4;
  *(v9 + 168) = a6;
  *(v9 + 340) = a5;
  *(v9 + 144) = a2;
  *(v9 + 152) = a3;
  *(v9 + 136) = a1;
  *(v9 + 208) = *v8;
  v10 = type metadata accessor for Date();
  *(v9 + 216) = v10;
  *(v9 + 224) = *(v10 - 8);
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 343) = *v16;

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v8, 0);
}

uint64_t DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)()
{
  v1 = *(v0 + 340);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd, &_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMR);
  v4 = swift_allocObject();
  v5 = v4;
  *(v4 + 16) = xmmword_21659A8A0;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D83838];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = v7;
  if (v2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 7104878;
  }

  if (v2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  if (v1)
  {
    *(v4 + 96) = v6;
    *(v4 + 104) = v7;
    *(v4 + 72) = 7104878;
    *(v4 + 80) = 0xE300000000000000;
  }

  else
  {
    v10 = *(v0 + 160);
    v11 = MEMORY[0x277D84D80];
    *(v0 + 40) = MEMORY[0x277D84D38];
    *(v0 + 48) = v11;
    *(v0 + 16) = v10;
    outlined init with take of MusicPlaybackCoordinatorDelegate((v0 + 16), v4 + 72);
  }

  v12 = *(v0 + 216);
  v13 = *(v0 + 224);
  v14 = *(v0 + 168);
  v15 = *(v0 + 176);
  v5[17] = v12;
  v5[18] = _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 14);
  (*(v13 + 16))(boxed_opaque_existential_1, v14, v12);
  if (v15 >> 62)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = *(v0 + 184);
  v19 = MEMORY[0x277D83B88];
  v20 = MEMORY[0x277D83BF8];
  v5[22] = MEMORY[0x277D83B88];
  v5[23] = v20;
  v5[19] = v17;
  if (v18 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = *(v0 + 342);
  v5[27] = v19;
  v5[28] = v20;
  v5[24] = v21;
  if (v22)
  {
    v5[32] = v19;
    v5[33] = v20;
    v5[29] = -1;
  }

  else
  {
    v23 = *(v0 + 192);
    v24 = MEMORY[0x277D83A60];
    *(v0 + 80) = MEMORY[0x277D839F8];
    *(v0 + 88) = v24;
    *(v0 + 56) = v23;
    outlined init with take of MusicPlaybackCoordinatorDelegate((v0 + 56), (v5 + 29));
  }

  v26 = *(v0 + 200);
  v25 = *(v0 + 208);
  *(v0 + 336) = *(v0 + 343);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventV6ReasonOSgMd, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventV6ReasonOSgMR);
  v27 = String.init<A>(describing:)();
  v5[37] = v6;
  v5[38] = v7;
  v5[34] = v27;
  v5[35] = v28;
  static CloudLog.LogBeginInfo(_:_:)(v5, "addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)", 103, 2, v25, &protocol witness table for DBWriter);

  Date.init()();
  v29 = *(v26 + 112);
  *(v0 + 240) = v29;

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v29, 0);
}

{
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  v1 = *(v0 + 341);
  v2 = *(v0 + 160);
  v10 = *(v0 + 168);
  v3 = *(v0 + 340);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  *(v0 + 104) = 0;
  *(v0 + 96) = 0;
  *(v0 + 112) = v4;
  *(v0 + 120) = v5;
  *(v0 + 128) = 0;
  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  *(v7 + 16) = *(v0 + 176);
  *(v7 + 32) = v0 + 96;
  *(v7 + 40) = v2;
  *(v7 + 48) = v3 & 1;
  *(v7 + 56) = v0 + 112;
  *(v7 + 64) = v1;
  *(v7 + 72) = v0 + 128;
  *(v7 + 80) = v6;
  *(v7 + 88) = v10;
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;

  v8 = swift_task_alloc();
  *(v0 + 264) = v8;
  *v8 = v0;
  v8[1] = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);

  return DBManager.beginMultiThreadedAsyncWrite(_:)(&async function pointer to partial apply for closure #1 in DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v7);
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  *(v0 + 280) = v1;
  if (!v1 || (v3 = *(v0 + 104)) != 0 && (*(v0 + 96) == v2 ? (v4 = v3 == v1) : (v4 = 0), v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v5 = *(v0 + 343);
    v6 = *(v0 + 342);
    v7 = *(v0 + 128);
    *(v0 + 296) = v7;
    *(v0 + 339) = v5;
    v8 = swift_task_alloc();
    *(v0 + 304) = v8;
    *v8 = v0;
    v8[1] = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);
    v9 = *(v0 + 232);
    v10 = *(v0 + 192);

    return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v7, v10, v6 & 1, v9, (v0 + 339));
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v12[1] = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);

    return DBManager.setSnapshotGeneration(_:)(v2, v1);
  }
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 343);
  v4 = *(v1 + 342);
  v5 = *(v1 + 128);
  *(v1 + 296) = v5;
  *(v1 + 339) = v3;
  v6 = swift_task_alloc();
  *(v1 + 304) = v6;
  *v6 = v2;
  v6[1] = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);
  v7 = *(v1 + 232);
  v8 = *(v1 + 192);

  return specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(v5, v8, v4 & 1, v7, (v1 + 339));
}

{
  v1 = *(*v0 + 200);

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v1, 0);
}

{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = (*(*v1 + 304))();
    v3 = (*(*v1 + 352))();
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = 1;
  }

  *(v0 + 344) = v4 & 1;
  *(v0 + 312) = v3;
  *(v0 + 320) = v2;
  v5 = *(v0 + 240);

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v5, 0);
}

{
  v5.is_nil = *(v0 + 344);
  v5.value = *(v0 + 312);
  v4.value = *(v0 + 320);
  v4.is_nil = *(v0 + 296) == 0;
  DBManager.addSnapshotEnd(sequence:suggestions:)(v4, v5);
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);

  return DBManager.cleanup(wait:)(1);
}

{
  v1 = *(*v0 + 200);

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v1, 0);
}

{
  v1 = v0[26];
  (*(v0[28] + 8))(v0[29], v0[27]);

  static CloudLog.LogEndInfo(_:)("addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)", 103, 2, v1, &protocol witness table for DBWriter);

  v2 = v0[1];

  return v2();
}

{
  v1 = *(v0 + 240);

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v1, 0);
}

{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v2 + v1);
  v4 = v3 == 1;
  v5 = v3 < 1;
  v6 = v3 - 1;
  if (!v5)
  {
    *(v2 + v1) = v6;
    v7 = !v4;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 338) = v7;

    static Published.subscript.setter();
  }

  v8 = *(v0 + 200);

  return MEMORY[0x2822009F8](DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v8, 0);
}

uint64_t DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 240);
  v6 = OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount;
  *(v3 + 248) = OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount;
  v7 = *(v5 + v6);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v3 + 200);
    *(v5 + v6) = v9;
    v11 = v9 > 0;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v3 + 337) = v11;

    static Published.subscript.setter();
    a1 = DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:);
    a2 = v10;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)(uint64_t a1)
{
  v3 = v1[28];
  v2 = v1[29];
  v5 = v1[26];
  v4 = v1[27];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);

  static CloudLog.LogEndInfo(_:)("addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)", 103, 2, v5, &protocol witness table for DBWriter);

  v6 = v1[1];

  return v6();
}

uint64_t closure #1 in DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 176) = v21;
  *(v8 + 184) = v22;
  *(v8 + 160) = v19;
  *(v8 + 168) = v20;
  *(v8 + 417) = v18;
  *(v8 + 416) = a8;
  *(v8 + 144) = a7;
  *(v8 + 152) = v17;
  *(v8 + 128) = a5;
  *(v8 + 136) = a6;
  *(v8 + 112) = a3;
  *(v8 + 120) = a4;
  *(v8 + 96) = a1;
  *(v8 + 104) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGSgMd, &_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGSgMR);
  *(v8 + 192) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData17HistoryDescriptorVyAA07DefaultC11TransactionVGMd, &_s9SwiftData17HistoryDescriptorVyAA07DefaultC11TransactionVGMR);
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v8 + 224) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);
  *(v8 + 280) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMR);
  *(v8 + 288) = v11;
  *(v8 + 296) = *(v11 - 8);
  *(v8 + 304) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMR);
  *(v8 + 312) = v12;
  *(v8 + 320) = *(v12 - 8);
  *(v8 + 328) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v8 + 336) = v13;
  *(v8 + 344) = *(v13 - 8);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v8 + 376) = v14;
  *(v8 + 384) = *(v14 - 8);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:), v22, 0);
}

uint64_t closure #1 in DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)()
{
  v174 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = specialized static DBWriter._mapSuggestions(_:context:)(*(v0 + 120), v4);
  v8 = specialized static DBWriter._mapSuggestions(_:context:)(v2, v4);
  *v3 = v6;
  v3[1] = v5;

  v162 = v7;
  if (v1)
  {
    v9 = specialized static DBWriter._newSnapshotSequenceNumber(generation:context:)(*(v0 + 96), *(v0 + 104), *(v0 + 112));
    if (v9 == 1)
    {
      v94 = *(v0 + 152);
      v95 = v94[1];
      if (!v95 || ((v95 & 0x2000000000000000) != 0 ? (v96 = HIBYTE(v95) & 0xF) : (v96 = *v94 & 0xFFFFFFFFFFFFLL), !v96))
      {
        v121 = *(v0 + 408);
        v122 = *(v0 + 376);
        v123 = *(v0 + 384);
        UUID.init()();
        v55 = UUID.uuidString.getter();
        v54 = v124;
        (*(v123 + 8))(v121, v122);
        *v94 = v55;
        v94[1] = v54;

        if (one-time initialization token for Log != -1)
        {
          goto LABEL_89;
        }

        goto LABEL_75;
      }

      v9 = 1;
    }
  }

  else
  {
    v9 = *(v0 + 144);
  }

  v153 = v9;
  v10 = *(v0 + 152);
  if (!v10[1])
  {
    *v10 = *(v0 + 96);
    v10[1] = v5;
  }

LABEL_6:
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI12DBSuggestionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (v7 >> 62)
  {
    goto LABEL_85;
  }

  v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v154 = v8;
  v170 = v0;
  v172 = v12;
  if (v12)
  {
    v13 = 0;
    v8 = *(v0 + 384);
    v163 = v7 & 0xFFFFFFFFFFFFFF8;
    v167 = v7 & 0xC000000000000001;
    do
    {
      if (v167)
      {
        v15 = MEMORY[0x21CE93180](v13, v7);
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v13 >= *(v163 + 16))
        {
          goto LABEL_80;
        }

        v15 = *(v7 + 8 * v13 + 32);

        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          v12 = __CocoaSet.count.getter();
          goto LABEL_8;
        }
      }

      v17 = *(v0 + 400);
      (*(*v15 + 296))();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v173[0] = v11;
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      v21 = v11[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_81;
      }

      v25 = v20;
      if (v11[3] >= v24)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v19;
          specialized _NativeDictionary.copy()();
          v19 = v33;
          v11 = v173[0];
        }
      }

      else
      {
        v26 = *(v0 + 400);
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
        v11 = v173[0];
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
        if ((v25 & 1) != (v27 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v0 = v170;
        v7 = v162;
      }

      v28 = *(v0 + 400);
      v29 = *(v0 + 376);
      if (v25)
      {
        *(v11[7] + 8 * v19) = v15;

        (*(v8 + 8))(v28, v29);
      }

      else
      {
        v11[(v19 >> 6) + 8] |= 1 << v19;
        v30 = v19;
        (*(v8 + 16))(v11[6] + *(v8 + 72) * v19, v28, v29);
        *(v11[7] + 8 * v30) = v15;

        (*(v8 + 8))(v28, v29);
        v31 = v11[2];
        v23 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v23)
        {
          goto LABEL_82;
        }

        v11[2] = v32;
      }

      ++v13;
      v14 = v16 == v172;
      v12 = v172;
    }

    while (!v14);
  }

  if (*(v0 + 417) != 1)
  {
    goto LABEL_67;
  }

  if (one-time initialization token for Log != -1)
  {
LABEL_87:
    swift_once();
  }

  v34 = *(v0 + 360);
  v35 = *(v0 + 336);
  v36 = *(v0 + 344);
  v37 = __swift_project_value_buffer(v35, static DBWriter.Log);
  swift_beginAccess();
  v152 = v37;
  v151 = *(v36 + 16);
  v151(v34, v37, v35);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_21607C000, v38, v39, "[addSnapshot] attempting to reusing suggestions", v40, 2u);
    MEMORY[0x21CE94770](v40, -1, -1);
  }

  v7 = *(v0 + 384);
  v41 = *(v0 + 360);
  v42 = *(v0 + 336);
  v43 = *(v0 + 344);
  v44 = *(v0 + 320);
  v45 = *(v0 + 296);

  v46 = *(v43 + 8);
  v46(v41, v42);
  if (!v12)
  {
    goto LABEL_67;
  }

  v47 = 0;
  v159 = (v44 + 56);
  v160 = (v44 + 16);
  v156 = (v45 + 8);
  v157 = (v44 + 8);
  v149 = (v7 + 48);
  v158 = (v7 + 8);
  v150 = v46;
  do
  {
    v8 = v47;
    while (1)
    {
      if ((v162 & 0xC000000000000001) != 0)
      {
        v168 = MEMORY[0x21CE93180](v8, v162);
        v48 = v170;
        v49 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_83;
        }
      }

      else
      {
        v48 = v170;
        if (v8 >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v168 = *(v162 + 8 * v8 + 32);

        v49 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_83;
        }
      }

      v161 = v49;
      v50 = v48[49];
      v51 = v48[41];
      v52 = v48[39];
      v53 = v48[35];
      (*(*v168 + 296))();
      *(swift_task_alloc() + 16) = v50;
      v48[11] = type metadata accessor for DBSuggestion(0);
      Predicate.init(_:)();
      (*v160)(v53, v51, v52);
      (*v159)(v53, 0, 1, v52);
      v54 = _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, 255, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
      FetchDescriptor.init(predicate:sortBy:)();
      FetchDescriptor.fetchLimit.setter();
      v55 = 0;
      v56 = dispatch thunk of ModelContext.fetch<A>(_:)();
      v57 = v56;
      if (v56 >> 62)
      {
        break;
      }

      v0 = v170;
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

LABEL_39:
      v58 = *(v0 + 392);
      v59 = *(v0 + 376);
      v60 = *(v0 + 328);
      v7 = *(v0 + 304);
      v61 = *(v0 + 312);
      v62 = *(v0 + 288);

      (*v156)(v7, v62);
      (*v157)(v60, v61);
      (*v158)(v58, v59);

      ++v8;
      if (v161 == v172)
      {
        v0 = v170;
        goto LABEL_67;
      }
    }

    v0 = v170;
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_39;
    }

LABEL_45:
    if ((v57 & 0xC000000000000001) == 0)
    {
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v63 = *(v57 + 32);

        goto LABEL_48;
      }

      __break(1u);
LABEL_89:
      swift_once();
LABEL_75:
      v125 = *(v0 + 368);
      v126 = *(v0 + 336);
      v127 = *(v0 + 344);
      v128 = __swift_project_value_buffer(v126, static DBWriter.Log);
      swift_beginAccess();
      (*(v127 + 16))(v125, v128, v126);

      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.info.getter();

      v131 = os_log_type_enabled(v129, v130);
      v132 = *(v0 + 368);
      v133 = *(v0 + 336);
      v134 = *(v0 + 344);
      if (v131)
      {
        v135 = swift_slowAlloc();
        v155 = v8;
        v136 = swift_slowAlloc();
        *v135 = 136446722;
        v173[0] = v136;
        swift_beginAccess();
        v137 = StaticString.description.getter();
        v171 = v133;
        v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, v173);

        *(v135 + 4) = v139;
        *(v135 + 12) = 2082;
        *(v135 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000067, 0x800000021657FB10, v173);
        *(v135 + 22) = 2080;
        v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v173);

        *(v135 + 24) = v140;
        _os_log_impl(&dword_21607C000, v129, v130, "%{public}s.%{public}s Rotating new snapshot generation: %s", v135, 0x20u);
        swift_arrayDestroy();
        v141 = v136;
        v8 = v155;
        MEMORY[0x21CE94770](v141, -1, -1);
        MEMORY[0x21CE94770](v135, -1, -1);

        (*(v134 + 8))(v132, v171);
      }

      else
      {

        (*(v134 + 8))(v132, v133);
      }

      v153 = 1;
      v7 = v162;
      goto LABEL_6;
    }

    v63 = MEMORY[0x21CE93180](0, v57);
LABEL_48:
    v64 = *(v0 + 408);
    v65 = *(v0 + 376);
    v145 = *(v0 + 392);
    v147 = *(v0 + 352);
    v66 = *(v0 + 328);
    v164 = *(v0 + 336);
    v67 = *(v0 + 304);
    v68 = *(v0 + 312);
    v69 = *(v0 + 288);

    (*v156)(v67, v69);
    (*v157)(v66, v68);
    v70 = *v158;
    v71 = (*v158)(v145, v65);
    v72 = *(*v63 + 296);
    (v72)(v71);

    v73 = swift_isUniquelyReferenced_nonNull_native();
    v173[0] = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v64, v73);
    v146 = v70;
    v70(v64, v65);
    v11 = v173[0];
    v151(v147, v152, v164);

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v148 = v75;
      v165 = v74;
      v76 = *(v0 + 408);
      v142 = *(v0 + 376);
      v143 = *(v0 + 272);
      v77 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v173[0] = v144;
      *v77 = 136315394;
      v72();
      v78 = UUID.uuidString.getter();
      v80 = v79;
      v146(v76, v142);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v173);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2080;
      (*(*v63 + 344))(v82);
      if ((*v149)(v143, 1, v142) == 1)
      {
        outlined destroy of UTType?(*(v0 + 272), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v83 = 0xE300000000000000;
        v84 = 7104878;
      }

      else
      {
        v87 = *(v0 + 376);
        v88 = *(v0 + 272);
        v89 = UUID.uuidString.getter();
        v83 = v90;
        v146(v88, v87);
        v84 = v89;
      }

      v7 = v172;
      v91 = *(v0 + 352);
      v92 = *(v0 + 336);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v83, v173);

      *(v77 + 14) = v93;
      _os_log_impl(&dword_21607C000, v165, v148, "[addSnapshot] reusing suggestion, id=%s, suggestionID=%s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v144, -1, -1);
      MEMORY[0x21CE94770](v77, -1, -1);

      v150(v91, v92);
    }

    else
    {
      v85 = *(v0 + 352);
      v86 = *(v0 + 336);

      v150(v85, v86);
      v7 = v172;
    }

    v47 = v161;
  }

  while (v161 != v7);
LABEL_67:
  v98 = *(v0 + 264);
  v100 = *(v0 + 240);
  v99 = *(v0 + 248);
  v101 = *(v0 + 232);
  v102 = *(v0 + 168);
  v103 = *(v0 + 176);
  v104 = *(v0 + 152);

  outlined init with copy of DateInterval?(v102, v98, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v0 = *v104;
  v169 = v104[1];

  static Date.now.getter();
  (*(v100 + 16))(v99, v103, v101);
  v105 = v11[2];
  v172 = v0;
  if (v105)
  {
    v106 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5();
    v107 = specialized Sequence._copySequenceContents(initializing:)(v173, (v106 + 32), v105, v11);
    v108 = v173[0];
    v12 = v173[1];

    outlined consume of [String : DBAssetData].Iterator._Variant(v108);
    if (v107 != v105)
    {
      __break(1u);
      goto LABEL_87;
    }

    v166 = v106;
  }

  else
  {
    v166 = MEMORY[0x277D84F90];
  }

  v109 = *(v170 + 256);
  v110 = *(v170 + 264);
  v111 = *(v170 + 248);
  v112 = *(v170 + 224);
  v113 = *(*(v170 + 184) + 112);
  v114 = OBJC_IVAR____TtC9MomentsUI9DBManager_blobFolderURL;
  v115 = type metadata accessor for URL();
  v116 = *(v115 - 8);
  (*(v116 + 16))(v112, v113 + v114, v115);
  (*(v116 + 56))(v112, 0, 1, v115);
  type metadata accessor for DBSnapshot(0);
  swift_allocObject();
  v117 = DBSnapshot.init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(v110, v172, v169, v153, v109, v111, v166, v154, v112, 0);
  v118 = *(v170 + 192);
  **(v170 + 160) = v117;

  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  dispatch thunk of ModelContext.insert<A>(_:)();
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMd, &_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMR);
  (*(*(v119 - 8) + 56))(v118, 1, 1, v119);
  type metadata accessor for DefaultHistoryTransaction();
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DefaultHistoryTransaction and conformance DefaultHistoryTransaction, 255, MEMORY[0x277CDD588], MEMORY[0x277CDD580]);
  HistoryDescriptor.init(predicate:)();
  dispatch thunk of ModelContext.deleteHistory<A>(_:)();
  (*(*(v170 + 208) + 8))(*(v170 + 216), *(v170 + 200));

  v120 = *(v170 + 8);

  return v120();
}

double closure #1 in DBWriter.saveSuggestionsIntoDraft(_:context:renderedCount:publish:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v124 = a7;
  v117 = a5;
  LODWORD(v119) = a4;
  v121 = a3;
  v122 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v104 - v9);
  v11 = type metadata accessor for UUID();
  v118 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v120 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v104 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v104 - v21);
  v23 = v123;
  specialized static DBWriter.draftSnapshot(context:)();
  v26 = v124;
  if (v23)
  {
    goto LABEL_27;
  }

  v116 = a1;
  v111 = v17;
  v112 = v11;
  v113 = v13;
  isa = v20;
  v109 = v10;
  v123 = v24;
  static Date.now.getter();
  v27 = v121;
  if (v121 < 0)
  {
    __break(1u);
  }

  else
  {
    specialized static DBWriter._createDraftSnapshot(with:context:renderedCount:creationDate:)(v122, v116, v121, v22);
    v115 = 0;
    v110 = v14;
    v10 = v120;
    if (one-time initialization token for processing == -1)
    {
      goto LABEL_4;
    }
  }

  swift_once();
LABEL_4:
  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, static CommonLogger.processing);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = isa;
  if (v32)
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v27;
    _os_log_impl(&dword_21607C000, v30, v31, "[saveSuggestionsIntoDraft] saveSuggestionsIntoDraft, n=%ld", v34, 0xCu);
    MEMORY[0x21CE94770](v34, -1, -1);
  }

  v35 = v110;
  if (v123)
  {
    v108 = v22;
    swift_retain_n();
    v36 = v122;

    v37 = Logger.logObject.getter();
    v38 = v123;
    v39 = v37;
    v40 = static os_log_type_t.default.getter();

    LODWORD(v106) = v40;
    v41 = os_log_type_enabled(v39, v40);
    v107 = v29;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v125 = v43;
      *v42 = 134218242;
      v104 = v43;
      v105 = v39;
      if (v36 >> 62)
      {
        v44 = __CocoaSet.count.getter();
      }

      else
      {
        v44 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = v113;
      *(v42 + 4) = v44;

      *(v42 + 12) = 2080;
      v47 = v38 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      ((*v38)[26])(v46);
      _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v48 = v112;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v118 + 8))(v45, v48);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v125);

      *(v42 + 14) = v52;
      v38 = v123;
      v53 = v105;
      _os_log_impl(&dword_21607C000, v105, v106, "[saveSuggestionsIntoDraft] deleting old draft snapshot, suggestions n=%ld, id=%s", v42, 0x16u);
      v54 = v104;
      __swift_destroy_boxed_opaque_existential_1(v104);
      MEMORY[0x21CE94770](v54, -1, -1);
      MEMORY[0x21CE94770](v42, -1, -1);

      v33 = isa;
    }

    else
    {

      v47 = v38 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    }

    v59 = *v38;
    v106 = v47;
    v59 += 57;
    v60 = *v59;
    v104 = v59;
    v105 = v60;
    (v60)(v55, v56, v57, v58);
    v22 = v108;
    v61 = static Date.> infix(_:_:)();
    v35 = v110;
    isa = v10[1].isa;
    isa(v33, v110);
    if ((v61 & 1) == 0)
    {
      v64 = v111;
      (v10[2].isa)(v111, v22, v35);
      v65 = v122;
      swift_bridgeObjectRetain_n();

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      LODWORD(v121) = v67;
      if (os_log_type_enabled(v66, v67))
      {
        v120 = v66;
        v68 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v125 = v119;
        *v68 = 136315906;
        _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v70;
        v72 = v64;
        v73 = isa;
        isa(v72, v110);
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v125);
        v75 = v110;

        *(v68 + 4) = v74;
        *(v68 + 12) = 2080;
        (v105)(v76);
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = v33;
        v80 = v79;
        v73(v78, v75);
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v80, &v125);

        *(v68 + 14) = v81;
        *(v68 + 22) = 2048;
        if (v65 >> 62)
        {
          v82 = __CocoaSet.count.getter();
        }

        else
        {
          v82 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v83 = v112;
        v84 = v118;

        *(v68 + 24) = v82;

        *(v68 + 32) = 2080;
        v86 = v113;
        (*(*v123 + 208))(v85);
        _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v87 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = v88;
        (*(v84 + 8))(v86, v83);
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v125);

        *(v68 + 34) = v90;
        v91 = v120;
        _os_log_impl(&dword_21607C000, v120, v121, "[saveSuggestionsIntoDraft] new snapshots must be created after old ones, new=%s, old=%s, suggestions n=%ld, id=%s", v68, 0x2Au);
        v92 = v119;
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v92, -1, -1);
        MEMORY[0x21CE94770](v68, -1, -1);

        v22 = v108;
        v93 = isa;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v93 = isa;
        isa(v64, v35);
        v75 = v35;
      }

      lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError();
      v63 = swift_allocError();
      *v102 = 16;
      swift_willThrow();

      v93(v22, v75);
      goto LABEL_26;
    }

    type metadata accessor for DBSnapshot(0);
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
    dispatch thunk of ModelContext.delete<A>(_:)();
  }

  v62 = v115;
  dispatch thunk of ModelContext.save()();
  if (v62)
  {
    v63 = v62;
    (v10[1].isa)(v22, v35);

LABEL_26:
    v23 = v63;
    v26 = v124;
LABEL_27:
    *v26 = v23;
    return result;
  }

  if (v119)
  {
    v94 = v27;
    if (v122 >> 62)
    {
      v103 = __CocoaSet.count.getter();
      if (v103 < 0)
      {
        __break(1u);
      }

      v95 = v103;
      v35 = v110;
      v96 = v117;
      v10 = v120;
    }

    else
    {
      v95 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v96 = v117;
    }

    v97 = v109;
    v98 = type metadata accessor for TaskPriority();
    (*(*(v98 - 8) + 56))(v97, 1, 1, v98);
    v100 = _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBWriter and conformance DBWriter, v99, type metadata accessor for DBWriter, &protocol conformance descriptor for DBWriter);
    v101 = swift_allocObject();
    v101[2] = v96;
    v101[3] = v100;
    v101[4] = v94;
    v101[5] = v95;
    v101[6] = v96;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v97, &closure #1 in DBWriter.publishDraft(rendered:total:)partial apply, v101);

    (v10[1].isa)(v22, v35);
  }

  else
  {
    (v10[1].isa)(v22, v35);
  }

  return result;
}

uint64_t closure #1 in DBWriter.publishDraft(rendered:total:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in DBWriter.publishDraft(rendered:total:), a6, 0);
}

uint64_t closure #1 in DBWriter.publishDraft(rendered:total:)()
{
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.processing);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&dword_21607C000, v2, v3, "[saveSuggestionsIntoDraft] publishing draft, rendered n=%llu, suggestions n=%llu", v6, 0x16u);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  v7 = v0[4];

  v8 = *(v7 + 112);
  v0[5] = v8;

  return MEMORY[0x2822009F8](closure #1 in DBWriter.publishDraft(rendered:total:), v8, 0);
}

{
  v4.value = *(v0 + 16);
  v4.is_nil = 0;
  DBManager.setLatestLocalSnapshotSequence(_:_:)(0, v4);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #3 in static DBWriter.draftSnapshot(context:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMR);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  v20 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMR);
  a2[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UInt64> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMR, MEMORY[0x277CC9080]);
  v15 = v18;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v19 + 8))(v6, v15);
  return (*(v12 + 8))(v14, v11);
}

uint64_t closure #2 in static DBWriter.fetchedSuggestion(uuid:context:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMR);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - v14;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v9 + 8))(v11, v8);
  type metadata accessor for UUID();
  static PredicateExpressions.build_Arg<A>(_:)();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMR);
  a3[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a3);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMR, MEMORY[0x277CC9080]);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v16 = v19;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v20 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t closure #7 in static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v53 = a2;
  v50 = a1;
  v56 = a3;
  v57 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v3 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMR);
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v6 = v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v41 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMR);
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v41[0] = v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMR);
  v13 = *(v12 - 8);
  v54 = v12;
  v55 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v52 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = *v50;
  v51 = v41 - v16;
  v46 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v45 = v7;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v17 = *(v8 + 8);
  v47 = v8 + 8;
  v48 = v17;
  v17(v10, v7);
  v62 = *v53;
  static PredicateExpressions.build_Arg<A>(_:)();
  v18 = *MEMORY[0x277CC8FD8];
  v53 = *(v3 + 104);
  v19 = v49;
  v20 = v57;
  v53(v49, v18, v57);
  v44 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMR, MEMORY[0x277CC90C0]);
  v43 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UInt64> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMR, MEMORY[0x277CC9080]);
  v21 = v41[0];
  v22 = v6;
  v23 = v19;
  v24 = v58;
  v25 = v59;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  v26 = *(v3 + 8);
  v41[1] = v3 + 8;
  v42 = v26;
  v26(v23, v20);
  v27 = *(v61 + 8);
  v61 += 8;
  v27(v22, v25);
  v28 = *(v60 + 8);
  v60 += 8;
  v28(v21, v24);
  v29 = v45;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v48(v10, v29);
  v62 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  v30 = v23;
  v31 = v57;
  v53(v23, *MEMORY[0x277CC8FC0], v57);
  v32 = v52;
  v34 = v58;
  v33 = v59;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  v42(v30, v31);
  v27(v22, v33);
  v28(v21, v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AQGGAVGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AQGGAVGMR);
  v36 = v56;
  v56[3] = v35;
  v36[4] = lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>, PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AQGGAVGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AQGGAVGMR, lazy protocol witness table accessor for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Comparison<A, B>);
  __swift_allocate_boxed_opaque_existential_1(v36);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance PredicateExpressions.Comparison<A, B>, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMR, MEMORY[0x277CC8EB0]);
  v37 = v51;
  v38 = v54;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v39 = *(v55 + 8);
  v39(v32, v38);
  return (v39)(v37, v38);
}

uint64_t closure #6 in static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v53 = a2;
  v54 = a3;
  v46 = a1;
  v57 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMR);
  v5 = *(v4 - 8);
  v55 = v4;
  v56 = v5;
  MEMORY[0x28223BE20](v4);
  v52 = v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMR);
  v8 = *(v7 - 8);
  v58 = v7;
  v59 = v8;
  MEMORY[0x28223BE20](v7);
  v51 = v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMd, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMR);
  v11 = *(v10 - 8);
  v47 = v10;
  v48 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMR);
  v19 = *(v18 - 8);
  v43 = v18;
  v44 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMR);
  v23 = *(v22 - 8);
  v49 = v22;
  v50 = v23;
  MEMORY[0x28223BE20](v22);
  v24 = *v46;
  v45 = v41 - v25;
  v46 = v24;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v26 = *(v15 + 8);
  v41[2] = v15 + 8;
  v42 = v26;
  v26(v17, v14);
  static PredicateExpressions.build_NilLiteral<A>()();
  v41[1] = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<String> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMd, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMR, MEMORY[0x277CC8EC0]);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  v27 = v43;
  v28 = v47;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v48 + 8))(v13, v28);
  v29 = *(v44 + 8);
  v29(v21, v27);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v42(v17, v14);
  v60 = v53;
  v61 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v30 = v52;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<String?> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMR, MEMORY[0x277CC9080]);
  v31 = v51;
  v32 = v55;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v56 + 8))(v30, v32);
  v29(v21, v27);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMd, &_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMR);
  v34 = v57;
  v57[3] = v33;
  v34[4] = lazy protocol witness table accessor for type PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Disjunction<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v34);
  v35 = MEMORY[0x277CC9070];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMR, MEMORY[0x277CC9070]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMR, v35);
  v36 = v45;
  v37 = v31;
  v38 = v49;
  v39 = v58;
  static PredicateExpressions.build_Disjunction<A, B>(lhs:rhs:)();
  (*(v59 + 8))(v37, v39);
  return (*(v50 + 8))(v36, v38);
}

double key path getter for DBManager.snapshotGeneration : DBManager@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for DBManager.snapshotGeneration : DBManager(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void key path getter for DBManager.pendingDBChanges : DBManager(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t key path setter for DBManager.pendingDBChanges : DBManager(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v114 = a1;
  v123 = type metadata accessor for Date();
  v9 = MEMORY[0x28223BE20](v123);
  v122 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v121 = &v108 - v12;
  v13 = a3;
  v14 = *(a3 + 8);
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v114;
    if (!*v114)
    {
      goto LABEL_128;
    }

    a4 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v103 = a4;
    }

    else
    {
LABEL_122:
      v103 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v124 = v103;
    v104 = *(v103 + 2);
    if (v104 >= 2)
    {
      while (*v13)
      {
        a4 = *&v103[16 * v104];
        v105 = v103;
        v106 = *&v103[16 * v104 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v13 + 8 * a4), (*v13 + 8 * *&v103[16 * v104 + 16]), (*v13 + 8 * v106), v5);
        if (v6)
        {
          goto LABEL_100;
        }

        if (v106 < a4)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = specialized _ArrayBuffer._consumeAndCreateNew()(v105);
        }

        if (v104 - 2 >= *(v105 + 2))
        {
          goto LABEL_116;
        }

        v107 = &v105[16 * v104];
        *v107 = a4;
        v107[1] = v106;
        v124 = v105;
        specialized Array.remove(at:)(v104 - 1);
        v103 = v124;
        v104 = *(v124 + 2);
        if (v104 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v15 = 0;
  v120 = (v11 + 8);
  v16 = MEMORY[0x277D84F90];
  v113 = a4;
  v109 = v13;
  while (1)
  {
    v17 = v15++;
    if (v15 >= v14)
    {
      v39 = v13;
    }

    else
    {
      v118 = v14;
      v111 = v16;
      v112 = v6;
      v18 = *v13;
      v19 = *(*v13 + 8 * v15);
      v116 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = *(*v19 + 456);

      v24 = v121;
      v25 = v22(v23);
      v13 = v122;
      (*(*v21 + 456))(v25);
      LODWORD(v119) = static Date.> infix(_:_:)();
      v26 = *v120;
      v27 = v123;
      (*v120)(v13, v123);
      v117 = v26;
      v26(v24, v27);

      v110 = v17;
      v28 = v17 + 2;
      while (1)
      {
        v15 = v118;
        if (v118 == v28)
        {
          break;
        }

        v29 = *(v5 - 8);
        v30 = *(**v5 + 456);

        v32 = v121;
        v33 = v30(v31);
        v34 = v122;
        (*(*v29 + 456))(v33);
        v35 = static Date.> infix(_:_:)() & 1;
        v36 = v34;
        v13 = v123;
        v37 = v117;
        v117(v36, v123);
        v37(v32, v13);

        ++v28;
        v5 += 8;
        if ((v119 & 1) != v35)
        {
          v15 = v28 - 1;
          break;
        }
      }

      v16 = v111;
      v6 = v112;
      a4 = v113;
      v17 = v110;
      v38 = v116;
      if (v119)
      {
        if (v15 < v110)
        {
          goto LABEL_119;
        }

        v39 = v109;
        if (v110 < v15)
        {
          v40 = 8 * v15 - 8;
          v41 = v15;
          v42 = v110;
          do
          {
            if (v42 != --v41)
            {
              v44 = *v39;
              if (!*v39)
              {
                goto LABEL_125;
              }

              v43 = *(v44 + v38);
              *(v44 + v38) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            ++v42;
            v40 -= 8;
            v38 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        v39 = v109;
      }
    }

    v45 = v39[1];
    if (v15 < v45)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_118;
      }

      if (v15 - v17 < a4)
      {
        v46 = v17 + a4;
        if (__OFADD__(v17, a4))
        {
          goto LABEL_120;
        }

        if (v46 >= v45)
        {
          v46 = v39[1];
        }

        if (v46 < v17)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v15 != v46)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v15 < v17)
    {
      goto LABEL_117;
    }

    v59 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v59;
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
    }

    v13 = *(v16 + 2);
    v60 = *(v16 + 3);
    a4 = v13 + 1;
    if (v13 >= v60 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v13 + 1, 1, v16);
    }

    *(v16 + 2) = a4;
    v61 = &v16[16 * v13];
    *(v61 + 4) = v17;
    *(v61 + 5) = v15;
    v62 = *v114;
    if (!*v114)
    {
      goto LABEL_127;
    }

    if (v13)
    {
      while (1)
      {
        v5 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v63 = *(v16 + 4);
          v64 = *(v16 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_57:
          if (v66)
          {
            goto LABEL_106;
          }

          v79 = &v16[16 * a4];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_109;
          }

          v85 = &v16[16 * v5 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_113;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v5 = a4 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v89 = &v16[16 * a4];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_71:
        if (v84)
        {
          goto LABEL_108;
        }

        v92 = &v16[16 * v5];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_111;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_78:
        v13 = v5 - 1;
        if (v5 - 1 >= a4)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v39)
        {
          goto LABEL_124;
        }

        v100 = v16;
        a4 = *&v16[16 * v13 + 32];
        v101 = *&v16[16 * v5 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v39 + 8 * a4), (*v39 + 8 * *&v16[16 * v5 + 32]), (*v39 + 8 * v101), v62);
        if (v6)
        {
          goto LABEL_100;
        }

        if (v101 < a4)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = specialized _ArrayBuffer._consumeAndCreateNew()(v100);
        }

        if (v13 >= *(v100 + 2))
        {
          goto LABEL_103;
        }

        v102 = &v100[16 * v13];
        *(v102 + 4) = a4;
        *(v102 + 5) = v101;
        v124 = v100;
        specialized Array.remove(at:)(v5);
        v16 = v124;
        a4 = *(v124 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v16[16 * a4 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_104;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_105;
      }

      v74 = &v16[16 * a4];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_107;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_110;
      }

      if (v78 >= v70)
      {
        v96 = &v16[16 * v5 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_114;
        }

        if (v65 < v99)
        {
          v5 = a4 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v13 = v39;
    v14 = v39[1];
    a4 = v113;
    if (v15 >= v14)
    {
      goto LABEL_89;
    }
  }

  v111 = v16;
  v112 = v6;
  v119 = *v39;
  v13 = v119 + 8 * v15 - 8;
  v110 = v17;
  v47 = v17 - v15;
  v115 = v46;
LABEL_30:
  v117 = v13;
  v118 = v15;
  v5 = *(v119 + 8 * v15);
  v116 = v47;
  while (1)
  {
    v48 = *v13;
    v49 = *(*v5 + 456);

    v51 = v121;
    v52 = v49(v50);
    v53 = v122;
    (*(*v48 + 456))(v52);
    a4 = static Date.> infix(_:_:)();
    v54 = *v120;
    v55 = v53;
    v56 = v123;
    (*v120)(v55, v123);
    v54(v51, v56);

    if ((a4 & 1) == 0)
    {
LABEL_29:
      v15 = v118 + 1;
      v13 = v117 + 8;
      v47 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_30;
      }

      v15 = v115;
      v16 = v111;
      v6 = v112;
      v39 = v109;
      v17 = v110;
      goto LABEL_37;
    }

    if (!v119)
    {
      break;
    }

    v57 = *v13;
    v5 = *(v13 + 8);
    *v13 = v5;
    *(v13 + 8) = v57;
    v13 -= 8;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void specialized static DBWriter._latestSnapshotSequence(generation:context:nilFallback:loadedSuggestionCount:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(char *, uint64_t)@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v149) = a5;
  v127 = a4;
  v162 = a3;
  v144 = a2;
  v143 = a1;
  v128 = a6;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData16HistoryTombstoneVy9MomentsUI10DBSnapshotCGMd, &_s9SwiftData16HistoryTombstoneVy9MomentsUI10DBSnapshotCGMR);
  v147 = *(v154 - 8);
  v6 = MEMORY[0x28223BE20](v154);
  v153 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v160 = &v117 - v8;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData20DefaultHistoryDeleteVy9MomentsUI10DBSnapshotCGMd, &_s9SwiftData20DefaultHistoryDeleteVy9MomentsUI10DBSnapshotCGMR);
  v146 = *(v150 - 8);
  v9 = MEMORY[0x28223BE20](v150);
  v157 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v158 = &v117 - v11;
  v151 = type metadata accessor for HistoryChange();
  v131 = *(v151 - 8);
  v12 = MEMORY[0x28223BE20](v151);
  v164 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v159 = &v117 - v14;
  v142 = type metadata accessor for DefaultHistoryTransaction();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v134 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGSgMd, &_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v148 = (&v117 - v17);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData17HistoryDescriptorVyAA07DefaultC11TransactionVGMd, &_s9SwiftData17HistoryDescriptorVyAA07DefaultC11TransactionVGMR);
  v126 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v130 = &v117 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v161 = &v117 - v20;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMR);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v133 = (&v117 - v21);
  v22 = type metadata accessor for String.StandardComparator();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v117 - v27;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMd, &_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMR);
  v145 = *(v138 - 8);
  v29 = v145;
  v30 = MEMORY[0x28223BE20](v138);
  v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v117 - v33;
  swift_getKeyPath();
  static String.StandardComparator.localizedStandard.getter();
  (*(v23 + 16))(v26, v28, v22);
  SortDescriptor.init(_:comparator:order:)();
  (*(v23 + 8))(v28, v22);
  swift_getKeyPath();
  v35 = v32;
  SortDescriptor.init<A>(_:order:)();
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMR);
  v36 = *(v155 - 8);
  v152 = *(v36 + 56);
  v156 = (v36 + 56);
  v37 = v161;
  (v152)(v161, 1, 1, v155);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMd, &_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMR);
  v38 = *(v29 + 72);
  v39 = v145;
  v40 = (*(v145 + 80) + 32) & ~*(v145 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_21658CA60;
  v42 = v41 + v40;
  v43 = *(v39 + 16);
  v132 = v34;
  v44 = v34;
  v45 = v39;
  v46 = v138;
  v43(v42, v44, v138);
  v43(v42 + v38, v35, v46);
  v47 = v133;
  v48 = v140;
  v49 = type metadata accessor for DBSnapshot(0);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.includePendingChanges.setter();
  FetchDescriptor.fetchLimit.setter();
  v165 = v143;
  v166 = v144;
  v172 = v49;
  Predicate.init(_:)();
  (v152)(v37, 0, 1, v155);
  FetchDescriptor.predicate.setter();
  v50 = v163;
  v51 = dispatch thunk of ModelContext.fetch<A>(_:)();
  v52 = v139;
  if (v50)
  {
    goto LABEL_2;
  }

  v54 = v148;
  LOBYTE(v55) = v149;
  v120 = 0;
  v118 = v35;
  if (v51 >> 62)
  {
    goto LABEL_65;
  }

  v56 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v57 = v151;
    v58 = v159;
    v59 = v142;
    v60 = v130;
    if (v56)
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x21CE93180](0);
        v61 = v139;
        v62 = v140;
      }

      else
      {
        v61 = v139;
        v62 = v140;
        if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v63 = *(v51 + 32);
      }

      v65 = (*(*v63 + 256))(v64);
      v67 = v66;
      v68 = (*(*v63 + 304))(v65);
      if (v55)
      {
        v69 = (*(*v63 + 352))();
        if (v70)
        {
          (*(*v63 + 376))(v69);
        }
      }

      v71 = (*(*v63 + 352))();
      v73 = v72;

      (*(v61 + 8))(v47, v62);
      v74 = *(v145 + 8);
      v75 = v138;
      v74(v118, v138);
      v74(v132, v75);
      if (v67)
      {

        v76 = 0;
        v77 = v73;
        v78 = v128;
        goto LABEL_56;
      }

      v82 = v127;
      v78 = v128;
      goto LABEL_59;
    }

    v79 = v141;

    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMd, &_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMR);
    (*(*(v80 - 8) + 56))(v54, 1, 1, v80);
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DefaultHistoryTransaction and conformance DefaultHistoryTransaction, 255, MEMORY[0x277CDD588], MEMORY[0x277CDD580]);
    HistoryDescriptor.init(predicate:)();
    v81 = v120;
    v51 = dispatch thunk of ModelContext.fetchHistory<A>(_:)();
    v120 = v81;
    if (v81)
    {
      (*(v126 + 8))(v60, v136);
      v52 = v139;
      v46 = v138;
      v45 = v145;
      v35 = v118;
      v48 = v140;
LABEL_2:
      (*(v52 + 8))(v47, v48);
      v53 = *(v45 + 8);
      v53(v35, v46);
      v53(v132, v46);
      return;
    }

    v125 = *(v51 + 16);
    v83 = v140;
    if (!v125)
    {
      break;
    }

    v137 = 0;
    v119 = 0;
    v84 = 0;
    v123 = v51 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v122 = v79 + 16;
    v121 = v79 + 8;
    v149 = v131 + 16;
    v162 = (v131 + 88);
    LODWORD(v161) = *MEMORY[0x277CDD4A8];
    v156 = (v131 + 96);
    v148 = (v146 + 32);
    v152 = v147 + 1;
    v147 = (v146 + 8);
    v47 = (v131 + 8);
    v85 = v150;
    v55 = v145;
    v86 = v134;
    v124 = v51;
    v155 = v131 + 8;
    while (v84 < *(v51 + 16))
    {
      v88 = v141;
      v89 = *(v141 + 72);
      v135 = v84;
      (*(v141 + 16))(v86, v123 + v89 * v84, v59);
      v54 = DefaultHistoryTransaction.changes.getter();
      (*(v88 + 8))(v86, v59);
      v90 = *(v54 + 16);
      if (v90)
      {
        v91 = (*(v131 + 80) + 32) & ~*(v131 + 80);
        v129 = v54;
        v92 = v54 + v91;
        v54 = *(v131 + 72);
        v163 = *(v131 + 16);
        v93 = v163;
        v163(v58, v92, v57);
        while (1)
        {
          v95 = (*v162)(v58, v57);
          if (v95 == v161)
          {
            break;
          }

LABEL_27:
          (*v47)(v58, v57);
          v92 += v54;
          --v90;
          v93 = v163;
          if (!v90)
          {

            v55 = v145;
            goto LABEL_20;
          }

          v163(v58, v92, v57);
        }

        v96 = v54;
        v97 = v58;
        v98 = v164;
        v93(v164, v97, v57);
        (*v156)(v98, v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData13HistoryDelete_pMd, &_s9SwiftData13HistoryDelete_pMR);
        v99 = v158;
        if (swift_dynamicCast())
        {
          v100 = v157;
          (*v148)(v157, v99, v85);
          DefaultHistoryDelete.tombstone.getter();
          swift_getKeyPath();
          v101 = v85;
          v102 = v154;
          HistoryTombstone.subscript.getter();
          v103 = v160;

          v104 = v100;
          v105 = *v152;
          (*v152)(v103, v102);
          if (v171)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
            if (swift_dynamicCast())
            {
              v146 = v168;
              DefaultHistoryDelete.tombstone.getter();
              swift_getKeyPath();
              HistoryTombstone.subscript.getter();

              v105(v153, v154);
              v54 = v96;
              if (v171)
              {
                v106 = swift_dynamicCast();
                v57 = v151;
                v58 = v159;
                v47 = v155;
                if (v106)
                {
                  if (v168 == v143 && v169 == v144)
                  {

                    v85 = v150;
                    (*v147)(v157, v150);
                    goto LABEL_47;
                  }

                  v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v85 = v150;
                  (*v147)(v157, v150);
                  if (v109)
                  {
LABEL_47:
                    v107 = v119;
                    if (v119 <= v146)
                    {
                      v107 = v146;
                    }

                    v108 = &v151;
                    goto LABEL_50;
                  }

                  goto LABEL_51;
                }

                v85 = v150;
                (*v147)(v157, v150);
              }

              else
              {
                v85 = v150;
                (*v147)(v157, v150);
                outlined destroy of UTType?(&v170, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
                v57 = v151;
                v58 = v159;
                v47 = v155;
              }

              v107 = v137;
              if (v137 <= v146)
              {
                v107 = v146;
              }

              v108 = &v167;
LABEL_50:
              *(v108 - 32) = v107;
LABEL_51:
              v94 = v164;
LABEL_26:
              __swift_destroy_boxed_opaque_existential_1(v94);
              goto LABEL_27;
            }

            v85 = v150;
            (*v147)(v157, v150);
          }

          else
          {
            (*v147)(v104, v101);
            outlined destroy of UTType?(&v170, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
            v85 = v101;
          }

          v54 = v96;
          v57 = v151;
          v94 = v164;
          v58 = v159;
        }

        else
        {
          v94 = v164;
          v58 = v159;
          v54 = v96;
        }

        v47 = v155;
        goto LABEL_26;
      }

LABEL_20:
      v84 = v135 + 1;
      v59 = v142;
      v86 = v134;
      v87 = v136;
      v51 = v124;
      if (v135 + 1 == v125)
      {

        v78 = v128;
        v83 = v140;
        v47 = v133;
        v68 = v119;
        v110 = v138;
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_65:
    v116 = v51;
    v56 = __CocoaSet.count.getter();
    v51 = v116;
  }

  v137 = 0;
  v68 = 0;
  v110 = v138;
  v55 = v145;
  v87 = v136;
  v78 = v128;
LABEL_55:
  (*(v126 + 8))(v130, v87);
  (*(v139 + 8))(v47, v83);
  v111 = *(v55 + 8);
  v111(v118, v110);
  v111(v132, v110);
  v71 = 0;
  v77 = 1;
  v76 = v137;
LABEL_56:
  v82 = v127;
  if (v68)
  {
    v112 = v68;
    v113 = v71;
    goto LABEL_61;
  }

  v71 = 0;
  v73 = 1;
  v68 = v76;
LABEL_59:
  v112 = 0;
  v77 = 1;
  v113 = 0;
  if ((v82 & 1) == 0 || (v114 = 0, !v68))
  {
LABEL_61:
    v68 = v112;

    v112 = v143;
    v114 = v115;
    v71 = v113;
    v73 = v77;
  }

  *v78 = v112;
  *(v78 + 8) = v114;
  *(v78 + 16) = v68;
  *(v78 + 24) = v71;
  *(v78 + 32) = v73 & 1;
}

void specialized static DBWriter.draftSnapshot(context:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMR);
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  v17[2] = type metadata accessor for DBSnapshot(0);
  Predicate.init(_:)();
  (*(v7 + 16))(v2, v9, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  FetchDescriptor.init(predicate:sortBy:)();
  v10 = v16;
  dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v10)
  {
    (*(v3 + 8))(v5, v15);
    (*(v7 + 8))(v9, v6);
    return;
  }

  v11 = v15;

  v17[0] = specialized Array._copyToContiguousArray()(v12);
  specialized MutableCollection<>.sort(by:)(v17);

  v13 = v17[0];
  if (v17[0] < 0 || (v17[0] & 0x4000000000000000) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_10;
    }
  }

  else if (!*(v17[0] + 16))
  {
LABEL_10:

    (*(v3 + 8))(v5, v11);
    (*(v7 + 8))(v9, v6);
    return;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CE93180](0, v13);
    goto LABEL_10;
  }

  if (*(v13 + 16))
  {

    goto LABEL_10;
  }

  __break(1u);

  __break(1u);
}

uint64_t specialized static DBWriter._latestSnapshot(generation:prefetch:allowDraft:context:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  LODWORD(v7) = a4;
  LODWORD(v8) = a3;
  v93 = a1;
  v80 = a6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMR);
  v84 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v72[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v72[-v12];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMR);
  v83 = *(v99 - 8);
  v14 = MEMORY[0x28223BE20](v99);
  v95 = &v72[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v72[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMd, &_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMR);
  v89 = *(v18 - 8);
  v90 = v18;
  MEMORY[0x28223BE20](v18);
  v88 = &v72[-v19];
  if (one-time initialization token for database != -1)
  {
LABEL_52:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static CommonLogger.database);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v94 = a2;
  v85 = v17;
  v92 = a5;
  v79 = v7;
  LODWORD(v81) = v8;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v101 = v25;
    *v24 = 136446978;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x800000021657FC20, &v101);
    *(v24 + 12) = 2080;
    *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v101);
    *(v24 + 22) = 1024;
    *(v24 + 24) = v8 & 1;
    *(v24 + 28) = 1024;
    *(v24 + 30) = v7 & 1;
    _os_log_impl(&dword_21607C000, v21, v22, "%{public}s generation=%s, prefetch=%{BOOL}d, allowDraft=%{BOOL}d", v24, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v25, -1, -1);
    MEMORY[0x21CE94770](v24, -1, -1);
  }

  v101 = -1;
  swift_getKeyPath();
  v26 = v88;
  SortDescriptor.init<A>(_:order:)();
  v27 = v90;
  SortDescriptor.order.setter();
  v29 = (v84 + 56);
  v28 = *(v84 + 56);
  v30 = v97;
  v28(v13, 1, 1, v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMd, &_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMR);
  v31 = v89;
  v32 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_21658CA50;
  (*(v31 + 16))(v33 + v32, v26, v27);
  v34 = type metadata accessor for DBSnapshot(0);
  v35 = _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  v36 = v85;
  v98 = v35;
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.includePendingChanges.setter();
  v37 = FetchDescriptor.fetchLimit.setter();
  v7 = v72;
  MEMORY[0x28223BE20](v37);
  v38 = v94;
  *&v72[-16] = v93;
  *&v72[-8] = v38;
  v91 = v34;
  v100 = v34;
  Predicate.init(_:)();
  v86 = v28;
  v87 = v29;
  v28(v13, 0, 1, v30);
  FetchDescriptor.predicate.setter();
  if (v81)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_21658E210;
    *(v39 + 32) = swift_getKeyPath();
    FetchDescriptor.relationshipKeyPathsForPrefetching.setter();
  }

  v40 = v82;
  v41 = dispatch thunk of ModelContext.fetch<A>(_:)();
  v17 = v40;
  if (v40)
  {
    (*(v83 + 8))(v36, v99);
    return (*(v89 + 8))(v88, v90);
  }

  v43 = v41;
  if (v41 >> 62)
  {
LABEL_54:
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = result == 0;
  v74 = result;
  if (!result)
  {

    v75 = 0;
    v78 = 0;
    v44 = 0;
    v77 = 1;
    goto LABEL_18;
  }

  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x21CE93180](0, v43);
LABEL_14:

    v46 = (*(*v44 + 664))(v45);
    v47 = *(*v44 + 304);
    if (v46)
    {

      v78 = (v47)(v48);
      v75 = (*(*v44 + 352))();
      v77 = v49;
    }

    else
    {
      v101 = v47();
      v78 = v47();
      v75 = (*(*v44 + 352))();
      v77 = v51;

      v44 = 0;
    }

LABEL_18:
    v76 = v7;
    if (v101)
    {
      v81 = (v83 + 8);
      v82 = (v84 + 16);
      v84 += 8;
      v7 = v87;
      while (!v44)
      {
        MEMORY[0x28223BE20](v50);
        *&v72[-16] = &v101;
        v52 = v96;
        Predicate.init(_:)();
        a2 = v97;
        (*v82)(v13, v52, v97);
        v8 = v86;
        v86(v13, 0, 1, a2);
        a5 = v91;
        FetchDescriptor.init(predicate:sortBy:)();
        FetchDescriptor.includePendingChanges.setter();
        v53 = FetchDescriptor.fetchLimit.setter();
        MEMORY[0x28223BE20](v53);
        v54 = v94;
        *&v72[-16] = v93;
        *&v72[-8] = v54;
        Predicate.init(_:)();
        v8(v13, 0, 1, a2);
        FetchDescriptor.predicate.setter();
        v55 = dispatch thunk of ModelContext.fetch<A>(_:)();
        v56 = v55;
        if (v55 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
LABEL_41:

            (*v81)(v95, v99);
            (*v84)(v96, v97);
            goto LABEL_42;
          }
        }

        else if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        if ((v56 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x21CE93180](0, v56);
        }

        else
        {
          if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_52;
          }

          v44 = *(v56 + 32);
        }

        if ((*(*v44 + 664))(v57))
        {
          (*v81)(v95, v99);
          v50 = (*v84)(v96, v97);
        }

        else
        {
          v43 = (*(*v44 + 304))();

          (*v81)(v95, v99);
          v50 = (*v84)(v96, v97);
          if (!v43)
          {
            __break(1u);
            goto LABEL_54;
          }

          v44 = 0;
          v101 = v43 - 1;
        }

        if (!v101)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
LABEL_34:
      if (!v44)
      {
LABEL_42:
        v61 = v80;
        v62 = v85;
        if (v79)
        {
          specialized static DBWriter.draftSnapshot(context:)();
          v44 = v67;
          if (!v67)
          {
            v78 = 0;
            v66 = 0;
            v75 = 0;
            v77 = 1;
            goto LABEL_49;
          }

          v68 = *(*v67 + 352);

          v75 = v68(v69);
          v77 = v70;

          v78 = 0;
          goto LABEL_48;
        }

        v44 = 0;
        v66 = v73;
        goto LABEL_49;
      }
    }

    v58 = *(*v44 + 304);

    v60 = v58(v59);
    v61 = v80;
    v62 = v85;
    if (v74)
    {
      if (v60 != v78)
      {

        goto LABEL_48;
      }

      if (v77)
      {
        (*(*v44 + 376))();
        v63 = *(*v44 + 352);

        v75 = v63(v64);
        v77 = v65;

LABEL_48:
        v66 = 0;
        goto LABEL_49;
      }

      v66 = 0;
      v77 = 0;
    }

    else
    {

      v66 = 1;
    }

LABEL_49:
    (*(v83 + 8))(v62, v99);
    result = (*(v89 + 8))(v88, v90);
    v71 = v78;
    *v61 = v44;
    *(v61 + 8) = v71;
    *(v61 + 16) = v66;
    *(v61 + 24) = v75;
    *(v61 + 32) = v77 & 1;
    return result;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(v43 + 32);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

double specialized static DBWriter._createDraftSnapshot(with:context:renderedCount:creationDate:)(int64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = a4;
  v44 = a3;
  v45 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v42 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v42 - v19;
  v43 = v6;
  (*(v6 + 56))(&v42 - v19, 1, 1, v5);
  (*(v12 + 16))(v17, v46, v11);
  specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)();
  Date.init(timeIntervalSinceNow:)();
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  type metadata accessor for DBSnapshot(0);
  swift_allocObject();

  v22 = v47;
  v23 = DBSnapshot.init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(v20, 0, 0, 0, v17, v15, a1, MEMORY[0x277D84F90], v10, 1);
  if (!v22)
  {
    v25 = v23;
    v26 = a1;
    v27 = v42;
    v28 = v43;
    v47 = 0;
    (*(*v23 + 360))(v44, 0);
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, 255, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
    dispatch thunk of ModelContext.insert<A>(_:)();
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static CommonLogger.processing);
    v30 = v26;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v33 = 134218242;
      if (v30 >> 62)
      {
        v34 = __CocoaSet.count.getter();
      }

      else
      {
        v34 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v33 + 4) = v34;

      *(v33 + 12) = 2080;
      v36 = v27;
      (*(*v25 + 208))(v35);
      _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v28 + 8))(v36, v5);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v48);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_21607C000, v31, v32, "[createDraftSnapshot] created new draft snapshot, suggestions n=%ld, id=%s", v33, 0x16u);
      v41 = v46;
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x21CE94770](v41, -1, -1);
      MEMORY[0x21CE94770](v33, -1, -1);
    }

    else
    {
    }
  }

  return result;
}