char *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd_2, &_ss23_ContiguousArrayStorageCySnySiGGMR_2);
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
    v10 = _swiftEmptyArrayStorage;
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

void *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyycGMd_1, &_ss23_ContiguousArrayStorageCyyycGMR_1);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2, &_syycMR_2);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU__2(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_4(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

void *_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_4(uint64_t a1, unint64_t a2)
{
  v3 = _ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_4(a1, a2);
  _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_4(&_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyFTv_r_4);
  return v3;
}

void *_ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_4(uint64_t a1)
{
  v2 = *(a1 + 16);
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_4 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_4 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_4 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_4(isUniquelyReferenced_nonNull_native, v12, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_4);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_4 + 2);
  if ((*(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_4 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_4[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_4;
    return;
  }

  v9 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_4 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_4 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_4, &_ss23_ContiguousArrayStorageCys5UInt8VGMR_4);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void *_ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Foundation3URLVSg_Tg5_2(void *a1, uint64_t a2, uint64_t a3)
{
  result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *_ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_1(char *a1, uint64_t a2, uint64_t a3)
{
  result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *_ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0(char *a1, uint64_t a2, uint64_t a3)
{
  result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5_0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *_ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMd_2, &_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMR_2);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_3, &_s10Foundation3URLVSgMR_3) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_3, &_s10Foundation3URLVSgMR_3) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *_ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_2, &_ss23_ContiguousArrayStorageCySSGMR_2);
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
    v10 = _swiftEmptyArrayStorage;
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

char *_ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5_0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd_0, &_ss23_ContiguousArrayStorageCySdGMR_0);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(double *a1)
{
  Hasher.init(_seed:)();
  Lyrics.Word.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(double *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = a1;
  v7 = ~v4;
  v8 = *a1;
  v9 = *(v2 + 48);
  v30 = v2 + 64;
  v28 = v9;
  v29 = ~v4;
  while (1)
  {
    v10 = v9 + 56 * v5;
    if (*v10 != v8 || *(v10 + 8) != v6[1])
    {
      goto LABEL_4;
    }

    result = *(v10 + 16);
    v12 = *(v10 + 32);
    v13 = *(v10 + 40);
    v27 = *(v10 + 48);
    if (result != *(v6 + 2) || *(v10 + 24) != *(v6 + 3))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v9 = v28;
      v7 = v29;
      v3 = v30;
      v6 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v15 = *(v6 + 4);
    v16 = *(v12 + 16);
    if (v16 != *(v15 + 16))
    {
      goto LABEL_4;
    }

    if (v16 && v12 != v15)
    {
      break;
    }

LABEL_18:
    if (v27)
    {
      if (v6[6])
      {
        return v5;
      }
    }

    else if ((v6[6] & 1) == 0 && v13 == v6[5])
    {
      return v5;
    }

LABEL_4:
    v5 = (v5 + 1) & v7;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  v18 = (v12 + 80);
  v19 = v15 + 40;
  while (v16)
  {
    if (*(v18 - 6) != *(v19 - 8) || *(v18 - 5) != *v19)
    {
      goto LABEL_4;
    }

    result = *(v18 - 4);
    v21 = *(v18 - 2);
    v22 = *(v18 - 1);
    v23 = *v18;
    v24 = *(v19 + 24);
    v25 = *(v19 + 32);
    v26 = *(v19 + 40);
    if (result != *(v19 + 8) || *(v18 - 3) != *(v19 + 16))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v9 = v28;
      v7 = v29;
      v3 = v30;
      v6 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v21 != v24 || v22 != v25 || *&v23 != v26)
    {
      goto LABEL_4;
    }

    v18 += 7;
    v19 += 56;
    if (!--v16)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    outlined assign with take of AnyHashable(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 40 * v11;
  v25 = *a1;
  v26 = a1[1];
  *(v24 + 32) = *(a1 + 4);
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_15:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v21 = *a2;
  v28 = *(a2 + 1);
  v20 = v28;
  v27 = *(a2 + 4);
  v19[(result >> 6) + 8] |= 1 << result;
  v22 = v19[6] + 56 * result;
  v23 = *(a2 + 2);
  *(v22 + 16) = v20;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(a2 + 48);
  *v22 = v21;
  *(v19[7] + 8 * result) = a1;
  v24 = v19[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19[2] = v25;
  outlined init with copy of String(&v28, v26);
  return outlined init with copy of TaskPriority?(&v27, v26, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v21 = *a2;
    v28 = *(a2 + 1);
    v20 = v28;
    v27 = *(a2 + 4);
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v22 = v19[6] + 56 * v9;
    v23 = *(a2 + 2);
    *(v22 + 16) = v20;
    *(v22 + 32) = v23;
    *(v22 + 48) = *(a2 + 48);
    *v22 = v21;
    *(v19[7] + 8 * v9) = a1;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      outlined init with copy of String(&v28, v26);
      outlined init with copy of TaskPriority?(&v27, v26, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = outlined init with take of Lyrics.TextLine(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  v7 = (a3[7] + 32 * result);
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = a7;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
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

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  v38 = a1;
  Lyrics.Word.hash(into:)(v39);
  result = Hasher._finalize()();
  v9 = 1 << *a4;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    goto LABEL_40;
  }

  v12 = v11 & result;
  v13 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  *&v41 = a4;
  *(&v41 + 1) = a5;
  *&v42 = v12;
  *(&v42 + 1) = v13;
  *&v43 = v14;
  *(&v43 + 1) = v15;
  v44 = 0;
  v16 = _HashTable.BucketIterator.currentValue.getter();
  if (v17)
  {
    return v16;
  }

  v18 = *v38;
  while (1)
  {
    v20 = a2 + 56 * v16;
    if (*v20 != v18 || *(v20 + 8) != *(v38 + 8))
    {
      goto LABEL_6;
    }

    result = *(v20 + 16);
    v21 = *(v20 + 32);
    v22 = *(v20 + 40);
    v36 = *(v20 + 48);
    if (result != *(v38 + 16) || *(v20 + 24) != *(v38 + 24))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v24 = *(v38 + 32);
    v25 = *(v21 + 16);
    if (v25 != *(v24 + 16))
    {
      goto LABEL_6;
    }

    if (v25 && v21 != v24)
    {
      break;
    }

LABEL_20:
    if (v36)
    {
      if (*(v38 + 48))
      {
        return v16;
      }
    }

    else if ((*(v38 + 48) & 1) == 0 && v22 == *(v38 + 40))
    {
      return v16;
    }

LABEL_6:
    _HashTable.BucketIterator.advance()();
    v39[0] = v41;
    v39[1] = v42;
    v39[2] = v43;
    v40 = v44;
    v16 = _HashTable.BucketIterator.currentValue.getter();
    if (v19)
    {
      return v16;
    }
  }

  v27 = (v21 + 80);
  v28 = v24 + 40;
  while (v25)
  {
    if (*(v27 - 6) != *(v28 - 8) || *(v27 - 5) != *v28)
    {
      goto LABEL_6;
    }

    result = *(v27 - 4);
    v30 = *(v27 - 2);
    v31 = *(v27 - 1);
    v32 = *v27;
    v34 = *(v28 + 24);
    v33 = *(v28 + 32);
    v35 = *(v28 + 40);
    if (result != *(v28 + 8) || *(v27 - 3) != *(v28 + 16))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v30 != v34 || v31 != v33 || *&v32 != v35)
    {
      goto LABEL_6;
    }

    v27 += 7;
    v28 += 56;
    if (!--v25)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(Swift::UInt a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v9 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      do
      {
        _HashTable.BucketIterator.advance()();
        result = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v10 & 1) == 0 && *(a2 + 8 * result) != a1);
    }
  }

  return result;
}

void specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_1(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  if (v13 >= v12 >> 1)
  {
    _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_1((v12 > 1), v13 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v13 + 1;
  v14 = v8 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v8;
  if (*v4)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v13)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v4;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v17 = _HashTable.copy()();

        *v4 = v17;
        v16 = v17;
      }

      if (v16)
      {
        _HashTable.UnsafeHandle.subscript.setter();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v13 < 0xF)
  {
    return;
  }

  specialized OrderedSet._regenerateHashTable()(v11);
}

void specialized OrderedSet._appendNew(_:in:)(__n128 *a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1[1];
  v19 = a1[2].n128_u64[0];
  v7 = v2[1];
  v5 = v2 + 1;
  v6 = v7;
  outlined init with copy of String(&v20, v18);
  outlined init with copy of TaskPriority?(&v19, v18, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
    v6 = *v5;
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    v6 = *v5;
  }

  *(v6 + 16) = v10 + 1;
  v11 = v6 + 56 * v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  *(v11 + 80) = a1[3].n128_u8[0];
  *(v11 + 48) = v13;
  *(v11 + 64) = v14;
  *(v11 + 32) = v12;
  v3[1] = v6;
  if (*v3)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v10)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v3;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v17 = _HashTable.copy()();

        *v3 = v17;
        v16 = v17;
      }

      if (v16)
      {
        _HashTable.UnsafeHandle.subscript.setter();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v10 < 0xF)
  {
    return;
  }

  specialized OrderedSet._regenerateHashTable()(v12);
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v20, a3);
        return;
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

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo14MSVLyricsAgentCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So14iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 80);
    do
    {
      v5 = *(v4 - 6);
      v6 = *(v4 - 5);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v10 = *v4;
      v4 += 7;
      v9 = *&v10;
      if (v5 == 0.0)
      {
        v5 = 0.0;
      }

      Hasher._combine(_:)(*&v5);
      if (v6 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v6;
      }

      Hasher._combine(_:)(*&v11);

      String.hash(into:)();
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);

      --v3;
    }

    while (v3);
  }
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = &type metadata for Lyrics.SongwritersLine;
  v12 = &protocol witness table for Lyrics.SongwritersLine;
  v6 = swift_allocObject();
  *&v10 = v6;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return outlined init with take of ActionPerforming(&v10, v8 + 40 * a1 + 32);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n_1(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd_1, &_ss18_DictionaryStorageCyS2SGMR_1);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7LyricsX0C0C11TranslationVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_7LyricsX0A0C11TranslationVtMd, &_sSS_7LyricsX0A0C11TranslationVtMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7LyricsX0C0C11TranslationVGMd, &_ss18_DictionaryStorageCySS7LyricsX0C0C11TranslationVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of TaskPriority?(v9, v5, &_sSS_7LyricsX0A0C11TranslationVtMd, &_sSS_7LyricsX0A0C11TranslationVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Lyrics.Translation(0);
      result = outlined init with take of Lyrics.TextLine(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Translation);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7LyricsX0C0C15TransliterationVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_7LyricsX0A0C15TransliterationVtMd, &_sSS_7LyricsX0A0C15TransliterationVtMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7LyricsX0C0C15TransliterationVGMd, &_ss18_DictionaryStorageCySS7LyricsX0C0C15TransliterationVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of TaskPriority?(v9, v5, &_sSS_7LyricsX0A0C15TransliterationVtMd, &_sSS_7LyricsX0A0C15TransliterationVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Lyrics.Transliteration(0);
      result = outlined init with take of Lyrics.TextLine(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Transliteration);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7LyricsX0C0C23LineTranslationMetadata023_023C7B06612B00822B4518G8EDD9DC67LLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7LyricsX0C0C23LineTranslationMetadata023_023C7B06612B00822B4518G8EDD9DC67LLVGMd, &_ss18_DictionaryStorageCySS7LyricsX0C0C23LineTranslationMetadata023_023C7B06612B00822B4518G8EDD9DC67LLVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  outlined init with copy of TaskPriority?(&v27, v26, &_sSS_7LyricsX0A0C23LineTranslationMetadata023_023C7B06612B00822B4518E8EDD9DC67LLVtMd, &_sSS_7LyricsX0A0C23LineTranslationMetadata023_023C7B06612B00822B4518E8EDD9DC67LLVtMR);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 12);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    outlined init with copy of TaskPriority?(&v27, v26, &_sSS_7LyricsX0A0C23LineTranslationMetadata023_023C7B06612B00822B4518E8EDD9DC67LLVtMd, &_sSS_7LyricsX0A0C23LineTranslationMetadata023_023C7B06612B00822B4518E8EDD9DC67LLVtMR);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s11AnyHashableVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs11AnyHashableVGMd_0, &_ss18_DictionaryStorageCySSs11AnyHashableVGMR_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TaskPriority?(v4, &v16, &_sSS_s11AnyHashableVtMd, &_sSS_s11AnyHashableVtMR);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd_0, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TaskPriority?(v4, &v11, &_sSo21NSAttributedStringKeya_yptMd_0, &_sSo21NSAttributedStringKeya_yptMR_0);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7LyricsX0C0C4WordVSiGMd, &_ss18_DictionaryStorageCy7LyricsX0C0C4WordVSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 88); ; i += 8)
    {
      v6 = *(i - 5);
      v5 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;
      v18 = *(i - 7);
      *&v19 = v6;
      *(&v19 + 1) = v5;
      *&v20 = v8;
      *(&v20 + 1) = v7;
      v21 = v9;

      result = specialized __RawDictionaryStorage.find<A>(_:)(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 56 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 48) = v21;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SayAC06SyncedC8LineViewCAFCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7LyricsX0C0C4WordVSayAC06SyncedC8LineViewCAFCGGMd, &_ss18_DictionaryStorageCy7LyricsX0C0C4WordVSayAC06SyncedC8LineViewCAFCGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 88); ; i += 8)
    {
      v6 = *(i - 5);
      v5 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;
      v18 = *(i - 7);
      *&v19 = v6;
      *(&v19 + 1) = v5;
      *&v20 = v8;
      *(&v20 + 1) = v7;
      v21 = v9;

      result = specialized __RawDictionaryStorage.find<A>(_:)(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 56 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 48) = v21;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX06SyncedC8LineViewC0E0C_ShyAE4WordCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7LyricsX06SyncedC8LineViewC0E0CShyAE4WordCGGMd, &_ss18_DictionaryStorageCy7LyricsX06SyncedC8LineViewC0E0CShyAE4WordCGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX06SyncedC8LineViewC0E0C_So6CGRectVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7LyricsX06SyncedC8LineViewC0E0CSo6CGRectVGMd, &_ss18_DictionaryStorageCy7LyricsX06SyncedC8LineViewC0E0CSo6CGRectVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = (a1 + 80);
  while (1)
  {
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = result;
    v10 = (v3[7] + 32 * v7);
    *v10 = v17;
    v10[1] = v18;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = (v9 + 40);
    v15 = *(v9 - 1);
    v17 = *v9;
    v18 = v9[1];

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
    v9 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static Lyrics.Word.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7LyricsX0B0C8SyllableV_Tt1g5(*(a1 + 32), *(a2 + 32)))
    {
      if (*(a1 + 48))
      {
        if (*(a2 + 48))
        {
          return 1;
        }
      }

      else if ((*(a2 + 48) & 1) == 0 && *(a1 + 40) == *(a2 + 40))
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL specialized static Lyrics.Syllable.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v2 = *(a1 + 24) == *(a2 + 24)) : (v2 = 0), (v2 || (v3 = a1, v4 = a2, v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v4, v6 = v5, a1 = v3, (v6 & 1) != 0)) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40)))
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static Lyrics.TextLine.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (v4 = type metadata accessor for Lyrics.TextLine(0), *(a1 + v4[10]) == *(a2 + v4[10])) && *(a1 + v4[11]) == *(a2 + v4[11]))
  {
    v5 = v4;
    v6 = (*(a1 + v4[16]))();
    v8 = v7;
    if (v6 == (*(a2 + v5[16]))() && v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t specialized Lyrics.Word.range.getter(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result + 56 * v1;
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
    goto LABEL_7;
  }

  result = *(result + 64);
  if (__OFSUB__(v6, result))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_10044793C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100447974()
{

  return swift_deallocObject();
}

uint64_t specialized static Lyrics.useSpacesAsWordDelimiter(for:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale.Language();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  if (!a2)
  {
    goto LABEL_4;
  }

  Locale.Language.init(identifier:)();
  Locale.Language.languageCode.getter();
  (*(v4 + 8))(v6, v3);
  v9 = type metadata accessor for Locale.LanguageCode();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of TaskPriority?(v8, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
LABEL_4:
    v11 = 1;
    return v11 & 1;
  }

  v12 = Locale.LanguageCode.identifier.getter();
  v14 = v13;
  (*(v10 + 8))(v8, v9);
  if (one-time initialization token for noSpaceLanguages != -1)
  {
    swift_once();
  }

  v15 = specialized Set.contains(_:)(v12, v14, static Lyrics.noSpaceLanguages);

  v11 = v15 ^ 1;
  return v11 & 1;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX0E0C14AudioAttributeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX0C0C14AudioAttributeOGMd, &_ss11_SetStorageCy7LyricsX0C0C14AudioAttributeOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      if (v10 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v10;
      }

      Hasher._combine(_:)(*&v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

_UNKNOWN **specialized static Lyrics.capabilities(for:)(uint64_t a1, uint64_t a2)
{
  v24[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
  __chkstk_darwin();
  v4 = v24 - v3;
  v5 = type metadata accessor for Locale.Language();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale.LanguageCode();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v24 - v13;
  __chkstk_darwin();
  if (!a2)
  {
    return &outlined read-only object #2 of static Lyrics.capabilities(for:);
  }

  v16 = v24 - v15;

  Locale.Language.init(identifier:)();
  Locale.Language.languageCode.getter();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    outlined destroy of TaskPriority?(v4, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
    return &outlined read-only object #2 of static Lyrics.capabilities(for:);
  }

  v18 = v16;
  (*(v10 + 32))(v16, v4, v9);
  (*(v10 + 16))(v14, v16, v9);
  Locale.LanguageCode.init(stringLiteral:)();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode, &type metadata accessor for Locale.LanguageCode, &protocol conformance descriptor for Locale.LanguageCode);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v10 + 8);
  v20(v12, v9);
  if (v19 & 1) != 0 || (Locale.LanguageCode.init(stringLiteral:)(), v21 = dispatch thunk of static Equatable.== infix(_:_:)(), v20(v12, v9), (v21) || (Locale.LanguageCode.init(stringLiteral:)(), v22 = dispatch thunk of static Equatable.== infix(_:_:)(), v20(v12, v9), (v22))
  {
    v20(v14, v9);
  }

  else
  {
    Locale.LanguageCode.init(stringLiteral:)();
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    v20(v12, v9);
    v20(v14, v9);
    if ((v23 & 1) == 0)
    {
      v20(v18, v9);
      return &outlined read-only object #1 of static Lyrics.capabilities(for:);
    }
  }

  v20(v18, v9);
  return &outlined read-only object #0 of static Lyrics.capabilities(for:);
}

uint64_t sub_100448184()
{

  return swift_deallocObject();
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo14MSVLyricsAgentC_Tt0g5Tf4g_n(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo14MSVLyricsAgentCGMd, &_ss11_SetStorageCySo14MSVLyricsAgentCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent, MSVLyricsAgent_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent, MSVLyricsAgent_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

char *specialized static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, char a6, char a7)
{
  v7 = a5;
  v8 = a4;
  v9 = a2;
  v140 = a1;
  v141 = _swiftEmptyArrayStorage;
  if ((a7 & 1) == 0)
  {
    v131 = _swiftEmptyArrayStorage;
    v86 = one-time initialization token for tokenizerLock;

    if (v86 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_62;
  }

  v10 = a3;
  v11 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v11 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    v13 = 0;
    v100 = _swiftEmptyArrayStorage;
LABEL_80:

    return v100;
  }

  v105._countAndFlagsBits = a4;
  v105._object = a5;
  v104 = 4 * v11;

  v12 = 0;
  v117 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  v8 = 15;
  v7 = _swiftEmptyArrayStorage;
  v125 = _swiftEmptyArrayStorage;
  v100 = _swiftEmptyArrayStorage;
  while (1)
  {
    v121 = v13;
    v114 = String.index(after:)();
    v16 = (v15 & 1) != 0 ? v8 : v117;
    v17 = (v15 & 1) != 0 ? v8 : v12;
    v18 = String.index(after:)();
    if (v16 >> 14 > v18 >> 14)
    {
      break;
    }

    v19 = v18;

    v20 = _NSRange.init(range:in:)(v16, v19, v9, v10);
    if (v14 < v17 >> 14)
    {
      goto LABEL_84;
    }

    v106 = v16 >> 14;
    v115 = v14;
    v129 = v16;
    v22 = v20;
    v23 = v21;

    v119 = v17;
    v111 = _NSRange.init(range:in:)(v17, v8, v9, v10);
    v118 = v24;
    __chkstk_darwin();
    v108 = v22;
    v102 = v23;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13MSVLyricsWordCGMd, &_sSaySo13MSVLyricsWordCGMR);
    Array.extractFirst(where:)(v25, &v134);
    v10 = a3;
    v26 = v134;
    String.subscript.getter();
    v27 = Character.isWhitespace.getter();

    if ((v27 & 1) == 0)
    {
      if (v26)
      {
LABEL_22:
        v9 = a2;
        if (v121)
        {
          v109 = v26;
          v34 = v26;
          String.subscript.getter();
          v35 = static String._fromSubstring(_:)();
          v37 = v36;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125[2] + 1, 1, v125);
          }

          v39 = v125[2];
          v38 = v125[3];
          v9 = a2;
          if (v39 >= v38 >> 1)
          {
            v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v125);
          }

          v113 = 0;
          v125[2] = v39 + 1;
          v40 = &v125[5 * v39];
          v40[4] = v121;
          v40[5] = v35;
          v40[6] = v37;
          v40[7] = v111;
          v40[8] = v118;
          v112 = v8;
          v31 = v129;
          v117 = v129;
          v26 = v109;
          v13 = v109;
          v10 = a3;
        }

        else
        {
          v41 = v26;
          v113 = 0;
          v112 = v8;
          v31 = v129;
          v117 = v129;
          v13 = v26;
        }
      }

      else
      {
        v113 = 0;
        v112 = v17;
        v31 = v129;
        v117 = v129;
        v9 = a2;
        v13 = v121;
      }

LABEL_31:
      v32 = v115;
      goto LABEL_32;
    }

    if (v26)
    {
      goto LABEL_22;
    }

    v9 = a2;
    if (!v121)
    {
      v113 = 0;
      v13 = 0;
      v112 = v17;
      v31 = v129;
      v117 = v129;
      goto LABEL_31;
    }

    v28 = v121;
    [v28 characterRange];
    v29._countAndFlagsBits = a2;
    v29._object = a3;
    v30 = _NSRange.convert(from:to:preserveLength:)(v105, v29, 0);
    v31 = v129;
    v32 = v115;
    if (v33)
    {

      v113 = 0;
      v112 = v119;
      v117 = v129;
LABEL_60:
      v13 = v121;
      goto LABEL_32;
    }

    v75 = _NSRange.contains(_:)(v30);

    if (!v75)
    {
      v113 = 0;
      v112 = v119;
      v117 = v129;
      v9 = a2;
      goto LABEL_60;
    }

    v76 = v28;
    v9 = a2;
    String.subscript.getter();
    v123 = static String._fromSubstring(_:)();
    v99 = v77;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125[2] + 1, 1, v125);
    }

    v79 = v125[2];
    v78 = v125[3];
    if (v79 >= v78 >> 1)
    {
      v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v125);
    }

    v125[2] = v79 + 1;
    v80 = &v125[5 * v79];
    v80[4] = v76;
    v80[5] = v123;
    v80[6] = v99;
    v80[7] = v111;
    v80[8] = v118;
    String.subscript.getter();
    v124 = static String._fromSubstring(_:)();
    v82 = v81;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v84 = v7[2];
    v83 = v7[3];
    if (v84 >= v83 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v7);
    }

    v7[2] = v84 + 1;
    v85 = &v7[5 * v84];
    v85[4] = v124;
    v85[5] = v82;
    v85[6] = v125;
    v85[7] = v108;
    v85[8] = v102;

    v112 = 0;
    v117 = 0;
    v13 = 0;
    v113 = 1;
    v125 = _swiftEmptyArrayStorage;
    v10 = a3;
    v31 = v129;
LABEL_32:
    if (v32 == String.index(before:)() >> 14 && v13)
    {
      if (v32 < v106)
      {
        goto LABEL_86;
      }

      v110 = v26;
      v42 = v7;

      v122 = v13;
      v43 = v13;
      v107 = _NSRange.init(range:in:)(v31, v8, v9, v10);
      v103 = v44;

      v45 = _NSRange.init(range:in:)(v119, v8, v9, v10);
      v47 = v46;
      v116 = v43;
      String.index(after:)();
      String.subscript.getter();
      v48 = static String._fromSubstring(_:)();
      v50 = v49;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125[2] + 1, 1, v125);
      }

      v52 = v125[2];
      v51 = v125[3];
      if (v52 >= v51 >> 1)
      {
        v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v125);
      }

      v125[2] = v52 + 1;
      v53 = &v125[5 * v52];
      v53[4] = v116;
      v53[5] = v48;
      v53[6] = v50;
      v53[7] = v45;
      v53[8] = v47;
      String.index(after:)();
      String.subscript.getter();
      v9 = v54;
      v55 = static String._fromSubstring(_:)();
      v57 = v56;

      v7 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
      }

      v59 = v7[2];
      v58 = v7[3];
      v130 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v130, 1, v7);
      }

      v7[2] = v130;
      v60 = &v7[5 * v59];
      v60[4] = v55;
      v60[5] = v57;
      v60[6] = v125;
      v60[7] = v107;
      v60[8] = v103;
      v139 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v130, 0);
      v61 = 0;
      v62 = v139;
      v8 = (v7 + 7);
      v63 = a6;
      while (v61 < v7[2])
      {
        v9 = v7;
        v65 = *(v8 - 16);
        v64 = *v8;
        v131 = *(v8 - 24);
        v132 = v65;
        v133 = v64;
        closure #4 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(&v131, v63 & 1, &v134);
        v66 = v134;
        v67 = v135;
        v68 = v136;
        v69 = v137;
        v70 = v138;
        v139 = v62;
        v72 = v62[2];
        v71 = v62[3];
        v73 = v62;
        if (v72 >= v71 >> 1)
        {
          v126 = v136;
          v120 = v134;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
          v66 = v120;
          v68 = v126;
          v63 = a6;
          v73 = v139;
        }

        v73[2] = v72 + 1;
        v74 = &v73[7 * v72];
        *(v74 + 2) = v66;
        ++v61;
        v74[6] = v67;
        *(v74 + 7) = v68;
        v74[9] = v69;
        *(v74 + 80) = v70;
        v8 += 40;
        v7 = v9;
        v62 = v73;
        if (v130 == v61)
        {

          v125 = _swiftEmptyArrayStorage;
          v100 = v62;
          v10 = a3;
          v9 = a2;
          v13 = v122;
          goto LABEL_7;
        }
      }

      __break(1u);
      break;
    }

LABEL_7:
    v8 = v114;
    v14 = v114 >> 14;
    v15 = v113;
    v12 = v112;
    if (v114 >> 14 == v104)
    {

      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  swift_once();
LABEL_62:
  __chkstk_darwin();
  UnfairLock.locked<A>(_:)(partial apply for closure #2 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:));
  v87 = v131;
  v88 = v131[2];
  if (v88)
  {
    v89 = 0;
    v90 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v90 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v91 = 7;
    if (((a3 >> 60) & ((v9 & 0x800000000000000) == 0)) != 0)
    {
      v91 = 11;
    }

    v9 = 4 * v90;
    v92 = v91 | (v90 << 16);
    v93 = v131 + 6;
    do
    {
      v95 = v89 + 1;
      v96 = *(v93 - 1);
      if (v89 >= v88 - 1)
      {
        if (v9 == v96 >> 14)
        {
          v94 = *(v93 - 1);
        }

        else
        {
          v94 = v92;
        }
      }

      else
      {
        if (v95 >= v87[2])
        {
          goto LABEL_85;
        }

        if ((*v93 ^ v96) >= 0x4000)
        {
          v94 = *v93;
        }

        else
        {
          v94 = *(v93 - 1);
        }
      }

      specialized closure #1 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(*(v93 - 2), v94, a2, a3, &v140, v8, v7, &v141);
      v93 += 2;
      v89 = v95;
    }

    while (v88 != v95);
  }

  swift_beginAccess();
  v97 = v141;

  return v97;
}

char *specialized static Lyrics.words(for:language:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 words];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsWord, MSVLyricsWord_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13MSVLyricsWordCGMd, &_sSaySo13MSVLyricsWordCGMR);
    v9 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [MSVLyricsWord] and conformance [A], &_sSaySo13MSVLyricsWordCGMd, &_sSaySo13MSVLyricsWordCGMR, &protocol conformance descriptor for [A]);
    v10 = Sequence.exclude(_:)(specialized implicit closure #1 in MSVLyricsLine.primaryVocalWords.getter, 0, v8, v9);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for Lyrics(0);
  v11 = specialized static Lyrics.useSpacesAsWordDelimiter(for:)(a2, a3);
  v12 = specialized static Lyrics.capabilities(for:)(a2, a3);
  v13 = [a1 primaryVocalText];
  v14 = [v13 string];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = [a1 lyricsText];
  v19 = [v18 string];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  [a1 endTime];
  [a1 startTime];
  v23 = v12[2];
  v24 = (v12 + 4);
  do
  {
    v25 = v23;
    if (v23-- == 0)
    {
      break;
    }

    v27 = *v24++;
  }

  while (v27 != 2);
  v28 = v25 != 0;

  v29 = specialized static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(v10, v15, v17, v20, v22, v28, v11 & 1);

  return v29;
}

BOOL specialized static Lyrics.direction(recognizedFrom:)()
{
  v0 = type metadata accessor for Locale.Language();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 dominantLanguageForString:v5];

  if (!v6)
  {
    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Locale.Language.init(identifier:)();
  v7 = Locale.Language.characterDirection.getter();

  (*(v1 + 8))(v3, v0);
  return v7 == 2;
}

void specialized Lyrics.TextLine.BackgroundVocals.init(backgroundVocals:language:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = [a1 subwords];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsWord, MSVLyricsWord_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    [a1 startTime];
    v4 = v15;
    goto LABEL_11;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  [v13 startTime];
  v4 = v14;

LABEL_11:
  v16 = [a1 subwords];
  if (!v16)
  {
LABEL_22:
    [a1 endTime];
    v25 = v26;
    goto LABEL_23;
  }

  v17 = v16;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsWord, MSVLyricsWord_ptr);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (!v19)
  {
LABEL_21:

    goto LABEL_22;
  }

LABEL_14:
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
    return;
  }

  v22 = *(v18 + 8 * v21 + 32);
LABEL_19:
  v23 = v22;

  [v23 endTime];
  v25 = v24;

LABEL_23:
  v27 = specialized static Lyrics.useSpacesAsWordDelimiter(for:)(a2, a3);

  v28 = a1;
  v29 = [v28 lyricsText];
  v30 = [v29 string];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = [v28 characterRange];
  v57 = v35;
  v58 = v34;
  v36 = [v28 lyricsText];

  v37 = [v36 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = specialized static Lyrics.direction(recognizedFrom:)();

  v39 = [v28 subwords];
  if (v39)
  {
    v40 = v39;
    type metadata accessor for Lyrics(0);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsWord, MSVLyricsWord_ptr);
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = [v28 lyricsText];
    v43 = a4;
    v44 = v38;
    v45 = v33;
    v46 = v31;
    v47 = [v42 string];

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = [v28 lyricsText];
    v51 = [v50 string];

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v31 = v46;
    v33 = v45;
    v38 = v44;
    a4 = v43;
    v55 = specialized static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(v41, v56, v49, v52, v54, 0, v27 & 1);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v55 = _swiftEmptyArrayStorage;
  }

  *a4 = v4;
  *(a4 + 8) = v25;
  *(a4 + 16) = v31;
  *(a4 + 24) = v33;
  *(a4 + 32) = v58;
  *(a4 + 40) = v57;
  *(a4 + 48) = v38;
  *(a4 + 56) = v55;
}

void *specialized processLines #1 (_:) in Lyrics.init(identifier:songInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BOOL4 a6, uint64_t a7, uint64_t a8)
{
  v171 = a7;
  v172 = a8;
  v160 = a6;
  v189 = a5;
  v163 = a3;
  v164 = a4;
  v162 = a2;
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v169 = *(v9 - 8);
  v170 = v9;
  __chkstk_darwin();
  v187 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v186 = (&v153 - v11);
  v190 = type metadata accessor for Locale.Language();
  v12 = *(v190 - 8);
  __chkstk_darwin();
  v159 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v155 = &v153 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
  __chkstk_darwin();
  v154 = &v153 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  __chkstk_darwin();
  v173 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v153 - v17;
  __chkstk_darwin();
  v196 = &v153 - v19;
  *&v202[0] = a1;
  KeyPath = swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13MSVLyricsLineCGMd, &_sSaySo13MSVLyricsLineCGMR);
  v22 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [MSVLyricsLine] and conformance [A], &_sSaySo13MSVLyricsLineCGMd, &_sSaySo13MSVLyricsLineCGMR, &protocol conformance descriptor for [A]);
  v23 = Sequence.sorted<A>(by:comparator:)(KeyPath, specialized thunk for @callee_guaranteed (@unowned Double, @unowned Double) -> (@unowned Bool), 0, v21, v22, &protocol witness table for Double);

  if (v23 >> 62)
  {
    goto LABEL_109;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v25 = v190;
  v26 = v196;
  if (v24)
  {
    v166 = v24;
    v167 = objc_opt_self();
    v168 = v23 & 0xC000000000000001;
    v174 = v23;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v23 = v174;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v27 = 0;
    v192 = (v12 + 56);
    v158 = "$_staticText";
    v175 = 0;
    v176 = (v12 + 48);
    v153 = (v12 + 16);
    v161 = (v12 + 8);
    v156 = v23 & 0xFFFFFFFFFFFFFF8;
    v157 = (v12 + 32);
    v165 = v160;
    v28 = &selRef_parent;
    v198 = _swiftEmptyArrayStorage;
    v188 = v18;
    while (1)
    {
      if (v168)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v27 >= *(v156 + 16))
        {
          goto LABEL_106;
        }

        v29 = *(v23 + 8 * v27 + 32);
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
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
          v24 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v183 = v30;
      v199 = v29;
      v31 = [v199 agent];
      if (!v31)
      {
        goto LABEL_19;
      }

      v32 = v31;
      swift_beginAccess();
      v33 = v32;
      specialized Set._Variant.insert(_:)(v200, v33);
      swift_endAccess();

      v34 = [v33 v28[393]];
      if (!v34)
      {

        goto LABEL_19;
      }

      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = v36;
      if (v36 == 0x6E6F73726570 && v38 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v40 = [v33 identifier];
        if (v40)
        {
          v41 = v40;
          v197 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
        }

        else
        {
          v197 = 0;
          v43 = 0;
        }

        v45 = *(v163 + 16);
        if (v45)
        {
          v46 = v27;
          v47 = [v45 identifier];
          if (v47)
          {
            v48 = v47;
            v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v51 = v50;
          }

          else
          {
            v49 = 0;
            v51 = 0;
          }

          v27 = v46;
          v28 = &selRef_parent;
          if (v43)
          {
LABEL_29:
            if (!v51)
            {

              v18 = v188;
              goto LABEL_44;
            }

            if (v197 == v49 && v43 == v51)
            {

              v18 = v188;
            }

            else
            {
              v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v18 = v188;
              if ((v52 & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            goto LABEL_35;
          }
        }

        else
        {
          v49 = 0;
          v51 = 0;
          if (v43)
          {
            goto LABEL_29;
          }
        }

        v18 = v188;
        if (v51)
        {

LABEL_43:

LABEL_44:
          v54 = v164;
          v55 = *(v163 + 16);
          v26 = v196;
          v25 = v190;
          if (v55)
          {
            *(v164 + 16) = (*(v164 + 16) & 1) == 0;
          }

          *(v163 + 16) = v32;
          v56 = v54;

          v44 = *(v56 + 16);
          goto LABEL_47;
        }
      }

LABEL_35:
      if (v39 == 0x70756F7267 && v38 == 0xE500000000000000)
      {

        v182 = 0;
        v26 = v196;
        v25 = v190;
        goto LABEL_48;
      }

      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v26 = v196;
      if (v53)
      {

        v182 = 0;
        v25 = v190;
        goto LABEL_48;
      }

      if (v39 == 0x726568746FLL && v38 == 0xE500000000000000)
      {

        v182 = 1;
        v25 = v190;
        goto LABEL_48;
      }

      v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v25 = v190;
      if (v123)
      {
        v44 = 1;
        goto LABEL_47;
      }

LABEL_19:
      v44 = *(v164 + 16);
LABEL_47:
      v182 = v44;
LABEL_48:
      v57 = [v199 translationKey];
      if (v57)
      {
        v58 = v57;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v180 = v60;
        v181 = v59;
      }

      else
      {
        v180 = 0;
        v181 = 0;
      }

      v184 = v27;
      v61 = [v189 v28[393]];
      v62 = &selRef_primaryVocalText;
      if (v61 != 2)
      {
        v62 = &selRef_lyricsText;
      }

      v63 = v199;
      v64 = [v199 *v62];
      v65 = [v64 string];

      v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v194 = v66;

      v67 = [v63 words];
      if (v67)
      {
        v68 = v67;
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsWord, MSVLyricsWord_ptr);
        v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *&v201[0] = v69;
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13MSVLyricsWordCGMd, &_sSaySo13MSVLyricsWordCGMR);
        v71 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [MSVLyricsWord] and conformance [A], &_sSaySo13MSVLyricsWordCGMd, &_sSaySo13MSVLyricsWordCGMR, &protocol conformance descriptor for [A]);
        v72 = v70;
        v73 = v175;
        v74 = Sequence.exclude(_:)(specialized implicit closure #1 in MSVLyricsLine.primaryVocalWords.getter, 0, v72, v71);
        v175 = v73;
      }

      else
      {
        v74 = _swiftEmptyArrayStorage;
      }

      v75 = swift_allocObject();
      v197 = v75;
      *(v75 + 16) = _swiftEmptyArrayStorage;
      v76 = (v75 + 16);
      v77 = swift_allocObject();
      v77[1] = 0u;
      v78 = v77 + 1;
      v77[2] = 0u;
      v77[3] = 0u;
      v195 = v77;
      v77[4] = 0u;
      v191 = *v192;
      v191(v26, 1, 1, v25);
      v23 = String._bridgeToObjectiveC()();
      v79 = [v167 dominantLanguageForString:v23];

      if (v79)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Locale.Language.init(identifier:)();

LABEL_60:
        v191(v18, 0, 1, v25);
        outlined assign with take of PlaybackIntentDescriptor.IntentType?(v18, v26, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
        goto LABEL_61;
      }

      v80 = [v189 language];
      if (v80)
      {
        v81 = v80;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        Locale.Language.init(identifier:)();
        v26 = v196;
        goto LABEL_60;
      }

LABEL_61:
      if ([v189 v28[393]] == 2)
      {
        v82 = [objc_opt_self() standardUserDefaults];
        v23 = String._bridgeToObjectiveC()();
        v83 = [v82 BOOLForKey:v23];

        if ((v83 & 1) == 0)
        {
          v84 = v196;
          if ((*v176)(v196, 1, v25))
          {
            v85 = 0;
            v86 = 0;
          }

          else
          {
            v87 = v155;
            (*v153)(v155, v84, v25);
            v88 = v154;
            Locale.Language.languageCode.getter();
            v89 = v87;
            v90 = v88;
            (*v161)(v89, v25);
            v91 = type metadata accessor for Locale.LanguageCode();
            v92 = *(v91 - 8);
            if ((*(v92 + 48))(v90, 1, v91) == 1)
            {
              outlined destroy of TaskPriority?(v90, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
              v85 = 0;
              v86 = 0;
            }

            else
            {
              v93 = v90;
              v94 = Locale.LanguageCode.identifier.getter();
              v86 = v95;
              v96 = v93;
              v18 = v188;
              (*(v92 + 8))(v96, v91);
              v85 = v94;
            }

            v25 = v190;
          }

          v97 = v199;
          v23 = specialized static Lyrics.words(for:language:)(v199, v85, v86);

          swift_beginAccess();
          *v76 = v23;

          v98 = [v97 backgroundVocals];
          if (v98)
          {
            v99 = v98;
            v100 = [v189 language];
            if (v100)
            {
              v101 = v100;
              v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v23 = v103;
            }

            else
            {

              v102 = 0;
              v23 = 0;
            }

            specialized Lyrics.TextLine.BackgroundVocals.init(backgroundVocals:language:)(v99, v102, v23, v202);
            v185 = v202[0];
            v177 = v202[3];
            v178 = v202[2];
            v179 = v202[1];
          }

          else
          {
            v185 = 0u;
            v178 = 0u;
            v179 = 0u;
            v177 = 0u;
          }

          swift_beginAccess();
          v104 = v78[1];
          v201[0] = *v78;
          v201[1] = v104;
          v105 = v78[3];
          v201[2] = v78[2];
          v201[3] = v105;
          v106 = v195;
          v107 = v179;
          v195[1] = v185;
          v106[2] = v107;
          v108 = v177;
          v106[3] = v178;
          v106[4] = v108;
          outlined destroy of TaskPriority?(v201, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMR);
        }
      }

      v109 = v173;
      outlined init with copy of TaskPriority?(v196, v173, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
      if ((*v176)(v109, 1, v25) == 1)
      {
        outlined destroy of TaskPriority?(v109, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
        v110 = v160;
      }

      else
      {
        v111 = v159;
        (*v157)(v159, v109, v25);
        v112 = Locale.Language.characterDirection.getter();
        (*v161)(v111, v25);
        v110 = v112 == 2;
      }

      v113 = v199;
      *&v185 = [v199 lineIndex];
      [v113 startTime];
      v115 = v114;
      [v113 endTime];
      v117 = v116;
      if (v74 >> 62)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
LABEL_93:
          v122 = v199;
          [v199 startTime];
          v120 = v124;
          goto LABEL_94;
        }
      }

      else
      {
        v12 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_93;
        }
      }

      if ((v74 & 0xC000000000000001) != 0)
      {
        v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_105;
        }

        v118 = *(v74 + 32);
      }

      v23 = v118;
      [v118 startTime];
      v120 = v119;

      v121 = v12 - 1;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_104;
      }

      if ((v74 & 0xC000000000000001) != 0)
      {
        v122 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v121 & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        if (v121 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_108;
        }

        v122 = *(v74 + 8 * v121 + 32);
      }

LABEL_94:

      [v122 endTime];
      v126 = v125;

      LODWORD(v177) = v198[2] == 0;
      outlined init with copy of TaskPriority?(v196, v18, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
      v127 = swift_allocObject();
      *&v179 = v127;
      v128 = v172;
      *(v127 + 16) = v172;
      *(v127 + 24) = v165;
      v129 = swift_allocObject();
      *&v178 = v129;
      *(v129 + 16) = v128;
      *(v129 + 24) = v110;
      v130 = swift_allocObject();
      v132 = v180;
      v131 = v181;
      *(v130 + 2) = v128;
      *(v130 + 3) = v131;
      v134 = v193;
      v133 = v194;
      *(v130 + 4) = v132;
      *(v130 + 5) = v134;
      *(v130 + 6) = v133;
      v135 = swift_allocObject();
      *(v135 + 2) = v128;
      *(v135 + 3) = v131;
      v136 = v197;
      *(v135 + 4) = v132;
      *(v135 + 5) = v136;
      v137 = swift_allocObject();
      v137[2] = v128;
      v137[3] = v131;
      v138 = v195;
      v137[4] = v132;
      v137[5] = v138;
      v139 = v170;
      v194 = v170[7];
      v140 = v186;
      v191(v186 + v194, 1, 1, v190);
      v140[2] = v185;
      *v140 = v115;
      v140[1] = v117;
      *(v140 + v139[10]) = v120;
      *(v140 + v139[11]) = v126;
      *(v140 + v139[12]) = v177;
      swift_bridgeObjectRetain_n();
      swift_retain_n();

      outlined assign with take of PlaybackIntentDescriptor.IntentType?(v188, v140 + v194, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
      v141 = (v140 + v139[13]);
      *v141 = v131;
      v141[1] = v132;
      *(v140 + v139[8]) = v182;
      *(v140 + v139[9]) = v171;
      v142 = (v140 + v139[14]);
      v143 = v179;
      *v142 = partial apply for closure #2 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:);
      v142[1] = v143;
      v144 = (v140 + v139[15]);
      v145 = v178;
      *v144 = partial apply for closure #3 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:);
      v144[1] = v145;
      v146 = (v140 + v139[16]);
      *v146 = partial apply for closure #4 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:);
      v146[1] = v130;
      v147 = (v140 + v139[17]);
      *v147 = partial apply for closure #5 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:);
      v147[1] = v135;
      v148 = (v140 + v139[18]);
      *v148 = partial apply for closure #6 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:);
      v148[1] = v137;
      outlined init with copy of Lyrics.Translation(v140, v187, type metadata accessor for Lyrics.TextLine);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v198 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v198[2] + 1, 1, v198, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C8TextLineVGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C8TextLineVGMR, type metadata accessor for Lyrics.TextLine);
      }

      v23 = v174;
      v149 = v184;
      v28 = &selRef_parent;
      v12 = v198[2];
      v150 = v198[3];
      v25 = v190;
      v18 = v188;
      v26 = v196;
      if (v12 >= v150 >> 1)
      {
        v198 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v150 > 1), v12 + 1, 1, v198, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C8TextLineVGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C8TextLineVGMR, type metadata accessor for Lyrics.TextLine);
      }

      v151 = v198;
      v198[2] = v12 + 1;
      outlined init with take of Lyrics.TextLine(v187, v151 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v12, type metadata accessor for Lyrics.TextLine);
      outlined destroy of Lyrics.Translation(v186, type metadata accessor for Lyrics.TextLine);
      outlined destroy of TaskPriority?(v26, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);

      v27 = v149 + 1;
      if (v183 == v166)
      {
        goto LABEL_102;
      }
    }
  }

  v198 = _swiftEmptyArrayStorage;
LABEL_102:

  return v198;
}

uint64_t sub_10044ADAC()
{

  return swift_deallocObject();
}

uint64_t sub_10044ADEC()
{

  return swift_deallocObject();
}

void *specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, void (*a2)(_OWORD *__return_ptr, id, uint64_t, uint64_t), uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7LyricsX0C0C23LineTranslationMetadata023_023C7B06612B00822B4518G8EDD9DC67LLVGMd, &_ss18_DictionaryStorageCySS7LyricsX0C0C23LineTranslationMetadata023_023C7B06612B00822B4518G8EDD9DC67LLVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v6 = 0;
  v35 = result;
  v36 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v34 = result + 8;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(v36 + 56);
      v19 = (*(v36 + 48) + 16 * v17);
      v20 = v19[1];
      v42 = *v19;
      v21 = *(v18 + 8 * v17);

      v22 = v21;
      v23 = [a4 language];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      a2(v40, v22, v24, v26);

      result = v35;
      *(v34 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v27 = (v35[6] + 16 * v17);
      *v27 = v42;
      v27[1] = v20;
      v28 = v35[7] + 88 * v17;
      v29 = v40[1];
      *v28 = v40[0];
      *(v28 + 16) = v29;
      *(v28 + 80) = v41;
      v30 = v40[4];
      *(v28 + 48) = v40[3];
      *(v28 + 64) = v30;
      *(v28 + 32) = v40[2];
      v31 = v35[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v35[2] = v33;
      v12 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v39 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized static Lyrics.vocalistType(for:)(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  v95 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() > 1)
    {
      v93 = v2;
      v90 = 0;
      v3 = &_swiftEmptySetSingleton;
      v103 = &_swiftEmptySetSingleton;

      __CocoaSet.makeIterator()();
      v4 = __CocoaSet.Iterator.next()();
      if (v4)
      {
        v5 = v4;
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent, MSVLyricsAgent_ptr);
        v6 = v5;
        v7 = 0x6E6F73726570;
        do
        {
          v97 = v6;
          swift_dynamicCast();
          v8 = [v98 type];
          if (!v8)
          {
LABEL_5:

            goto LABEL_6;
          }

          v9 = v8;
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v11;

          if (v10 == 0x6E6F73726570 && v12 == 0xE600000000000000)
          {
          }

          else
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v14 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v15 = v98;
          v16 = *(v3 + 16);
          if (*(v3 + 24) <= v16)
          {
            specialized _NativeSet.resize(capacity:)(v16 + 1);
          }

          v3 = v103;
          v17 = NSObject._rawHashValue(seed:)(v103[5]);
          v18 = (v103 + 7);
          v19 = -1 << *(v103 + 32);
          v20 = v17 & ~v19;
          v21 = v20 >> 6;
          if (((-1 << v20) & ~v103[(v20 >> 6) + 7]) != 0)
          {
            v22 = __clz(__rbit64((-1 << v20) & ~v103[(v20 >> 6) + 7])) | v20 & 0x7FFFFFFFFFFFFFC0;
            goto LABEL_27;
          }

          v23 = 0;
          v24 = (63 - v19) >> 6;
          do
          {
            if (++v21 == v24 && (v23 & 1) != 0)
            {
              __break(1u);
LABEL_127:
              __break(1u);
              goto LABEL_128;
            }

            v25 = v21 == v24;
            if (v21 == v24)
            {
              v21 = 0;
            }

            v23 |= v25;
            v26 = *&v18[8 * v21];
          }

          while (v26 == -1);
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
LABEL_27:
          *&v18[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
          *(*(v3 + 48) + 8 * v22) = v15;
          ++*(v3 + 16);
LABEL_6:
          v6 = __CocoaSet.Iterator.next()();
        }

        while (v6);
      }

      v38 = v95;
      if ((v3 & 0xC000000000000001) == 0)
      {
        goto LABEL_56;
      }

LABEL_35:
      v91 = __CocoaSet.count.getter();
      goto LABEL_57;
    }

    return 0;
  }

  if (*(a1 + 16) <= 1uLL)
  {
    return 0;
  }

  v93 = 0;
  v90 = 0;
  v27 = *(a1 + 32);
  v28 = v27 & 0x3F;
  v91 = ((1 << v27) + 63) >> 6;
  v15 = 8 * v91;

  v29 = v28 > 0xD;
  v7 = a1;
  if (v29)
  {
    goto LABEL_130;
  }

LABEL_30:
  v89 = &v89;
  __chkstk_darwin();
  v92 = &v89 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v92, v15);
  v94 = 0;
  v30 = 0;
  v32 = *(v7 + 56);
  v7 += 56;
  v31 = v32;
  v33 = 1 << *(v7 - 24);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v31;
  v36 = (v33 + 63) >> 6;
  do
  {
    do
    {
      while (1)
      {
        if (!v35)
        {
          v40 = v30;
          while (1)
          {
            v30 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_129;
            }

            if (v30 >= v36)
            {
              goto LABEL_55;
            }

            v41 = *(v7 + 8 * v30);
            ++v40;
            if (v41)
            {
              v39 = __clz(__rbit64(v41));
              v35 = (v41 - 1) & v41;
              goto LABEL_44;
            }
          }
        }

        v39 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
LABEL_44:
        v42 = v39 | (v30 << 6);
        v15 = *(*(v95 + 48) + 8 * v42);
        v43 = [v15 type];
        if (v43)
        {
          break;
        }
      }

      v44 = v43;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      if (v45 == 0x6E6F73726570 && v47 == 0xE600000000000000)
      {

        break;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    while ((v49 & 1) == 0);
    *&v92[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
  }

  while (!__OFADD__(v94++, 1));
  __break(1u);
LABEL_55:
  v38 = v95;
  v3 = specialized _NativeSet.extractSubset(using:count:)(v92, v91, v94, v95);
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

LABEL_56:
  while (2)
  {
    v91 = *(v3 + 16);
LABEL_57:

    if (v93)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent, MSVLyricsAgent_ptr);
      lazy protocol witness table accessor for type MSVLyricsAgent and conformance NSObject();
      Set.Iterator.init(_cocoa:)();
      v38 = v98;
      v94 = v99;
      v15 = v100;
      v7 = v101;
      v51 = v102;
    }

    else
    {
      v52 = -1 << *(v38 + 32);
      v53 = *(v38 + 56);
      v94 = v38 + 56;
      v15 = ~v52;
      v54 = -v52;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      else
      {
        v55 = -1;
      }

      v51 = v55 & v53;

      v7 = 0;
    }

    v92 = v15;
    v56 = (v15 + 64) >> 6;
    while (1)
    {
      while (1)
      {
        if (v38 < 0)
        {
          v60 = __CocoaSet.Iterator.next()();
          if (!v60 || (v97 = v60, type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent, MSVLyricsAgent_ptr), swift_dynamicCast(), (v59 = v103) == 0))
          {
LABEL_81:
            outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v38);
            LODWORD(v92) = 1;
            goto LABEL_82;
          }
        }

        else
        {
          v57 = v7;
          for (i = v51; !i; ++v57)
          {
            v7 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_127;
            }

            if (v7 >= v56)
            {
              goto LABEL_81;
            }

            i = *(v94 + 8 * v7);
          }

          v51 = (i - 1) & i;
          v59 = *(*(v38 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(i)))));
          if (!v59)
          {
            goto LABEL_81;
          }
        }

        v61 = [v59 type];
        if (v61)
        {
          break;
        }
      }

      v62 = v61;
      v63 = v38;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      if (v15 == 0x70756F7267 && v65 == 0xE500000000000000)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v38 = v63;
      if (v15)
      {
        goto LABEL_118;
      }
    }

    v38 = v63;
LABEL_118:
    outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v38);
    LODWORD(v92) = 0;
LABEL_82:
    v67 = v95;
    if (v93)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent, MSVLyricsAgent_ptr);
      lazy protocol witness table accessor for type MSVLyricsAgent and conformance NSObject();
      Set.Iterator.init(_cocoa:)();
      v67 = v103;
      v94 = v104;
      v7 = v105;
      v68 = v106;
      v69 = v107;
    }

    else
    {
      v70 = -1 << *(v95 + 32);
      v71 = *(v95 + 56);
      v94 = v95 + 56;
      v7 = ~v70;
      v72 = -v70;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      else
      {
        v73 = -1;
      }

      v69 = v73 & v71;

      v68 = 0;
    }

    v95 = v7;
    v74 = (v7 + 64) >> 6;
LABEL_90:
    if (v67 < 0)
    {
      v78 = __CocoaSet.Iterator.next()();
      if (!v78 || (v96 = v78, type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent, MSVLyricsAgent_ptr), swift_dynamicCast(), (v77 = v97) == 0))
      {
LABEL_106:
        outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v67);
        if (v91 == 2)
        {
          v85 = 1;
        }

        else
        {
          v85 = 2;
        }

        if (v91 == 1)
        {
          v85 = 0;
        }

        if (v91 >= 3)
        {
          v86 = 2;
        }

        else
        {
          v86 = 0x10000u >> (8 * v91);
        }

        if (v92)
        {
          return v85;
        }

        else
        {
          return v86;
        }
      }
    }

    else
    {
      v75 = v68;
      v76 = v69;
      if (!v69)
      {
        while (1)
        {
          v68 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            break;
          }

          if (v68 >= v74)
          {
            goto LABEL_106;
          }

          v76 = *(v94 + 8 * v68);
          ++v75;
          if (v76)
          {
            goto LABEL_95;
          }
        }

LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
        {
          v87 = swift_slowAlloc();
          v88 = v90;
          v3 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo14MSVLyricsAgentCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So14iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v87, v91, v7, closure #1 in static Lyrics.vocalistType(for:));
          v90 = v88;

          v38 = v7;
          if ((v3 & 0xC000000000000001) == 0)
          {
            continue;
          }

          goto LABEL_35;
        }

        goto LABEL_30;
      }

LABEL_95:
      v69 = (v76 - 1) & v76;
      v77 = *(*(v67 + 48) + ((v68 << 9) | (8 * __clz(__rbit64(v76)))));
      if (!v77)
      {
        goto LABEL_106;
      }
    }

    break;
  }

  v79 = [v77 type];
  if (!v79)
  {

    goto LABEL_90;
  }

  v80 = v79;
  v7 = v67;
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  if (v81 != 0x726568746FLL || v83 != 0xE500000000000000)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v67 = v7;
    if (v15)
    {
      goto LABEL_120;
    }

    goto LABEL_90;
  }

  v67 = v7;
LABEL_120:
  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v67);
  if (v92)
  {
    if (v91 >= 3)
    {
      return 2;
    }

    else
    {
      return 0x10200u >> (8 * v91);
    }
  }

  else if (v91 == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t outlined init with copy of Lyrics.Translation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Lyrics.Translation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10044BB98()
{

  return swift_deallocObject();
}

_BYTE **partial apply for closure #1 in OSLogArguments.append(_:)(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

uint64_t sub_10044BD1C()
{

  return swift_deallocObject();
}

void partial apply for closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(v3 + 16))(a1, a2);
  v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

uint64_t specialized _arrayDescription<A>(for:)(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v4 = a1[4];
    v3 = a1[5];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3, &_ss23_ContiguousArrayStorageCyypGMR_3);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1004F2400;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;

    debugPrint<A>(_:separator:terminator:to:)();

    v6 = v1 - 1;
    if (v1 != 1)
    {
      v7 = a1 + 7;
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;

        v10._countAndFlagsBits = 8236;
        v10._object = 0xE200000000000000;
        String.append(_:)(v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3, &_ss23_ContiguousArrayStorageCyypGMR_3);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1004F2400;
        *(v11 + 56) = &type metadata for String;
        *(v11 + 32) = v9;
        *(v11 + 40) = v8;

        debugPrint<A>(_:separator:terminator:to:)();

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  v12._countAndFlagsBits = 93;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 91;
}

uint64_t outlined init with take of Lyrics.TextLine(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t _sS2SSysWl_2()
{
  result = _sS2SSysWL_2;
  if (!_sS2SSysWL_2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_sS2SSysWL_2);
  }

  return result;
}

unint64_t _s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWl_1()
{
  result = _s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWL_1;
  if (!_s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWL_1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWL_1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.Word.Emphasis and conformance Lyrics.Word.Emphasis()
{
  result = lazy protocol witness table cache variable for type Lyrics.Word.Emphasis and conformance Lyrics.Word.Emphasis;
  if (!lazy protocol witness table cache variable for type Lyrics.Word.Emphasis and conformance Lyrics.Word.Emphasis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.Word.Emphasis and conformance Lyrics.Word.Emphasis);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.Word and conformance Lyrics.Word()
{
  result = lazy protocol witness table cache variable for type Lyrics.Word and conformance Lyrics.Word;
  if (!lazy protocol witness table cache variable for type Lyrics.Word and conformance Lyrics.Word)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.Word and conformance Lyrics.Word);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.Syllable and conformance Lyrics.Syllable()
{
  result = lazy protocol witness table cache variable for type Lyrics.Syllable and conformance Lyrics.Syllable;
  if (!lazy protocol witness table cache variable for type Lyrics.Syllable and conformance Lyrics.Syllable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.Syllable and conformance Lyrics.Syllable);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Locale and conformance Locale(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Lyrics.LyricsType and conformance Lyrics.LyricsType()
{
  result = lazy protocol witness table cache variable for type Lyrics.LyricsType and conformance Lyrics.LyricsType;
  if (!lazy protocol witness table cache variable for type Lyrics.LyricsType and conformance Lyrics.LyricsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.LyricsType and conformance Lyrics.LyricsType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.VocalistsType and conformance Lyrics.VocalistsType()
{
  result = lazy protocol witness table cache variable for type Lyrics.VocalistsType and conformance Lyrics.VocalistsType;
  if (!lazy protocol witness table cache variable for type Lyrics.VocalistsType and conformance Lyrics.VocalistsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.VocalistsType and conformance Lyrics.VocalistsType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.Translation.Kind and conformance Lyrics.Translation.Kind()
{
  result = lazy protocol witness table cache variable for type Lyrics.Translation.Kind and conformance Lyrics.Translation.Kind;
  if (!lazy protocol witness table cache variable for type Lyrics.Translation.Kind and conformance Lyrics.Translation.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.Translation.Kind and conformance Lyrics.Translation.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.AgentAlignment and conformance Lyrics.AgentAlignment()
{
  result = lazy protocol witness table cache variable for type Lyrics.AgentAlignment and conformance Lyrics.AgentAlignment;
  if (!lazy protocol witness table cache variable for type Lyrics.AgentAlignment and conformance Lyrics.AgentAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.AgentAlignment and conformance Lyrics.AgentAlignment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.Direction and conformance Lyrics.Direction()
{
  result = lazy protocol witness table cache variable for type Lyrics.Direction and conformance Lyrics.Direction;
  if (!lazy protocol witness table cache variable for type Lyrics.Direction and conformance Lyrics.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.Direction and conformance Lyrics.Direction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.Capability and conformance Lyrics.Capability()
{
  result = lazy protocol witness table cache variable for type Lyrics.Capability and conformance Lyrics.Capability;
  if (!lazy protocol witness table cache variable for type Lyrics.Capability and conformance Lyrics.Capability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.Capability and conformance Lyrics.Capability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.AudioAttribute and conformance Lyrics.AudioAttribute()
{
  result = lazy protocol witness table cache variable for type Lyrics.AudioAttribute and conformance Lyrics.AudioAttribute;
  if (!lazy protocol witness table cache variable for type Lyrics.AudioAttribute and conformance Lyrics.AudioAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.AudioAttribute and conformance Lyrics.AudioAttribute);
  }

  return result;
}

void type metadata completion function for Lyrics(uint64_t a1)
{
  type metadata accessor for Locale.Language?(319, &lazy cache variable for type metadata for Locale.Language?, &type metadata accessor for Locale.Language);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Locale.Language?(319, &_s7LyricsX0A0C11TranslationVSgML_0, type metadata accessor for Lyrics.Translation);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Locale.Language?(319, &_s7LyricsX0A0C15TransliterationVSgML_0, type metadata accessor for Lyrics.Transliteration);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Locale.Language?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy49_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.Word(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for Lyrics.Word(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8_2(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

__n128 __swift_memcpy56_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.Syllable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for Lyrics.Syllable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10044C8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10044C9B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for Lyrics.TextLine(uint64_t a1)
{
  type metadata accessor for Locale.Language?(319, &lazy cache variable for type metadata for Locale.Language?, &type metadata accessor for Locale.Language);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Lyrics.Capability](319, &lazy cache variable for type metadata for [Lyrics.Capability], &type metadata for Lyrics.Capability, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Lyrics.Capability](319, &_sSSSgML_1, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        _syycMa_2();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [Lyrics.Capability](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t _syycMa_2()
{
  result = _syycML_2;
  if (!_syycML_2)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &_syycML_2);
  }

  return result;
}

__n128 __swift_memcpy64_8_1(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for Lyrics.TextLine.BackgroundVocals(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for Lyrics.TextLine.BackgroundVocals(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8_2(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.InstrumentalLine(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Lyrics.InstrumentalLine(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8_3(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.SongwritersLine(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Lyrics.SongwritersLine(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for Lyrics.Translation(uint64_t a1)
{
  type metadata accessor for Locale.Language();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : Lyrics.LineTranslationMetadata]();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10044D004(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Locale.Language();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10044D0C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Locale.Language();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Lyrics.Translation.Line(uint64_t a1)
{
  type metadata accessor for [Lyrics.Capability](319, &_sSSSgML_1, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Locale.Language();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_199Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
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

uint64_t __swift_store_extra_inhabitant_index_200Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale.Language();
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

void type metadata completion function for Lyrics.Transliteration(uint64_t a1)
{
  type metadata accessor for Locale.Language();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : Lyrics.LineTranslationMetadata]();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7LyricsX0A0C8TextLineV16BackgroundVocalsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.LineTranslationMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for Lyrics.LineTranslationMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC011TextContentF0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLOGMd, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC011TextContentF0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10044D740()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 28);
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10044D948()
{
  v1 = *(type metadata accessor for Lyrics.Transliteration(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for Locale.Language();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t objectdestroy_266Tm()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC_Tt0g5Tf4g_n(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for SyncedLyricsLineView(0);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for SyncedLyricsLineView(0);
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t outlined assign with take of Lyrics.Translation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10044DE60()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type MSVLyricsAgent and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type MSVLyricsAgent and conformance NSObject;
  if (!lazy protocol witness table cache variable for type MSVLyricsAgent and conformance NSObject)
  {
    type metadata accessor for UIAction(255, &lazy cache variable for type metadata for MSVLyricsAgent, MSVLyricsAgent_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MSVLyricsAgent and conformance NSObject);
  }

  return result;
}

BOOL partial apply for closure #3 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(id *a1)
{
  return partial apply for closure #3 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(a1);
}

{
  return closure #1 in closure #1 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

id sub_10044DF70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

uint64_t sub_10044DFB8()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10044DFFC()
{

  return swift_deallocObject();
}

uint64_t sub_10044E054()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_295Tm()
{

  return swift_deallocObject();
}

uint64_t *LyricsOptionsManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static LyricsOptionsManager.shared;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LyricsOptionsManager.Option()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100519430[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LyricsOptionsManager.Option(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100519430[v2]);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LyricsOptionsManager.Option@<X0>(Swift::Int *a1@<X0>, LyricsX::LyricsOptionsManager::Option_optional *a2@<X8>)
{
  result = specialized LyricsOptionsManager.Option.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t LyricsOptionsManager.Observer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *one-time initialization function for shared()
{
  type metadata accessor for LyricsOptionsManager();
  v0 = swift_allocObject();
  result = LyricsOptionsManager.init()(v0);
  static LyricsOptionsManager.shared = v0;
  return result;
}

uint64_t static LyricsOptionsManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

double LyricsOptionsManager.bag.didset()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = [v2 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
    if (v3)
    {
      v4 = v3;
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v5 + 16) && (v6 = v0, v7 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v8 & 1) != 0))
      {
        outlined init with copy of Any(*(v5 + 56) + 32 * v7, &v23);
        outlined destroy of AnyHashable(v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs11AnyHashableVGMd_0, &_sSDySSs11AnyHashableVGMR_0);
        if (swift_dynamicCast())
        {
          if (!_sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(6, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v9 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x80000001004D6760);
              if (v10)
              {
                outlined init with copy of AnyHashable(MEMORY[0xD00000000000004D] + 40 * v9, v22);
                if (swift_dynamicCast())
                {
                  v22[0] = *(v0 + 40);
                  if (v23)
                  {

                    specialized Set._Variant.insert(_:)(&v23, 0);
                  }

                  else
                  {

                    specialized Set._Variant.remove(_:)(0);
                  }

                  v11 = *(v0 + 40);
                  *(v0 + 40) = v22[0];
                  LyricsOptionsManager.currentOptions.didset(v11);
                }
              }
            }
          }

          if (!_sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(7, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v12 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000020, 0x80000001004D6780);
              if (v13)
              {
                outlined init with copy of AnyHashable(MEMORY[0xD00000000000004D] + 40 * v12, v22);
                if (swift_dynamicCast())
                {
                  v22[0] = *(v0 + 40);
                  if (v23)
                  {

                    specialized Set._Variant.insert(_:)(&v23, 1);
                  }

                  else
                  {

                    specialized Set._Variant.remove(_:)(1);
                  }

                  v14 = *(v0 + 40);
                  *(v0 + 40) = v22[0];
                  LyricsOptionsManager.currentOptions.didset(v14);
                }
              }
            }
          }

          if (_sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(8, *(v0 + 40)))
          {
            goto LABEL_35;
          }

          if (!MEMORY[0xD000000000000025])
          {
            goto LABEL_35;
          }

          v15 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x80000001004D67B0);
          if ((v16 & 1) == 0)
          {
            goto LABEL_35;
          }

          outlined init with copy of AnyHashable(MEMORY[0xD00000000000004D] + 40 * v15, v22);

          if (swift_dynamicCast())
          {
            v18 = v23;
            v17 = v24;
            if (v23 == 0x73636972796CLL && v24 == 0xE600000000000000)
            {

              v19 = v6;
LABEL_33:
              v22[0] = *(v19 + 40);

              specialized Set._Variant.remove(_:)(3);
LABEL_34:
              v20 = *(v19 + 40);
              *(v19 + 40) = v22[0];
              LyricsOptionsManager.currentOptions.didset(v20);
LABEL_35:

              return result;
            }

            v19 = v6;
            if (_stringCompareWithSmolCheck(_:_:expecting:)())
            {

              goto LABEL_33;
            }

            if (v18 == 0x74696C736E617274 && v17 == 0xEF6E6F6974617265)
            {

LABEL_40:
              v22[0] = *(v19 + 40);

              specialized Set._Variant.insert(_:)(&v23, 3);
              goto LABEL_34;
            }

            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v21)
            {
              goto LABEL_40;
            }
          }
        }
      }

      else
      {

        outlined destroy of AnyHashable(v22);
      }
    }
  }

  return result;
}

void LyricsOptionsManager.bag.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;

  LyricsOptionsManager.bag.didset();
}

double (*LyricsOptionsManager.bag.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return LyricsOptionsManager.bag.modify;
}

double LyricsOptionsManager.bag.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return LyricsOptionsManager.bag.didset();
  }

  return result;
}

void LyricsOptionsManager.currentOptions.didset(uint64_t a1)
{
  if ((_sSh2eeoiySbShyxG_ABtFZ7LyricsX0B14OptionsManagerC6OptionO_Tt1g5(*(v1 + 40), a1) & 1) == 0)
  {
    v2 = *(v1 + 40);
    v5 = *(v2 + 56);
    v4 = v2 + 56;
    v3 = v5;
    v6 = 1 << *(*(v1 + 40) + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v3;
    v9 = (v6 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v10 = 0;
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2 = _swiftEmptyArrayStorage;
    if (v8)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_2, &_sSaySSGMR_2);
        _sSaySSGSayxGSKsWl_2();
        BidirectionalCollection<>.joined(separator:)();

        v19 = [objc_opt_self() standardUserDefaults];
        v20 = String._bridgeToObjectiveC()();

        v21 = String._bridgeToObjectiveC()();
        [v19 setObject:v20 forKey:v21];

        return;
      }

      v8 = *(v4 + 8 * v12);
      ++v10;
      if (v8)
      {
        v10 = v12;
        do
        {
LABEL_9:
          v13 = dispatch thunk of CustomStringConvertible.description.getter();
          v15 = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2);
          }

          v17 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2 + 2);
          v16 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2 + 3);
          if (v17 >= v16 >> 1)
          {
            New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2((v16 > 1), v17 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2);
          }

          v8 &= v8 - 1;
          *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2 + 2) = v17 + 1;
          v18 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2[16 * v17];
          *(v18 + 4) = v13;
          *(v18 + 5) = v15;
        }

        while (v8);
      }
    }

    __break(1u);
  }
}

void *LyricsOptionsManager.init()(uint64_t a1)
{
  v2 = v1;
  v1[2] = 0;
  v3 = type metadata accessor for LyricsOptionsManager.Observer();
  v1[3] = WeakArray.init(_:)(_swiftEmptyArrayStorage, v3);
  v1[4] = 0;
  v1[5] = &_swiftEmptySetSingleton;
  type metadata accessor for UIAction(0, &_sSo14NSUserDefaultsCML_1, NSUserDefaults_ptr);
  strcpy(v8, "lyricsOptions");
  v8[7] = -4864;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = _sS2SSysWl_2();

  v6 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v8, 0, 0, partial apply for closure #1 in LyricsOptionsManager.init(), v4, &type metadata for String, v5);

  v2[4] = v6;

  LyricsOptionsManager.update()();
  return v2;
}

double closure #1 in LyricsOptionsManager.init()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 40);

    LyricsOptionsManager.update()();
    swift_beginAccess();
    v6 = *(v4 + 24);
    v7 = type metadata accessor for LyricsOptionsManager.Observer();

    v10 = static MPMediaLibraryFilteringOptions.none.getter();
    while (v10 != WeakArray.endIndex.getter(v6, v7, v8, v9))
    {
      v12 = WeakArray.subscript.getter(v10, v6, v7, v11);
      v10 = WeakArray.index(after:)(v10);
      if (v12)
      {
        v13 = *(v12 + 16);

        v13(v5);
      }
    }
  }

  return result;
}

void LyricsOptionsManager.update()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v45 = v3;
  v46 = v5;
  _sS2SSysWl_2();
  v6 = StringProtocol.components<A>(separatedBy:)();

  v7 = *(v6 + 16);
  if (!v7)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_100:

    v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7LyricsX0B14OptionsManagerC6OptionO_SayAHGTt0g5Tf4g_n(v9);

    v43 = *(v44 + 40);
    *(v44 + 40) = v42;
    LyricsOptionsManager.currentOptions.didset(v43);

    return;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v8 < *(v6 + 16))
  {
    v10 = (v6 + 32 + 16 * v8);
    v11 = *v10;
    v12 = v10[1];
    ++v8;
    v13 = HIBYTE(v12) & 0xF;
    v14 = v11 & 0xFFFFFFFFFFFFLL;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v15 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {
      goto LABEL_7;
    }

    if ((v12 & 0x1000000000000000) == 0)
    {
      if ((v12 & 0x2000000000000000) != 0)
      {
        v45 = v11;
        v46 = v12 & 0xFFFFFFFFFFFFFFLL;
        if (v11 == 43)
        {
          if (!v13)
          {
            goto LABEL_102;
          }

          if (--v13)
          {
            v18 = 0;
            v28 = &v45 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v11 == 45)
        {
          if (!v13)
          {
            goto LABEL_104;
          }

          if (--v13)
          {
            v18 = 0;
            v22 = &v45 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v24 - v23;
              if (__OFSUB__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v13)
        {
          v18 = 0;
          v33 = &v45;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            v33 = (v33 + 1);
            if (!--v13)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else
      {
        if ((v11 & 0x1000000000000000) != 0)
        {
          v16 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v16 = _StringObject.sharedUTF8.getter();
        }

        v17 = *v16;
        if (v17 == 43)
        {
          if (v14 < 1)
          {
            goto LABEL_105;
          }

          v13 = v14 - 1;
          if (v14 != 1)
          {
            v18 = 0;
            if (!v16)
            {
              goto LABEL_61;
            }

            v25 = v16 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v17 == 45)
        {
          if (v14 < 1)
          {
            goto LABEL_103;
          }

          v13 = v14 - 1;
          if (v14 != 1)
          {
            v18 = 0;
            if (v16)
            {
              v19 = v16 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_69;
                }

                v21 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_69;
                }

                v18 = v21 - v20;
                if (__OFSUB__(v21, v20))
                {
                  goto LABEL_69;
                }

                ++v19;
                if (!--v13)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_61:
            LOBYTE(v13) = 0;
LABEL_70:
            if (v13)
            {
              goto LABEL_7;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (!v14)
          {
            goto LABEL_69;
          }

          v18 = 0;
          if (!v16)
          {
            goto LABEL_61;
          }

          while (1)
          {
            v31 = *v16 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v16;
            if (!--v14)
            {
              goto LABEL_61;
            }
          }
        }
      }

LABEL_69:
      v18 = 0;
      LOBYTE(v13) = 1;
      goto LABEL_70;
    }

    specialized _parseInteger<A, B>(ascii:radix:)(v11, v12, 10);
    v18 = v39;
    v41 = v40;

    if (v41)
    {
      goto LABEL_7;
    }

LABEL_71:
    if (v18 > 4)
    {
      if (v18 <= 6)
      {
        if (v18 == 5)
        {
          v36 = 5;
        }

        else
        {
          v36 = 6;
        }

        goto LABEL_92;
      }

      switch(v18)
      {
        case 7:
          v36 = 7;
          goto LABEL_92;
        case 8:
          v36 = 8;
          goto LABEL_92;
        case 1000:
          v36 = 9;
LABEL_92:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
          }

          v38 = *(v9 + 2);
          v37 = *(v9 + 3);
          if (v38 >= v37 >> 1)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v9);
          }

          *(v9 + 2) = v38 + 1;
          v9[v38 + 32] = v36;
          break;
      }
    }

    else
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v36 = 2;
        }

        else if (v18 == 3)
        {
          v36 = 3;
        }

        else
        {
          v36 = 4;
        }

        goto LABEL_92;
      }

      if (!v18)
      {
        v36 = 0;
        goto LABEL_92;
      }

      if (v18 == 1)
      {
        v36 = 1;
        goto LABEL_92;
      }
    }

LABEL_7:
    if (v8 == v7)
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
}

uint64_t LyricsOptionsManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LyricsOptionsManager.Observer();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities9WeakArrayVy7LyricsX0E14OptionsManagerC8ObserverCGMd, &_s14MusicUtilities9WeakArrayVy7LyricsX0E14OptionsManagerC8ObserverCGMR);
  WeakArray.append(_:)(v4, v5);
  swift_endAccess();
  return v4;
}

Swift::Void __swiftcall LyricsOptionsManager.insert(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  v2 = a1;
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    specialized Set._Variant.insert(_:)(&v8, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    LyricsOptionsManager.currentOptions.didset(v5);
  }

  v6 = *(v1 + 40);

  specialized Set._Variant.insert(_:)(&v8, v2);
  v3 = *(v1 + 40);
  *(v1 + 40) = v6;
  LyricsOptionsManager.currentOptions.didset(v3);
}

Swift::Void __swiftcall LyricsOptionsManager.remove(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    specialized Set._Variant.insert(_:)(&v6, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    LyricsOptionsManager.currentOptions.didset(v5);
  }

  v7 = *(v1 + 40);

  specialized Set._Variant.remove(_:)(a1);
  v3 = *(v1 + 40);
  *(v1 + 40) = v7;
  LyricsOptionsManager.currentOptions.didset(v3);
}

Swift::Bool __swiftcall LyricsOptionsManager.contains(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 >= LyricsX_LyricsOptionsManager_Option_debugMode)
  {
    v2 = a1;
    has_internal_content = os_variant_has_internal_content();
    a1 = v2;
    if (!has_internal_content)
    {
      return 0;
    }
  }

  v4 = *(v1 + 40);

  return _sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(a1, v4);
}

uint64_t LyricsOptionsManager.isDefaultScriptSupported(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6ScriptVSgMd_0, &_s10Foundation6LocaleV6ScriptVSgMR_0);
  __chkstk_darwin();
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v49 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
  __chkstk_darwin();
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v49 - v9;
  v11 = type metadata accessor for Locale.Language();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(v1 + 16);
  if (!v15)
  {
    return 1;
  }

  v16 = [v15 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
  if (!v16)
  {
    return 1;
  }

  v58 = v4;
  v59 = a1;
  v17 = v16;
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = 0xD000000000000015;
  v61 = 0x80000001004D6690;
  AnyHashable.init<A>(_:)();
  if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(&v62), (v20 & 1) != 0))
  {
    outlined init with copy of Any(*(v18 + 56) + 32 * v19, v64);
    outlined destroy of AnyHashable(&v62);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs11AnyHashableVGMd_0, &_sSDySSs11AnyHashableVGMR_0);
    if (swift_dynamicCast())
    {
      v21 = v60;
      if (!*(v60 + 16) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001004D66B0), (v23 & 1) == 0))
      {
LABEL_42:

        return 1;
      }

      outlined init with copy of AnyHashable(*(v21 + 56) + 40 * v22, &v62);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_2, &_sSaySSGMR_2);
      if (swift_dynamicCast())
      {
        result = v64[0];
        v51 = *(v64[0] + 16);
        if (v51)
        {
          v25 = 0;
          v49 = (v12 + 8);
          v26 = v64[0] + 40;
          v50 = v64[0];
          while (1)
          {
            v27 = *(result + 16);
            v56 = v25;
            if (v25 >= v27)
            {
              __break(1u);
              return result;
            }

            v55 = v26;

            Locale.Language.init(identifier:)();
            Locale.Language.languageCode.getter();
            v28 = type metadata accessor for Locale.LanguageCode();
            v29 = *(v28 - 8);
            v57 = *(v29 + 48);
            v30 = v57(v10, 1, v28);
            v52 = v29;
            if (v30 == 1)
            {
              outlined destroy of TaskPriority?(v10, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
              v54 = 0;
              v31 = 0;
            }

            else
            {
              v32 = Locale.LanguageCode.identifier.getter();
              v31 = v33;
              (*(v29 + 8))(v10, v28);
              v54 = v32;
              if (v32 == 26746 && v31 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v53 = v31;
                Locale.Language.script.getter();
                v34 = type metadata accessor for Locale.Script();
                v35 = *(v34 - 8);
                if ((*(v35 + 48))(v6, 1, v34) == 1)
                {
                  outlined destroy of TaskPriority?(v6, &_s10Foundation6LocaleV6ScriptVSgMd_0, &_s10Foundation6LocaleV6ScriptVSgMR_0);
                  v31 = v53;
                }

                else
                {

                  v37 = Locale.Script.identifier.getter();
                  v53 = v38;
                  v54 = v37;
                  (*(v35 + 8))(v6, v34);
                  v62 = 2975866;
                  v63 = 0xE300000000000000;
                  v39._countAndFlagsBits = v54;
                  v39._object = v53;
                  String.append(_:)(v39);

                  v31 = v63;
                  v54 = v62;
                }
              }
            }

            Locale.Language.languageCode.getter();
            if (v57(v8, 1, v28) == 1)
            {
              break;
            }

            v40 = Locale.LanguageCode.identifier.getter();
            v36 = v41;
            (*(v52 + 8))(v8, v28);
            if (v40 == 26746 && v36 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v57 = v40;
              v53 = v31;
              v42 = v58;
              Locale.Language.script.getter();
              v43 = type metadata accessor for Locale.Script();
              v44 = *(v43 - 8);
              if ((*(v44 + 48))(v42, 1, v43) == 1)
              {
                outlined destroy of TaskPriority?(v42, &_s10Foundation6LocaleV6ScriptVSgMd_0, &_s10Foundation6LocaleV6ScriptVSgMR_0);
                v31 = v53;
                v40 = v57;
              }

              else
              {

                v57 = Locale.Script.identifier.getter();
                v46 = v45;
                (*(v44 + 8))(v42, v43);
                v62 = 2975866;
                v63 = 0xE300000000000000;
                v47._countAndFlagsBits = v57;
                v47._object = v46;
                String.append(_:)(v47);

                v40 = v62;
                v36 = v63;
                v31 = v53;
              }
            }

            if (!v31)
            {
              goto LABEL_40;
            }

            if (!v36)
            {
LABEL_15:

              (*v49)(v14, v11);
              goto LABEL_16;
            }

            if (v54 == v40 && v31 == v36)
            {

              (*v49)(v14, v11);
LABEL_44:

              return 0;
            }

            v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

            (*v49)(v14, v11);
            if (v48)
            {
              goto LABEL_44;
            }

LABEL_16:
            v25 = v56 + 1;
            v26 = v55 + 16;
            result = v50;
            if (v51 == v56 + 1)
            {
              goto LABEL_42;
            }
          }

          outlined destroy of TaskPriority?(v8, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
          if (v31)
          {
            goto LABEL_15;
          }

          v36 = 0;
LABEL_40:
          (*v49)(v14, v11);
          if (!v36)
          {
            goto LABEL_44;
          }

          goto LABEL_16;
        }

        goto LABEL_42;
      }
    }
  }

  else
  {

    outlined destroy of AnyHashable(&v62);
  }

  return 1;
}

uint64_t LyricsOptionsManager.deinit()
{

  return v0;
}

uint64_t LyricsOptionsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ7LyricsX0B14OptionsManagerC6OptionO_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    v14 = qword_100519430[v13];
    Hasher._combine(_:)(v14);
    result = Hasher._finalize()();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (qword_100519430[*(*(a2 + 48) + v16)] != v14)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_4, &_ss23_ContiguousArrayStorageCys5UInt8VGMR_4);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t _sSh8_VariantV6insertySb8inserted_x17memberAfterInserttxnFSS_Tg5_0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    _ss10_NativeSetV9insertNew_2at8isUniqueyxn_s10_HashTableV6BucketVSbtFSS_Tg5_0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent, MSVLyricsAgent_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo14MSVLyricsAgentC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1, &_ss11_SetStorageCySo14MSVLyricsAgentCGMd, &_ss11_SetStorageCySo14MSVLyricsAgentCGMR);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent, MSVLyricsAgent_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for SyncedLyricsLineView(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7LyricsX06SyncedE8LineViewC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMR);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for SyncedLyricsLineView(0);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  v6 = qword_100519430[a2];
  Hasher._combine(_:)(v6);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (qword_100519430[*(*(v5 + 48) + v9)] != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for SyncedLyricsLineView.Word();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7LyricsX06SyncedE8LineViewC4WordC_Tt1g5(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      specialized _NativeSet.resize(capacity:)(v17 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo14MSVLyricsAgentC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo14MSVLyricsAgentCGMd, &_ss11_SetStorageCySo14MSVLyricsAgentCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent, MSVLyricsAgent_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1, &_ss11_SetStorageCySo14MSVLyricsAgentCGMd, &_ss11_SetStorageCySo14MSVLyricsAgentCGMR);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7LyricsX06SyncedE8LineViewC4WordC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC4WordCGMd, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC4WordCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for SyncedLyricsLineView.Word();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v14);
        result = Hasher._finalize()();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7LyricsX06SyncedE8LineViewC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for SyncedLyricsLineView(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMR);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void _ss10_NativeSetV6resize8capacityySi_tFSS_Tg5_0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd_1, &_ss11_SetStorageCySSGMR_1);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(Swift::UInt a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void _ss10_NativeSetV9insertNew_2at8isUniqueyxn_s10_HashTableV6BucketVSbtFSS_Tg5_0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    _ss10_NativeSetV6resize8capacityySi_tFSS_Tg5_0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      _ss10_NativeSetV4copyyyFSS_Tg5_0();
      goto LABEL_16;
    }

    _ss10_NativeSetV13copyAndResize8capacityySi_tFSS_Tg5_0(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCySo14MSVLyricsAgentCGMd, &_ss11_SetStorageCySo14MSVLyricsAgentCGMR);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCySo14MSVLyricsAgentCGMd, &_ss11_SetStorageCySo14MSVLyricsAgentCGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo14MSVLyricsAgentCGMd, &_ss11_SetStorageCySo14MSVLyricsAgentCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent, MSVLyricsAgent_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMR);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for SyncedLyricsLineView(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = qword_100519430[v4];
  Hasher._combine(_:)(v9);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (qword_100519430[*(*(v8 + 48) + a2)] != v9)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::UInt result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(result);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for SyncedLyricsLineView.Word();
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void _ss10_NativeSetV4copyyyFSS_Tg5_0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd_1, &_ss11_SetStorageCySSGMR_1);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void _ss10_NativeSetV13copyAndResize8capacityySi_tFSS_Tg5_0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd_1, &_ss11_SetStorageCySSGMR_1);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(v18);
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v28;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

Swift::Int specialized Set._Variant.remove(_:)(Swift::UInt a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = specialized Set._Variant._migrateToNative(_:removing:)(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (*(*(v3 + 48) + 8 * v10) != a1)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  specialized _NativeSet._delete(at:)(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = specialized Set._Variant._migrateToNative(_:removing:)(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for SyncedLyricsLineView(0);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMR);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  specialized _NativeSet._delete(at:)(v12);
  result = v18;
  *v9 = v19;
  return result;
}

Swift::Int specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, Swift::UInt a2)
{

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7LyricsX06SyncedE8LineViewC4WordC_Tt1g5(v5, v4);
  v14 = v6;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 48);
    while (1)
    {
      v6 = *(v12 + 8 * v10);
      if (v6 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  specialized _NativeSet._delete(at:)(v10);
  *v2 = v14;
  return v6;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7LyricsX06SyncedE8LineViewC_Tt1g5(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for SyncedLyricsLineView(0);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  specialized _NativeSet._delete(at:)(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized _NativeSet._delete(at:)(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(qword_100519430[v10]);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

uint64_t _sSS8_copyingyS2SFZ_0(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = _sSS8_copyingySSSsFZ_0(v2, v3, v4, v5);

  return v6;
}

uint64_t _sSS8_copyingySSSsFZ_0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_4(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

uint64_t specialized LyricsOptionsManager.Option.init(rawValue:)(uint64_t result)
{
  if (result <= 4)
  {
    if (result >= 0)
    {
      return result;
    }

    return 10;
  }

  if (result > 8)
  {
    if (result == 1000)
    {
      return 9;
    }

    return 10;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option()
{
  result = lazy protocol witness table cache variable for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option;
  if (!lazy protocol witness table cache variable for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option;
  if (!lazy protocol witness table cache variable for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option);
  }

  return result;
}

unint64_t _sSaySSGSayxGSKsWl_2()
{
  result = _sSaySSGSayxGSKsWL_2;
  if (!_sSaySSGSayxGSKsWL_2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd_2, &_sSaySSGMR_2);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSaySSGSayxGSKsWL_2);
  }

  return result;
}

uint64_t sub_1004544F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void specialized Dictionary.subscript.getter(double *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v2)
    {
    }
  }
}

uint64_t specialized Dictionary.subscript.getter(double *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}