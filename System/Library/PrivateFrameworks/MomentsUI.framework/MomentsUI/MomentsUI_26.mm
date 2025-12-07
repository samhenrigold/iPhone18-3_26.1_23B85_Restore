uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4, void *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v15 = &v5[8 * v11];
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_48;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v16 = *v5;
      v17 = *(**v7 + 256);

      v19 = v17(v18);
      if (v19 && (v20 = &v19[*a5], v21 = *v20, v22 = *(v20 + 8), v19, (v22 & 1) == 0) && (v23 = (*(*v16 + 256))()) != 0)
      {
        v24 = v23 + *a5;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = v23;

        if ((v26 & 1) == 0 && v25 < v21)
        {
          v28 = v7;
          v29 = v8 == v7;
          v7 += 8;
          if (v29)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }

      v28 = v5;
      v29 = v8 == v5;
      v5 += 8;
      if (v29)
      {
        goto LABEL_12;
      }

LABEL_11:
      *v8 = *v28;
LABEL_12:
      v8 += 8;
      if (v5 >= v15)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[8 * v14] <= a4)
  {
    memmove(a4, __src, 8 * v14);
  }

  v15 = &v5[8 * v14];
  if (v12 >= 8 && v7 > v8)
  {
LABEL_31:
    v30 = v7 - 8;
    v6 -= 8;
    v31 = v15;
    v47 = v7 - 8;
    do
    {
      v49 = v15;
      v32 = v7;
      v33 = *(v31 - 1);
      v31 -= 8;
      v34 = *v30;
      v35 = *(*v33 + 256);

      v37 = v35(v36);
      if (v37 && (v38 = &v37[*a5], v39 = *v38, v40 = *(v38 + 8), v37, (v40 & 1) == 0) && (v41 = (*(*v34 + 256))()) != 0)
      {
        v42 = v41 + *a5;
        v43 = *v42;
        v44 = *(v42 + 8);
        v45 = v41;

        if ((v44 & 1) == 0 && v43 < v39)
        {
          if (v6 + 8 != v32)
          {
            *v6 = *v47;
          }

          v15 = v49;
          if (v49 <= v5 || (v7 = v47, v47 <= v8))
          {
            v7 = v47;
            goto LABEL_48;
          }

          goto LABEL_31;
        }
      }

      else
      {
      }

      v7 = v32;
      if (v6 + 8 != v49)
      {
        *v6 = *v31;
      }

      v6 -= 8;
      v15 = v31;
      v30 = v47;
    }

    while (v31 > v5);
    v15 = v31;
  }

LABEL_48:
  if (v7 != v5 || v7 >= &v5[(v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v7, v5, 8 * ((v15 - v5) / 8));
  }

  return 1;
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for SuggestionViewModel(0);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq59MomentsUI19SuggestionViewModelC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_9i4UI19klM7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __n128))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1);
  v4 = AssociatedObject[2];

  return (a2)(AssociatedObject + 4, v4);
}

void *specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for Asset(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for Suggestion);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for SuggestionViewModel);
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for SuggestionViewModel(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for SuggestionViewModel(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq59MomentsUI19SuggestionViewModelC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_9i4UI19klM7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(v4, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

LABEL_25:
  v20 = __CocoaSet.count.getter();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_28;
  }

  v5[2] = result + v11;
LABEL_17:
  if (v8 < 1)
  {
    return result;
  }

  result = MEMORY[0x28223BE20](result);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    return _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq59MomentsUI19SuggestionViewModelC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_9i4UI19klM7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(v4, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    return swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError()
{
  result = lazy protocol witness table cache variable for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError;
  if (!lazy protocol witness table cache variable for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError;
  if (!lazy protocol witness table cache variable for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionCollectionViewModelError and conformance SuggestionCollectionViewModelError);
  }

  return result;
}

uint64_t partial apply for closure #1 in SuggestionCollectionViewModel.runComputeAndWait()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in SuggestionCollectionViewModel.runComputeAndWait()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in SuggestionCollectionViewModel.fetchSuggestions(firstTime:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in SuggestionCollectionViewModel.fetchSuggestions(firstTime:)(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type IndexSet and conformance IndexSet(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SuggestionSubgroupLayout and conformance SuggestionSubgroupLayout()
{
  result = lazy protocol witness table cache variable for type SuggestionSubgroupLayout and conformance SuggestionSubgroupLayout;
  if (!lazy protocol witness table cache variable for type SuggestionSubgroupLayout and conformance SuggestionSubgroupLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSubgroupLayout and conformance SuggestionSubgroupLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionGroupType and conformance SuggestionGroupType()
{
  result = lazy protocol witness table cache variable for type SuggestionGroupType and conformance SuggestionGroupType;
  if (!lazy protocol witness table cache variable for type SuggestionGroupType and conformance SuggestionGroupType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionGroupType and conformance SuggestionGroupType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionCollectionViewStyle and conformance SuggestionCollectionViewStyle()
{
  result = lazy protocol witness table cache variable for type SuggestionCollectionViewStyle and conformance SuggestionCollectionViewStyle;
  if (!lazy protocol witness table cache variable for type SuggestionCollectionViewStyle and conformance SuggestionCollectionViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionCollectionViewStyle and conformance SuggestionCollectionViewStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SegmentType and conformance SegmentType()
{
  result = lazy protocol witness table cache variable for type SegmentType and conformance SegmentType;
  if (!lazy protocol witness table cache variable for type SegmentType and conformance SegmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentType and conformance SegmentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InterstitialEntryType and conformance InterstitialEntryType()
{
  result = lazy protocol witness table cache variable for type InterstitialEntryType and conformance InterstitialEntryType;
  if (!lazy protocol witness table cache variable for type InterstitialEntryType and conformance InterstitialEntryType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterstitialEntryType and conformance InterstitialEntryType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionCollectionViewModel.ContentState and conformance SuggestionCollectionViewModel.ContentState()
{
  result = lazy protocol witness table cache variable for type SuggestionCollectionViewModel.ContentState and conformance SuggestionCollectionViewModel.ContentState;
  if (!lazy protocol witness table cache variable for type SuggestionCollectionViewModel.ContentState and conformance SuggestionCollectionViewModel.ContentState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionCollectionViewModel.ContentState and conformance SuggestionCollectionViewModel.ContentState);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionSubgroup(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 18))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestionSubgroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

void type metadata completion function for SuggestionCollectionViewModel(uint64_t a1)
{
  type metadata accessor for Client(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for IndexSet();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<SuggestionCollectionViewModel.ContentState>, &type metadata for SuggestionCollectionViewModel.ContentState);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.shouldShowMessage()()
{
  v4 = (*(*v0 + 656) + **(*v0 + 656));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v4();
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.fetchSuggestionViewModels(firstTime:)(uint64_t a1)
{
  v6 = (*(*v1 + 1088) + **(*v1 + 1088));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static Exif.filterImage(imageSource:outputURL:);

  return v6(a1);
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.waitForSnapshot(draftAllowed:)(uint64_t a1)
{
  v6 = (*(*v1 + 1104) + **(*v1 + 1104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v6(a1);
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.runComputeAndWait()()
{
  v4 = (*(*v0 + 1112) + **(*v0 + 1112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.fetchSuggestions(firstTime:)(uint64_t a1)
{
  v6 = (*(*v1 + 1120) + **(*v1 + 1120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v6(a1);
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.makeCurrentDevicePrimary()()
{
  v4 = (*(*v0 + 1160) + **(*v0 + 1160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of SuggestionCollectionViewModel.displayMessage()()
{
  v4 = (*(*v0 + 1176) + **(*v0 + 1176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterImage(imageSource:outputURL:);

  return v4();
}

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t _s9MomentsUI6ClientVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id MosaicSquareGridLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double MosaicSquareGridLayout.cachedAttributes.getter()
{
  swift_beginAccess();

  return result;
}

double MosaicSquareGridLayout.cachedAttributes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_cachedAttributes;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double MosaicSquareGridLayout.contentBounds.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_contentBounds;
  swift_beginAccess();
  return *v1;
}

uint64_t MosaicSquareGridLayout.contentBounds.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_contentBounds);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

Swift::Void __swiftcall MosaicSquareGridLayout.prepare()()
{
  v98 = *MEMORY[0x277D85DE8];
  v94 = type metadata accessor for IndexPath();
  v1 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &size - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MosaicSquareGridLayout();
  v96.receiver = v0;
  v96.super_class = v3;
  objc_msgSendSuper2(&v96, sel_prepareLayout);
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    if ([v4 numberOfSections] < 1)
    {

      return;
    }

    v6 = MEMORY[0x277D85000];
    v7 = (*MEMORY[0x277D85000] & *v0) + 112;
    v92 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
    v91 = v7;
    v8 = v92(&slice);
    *v9 = MEMORY[0x277D84F90];

    v8(&slice, 0);
    v10 = v5;
    v11 = [v10 bounds];
    v12 = (*v6 & *v0) + 128;
    v13 = v0;
    v90 = *((*v6 & *v0) + 0x80);
    v89 = v12;
    (v90)(v11, 0.0, 0.0);
    v14 = [v10 numberOfItemsInSection_];
    [v10 bounds];
    v16 = v15;

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        *&v87.width = v10;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v103.origin.x = 0.0;
        v103.origin.y = 0.0;
        v103.size.width = v16;
        v103.size.height = v16;
        CGRectDivide(v103, &slice, &remainder, ceil(v16 * 0.5), CGRectMinYEdge);
        v104.origin.x = remainder.origin.x;
        v104.size.width = remainder.size.width;
        v104.origin.y = remainder.origin.y + 1.0;
        v104.size.height = remainder.size.height + -1.0;
        v56 = ceil(remainder.size.width * 0.5);
        v88 = slice;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        CGRectDivide(v104, &slice, &remainder, v56, CGRectMinXEdge);
        y = remainder.origin.y;
        height = remainder.size.height;
        v59 = remainder.origin.x + 1.0;
        v60 = remainder.size.width + -1.0;
        origin = slice.origin;
        size = slice.size;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
        v21 = swift_allocObject();
        v61 = v88.origin;
        *(v21 + 16) = xmmword_21658E190;
        *(v21 + 32) = v61;
        v62 = size;
        *(v21 + 48) = v88.size;
        *(v21 + 64) = origin;
        *(v21 + 80) = v62;
        *(v21 + 96) = v59;
        *(v21 + 104) = y;
        *(v21 + 112) = v60;
        *(v21 + 120) = height;
        v23 = 3;
        goto LABEL_23;
      }

      if (v14 == 4)
      {
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v100.origin.x = 0.0;
        v100.origin.y = 0.0;
        v100.size.width = v16;
        v100.size.height = v16;
        CGRectDivide(v100, &slice, &remainder, ceil(v16 * 0.5), CGRectMinXEdge);
        v101 = slice;
        v24 = remainder.origin.y;
        v25 = remainder.size.height;
        v26 = remainder.origin.x + 1.0;
        v27 = remainder.size.width + -1.0;
        v28 = ceil(slice.size.height * 0.5);
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        CGRectDivide(v101, &slice, &remainder, v28, CGRectMinYEdge);
        v87 = slice.size;
        v88.origin = slice.origin;
        v29 = remainder.origin.y;
        v88.size.width = remainder.origin.x;
        width = remainder.size.width;
        v30 = remainder.size.height;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v102.origin.x = v26;
        v102.origin.y = v24;
        v102.size.width = v27;
        v102.size.height = v25;
        CGRectDivide(v102, &slice, &remainder, ceil(v25 * 0.5), CGRectMinYEdge);
        size = slice.size;
        origin = slice.origin;
        x = remainder.origin.x;
        v33 = remainder.origin.y;
        v34 = remainder.size.width;
        v35 = remainder.size.height;
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v37 = *(v21 + 16);
        v36 = *(v21 + 24);
        v38 = v36 >> 1;
        v39 = v37 + 1;
        if (v36 >> 1 <= v37)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v21);
          v36 = *(v21 + 24);
          v38 = v36 >> 1;
        }

        *(v21 + 16) = v39;
        v40 = v21 + 32 * v37;
        v41 = v87;
        *(v40 + 32) = v88.origin;
        *(v40 + 48) = v41;
        v42 = v37 + 2;
        v43 = 1.0;
        v44 = -1.0;
        if (v38 < (v37 + 2))
        {
          v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 2, 1, v21);
          v44 = -1.0;
          v43 = 1.0;
          v21 = v83;
        }

        v45 = v29 + v43;
        v46 = v30 + v44;
        *(v21 + 16) = v42;
        v47 = v21 + 32 * v39;
        v48 = size;
        *(v47 + 32) = origin;
        *(v47 + 48) = v48;
        v49 = *(v21 + 24);
        v50 = v37 + 3;
        if ((v37 + 3) > (v49 >> 1))
        {
          v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v37 + 3, 1, v21);
          v44 = -1.0;
          v43 = 1.0;
          v21 = v84;
        }

        v51 = v33 + v43;
        v52 = v35 + v44;
        *(v21 + 16) = v50;
        v53 = (v21 + 32 * v42);
        v53[4] = v88.size.width;
        v53[5] = v45;
        v53[6] = width;
        v53[7] = v46;
        v54 = *(v21 + 24);
        if ((v37 + 4) > (v54 >> 1))
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v37 + 4, 1, v21);
        }

        *(v21 + 16) = v37 + 4;
        v55 = (v21 + 32 * v50);
        v55[4] = x;
        v55[5] = v51;
        v55[6] = v34;
        v55[7] = v52;
        v88.size.width = *(v21 + 16);
        if (!*&v88.size.width)
        {

LABEL_29:

          return;
        }

        *&v87.width = v10;
LABEL_24:
        *&v88.origin.x = objc_opt_self();
        v63 = 0;
        v64 = *((*v6 & *v13) + 0x78);
        v65 = (v1 + 8);
        *&origin.x = v21;
        v66 = (v21 + 56);
        v67 = 0.0;
        v68 = 0.0;
        v69 = 0.0;
        v70 = 0.0;
        do
        {
          v71 = *(v66 - 3);
          v72 = *(v66 - 2);
          v73 = *(v66 - 1);
          v74 = *v66;
          v75 = v93;
          MEMORY[0x21CE90B80](v63, 0);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v77 = [*&v88.origin.x layoutAttributesForCellWithIndexPath_];

          (*v65)(v75, v94);
          [v77 setFrame_];
          v78 = v77;
          v79 = v92(&slice);
          v81 = v80;
          MEMORY[0x21CE92260]();
          if (*((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          ++v63;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v82 = v79(&slice, 0);
          v105.origin.x = v64(v82);
          v107.origin.x = v67;
          v107.origin.y = v68;
          v107.size.width = v69;
          v107.size.height = v70;
          v106 = CGRectUnion(v105, v107);
          v90(v106.origin, *&v106.origin.y, v106.size, *&v106.size.height);

          v66 += 4;
          v67 = v71;
          v68 = v72;
          v69 = v73;
          v70 = v74;
        }

        while (*&v88.size.width != v63);

        goto LABEL_29;
      }
    }

    else
    {
      if (v14 == 1)
      {
        *&v87.width = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_21658CA50;
        *(v21 + 32) = 0;
        *(v21 + 40) = 0;
        *(v21 + 48) = v16;
        *(v21 + 56) = v16;
        v23 = 1;
        goto LABEL_23;
      }

      if (v14 == 2)
      {
        *&v87.width = v10;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v99.origin.x = 0.0;
        v99.origin.y = 0.0;
        v99.size.width = v16;
        v99.size.height = v16;
        CGRectDivide(v99, &slice, &remainder, ceil(v16 * 0.5), CGRectMinYEdge);
        v17 = remainder.origin.x;
        v18 = remainder.size.width;
        v19 = remainder.origin.y + 1.0;
        v20 = remainder.size.height + -1.0;
        v88.size = slice.origin;
        v88.origin = slice.size;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
        v21 = swift_allocObject();
        v22 = v88.origin;
        *(v21 + 16) = xmmword_21658CA60;
        *(v21 + 32) = v88.size;
        *(v21 + 48) = v22;
        *(v21 + 64) = v17;
        *(v21 + 72) = v19;
        *(v21 + 80) = v18;
        *(v21 + 88) = v20;
        v23 = 2;
LABEL_23:
        *&v88.size.width = v23;
        goto LABEL_24;
      }
    }
  }
}

uint64_t MosaicSquareGridLayout.quarterRects(of:)(double a1, double a2, double a3, double a4)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(*&a1, &slice, &remainder, ceil(a3 * 0.5), CGRectMinXEdge);
  v24 = slice;
  y = remainder.origin.y;
  height = remainder.size.height;
  v6 = remainder.origin.x + 1.0;
  v7 = remainder.size.width + -1.0;
  v8 = ceil(slice.size.height * 0.5);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v24, &slice, &remainder, v8, CGRectMinYEdge);
  width = remainder.size.width;
  x = remainder.origin.x;
  v9 = remainder.origin.y + 1.0;
  v10 = remainder.size.height + -1.0;
  v18 = slice;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v25.origin.x = v6;
  v25.origin.y = y;
  v25.size.width = v7;
  v25.size.height = height;
  CGRectDivide(v25, &slice, &remainder, ceil(height * 0.5), CGRectMinYEdge);
  v11 = remainder.origin.x;
  v12 = remainder.size.width;
  v13 = remainder.origin.y + 1.0;
  v14 = remainder.size.height + -1.0;
  size = slice.size;
  origin = slice.origin;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_2165965F0;
  *(result + 32) = v18;
  *(result + 64) = origin;
  *(result + 80) = size;
  *(result + 96) = x;
  *(result + 104) = v9;
  *(result + 112) = width;
  *(result + 120) = v10;
  *(result + 128) = v11;
  *(result + 136) = v13;
  *(result + 144) = v12;
  *(result + 152) = v14;
  return result;
}

Swift::Bool __swiftcall MosaicSquareGridLayout.shouldInvalidateLayout(forBoundsChange:)(__C::CGRect forBoundsChange)
{
  height = forBoundsChange.size.height;
  width = forBoundsChange.size.width;
  v4 = [v1 collectionView];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v8.width = width;
    v8.height = height;
    v6 = CGSizeEqualToSize(v8, v9);

    LOBYTE(v4) = !v6;
  }

  return v4;
}

uint64_t MosaicSquareGridLayout.layoutAttributesForItem(at:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v2 = v1();
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (IndexPath.item.getter() >= v3)
  {
    return 0;
  }

  v4 = IndexPath.item.getter();
  result = v1();
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x21CE93180](v4, result);
    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 8 * v4 + 32);
LABEL_8:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall MosaicSquareGridLayout.layoutAttributesForElements(in:)(__C::CGRect in)
{
  v4 = v1;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v49 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v11 = (*MEMORY[0x277D85000] & *v1) + 96;
  v12 = v10();
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_3;
  }

  while (1)
  {
    v16 = v12;
    v13 = __CocoaSet.count.getter();

    if (v13 < 0)
    {
      break;
    }

LABEL_3:
    if (!v13 || (v15 = (*((*v9 & *v4) + 0x90))(0, v13 - 1, x, y, width, height), v14))
    {
      v9 = MEMORY[0x277D84F90];
      goto LABEL_55;
    }

    v3 = v15;
    v16 = v4;
    v17 = v10();
    if (v3 < 0)
    {
      goto LABEL_61;
    }

    v16 = v17;
    v18 = v17 & 0xFFFFFFFFFFFFFF8;
    v13 = v17 >> 62;
    if (v17 >> 62)
    {
      goto LABEL_62;
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < v3)
    {
      goto LABEL_67;
    }

LABEL_9:
    if ((v16 & 0xC000000000000001) == 0 || v3 == 0)
    {
    }

    else
    {
      type metadata accessor for UICollectionViewLayoutAttributes();

      v20 = 0;
      do
      {
        v21 = v20 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v20);
        v20 = v21;
      }

      while (v3 != v21);
    }

    v48 = v10;
    if (v13)
    {
      _CocoaArrayWrapper.subscript.getter();
      v10 = v24;
      v22 = v25;
      v27 = v26;

      v23 = v27 >> 1;
    }

    else
    {
      v22 = 0;
      v10 = ((v16 & 0xFFFFFFFFFFFFFF8) + 32);
      v23 = v3;
    }

    v2 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    v9 = MEMORY[0x277D84F90];
    if (v23 == v22)
    {
LABEL_30:
      v33 = swift_unknownObjectRelease();
      v34 = (v48)(v33);
      v11 = v34;
      v13 = v34 >> 62;
      if (v34 >> 62)
      {
        goto LABEL_68;
      }

      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35 < v3)
      {
        goto LABEL_72;
      }

      goto LABEL_32;
    }

    v28 = v23;
    while (!__OFSUB__(v28--, 1))
    {
      if (v28 < v22 || v28 >= v23)
      {
        goto LABEL_57;
      }

      v30 = *(v10 + v28);
      [v30 frame];
      MaxY = CGRectGetMaxY(v51);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      if (CGRectGetMinY(v52) > MaxY)
      {

        goto LABEL_30;
      }

      v32 = v30;
      MEMORY[0x21CE92260]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v9 = v49;
      if (v28 == v22)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  if (v16 < 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = v18;
  }

  v34 = __CocoaSet.count.getter();
  if (v34 < 0)
  {
    goto LABEL_74;
  }

  if (__CocoaSet.count.getter() >= v3)
  {
    goto LABEL_9;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  v34 = __CocoaSet.count.getter();
  if (v34 < v3)
  {
    goto LABEL_75;
  }

  v35 = v34;
  v34 = __CocoaSet.count.getter();
  if (v34 < v3)
  {
    goto LABEL_76;
  }

  v34 = __CocoaSet.count.getter();
  if (v34 >= v35)
  {
LABEL_32:
    if ((v11 & 0xC000000000000001) == 0 || v3 == v35)
    {
    }

    else
    {
      if (v3 >= v35)
      {
        goto LABEL_73;
      }

      type metadata accessor for UICollectionViewLayoutAttributes();

      v36 = v3;
      do
      {
        v37 = v36 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v36);
        v36 = v37;
      }

      while (v35 != v37);
    }

    if (v13)
    {
      v4 = _CocoaArrayWrapper.subscript.getter();
      v38 = v39;
      v3 = v40;
      v42 = v41;

      v35 = v42 >> 1;
    }

    else
    {
      v4 = (v11 & 0xFFFFFFFFFFFFFF8);
      v38 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v12 = swift_unknownObjectRetain();
    v11 = v35 - v3;
    if (v35 != v3)
    {
      if (v3 <= v35)
      {
        v43 = v35;
      }

      else
      {
        v43 = v3;
      }

      v10 = (v43 - v3);
      v44 = (v38 + 8 * v3);
      while (v10)
      {
        v45 = *v44;
        [v45 v2[29]];
        MinY = CGRectGetMinY(v53);
        v54.origin.x = x;
        v54.origin.y = y;
        v54.size.width = width;
        v54.size.height = height;
        if (MinY > CGRectGetMaxY(v54))
        {

          goto LABEL_54;
        }

        v47 = v45;
        MEMORY[0x21CE92260]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v49;
        v10 = (v10 - 1);
        ++v44;
        if (!--v11)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_58;
    }

LABEL_54:
    swift_unknownObjectRelease_n();
LABEL_55:
    v34 = v9;
    goto LABEL_77;
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
  result.value._rawValue = v34;
  result.is_nil = v14;
  return result;
}

Swift::Int_optional __swiftcall MosaicSquareGridLayout.binSearch(_:start:end:)(__C::CGRect _, Swift::Int start, Swift::Int end)
{
  if (end >= start)
  {
    v14 = start + end;
    if (__OFADD__(start, end))
    {
      __break(1u);
    }

    else
    {
      height = _.size.height;
      width = _.size.width;
      y = _.origin.y;
      x = _.origin.x;
      v6 = start;
      v5 = end;
      v3 = v14 / 2;
      v8 = MEMORY[0x277D85000];
      v15 = (*((*MEMORY[0x277D85000] & *v4) + 0x60))();
      v7 = v15;
      if ((v15 & 0xC000000000000001) == 0)
      {
        if (v14 < -1)
        {
          __break(1u);
        }

        else if (v3 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v17 = *(v15 + 8 * v3 + 32);
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    v17 = MEMORY[0x21CE93180](v3, v7, _.origin, *&_.origin.y, _.size, *&_.size.height);
LABEL_8:
    v18 = v17;

    [v18 frame];
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (CGRectIntersectsRect(v28, v31))
    {

      v13 = 0;
    }

    else
    {
      [v18 frame];
      MaxY = CGRectGetMaxY(v29);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      if (MaxY >= CGRectGetMinY(v30))
      {
        v25 = v3 - 1;
        v20.n128_f64[0] = x;
        v21.n128_f64[0] = y;
        v22.n128_f64[0] = width;
        v23.n128_f64[0] = height;
        v24 = v6;
      }

      else
      {
        v24 = v3 + 1;
        v20.n128_f64[0] = x;
        v21.n128_f64[0] = y;
        v22.n128_f64[0] = width;
        v25 = v5;
        v23.n128_f64[0] = height;
      }

      v3 = (*((*v8 & *v4) + 0x90))(v24, v25, v20, v21, v22, v23);
      v13 = v26;
    }

    goto LABEL_14;
  }

  v3 = 0;
  v13 = 1;
LABEL_14:
  v16 = v13 & 1;
  v15 = v3;
LABEL_19:
  result.value = v15;
  result.is_nil = v16;
  return result;
}

id MosaicSquareGridLayout.init()()
{
  *&v0[OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_cachedAttributes] = MEMORY[0x277D84F90];
  v1 = &v0[OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_contentBounds];
  v2 = type metadata accessor for MosaicSquareGridLayout();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id MosaicSquareGridLayout.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MosaicSquareGridLayout.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_cachedAttributes] = MEMORY[0x277D84F90];
  v3 = &v1[OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_contentBounds];
  v4 = type metadata accessor for MosaicSquareGridLayout();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id MosaicSquareGridLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MosaicSquareGridLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

UIImage_optional __swiftcall UIImage.composedOf(with:rects:targetSize:backgroundColor:)(Swift::OpaquePointer with, Swift::OpaquePointer rects, CGSize targetSize, UIColor backgroundColor)
{
  v5 = v4;
  height = targetSize.height;
  width = targetSize.width;
  UIGraphicsBeginImageContext(targetSize);
  [(objc_class *)backgroundColor.super.isa set];
  v40.origin.x = 0.0;
  v40.origin.y = 0.0;
  v40.size.width = width;
  v40.size.height = height;
  UIRectFill(v40);
  v10 = [v5 drawInRect_];
  v36 = *(rects._rawValue + 2);
  if (v36)
  {
    if (one-time initialization token for views != -1)
    {
      v10 = swift_once();
    }

    if ((with._rawValue & 0xC000000000000001) == 0 && v36 > *((with._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_16;
    }

    v35 = type metadata accessor for Logger();
    v12 = 0;
    v13 = (rects._rawValue + 56);
    *&v14 = 136315394;
    v33 = v14;
    v34 = v5;
    __swift_project_value_buffer(v35, static CommonLogger.views);
    while (1)
    {
      v17 = v5;

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      v20 = v19;
      if (os_log_type_enabled(v18, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v38 = v22;
        *v21 = v33;
        v23 = v17;
        v24 = [v23 description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v38);

        *(v21 + 4) = v28;
        *(v21 + 12) = 2080;
        v29 = CGRect.debugDescription.getter();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v38);
        v5 = v34;

        *(v21 + 14) = v31;
        _os_log_impl(&dword_21607C000, v18, v20, "[%s] snowglobe: %s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v22, -1, -1);
        MEMORY[0x21CE94770](v21, -1, -1);
      }

      v15 = (with._rawValue & 0xC000000000000001) != 0 ? MEMORY[0x21CE93180](v12, with._rawValue) : *(with._rawValue + v12 + 4);
      v16 = v15;
      ++v12;
      [v15 drawInRect_];

      v13 += 4;
      if (v36 == v12)
      {
        break;
      }

      __swift_project_value_buffer(v35, static CommonLogger.views);
    }
  }

  v32 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v10 = v32;
LABEL_16:
  result.value.super.isa = v10;
  result.is_nil = v11;
  return result;
}

uint64_t specialized static SnowGlobeEffect.layoutRects(for:count:)(uint64_t result, float64_t a2, float64_t a3)
{
  v3 = 7;
  if (result < 7)
  {
    v3 = result;
  }

  _VF = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (_VF)
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  if (v5 <= 6)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v7 = outlined read-only object #7 of one-time initialization function for avatarLayout[v5 + 4];

      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_7:
  v8 = *(v7 + 16);
  if (v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9.f64[0] = a2;
    v9.f64[1] = a3;
    v10 = vdivq_f64(v9, vdupq_n_s64(0x4056000000000000uLL));
    v11 = v10.f64[1] < 100.0 && v10.f64[0] < 100.0;
    v12 = (v7 + 48);
    __asm { FMOV            V4.2D, #0.5 }

    do
    {
      v17 = 0uLL;
      v18 = 0uLL;
      if (v11)
      {
        v18 = vmulq_f64(v10, *v12);
        v17 = vaddq_f64(vmulq_f64(vsubq_f64(v9, v18), _Q4), vmulq_f64(v10, v12[-1]));
      }

      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        v26 = v10;
        v28 = v9;
        v23 = v18;
        v24 = _Q4;
        v22 = v17;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v17 = v22;
        v18 = v23;
        _Q4 = v24;
        v10 = v26;
        v9 = v28;
      }

      *(v6 + 16) = v20 + 1;
      v21 = (v6 + 32 * v20);
      v21[2] = v17;
      v21[3] = v18;
      v12 += 2;
      --v8;
    }

    while (v8);
  }

  return v6;
}

unint64_t specialized static SnowGlobeEffect.image(for:targetSize:)(unint64_t a1, float64_t a2, float64_t a3)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter() <= 7)
    {
      goto LABEL_3;
    }

    result = __CocoaSet.count.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    if (__CocoaSet.count.getter() < 7)
    {
      __break(1u);
    }

LABEL_8:
    if ((v5 & 0xC000000000000001) != 0)
    {
      type metadata accessor for UIImage();

      _ArrayBuffer._typeCheckSlowPath(_:)(0);
      _ArrayBuffer._typeCheckSlowPath(_:)(1);
      _ArrayBuffer._typeCheckSlowPath(_:)(2);
      _ArrayBuffer._typeCheckSlowPath(_:)(3);
      _ArrayBuffer._typeCheckSlowPath(_:)(4);
      _ArrayBuffer._typeCheckSlowPath(_:)(5);
      _ArrayBuffer._typeCheckSlowPath(_:)(6);
      if (!v6)
      {
LABEL_10:
        v8 = v5 & 0xFFFFFFFFFFFFFF8;
        v9 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
        v10 = 15;
        goto LABEL_14;
      }
    }

    else
    {

      if (!v6)
      {
        goto LABEL_10;
      }
    }

    v8 = _CocoaArrayWrapper.subscript.getter();
    v9 = v11;
    v6 = v12;
    v10 = v13;
    if ((v13 & 1) == 0)
    {
LABEL_13:
      specialized _copyCollectionToContiguousArray<A>(_:)(v8, v9, v6, v10);
      v5 = v14;
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

LABEL_14:
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v15 = MEMORY[0x277D84F90];
    }

    v16 = *(v15 + 16);

    if (__OFSUB__(v10 >> 1, v6))
    {
      __break(1u);
    }

    else if (v16 == (v10 >> 1) - v6)
    {
      v5 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v5)
      {
        swift_unknownObjectRelease();
        v5 = MEMORY[0x277D84F90];
      }

      goto LABEL_20;
    }

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 8uLL)
  {
    goto LABEL_8;
  }

LABEL_3:

LABEL_20:
  if (v5 >> 62)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = specialized static SnowGlobeEffect.layoutRects(for:count:)(v17, a2, a3);
  v19 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v20 = [objc_opt_self() clearColor];
  v21 = UIImage.composedOf(with:rects:targetSize:backgroundColor:)(v5, v18, __PAIR128__(*&a3, *&a2), v20);

  return v21;
}

double AssetViewModel.Style.horizontalMargin.getter()
{
  result = 6.0;
  if ((*v0 - 3) <= 3u)
  {
    return dbl_21659F7C0[(*v0 - 3)];
  }

  return result;
}

double AssetViewModel.Style.iconToLabelDistance.getter()
{
  result = 8.0;
  if (*v0 - 3 <= 5)
  {
    return dbl_21659F7E0[(*v0 - 3)];
  }

  return result;
}

void AssetViewModel.Style.symbolFont.getter()
{
  v1 = 1 << *v0;
  if ((v1 & 0x87) != 0)
  {
    v3 = objc_opt_self();
    v4 = [v3 preferredFontForTextStyle_];
    v5 = [v4 fontDescriptor];
    v6 = [v5 fontDescriptorWithSymbolicTraits_];

    if (v6)
    {
LABEL_5:
      [v3 fontWithDescriptor:v6 size:0.0];

      return;
    }

    __break(1u);
  }

  else
  {
    if ((v1 & 0x158) != 0)
    {
      v2 = [objc_opt_self() systemFontOfSize:48.0 weight:*MEMORY[0x277D74420]];
      return;
    }

    v3 = objc_opt_self();
    v4 = [v3 preferredFontForTextStyle_];
    v7 = [v4 fontDescriptor];
    v6 = [v7 fontDescriptorWithSymbolicTraits_];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void *TransferVideoViewModel.urlBasedVideo.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferVideoViewModel.urlBasedVideo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

BOOL TransferVideoViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferVideoViewModel.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL TransferVideoViewModel.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferVideoViewModel.CodingKeys.init(stringValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferVideoViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferVideoViewModel.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance TransferVideoViewModel.CodingKeys(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TransferVideoViewModel.CodingKeys, *a1);

  *a2 = v3 != 0;
}

void protocol witness for CodingKey.init(stringValue:) in conformance TransferVideoViewModel.CodingKeys(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance TransferVideoViewModel.CodingKeys, v3);

  *a2 = v5 != 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferVideoViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferVideoViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id TransferVideoViewModel.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo;
  *&v3[OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo] = 0;
  type metadata accessor for URLBasedVideo(0);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v6 = *&v3[v4];
  *&v3[v4] = v5;

  return TransferPhotoFamilyViewModel.init(coder:)(a1);
}

id TransferVideoViewModel.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo;
  *(v2 + OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo) = 0;
  type metadata accessor for URLBasedVideo(0);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v6 = *(v2 + v4);
  *(v2 + v4) = v5;

  return TransferPhotoFamilyViewModel.init(coder:)(a1);
}

Swift::Void __swiftcall TransferVideoViewModel.encode(with:)(NSCoder with)
{
  TransferPhotoFamilyViewModel.encode(with:)(with);
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x298))();
  v4 = MEMORY[0x21CE91FC0](0x64657361426C7275, 0xED00006F65646956);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

void TransferVideoViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferVideoViewModel.init(dbObject:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *TransferVideoViewModel.__allocating_init(videoViewModel:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized TransferVideoViewModel.init(videoViewModel:)(a1, a2);

  return v6;
}

void *TransferVideoViewModel.init(videoViewModel:)(void *a1, uint64_t a2)
{
  v3 = specialized TransferVideoViewModel.init(videoViewModel:)(a1, a2);

  return v3;
}

id TransferVideoViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferVideoViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *specialized TransferVideoViewModel.init(videoViewModel:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v94 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v95 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v88 - v11;
  v13 = OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo;
  *&v3[OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo] = 0;
  v14 = swift_getObjectType();
  v15 = (*(a2 + 24))(v14, a2);
  if (v15)
  {
    v16 = v15;
    v89 = type metadata accessor for URLBasedVideo(0);
    v17 = objc_allocWithZone(v89);
    v92 = a2;
    v18 = v17;
    v90 = v13;
    v19 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__videoURL;
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
    v91 = a1;
    v21 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__token;
    v22 = type metadata accessor for UUID();
    v23 = *(*(v22 - 8) + 56);
    v23(&v18[v21], 1, 1, v22);
    *&v18[OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__video] = v16;
    v18[OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__filterExif] = 1;
    v24 = v16;
    UUID.init()();
    v23(v12, 0, 1, v22);
    swift_beginAccess();
    a1 = v91;
    outlined assign with take of UUID?(v12, &v18[v21]);
    swift_endAccess();
    v96.receiver = v18;
    a2 = v92;
    v96.super_class = v89;
    v25 = objc_msgSendSuper2(&v96, sel_init);

    v26 = v90;
    swift_beginAccess();
    v27 = *&v3[v26];
    *&v3[v26] = v25;
  }

  v28 = *((*MEMORY[0x277D85000] & *a1) + 0xD0);
  v29 = a1;
  v30 = v28();
  v91 = v31;
  v92 = v30;

  v32 = *(a2 + 8);
  (*(*(v32 + 8) + 24))(v14);
  (*(v32 + 24))(&v102, v14, v32);
  (*(v32 + 16))(&v104, v14, v32);
  (*(v32 + 32))(&v106, v14, v32);
  v33 = (*(v32 + 40))(v14, v32);
  v35 = v34;
  LODWORD(v90) = *(v29 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v36 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect] = 0;
  v37 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect] = 0;
  v38 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect] = 0;
  v39 = &v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_photoIdentifier];
  *v39 = 0;
  v39[1] = 0;
  if ((v103 & 1) == 0)
  {
    width = v102.size.width;
    height = v102.size.height;
    x = v102.origin.x;
    y = v102.origin.y;
    v46 = CGRectGetWidth(v102);
    v108.origin.x = x;
    v108.origin.y = y;
    v108.size.width = width;
    v108.size.height = height;
    *&height = CGRectGetHeight(v108);
    v47 = type metadata accessor for ScreenRect();
    v48 = objc_allocWithZone(v47);
    v44 = x;
    *&v48[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v44;
    v45 = y;
    *&v48[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v45;
    *&v48[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v46;
    *&v48[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(height);
    v97.receiver = v48;
    v97.super_class = v47;
    v49 = objc_msgSendSuper2(&v97, sel_init);
    swift_beginAccess();
    v50 = *&v3[v36];
    *&v3[v36] = v49;
  }

  if ((v105 & 1) == 0)
  {
    v52 = v104.size.width;
    v51 = v104.size.height;
    v54 = v104.origin.x;
    v53 = v104.origin.y;
    v57 = CGRectGetWidth(v104);
    v109.origin.x = v54;
    v109.origin.y = v53;
    v109.size.width = v52;
    v109.size.height = v51;
    *&v51 = CGRectGetHeight(v109);
    v58 = type metadata accessor for ScreenRect();
    v59 = objc_allocWithZone(v58);
    v55 = v54;
    *&v59[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v55;
    v56 = v53;
    *&v59[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v56;
    *&v59[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v57;
    *&v59[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(v51);
    v98.receiver = v59;
    v98.super_class = v58;
    v60 = objc_msgSendSuper2(&v98, sel_init);
    swift_beginAccess();
    v61 = *&v3[v37];
    *&v3[v37] = v60;
  }

  if ((v107 & 1) == 0)
  {
    v63 = v106.size.width;
    v62 = v106.size.height;
    v65 = v106.origin.x;
    v64 = v106.origin.y;
    v68 = CGRectGetWidth(v106);
    v110.origin.x = v65;
    v110.origin.y = v64;
    v110.size.width = v63;
    v110.size.height = v62;
    *&v62 = CGRectGetHeight(v110);
    v69 = type metadata accessor for ScreenRect();
    v70 = objc_allocWithZone(v69);
    v66 = v65;
    *&v70[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v66;
    v67 = v64;
    *&v70[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v67;
    *&v70[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v68;
    *&v70[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(v62);
    v99.receiver = v70;
    v99.super_class = v69;
    v71 = objc_msgSendSuper2(&v99, sel_init);
    swift_beginAccess();
    v72 = *&v3[v38];
    *&v3[v38] = v71;
  }

  swift_beginAccess();
  *v39 = v33;
  v39[1] = v35;

  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v73 = static ScreenSize.zero;
  v74 = v94;
  v75 = v95;
  outlined init with copy of DateInterval?(v95, v94);
  v76 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v77 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v77 = 0;
  v77[1] = 0;
  v78 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v79 = type metadata accessor for DateInterval();
  (*(*(v79 - 8) + 56))(&v3[v78], 1, 1, v79);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v73;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v80 = *&v3[v76];
  *&v3[v76] = 0;
  v81 = v73;

  swift_beginAccess();
  v82 = v91;
  *v77 = v92;
  v77[1] = v82;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v74, &v3[v78]);
  v83 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v90;
  (*(ObjectType + 328))(v101, v83);
  LOBYTE(v78) = v101[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v84 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v84 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v84 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v84 + 112) = v78;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v84;
  v85 = type metadata accessor for AssetViewModel(0);
  v100.receiver = v3;
  v100.super_class = v85;
  v86 = objc_msgSendSuper2(&v100, sel_init);
  outlined destroy of DateInterval?(v74);
  outlined destroy of DateInterval?(v75);
  return v86;
}

uint64_t type metadata accessor for TransferVideoViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for TransferVideoViewModel;
  if (!type metadata singleton initialization cache for TransferVideoViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferVideoViewModel.CodingKeys and conformance TransferVideoViewModel.CodingKeys);
  }

  return result;
}

void *MutableLivePhotoViewModel.build()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v58 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for DateInterval();
  v59 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v16)
  {
    return 0;
  }

  v17 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (!v17)
  {
    return 0;
  }

  v56 = v5;
  v57 = v17;
  v18 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v18, v12);
  v19 = v59;
  if ((*(v59 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of DateInterval?(v12);
    return 0;
  }

  (*(v19 + 32))(v15, v12, v13);
  (*(v2 + 16))(v58, v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v1);
  v21 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v22 = v21[1];
  v54 = *v21;
  v55 = v22;
  (*(v19 + 16))(v10, v15, v13);
  (*(v19 + 56))(v10, 0, 1, v13);
  v23 = OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto;
  swift_beginAccess();
  v24 = *(v0 + v23);
  v25 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_squareCropRect;
  swift_beginAccess();
  v26 = *(v25 + 16);
  v61[0] = *v25;
  v61[1] = v26;
  v62 = *(v25 + 32);
  v27 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_landscapeCropRect;
  swift_beginAccess();
  v28 = *(v27 + 16);
  v63[0] = *v27;
  v63[1] = v28;
  v64 = *(v27 + 32);
  v29 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_portraitCropRect;
  swift_beginAccess();
  v30 = *(v29 + 16);
  v65[0] = *v29;
  v65[1] = v30;
  v66 = *(v29 + 32);
  v31 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier);
  swift_beginAccess();
  v32 = v31[1];
  v53 = *v31;
  v33 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier);
  swift_beginAccess();
  v34 = v33[1];
  v52 = *v33;
  if (v24)
  {
    v35 = v32;
    v36 = *(*v24 + 96);
    v37 = v34;

    v38 = v16;

    v50 = v35;

    v40 = v36(v39);
    if (v40)
    {
      v41 = v40;
      v42 = v24;
      v43 = Image.uiImage.getter();

      v44 = v56;
      if (v43)
      {

        v45 = 1;
      }

      else
      {
        v45 = 0;
      }

      v47 = v42;
      v51 = v42;
    }

    else
    {
      v45 = 0;
      v51 = v24;
      v47 = v24;
      v44 = v56;
    }

    v32 = v50;
  }

  else
  {
    v37 = v34;

    v46 = v16;

    v51 = 0;
    v45 = 0;
    v47 = 0;
    v44 = v56;
  }

  v60[0] = v45;
  UUID.init()();
  type metadata accessor for DBLivePhotoModel(0);
  swift_allocObject();
  v48 = specialized DBLivePhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(v44, v58, v16, v57, v54, v55, v10, v47, v61, v63, v65, v53, v32, v52, v37, v60);

  (*(v59 + 8))(v15, v13);
  return v48;
}

uint64_t type metadata accessor for StateOfMind(uint64_t a1)
{
  result = type metadata singleton initialization cache for StateOfMind;
  if (!type metadata singleton initialization cache for StateOfMind)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double StateOfMind.labelsRawValues.getter()
{
  type metadata accessor for StateOfMind(0);

  return result;
}

double StateOfMind.associationsRawValues.getter()
{
  type metadata accessor for StateOfMind(0);

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance StateOfMind.CodingKeys()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x65636E656C6176;
  v4 = 0x6152736C6562616CLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x56776152646E696BLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StateOfMind.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized StateOfMind.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StateOfMind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StateOfMind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StateOfMind.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI11StateOfMindV10CodingKeys33_943851A03D1A3928EFDA8A64FA1FACB5LLOGMd, &_ss22KeyedEncodingContainerVy9MomentsUI11StateOfMindV10CodingKeys33_943851A03D1A3928EFDA8A64FA1FACB5LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9580]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for StateOfMind(0);
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + *(v9 + 28));
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], MEMORY[0x277D83B90], MEMORY[0x277D83948]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + *(v9 + 32));
    v12 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys;
  if (!lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys;
  if (!lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys;
  if (!lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys;
  if (!lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys);
  }

  return result;
}

int *StateOfMind.init(date:kindRawValue:valence:labelsRawValues:associationsRawValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  outlined init with take of Date?(a1, a8);
  result = type metadata accessor for StateOfMind(0);
  v16 = a8 + result[5];
  *v16 = a2;
  *(v16 + 8) = a3 & 1;
  v17 = a8 + result[6];
  *v17 = a4;
  *(v17 + 8) = a5 & 1;
  *(a8 + result[7]) = a6;
  *(a8 + result[8]) = a7;
  return result;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of StateOfMind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata completion function for StateOfMind(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Int?, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Int]?(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [Int]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [Int]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Int]?);
    }
  }
}

uint64_t specialized StateOfMind.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56776152646E696BLL && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E656C6176 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6152736C6562616CLL && a2 == 0xEF7365756C615677 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002165825D0 == a2)
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

void specialized Sequence.forEach(_:)(unint64_t a1, double *a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CE93180](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      closure #1 in NotificationHandlingManager.fetchEligibleSuggestions(with:)(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
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
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ9MomentsUI12DBAssetModelC5StyleO_Tt1g5(Swift::Int result, uint64_t a2)
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
    MEMORY[0x21CE937C0](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
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

uint64_t _sSh2eeoiySbShyxG_ABtFZSi_Tt1g5(uint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = MEMORY[0x21CE937A0](*(a2 + 40), v13);
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
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

uint64_t NotificationHandlingManager.handleEngagementEvent(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.handleEngagementEvent(with:), 0, 0);
}

uint64_t NotificationHandlingManager.handleEngagementEvent(with:)()
{
  v1 = v0[4];
  v2 = specialized static DefaultsManager.Notifications.lastNotificationClientBundleID.getter();
  v0[5] = v3;
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = specialized static DefaultsManager.Notifications.lastNotificationClientURL.getter();
  v0[6] = v7;
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = NotificationHandlingManager.handleEngagementEvent(with:);
  v12 = v0[4];
  v13 = v0[2];

  return NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(v12, v4, v5, v8, v9, 0, v13);
}

{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(*v1 + 64) = v0;

  outlined destroy of UTType?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  if (v0)
  {

    return MEMORY[0x2822009F8](NotificationHandlingManager.handleEngagementEvent(with:), 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

void specialized MutableCollection<>.sort(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for DateComponents();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(a1, a2);
  *v2 = v5;
}

id NotificationHandlingManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static NotificationHandlingManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static NotificationHandlingManager.shared;

  return v1;
}

id NotificationHandlingManager.notificationCenter.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_notificationCenter;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void NotificationHandlingManager.notificationCenter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_notificationCenter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id NotificationHandlingManager.journalNotificationCenter.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v1 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216578900);
  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

id NotificationHandlingManager.init()()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  v3 = &v0[OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppActionURL];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static CommonLogger.notification);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21607C000, v5, v6, "Initializing NotificationHandlingManager", v7, 2u);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  v8 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v9 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x800000021657DB20);
  v10 = [v8 initWithBundleIdentifier_];

  v11 = OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_notificationCenter;
  *&v1[OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_notificationCenter] = v10;
  v12 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x800000021657DB20);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UNNotificationAction, 0x277CE1F80);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = Array._bridgeToObjectiveC()().super.isa;
  v15 = [objc_opt_self() categoryWithIdentifier:v12 actions:isa intentIdentifiers:v14 options:1];

  swift_beginAccess();
  v16 = *&v1[v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658E210;
  *(inited + 32) = v15;
  v18 = v16;
  v19 = v15;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo22UNNotificationCategoryC_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UNNotificationCategory, 0x277CE1F98);
  lazy protocol witness table accessor for type UNNotificationCategory and conformance NSObject();
  v20 = Set._bridgeToObjectiveC()().super.isa;

  [v18 setNotificationCategories_];

  v23.receiver = v1;
  v23.super_class = type metadata accessor for NotificationHandlingManager();
  v21 = objc_msgSendSuper2(&v23, sel_init);

  return v21;
}

id NotificationHandlingManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationHandlingManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 264) = a7;
  *(v8 + 272) = v7;
  *(v8 + 532) = a6;
  *(v8 + 248) = a4;
  *(v8 + 256) = a5;
  *(v8 + 232) = a2;
  *(v8 + 240) = a3;
  *(v8 + 224) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), 0, 0);
}

uint64_t NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)()
{
  v55 = v0;
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 264);
  v4 = *(v0 + 224);
  v5 = type metadata accessor for Logger();
  *(v0 + 312) = __swift_project_value_buffer(v5, static CommonLogger.notification);
  outlined init with copy of DateInterval?(v4, v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DateInterval?(v3, v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 304);
  if (v8)
  {
    v53 = v7;
    v10 = *(v0 + 288);
    v12 = *(v0 + 248);
    v11 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54 = v52;
    *v15 = 136316162;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v54);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v54);
    *(v15 + 22) = 2080;
    outlined init with copy of DateInterval?(v9, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v16 = type metadata accessor for UUID();
    v17 = *(v16 - 8);
    v51 = *(v17 + 48);
    v18 = v51(v10, 1, v16);
    v19 = *(v0 + 288);
    if (v18 == 1)
    {
      outlined destroy of UTType?(*(v0 + 288), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v21 = UUID.uuidString.getter();
      v20 = v23;
      (*(v17 + 8))(v19, v16);
    }

    v24 = *(v0 + 296);
    v25 = *(v0 + 280);
    v26 = *(v0 + 532);
    outlined destroy of UTType?(*(v0 + 304), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v54);

    *(v15 + 24) = v27;
    *(v15 + 32) = 1024;
    *(v15 + 34) = v26;
    *(v15 + 38) = 2080;
    outlined init with copy of DateInterval?(v24, v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v28 = v51(v25, 1, v16);
    v29 = *(v0 + 280);
    if (v28 == 1)
    {
      outlined destroy of UTType?(*(v0 + 280), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v30 = 0xE300000000000000;
      v31 = 7104878;
    }

    else
    {
      v31 = UUID.uuidString.getter();
      v30 = v32;
      (*(v17 + 8))(v29, v16);
    }

    outlined destroy of UTType?(*(v0 + 296), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, &v54);

    *(v15 + 40) = v33;
    _os_log_impl(&dword_21607C000, v6, v53, "[NotificationHandlingManager] didReceiveNotificationServiceTrigger, bundleID: %s, customURLFormat: %s, testSuggestionID: %s forRealtime: %{BOOL}d, from engaged suggestion: %s", v15, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v52, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  else
  {
    v22 = *(v0 + 296);

    outlined destroy of UTType?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of UTType?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v34 = *(v0 + 272);
  v36 = *(v0 + 248);
  v35 = *(v0 + 256);
  v37 = *(v0 + 232);
  v38 = *(v0 + 240);
  v39 = *(v0 + 224);
  v40 = OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID;
  *(v0 + 320) = OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID;
  v41 = (v34 + v40);
  *v41 = v37;
  v41[1] = v38;

  v42 = (v34 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppActionURL);
  *v42 = v36;
  v42[1] = v35;

  v43 = type metadata accessor for UUID();
  *(v0 + 528) = (*(*(v43 - 8) + 48))(v39, 1, v43);
  v44 = *v41;
  v45 = v41[1];
  v46 = MEMORY[0x277D837D0];
  *(v0 + 168) = MEMORY[0x277D837D0];
  *(v0 + 144) = v44;
  *(v0 + 152) = v45;

  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(v0 + 144, 0xD00000000000001ELL, 0x8000000216581520);
  outlined destroy of UTType?(v0 + 144, &_sypSgMd, &_sypSgMR);
  v48 = *v42;
  v47 = v42[1];
  *(v0 + 200) = v46;
  *(v0 + 176) = v48;
  *(v0 + 184) = v47;

  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)(v0 + 176, 0xD000000000000019, 0x8000000216581500);
  outlined destroy of UTType?(v0 + 176, &_sypSgMd, &_sypSgMR);
  v49 = swift_task_alloc();
  *(v0 + 328) = v49;
  *v49 = v0;
  v49[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);

  return NotificationHandlingManager.clearPendingNotifications()();
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), 0, 0);
}

{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 272)) + 0x68))();
  *(v0 + 336) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 208;
  *(v0 + 24) = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22UNNotificationSettingsCs5NeverOGMd, &_sSccySo22UNNotificationSettingsCs5NeverOGMR);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 104) = &block_descriptor_25;
  *(v0 + 112) = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), 0, 0);
}

{
  v1 = *(v0 + 208);

  v2 = [v1 authorizationStatus];
  if (v2 == 2)
  {
    v3 = (*(v0 + 272) + *(v0 + 320));
    v5 = *v3;
    v4 = v3[1];
    objc_allocWithZone(MEMORY[0x277CC1E70]);

    v11 = swift_task_alloc();
    *(v0 + 344) = v11;
    *v11 = v0;
    v11[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
    v12 = *(v0 + 264);

    return NotificationHandlingManager.trackAndProcessDeliveredNotification(from:)(v12);
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21607C000, v6, v7, "[NotificationHandlingManager] JS Notifications not authorized", v8, 2u);
      MEMORY[0x21CE94770](v8, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), 0, 0);
}

{
  v1 = specialized NotificationHandlingManager.getScheduleType()();
  *(v0 + 352) = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_21607C000, v2, v3, "[NotificationHandlingManager] Schedule type: %lu", v4, 0xCu);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v5 = *(v0 + 528);

  specialized NotificationHandlingManager.weeklyCountCleanup()();
  if (v5 != 1)
  {
LABEL_9:
    v10 = 0;
LABEL_10:
    *(v0 + 408) = v10;
    v11 = swift_task_alloc();
    *(v0 + 416) = v11;
    *v11 = v0;
    v11[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
    v12 = *(v0 + 224);

    return NotificationHandlingManager.fetchEligibleSuggestions(with:)(v12);
  }

  if (v1 == 2)
  {
    v10 = specialized NotificationHandlingManager.getScheduledNotificationTrigger()();
    if (!v10)
    {
      lazy protocol witness table accessor for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError();
      swift_allocError();
      *v16 = 2;
      swift_willThrow();

      v17 = *(v0 + 8);
LABEL_23:

      return v17();
    }

    goto LABEL_10;
  }

  if (v1 != 1)
  {
    if (!v1)
    {
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "[NotificationHandlingManager] Ending notification servicing, schedule is off...";
LABEL_21:
        _os_log_impl(&dword_21607C000, v6, v7, v9, v8, 2u);
        MEMORY[0x21CE94770](v8, -1, -1);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    goto LABEL_9;
  }

  if ((*(v0 + 532) & 1) == 0)
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "[NotificationHandlingManager] Ending notification servicing, schedule is smart but realtime trigger is false.";
      goto LABEL_21;
    }

LABEL_22:

    v17 = *(v0 + 8);
    goto LABEL_23;
  }

  *(v0 + 360) = objc_opt_self();
  *(v0 + 368) = type metadata accessor for MainActor();
  *(v0 + 376) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), v15, v14);
}

{
  v1 = *(v0 + 360);

  *(v0 + 384) = [v1 currentDevice];

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), 0, 0);
}

{
  v1 = *(v0 + 384);

  *(v0 + 400) = [v1 userInterfaceIdiom];

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), 0, 0);
}

{
  v43 = v0;
  if (*(v0 + 432))
  {
    v1 = *(v0 + 432);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_21:

    v4 = 0;
    goto LABEL_22;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_6:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x21CE93180](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  *(v0 + 440) = v3;

  v5 = *(&v4->isa + OBJC_IVAR____TtC9MomentsUI10Suggestion_title);
  if (!v5)
  {
LABEL_22:
    *(v0 + 480) = v4;
    v23 = *(v0 + 352);
    if (v23 == 1)
    {
      if (NotificationHandlingManager.isEligibleForGenericSmartNotification()())
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_21607C000, v29, v30, "[NotificationHandlingManager] 0 eligible suggestions, attempting to post fallback ttw notification", v31, 2u);
          MEMORY[0x21CE94770](v31, -1, -1);
        }

        v41 = 0xD00000000000001ELL;
        v42 = 0x8000000216582620;
        *(v0 + 216) = 0;
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x21CE92100](v32);

        v34 = v41;
        v33 = v42;
        *(v0 + 504) = v42;
        v35 = swift_task_alloc();
        *(v0 + 512) = v35;
        *v35 = v0;
        v35[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
        v36 = *(v0 + 408);

        return NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:)(v36, v34, v33, 1);
      }
    }

    else if (v23 == 2)
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_21607C000, v24, v25, "[NotificationHandlingManager] 0 eligible suggestions, attempting to post fallback ttw notification", v26, 2u);
        MEMORY[0x21CE94770](v26, -1, -1);
      }

      v27 = *(v0 + 528);

      v28 = swift_task_alloc();
      *(v0 + 488) = v28;
      *v28 = v0;
      v28[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);

      return NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:)(0, v27 != 1);
    }

    v19 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    v38 = os_log_type_enabled(v19, v37);
    v18 = *(v0 + 408);
    if (v38)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_21607C000, v19, v37, "[NotificationHandlingManager] Ending notification servicing, nothing to do...", v39, 2u);
      MEMORY[0x21CE94770](v39, -1, -1);
    }

    goto LABEL_37;
  }

  v6 = *((*MEMORY[0x277D85000] & *v5) + 0x58);
  v4 = v4;
  v7 = v5;
  v6();
  v9 = v8;

  if (!v9)
  {

    goto LABEL_22;
  }

  v10 = v4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v41 = v14;
    *v13 = 136315138;
    v15 = UUID.uuidString.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v41);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_21607C000, v11, v12, "[NotificationHandlingManager] Top suggestionID: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x21CE94770](v14, -1, -1);
    MEMORY[0x21CE94770](v13, -1, -1);
  }

  if (*(v0 + 528) == 1 && (*(v0 + 352) - 1) > 1)
  {
    v4 = *(v0 + 440);
    v18 = *(v0 + 408);
    v19 = v4;
LABEL_37:

    v40 = *(v0 + 8);

    return v40();
  }

  v20 = swift_task_alloc();
  *(v0 + 448) = v20;
  *v20 = v0;
  v20[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  v21 = *(v0 + 408);
  v22 = *(v0 + 352);

  return NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:)(v10, v21, v22);
}

{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  else
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (*(v0 + 352) == 2 && *(v0 + 528) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 464) = v1;
    *v1 = v0;
    v1[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);

    return NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:)(1, 0);
  }

  else
  {
    v3 = *(v0 + 440);
    v4 = *(v0 + 408);

    v5 = *(v0 + 8);

    return v5();
  }
}

{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  else
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[55];
  v2 = v0[51];

  v3 = v0[1];

  return v3();
}

{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  else
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 408);

  v2 = *(v0 + 8);

  return v2();
}

{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  else
  {
    v2 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 408);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 408);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[55];
  v2 = v0[51];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[55];
  v2 = v0[51];

  v3 = v0[1];

  return v3();
}

uint64_t NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(uint64_t a1)
{
  *(v1 + 392) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:), v3, v2);
}

{
  if (v1[50])
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "[NotificationHandlingManager] Only iphone is eligible for smart schedule.";
LABEL_13:
      _os_log_impl(&dword_21607C000, v2, v3, v5, v4, 2u);
      MEMORY[0x21CE94770](v4, -1, -1);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (!NotificationHandlingManager.doesNextSmartNotificationPassRecencyCheck()())
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "[NotificationHandlingManager] Ending notification servicing, last posted was under 20h from previous notification";
      goto LABEL_13;
    }

LABEL_14:

    v9 = v1[1];

    return v9();
  }

  if (!specialized NotificationHandlingManager.isEligibleForSmartNotification()())
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "[NotificationHandlingManager] Ending notification servicing, quota maxed, ineligible for new smart notification";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v1[51] = 0;
  v6 = swift_task_alloc();
  v1[52] = v6;
  *v6 = v1;
  v6[1] = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  v7 = v1[28];

  return NotificationHandlingManager.fetchEligibleSuggestions(with:)(v7);
}

{
  v4 = *v2;
  *(*v2 + 424) = v1;

  if (v1)
  {
    v5 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  else
  {
    *(v4 + 432) = a1;
    v5 = NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t NotificationHandlingManager.clearPendingNotifications()()
{
  v1[47] = v0;
  v2 = type metadata accessor for Date();
  v1[48] = v2;
  v1[49] = *(v2 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = type metadata accessor for NotificationAnalyticsManager.NotificationEvent(0);
  v1[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.clearPendingNotifications(), 0, 0);
}

{
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[59] = __swift_project_value_buffer(v1, static CommonLogger.notification);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[NotificationHandlingManager] Clearing pending notifications...", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v5 = v0[47];

  v6 = *((*MEMORY[0x277D85000] & *v5) + 0xB0);
  v7 = ((*MEMORY[0x277D85000] & *v5) + 176) & 0xFFFFFFFFFFFFLL | 0x6128000000000000;
  v0[60] = v6;
  v0[61] = v7;
  v8 = v6();
  v0[62] = v8;
  v0[2] = v0;
  v0[7] = v0 + 45;
  v0[3] = NotificationHandlingManager.clearPendingNotifications();
  v9 = swift_continuation_init();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo21UNNotificationRequestCGs5NeverOGMd, &_sSccySaySo21UNNotificationRequestCGs5NeverOGMR);
  v0[63] = v10;
  v0[25] = v10;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [UNNotificationRequest];
  v0[21] = &block_descriptor_13_0;
  v0[22] = v9;
  [v8 getPendingNotificationRequestsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.clearPendingNotifications(), 0, 0);
}

{
  v1 = *(v0 + 360);

  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    v3 = v2;
    v29 = v0;
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v0;
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return MEMORY[0x282200938](v2);
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  v7 = v1;
  do
  {
    if (v5)
    {
      v8 = MEMORY[0x21CE93180](v4, v1);
    }

    else
    {
      v8 = *(v1 + 8 * v4 + 32);
    }

    v9 = v8;
    v10 = [v8 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = 0x54656D6954707061;
    v14._object = 0xEE0065746972576FLL;
    if (String.hasPrefix(_:)(v14))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v16 = *(v6 + 2);
      v15 = *(v6 + 3);
      if (v16 >= v15 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v6);
      }

      *(v6 + 2) = v16 + 1;
      v17 = &v6[16 * v16];
      *(v17 + 4) = v11;
      *(v17 + 5) = v13;
      v1 = v7;
    }

    else
    {
    }

    ++v4;
  }

  while (v3 != v4);
LABEL_17:
  v18 = v29[63];
  v19 = v29[60];
  v20 = v29[47];

  v22 = v19(v21);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 removePendingNotificationRequestsWithIdentifiers_];

  v24 = *((*MEMORY[0x277D85000] & *v20) + 0x68);
  v25 = (*MEMORY[0x277D85000] & *v20) + 104;
  v29[64] = v24;
  v29[65] = v25 & 0xFFFFFFFFFFFFLL | 0xAEB4000000000000;
  v26 = v24();
  v29[66] = v26;
  v29[10] = v29;
  v29[15] = v29 + 46;
  v29[11] = NotificationHandlingManager.clearPendingNotifications();
  v27 = swift_continuation_init();
  v29[33] = v18;
  v29[26] = MEMORY[0x277D85DD0];
  v29[27] = 1107296256;
  v29[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [UNNotificationRequest];
  v29[29] = &block_descriptor_16;
  v29[30] = v27;
  [v26 getPendingNotificationRequestsWithCompletionHandler_];
  v2 = (v29 + 10);

  return MEMORY[0x282200938](v2);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.clearPendingNotifications(), 0, 0);
}

{
  v81 = v0;
  v3 = *(v0 + 368);

  v75 = v3;
  if (v3 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_24;
  }

  v6 = 0;
  v71 = v74[53];
  v72 = v74[54];
  v70 = v3 & 0xC000000000000001;
  v79 = (v74[49] + 56);
  *&v4 = 136315394;
  v69 = v4;
  v73 = v5;
  do
  {
    if (v70)
    {
      v13 = MEMORY[0x21CE93180](v6, v75);
    }

    else
    {
      v13 = *(v75 + 8 * v6 + 32);
    }

    v14 = v13;
    v15 = [v13 content];
    v16 = [v15 userInfo];

    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v74[43] = 0x44676E6974736F70;
    v74[44] = 0xEB00000000657461;
    AnyHashable.init<A>(_:)();
    if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)((v74 + 34)), (v19 & 1) != 0))
    {
      v20 = v74[58];
      v21 = v74[48];
      outlined init with copy of Any(*(v17 + 56) + 32 * v18, (v74 + 39));
      outlined destroy of AnyHashable((v74 + 34));
      v22 = swift_dynamicCast();
      v23 = *v79;
      v24 = v22 ^ 1u;
      v25 = v20;
    }

    else
    {
      v26 = v74[58];
      v21 = v74[48];
      outlined destroy of AnyHashable((v74 + 34));
      v23 = *v79;
      v25 = v26;
      v24 = 1;
    }

    v77 = v23;
    v23(v25, v24, 1, v21);
    v78 = v14;
    v27 = [v14 identifier];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    v76 = v17;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v80 = v34;
      *v33 = v69;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v80);
      *(v33 + 12) = 2080;
      v35 = Dictionary.description.getter();
      v37 = v28;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v80);

      *(v33 + 14) = v38;
      v28 = v37;
      _os_log_impl(&dword_21607C000, v31, v32, "[NotificationHandlingManager] Clearing pending notification with identifier: %s, with info: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v34, -1, -1);
      MEMORY[0x21CE94770](v33, -1, -1);
    }

    if (v28 != 0xD000000000000015 || 0x8000000216582660 != v30)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v8 = v74[57];
    v7 = v74[58];
    v9 = v74[54];
    v10 = v74[48];

    outlined init with copy of DateInterval?(v7, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v11 = *(v71 + 24);
    v77(&v9[v11], 1, 1, v10);
    v12 = *(v71 + 28);
    *v9 = 2;
    *(v72 + 8) = 0;
    outlined assign with take of Date?(v8, &v9[v11]);
    *&v9[v12] = v76;
    NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()();

    outlined destroy of NotificationAnalyticsManager.NotificationEvent(v9);
    ++v6;
    outlined destroy of UTType?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  while (v73 != v6);
LABEL_20:
  v39 = v74;
  v40 = v74[64];
  v41 = v74[56];
  v42 = v74[48];
  v43 = v74[49];

  v45 = v40(v44);
  [v45 removeAllPendingNotificationRequests];

  NotificationHandlingManager.getLastPostedDate(forSuggestionOnly:)(0, v41);
  v1 = *(v43 + 48);
  if (v1(v41, 1, v42) == 1)
  {
    outlined destroy of UTType?(v74[56], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_28;
  }

  v46 = v74[51];
  v47 = v74[48];
  v48 = v74[49];
  (*(v48 + 32))(v74[52], v74[56], v47);
  static Date.now.getter();
  v49 = static Date.> infix(_:_:)();
  v2 = *(v48 + 8);
  v2(v46, v47);
  if ((v49 & 1) == 0)
  {
    v2(v74[52], v74[48]);
    goto LABEL_28;
  }

  if (one-time initialization token for momentsUI != -1)
  {
    goto LABEL_42;
  }

LABEL_24:
  v50 = static DefaultsManager.momentsUI;
  v51 = v74[52];
  v52 = v74[48];
  if (static DefaultsManager.momentsUI)
  {
    v53 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x80000002165809D0);
    [v50 removeObjectForKey_];
  }

  v2(v51, v52);
  v39 = v74;
LABEL_28:
  v54 = v39[55];
  v55 = v39[48];
  NotificationHandlingManager.getLastPostedDate(forSuggestionOnly:)(1, v54);
  if (v1(v54, 1, v55) == 1)
  {
    outlined destroy of UTType?(v39[55], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v56 = v39[51];
    v57 = v39[48];
    v58 = v39[49];
    (*(v58 + 32))(v39[50], v39[55], v57);
    static Date.now.getter();
    v59 = static Date.> infix(_:_:)();
    v60 = *(v58 + 8);
    v60(v56, v57);
    if (v59)
    {
      if (one-time initialization token for momentsUI != -1)
      {
        swift_once();
      }

      v61 = static DefaultsManager.momentsUI;
      v62 = v39[50];
      v63 = v39[48];
      if (static DefaultsManager.momentsUI)
      {
        v64 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580A10);
        [v61 removeObjectForKey_];
      }

      v65 = v62;
      v66 = v63;
    }

    else
    {
      v65 = v39[50];
      v66 = v39[48];
    }

    v60(v65, v66);
  }

  v67 = v39[1];

  return v67();
}

uint64_t NotificationHandlingManager.currentJSAuthorizationStatus()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](NotificationHandlingManager.currentJSAuthorizationStatus(), 0, 0);
}

{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 152)) + 0x68))();
  *(v0 + 160) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = NotificationHandlingManager.currentJSAuthorizationStatus();
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22UNNotificationSettingsCs5NeverOGMd, &_sSccySo22UNNotificationSettingsCs5NeverOGMR);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 104) = &block_descriptor_19_1;
  *(v0 + 112) = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.currentJSAuthorizationStatus(), 0, 0);
}

{
  v1 = *(v0 + 144);

  v2 = [v1 authorizationStatus];
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t NotificationHandlingManager.trackAndProcessDeliveredNotification(from:)(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[43] = swift_task_alloc();
  v2[44] = type metadata accessor for NotificationAnalyticsManager.NotificationEvent(0);
  v2[45] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.trackAndProcessDeliveredNotification(from:), 0, 0);
}

uint64_t NotificationHandlingManager.trackAndProcessDeliveredNotification(from:)()
{
  v1 = v0[40];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v3 = ((*MEMORY[0x277D85000] & *v1) + 104) & 0xFFFFFFFFFFFFLL | 0xAEB4000000000000;
  v0[49] = v2;
  v0[50] = v3;
  v4 = v2();
  v0[51] = v4;
  v0[2] = v0;
  v0[7] = v0 + 38;
  v0[3] = NotificationHandlingManager.trackAndProcessDeliveredNotification(from:);
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo14UNNotificationCGs5NeverOGMd, &_sSccySaySo14UNNotificationCGs5NeverOGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [UNNotification];
  v0[13] = &block_descriptor_22;
  v0[14] = v5;
  [v4 getDeliveredNotificationsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.trackAndProcessDeliveredNotification(from:), 0, 0);
}

{
  v117 = v0;
  v1 = v0;
  v2 = *(v0 + 304);

  if (one-time initialization token for notification != -1)
  {
LABEL_65:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static CommonLogger.notification);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = v2 >> 62;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v6)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v7 + 4) = v8;

    _os_log_impl(&dword_21607C000, v4, v5, "Number of delivered notifications in NotificationCenter currently: %ld", v7, 0xCu);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  else
  {
  }

  if (v6)
  {
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_67:

    goto LABEL_68;
  }

  v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_67;
  }

LABEL_9:
  v10 = 0;
  v11 = v1[47];
  v104 = v1[44];
  v105 = v1[45];
  v101 = v2 & 0xFFFFFFFFFFFFFF8;
  v102 = (v11 + 56);
  v103 = (v11 + 16);
  v99 = "LastDeliveredGenericID";
  v109 = (v11 + 8);
  v110 = v2 & 0xC000000000000001;
  v107 = v9;
  v108 = v2;
  v106 = v1;
  while (1)
  {
    if (v110)
    {
      v12 = MEMORY[0x21CE93180](v10, v2);
    }

    else
    {
      if (v10 >= *(v101 + 16))
      {
        goto LABEL_64;
      }

      v12 = *(v2 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v14 = [v12 request];
    v15 = [v14 content];

    v16 = [v15 userInfo];
    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v17);
    v19 = v18;

    v114 = v10 + 1;
    if (!v19)
    {
      v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v20 = [v13 request];
    v21 = [v20 identifier];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = [v13 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v115 = v13;
    if ((v22 != 0xD000000000000015 || 0x8000000216582660 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !*(v19 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(0x6974736567677573, 0xEC00000044496E6FLL), (v27 & 1) == 0) || (outlined init with copy of Any(*(v19 + 56) + 32 * v26, (v1 + 26)), (swift_dynamicCast() & 1) == 0))
    {
      v112 = v22;
      v32 = specialized static DefaultsManager.Notifications.lastDeliveredGenericNotificationID.getter();
      v34 = v33;
      if (*(v19 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000026, 0x80000002165814B0), (v36 & 1) != 0) && (outlined init with copy of Any(*(v19 + 56) + 32 * v35, (v1 + 18)), swift_dynamicCast()))
      {
        v37 = v1[34];
        v38 = v1[35];
        v113 = v24;
        if (!v34)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v37 = 0;
        v38 = 0xE000000000000000;
        v113 = v24;
        if (!v34)
        {
          goto LABEL_38;
        }
      }

      if (v32 == v37 && v34 == v38)
      {

LABEL_37:

        goto LABEL_39;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v39)
      {
        goto LABEL_37;
      }

LABEL_38:
      v40 = v1[45];
      v41 = v1[46];
      v42 = v1[43];
      (*v103)(v42, v1[48], v41);
      v43 = *v102;
      (*v102)(v42, 0, 1, v41);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);
      v45 = v44;

      v46 = *(v104 + 24);
      v43(&v40[v46], 1, 1, v41);
      v47 = *(v104 + 28);
      *v40 = 3;
      *(v105 + 8) = 0;
      outlined assign with take of Date?(v42, &v40[v46]);
      *&v40[v47] = v45;
      v1 = v106;
      NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()();
      v106[25] = MEMORY[0x277D837D0];
      v106[22] = v37;
      v106[23] = v38;
      specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)((v106 + 22), 0xD000000000000026, 0x80000002165814B0);
      outlined destroy of NotificationAnalyticsManager.NotificationEvent(v40);
      outlined destroy of UTType?((v106 + 22), &_sypSgMd, &_sypSgMR);
LABEL_39:
      v48 = v1[41];
      outlined init with copy of DateInterval?(v1[39], v48, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v49 = type metadata accessor for UUID();
      v50 = *(v49 - 8);
      if ((*(v50 + 48))(v48, 1, v49) == 1)
      {
        v51 = v1[41];
        (*v109)(v1[48], v1[46]);

        outlined destroy of UTType?(v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v2 = v108;
      }

      else
      {
        v52 = v1[41];
        v53 = UUID.uuidString.getter();
        v55 = v54;
        (*(v50 + 8))(v52, v49);

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v116[0] = v59;
          *v58 = 136315138;
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v116);

          *(v58 + 4) = v60;
          _os_log_impl(&dword_21607C000, v56, v57, "Removing delivered TTW notification as we've engaged with suggestionID: %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v59);
          v61 = v59;
          v1 = v106;
          MEMORY[0x21CE94770](v61, -1, -1);
          MEMORY[0x21CE94770](v58, -1, -1);
        }

        else
        {
        }

        v2 = v108;
        v63 = v1[48];
        v64 = v1[46];
        v65 = (v1[49])(v62);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_21658CA50;
        *(v66 + 32) = v112;
        *(v66 + 40) = v113;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v65 removeDeliveredNotificationsWithIdentifiers_];

        (*v109)(v63, v64);
      }

      goto LABEL_45;
    }

    v29 = v1[36];
    v28 = v1[37];
    v30 = specialized static DefaultsManager.Notifications.lastDeliveredNotificationID.getter();
    v111 = v29;
    if (v31)
    {
      if (v30 == v29 && v31 == v28)
      {

LABEL_49:

        goto LABEL_51;
      }

      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v69)
      {
        goto LABEL_49;
      }
    }

    v70 = v1[45];
    v71 = v1[46];
    v72 = v1[43];
    (*v103)(v72, v1[48], v71);
    v73 = *v102;
    (*v102)(v72, 0, 1, v71);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);
    v100 = v74;

    v75 = *(v104 + 24);
    v73(&v70[v75], 1, 1, v71);
    v76 = *(v104 + 28);
    *v70 = 3;
    v1 = v106;
    *(v105 + 8) = 0;
    outlined assign with take of Date?(v72, &v70[v75]);
    *&v70[v76] = v100;
    NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()();
    v106[33] = MEMORY[0x277D837D0];
    v106[30] = v29;
    v106[31] = v28;

    specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)((v106 + 30), 0xD00000000000001FLL, v99 | 0x8000000000000000);
    outlined destroy of NotificationAnalyticsManager.NotificationEvent(v70);
    outlined destroy of UTType?((v106 + 30), &_sypSgMd, &_sypSgMR);
LABEL_51:
    v77 = v1[42];
    outlined init with copy of DateInterval?(v1[39], v77, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v78 = type metadata accessor for UUID();
    v79 = *(v78 - 8);
    v2 = v108;
    if ((*(v79 + 48))(v77, 1, v78) != 1)
    {
      break;
    }

    v80 = v1[42];
    (*v109)(v1[48], v1[46]);

    outlined destroy of UTType?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_45:
    v68 = v107;
LABEL_46:
    ++v10;
    if (v114 == v68)
    {
      goto LABEL_67;
    }
  }

  v81 = v1[42];
  v82 = UUID.uuidString.getter();
  v84 = v83;
  (*(v79 + 8))(v81, v78);
  if (v82 == v111 && v84 == v28)
  {
    v86 = v111;

    v87 = v115;
    goto LABEL_59;
  }

  v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v85 & 1) == 0)
  {
    (*v109)(v1[48], v1[46]);

    v68 = v107;
    goto LABEL_46;
  }

  v86 = v82;
  v87 = v115;
LABEL_59:

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v116[0] = v91;
    *v90 = 136315138;
    v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v84, v116);

    *(v90 + 4) = v92;
    _os_log_impl(&dword_21607C000, v88, v89, "Removing all delivered notifications as we've engaged suggestionID: %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v91);
    MEMORY[0x21CE94770](v91, -1, -1);
    MEMORY[0x21CE94770](v90, -1, -1);
  }

  else
  {
  }

  v94 = v1[48];
  v95 = v1[46];
  v96 = (v1[49])(v93);
  [v96 removeAllDeliveredNotifications];

  (*v109)(v94, v95);
LABEL_68:

  v97 = v1[1];

  return v97();
}

Swift::Bool __swiftcall NotificationHandlingManager.doesNextSmartNotificationPassRecencyCheck()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v37 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  NotificationHandlingManager.getLastPostedDate(forSuggestionOnly:)(0, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of UTType?(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v16 = 1;
  }

  else
  {
    (*(v4 + 32))(v15, v2, v3);
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v40 = v7;
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static CommonLogger.notification);
    (*(v4 + 16))(v13, v15, v3);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v20 = os_log_type_enabled(v18, v19);
    v41 = v15;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v39 = v10;
      v22 = v21;
      v38 = swift_slowAlloc();
      v42 = v38;
      *v22 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v26 = *(v4 + 8);
      v26(v13, v3);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v42);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_21607C000, v18, v19, "[NotificationHandlingManager] lastPostedDate: %s", v22, 0xCu);
      v28 = v38;
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x21CE94770](v28, -1, -1);
      v29 = v22;
      v10 = v39;
      MEMORY[0x21CE94770](v29, -1, -1);
    }

    else
    {

      v26 = *(v4 + 8);
      v26(v13, v3);
    }

    v30 = specialized static DefaultsManager.Notifications.holdoffFireHours.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = v30;
      _os_log_impl(&dword_21607C000, v31, v32, "[NotificationHandlingManager] holdoffFireHours: %f", v33, 0xCu);
      MEMORY[0x21CE94770](v33, -1, -1);
    }

    v34 = v40;
    static Date.now.getter();
    Date.addingTimeInterval(_:)();
    v26(v34, v3);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v35 = v41;
    LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
    v26(v10, v3);
    v26(v35, v3);
    v16 = v34 ^ 1;
  }

  return v16 & 1;
}

uint64_t NotificationHandlingManager.fetchEligibleSuggestions(with:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2[12] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.fetchEligibleSuggestions(with:), 0, 0);
}

{
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](NotificationHandlingManager.fetchEligibleSuggestions(with:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = NotificationHandlingManager.fetchEligibleSuggestions(with:);
  }

  else
  {
    *(v4 + 264) = a1;
    v5 = NotificationHandlingManager.fetchEligibleSuggestions(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = NotificationHandlingManager.fetchEligibleSuggestions(with:);
  }

  else
  {
    *(v4 + 304) = a1;
    v5 = NotificationHandlingManager.fetchEligibleSuggestions(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t NotificationHandlingManager.fetchEligibleSuggestions(with:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static MomentsUIManager.shared;
  v0[21] = static MomentsUIManager.shared;
  v0[22] = (*((*MEMORY[0x277D85000] & *v1) + 0x78))();
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = NotificationHandlingManager.fetchEligibleSuggestions(with:);

  return CloudManager.getDBManager()();
}

{
  v72 = v0;
  if (*(v0 + 192))
  {
    v1 = specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)();
    if (v2 & 1) != 0 && (v1 = specialized static DefaultsManager.getTrialDoubleValue(for:)(0xD000000000000026, 0x8000000216580AC0), (v3))
    {
      v4 = 0.1;
    }

    else
    {
      v4 = *&v1;
    }

    v5 = *(v0 + 168);
    *(v0 + 64) = v4;
    v6 = *((*MEMORY[0x277D85000] & *v5) + 0x60);
    v7 = ((*MEMORY[0x277D85000] & *v5) + 96) & 0xFFFFFFFFFFFFLL | 0x3D72000000000000;
    *(v0 + 200) = v6;
    *(v0 + 208) = v7;
    if (!v6(v1))
    {
      goto LABEL_33;
    }

    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 72))(ObjectType, v9);
    swift_unknownObjectRelease();
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static CommonLogger.notification);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v71 = v16;
      *v15 = 136315138;
      v17 = MEMORY[0x21CE922B0](v11, MEMORY[0x277D839F8]);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v71);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21607C000, v13, v14, "[NotificationHandlingManager] goodness scores of previously engaged suggestions: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x21CE94770](v16, -1, -1);
      MEMORY[0x21CE94770](v15, -1, -1);
    }

    v20 = specialized static DefaultsManager.Notifications.adaptiveGoodnessScoreSuggestionCountThreshold.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v20;
      _os_log_impl(&dword_21607C000, v21, v22, "[NotificationHandlingManager] engagement count requirement to update goodnessScore: %ld", v23, 0xCu);
      MEMORY[0x21CE94770](v23, -1, -1);
    }

    v24 = *(v11 + 16);
    if (v24 < v20)
    {

LABEL_33:
      if (one-time initialization token for notification != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      *(v0 + 216) = __swift_project_value_buffer(v40, static CommonLogger.notification);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 134217984;
        *(v43 + 4) = v4;
        _os_log_impl(&dword_21607C000, v41, v42, "[NotificationHandlingManager] fetch eligible suggestions... Goodness score threshold: %f", v43, 0xCu);
        MEMORY[0x21CE94770](v43, -1, -1);
      }

      v44 = *(v0 + 160);
      v45 = *(v0 + 104);
      v46 = *(v0 + 112);
      v47 = *(v0 + 96);
      v48 = *(v0 + 80);

      NotificationHandlingManager.getLookbackWindowStartDate()(v44);
      outlined init with copy of DateInterval?(v48, v47, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((*(v46 + 48))(v47, 1, v45) == 1)
      {
        outlined destroy of UTType?(*(v0 + 96), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        type metadata accessor for MainActor();
        *(v0 + 272) = static MainActor.shared.getter();
        v49 = dispatch thunk of Actor.unownedExecutor.getter();
        v51 = v50;
        v52 = NotificationHandlingManager.fetchEligibleSuggestions(with:);
      }

      else
      {
        v54 = *(v0 + 128);
        v53 = *(v0 + 136);
        v55 = *(v0 + 104);
        v56 = *(v0 + 112);
        (*(v56 + 32))(v53, *(v0 + 96), v55);
        (*(v56 + 16))(v54, v53, v55);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.info.getter();
        v59 = os_log_type_enabled(v57, v58);
        v60 = *(v0 + 128);
        v61 = *(v0 + 104);
        v62 = *(v0 + 112);
        if (v59)
        {
          v63 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v71 = v70;
          *v63 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v64 = dispatch thunk of CustomStringConvertible.description.getter();
          v66 = v65;
          v67 = *(v62 + 8);
          v67(v60, v61);
          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v71);

          *(v63 + 4) = v68;
          _os_log_impl(&dword_21607C000, v57, v58, "[NotificationHandlingManager] Search for suggestion matching ID:  %s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v70);
          MEMORY[0x21CE94770](v70, -1, -1);
          MEMORY[0x21CE94770](v63, -1, -1);
        }

        else
        {

          v67 = *(v62 + 8);
          v67(v60, v61);
        }

        *(v0 + 224) = v67;
        type metadata accessor for MainActor();
        *(v0 + 232) = static MainActor.shared.getter();
        v49 = dispatch thunk of Actor.unownedExecutor.getter();
        v51 = v69;
        v52 = NotificationHandlingManager.fetchEligibleSuggestions(with:);
      }

      return MEMORY[0x2822009F8](v52, v49, v51);
    }

    if (!v24)
    {
      v33 = 0.0;
      goto LABEL_31;
    }

    if (v24 > 3)
    {
      v32 = v24 & 0x7FFFFFFFFFFFFFFCLL;
      v34 = (v11 + 48);
      v33 = 0.0;
      v35 = v24 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v33 = v33 + *(v34 - 2) + *(v34 - 1) + *v34 + v34[1];
        v34 += 4;
        v35 -= 4;
      }

      while (v35);
      if (v24 == v32)
      {
LABEL_31:

        v39 = v33 / v24;
        if (v39 < v4)
        {
          v4 = fmax(v39, 0.05);
          *(v0 + 64) = v4;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v32 = 0;
      v33 = 0.0;
    }

    v36 = v24 - v32;
    v37 = (v11 + 8 * v32 + 32);
    do
    {
      v38 = *v37++;
      v33 = v33 + v38;
      --v36;
    }

    while (v36);
    goto LABEL_31;
  }

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static CommonLogger.notification);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_21607C000, v26, v27, "[NotificationHandlingManager] No db manager", v28, 2u);
    MEMORY[0x21CE94770](v28, -1, -1);
  }

  v29 = *(v0 + 8);
  v30 = MEMORY[0x277D84F90];

  return v29(v30);
}

{

  v0[30] = DBManager.mainWriter.getter();
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = NotificationHandlingManager.fetchEligibleSuggestions(with:);
  v2 = v0[17];

  return DBWriter.lookupSuggestionID(_:)(v2);
}

{

  v0[35] = DBManager.mainWriter.getter();
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = NotificationHandlingManager.fetchEligibleSuggestions(with:);
  v2 = v0[20];

  return DBWriter.fetchEligibleNotificationSuggestions(after:)(v2);
}

{
  v1 = v0[28];
  v2 = v0[17];
  v3 = v0[13];

  v1(v2, v3);
  (*(v0[19] + 8))(v0[20], v0[18]);

  v4 = v0[1];

  return v4();
}

{

  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

void NotificationHandlingManager.fetchEligibleSuggestions(with:)()
{
  v92 = v0;
  v1 = v0;
  v2 = v0[33];
  v3 = v0[28];
  v4 = v0[17];
  v5 = v0[13];
  v6 = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = v2;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v3(v4, v5);
  v8 = v1[32];
  v90 = v6;
  specialized Sequence.forEach(_:)(v7, v1 + 8, &v90);

  v91[0] = specialized Array._copyToContiguousArray()(v9);
  v10 = specialized MutableCollection<>.sort(by:)(v91);
  if (v8)
  {

    return;
  }

  v11 = v91[0];
  if ((v1[25])(v10))
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    (*(v13 + 64))(v91, ObjectType, v13);
    swift_unknownObjectRelease();
    v16 = v91[0];
    v15 = v91[1];
    v1[9] = v11;
    if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
    {
      goto LABEL_55;
    }

    for (i = *(v11 + 16); i; i = __CocoaSet.count.getter())
    {
      v81 = i;
      v82 = v11 & 0xC000000000000001;
      v78 = v11 + 32;
      v85 = v15 + 56;
      v80 = v1[14];
      v88 = (v80 + 8);
      v84 = v16 + 56;

      v18 = 0;
      v89 = v1;
      v79 = v11;
      v86 = v15;
      v87 = v16;
      while (1)
      {
        if (v82)
        {
          v20 = MEMORY[0x21CE93180](v18, v11);
        }

        else
        {
          if (v18 >= *(v11 + 16))
          {
            goto LABEL_53;
          }

          v20 = *(v78 + 8 * v18);
        }

        v19 = v20;
        if (__OFADD__(v18++, 1))
        {
          break;
        }

        v83 = v18;
        if (!*(v15 + 16))
        {
          goto LABEL_27;
        }

        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v22 = v19;
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v24 = -1 << *(v15 + 32);
        v25 = v23 & ~v24;
        if (((*(v85 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
LABEL_26:
          v16 = v87;
          v18 = v83;
          v19 = v22;
LABEL_27:
          if (!*(v16 + 16))
          {
            goto LABEL_14;
          }

LABEL_28:
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          v32 = v19;
          v16 = v87;
          v33 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v34 = -1 << *(v87 + 32);
          v35 = v33 & ~v34;
          if ((*(v84 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
          {
            v36 = ~v34;
            v37 = *(v80 + 72);
            v38 = *(v80 + 16);
            while (1)
            {
              v39 = v89[15];
              v40 = v89[13];
              v38(v39, *(v16 + 48) + v35 * v37, v40);
              _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
              v41 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v88)(v39, v40);
              if (v41)
              {
                break;
              }

              v35 = (v35 + 1) & v36;
              v16 = v87;
              if (((*(v84 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
              {
                v1 = v89;
                v11 = v79;
                v15 = v86;
                goto LABEL_13;
              }
            }

            v1 = v89;
            v19 = v32;
            v54 = v32;
            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v91[0] = v58;
              *v57 = 136315138;
              _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v59 = dispatch thunk of CustomStringConvertible.description.getter();
              v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v91);

              *(v57 + 4) = v61;
              _os_log_impl(&dword_21607C000, v55, v56, "[NotificationHandlingManager] Filter out suggestion %s due to selected engagement", v57, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v58);
              MEMORY[0x21CE94770](v58, -1, -1);
              MEMORY[0x21CE94770](v57, -1, -1);
            }

            v11 = v79;
            v15 = v86;
            v16 = v87;
            v62 = v54;
            v63 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v89 + 9, v62);

            v64 = v89[9];
            if (v64 >> 62)
            {
              v65 = __CocoaSet.count.getter();
              if (v65 < v63)
              {
LABEL_47:
                __break(1u);
LABEL_48:

                goto LABEL_57;
              }
            }

            else
            {
              v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v65 < v63)
              {
                goto LABEL_47;
              }
            }

            specialized Array.replaceSubrange<A>(_:with:)(v63, v65);
            v18 = v83;
          }

          else
          {
LABEL_13:
            v18 = v83;
            v19 = v32;
          }

          goto LABEL_14;
        }

        v26 = ~v24;
        v27 = *(v80 + 72);
        v28 = *(v80 + 16);
        while (1)
        {
          v29 = v89[15];
          v30 = v89[13];
          v28(v29, *(v86 + 48) + v25 * v27, v30);
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v88)(v29, v30);
          if (v31)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v85 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            v1 = v89;
            v11 = v79;
            v15 = v86;
            goto LABEL_26;
          }
        }

        v1 = v89;
        v19 = v22;
        v42 = v22;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v91[0] = v46;
          *v45 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v91);

          *(v45 + 4) = v49;
          _os_log_impl(&dword_21607C000, v43, v44, "[NotificationHandlingManager] Filter out suggestion %s due to removal engagement", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v46);
          MEMORY[0x21CE94770](v46, -1, -1);
          MEMORY[0x21CE94770](v45, -1, -1);
        }

        v11 = v79;
        v15 = v86;
        v16 = v87;
        v50 = v42;
        v51 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v89 + 9, v50);

        v52 = v89[9];
        if (v52 >> 62)
        {
          v53 = __CocoaSet.count.getter();
          if (v53 < v51)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v53 < v51)
          {
            goto LABEL_54;
          }
        }

        specialized Array.replaceSubrange<A>(_:with:)(v51, v53);
        v18 = v83;
        if (*(v87 + 16))
        {
          goto LABEL_28;
        }

LABEL_14:

        if (v18 == v81)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      ;
    }

LABEL_57:
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 134217984;
      swift_beginAccess();
      v75 = v1[9];
      if (v75 >> 62)
      {
        v76 = __CocoaSet.count.getter();
      }

      else
      {
        v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v74 + 4) = v76;
      _os_log_impl(&dword_21607C000, v72, v73, "[NotificationHandlingManager] Filtered eligible suggestion count: %ld", v74, 0xCu);
      MEMORY[0x21CE94770](v74, -1, -1);
    }

    else
    {
    }

    (*(v1[19] + 8))(v1[20], v1[18]);
    swift_beginAccess();
    v11 = v1[9];
  }

  else
  {
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_21607C000, v66, v67, "[NotificationHandlingManager] unable to fetch engagement history", v68, 2u);
      MEMORY[0x21CE94770](v68, -1, -1);
    }

    v70 = v1[19];
    v69 = v1[20];
    v71 = v1[18];

    (*(v70 + 8))(v69, v71);
  }

  v77 = v1[1];

  v77(v11);
}

{
  v87 = v0;
  v1 = v0;
  v2 = *(v0 + 296);
  if (*(v0 + 304))
  {
    v3 = *(v0 + 304);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v85 = MEMORY[0x277D84F90];
  specialized Sequence.forEach(_:)(v3, (v0 + 64), &v85);

  v86[0] = specialized Array._copyToContiguousArray()(v4);
  v5 = specialized MutableCollection<>.sort(by:)(v86);
  if (v2)
  {

    return;
  }

  v6 = v86[0];
  if ((*(v0 + 200))(v5))
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 64))(v86, ObjectType, v8);
    swift_unknownObjectRelease();
    v11 = v86[0];
    v10 = v86[1];
    *(v0 + 72) = v6;
    if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
    {
      goto LABEL_55;
    }

    for (i = *(v6 + 16); i; i = __CocoaSet.count.getter())
    {
      v76 = i;
      v77 = v6 & 0xC000000000000001;
      v73 = v6 + 32;
      v80 = v10 + 56;
      v75 = v1[14];
      v83 = (v75 + 8);
      v79 = v11 + 56;

      v13 = 0;
      v84 = v1;
      v74 = v6;
      v81 = v10;
      v82 = v11;
      while (1)
      {
        if (v77)
        {
          v15 = MEMORY[0x21CE93180](v13, v6);
        }

        else
        {
          if (v13 >= *(v6 + 16))
          {
            goto LABEL_53;
          }

          v15 = *(v73 + 8 * v13);
        }

        v14 = v15;
        if (__OFADD__(v13++, 1))
        {
          break;
        }

        v78 = v13;
        if (!*(v10 + 16))
        {
          goto LABEL_27;
        }

        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v17 = v14;
        v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v10 + 32);
        v20 = v18 & ~v19;
        if (((*(v80 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
LABEL_26:
          v11 = v82;
          v13 = v78;
          v14 = v17;
LABEL_27:
          if (!*(v11 + 16))
          {
            goto LABEL_14;
          }

LABEL_28:
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          v27 = v14;
          v11 = v82;
          v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v29 = -1 << *(v82 + 32);
          v30 = v28 & ~v29;
          if ((*(v79 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
          {
            v31 = ~v29;
            v32 = *(v75 + 72);
            v33 = *(v75 + 16);
            while (1)
            {
              v34 = v84[15];
              v35 = v84[13];
              v33(v34, *(v11 + 48) + v30 * v32, v35);
              _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
              v36 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v83)(v34, v35);
              if (v36)
              {
                break;
              }

              v30 = (v30 + 1) & v31;
              v11 = v82;
              if (((*(v79 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
              {
                v1 = v84;
                v6 = v74;
                v10 = v81;
                goto LABEL_13;
              }
            }

            v1 = v84;
            v14 = v27;
            v49 = v27;
            v50 = Logger.logObject.getter();
            v51 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              v86[0] = v53;
              *v52 = 136315138;
              _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v54 = dispatch thunk of CustomStringConvertible.description.getter();
              v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v86);

              *(v52 + 4) = v56;
              _os_log_impl(&dword_21607C000, v50, v51, "[NotificationHandlingManager] Filter out suggestion %s due to selected engagement", v52, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v53);
              MEMORY[0x21CE94770](v53, -1, -1);
              MEMORY[0x21CE94770](v52, -1, -1);
            }

            v6 = v74;
            v10 = v81;
            v11 = v82;
            v57 = v49;
            v58 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v84 + 9, v57);

            v59 = v84[9];
            if (v59 >> 62)
            {
              v60 = __CocoaSet.count.getter();
              if (v60 < v58)
              {
LABEL_47:
                __break(1u);
LABEL_48:

                goto LABEL_57;
              }
            }

            else
            {
              v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v60 < v58)
              {
                goto LABEL_47;
              }
            }

            specialized Array.replaceSubrange<A>(_:with:)(v58, v60);
            v13 = v78;
          }

          else
          {
LABEL_13:
            v13 = v78;
            v14 = v27;
          }

          goto LABEL_14;
        }

        v21 = ~v19;
        v22 = *(v75 + 72);
        v23 = *(v75 + 16);
        while (1)
        {
          v24 = v84[15];
          v25 = v84[13];
          v23(v24, *(v81 + 48) + v20 * v22, v25);
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v26 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v83)(v24, v25);
          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v80 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            v1 = v84;
            v6 = v74;
            v10 = v81;
            goto LABEL_26;
          }
        }

        v1 = v84;
        v14 = v17;
        v37 = v17;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v86[0] = v41;
          *v40 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v42 = dispatch thunk of CustomStringConvertible.description.getter();
          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v86);

          *(v40 + 4) = v44;
          _os_log_impl(&dword_21607C000, v38, v39, "[NotificationHandlingManager] Filter out suggestion %s due to removal engagement", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v41);
          MEMORY[0x21CE94770](v41, -1, -1);
          MEMORY[0x21CE94770](v40, -1, -1);
        }

        v6 = v74;
        v10 = v81;
        v11 = v82;
        v45 = v37;
        v46 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v84 + 9, v45);

        v47 = v84[9];
        if (v47 >> 62)
        {
          v48 = __CocoaSet.count.getter();
          if (v48 < v46)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v48 < v46)
          {
            goto LABEL_54;
          }
        }

        specialized Array.replaceSubrange<A>(_:with:)(v46, v48);
        v13 = v78;
        if (*(v82 + 16))
        {
          goto LABEL_28;
        }

LABEL_14:

        if (v13 == v76)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      ;
    }

LABEL_57:
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      swift_beginAccess();
      v70 = v1[9];
      if (v70 >> 62)
      {
        v71 = __CocoaSet.count.getter();
      }

      else
      {
        v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v69 + 4) = v71;
      _os_log_impl(&dword_21607C000, v67, v68, "[NotificationHandlingManager] Filtered eligible suggestion count: %ld", v69, 0xCu);
      MEMORY[0x21CE94770](v69, -1, -1);
    }

    else
    {
    }

    (*(v1[19] + 8))(v1[20], v1[18]);
    swift_beginAccess();
    v6 = v1[9];
  }

  else
  {
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_21607C000, v61, v62, "[NotificationHandlingManager] unable to fetch engagement history", v63, 2u);
      MEMORY[0x21CE94770](v63, -1, -1);
    }

    v65 = *(v0 + 152);
    v64 = v1[20];
    v66 = v1[18];

    (*(v65 + 8))(v64, v66);
  }

  v72 = v1[1];

  v72(v6);
}

uint64_t NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:)(char a1, char a2)
{
  *(v3 + 40) = v2;
  *(v3 + 137) = a2;
  *(v3 + 136) = a1;
  v4 = type metadata accessor for DateComponents();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:), 0, 0);
}

void NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:)()
{
  specialized NotificationHandlingManager.getMomentsUIScheduleDateComponents()();
  if (!v1)
  {
    v1 = specialized NotificationHandlingManager.getLegacyScheduleDateComponents()();
    if (!v1)
    {
      lazy protocol witness table accessor for type NotificationHandlingManager.NotificationError and conformance NotificationHandlingManager.NotificationError();
      swift_allocError();
      *v15 = 2;
      swift_willThrow();

      v4 = *(v0 + 8);
      goto LABEL_18;
    }
  }

  *(v0 + 72) = v1;
  v2 = *(v0 + 136);
  v3 = v1[2];
  *(v0 + 80) = v3;
  if (v3 < v2)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3 == v2)
  {

    v4 = *(v0 + 8);
LABEL_18:

    v4();
    return;
  }

  v5 = *(v0 + 56);
  *(v0 + 88) = 0;
  *(v0 + 96) = v2;
  if (v3 <= v2)
  {
    goto LABEL_22;
  }

  if ((*(v0 + 137) & 1) == 0)
  {
    if (v1[2] > v2)
    {
      v7 = *(v0 + 64);
      v8 = *(v0 + 48);
      if (v2)
      {
        v9 = *(v5 + 72);
      }

      else
      {
        v9 = 0;
      }

      (*(v5 + 16))(*(v0 + 64), v1 + v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), *(v0 + 48));
      isa = DateComponents._bridgeToObjectiveC()().super.isa;
      v6 = [objc_opt_self() triggerWithDateMatchingComponents:isa repeats:0];

      (*(v5 + 8))(v7, v8);
      goto LABEL_14;
    }

LABEL_23:
    __break(1u);
    return;
  }

  v6 = 0;
LABEL_14:
  *(v0 + 104) = v6;
  *(v0 + 16) = 0xD00000000000001ELL;
  *(v0 + 24) = 0x8000000216582620;
  *(v0 + 32) = 0;
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v11);

  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  *(v0 + 112) = v13;
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:);

  NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:)(v6, v12, v13, 2);
}

{
  v1 = *(v0 + 137);

  if ((v1 & 1) != 0 || (v2 = *(v0 + 80), v3 = vaddq_s64(*(v0 + 88), vdupq_n_s64(1uLL)), v3.i64[1] == v2))
  {

    v4 = *(v0 + 8);

    v4();
    return;
  }

  *(v0 + 88) = v3;
  if (v3.i64[1] >= v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((*(v0 + 137) & 1) == 0)
  {
    v15 = v3.i64[0];
    v6 = *(v0 + 72);
    if (v3.i64[1] < *(v6 + 16))
    {
      v8 = *(v0 + 56);
      v7 = *(v0 + 64);
      v9 = *(v0 + 48);
      (*(v8 + 16))(v7, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v3.i64[1], v9);
      isa = DateComponents._bridgeToObjectiveC()().super.isa;
      v5 = [objc_opt_self() triggerWithDateMatchingComponents:isa repeats:0];

      (*(v8 + 8))(v7, v9);
      v3.i64[0] = v15;
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v5 = 0;
LABEL_11:
  *(v0 + 104) = v5;
  *(v0 + 16) = 0xD00000000000001ELL;
  *(v0 + 24) = 0x8000000216582620;
  *(v0 + 32) = v3.i64[0];
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v11);

  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  *(v0 + 112) = v13;
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:);

  NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:)(v5, v12, v13, 2);
}

uint64_t NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:)()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:);
  }

  else
  {
    v2 = NotificationHandlingManager.postScheduledGenericTimeToWrite(skipFirstDate:testing:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Bool __swiftcall NotificationHandlingManager.isEligibleForGenericSmartNotification()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v47 = &v45 - v5;
  MEMORY[0x28223BE20](v4);
  v48 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  NotificationHandlingManager.getLastAvailabilityPredictedDate()(&v45 - v14);
  v16 = *(v1 + 48);
  v17 = v16(v15, 1, v0);
  outlined destroy of UTType?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v17 == 1)
  {
    if (one-time initialization token for notification != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static CommonLogger.notification);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_26;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "[NotificationHandlingManager] ineligible for smart TTW, no predicted date";
    v23 = v20;
    v24 = v19;
    v25 = v21;
    v26 = 2;
    goto LABEL_25;
  }

  static DefaultsManager.Notifications.lastNotificationDate.getter(v10);
  if (v16(v10, 1, v0) == 1)
  {
    static DefaultsManager.Notifications.olderNotificationDate.getter(v13);
    v27 = v1;
    if (v16(v10, 1, v0) != 1)
    {
      outlined destroy of UTType?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    v27 = v1;
    (*(v1 + 32))(v13, v10, v0);
    (*(v1 + 56))(v13, 0, 1, v0);
  }

  if (v16(v13, 1, v0) == 1)
  {
    outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v28 = v48;
    (*(v27 + 32))(v48, v13, v0);
    v29 = v46;
    static Date.now.getter();
    v30 = v47;
    Date.addingTimeInterval(_:)();
    v31 = *(v27 + 8);
    v31(v29, v0);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    LOBYTE(v29) = dispatch thunk of static Comparable.< infix(_:_:)();
    v31(v30, v0);
    if ((v29 & 1) == 0)
    {
      if (one-time initialization token for notification != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static CommonLogger.notification);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_21607C000, v42, v43, "[NotificationHandlingManager] ineligible for generic ttw, last notification within last week", v44, 2u);
        MEMORY[0x21CE94770](v44, -1, -1);
      }

      v31(v28, v0);
      return 0;
    }

    v31(v28, v0);
  }

  v32 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static CommonLogger.notification);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = v34;
    _os_log_impl(&dword_21607C000, v36, v37, "[NotificationHandlingManager] generic ttw quota weekly count: %ld", v38, 0xCu);
    MEMORY[0x21CE94770](v38, -1, -1);
  }

  if (v34 < specialized static DefaultsManager.Notifications.genericNotificationWeeklyMax.getter())
  {
    return 1;
  }

  v19 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v40))
  {
    v21 = swift_slowAlloc();
    *v21 = 134218240;
    *(v21 + 4) = v34;
    *(v21 + 12) = 2048;
    *(v21 + 14) = specialized static DefaultsManager.Notifications.genericNotificationWeeklyMax.getter();
    v22 = "[NotificationHandlingManager] Already %ld ttw notifications in the last week (max = %ld). Ineligible for new smart ttw notification";
    v23 = v40;
    v24 = v19;
    v25 = v21;
    v26 = 22;
LABEL_25:
    _os_log_impl(&dword_21607C000, v24, v23, v22, v25, v26);
    MEMORY[0x21CE94770](v21, -1, -1);
  }

LABEL_26:

  return 0;
}

uint64_t NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[87] = v4;
  v5[86] = a4;
  v5[85] = a3;
  v5[84] = a2;
  v5[83] = a1;
  v5[88] = type metadata accessor for NotificationAnalyticsManager.NotificationEvent(0);
  v5[89] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[90] = v6;
  v5[91] = *(v6 - 8);
  v5[92] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v5[98] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v5[99] = v7;
  v5[100] = *(v7 - 8);
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5[104] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:), 0, 0);
}

uint64_t NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:)()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 696);
  v60 = *(v0 + 688);
  v3 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  *(v0 + 840) = v3;
  type metadata accessor for NotificationHandlingManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v62._object = 0x8000000216582680;
  v7._countAndFlagsBits = 0x206F7420656D6954;
  v7._object = 0xED00006574697257;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v62._countAndFlagsBits = 0xD000000000000029;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v62);

  v10 = MEMORY[0x21CE91FC0](v9._countAndFlagsBits, v9._object);

  [v3 setTitle_];

  v11 = [v5 bundleForClass_];
  v63._object = 0x80000002165826E0;
  v12._object = 0x80000002165826B0;
  v63._countAndFlagsBits = 0xD00000000000002BLL;
  v12._countAndFlagsBits = 0xD000000000000029;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v63);

  v15 = MEMORY[0x21CE91FC0](v14._countAndFlagsBits, v14._object);

  [v3 setBody_];

  v16 = *(v2 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID);
  v17 = *(v2 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID + 8);

  v18 = MEMORY[0x21CE91FC0](v16, v17);

  v19 = [objc_opt_self() iconForApplicationIdentifier_];

  [v3 setIcon_];
  v20 = [objc_opt_self() defaultSound];
  [v3 setSound_];

  [v3 setInterruptionLevel_];
  [v3 setShouldBackgroundDefaultAction_];
  [v3 setShouldShowSubordinateIcon_];

  URL.init(string:)();

  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v1, 1, v21);
  v25 = 0;
  if (v23 != 1)
  {
    v26 = *(v0 + 832);
    URL._bridgeToObjectiveC()(v24);
    v25 = v27;
    (*(v22 + 8))(v26, v21);
  }

  v28 = *(v0 + 664);
  [v3 setDefaultActionURL_];

  v29 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x800000021657DB20);
  [v3 setCategoryIdentifier_];

  if (v28)
  {
    v30 = [*(v0 + 664) nextTriggerDate];
    if (v30)
    {
      v31 = v30;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v33 = *(v0 + 800);
    v34 = *(v0 + 792);
    v35 = *(v0 + 784);
    v36 = *(v0 + 776);
    (*(v33 + 56))(v36, v32, 1, v34);
    outlined init with take of Date?(v36, v35);
    if ((*(v33 + 48))(v35, 1, v34) != 1)
    {
      (*(*(v0 + 800) + 32))(*(v0 + 824), *(v0 + 784), *(v0 + 792));
      goto LABEL_12;
    }
  }

  else
  {
    (*(*(v0 + 800) + 56))(*(v0 + 784), 1, 1, *(v0 + 792));
  }

  v37 = *(v0 + 800);
  v38 = *(v0 + 792);
  v39 = *(v0 + 784);
  static Date.now.getter();
  if ((*(v37 + 48))(v39, 1, v38) != 1)
  {
    outlined destroy of UTType?(*(v0 + 784), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_12:
  v40 = *(v0 + 824);
  v41 = *(v0 + 800);
  v42 = *(v0 + 792);
  v43 = *(v0 + 696);
  v44 = *(v0 + 688);
  *(v0 + 296) = v42;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 272));
  v46 = *(v41 + 16);
  *(v0 + 848) = v46;
  *(v0 + 856) = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v46(boxed_opaque_existential_1, v40, v42);
  outlined init with take of Any((v0 + 272), (v0 + 304));
  v47 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 304), 0x44676E6974736F70, 0xEB00000000657461, isUniquelyReferenced_nonNull_native);
  v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v50 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(v0 + 864) = v50;
  *(v0 + 360) = v50;
  *(v0 + 336) = v49;
  outlined init with take of Any((v0 + 336), (v0 + 368));
  v51 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 368), 0xD000000000000018, 0x800000021657ACF0, v51);
  v52 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 424) = v50;
  *(v0 + 400) = v52;
  outlined init with take of Any((v0 + 400), (v0 + 432));
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v54 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 432), 0xD000000000000016, 0x800000021657AD50, v53);
  *(v0 + 872) = v47;
  v55 = *((*MEMORY[0x277D85000] & *v43) + 0x68);
  v56 = (*MEMORY[0x277D85000] & *v43) + 104;
  *(v0 + 880) = v55;
  *(v0 + 888) = v56 & 0xFFFFFFFFFFFFLL | 0xAEB4000000000000;
  v57 = v55(v54);
  *(v0 + 896) = v57;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 656;
  *(v0 + 24) = NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:);
  v58 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22UNNotificationSettingsCs5NeverOGMd, &_sSccySo22UNNotificationSettingsCs5NeverOGMR);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 168) = &block_descriptor_31_0;
  *(v0 + 176) = v58;
  [v57 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:), 0, 0);
}

{
  v65 = v0;
  v1 = *(v0 + 896);
  v2 = *(v0 + 872);
  v3 = *(v0 + 864);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 688);
  v8 = *(v0 + 656);
  *(v0 + 904) = v8;

  v9 = [v8 scheduledDeliverySetting];
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 488) = v3;
  *(v0 + 464) = v10;
  outlined init with take of Any((v0 + 464), (v0 + 496));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = v2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 496), 0xD000000000000018, 0x800000021657AC70, isUniquelyReferenced_nonNull_native);
  v12 = v2;
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v5 + 8))(v4, v6);
  *(v0 + 552) = MEMORY[0x277D837D0];
  *(v0 + 528) = v13;
  *(v0 + 536) = v15;
  outlined init with take of Any((v0 + 528), (v0 + 560));
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v12;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 560), 0xD000000000000026, 0x80000002165814B0, v16);
  if (v7 == 1)
  {
    v17 = *(v0 + 864);
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(v0 + 616) = v17;
    *(v0 + 592) = v18;
    outlined init with take of Any((v0 + 592), (v0 + 624));
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 624), 0xD00000000000001CLL, 0x800000021657AD30, v19);
  }

  *(v0 + 912) = v12;
  v20 = *(v0 + 840);
  v21 = *(v0 + 680);
  v22 = *(v0 + 672);
  v23 = *(v0 + 664);

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v20 setUserInfo_];

  v26 = v23;
  v27 = v20;
  v28 = MEMORY[0x21CE91FC0](v22, v21);
  v29 = [objc_opt_self() requestWithIdentifier:v28 content:v27 trigger:v26];
  *(v0 + 920) = v29;

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static CommonLogger.notification);
  v31 = v26;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v32, v33))
  {

    goto LABEL_17;
  }

  v34 = *(v0 + 680);
  v35 = *(v0 + 672);
  v36 = *(v0 + 664);
  v37 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v64 = v62;
  *v37 = 136315650;
  *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v64);
  *(v37 + 12) = 2080;
  v63 = v29;
  if (!v36)
  {
    (*(*(v0 + 800) + 56))(*(v0 + 768), 1, 1, *(v0 + 792));
    goto LABEL_13;
  }

  v38 = [v31 nextTriggerDate];
  if (v38)
  {
    v39 = v38;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = *(v0 + 800);
  v42 = *(v0 + 792);
  v43 = *(v0 + 768);
  v44 = *(v0 + 760);
  (*(v41 + 56))(v44, v40, 1, v42);
  outlined init with take of Date?(v44, v43);
  if ((*(v41 + 48))(v43, 1, v42) == 1)
  {
LABEL_13:
    v45 = *(v0 + 800);
    v46 = *(v0 + 792);
    v47 = *(v0 + 768);
    static Date.now.getter();
    if ((*(v45 + 48))(v47, 1, v46) != 1)
    {
      outlined destroy of UTType?(*(v0 + 768), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    goto LABEL_16;
  }

  (*(*(v0 + 800) + 32))(*(v0 + 816), *(v0 + 768), *(v0 + 792));
LABEL_16:
  v48 = *(v0 + 816);
  v49 = *(v0 + 800);
  v50 = *(v0 + 792);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  v53 = v52;
  (*(v49 + 8))(v48, v50);
  v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v64);

  *(v37 + 14) = v54;
  *(v37 + 22) = 2080;

  v55 = Dictionary.description.getter();
  v57 = v56;

  v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v64);

  *(v37 + 24) = v58;
  _os_log_impl(&dword_21607C000, v32, v33, "Scheduling time to write notification with identifier: %s for time: %s, with userInfo: %s", v37, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x21CE94770](v62, -1, -1);
  MEMORY[0x21CE94770](v37, -1, -1);

  v29 = v63;
LABEL_17:
  v59 = (*(v0 + 880))();
  *(v0 + 928) = v59;
  *(v0 + 80) = v0;
  *(v0 + 88) = NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:);
  v60 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type ();
  *(v0 + 232) = &block_descriptor_34;
  *(v0 + 240) = v60;
  [v59 addNotificationRequest:v29 withCompletionHandler:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 936) = v1;
  if (v1)
  {
    v2 = NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:);
  }

  else
  {
    v2 = NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 848);
  v2 = *(v0 + 824);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 752);
  v6 = *(v0 + 712);
  v38 = *(v0 + 704);
  v39 = *(v0 + 688);
  v7 = *(v0 + 664);

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = 4;
  }

  v1(v5, v2, v4);
  v9 = *(v3 + 56);
  v9(v5, 0, 1, v4);

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);
  v12 = v11;

  v13 = *(v38 + 24);
  v9(v6 + v13, 1, 1, v4);
  v14 = *(v38 + 28);
  *v6 = v8;
  *(v6 + 8) = 0;
  outlined assign with take of Date?(v5, v6 + v13);
  *(v6 + v14) = v12;
  NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()();
  if (v39 == 1)
  {
    v15 = *(v0 + 800);
    v16 = *(v0 + 792);
    v17 = *(v0 + 744);
    specialized static DefaultsManager.Notifications.incrementGenericNotificationWeeklyCount()();
    static DefaultsManager.Notifications.lastNotificationDate.getter(v17);
    if ((*(v15 + 48))(v17, 1, v16) == 1)
    {
      outlined destroy of UTType?(*(v0 + 744), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      (*(*(v0 + 800) + 32))(*(v0 + 808), *(v0 + 744), *(v0 + 792));
      if (one-time initialization token for momentsUI != -1)
      {
        swift_once();
      }

      v21 = static DefaultsManager.momentsUI;
      v22 = *(v0 + 808);
      v23 = *(v0 + 800);
      v24 = *(v0 + 792);
      if (static DefaultsManager.momentsUI)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        v26 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x80000002165809B0);
        [v21 setObject:isa forKey:v26];
      }

      (*(v23 + 8))(v22, v24);
    }

    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v27 = static DefaultsManager.momentsUI;
    v28 = *(v0 + 920);
    v29 = *(v0 + 904);
    v30 = *(v0 + 840);
    v31 = *(v0 + 824);
    v32 = *(v0 + 800);
    v33 = *(v0 + 792);
    if (static DefaultsManager.momentsUI)
    {
      v34 = Date._bridgeToObjectiveC()().super.isa;
      v35 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x80000002165809D0);
      [v27 setObject:v34 forKey:v35];

      (*(v32 + 8))(v31, v33);
    }

    else
    {
      (*(v32 + 8))(*(v0 + 824), *(v0 + 792));
    }
  }

  else
  {
    v18 = *(v0 + 920);
    v19 = *(v0 + 904);
    v20 = *(v0 + 840);
    (*(*(v0 + 800) + 8))(*(v0 + 824), *(v0 + 792));
  }

  outlined destroy of NotificationAnalyticsManager.NotificationEvent(*(v0 + 712));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t NotificationHandlingManager.scheduleGenericNotification(with:identifier:scheduleType:)(uint64_t a1)
{
  v2 = v1[116];
  v3 = v1[115];
  v4 = v1[113];
  v5 = v1[105];
  v6 = v1[103];
  v7 = v1[100];
  v8 = v1[99];
  swift_willThrow();

  (*(v7 + 8))(v6, v8);

  v9 = v1[1];

  return v9();
}

uint64_t NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[76] = v3;
  v4[75] = a3;
  v4[74] = a2;
  v4[73] = a1;
  v4[77] = type metadata accessor for NotificationAnalyticsManager.NotificationEvent(0);
  v4[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v4[85] = v5;
  v4[86] = *(v5 - 8);
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:), 0, 0);
}

uint64_t NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:)(uint64_t a1)
{
  v2 = *(v1 + 608);
  v3 = *(v1 + 592);
  v4 = UUID.uuidString.getter();
  v5 = *(v2 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppActionURL + 8);
  *(v1 + 528) = *(v2 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppActionURL);
  *(v1 + 536) = v5;
  *(v1 + 544) = 0xD00000000000001ALL;
  *(v1 + 552) = 0x8000000216582710;
  *(v1 + 560) = v4;
  *(v1 + 568) = v6;
  v78 = lazy protocol witness table accessor for type String and conformance String();
  v77 = MEMORY[0x277D837D0];
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  URL.init(string:)();

  if (v3)
  {
    v7 = [*(v1 + 592) nextTriggerDate];
    if (v7)
    {
      v8 = v7;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(v1 + 688);
    v11 = *(v1 + 680);
    v12 = *(v1 + 672);
    v13 = *(v1 + 664);
    (*(v10 + 56))(v13, v9, 1, v11);
    outlined init with take of Date?(v13, v12);
    v14 = *(v10 + 48);
    if (v14(v12, 1, v11) != 1)
    {
      v79 = v14;
      (*(*(v1 + 688) + 32))(*(v1 + 720), *(v1 + 672), *(v1 + 680));
      goto LABEL_10;
    }
  }

  else
  {
    (*(*(v1 + 688) + 56))(*(v1 + 672), 1, 1, *(v1 + 680));
  }

  v15 = *(v1 + 688);
  v16 = *(v1 + 680);
  v17 = *(v1 + 672);
  static Date.now.getter();
  v79 = *(v15 + 48);
  if (v79(v17, 1, v16) != 1)
  {
    outlined destroy of UTType?(*(v1 + 672), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_10:
  v18 = *(v1 + 720);
  v19 = *(v1 + 584);
  v20 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  *(v1 + 760) = v20;
  type metadata accessor for NotificationHandlingManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = objc_opt_self();
  v23 = [v22 bundleForClass_];
  v81._object = 0x8000000216582750;
  v24._countAndFlagsBits = 0xD000000000000019;
  v24._object = 0x8000000216582730;
  v81._countAndFlagsBits = 0xD000000000000015;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v81);

  v27 = MEMORY[0x21CE91FC0](v26._countAndFlagsBits, v26._object);

  [v20 setTitle_];

  countAndFlagsBits = specialized NotificationHandlingManager.createNotificationBodyText(for:postingDate:)(v19, v18);
  if (v29)
  {
    object = v29;
  }

  else
  {
    v31 = [v22 bundleForClass_];
    v82._object = 0x8000000216582790;
    v32._object = 0x8000000216582770;
    v82._countAndFlagsBits = 0xD00000000000001DLL;
    v32._countAndFlagsBits = 0xD000000000000013;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v82);
    object = v34._object;

    countAndFlagsBits = v34._countAndFlagsBits;
  }

  v35 = *(v1 + 752);
  v36 = *(v1 + 744);
  v37 = *(v1 + 608);
  v38 = *(v1 + 600);
  v39 = MEMORY[0x21CE91FC0](countAndFlagsBits, object);

  [v20 setBody_];

  v40 = *(v37 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID);
  v41 = *(v37 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID + 8);

  v42 = MEMORY[0x21CE91FC0](v40, v41);

  v43 = [objc_opt_self() iconForApplicationIdentifier_];

  [v20 setIcon_];
  [v20 setInterruptionLevel_];
  [v20 setShouldShowSubordinateIcon_];
  [v20 setShouldBackgroundDefaultAction_];
  outlined init with copy of DateInterval?(v35, v36, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v44 = type metadata accessor for URL();
  *(v1 + 768) = v44;
  v45 = *(v44 - 8);
  *(v1 + 776) = v45;
  v46 = *(v45 + 48);
  *(v1 + 784) = v46;
  *(v1 + 792) = (v45 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v47 = v46(v36, 1, v44);
  v49 = 0;
  if (v47 != 1)
  {
    v50 = *(v1 + 744);
    URL._bridgeToObjectiveC()(v48);
    v49 = v51;
    (*(v45 + 8))(v50, v44);
  }

  v52 = *(v1 + 720);
  v53 = *(v1 + 688);
  v54 = *(v1 + 680);
  v55 = *(v1 + 600);
  v56 = *(v1 + 584);
  [v20 setDefaultActionURL_];

  v57 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x800000021657DB20);
  [v20 setCategoryIdentifier_];

  v58 = specialized NotificationHandlingManager.generateUserInfoDictForAnalytics(with:)(v56);
  *(v1 + 296) = v54;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 272));
  v60 = *(v53 + 16);
  *(v1 + 800) = v60;
  *(v1 + 808) = (v53 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v60(boxed_opaque_existential_1, v52, v54);
  outlined init with take of Any((v1 + 272), (v1 + 304));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v1 + 304), 0x44676E6974736F70, 0xEB00000000657461, isUniquelyReferenced_nonNull_native);
  v62 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v63 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(v1 + 816) = v63;
  *(v1 + 360) = v63;
  *(v1 + 336) = v62;
  outlined init with take of Any((v1 + 336), (v1 + 368));
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v65 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v1 + 368), 0xD000000000000018, 0x800000021657ACF0, v64);
  if (v55 == 1)
  {
    v66 = *(v1 + 680);
    v67 = *(v1 + 656);
    NotificationHandlingManager.getLastAvailabilityPredictedDate()(v67);
    LODWORD(v66) = v79(v67, 1, v66);
    outlined destroy of UTType?(v67, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v66 == 1)
    {
      v68 = 2;
    }

    else
    {
      v68 = 1;
    }

    v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(v1 + 488) = v63;
    *(v1 + 464) = v69;
    outlined init with take of Any((v1 + 464), (v1 + 496));
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v65 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v1 + 496), 0xD00000000000001CLL, 0x800000021657AD30, v70);
  }

  *(v1 + 824) = v58;
  v71 = *(v1 + 608);
  v72 = *((*MEMORY[0x277D85000] & *v71) + 0x68);
  v73 = (*MEMORY[0x277D85000] & *v71) + 104;
  *(v1 + 832) = v72;
  *(v1 + 840) = v73 & 0xFFFFFFFFFFFFLL | 0xAEB4000000000000;
  v74 = v72(v65);
  *(v1 + 848) = v74;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 576;
  *(v1 + 24) = NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:);
  v75 = swift_continuation_init();
  *(v1 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22UNNotificationSettingsCs5NeverOGMd, &_sSccySo22UNNotificationSettingsCs5NeverOGMR);
  *(v1 + 144) = MEMORY[0x277D85DD0];
  *(v1 + 152) = 1107296256;
  *(v1 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v1 + 168) = &block_descriptor_38;
  *(v1 + 176) = v75;
  [v74 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v1 + 16);
}

{
  v2 = v1[110];
  v3 = v1[109];
  v11 = v1[111];
  v4 = v1[107];
  v5 = v1[95];
  v6 = v1[94];
  v7 = v1[90];
  v8 = v1[85];
  swift_willThrow();

  v2(v7, v8);
  outlined destroy of UTType?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v9 = v1[1];

  return v9();
}

uint64_t NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:)()
{

  return MEMORY[0x2822009F8](NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:), 0, 0);
}

{
  v61 = v0;
  v1 = *(v0 + 848);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 760);
  v5 = *(v0 + 592);
  v6 = *(v0 + 576);
  *(v0 + 856) = v6;

  v7 = [v6 scheduledDeliverySetting];
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 424) = v3;
  *(v0 + 400) = v8;
  outlined init with take of Any((v0 + 400), (v0 + 432));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 432), 0xD000000000000018, 0x800000021657AC70, isUniquelyReferenced_nonNull_native);
  *(v0 + 864) = v2;

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 setUserInfo_];

  v12 = v5;
  v13 = v4;
  v14 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x8000000216582660);
  v59 = [objc_opt_self() requestWithIdentifier:v14 content:v13 trigger:v12];
  *(v0 + 872) = v59;

  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 800);
  v16 = *(v0 + 752);
  v17 = *(v0 + 736);
  v18 = *(v0 + 720);
  v19 = *(v0 + 712);
  v20 = *(v0 + 680);
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static CommonLogger.notification);
  v15(v19, v18, v20);
  outlined init with copy of DateInterval?(v16, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v57 = v23;
    log = v22;
    v55 = *(v0 + 784);
    v53 = *(v0 + 736);
    v54 = *(v0 + 768);
    v24 = *(v0 + 728);
    v25 = *(v0 + 712);
    v26 = *(v0 + 688);
    v27 = *(v0 + 680);
    v28 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v60 = v56;
    *v28 = 136315650;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v32 = *(v26 + 8);
    v32(v25, v27);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v60);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    outlined init with copy of DateInterval?(v53, v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v55(v24, 1, v54) == 1)
    {
      outlined destroy of UTType?(*(v0 + 728), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      v41 = *(v0 + 776);
      v42 = *(v0 + 768);
      v43 = *(v0 + 728);
      v35 = URL.absoluteString.getter();
      v34 = v44;
      (*(v41 + 8))(v43, v42);
    }

    outlined destroy of UTType?(*(v0 + 736), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v60);

    *(v28 + 14) = v45;
    *(v28 + 22) = 2080;

    v46 = Dictionary.description.getter();
    v48 = v47;

    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v60);

    *(v28 + 24) = v49;
    _os_log_impl(&dword_21607C000, log, v57, "Trying to post JS Notification for time: %s, actionURL: %s) with userInfo: %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v56, -1, -1);
    MEMORY[0x21CE94770](v28, -1, -1);
  }

  else
  {
    v36 = *(v0 + 736);
    v37 = *(v0 + 712);
    v38 = *(v0 + 688);
    v39 = *(v0 + 680);

    outlined destroy of UTType?(v36, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v32 = *(v38 + 8);
    v40 = (v32)(v37, v39);
  }

  *(v0 + 880) = v32;
  v50 = (*(v0 + 832))(v40);
  *(v0 + 888) = v50;
  *(v0 + 80) = v0;
  *(v0 + 88) = NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:);
  v51 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type ();
  *(v0 + 232) = &block_descriptor_41;
  *(v0 + 240) = v51;
  [v50 addNotificationRequest:v59 withCompletionHandler:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 896) = v1;
  if (v1)
  {
    v2 = NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:);
  }

  else
  {
    v2 = NotificationHandlingManager.postJSNotification(with:trigger:scheduleType:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 600);

  if (v1 == 1)
  {
    specialized static DefaultsManager.Notifications.incrementSuggestionNotificationWeeklyCount()();
  }

  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 648);
  static DefaultsManager.Notifications.lastNotificationDate.getter(v4);
  v5 = *(v2 + 48);
  if (v5(v4, 1, v3) == 1)
  {
    outlined destroy of UTType?(*(v0 + 648), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(*(v0 + 688) + 32))(*(v0 + 704), *(v0 + 648), *(v0 + 680));
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v6 = static DefaultsManager.momentsUI;
    v7 = *(v0 + 880);
    v8 = *(v0 + 704);
    v9 = *(v0 + 680);
    if (static DefaultsManager.momentsUI)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      v11 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x80000002165809B0);
      [v6 setObject:isa forKey:v11];
    }

    v7(v8, v9);
  }

  v12 = *(v0 + 680);
  v13 = *(v0 + 640);
  static DefaultsManager.Notifications.lastSuggestionNotificationDate.getter(v13);
  if (v5(v13, 1, v12) == 1)
  {
    outlined destroy of UTType?(*(v0 + 640), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(*(v0 + 688) + 32))(*(v0 + 696), *(v0 + 640), *(v0 + 680));
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v14 = static DefaultsManager.momentsUI;
    v15 = *(v0 + 880);
    v16 = *(v0 + 696);
    v17 = *(v0 + 680);
    if (static DefaultsManager.momentsUI)
    {
      v18 = Date._bridgeToObjectiveC()().super.isa;
      v19 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x80000002165809F0);
      [v14 setObject:v18 forKey:v19];
    }

    v15(v16, v17);
  }

  if (one-time initialization token for momentsUI == -1)
  {
    v20 = static DefaultsManager.momentsUI;
    if (!static DefaultsManager.momentsUI)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  swift_once();
  v20 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
LABEL_19:
    v21 = Date._bridgeToObjectiveC()().super.isa;
    v22 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x80000002165809D0);
    [v20 setObject:v21 forKey:v22];

    v23 = Date._bridgeToObjectiveC()().super.isa;
    v24 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580A10);
    [v20 setObject:v23 forKey:v24];

    v25 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x8000000216580E80);
    [v20 removeObjectForKey_];

    v26 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x80000002165827B0);
    [v20 removeObjectForKey_];

    v27 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x80000002165827D0);
    [v20 removeObjectForKey_];

    v28 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x8000000216582800);
    [v20 removeObjectForKey_];

    v29 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x8000000216582830);
    [v20 removeObjectForKey_];

    v30 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x8000000216582860);
    [v20 removeObjectForKey_];

    v31 = MEMORY[0x21CE91FC0](0xD000000000000022, 0x8000000216582890);
    [v20 removeObjectForKey_];
  }

LABEL_20:
  v51 = *(v0 + 872);
  v52 = *(v0 + 856);
  v53 = *(v0 + 760);
  v54 = *(v0 + 752);
  v55 = *(v0 + 880);
  v50 = *(v0 + 720);
  v32 = *(v0 + 688);
  v33 = *(v0 + 680);
  v34 = *(v0 + 632);
  v48 = v34;
  v35 = *(v0 + 624);
  v36 = *(v0 + 616);
  if (*(v0 + 592))
  {
    v37 = 1;
  }

  else
  {
    v37 = 4;
  }

  v49 = v37;
  v38 = *(v0 + 584);
  (*(v0 + 800))(v34);
  v39 = *(v32 + 56);
  v39(v34, 0, 1, v33);

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v40);
  v42 = v41;

  v43 = *(v36 + 24);
  v39(v35 + v43, 1, 1, v33);
  v44 = *(v36 + 28);
  *v35 = v49;
  *(v35 + 8) = v38;
  v45 = v38;
  outlined assign with take of Date?(v48, v35 + v43);
  *(v35 + v44) = v42;
  NotificationAnalyticsManager.NotificationEvent.submitNotificationEvent()();

  v55(v50, v33);
  outlined destroy of UTType?(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of NotificationAnalyticsManager.NotificationEvent(v35);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:), 0, 0);
}

uint64_t NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:)()
{
  v43 = v0;
  if (one-time initialization token for services != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.services);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v7 = 138413058;
    v9 = [v6 scheduleType];
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2080;
    v10 = [v6 weekdays];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v13 = *(v0 + 16);
    v14 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v15 = MEMORY[0x21CE922B0](v12, v14);
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v42);

    *(v7 + 14) = v18;
    *(v7 + 22) = 2112;
    isa = [v13 hour];
    if (!isa)
    {
      isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    }

    v20 = *(v0 + 16);
    *(v7 + 24) = isa;
    v8[1] = isa;
    *(v7 + 32) = 2112;
    v21 = [v20 minute];
    if (!v21)
    {
      v21 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    }

    *(v7 + 34) = v21;
    v8[2] = v21;
    _os_log_impl(&dword_21607C000, v4, v5, "[NotificationHandlingManager] didReceiveScheduleChange for type: %@, days: %s, hour: %@, minute: %@", v7, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x21CE94770](v41, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  else
  {
  }

  if ([*(v0 + 24) BOOLValue])
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21607C000, v22, v23, "[NotificationHandlingManager] Updating MomentsUI defaults for notification schedule", v24, 2u);
      MEMORY[0x21CE94770](v24, -1, -1);
    }

    v25 = *(v0 + 16);

    specialized NotificationHandlingManager.updateNotificationScheduleDefaults(with:)(v25);
  }

  v26 = [*(v0 + 16) scheduleType];
  v27 = [v26 integerValue];

  if (v27)
  {
    v28 = *(v0 + 72);
    v29 = *(v0 + 80);
    v30 = type metadata accessor for UUID();
    v31 = *(*(v30 - 8) + 56);
    v31(v29, 1, 1, v30);
    v31(v28, 1, 1, v30);
    v32 = swift_task_alloc();
    *(v0 + 96) = v32;
    *v32 = v0;
    v32[1] = NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:);
    v33 = *(v0 + 72);
    v34 = *(v0 + 80);
    v35 = *(v0 + 56);
    v36 = *(v0 + 40);
    v37 = *(v0 + 48);
    v38 = *(v0 + 32);

    return NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(v34, v38, v36, v37, v35, 0, v33);
  }

  else
  {
    v40 = swift_task_alloc();
    *(v0 + 88) = v40;
    *v40 = v0;
    v40[1] = NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:);

    return NotificationHandlingManager.clearPendingNotifications()();
  }
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:), 0, 0);
}

{
  v1 = [*(v0 + 16) scheduleType];
  v2 = [v1 integerValue];

  if (v2 <= 2)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x60))())
    {
      v4 = v3;
      v6 = *(v0 + 32);
      v5 = *(v0 + 40);
      ObjectType = swift_getObjectType();
      (*(v4 + 40))(v2, v6, v5, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  outlined destroy of UTType?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of UTType?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v0)
  {
    v4 = NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:);
  }

  else
  {
    v4 = NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for NotificationHandling.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:) in conformance NotificationHandlingManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = static Exif.filterImage(imageSource:outputURL:);

  return NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for NotificationHandling.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:) in conformance NotificationHandlingManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = static Exif.filterVideo(inputURL:outputURL:);

  return NotificationHandlingManager.didReceiveScheduleChange(with:shouldUpdateDefaults:for:customURLFormat:)(a1, a2, a3, a4, a5, a6);
}

id NotificationHandlingManager.getDefaultAppIcon()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID);
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI27NotificationHandlingManager_defaultAppBundleID + 8);

  v3 = MEMORY[0x21CE91FC0](v1, v2);

  v4 = [objc_opt_self() iconForApplicationIdentifier_];

  return v4;
}

void NotificationHandlingManager.getLastAvailabilityPredictedDate()(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  static MOAngelDefaultsManager.dateValueFor(_:)(a1);
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static CommonLogger.notification);
  outlined init with copy of DateInterval?(a1, v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v15 = 136315138;
    outlined init with copy of DateInterval?(v11, v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v16 = *(v3 + 48);
    if (v16(v9, 1, v2) == 1)
    {
      static Date.distantPast.getter();
      if (v16(v9, 1, v2) != 1)
      {
        outlined destroy of UTType?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(v3 + 32))(v5, v9, v2);
    }

    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v3 + 8))(v5, v2);
    outlined destroy of UTType?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_21607C000, v13, v14, "[NotificationHandlingManager] Last predicted date: %s", v15, 0xCu);
    v21 = v22;
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x21CE94770](v21, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  else
  {

    outlined destroy of UTType?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }
}

uint64_t NotificationHandlingManager.getLookbackWindowStartDate()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v48 = &v46 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  IntervalIn = specialized static DefaultsManager.Notifications.lookbackFetchIntervalInDays.getter();
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v49 = __swift_project_value_buffer(v18, static CommonLogger.notification);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v21 = os_log_type_enabled(v19, v20);
  v50 = v6;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = IntervalIn;
    _os_log_impl(&dword_21607C000, v19, v20, "[NotificationHandlingManager] looking back %f days", v22, 0xCu);
    v23 = v22;
    v6 = v50;
    MEMORY[0x21CE94770](v23, -1, -1);
  }

  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v51 = *(v6 + 8);
  v51(v14, v5);
  NotificationHandlingManager.getLastPostedDate(forSuggestionOnly:)(1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v24 = v48;
    (*(v6 + 32))(v48, v4, v5);
    (*(v6 + 16))(v9, v24, v5);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v47 = a1;
      v28 = v27;
      v46 = swift_slowAlloc();
      v52[0] = v46;
      *v28 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v51(v9, v5);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v52);
      v6 = v50;

      *(v28 + 4) = v32;
      _os_log_impl(&dword_21607C000, v25, v26, "[NotificationHandlingManager] last posted date for suggestion notification: %s", v28, 0xCu);
      v33 = v46;
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x21CE94770](v33, -1, -1);
      v34 = v28;
      a1 = v47;
      MEMORY[0x21CE94770](v34, -1, -1);
    }

    else
    {

      v51(v9, v5);
    }

    v35 = v48;
    if (static Date.> infix(_:_:)() & 1) != 0 && (static Date.now.getter(), v36 = static Date.< infix(_:_:)(), v51(v14, v5), (v36))
    {
      (*(v6 + 40))(v16, v35, v5);
    }

    else
    {
      v51(v35, v5);
    }
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v52[0] = v40;
    *v39 = 136315138;
    swift_beginAccess();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = a1;
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v52);

    *(v39 + 4) = v44;
    a1 = v43;
    _os_log_impl(&dword_21607C000, v37, v38, "[NotificationHandlingManager] lookbackStartDate: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x21CE94770](v40, -1, -1);
    MEMORY[0x21CE94770](v39, -1, -1);
  }

  swift_beginAccess();
  (*(v50 + 16))(a1, v16, v5);
  return (v51)(v16, v5);
}

void closure #1 in NotificationHandlingManager.fetchEligibleSuggestions(with:)(void **a1, double *a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *((*MEMORY[0x277D85000] & *v12) + 0xA8);
  v67 = (*MEMORY[0x277D85000] & *v12) + 168;
  v14 = v13(v9);
  if (v14)
  {
    v15 = *&v14[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
    v16 = v14[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8];

    if ((v16 & 1) == 0)
    {
      v17 = swift_beginAccess();
      if (*a2 <= v15)
      {
        v34 = (v13)(v17, *a2);
        if (v34 && (v35 = v34[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive], v34, v35 != 2) && (v35 & 1) != 0)
        {
          if (one-time initialization token for notification != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static CommonLogger.notification);
          v37 = v12;
          v20 = Logger.logObject.getter();
          v38 = static os_log_type_t.info.getter();

          if (!os_log_type_enabled(v20, v38))
          {
            goto LABEL_27;
          }

          v39 = swift_slowAlloc();
          v65 = v3;
          v40 = v39;
          v41 = v11;
          v42 = v7;
          v43 = swift_slowAlloc();
          v68 = v43;
          *v40 = 136315138;
          (*(v8 + 16))(v41, v37 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID, v42);
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v45;
          (*(v8 + 8))(v41, v42);
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v68);

          *(v40 + 4) = v47;
          v48 = "[NotificationHandlingManager] suggestionID: %s is marked as sensitive, filtered out";
          v49 = v38;
          v50 = v20;
          v51 = v40;
          v52 = 12;
        }

        else
        {
          v53 = v12;
          MEMORY[0x21CE92260]();
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (one-time initialization token for notification != -1)
          {
            swift_once();
          }

          v54 = type metadata accessor for Logger();
          __swift_project_value_buffer(v54, static CommonLogger.notification);
          v55 = v53;
          v20 = Logger.logObject.getter();
          v56 = static os_log_type_t.info.getter();

          if (!os_log_type_enabled(v20, v56))
          {
            goto LABEL_27;
          }

          v57 = swift_slowAlloc();
          v65 = v3;
          v40 = v57;
          v58 = v11;
          v59 = v7;
          v43 = swift_slowAlloc();
          v68 = v43;
          *v40 = 136315394;
          (*(v8 + 16))(v58, v55 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID, v59);
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = v61;
          (*(v8 + 8))(v58, v59);
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v68);

          *(v40 + 4) = v63;
          *(v40 + 12) = 2048;
          *(v40 + 14) = v15;
          v48 = "[NotificationHandlingManager] SuggestionID: %s, Goodness Score: %f, is above threshold for notification servicing.";
          v49 = v56;
          v50 = v20;
          v51 = v40;
          v52 = 22;
        }

        _os_log_impl(&dword_21607C000, v50, v49, v48, v51, v52);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x21CE94770](v43, -1, -1);
        MEMORY[0x21CE94770](v40, -1, -1);
LABEL_27:

        return;
      }
    }
  }

  v66 = v13;
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static CommonLogger.notification);
  v19 = v12;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v20, v21))
  {
    goto LABEL_27;
  }

  v65 = v3;
  v22 = swift_slowAlloc();
  v23 = v11;
  v64 = swift_slowAlloc();
  v68 = v64;
  *v22 = 136315394;
  (*(v8 + 16))(v11, v19 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID, v7);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  v26 = v25;
  (*(v8 + 8))(v23, v7);
  v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v68);

  *(v22 + 4) = v27;
  *(v22 + 12) = 2048;
  v29 = v66(v28);
  if (v29)
  {
    v30 = *&v29[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
    v31 = v29[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8];

    v32 = -1.0;
    if (!v31)
    {
      v32 = v30;
    }
  }

  else
  {
    v32 = -1.0;
  }

  *(v22 + 14) = v32;
  _os_log_impl(&dword_21607C000, v20, v21, "[NotificationHandlingManager] SuggestionID: %s is filtered out due to goodness score: %f", v22, 0x16u);
  v33 = v64;
  __swift_destroy_boxed_opaque_existential_1(v64);
  MEMORY[0x21CE94770](v33, -1, -1);
  MEMORY[0x21CE94770](v22, -1, -1);
}

uint64_t NotificationHandlingManager.getLastPostedDate(forSuggestionOnly:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v41 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v41 - v26;
  v48 = *(v4 + 56);
  v48(&v41 - v26, 1, 1, v3);
  v46 = v4;
  v28 = (v4 + 48);
  if (a1)
  {
    static DefaultsManager.Notifications.lastSuggestionNotificationDate.getter(v22);
    v29 = *v28;
    if ((*v28)(v22, 1, v3) == 1)
    {
      static DefaultsManager.Notifications.olderSuggestionNotificationDate.getter(v25);
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v29(v22, 1, v3) != 1)
      {
        outlined destroy of UTType?(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      v30 = v48;
    }

    else
    {
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      (*(v46 + 32))(v25, v22, v3);
      v30 = v48;
      v48(v25, 0, 1, v3);
    }
  }

  else
  {
    v42 = v13;
    static DefaultsManager.Notifications.lastNotificationDate.getter(v16);
    v31 = *v28;
    if ((*v28)(v16, 1, v3) == 1)
    {
      static DefaultsManager.Notifications.olderNotificationDate.getter(v19);
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v41 = v31;
      v32 = v31(v16, 1, v3);
      v30 = v48;
      if (v32 != 1)
      {
        outlined destroy of UTType?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      v25 = v19;
      v29 = v41;
    }

    else
    {
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      (*(v46 + 32))(v19, v16, v3);
      v30 = v48;
      v48(v19, 0, 1, v3);
      v25 = v19;
      v29 = v31;
    }

    v13 = v42;
  }

  outlined init with take of Date?(v25, v27);
  v33 = v47;
  v30(v47, 1, 1, v3);
  outlined init with copy of DateInterval?(v27, v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v29(v13, 1, v3) == 1)
  {
    outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v34 = v45;
    static MOAngelDefaultsManager.dateValueFor(_:)(v45);
    if (v29(v34, 1, v3) == 1)
    {
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      return outlined destroy of UTType?(v34, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v36 = v46;
      v37 = v44;
      v45 = *(v46 + 32);
      (v45)(v44, v34, v3);
      v38 = v43;
      static Date.now.getter();
      v39 = static Date.< infix(_:_:)();
      v40 = *(v36 + 8);
      v40(v38, v3);
      outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v39)
      {
        outlined destroy of UTType?(v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        (v45)(v33, v37, v3);
        return (v48)(v33, 0, 1, v3);
      }

      else
      {
        return (v40)(v37, v3);
      }
    }
  }

  else
  {
    outlined destroy of UTType?(v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return outlined init with take of Date?(v27, v33);
  }
}

uint64_t NotificationHandlingManager.getNotificationSettings()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](NotificationHandlingManager.getNotificationSettings(), 0, 0);
}

{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 152)) + 0x68))();
  *(v0 + 160) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = NotificationHandlingManager.getNotificationSettings();
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22UNNotificationSettingsCs5NeverOGMd, &_sSccySo22UNNotificationSettingsCs5NeverOGMR);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 104) = &block_descriptor_48;
  *(v0 + 112) = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.getNotificationSettings(), 0, 0);
}

{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

Swift::OpaquePointer_optional __swiftcall NotificationHandlingManager.getScheduledDateComponents()()
{
  specialized NotificationHandlingManager.getMomentsUIScheduleDateComponents()();
  if (!v0)
  {

    v0 = specialized NotificationHandlingManager.getLegacyScheduleDateComponents()();
  }

  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

uint64_t closure #1 in NotificationHandlingManager.getMomentsUIScheduleDateComponents()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a2;
  v82 = a3;
  v74 = a1;
  v81 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v3 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Calendar.SearchDirection();
  v83 = *(v79 - 8);
  v5 = v83;
  MEMORY[0x28223BE20](v79);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Calendar.MatchingPolicy();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v73 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v53 - v14;
  v15 = type metadata accessor for Date();
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v71 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v18);
  v78 = &v53 - v21;
  Date.init()();
  v22 = *(v8 + 104);
  v67 = *MEMORY[0x277CC9878];
  v65 = v22;
  v66 = v8 + 104;
  v22(v10);
  v23 = *(v5 + 104);
  v64 = *MEMORY[0x277CC98E8];
  v63 = v23;
  v23(v7);
  v24 = *(v3 + 104);
  v25 = v80;
  v62 = *MEMORY[0x277CC9900];
  v26 = v81;
  v61 = v3 + 104;
  v60 = v24;
  v24(v80);
  Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
  v27 = *(v3 + 8);
  v74 = v3 + 8;
  v58 = v27;
  v27(v25, v26);
  v28 = *(v83 + 8);
  v70 = v7;
  v83 += 8;
  v56 = v28;
  v28(v7, v79);
  v29 = v77;
  v30 = *(v8 + 8);
  v31 = v10;
  v32 = v10;
  v33 = v54;
  v72 = v8 + 8;
  v55 = v30;
  (v30)(v32);
  v34 = v76;
  v35 = v20;
  v36 = v20;
  v37 = v53;
  v68 = *(v76 + 8);
  v69 = v76 + 8;
  v68(v36, v29);
  v38 = *(v34 + 48);
  v39 = v38(v37, 1, v29);
  v59 = v34 + 48;
  v57 = v38;
  if (v39 == 1)
  {
    static Date.distantFuture.getter();
    if (v38(v37, 1, v29) != 1)
    {
      outlined destroy of UTType?(v37, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v34 + 32))(v78, v37, v29);
  }

  Date.init()();
  v65(v31, v67, v33);
  v40 = v70;
  v41 = v79;
  v63(v70, v64, v79);
  v43 = v80;
  v42 = v81;
  v60(v80, v62, v81);
  v44 = v73;
  Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
  v58(v43, v42);
  v56(v40, v41);
  v55(v31, v33);
  v45 = v77;
  v46 = v68;
  v68(v35, v77);
  v47 = v57;
  if (v57(v44, 1, v45) == 1)
  {
    v48 = v71;
    static Date.distantFuture.getter();
    v49 = v47(v44, 1, v45);
    v50 = v78;
    if (v49 != 1)
    {
      outlined destroy of UTType?(v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    v48 = v71;
    (*(v76 + 32))(v71, v44, v45);
    v50 = v78;
  }

  v51 = static Date.< infix(_:_:)();
  v46(v48, v45);
  v46(v50, v45);
  return v51 & 1;
}

uint64_t NotificationHandlingManager.currentJournalAuthorizationStatus()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](NotificationHandlingManager.currentJournalAuthorizationStatus(), 0, 0);
}

{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 152)) + 0xB0))();
  *(v0 + 160) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = NotificationHandlingManager.currentJournalAuthorizationStatus();
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22UNNotificationSettingsCs5NeverOGMd, &_sSccySo22UNNotificationSettingsCs5NeverOGMR);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> () with result type Error?;
  *(v0 + 104) = &block_descriptor_51_1;
  *(v0 + 112) = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{

  return MEMORY[0x2822009F8](NotificationHandlingManager.currentJournalAuthorizationStatus(), 0, 0);
}

uint64_t NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for Date();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Component();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v10 = type metadata accessor for Calendar();
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:), 0, 0);
}

uint64_t NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:)()
{
  if (one-time initialization token for notification != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[28] = __swift_project_value_buffer(v1, static CommonLogger.notification);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "Start real time check", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:);
  v6 = v0[7];

  return specialized NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:)(v6);
}

{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  *(*v1 + 248) = v0;

  outlined destroy of UTType?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of UTType?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v0)
  {
    v4 = NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:);
  }

  else
  {
    v4 = NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v1 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v2 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216580B10);
    [v1 setInteger:0 forKey:v2];
  }

  (*(v0[14] + 56))(v0[6], 1, 1, v0[13]);

  v3 = v0[1];

  return v3(0);
}

{
  v14 = v0;
  v1 = v0[31];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21607C000, v3, v4, "Posting Notification failed with error %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v10 = v0[31];
  (*(v0[14] + 56))(v0[6], 1, 1, v0[13]);

  v11 = v0[1];

  return v11(v10);
}

uint64_t NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:)(char a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:), 0, 0);
}

uint64_t NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:)(uint64_t a1)
{
  v47 = v1;
  if (*(v1 + 256) == 1)
  {
    v2 = *(v1 + 208);
    v3 = *(v1 + 216);
    v4 = type metadata accessor for UUID();
    v5 = *(*(v4 - 8) + 56);
    v5(v3, 1, 1, v4);
    v5(v2, 1, 1, v4);
    v6 = swift_task_alloc();
    *(v1 + 240) = v6;
    *v6 = v1;
    v6[1] = NotificationHandlingManager.realTimeCheckForNotification(significantLocationEnabled:for:customURLFormat:);
    v7 = *(v1 + 208);
    v8 = *(v1 + 216);
    v9 = *(v1 + 88);
    v10 = *(v1 + 72);
    v11 = *(v1 + 80);
    v12 = *(v1 + 64);

    return NotificationHandlingManager.didReceiveNotificationServiceTrigger(with:for:customURLFormat:forRealtime:from:)(v8, v12, v10, v11, v9, 1, v7);
  }

  else
  {
    v14 = *(v1 + 176);
    v43 = *(v1 + 168);
    v15 = *(v1 + 144);
    v16 = *(v1 + 152);
    v18 = *(v1 + 128);
    v17 = *(v1 + 136);
    v20 = *(v1 + 104);
    v19 = *(v1 + 112);
    static Calendar.current.getter();
    (*(v15 + 104))(v16, *MEMORY[0x277CC99A0], v17);
    specialized NotificationHandlingManager.notificationRetryDelayMinutes.getter();
    Date.init()();
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v21 = *(v19 + 8);
    v21(v18, v20);
    (*(v15 + 8))(v16, v17);
    outlined init with copy of DateInterval?(v14, v43, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v1 + 168);
    if (v24)
    {
      v45 = v21;
      v26 = *(v1 + 160);
      v28 = *(v1 + 104);
      v27 = *(v1 + 112);
      v29 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v29 = 136315138;
      outlined init with copy of DateInterval?(v25, v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      result = (*(v27 + 48))(v26, 1, v28);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v30 = *(v1 + 168);
      v31 = *(v1 + 120);
      v32 = *(v1 + 104);
      (*(*(v1 + 112) + 32))(v31, *(v1 + 160), v32);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v45(v31, v32);
      outlined destroy of UTType?(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v46);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_21607C000, v22, v23, "Real time condition are not met so will try again at %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x21CE94770](v44, -1, -1);
      MEMORY[0x21CE94770](v29, -1, -1);
    }

    else
    {

      outlined destroy of UTType?(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    v38 = *(v1 + 192);
    v37 = *(v1 + 200);
    v40 = *(v1 + 176);
    v39 = *(v1 + 184);
    v41 = *(v1 + 48);
    specialized static DefaultsManager.Notifications.incrementRetryCount()();
    (*(v38 + 8))(v37, v39);
    outlined init with take of Date?(v40, v41);

    v42 = *(v1 + 8);

    return v42(0);
  }
}

uint64_t NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return specialized NotificationHandlingManager.passRealtimeCheck(significantLocationEnabled:)(a1);
}

Swift::Int NotificationHandlingManager.NotificationError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [UNNotificationRequest](uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  type metadata accessor for NSAttributedString(0, a3, a4);
  **(*(v6 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return swift_continuation_resume();
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x21CE91FC0](a1);

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DateComponents();
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for DateComponents() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1, a2);
  }
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = type metadata accessor for DateComponents();
  v12 = MEMORY[0x28223BE20](v11);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v38 - v15;
  result = MEMORY[0x28223BE20](v14);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v17;
    v19 = *v5;
    v21 = *(v18 + 16);
    v20 = v18 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        v48(v50, v25, v11);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          return (v37)(v28, v11);
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        result = (v33)(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return result;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v34)(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = v42 + v38;
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v141 = a1;
  v162 = type metadata accessor for DateComponents();
  v12 = MEMORY[0x28223BE20](v162);
  v145 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v148 = &v133 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v133 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v139 = &v133 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = MEMORY[0x28223BE20](&v133 - v23);
  v160 = v26;
  v161 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
    v32 = a4;
LABEL_104:
    a4 = *v141;
    if (*v141)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v140 = &v133 - v25;
  v138 = v24;
  v150 = v20;
  v146 = v28;
  v147 = v27;
  v136 = a6;
  v30 = 0;
  v158 = (v26 + 8);
  v159 = v26 + 16;
  v154 = (v26 + 32);
  v31 = MEMORY[0x277D84F90];
  v155 = a5;
  v32 = a4;
  v157 = a4;
  while (1)
  {
    v33 = v30;
    v142 = v31;
    if ((v30 + 1) < v29)
    {
      v143 = v30;
      v144 = v29;
      v34 = *v161;
      v35 = *(v160 + 72);
      a4 = *v161 + v35 * (v30 + 1);
      v36 = *(v160 + 16);
      v37 = v162;
      v36(v140, a4, v162);
      v156 = v35;
      v137 = v34;
      v38 = v34 + v35 * v143;
      v39 = v138;
      v151 = v36;
      v36(v138, v38, v37);
      v40 = v140;
      LODWORD(v153) = v32(v140, v39);
      if (v7)
      {
        v132 = *v158;
        (*v158)(v39, v37);
        v132(v40, v37);
        goto LABEL_117;
      }

      v163 = 0;
      v41 = *v158;
      (*v158)(v39, v37);
      v149 = v41;
      (v41)(v40, v37);
      v135 = v144 - 1;
      v152 = v144 - 2;
      v42 = v143;
      a5 = v155;
      v43 = v156;
      v44 = v137 + v156 * (v143 + 2);
      v45 = v139;
      while (v152 != v42)
      {
        v46 = v162;
        v47 = v151;
        (v151)(v45, v44, v162);
        v48 = a5;
        v49 = v150;
        (v47)(v150, a4, v46);
        v50 = v48;
        v51 = v163;
        v52 = v157(v45, v49);
        v163 = v51;
        if (v51)
        {
          v130 = v149;
          (v149)(v49, v46);
          v130(v45, v46);
LABEL_117:

          return;
        }

        v53 = v52;
        v54 = v149;
        (v149)(v49, v46);
        v54(v45, v46);
        ++v42;
        v43 = v156;
        v44 += v156;
        a4 += v156;
        a5 = v50;
        if ((v153 ^ v53))
        {
          v55 = v42 + 1;
          goto LABEL_12;
        }
      }

      v42 = v135;
      v55 = v144;
LABEL_12:
      v33 = v143;
      if (v153)
      {
        if (v55 < v143)
        {
          goto LABEL_141;
        }

        v31 = v162;
        if (v143 <= v42)
        {
          a4 = v43 * (v55 - 1);
          v56 = v55;
          v57 = v55 * v43;
          v144 = v56;
          v58 = v56;
          v59 = v143;
          v60 = v143 * v43;
          do
          {
            if (v59 != --v58)
            {
              v62 = *v161;
              if (!*v161)
              {
                goto LABEL_145;
              }

              v63 = *v154;
              (*v154)(v145, v62 + v60, v162);
              if (v60 < a4 || v62 + v60 >= (v62 + v57))
              {
                v61 = v162;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v61 = v162;
                if (v60 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v63((v62 + a4), v145, v61);
              a5 = v155;
              v43 = v156;
              v31 = v61;
            }

            ++v59;
            a4 -= v43;
            v57 -= v43;
            v60 += v43;
          }

          while (v59 < v58);
          v7 = v163;
          v32 = v157;
          v33 = v143;
          v55 = v144;
        }

        else
        {
          v7 = v163;
          v32 = v157;
        }
      }

      else
      {
        v31 = v162;
        v7 = v163;
        v32 = v157;
      }
    }

    else
    {
      v55 = (v30 + 1);
      v31 = v162;
    }

    v64 = v161[1];
    if (v55 < v64)
    {
      if (__OFSUB__(v55, v33))
      {
        goto LABEL_137;
      }

      if (v55 - v33 < v136)
      {
        if (__OFADD__(v33, v136))
        {
          __break(1u);
        }

        else
        {
          v144 = v55;
          if (&v33[v136] >= v64)
          {
            v65 = v64;
          }

          else
          {
            v65 = &v33[v136];
          }

          if (v65 >= v33)
          {
            if (v144 == v65)
            {
              v55 = v144;
              goto LABEL_38;
            }

            v163 = v7;
            v112 = *v161;
            v113 = *(v160 + 72);
            v156 = *(v160 + 16);
            v114 = (v112 + v113 * (v144 - 1));
            v152 = -v113;
            v153 = v112;
            v143 = v33;
            v115 = &v33[-v144];
            v134 = v113;
            a4 = v112 + v144 * v113;
            v151 = v65;
            while (1)
            {
              v135 = a4;
              v137 = v115;
              v149 = v114;
              while (1)
              {
                v116 = v146;
                v117 = v156;
                (v156)(v146, a4, v31);
                v118 = v147;
                v117(v147, v114, v31);
                v119 = v163;
                v120 = v157(v116, v118);
                v163 = v119;
                if (v119)
                {
                  v131 = *v158;
                  (*v158)(v118, v31);
                  v131(v116, v31);
                  goto LABEL_117;
                }

                v121 = v120;
                v122 = *v158;
                (*v158)(v118, v31);
                v122(v116, v31);
                if ((v121 & 1) == 0)
                {
                  break;
                }

                if (!v153)
                {
                  goto LABEL_143;
                }

                v123 = *v154;
                v124 = v148;
                v31 = v162;
                (*v154)(v148, a4, v162);
                swift_arrayInitWithTakeFrontToBack();
                v123(v114, v124, v31);
                v114 += v152;
                a4 += v152;
                v125 = __CFADD__(v115++, 1);
                a5 = v155;
                if (v125)
                {
                  goto LABEL_101;
                }
              }

              a5 = v155;
              v31 = v162;
LABEL_101:
              v114 = &v149[v134];
              v115 = (v137 - 1);
              a4 = v135 + v134;
              v55 = v151;
              if (++v144 == v151)
              {
                v32 = v157;
                v7 = v163;
                v33 = v143;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v31 = v142;
    if (v55 < v33)
    {
      goto LABEL_136;
    }

    a4 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
    }

    v67 = *(v31 + 2);
    v66 = *(v31 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v31);
    }

    *(v31 + 2) = v68;
    v69 = &v31[16 * v67];
    *(v69 + 4) = v33;
    *(v69 + 5) = v55;
    v151 = v55;
    v70 = *v141;
    if (!*v141)
    {
      goto LABEL_146;
    }

    if (v67)
    {
      break;
    }

    a5 = v155;
    v32 = a4;
LABEL_90:
    v29 = v161[1];
    v30 = v151;
    if (v151 >= v29)
    {
      goto LABEL_104;
    }
  }

  a5 = v155;
  v32 = a4;
  while (1)
  {
    a4 = v68 - 1;
    if (v68 >= 4)
    {
      v75 = &v31[16 * v68 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_123;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_124;
      }

      v82 = &v31[16 * v68];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_126;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_129;
      }

      if (v86 >= v78)
      {
        v104 = &v31[16 * a4 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v73 < v107)
        {
          a4 = v68 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v68 == 3)
    {
      v71 = *(v31 + 4);
      v72 = *(v31 + 5);
      v81 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      v74 = v81;
LABEL_59:
      if (v74)
      {
        goto LABEL_125;
      }

      v87 = &v31[16 * v68];
      v89 = *v87;
      v88 = *(v87 + 1);
      v90 = __OFSUB__(v88, v89);
      v91 = v88 - v89;
      v92 = v90;
      if (v90)
      {
        goto LABEL_128;
      }

      v93 = &v31[16 * a4 + 32];
      v95 = *v93;
      v94 = *(v93 + 1);
      v81 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v81)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v91, v96))
      {
        goto LABEL_132;
      }

      if (v91 + v96 >= v73)
      {
        if (v73 < v96)
        {
          a4 = v68 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v97 = &v31[16 * v68];
    v99 = *v97;
    v98 = *(v97 + 1);
    v81 = __OFSUB__(v98, v99);
    v91 = v98 - v99;
    v92 = v81;
LABEL_73:
    if (v92)
    {
      goto LABEL_127;
    }

    v100 = &v31[16 * a4];
    v102 = *(v100 + 4);
    v101 = *(v100 + 5);
    v81 = __OFSUB__(v101, v102);
    v103 = v101 - v102;
    if (v81)
    {
      goto LABEL_130;
    }

    if (v103 < v91)
    {
      goto LABEL_90;
    }

LABEL_80:
    v108 = a4 - 1;
    if (a4 - 1 >= v68)
    {
      break;
    }

    if (!*v161)
    {
      goto LABEL_142;
    }

    v109 = *&v31[16 * v108 + 32];
    v110 = *&v31[16 * a4 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*v161 + *(v160 + 72) * v109), (*v161 + *(v160 + 72) * *&v31[16 * a4 + 32]), (*v161 + *(v160 + 72) * v110), v70, v32, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v110 < v109)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
    }

    if (v108 >= *(v31 + 2))
    {
      goto LABEL_122;
    }

    v111 = &v31[16 * v108];
    *(v111 + 4) = v109;
    *(v111 + 5) = v110;
    v164 = v31;
    specialized Array.remove(at:)(a4);
    v31 = v164;
    v68 = *(v164 + 2);
    if (v68 <= 1)
    {
      goto LABEL_90;
    }
  }

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
LABEL_137:
  __break(1u);
LABEL_138:
  v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
LABEL_106:
  v164 = v31;
  v126 = *(v31 + 2);
  if (v126 < 2)
  {
    goto LABEL_117;
  }

  while (*v161)
  {
    v127 = *&v31[16 * v126];
    v128 = *&v31[16 * v126 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)((*v161 + *(v160 + 72) * v127), (*v161 + *(v160 + 72) * *&v31[16 * v126 + 16]), (*v161 + *(v160 + 72) * v128), a4, v32, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v128 < v127)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
    }

    if (v126 - 2 >= *(v31 + 2))
    {
      goto LABEL_134;
    }

    v129 = &v31[16 * v126];
    *v129 = v127;
    *(v129 + 1) = v128;
    v164 = v31;
    specialized Array.remove(at:)(v126 - 1);
    v31 = v164;
    v126 = *(v164 + 2);
    if (v126 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}