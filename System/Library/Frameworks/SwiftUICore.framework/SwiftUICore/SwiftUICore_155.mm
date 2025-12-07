uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(__int128 *, __int128 *))
{
  v77 = a5;
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 80;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 80;
  if (v10 < v12)
  {
    v13 = __dst;
    if (a4 != __dst || &__dst[80 * v10] <= a4)
    {
      memmove(a4, __dst, 80 * v10);
    }

    v14 = &v6[80 * v10];
    if (v9 < 80)
    {
LABEL_6:
      v8 = v13;
      goto LABEL_48;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_6;
      }

      v67 = *v8;
      v17 = *(v8 + 1);
      v18 = *(v8 + 2);
      v19 = *(v8 + 4);
      v70 = *(v8 + 3);
      v71 = v19;
      v68 = v17;
      v69 = v18;
      memmove(&__dsta, v8, 0x50uLL);
      v72 = *v6;
      v20 = *(v6 + 1);
      v21 = *(v6 + 2);
      v22 = *(v6 + 4);
      v75 = *(v6 + 3);
      v76 = v22;
      v73 = v20;
      v74 = v21;
      memmove(&v57, v6, 0x50uLL);
      outlined init with copy of _LazyLayout_PlacedSubview(&v67, &v52);
      outlined init with copy of _LazyLayout_PlacedSubview(&v72, &v52);
      v23 = v77(&__dsta, &v57);
      if (v5)
      {
        v49 = v59;
        v50 = v60;
        v51 = v61;
        v47 = v57;
        v48 = v58;
        outlined destroy of _LazyLayout_PlacedSubview(&v47);
        v54 = v64;
        v55 = v65;
        v56 = v66;
        v52 = __dsta;
        v53 = v63;
        outlined destroy of _LazyLayout_PlacedSubview(&v52);
        v42 = (v14 - v6) / 80;
        if (v13 < v6 || v13 >= &v6[80 * v42] || v13 != v6)
        {
          v41 = 80 * v42;
          v40 = v13;
          goto LABEL_52;
        }

        return 1;
      }

      v24 = v23;
      v49 = v59;
      v50 = v60;
      v51 = v61;
      v47 = v57;
      v48 = v58;
      outlined destroy of _LazyLayout_PlacedSubview(&v47);
      v54 = v64;
      v55 = v65;
      v56 = v66;
      v52 = __dsta;
      v53 = v63;
      outlined destroy of _LazyLayout_PlacedSubview(&v52);
      if (v24)
      {
        break;
      }

      v15 = v6;
      v16 = v13 == v6;
      v6 += 80;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v13 += 80;
      if (v6 >= v14)
      {
        goto LABEL_6;
      }
    }

    v15 = v8;
    v16 = v13 == v8;
    v8 += 80;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v13, v15, 0x50uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[80 * v12] <= a4)
  {
    memmove(a4, __src, 80 * v12);
  }

  v14 = &v6[80 * v12];
  if (v11 >= 80)
  {
    v25 = v5;
    if (v8 > __dst)
    {
      v26 = -v6;
      while (2)
      {
        v27 = v25;
        v45 = v8;
        v8 -= 80;
        v28 = &v14[v26];
        v7 -= 80;
        v29 = v14;
        while (1)
        {
          v14 = v29;
          v29 -= 80;
          v67 = *(v14 - 5);
          v30 = *(v14 - 4);
          v31 = *(v14 - 3);
          v32 = *(v14 - 1);
          v70 = *(v14 - 2);
          v71 = v32;
          v68 = v30;
          v69 = v31;
          memmove(&__dsta, v29, 0x50uLL);
          v33 = *(v8 + 3);
          v74 = *(v8 + 2);
          v75 = v33;
          v76 = *(v8 + 4);
          v34 = *(v8 + 1);
          v72 = *v8;
          v73 = v34;
          v59 = v74;
          v60 = v33;
          v61 = v76;
          v57 = v72;
          v58 = v34;
          outlined init with copy of _LazyLayout_PlacedSubview(&v67, &v52);
          outlined init with copy of _LazyLayout_PlacedSubview(&v72, &v52);
          v35 = v77(&__dsta, &v57);
          if (v27)
          {
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v47 = v57;
            v48 = v58;
            outlined destroy of _LazyLayout_PlacedSubview(&v47);
            v54 = v64;
            v55 = v65;
            v56 = v66;
            v52 = __dsta;
            v53 = v63;
            outlined destroy of _LazyLayout_PlacedSubview(&v52);
            v39 = v28 / 80;
            v40 = v45;
            if (v45 < v6 || v45 >= &v6[80 * v39])
            {
              memmove(v45, v6, 80 * v39);
              return 1;
            }

            if (v45 == v6)
            {
              return 1;
            }

            v41 = 80 * v39;
            goto LABEL_52;
          }

          v36 = v35;
          v49 = v59;
          v50 = v60;
          v51 = v61;
          v47 = v57;
          v48 = v58;
          outlined destroy of _LazyLayout_PlacedSubview(&v47);
          v54 = v64;
          v55 = v65;
          v56 = v66;
          v52 = __dsta;
          v53 = v63;
          outlined destroy of _LazyLayout_PlacedSubview(&v52);
          v37 = v7 + 80;
          if (v36)
          {
            break;
          }

          if (v37 < v14 || v7 >= v14 || v37 != v14)
          {
            memmove(v7, v29, 0x50uLL);
          }

          v28 -= 80;
          v7 -= 80;
          if (v29 <= v6)
          {
            v14 = v29;
            v8 = v45;
            goto LABEL_48;
          }
        }

        if (v37 < v45 || v7 >= v45)
        {
          memmove(v7, v8, 0x50uLL);
          v25 = 0;
          v38 = __dst;
          v26 = -v6;
        }

        else
        {
          v25 = 0;
          v38 = __dst;
          v26 = -v6;
          if (v37 != v45)
          {
            memmove(v7, v8, 0x50uLL);
          }
        }

        if (v14 > v6 && v8 > v38)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_48:
  v43 = (v14 - v6) / 80;
  if (v8 < v6 || v8 >= &v6[80 * v43] || v8 != v6)
  {
    v41 = 80 * v43;
    v40 = v8;
LABEL_52:
    memmove(v40, v6, v41);
  }

  return 1;
}

uint64_t specialized static LazyLayoutCacheSection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  if (*(a1 + 4))
  {
    result = 0;
    if (!*(a2 + 4))
    {
      return result;
    }

    goto LABEL_8;
  }

  result = 0;
  if (*a1 == *a2)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
LABEL_8:
    if (((v2 ^ *(a2 + 5)) & 1) == 0)
    {
      return v3 ^ *(a2 + 6) ^ 1u;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type LazyLayoutCacheItem.PrefetchPhase and conformance LazyLayoutCacheItem.PrefetchPhase()
{
  if (!lazy protocol witness table cache variable for type LazyLayoutCacheItem.PrefetchPhase and conformance LazyLayoutCacheItem.PrefetchPhase)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyLayoutCacheItem.PrefetchPhase, &type metadata for LazyLayoutCacheItem.PrefetchPhase, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyLayoutCacheItem.PrefetchPhase and conformance LazyLayoutCacheItem.PrefetchPhase);
  }
}

void lazy protocol witness table accessor for type LazyLayoutCacheItem.ParentingPhase and conformance LazyLayoutCacheItem.ParentingPhase()
{
  if (!lazy protocol witness table cache variable for type LazyLayoutCacheItem.ParentingPhase and conformance LazyLayoutCacheItem.ParentingPhase)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyLayoutCacheItem.ParentingPhase, &type metadata for LazyLayoutCacheItem.ParentingPhase, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyLayoutCacheItem.ParentingPhase and conformance LazyLayoutCacheItem.ParentingPhase);
  }
}

uint64_t initializeWithCopy for LazyLayoutCacheItem.SingleItemPhaseMutation(uint64_t a1, uint64_t a2)
{
  swift_weakCopyInit();
  swift_weakCopyInit();
  return a1;
}

uint64_t assignWithCopy for LazyLayoutCacheItem.SingleItemPhaseMutation(uint64_t a1, uint64_t a2)
{
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  return a1;
}

uint64_t initializeWithTake for LazyLayoutCacheItem.SingleItemPhaseMutation(uint64_t a1, uint64_t a2)
{
  swift_weakTakeInit();
  swift_weakTakeInit();
  return a1;
}

uint64_t assignWithTake for LazyLayoutCacheItem.SingleItemPhaseMutation(uint64_t a1, uint64_t a2)
{
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyLayoutCacheItem.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 7))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 5);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LazyLayoutCacheItem.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 5) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeWithCopy for LazyLayoutViewCache.LeastRecentlyUsedItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for LazyLayoutViewCache.LeastRecentlyUsedItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for LazyLayoutViewCache.LeastRecentlyUsedItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void type metadata accessor for [Scrollable](uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t specialized LazyCollectedPlacements.value.getter(unint64_t a1)
{
  type metadata accessor for LazyLayoutViewCache();
  v1 = *AGGraphGetValue();
  swift_beginAccess();

  v3 = specialized _NativeDictionary.filter(_:)(v2, v1);

  *(v1 + 176) = v3;

  swift_beginAccess();
  *(v1 + 216) = 0;

  type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  return *AGGraphGetValue();
}

uint64_t specialized static _LazyLayout_PlacedSubview.orderedForDisplay(lhs:rhs:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 176);
  v5 = *(*a2 + 176);
  if (v4 != v5)
  {
    return v4 < v5;
  }

  if (*(v2 + 173))
  {
    if ((*(v3 + 173) & 1) == 0 && (*(v3 + 174) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v6 = *(v2 + 174);
    if (*(v3 + 173))
    {
      if ((v6 & 1) == 0)
      {
        return 1;
      }
    }

    else if (v6 != *(v3 + 174))
    {
      return v6 ^ 1u;
    }
  }

  v7 = *(v2 + 228);
  v8 = *(v3 + 228);
  if (v7 != v8)
  {
    return v7 < v8;
  }

  if (*(v2 + 224))
  {
    __break(1u);
  }

  else if ((*(v3 + 224) & 1) == 0)
  {
    return *(v2 + 216) < *(v3 + 216);
  }

  __break(1u);
  return result;
}

void partial apply for implicit closure #3 in LazyLayoutViewCache.addItem(_:data:reset:)(uint64_t a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(*(v1 + 176) + 16);
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
}

void type metadata accessor for TransactionPropertyKey<FromScrollViewKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t partial apply for implicit closure #1 in LazyLayoutViewCache.reusedItem(data:anyTransition:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    v4 = a1;
    result = __CocoaSet.count.getter();
    a1 = v4;
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = result;
  *(a1 + 24) = 0;
  *(a1 + 56) = 16;
  return result;
}

uint64_t partial apply for implicit closure #1 in closure #1 in LazyLayoutViewCache.reusedItem(data:anyTransition:)@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  a1[2] = v2[2];
  *(a1 + 41) = *(v2 + 41);
  return outlined init with copy of ReuseMessage(v2, &v5);
}

uint64_t getEnumTagSinglePayload for CompareTransitionType(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CompareTransitionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for MakeSubviewTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v4;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);

  return a1;
}

uint64_t assignWithCopy for MakeSubviewTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);

  v4 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v4;

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  v5 = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = v5;
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t assignWithTake for MakeSubviewTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t getEnumTagSinglePayload for MakeSubviewTransition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for MakeSubviewTransition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for LazyViewGeometry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

_OWORD *assignWithTake for LazyViewGeometry(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t assignWithCopy for LazyTransaction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for LazyTransaction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t initializeWithCopy for LazyLayoutViewCache.SubviewOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = v3;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for LazyLayoutViewCache.SubviewOutputs(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v4;
  v5 = a2[2];
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v5;
  v6 = a2[4];
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = v6;
  v7 = a2[6];
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = v7;
  v8 = a2[8];
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = v8;
  v9 = a2[10];
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = v9;
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = *(a2 + 7);

  *(a1 + 64) = a2[16];
  *(a1 + 68) = a2[17];
  return a1;
}

uint64_t assignWithTake for LazyLayoutViewCache.SubviewOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = v4;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyLayoutViewCache.SubviewOutputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LazyLayoutViewCache.SubviewOutputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for LazyPreferencePrefetchItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithCopy for LazyLayoutCacheParent(uint64_t a1, uint64_t a2)
{
  result = swift_weakCopyAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithTake for LazyLayoutCacheParent(uint64_t a1, uint64_t a2)
{
  result = swift_weakTakeAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for UpdateViewCache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for UpdateViewCache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateViewCache(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 20))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateViewCache(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double outlined copy of ReuseMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v9 = a8 >> 4;
  if (v9 <= 9)
  {
    if (((1 << v9) & 0x37C) != 0)
    {

LABEL_5:

      return result;
    }

    if (v9 == 7)
    {

      goto LABEL_5;
    }
  }

  return result;
}

double outlined consume of ReuseMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v9 = a8 >> 4;
  if (v9 <= 9)
  {
    if (((1 << v9) & 0x37C) != 0)
    {

LABEL_5:

      return result;
    }

    if (v9 == 7)
    {

      goto LABEL_5;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ReuseMessage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  outlined copy of ReuseMessage(*a2, v4, v5, v6, v7, v8, v9, v10);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  return a1;
}

uint64_t assignWithCopy for ReuseMessage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  outlined copy of ReuseMessage(*a2, v4, v5, v6, v7, v8, v9, v10);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  v18 = *(a1 + 56);
  *(a1 + 56) = v10;
  outlined consume of ReuseMessage(v11, v12, v13, v14, v15, v16, v17, v18);
  return a1;
}

uint64_t assignWithTake for ReuseMessage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v12;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  v13 = *(a1 + 56);
  *(a1 + 56) = v4;
  outlined consume of ReuseMessage(v5, v7, v6, v8, v9, v10, v11, v13);
  return a1;
}

uint64_t storeEnumTagSinglePayload for ReuseMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * -a2;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 32) = 0;
      *(result + 56) = 0;
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ReuseMessage(uint64_t result, char a2)
{
  v2 = *(result + 56) & 1 | (16 * a2);
  *(result + 24) &= 1uLL;
  *(result + 56) = v2;
  return result;
}

void lazy protocol witness table accessor for type HiddenForReuseEffect and conformance HiddenForReuseEffect()
{
  if (!lazy protocol witness table cache variable for type HiddenForReuseEffect and conformance HiddenForReuseEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for HiddenForReuseEffect, &type metadata for HiddenForReuseEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HiddenForReuseEffect and conformance HiddenForReuseEffect);
  }
}

void *initializeBufferWithCopyOfBuffer for LazyTransition(_DWORD *a1, int *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = *a2;
    v10 = a2 + 11;
    *a1 = v11;
    v12 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
    v13 = (v10 & 0xFFFFFFFFFFFFFFF8) + 8;
    *v12 = *(v10 & 0xFFFFFFFFFFFFFFF8);
    v14 = *(v5 + 16);

    v14(v12 + 1, v13, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

_DWORD *assignWithCopy for LazyTransition(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((v5 + *(v7 + 80) + 8) & ~*(v7 + 80), (v6 + *(v7 + 80) + 8) & ~*(v7 + 80));
  return a1;
}

_DWORD *initializeWithTake for LazyTransition(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

_DWORD *assignWithTake for LazyTransition(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((v5 + *(v7 + 80) + 8) & ~*(v7 + 80), (v6 + *(v7 + 80) + 8) & ~*(v7 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyTransition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for LazyTransition(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  if (v7 > 0x7FFFFFFE)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 8) & ~v9);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v19 = 0;
    *v19 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v19 = a2;
  }
}

uint64_t initializeWithCopy for CacheItemDescription(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for CacheItemDescription(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithTake for CacheItemDescription(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyTransaction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LazyTransaction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t TimeDataSourceStorage.withValue(for:call:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a3;
  v32 = a2;
  v33 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = type metadata accessor for Optional();
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v28 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - v20;
  v22 = *(a5 + 40);
  v29 = a4;
  v30 = v6;
  v22(a1, a4, a5, v19);
  v32(v17);
  v23 = *(v14 + 8);
  v23(v17, AssociatedTypeWitness);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v13, v28);
    v24 = 1;
    v25 = v33;
  }

  else
  {
    (*(v14 + 32))(v21, v13, AssociatedTypeWitness);
    v25 = v33;
    (*(a5 + 48))(v21, v29, a5);
    v23(v21, AssociatedTypeWitness);
    v24 = 0;
  }

  v26 = type metadata accessor for Date();
  return (*(*(v26 - 8) + 56))(v25, v24, 1, v26);
}

uint64_t static TimeDataSource.currentDate.getter@<X0>(uint64_t *a1@<X8>)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateBox, type metadata accessor for TimeDataSource<A>.DateBox);
  v6 = swift_allocObject();
  result = outlined init with take of TimeDataSource<Date><A>.DateStorage(v4, v6 + direct field offset for TimeDataSource<A>.DateBox.storage, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  *a1 = v6;
  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.__Key_timeDataSource@<X0>(uint64_t *a1@<X8>)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateBox, type metadata accessor for TimeDataSource<A>.DateBox);
  v6 = swift_allocObject();
  result = outlined init with take of TimeDataSource<Date><A>.DateStorage(v4, v6 + direct field offset for TimeDataSource<A>.DateBox.storage, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  *a1 = v6;
  return result;
}

void EnvironmentValues.timeDataSource.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2g5(v2, a1);
  }
}

void key path getter for EnvironmentValues.timeDataSource : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt1g5(v3, &v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2g5(*a1, &v4);
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.timeDataSource : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Ttg5(v4, *a2);
  }

  return result;
}

double EnvironmentValues.timeDataSource.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2B5(v1, v2);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Ttg5(v3, *v1);
  }

  return result;
}

void (*EnvironmentValues.timeDataSource.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v3[5] = *v1;
  v6 = *(v1 + 8);
  v3[6] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt1g5(v5, v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2g5(v5, v3);
  }

  v4[7] = 0;
  return EnvironmentValues.timeDataSource.modify;
}

void EnvironmentValues.timeDataSource.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;

  v5 = v3[6];
  v6 = v3[4];
  if (a2)
  {
    swift_retain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2B5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Ttg5(v3[5], *v3[4]);
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2B5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Ttg5(v3[5], *v3[4]);
    }
  }

  free(v3);
}

uint64_t TimeDataSourceStorage.end.getter@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 1, 1, AssociatedTypeWitness);
}

uint64_t TimeDataSource<A>.DateBox.resolve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = direct field offset for TimeDataSource<A>.DateBox.storage;
  v6 = *(a3 + 24);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  v8 = v7;
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage);
  return v6(v3 + v5, v8, v9, a2, a3);
}

uint64_t TimeDataSource<A>.DateStorage.value(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v3, &v16 - v11, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    return (*(v7 + 16))(a2, a1, v6);
  }

  v14 = *(v7 + 32);
  v14(v9, v12, v6);
  _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969548]);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    (*(v7 + 8))(v9, v6);
    return (*(v7 + 16))(a2, a1, v6);
  }

  return (v14)(a2, v9, v6);
}

uint64_t TimeDataSource<A>.DateStorage.round(_:_:toMultipleOf:)(double a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  Date.timeIntervalSinceReferenceDate.getter();
  v17 = v12;
  if (a1 == 1.0)
  {
    (*(v6 + 16))(v11, a3, v5);
    v13 = (*(v6 + 88))(v11, v5);
    if (v13 != *MEMORY[0x1E69E7038] && v13 != *MEMORY[0x1E69E7030] && v13 != *MEMORY[0x1E69E7040] && v13 != *MEMORY[0x1E69E7048] && v13 != *MEMORY[0x1E69E7020] && v13 != *MEMORY[0x1E69E7028])
    {
      Double._roundSlowPath(_:)();
      (*(v6 + 8))(v11, v5);
    }
  }

  else
  {
    v17 = v12 / a1;
    (*(v6 + 16))(v8, a3, v5);
    v14 = (*(v6 + 88))(v8, v5);
    if (v14 != *MEMORY[0x1E69E7038] && v14 != *MEMORY[0x1E69E7030] && v14 != *MEMORY[0x1E69E7040] && v14 != *MEMORY[0x1E69E7048] && v14 != *MEMORY[0x1E69E7020] && v14 != *MEMORY[0x1E69E7028])
    {
      Double._roundSlowPath(_:)();
      (*(v6 + 8))(v8, v5);
    }
  }

  return Date.init(timeIntervalSinceReferenceDate:)();
}

uint64_t TimeDataSource<A>.DateStorage.end.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v2, &v13 - v5, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v8 = 1;
  v9 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  if (v9 != 1)
  {
    (*(*(v10 - 8) + 32))(a1, v6, v10);
    v8 = 0;
  }

  return (*(v11 + 56))(a1, v8, 1, v10);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TimeDataSource<A><A>.DateStorage.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x797469746E656469;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance TimeDataSource<A><A>.DateStorage.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469746E656469 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018DD803A0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataSource<A><A>.DateStorage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.CodingKeys and conformance TimeDataSource<A><A>.DateStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.CodingKeys);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataSource<A><A>.DateStorage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.CodingKeys and conformance TimeDataSource<A><A>.DateStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.CodingKeys);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataSource<A><A>.DateStorage.IdentityCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys and conformance TimeDataSource<A><A>.DateStorage.IdentityCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.IdentityCodingKeys);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataSource<A><A>.DateStorage.IdentityCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys and conformance TimeDataSource<A><A>.DateStorage.IdentityCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.IdentityCodingKeys);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void protocol witness for CodingKey.init(stringValue:) in conformance TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461446573756170 && a2 == 0xE900000000000065)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys and conformance TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityWithPauseCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys and conformance TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityWithPauseCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeDataSource<A>.DateStorage.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys>(0);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys>(0);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  type metadata accessor for KeyedEncodingContainer<TimeDataSource<Date><A>.DateStorage.CodingKeys>(0);
  v35 = v11;
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.CodingKeys);
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.CodingKeys and conformance TimeDataSource<A><A>.DateStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.CodingKeys);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v32, v10, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  if ((*(*(v14 - 8) + 48))(v10, 1, v14) == 1)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityCodingKeys);
    v36 = 0;
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys and conformance TimeDataSource<A><A>.DateStorage.IdentityCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.IdentityCodingKeys);
    v15 = v24;
    v16 = v35;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v25 + 8))(v15, v26);
    return (*(v33 + 8))(v13, v16);
  }

  else
  {
    v19 = v28;
    v18 = v29;
    (*(v28 + 32))(v34, v10, v29);
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityWithPauseCodingKeys);
    v37 = 1;
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys and conformance TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityWithPauseCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys);
    v20 = v27;
    v21 = v35;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969538]);
    v22 = v31;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v30 + 8))(v20, v22);
    (*(v19 + 8))(v34, v18);
    return (*(v33 + 8))(v13, v21);
  }
}

uint64_t TimeDataSource<A>.DateStorage.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v1, &v11 - v7, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return MEMORY[0x193AC11A0](0);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x193AC11A0](1);
  _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969540]);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int TimeDataSource<A>.DateStorage.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  Hasher.init(_seed:)();
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v1, v8, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    MEMORY[0x193AC11A0](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x193AC11A0](1);
    _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969540]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

uint64_t TimeDataSource<A>.DateStorage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  type metadata accessor for KeyedDecodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys>(0);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedDecodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys>(0);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedDecodingContainer<TimeDataSource<Date><A>.DateStorage.CodingKeys>(0);
  v51 = v8;
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.CodingKeys);
  v16 = v10;
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.CodingKeys and conformance TimeDataSource<A><A>.DateStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.CodingKeys);
  v17 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_7;
  }

  v19 = v48;
  v18 = v49;
  v42 = v15;
  v21 = v52;
  v20 = v53;
  v54 = a1;
  v22 = v50;
  v23 = v51;
  v24 = KeyedDecodingContainer.allKeys.getter();
  v25 = (2 * *(v24 + 16)) | 1;
  v55 = v24;
  v56 = v24 + 32;
  v57 = 0;
  v58 = v25;
  v26 = specialized Collection<>.popFirst()();
  if (v26 == 2 || v57 != v58 >> 1)
  {
    v31 = v16;
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v34 = v19;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v18 + 8))(v31, v23);
    swift_unknownObjectRelease();
    a1 = v54;
LABEL_7:
    v35 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v48 = v16;
  v27 = v18;
  if (v26)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityWithPauseCodingKeys);
    v59 = 1;
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys and conformance TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityWithPauseCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys);
    v28 = v21;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    type metadata accessor for Date();
    _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969558]);
    v29 = v45;
    v30 = v46;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v47 + 8))(v28, v30);
    (*(v27 + 8))(v48, v23);
    swift_unknownObjectRelease();
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
    (*(*(v39 - 8) + 56))(v29, 0, 1, v39);
    v40 = v42;
    outlined init with take of TimeDataSource<Date><A>.DateStorage(v29, v42, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  }

  else
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityCodingKeys);
    v59 = 0;
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys and conformance TimeDataSource<A><A>.DateStorage.IdentityCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.IdentityCodingKeys);
    v37 = v48;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v43 + 8))(v22, v44);
    (*(v18 + 8))(v37, v23);
    swift_unknownObjectRelease();
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
    v40 = v42;
    (*(*(v38 - 8) + 56))(v42, 1, 1, v38);
  }

  outlined init with take of TimeDataSource<Date><A>.DateStorage(v40, v20, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  v35 = v54;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t protocol witness for TimeDataSourceStorage.end.getter in conformance TimeDataSource<A><A>.DateStorage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v5, v4, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v7 = 1;
  v8 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  if (v8 != 1)
  {
    (*(*(v9 - 8) + 32))(a2, v4, v9);
    v7 = 0;
  }

  return (*(v10 + 56))(a2, v7, 1, v9);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TimeDataSource<A><A>.DateStorage(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v1, v8, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return MEMORY[0x193AC11A0](0);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x193AC11A0](1);
  _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969540]);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeDataSource<A><A>.DateStorage(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v2, v9, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    MEMORY[0x193AC11A0](0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x193AC11A0](1);
    _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969540]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  return Hasher._finalize()();
}

uint64_t TimeDataSource<A>.DurationBox.resolve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = direct field offset for TimeDataSource<A>.DurationBox.storage;
  v6 = *(a3 + 24);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  v8 = v7;
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage and conformance TimeDataSource<A><A>.DurationStorage, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage);
  return v6(v3 + v5, v8, v9, a2, a3);
}

uint64_t TimeDataSource<A>.DurationStorage.value(for:)()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v0, &v10 - v6, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  (*(v2 + 32))(v4, v7, v1);
  Date.timeIntervalSince(_:)();
  v8 = static Duration.seconds(_:)();
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t TimeDataSource<A>.DurationStorage.date(for:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v1, &v10 - v7, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  (*(v3 + 32))(v5, v8, v2);
  Duration.components.getter();
  Date.addingTimeInterval(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t TimeDataSource<A>.DurationStorage.round(_:_:toMultipleOf:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v13 = Duration.components.getter();
  v19 = v14 * 1.0e-18 + v13;
  if (a2 == 1.0)
  {
    (*(v7 + 16))(v12, a4, v6);
    v15 = (*(v7 + 88))(v12, v6);
    if (v15 != *MEMORY[0x1E69E7038] && v15 != *MEMORY[0x1E69E7030] && v15 != *MEMORY[0x1E69E7040] && v15 != *MEMORY[0x1E69E7048] && v15 != *MEMORY[0x1E69E7020] && v15 != *MEMORY[0x1E69E7028])
    {
      Double._roundSlowPath(_:)();
      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    v19 = (v14 * 1.0e-18 + v13) / a2;
    (*(v7 + 16))(v9, a4, v6);
    v16 = (*(v7 + 88))(v9, v6);
    if (v16 != *MEMORY[0x1E69E7038] && v16 != *MEMORY[0x1E69E7030] && v16 != *MEMORY[0x1E69E7040] && v16 != *MEMORY[0x1E69E7048] && v16 != *MEMORY[0x1E69E7020] && v16 != *MEMORY[0x1E69E7028])
    {
      Double._roundSlowPath(_:)();
      (*(v7 + 8))(v9, v6);
    }
  }

  return static Duration.seconds(_:)();
}

uint64_t TimeDataSource<A>.DurationStorage.convergesToZero(_:)(uint64_t a1, uint64_t a2)
{
  static Duration.zero.getter();

  return static Duration.< infix(_:_:)();
}

uint64_t static TimeDataSource<A>.DurationStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (TimeDataSource<Duration><A>.DurationStorage, TimeDataSource<Duration><A>.DurationStorage)(0, &lazy cache variable for type metadata for (TimeDataSource<Duration><A>.DurationStorage, TimeDataSource<Duration><A>.DurationStorage), &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v8 = *(v7 + 56);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(a1, &v12 - v5, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(a2, &v6[v8], &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  LOBYTE(a2) = static Date.== infix(_:_:)();
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 8);
  v10(&v6[v8], v9);
  v10(v6, v9);
  return a2 & 1;
}

void protocol witness for CodingKey.init(stringValue:) in conformance TimeDataSource<A><A>.DurationStorage.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xEE0074657366664FLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataSource<A><A>.DurationStorage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage.CodingKeys and conformance TimeDataSource<A><A>.DurationStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage.CodingKeys);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataSource<A><A>.DurationStorage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage.CodingKeys and conformance TimeDataSource<A><A>.DurationStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage.CodingKeys);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys and conformance TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.DurationOffsetCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys and conformance TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.DurationOffsetCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeDataSource<A>.DurationStorage.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys>(0);
  v18 = v2;
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v17 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = type metadata accessor for TimeDataSource<A>.DurationStorage;
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;
  type metadata accessor for KeyedEncodingContainer<TimeDataSource<Duration><A>.DurationStorage.CodingKeys>(0);
  v8 = v7;
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.CodingKeys);
  v11 = v8;
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage.CodingKeys and conformance TimeDataSource<A><A>.DurationStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage.CodingKeys);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v16[1], v6, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, v16[0]);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.DurationOffsetCodingKeys);
  v12 = v18;
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys and conformance TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.DurationOffsetCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys);
  v13 = v17;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v14 = type metadata accessor for Date();
  _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969538]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(*(v14 - 8) + 8))(v6, v14);
  (*(v20 + 8))(v13, v12);
  return (*(v19 + 8))(v10, v11);
}

uint64_t TimeDataSource<A>.DurationStorage.hash(into:)(uint64_t a1)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v1, &v7 - v3, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  MEMORY[0x193AC11A0](0);
  v5 = type metadata accessor for Date();
  _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969540]);
  dispatch thunk of Hashable.hash(into:)();
  return (*(*(v5 - 8) + 8))(v4, v5);
}

Swift::Int TimeDataSource<A>.DurationStorage.hashValue.getter()
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  Hasher.init(_seed:)();
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v0, v3, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  MEMORY[0x193AC11A0](0);
  v4 = type metadata accessor for Date();
  _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969540]);
  dispatch thunk of Hashable.hash(into:)();
  (*(*(v4 - 8) + 8))(v3, v4);
  return Hasher._finalize()();
}

uint64_t TimeDataSource<A>.DurationStorage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v26 - v4;
  type metadata accessor for KeyedDecodingContainer<TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys>(0);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedDecodingContainer<TimeDataSource<Duration><A>.DurationStorage.CodingKeys>(0);
  v30 = v8;
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.CodingKeys);
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage.CodingKeys and conformance TimeDataSource<A><A>.DurationStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage.CodingKeys);
  v11 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v11)
  {
    v12 = v31;
    v13 = v32;
    v14 = v30;
    v15 = KeyedDecodingContainer.allKeys.getter();
    v16 = (2 * *(v15 + 16)) | 1;
    v34 = v15;
    v35 = v15 + 32;
    v36 = 0;
    v37 = v16;
    v17 = v14;
    if (specialized Collection<>.popFirst()() || v36 != v37 >> 1)
    {
      v22 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v24 = v13;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v33 + 8))(v10, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = v14;
      _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.DurationOffsetCodingKeys);
      lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys and conformance TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.DurationOffsetCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys);
      v19 = v7;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v20 = v33;
      type metadata accessor for Date();
      _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969558]);
      v21 = v29;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v28 + 8))(v19, v21);
      (*(v20 + 8))(v10, v18);
      swift_unknownObjectRelease();
      outlined init with take of TimeDataSource<Date><A>.DateStorage(v12, v27, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for TimeDataSourceStorage.value(for:) in conformance TimeDataSource<A><A>.DurationStorage@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v1, v9, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  (*(v4 + 32))(v6, v9, v3);
  Date.timeIntervalSince(_:)();
  v10 = static Duration.seconds(_:)();
  v12 = v11;
  result = (*(v4 + 8))(v6, v3);
  *a1 = v10;
  a1[1] = v12;
  return result;
}

uint64_t protocol witness for TimeDataSourceStorage.date(for:) in conformance TimeDataSource<A><A>.DurationStorage(uint64_t *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v1, v8, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  (*(v3 + 32))(v5, v8, v2);
  Duration.components.getter();
  Date.addingTimeInterval(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for TimeDataSourceStorage.round(_:_:toMultipleOf:) in conformance TimeDataSource<A><A>.DurationStorage@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  result = TimeDataSource<A>.DurationStorage.round(_:_:toMultipleOf:)(*a1, a4, a1[1], a2);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t protocol witness for TimeDataSourceStorage.convergesToZero(_:) in conformance TimeDataSource<A><A>.DurationStorage(uint64_t *a1)
{
  static Duration.zero.getter();

  return static Duration.< infix(_:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TimeDataSource<A><A>.DurationStorage(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v1, v3, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  MEMORY[0x193AC11A0](0);
  v4 = type metadata accessor for Date();
  _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969540]);
  dispatch thunk of Hashable.hash(into:)();
  (*(*(v4 - 8) + 8))(v3, v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TimeDataSource<A><A>.DurationStorage(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v1, v3, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  MEMORY[0x193AC11A0](0);
  v4 = type metadata accessor for Date();
  _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969540]);
  dispatch thunk of Hashable.hash(into:)();
  return (*(*(v4 - 8) + 8))(v3, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeDataSource<A><A>.DurationStorage(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v1, v3, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  MEMORY[0x193AC11A0](0);
  v4 = type metadata accessor for Date();
  _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969540]);
  dispatch thunk of Hashable.hash(into:)();
  (*(*(v4 - 8) + 8))(v3, v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TimeDataSource<A><A>.DurationStorage(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (TimeDataSource<Duration><A>.DurationStorage, TimeDataSource<Duration><A>.DurationStorage)(0, &lazy cache variable for type metadata for (TimeDataSource<Duration><A>.DurationStorage, TimeDataSource<Duration><A>.DurationStorage), &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v8 = *(v7 + 56);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(a1, &v12 - v5, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(a2, &v6[v8], &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  LOBYTE(a2) = static Date.== infix(_:_:)();
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 8);
  v10(&v6[v8], v9);
  v10(v6, v9);
  return a2 & 1;
}

uint64_t TimeDataSource<A>.DateRangeBox.resolve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = direct field offset for TimeDataSource<A>.DateRangeBox.storage;
  v6 = *(a3 + 24);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  v8 = v7;
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage and conformance TimeDataSource<A><A>.DateRangeStorage, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage);
  return v6(v3 + v5, v8, v9, a2, a3);
}

uint64_t TimeDataSource<A>.DateRangeStorage.value(for:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v47 = a1;
  v45 = a2;
  type metadata accessor for (lower: Date, upper: Date)(0);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v42 - v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v46, &v42 - v20, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = *(v7 + 32);
  v46 = v7;
  v24 = (v7 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    v18 = v9;
    v15 = v12;
    v23(v12, v21, v6);
    _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969548]);
    v25 = v47;
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v26 = v9;
      v27 = v12;
    }

    else
    {
      v26 = v9;
      v27 = v25;
    }

    (*v24)(v26, v27, v6);
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    v23(v18, v21, v6);
    _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969548]);
    v28 = v47;
    v29 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v30 = *v24;
    if (v29)
    {
      v31 = v15;
      v32 = v28;
      goto LABEL_10;
    }
  }

  v31 = v15;
  v32 = v18;
LABEL_10:
  v30(v31, v32, v6);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
LABEL_11:
    v34 = v42;
    v23(v42, v18, v6);
    v35 = v44;
    v23((v34 + *(v44 + 48)), v15, v6);
    v36 = v43;
    _s7SwiftUI17EnvironmentValuesVAAE21CapitalizationContextOWOcTm_0(v34, v43, type metadata accessor for (lower: Date, upper: Date));
    v37 = *(v35 + 48);
    v38 = v45;
    v23(v45, v36, v6);
    v39 = *(v46 + 8);
    v39(v36 + v37, v6);
    _s10Foundation4DateVSgWObTm_0(v34, v36, type metadata accessor for (lower: Date, upper: Date));
    v40 = *(v35 + 48);
    type metadata accessor for Range<Date>(0);
    v23(&v38[*(v41 + 36)], (v36 + v40), v6);
    return (v39)(v36, v6);
  }

  __break(1u);
  return result;
}

uint64_t TimeDataSource<A>.DateRangeStorage.date(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v2, &v18 - v12, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *(v5 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v15(v7, v13, v4);
    type metadata accessor for Range<Date>(0);
    if (static Date.== infix(_:_:)())
    {
      (*(v5 + 8))(v7, v4);
      return (*(v5 + 16))(v19, a1, v4);
    }

    else
    {
      TimeDataSource<A>.DateRangeStorage.logFault()();
      static Date.distantFuture.getter();
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    v15(v10, v13, v4);
    if (static Date.== infix(_:_:)())
    {
      (*(v5 + 8))(v10, v4);
      type metadata accessor for Range<Date>(0);
      return (*(v5 + 16))(v19, a1 + *(v17 + 36), v4);
    }

    else
    {
      TimeDataSource<A>.DateRangeStorage.logFault()();
      static Date.distantFuture.getter();
      return (*(v5 + 8))(v10, v4);
    }
  }
}

uint64_t TimeDataSource<A>.DateRangeStorage.logFault()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v1, &v18 - v7, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  LODWORD(v1) = swift_getEnumCaseMultiPayload();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v8, v9);
  if (v1 == 1)
  {
    v10 = 0x756F427265707075;
  }

  else
  {
    v10 = 0x756F427265776F6CLL;
  }

  if (one-time initialization token for unlocatedIssuesLog != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, static Log.unlocatedIssuesLog);
  swift_beginAccess();
  (*(v3 + 16))(v5, v11, v2);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315138;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, 0xEA0000000000646ELL, &v18);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_18D018000, v12, v13, "Misconfigured Text(_:format:). The TimeDataSource is expecting the %s to remain fixed, but the DiscreteFormatStyle was trying to move it. The Text will not update.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x193AC4820](v15, -1, -1);
    MEMORY[0x193AC4820](v14, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t TimeDataSource<A>.DateRangeStorage.round(_:_:toMultipleOf:)@<X0>(char *a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v86 = a2;
  v84 = a3;
  type metadata accessor for (lower: Date, upper: Date)(0);
  v83 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v74 - v8;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v87 = *(v9 - 8);
  v88 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v74 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v78 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v74 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v77 = &v74 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v79 = &v74 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v74 - v31;
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v74 - v34;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v85, &v74 - v34, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = v19;
  v38 = *(v19 + 32);
  if (EnumCaseMultiPayload != 1)
  {
    v49 = v32;
    v38(v32, v35, v18);
    type metadata accessor for Range<Date>(0);
    v85 = (v50 + 36);
    Date.timeIntervalSince(_:)();
    v89 = v51;
    if (a4 == 1.0)
    {
      v52 = v87;
      v53 = v88;
      (*(v87 + 16))(v17, v86, v88);
      v54 = (*(v52 + 88))(v17, v53);
      v46 = v37;
      v48 = v79;
      if (v54 != *MEMORY[0x1E69E7038] && v54 != *MEMORY[0x1E69E7030] && v54 != *MEMORY[0x1E69E7040] && v54 != *MEMORY[0x1E69E7048] && v54 != *MEMORY[0x1E69E7020] && v54 != *MEMORY[0x1E69E7028])
      {
        Double._roundSlowPath(_:)();
        (*(v87 + 8))(v17, v88);
      }
    }

    else
    {
      v60 = v51 / a4;
      v89 = v51 / a4;
      v61 = v87;
      v62 = v74;
      v63 = v88;
      (*(v87 + 16))(v74, v86, v88);
      v64 = (*(v61 + 88))(v62, v63);
      v46 = v37;
      v48 = v79;
      if (v64 != *MEMORY[0x1E69E7038])
      {
        v47 = v49;
        if (v64 != *MEMORY[0x1E69E7030] && v64 != *MEMORY[0x1E69E7040] && v64 != *MEMORY[0x1E69E7048] && v64 != *MEMORY[0x1E69E7020])
        {
          if (v64 == *MEMORY[0x1E69E7028])
          {
            if ((*&v60 & 0x8000000000000000) != 0)
            {
              v89 = floor(v60);
            }
          }

          else
          {
            Double._roundSlowPath(_:)();
            (*(v87 + 8))(v74, v88);
          }
        }

        goto LABEL_57;
      }
    }

    v47 = v49;
LABEL_57:
    v65 = v77;
    static Date.+ infix(_:_:)();
    _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969548]);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      v38(v48, v65, v18);
    }

    else
    {
      (*(v46 + 8))(v65, v18);
      (*(v46 + 16))(v48, v47, v18);
    }

    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      goto LABEL_67;
    }

    __break(1u);
    goto LABEL_62;
  }

  v39 = v25;
  v38(v25, v35, v18);
  type metadata accessor for Range<Date>(0);
  v85 = (v40 + 36);
  Date.timeIntervalSince(_:)();
  v89 = v41;
  if (a4 == 1.0)
  {
    v42 = v87;
    v43 = v76;
    v44 = v88;
    (*(v87 + 16))(v76, v86, v88);
    v45 = (*(v42 + 88))(v43, v44);
    v46 = v37;
    v47 = v80;
    if (v45 == *MEMORY[0x1E69E7038])
    {
      v48 = v39;
    }

    else
    {
      v48 = v39;
      if (v45 != *MEMORY[0x1E69E7030] && v45 != *MEMORY[0x1E69E7040] && v45 != *MEMORY[0x1E69E7048] && v45 != *MEMORY[0x1E69E7020] && v45 != *MEMORY[0x1E69E7028])
      {
        Double._roundSlowPath(_:)();
        (*(v87 + 8))(v76, v88);
      }
    }

    goto LABEL_63;
  }

  v55 = v41 / a4;
  v89 = v41 / a4;
  v56 = v87;
  v57 = v75;
  v58 = v88;
  (*(v87 + 16))(v75, v86, v88);
  v59 = (*(v56 + 88))(v57, v58);
  v46 = v37;
  v47 = v80;
  if (v59 == *MEMORY[0x1E69E7038])
  {
    v48 = v39;
    goto LABEL_63;
  }

  v48 = v39;
  if (v59 == *MEMORY[0x1E69E7030] || v59 == *MEMORY[0x1E69E7040] || v59 == *MEMORY[0x1E69E7048] || v59 == *MEMORY[0x1E69E7020])
  {
    goto LABEL_63;
  }

  if (v59 != *MEMORY[0x1E69E7028])
  {
LABEL_62:
    Double._roundSlowPath(_:)();
    (*(v87 + 8))(v75, v88);
    goto LABEL_63;
  }

  if ((*&v55 & 0x8000000000000000) != 0)
  {
    v89 = floor(v55);
  }

LABEL_63:
  v66 = v78;
  static Date.+ infix(_:_:)();
  _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969548]);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v38(v47, v66, v18);
  }

  else
  {
    (*(v46 + 8))(v66, v18);
    (*(v46 + 16))(v47, v48, v18);
  }

  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
LABEL_67:
    v68 = v81;
    v38(v81, v47, v18);
    v69 = v83;
    v38((v68 + *(v83 + 48)), v48, v18);
    v70 = v82;
    _s7SwiftUI17EnvironmentValuesVAAE21CapitalizationContextOWOcTm_0(v68, v82, type metadata accessor for (lower: Date, upper: Date));
    v71 = *(v69 + 48);
    v72 = v84;
    v38(v84, v70, v18);
    v73 = *(v46 + 8);
    v73(v70 + v71, v18);
    _s10Foundation4DateVSgWObTm_0(v68, v70, type metadata accessor for (lower: Date, upper: Date));
    v38(&v72[*v85], (v70 + *(v69 + 48)), v18);
    return (v73)(v70, v18);
  }

  __break(1u);
  return result;
}

BOOL TimeDataSource<A>.DateRangeStorage.convergesToZero(_:)()
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - v2;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v0, &v7 - v2, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  v4 = swift_getEnumCaseMultiPayload() == 1;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(v3, v5);
  return v4;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance TimeDataSource<A><A>.DateRangeStorage.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance TimeDataSource<A><A>.DateRangeStorage.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x800000018DD803C0 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018DD803E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataSource<A><A>.DateRangeStorage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.CodingKeys);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataSource<A><A>.DateRangeStorage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.CodingKeys);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeEndingAtCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeEndingAtCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void protocol witness for CodingKey.init(stringValue:) in conformance TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeStartingAtCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeStartingAtCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeDataSource<A>.DateRangeStorage.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys>(0);
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys>(0);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Date();
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v28 - v8;
  v35 = type metadata accessor for TimeDataSource<A>.DateRangeStorage;
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  type metadata accessor for KeyedEncodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys>(0);
  v39 = v12;
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.CodingKeys);
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.CodingKeys);
  v42 = v14;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v37, v11, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, v35);
  v15 = v36;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *(v15 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v18 = v40;
    v17(v38, v11, v40);
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeEndingAtCodingKeys);
    v44 = 1;
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeEndingAtCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys);
    v19 = v32;
    v20 = v39;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969538]);
    v21 = v34;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v18;
    (*(v33 + 8))(v19, v21);
    v23 = v38;
  }

  else
  {
    v23 = v28;
    v24 = v40;
    v17(v28, v11, v40);
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeStartingAtCodingKeys);
    v43 = 0;
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeStartingAtCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys);
    v25 = v29;
    v20 = v39;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969538]);
    v26 = v31;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v24;
    (*(v30 + 8))(v25, v26);
  }

  (*(v15 + 8))(v23, v22);
  return (*(v41 + 8))(v42, v20);
}

uint64_t TimeDataSource<A>.DateRangeStorage.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v1, &v11 - v7, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  v9 = swift_getEnumCaseMultiPayload() == 1;
  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x193AC11A0](v9);
  _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969540]);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int TimeDataSource<A>.DateRangeStorage.hashValue.getter()
{
  Hasher.init(_seed:)();
  TimeDataSource<A>.DateRangeStorage.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t TimeDataSource<A>.DateRangeStorage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  type metadata accessor for KeyedDecodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys>(0);
  v41 = v3;
  v44 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedDecodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys>(0);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedDecodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys>(0);
  v46 = v7;
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.CodingKeys);
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.CodingKeys);
  v19 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v50 = v14;
    v20 = v47;
    v38 = v17;
    v21 = v49;
    v22 = v45;
    v23 = v46;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v52 = v24;
    v53 = v24 + 32;
    v54 = 0;
    v55 = v25;
    v26 = specialized Collection<>.popFirst()();
    if (v26 == 2 || v54 != v55 >> 1)
    {
      v30 = type metadata accessor for DecodingError();
      swift_allocError();
      v32 = v31;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v32 = v21;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v48 + 8))(v9, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v26)
      {
        _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeEndingAtCodingKeys);
        v56 = 1;
        lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeEndingAtCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys);
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for Date();
        _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969558]);
        v27 = v40;
        v28 = v41;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v29 = v48;
        (*(v44 + 8))(v20, v28);
        (*(v29 + 8))(v9, v23);
      }

      else
      {
        _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeStartingAtCodingKeys);
        v56 = 0;
        lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeStartingAtCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys);
        v34 = v22;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for Date();
        _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969558]);
        v27 = v50;
        v35 = v43;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v36 = v48;
        (*(v42 + 8))(v34, v35);
        (*(v36 + 8))(v9, v23);
      }

      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v37 = v38;
      outlined init with take of TimeDataSource<Date><A>.DateStorage(v27, v38, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
      outlined init with take of TimeDataSource<Date><A>.DateStorage(v37, v39, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v51);
}

BOOL protocol witness for TimeDataSourceStorage.convergesToZero(_:) in conformance TimeDataSource<A><A>.DateRangeStorage(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v5, v4, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  v6 = swift_getEnumCaseMultiPayload() == 1;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v4, v7);
  return v6;
}

uint64_t protocol witness for TimeDataSourceStorage.end.getter in conformance TimeDataSource<A><A>.DateRangeStorage@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Range<Date>(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TimeDataSource<A><A>.DateRangeStorage()
{
  Hasher.init(_seed:)();
  TimeDataSource<A>.DateRangeStorage.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeDataSource<A><A>.DateRangeStorage(uint64_t a1)
{
  Hasher.init(_seed:)();
  TimeDataSource<A>.DateRangeStorage.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t static TimeDataSource.durationOffset(to:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationBox, type metadata accessor for TimeDataSource<A>.DurationBox);
  v8 = swift_allocObject();
  result = outlined init with take of TimeDataSource<Date><A>.DateStorage(v6, v8 + direct field offset for TimeDataSource<A>.DurationBox.storage, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage);
  *a2 = v8;
  return result;
}

uint64_t static TimeDataSource.dateRange(startingAt:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  return static TimeDataSource.dateRange(startingAt:)(a1, a3);
}

{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeBox, type metadata accessor for TimeDataSource<A>.DateRangeBox);
  v9 = swift_allocObject();
  result = outlined init with take of TimeDataSource<Date><A>.DateStorage(v7, v9 + direct field offset for TimeDataSource<A>.DateRangeBox.storage, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  *a3 = v9;
  return result;
}

double TimeDataSource.offset(by:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v9 = *v5;
  type metadata accessor for TimeDataSource.OffsetBox(0, *(a3 + 16), a3, a5);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  *a4 = v10;

  return result;
}

void *TimeDataSource.OffsetBox.__allocating_init(base:offset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

double TimeDataSource.OffsetBox.resolve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(*v4 + 104);
  v15 = *(v4 + 24);
  v10 = *(*v8 + 88);
  v11 = type metadata accessor for TimeDataSource.Resolver(0, v9, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TimeDataSource<A>.Resolver, v11, v15);
  v10(&v16, &v15, v11, v13, WitnessTable);
  (*(*v16 + 88))(a1, a2, a3);

  return result;
}

uint64_t TimeDataSource.OffsetBox.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TimeDataSource.Resolver.resolve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TimeDataSource.OffsetStorage(0, v15, v16, v17);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - v20;
  type metadata accessor for TimeDataSource.Resolver.ResolvedOffsetBox(0, a4, a5, a6);
  (*(v12 + 16))(v14, a1, a5);
  (*(v12 + 32))(v21, v14, a5);
  v22 = &v21[*(v19 + 52)];
  *v22 = a2;
  *(v22 + 1) = a3;
  swift_allocObject();
  return TimeDataSource.Resolver.ResolvedOffsetBox.init(storage:)(v21, v23);
}

uint64_t TimeDataSource.Resolver.ResolvedOffsetBox.init(storage:)(uint64_t a1, double a2)
{
  v4 = *(*v2 + 128);
  v5 = type metadata accessor for TimeDataSource.OffsetStorage(0, *(*v2 + 104), *(*v2 + 112), *(*v2 + 120));
  (*(*(v5 - 8) + 32))(v2 + v4, a1, v5);
  return v2;
}

uint64_t TimeDataSource.Resolver.ResolvedOffsetBox.resolve<A>(_:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*v4 + 128);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for TimeDataSource.OffsetStorage(0, *(*v4 + 104), *(*v4 + 112), *(*v4 + 120));
  WitnessTable = swift_getWitnessTable("P", v9);
  return v8(v4 + v7, v9, v11, a3, a4, WitnessTable);
}

uint64_t TimeDataSource.Resolver.ResolvedOffsetBox.__ivar_destroyer(double a1)
{
  v2 = *(*v1 + 128);
  v3 = type metadata accessor for TimeDataSource.OffsetStorage(0, *(*v1 + 104), *(*v1 + 112), *(*v1 + 120));
  v4 = *(*(v3 - 8) + 8);

  return v4(v1 + v2, v3);
}

uint64_t TimeDataSource.Resolver.ResolvedOffsetBox.deinit(double a1)
{
  v2 = *(*v1 + 128);
  v3 = type metadata accessor for TimeDataSource.OffsetStorage(0, *(*v1 + 104), *(*v1 + 112), *(*v1 + 120));
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t protocol witness for TimeDataSourceResolver.resolve<A>(_:) in conformance TimeDataSource<A>.Resolver@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = TimeDataSource.Resolver.resolve<A>(_:)(a1, *v5, v5[1], *(a4 + 16), a2, a3);
  *a5 = result;
  return result;
}

uint64_t TimeDataSource.OffsetStorage.value(for:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Duration.components.getter();
  static Date.+ infix(_:_:)();
  (*(*(a2 + 32) + 40))(v6, *(a2 + 24));
  return (*(v4 + 8))(v6, v3);
}

uint64_t TimeDataSource.OffsetStorage.date(for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 + 32) + 48))(a1, *(a2 + 24), v6);
  Duration.components.getter();
  static Date.- infix(_:_:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t TimeDataSource.OffsetStorage.round(_:_:toMultipleOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v21 = a4;
  v22 = a2;
  v20 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 24);
  v11 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v19 - v16;
  (*(v11 + 48))(v20, v12, v11, v15);
  TimeDataSource.OffsetStorage.value(for:)(v10, a3);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 56))(v17, v22, v12, v11, a5);
  return (*(v14 + 8))(v17, AssociatedTypeWitness);
}

uint64_t TimeDataSource.OffsetStorage.convergesToZero(_:)(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v15 - v12;
  (*(v7 + 48))(v16, v8, v7, v11);
  TimeDataSource.OffsetStorage.value(for:)(v6, a2);
  (*(v4 + 8))(v6, v3);
  LOBYTE(v3) = (*(v7 + 64))(v13, v8, v7);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  return v3 & 1;
}

uint64_t static TimeDataSource.OffsetStorage.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TimeDataSource.OffsetStorage(0, a3, a4, a5);

  return static Duration.== infix(_:_:)();
}

uint64_t TimeDataSource.OffsetStorage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
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
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t TimeDataSource.OffsetStorage.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimeDataSource<A>.OffsetStorage<A1>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TimeDataSource.OffsetStorage.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataSource<A>.OffsetStorage<A1>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for TimeDataSource<A>.OffsetStorage<A1>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataSource<A>.OffsetStorage<A1>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for TimeDataSource<A>.OffsetStorage<A1>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeDataSource.OffsetStorage.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v15 = *(a2 + 24);
  v14[0] = v5;
  v6 = type metadata accessor for TimeDataSource.OffsetStorage.CodingKeys(255, v4, v15, v5);
  swift_getWitnessTable(protocol conformance descriptor for TimeDataSource<A>.OffsetStorage<A1>.CodingKeys, v6, v14[0]);
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v14[1];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  v12 = v16;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    v17 = *(v11 + *(a2 + 44));
    v18 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t TimeDataSource.OffsetStorage.hash(into:)(uint64_t a1, uint64_t a2)
{
  dispatch thunk of Hashable.hash(into:)();

  return Duration.hash(into:)();
}

uint64_t TimeDataSource.OffsetStorage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v31 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TimeDataSource.OffsetStorage.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable(protocol conformance descriptor for TimeDataSource<A>.OffsetStorage<A1>.CodingKeys, v13);
  v34 = type metadata accessor for KeyedDecodingContainer();
  v30 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v26 - v14;
  v32 = a4;
  v16 = type metadata accessor for TimeDataSource.OffsetStorage(0, a2, a3, a4);
  v28 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = a1;
  v27 = v16;
  v20 = v30;
  v21 = v31;
  LOBYTE(v36) = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v18;
  (*(v21 + 32))(v18, v33, a3);
  v37 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 8))(v15, v34);
  v24 = v27;
  v23 = v28;
  *&v22[*(v27 + 44)] = v36;
  (*(v23 + 16))(v29, v22, v24);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return (*(v23 + 8))(v22, v24);
}

uint64_t ModifiedTimeDataSourceStorage.value(for:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2[4] + 40))(a1, a2[2], v6);
  (*(a2[5] + 40))(v8, a2[3]);
  return (*(v5 + 8))(v8, v4);
}

uint64_t ModifiedTimeDataSourceStorage.date(for:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2[5] + 48))(a1, a2[3], v6);
  (*(a2[4] + 48))(v8, a2[2]);
  return (*(v5 + 8))(v8, v4);
}

BOOL ModifiedTimeDataSourceStorage.convergesToZero(_:)(uint64_t a1, void *a2)
{
  v14 = type metadata accessor for Date();
  v4 = *(v14 - 8);
  v5 = MEMORY[0x1EEE9AC00](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[5];
  v9 = a2[3];
  v10 = (*(v8 + 64))(a1, v9, v8, v5);
  (*(v8 + 48))(a1, v9, v8);
  v11 = (*(a2[4] + 64))(v7, a2[2]);
  (*(v4 + 8))(v7, v14);
  return ((v10 ^ v11) & 1) == 0;
}

uint64_t ModifiedTimeDataSourceStorage.end.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = *(a1 + 40);
  v70 = a2;
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v63 = &v55 - v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v67 = v6;
  v68 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v55 - v10;
  type metadata accessor for Date?(255);
  v11 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = TupleTypeMetadata2 - 8;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v55 - v14;
  v16 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a1 + 32) + 72))(*(a1 + 16), v23);
  v26 = *(v69 + 72);
  v64 = *(a1 + 52);
  v66 = v3;
  v27 = v3;
  v28 = v69;
  v29 = v67;
  v26(v27, v69);
  v30 = *(v13 + 56);
  _s10Foundation4DateVSgWObTm_0(v25, v15, type metadata accessor for Date?);
  v31 = *(v16 + 32);
  v32 = v21;
  v33 = v71;
  v62 = v11;
  v60 = v16 + 32;
  v58 = v31;
  v31(&v15[v30], v32, v11);
  v34 = v68;
  v35 = (*(v68 + 48))(v15, 1, v29);
  v36 = (*(v33 + 48))(&v15[v30], 1, AssociatedTypeWitness);
  if (v35 == 1)
  {
    if (v36 == 1)
    {
      return (*(v33 + 56))(v70, 1, 1, AssociatedTypeWitness);
    }

    v40 = v70;
    (*(v33 + 32))(v70, &v15[v30], AssociatedTypeWitness);
    return (*(v33 + 56))(v40, 0, 1, AssociatedTypeWitness);
  }

  v38 = *(v34 + 32);
  if (v36 == 1)
  {
    v39 = v65;
    v38(v65, v15, v29);
    v40 = v70;
    (*(v28 + 40))(v39, v66, v28);
    (*(v34 + 8))(v39, v29);
    return (*(v33 + 56))(v40, 0, 1, AssociatedTypeWitness);
  }

  v41 = v61;
  v38(v61, v15, v29);
  v42 = &v15[v30];
  v43 = v63;
  v56 = *(v33 + 32);
  v56(v63, v42, AssociatedTypeWitness);
  v44 = *(v28 + 48);
  v45 = v65;
  v57 = AssociatedTypeWitness;
  v46 = v66;
  v44(v43, v66, v28);
  v47 = static Date.< infix(_:_:)();
  v48 = *(v34 + 8);
  v48(v45, v29);
  if (v47)
  {
    v49 = v59;
    (*(v28 + 40))(v41, v46, v28);
    v50 = v71;
    v51 = v57;
    (*(v71 + 8))(v43, v57);
    v48(v41, v29);
    v52 = v50;
    v53 = v51;
  }

  else
  {
    v48(v41, v29);
    v49 = v59;
    v54 = v57;
    v56(v59, v43, v57);
    v52 = v71;
    v53 = v54;
  }

  (*(v52 + 56))(v49, 0, 1, v53);
  return v58(v70, v49, v62);
}

uint64_t static ModifiedTimeDataSourceStorage.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for ModifiedTimeDataSourceStorage(0, v12);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t ModifiedTimeDataSourceStorage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265696669646F6DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t ModifiedTimeDataSourceStorage.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7265696669646F6DLL;
  }

  else
  {
    return 1702060386;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ModifiedTimeDataSourceStorage<A, B>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Pair.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModifiedTimeDataSourceStorage<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ModifiedTimeDataSourceStorage.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ModifiedTimeDataSourceStorage<A, B>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static _AttributeBody.comparisonMode.getter in conformance ResetDeltaModifier.ChildPhase();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModifiedTimeDataSourceStorage<A, B>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ModifiedTimeDataSourceStorage<A, B>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModifiedTimeDataSourceStorage<A, B>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ModifiedTimeDataSourceStorage<A, B>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModifiedTimeDataSourceStorage.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v14 = a2[2];
  v15[0] = v14;
  v5 = a2[4];
  v4 = a2[5];
  v13[2] = v3;
  v13[3] = v5;
  v15[1] = v3;
  v15[2] = v5;
  v13[1] = v4;
  v15[3] = v4;
  v6 = type metadata accessor for ModifiedTimeDataSourceStorage.CodingKeys(255, v15);
  swift_getWitnessTable(protocol conformance descriptor for ModifiedTimeDataSourceStorage<A, B>.CodingKeys, v6);
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15[0]) = 0;
  v11 = v15[5];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    LOBYTE(v15[0]) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

Swift::Int TimeDataSource.OffsetStorage.hashValue.getter(uint64_t a1, void (*a2)(void *, uint64_t))
{
  Hasher.init(_seed:)();
  a2(v5, a1);
  return Hasher._finalize()();
}

uint64_t ModifiedTimeDataSourceStorage.init(base:modifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ModifiedTimeDataSourceStorage(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t ModifiedTimeDataSourceStorage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  v42 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v15;
  v53 = v16;
  v54 = v17;
  v55 = v18;
  v19 = type metadata accessor for ModifiedTimeDataSourceStorage.CodingKeys(255, &v52);
  swift_getWitnessTable(protocol conformance descriptor for ModifiedTimeDataSourceStorage<A, B>.CodingKeys, v19);
  v51 = type metadata accessor for KeyedDecodingContainer();
  v44 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v21 = &v38 - v20;
  v47 = a2;
  v48 = a5;
  v52 = a2;
  v53 = a3;
  v49 = a4;
  v54 = a4;
  v55 = a5;
  v22 = type metadata accessor for ModifiedTimeDataSourceStorage(0, &v52);
  v41 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v24;
  v39 = v22;
  v40 = a3;
  v27 = v44;
  v28 = v45;
  v56 = a1;
  v29 = v46;
  v30 = v47;
  LOBYTE(v52) = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = *(v28 + 32);
  v49 = v26;
  v31(v26, v50, v30);
  LOBYTE(v52) = 1;
  v32 = v29;
  v33 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v27 + 8))(v21, v51);
  v34 = v39;
  v35 = v49;
  (*(v42 + 32))(&v49[*(v39 + 52)], v32, v33);
  v36 = v41;
  (*(v41 + 16))(v43, v35, v34);
  __swift_destroy_boxed_opaque_existential_1(v56);
  return (*(v36 + 8))(v35, v34);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeDataSource<A>.OffsetStorage<A1>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v7, a2);
  return Hasher._finalize()();
}

uint64_t Text.init<A, B>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return Text.init<A, B>(_:format:)(a1, a2, a3, a4);
}

{
  return Text.init<A, B>(_:format:)(a1, a2, a3, a4);
}

uint64_t TimeDataSource.BoxBase.textStorage<A>(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = *(v8 + 80);
  v21[1] = v9;
  v21[2] = v10;
  v21[3] = v11;
  v12 = type metadata accessor for AnyTextStorageContainer(0, v21);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - v15;
  (*(v5 + 16))(v7, a1, a2, v14);
  (*(v5 + 32))(v16, v7, a2);
  v17 = *(*v2 + 88);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnyTextStorageContainer<A, B>, v12);
  v17(v21, v16, v12, v19, WitnessTable);
  (*(v13 + 8))(v16, v12);
  return v21[0];
}

uint64_t Text.init<A, B>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized Text.init<A, B>(_:format:)(a1, a2, a3, a4);
  (*(*(a4 - 8) + 8))(a2, a4);
  return v6;
}

double LocalizedStringKey.StringInterpolation.appendInterpolation<A, B>(_:format:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return LocalizedStringKey.StringInterpolation.appendInterpolation<A, B>(_:format:)(a1, a2, a3, a4);
}

{
  return LocalizedStringKey.StringInterpolation.appendInterpolation<A, B>(_:format:)(a1, a2, a3, a4);
}

double LocalizedStringKey.StringInterpolation.appendInterpolation<A, B>(_:format:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = TimeDataSource.BoxBase.textStorage<A>(for:)(a2, a4);

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v6, 0, 1, MEMORY[0x1E69E7CC0]);
  outlined consume of Text.Storage(v6, 0, 1);

  return result;
}

uint64_t *AnyTextStorageContainer.resolve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = v15;
  v20[1] = v6;
  v20[2] = v16;
  v21 = *(v17 + 32);
  type metadata accessor for TimeDataFormattingStorage(0, v20);
  (*(v11 + 16))(v14, a1, a3);
  (*(v7 + 16))(v9, v3, v6);
  swift_allocObject();
  return TimeDataFormattingStorage.init(source:format:reducedLuminanceBudget:)(v14, v9, 0, 1);
}

uint64_t *protocol witness for TimeDataSourceResolver.resolve<A>(_:) in conformance AnyTextStorageContainer<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t **a4@<X8>)
{
  result = AnyTextStorageContainer.resolve<A>(_:)(a1, a3, a2);
  *a4 = result;
  return result;
}

uint64_t *TimeDataFormattingStorage.init(source:format:reducedLuminanceBudget:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  (*(*(*(*v4 + 136) - 8) + 32))(v4 + *(*v4 + 176), a1);
  (*(*(*(v8 + 144) - 8) + 32))(v4 + *(*v4 + 184), a2);
  v9 = v4 + *(*v4 + 192);
  *v9 = a3;
  *(v9 + 8) = a4 & 1;
  return v4;
}

uint64_t TimeDataFormattingStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v47 = a3;
  v58 = a1;
  v55 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 + 144) - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v14 = *(*(v13 + 136) - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v19 = v18[19];
  v20 = v18[20];
  v21 = v18[21];
  v23 = v22;
  v61 = v22;
  v62 = v24;
  v25 = v24;
  v56 = v27;
  v57 = v26;
  v63 = v26;
  v64 = v19;
  v50 = v20;
  v51 = v19;
  v65 = v20;
  v66 = v27;
  v49 = v21;
  v67 = v21;
  v28 = type metadata accessor for TimeDataFormattingStorage.Resolver(0, &v61);
  v53 = *(v28 - 8);
  v54 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v52 = &v45 - v29;
  v31 = *a2;
  v30 = a2[1];
  v46 = *v47;
  if (v30)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt1g5(v31, &v60);

    v47 = v30;
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2g5(v31, &v60);
    v47 = 0;
  }

  v32 = v60;
  (*(v14 + 16))(v17, v5 + *(*v5 + 176), v23);
  (*(v9 + 16))(v12, v5 + *(*v5 + 184), v25);
  v33 = v5 + *(*v5 + 192);
  v45 = *v33;
  v34 = *(v33 + 8);
  v61 = v31;
  v62 = v30;
  v59 = v46;
  v35 = v48;
  v36 = v57;
  (*(v55 + 32))(v48, v58, v57);
  *(&v44 + 1) = v50;
  *&v44 = v51;
  v43 = v25;
  v37 = v52;
  TimeDataFormattingStorage.Resolver.init(source:format:reducedLuminanceBudget:environment:options:result:)(v17, v12, v45, v34, &v61, &v59, v35, v23, v52, v43, v36, v44, v56, v49);
  v38 = *(*v32 + 88);

  v39 = v54;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TimeDataFormattingStorage<A, B>.Resolver<A1>, v54);
  v38(v37, v39, v41, WitnessTable);

  return (*(v53 + 8))(v37, v39);
}

uint64_t TimeDataFormattingStorage.Resolver.init(source:format:reducedLuminanceBudget:environment:options:result:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v17 = *a5;
  v18 = a5[1];
  v19 = *a6;
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v27[0] = a8;
  v27[1] = a10;
  v27[2] = a11;
  v28 = a12;
  v29 = a13;
  v30 = a14;
  v20 = type metadata accessor for TimeDataFormattingStorage.Resolver(0, v27);
  (*(*(a10 - 8) + 32))(a9 + v20[19], a2, a10);
  v21 = a9 + v20[20];
  *v21 = a3;
  *(v21 + 8) = a4 & 1;
  v22 = (a9 + v20[21]);
  *v22 = v17;
  v22[1] = v18;
  *(a9 + v20[22]) = v19;
  return (*(*(a11 - 8) + 32))(a9 + v20[23], a7, a11);
}

uint64_t TimeDataFormattingStorage.isEqual(to:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*(v2 + 144) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    (*(v4 + 16))(v6, v7 + *(*v7 + 184), v3);

    v8 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v4 + 8))(v6, v3);
    if (v8)
    {
      v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t TimeDataFormattingStorage.__ivar_destroyer()
{
  v1 = *v0;
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 176));
  v2 = *(*(*(v1 + 144) - 8) + 8);
  v3 = v0 + *(*v0 + 184);

  return v2(v3);
}

uint64_t *TimeDataFormattingStorage.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 176));
  (*(*(*(v1 + 144) - 8) + 8))(v0 + *(*v0 + 184));
  return v0;
}

uint64_t TimeDataSource.Resolver.ResolvedOffsetBox.__deallocating_deinit(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t TimeDataFormattingStorage.Resolver.resolve<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a1;
  v82 = a5;
  v8 = *(a2 + 32);
  v76 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v69 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v14 + 40);
  v84 = v17;
  v85 = v15;
  v86 = v18;
  v87 = v16;
  v66 = v16;
  v19 = type metadata accessor for ModifiedTimeDataSourceStorage(255, &v84);
  swift_getWitnessTable(protocol conformance descriptor for ModifiedTimeDataSourceStorage<A, B>, v19);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a2 + 64);
  v84 = v19;
  v85 = v11;
  v77 = v11;
  v79 = v8;
  v86 = v8;
  v87 = v23;
  v71 = v20;
  v72 = v23;
  v88 = v20;
  v89 = v21;
  v68 = v21;
  v67 = v22;
  v90 = v22;
  v24 = type metadata accessor for TimeDataFormattingStorage.Resolver(0, &v84);
  v74 = *(v24 - 8);
  v75 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v70 = &v62 - v25;
  v64 = v15;
  v62 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = swift_checkMetadataState();
  v33 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v62 - v36;
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  v87 = v38;
  v39 = __swift_allocate_boxed_opaque_existential_1(&v84);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  v41 = a4;
  v42 = *(a4 + 24);
  v43 = v80;
  LOBYTE(v39) = areEqual<A>(_:_:)(v80, &v84, a3, *(v42 + 8));
  __swift_destroy_boxed_opaque_existential_1(&v84);
  if (v39)
  {
    return TimeDataFormattingStorage.Resolver.resolve()(a2, v82);
  }

  (*(v29 + 16))(v32, v43, a3);
  v45 = v81;
  v46 = v64;
  (*(v62 + 16))(v28, v81, v64);
  ModifiedTimeDataSourceStorage.init(base:modifier:)(v32, v28, a3, v46, v41, v66, v37);
  v47 = v63;
  v48 = v65;
  (*(v33 + 16))(v63, v37, v65);
  v49 = v73;
  v50 = v77;
  (*(v69 + 16))(v73, v45 + *(a2 + 76), v77);
  v51 = *(a2 + 84);
  v52 = v45 + *(a2 + 80);
  v80 = *v52;
  LODWORD(v69) = *(v52 + 8);
  v53 = *(v45 + v51 + 8);
  v84 = *(v45 + v51);
  v85 = v53;
  v54 = *(a2 + 92);
  v83 = *(v45 + *(a2 + 88));
  v55 = v45 + v54;
  v57 = v78;
  v56 = v79;
  (*(v76 + 16))(v78, v55, v79);
  *(&v61 + 1) = v71;
  v60 = v56;
  *&v61 = v72;
  v58 = v70;
  TimeDataFormattingStorage.Resolver.init(source:format:reducedLuminanceBudget:environment:options:result:)(v47, v49, v80, v69, &v84, &v83, v57, v48, v70, v50, v60, v61, v68, v67);

  v59 = v75;
  TimeDataFormattingStorage.Resolver.resolve()(v75, v82);
  (*(v74 + 8))(v58, v59);
  return (*(v33 + 8))(v37, v48);
}

uint64_t TimeDataFormattingStorage.Resolver.resolve()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = *(*(a1 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v143 = v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v8 = *(v6 + 40);
  v9 = *(v6 + 64);
  v144 = v10;
  *&v11 = v10;
  *(&v11 + 1) = v7;
  v140 = v8;
  v157 = v11;
  v158 = v8;
  v133 = v9;
  v159 = v9;
  v136 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v157);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = v117 - v12;
  v119 = type metadata accessor for EnvironmentValues.CapitalizationContext(0);
  MEMORY[0x1EEE9AC00](v119);
  v121 = (v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v120 = v117 - v15;
  v124 = type metadata accessor for FormatStyleCapitalizationContext();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v128 = v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v122 = v117 - v18;
  v137 = type metadata accessor for TimeZone();
  v129 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v125 = (v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = type metadata accessor for Calendar();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v21 = v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Locale();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v141 = v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v130 = v117 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v127 = v117 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v126 = v117 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v118 = v117 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v117 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v117 - v40;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v147 = v117 - v44;
  v45 = *(a1 + 32);
  v46 = *(*(v45 - 8) + 16);
  v47 = v2 + *(a1 + 92);
  v145 = a2;
  v142 = v45;
  v46(a2, v47, v43);
  v150 = v2;
  v151 = a1;
  v48 = v2 + *(a1 + 84);
  v49 = *v48;
  v50 = *(v48 + 8);
  v138 = v48;
  v146 = v49;
  if (v50)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v49, v25);
  }

  else
  {
    v51 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v49);
    if (v51)
    {
      (*(v23 + 16))(v25, &v51[*(*v51 + 248)], v22);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v52 = __swift_project_value_buffer(v22, static LocaleKey.defaultValue);
      (*(v23 + 16))(v25, v52, v22);
    }
  }

  v131 = *(&v140 + 1);
  dispatch thunk of FormatStyle.locale(_:)();
  (*(v23 + 8))(v25, v22);
  if (v50)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v146, v21);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v146, v21);
  }

  v53 = v147;
  v54 = v139;
  FormatStyle.calendar(_:)(v21, v7, v41);
  v148[1](v21, v149);
  v55 = *(v54 + 1);
  v149 = v54 + 8;
  v148 = v55;
  (v55)(v38, v7);
  if (v50)
  {

    v56 = v125;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v146, v125);
  }

  else
  {
    v56 = v125;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v146, v125);
  }

  v57 = v150;
  FormatStyle.timeZone(_:)(v56, v7, v53);
  (*(v129 + 8))(v56, v137);
  (v148)(v41, v7);
  v58 = *(*(v151 + 56) + 56);
  v129 = *(v151 + 56);
  v58(&v157, v142);
  v137 = v157;
  if (v157)
  {
    v59 = *(&v157 + 1);
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_18DDA6EB0;
    *&v157 = 0;
    *(&v157 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    *&v157 = 0xD000000000000038;
    *(&v157 + 1) = 0x800000018DD80430;
    v61 = StaticString.description.getter();
    MEMORY[0x193ABEDD0](v61);

    MEMORY[0x193ABEDD0](58, 0xE100000000000000);
    *&v154 = 84;
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v62);

    MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
    v64 = *(&v157 + 1);
    v63 = v157;
    *(v60 + 56) = MEMORY[0x1E69E6158];
    *(v60 + 32) = __PAIR128__(v64, v63);
    print(_:separator:terminator:)();
    v54 = v139;

    type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom);
    v137 = v65;
    v59 = &protocol witness table for InterfaceIdiomBox<A>;
  }

  v125 = v59;
  v117[1] = 0;
  if (*(v57 + *(v151 + 80) + 8))
  {
    v66 = *(v54 + 2);
    v67 = (v54 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v66(v118, v53, v7);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for InterfaceIdiomDependentFormatStyle, &protocol descriptor for InterfaceIdiomDependentFormatStyle);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(&v154, &v157);
      v118 = ((v54 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v68 = v66;
      v69 = *(&v158 + 1);
      v70 = v159;
      __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
      AssociatedTypeWitness = v137;
      v153 = v125;
      v71 = *(v70 + 16);
      *(&v155 + 1) = v69;
      v156 = v70;
      __swift_allocate_boxed_opaque_existential_1(&v154);
      v72 = v69;
      v66 = v68;
      v67 = v118;
      v71(&AssociatedTypeWitness, v72, v70);
      (v148)(v53, v7);
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_1(&v157);
    }

    else
    {
      v156 = 0;
      v154 = 0u;
      v155 = 0u;
      outlined destroy of InterfaceIdiomDependentFormatStyle?(&v154, &lazy cache variable for type metadata for InterfaceIdiomDependentFormatStyle?, &lazy cache variable for type metadata for InterfaceIdiomDependentFormatStyle, &protocol descriptor for InterfaceIdiomDependentFormatStyle, type metadata accessor for ScrollStateRequest?);
    }

    v66(v126, v53, v7);
  }

  else
  {
    v66 = *(v54 + 2);
    v67 = (v54 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v66(v126, v53, v7);
  }

  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for TextAlignmentDependentFormatStyle, &protocol descriptor for TextAlignmentDependentFormatStyle);
  v73 = swift_dynamicCast();
  v139 = v66;
  if (v73)
  {
    outlined init with take of AnyTrackedValue(&v154, &v157);
    v74 = *(&v158 + 1);
    v75 = v159;
    __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
    v50 = *(v138 + 8);
    v146 = *v138;
    AssociatedTypeWitness = v146;
    v153 = v50;
    v76 = EnvironmentValues.multilineTextAlignment.getter();
    v77 = *(v75 + 16);
    *(&v155 + 1) = v74;
    v156 = v75;
    __swift_allocate_boxed_opaque_existential_1(&v154);
    v78 = v74;
    v66 = v139;
    v77(v76, v78, v75);
    v53 = v147;
    (v148)(v147, v7);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(&v157);
  }

  else
  {
    v156 = 0;
    v154 = 0u;
    v155 = 0u;
    outlined destroy of InterfaceIdiomDependentFormatStyle?(&v154, &lazy cache variable for type metadata for TextAlignmentDependentFormatStyle?, &lazy cache variable for type metadata for TextAlignmentDependentFormatStyle, &protocol descriptor for TextAlignmentDependentFormatStyle, type metadata accessor for ScrollStateRequest?);
  }

  v79 = v128;
  v66(v127, v53, v7);
  v80 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CapitalizationContextDependentFormatStyle, &protocol descriptor for CapitalizationContextDependentFormatStyle);
  if (swift_dynamicCast())
  {
    v118 = v67;
    outlined init with take of AnyTrackedValue(&v154, &v157);
    v81 = *(&v158 + 1);
    v82 = v159;
    v127 = __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
    if (v50)
    {

      v83 = v120;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE0I033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt1g5(v146, v120);
    }

    else
    {
      v85 = v120;
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(v146, v120);
      v83 = v85;
    }

    v86 = v124;
    v87 = v123;
    v88 = v121;
    _s7SwiftUI17EnvironmentValuesVAAE21CapitalizationContextOWOcTm_0(v83, v121, type metadata accessor for EnvironmentValues.CapitalizationContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v84 = v144;
    v128 = v80;
    if (EnumCaseMultiPayload == 1)
    {
      (*v88)();

      outlined destroy of EnvironmentValues.CapitalizationContext(v83);
      v90 = *(v87 + 32);
    }

    else
    {
      outlined destroy of EnvironmentValues.CapitalizationContext(v83);
      v91 = v88;
      v90 = *(v87 + 32);
      v90(v79, v91, v86);
    }

    v92 = v122;
    v90(v122, v79, v86);
    v93 = v86;
    v94 = *(v82 + 16);
    *(&v155 + 1) = v81;
    v156 = v82;
    __swift_allocate_boxed_opaque_existential_1(&v154);
    v94(v92, v81, v82);
    (*(v87 + 8))(v92, v93);
    v53 = v147;
    (v148)(v147, v7);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(&v157);
    v66 = v139;
  }

  else
  {
    v156 = 0;
    v154 = 0u;
    v155 = 0u;
    outlined destroy of InterfaceIdiomDependentFormatStyle?(&v154, &lazy cache variable for type metadata for CapitalizationContextDependentFormatStyle?, &lazy cache variable for type metadata for CapitalizationContextDependentFormatStyle, &protocol descriptor for CapitalizationContextDependentFormatStyle, type metadata accessor for ScrollStateRequest?);
    v84 = v144;
  }

  v66(v130, v53, v7);
  v95 = v140;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  v96 = swift_dynamicCast();
  v97 = v150;
  if (v96)
  {
    outlined init with take of AnyTrackedValue(&v154, &v157);
    v98 = *(&v158 + 1);
    v99 = v159;
    __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
    (*(v99 + 16))(&v154, v97, v84, v95, v98, v99);
    v146 = v154;
    v100 = DWORD2(v154) | (BYTE12(v154) << 32);
    v101 = BYTE13(v154);
    v102 = BYTE14(v154);
    __swift_destroy_boxed_opaque_existential_1(&v157);
  }

  else
  {
    static ContentTransition.numericText(countsDown:)(1, &v157);
    v146 = v157;
    v100 = DWORD2(v157) | (BYTE12(v157) << 32);
    v101 = BYTE13(v157);
    v102 = BYTE14(v157);
  }

  (*(v132 + 16))(v143, v97, v84);
  v139(v141, v53, v7);
  v103 = v97 + *(v151 + 80);
  if (*(v103 + 8))
  {
    type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<ComplicationInterfaceIdiom>, &type metadata for ComplicationInterfaceIdiom, &protocol witness table for ComplicationInterfaceIdiom);
    v104 = v125[2];
    v105 = 0.0;
    if (((v104)() & 1) == 0)
    {
      type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<WidgetInterfaceIdiom>, &type metadata for WidgetInterfaceIdiom, &protocol witness table for WidgetInterfaceIdiom);
      if (((v104)() & 1) == 0)
      {
        type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<WatchInterfaceIdiom>, &type metadata for WatchInterfaceIdiom, &protocol witness table for WatchInterfaceIdiom);
        v104();
      }

      v105 = 60.0;
    }
  }

  else
  {
    v105 = *v103;
  }

  v106 = v144;
  v107 = v131;
  v108 = v133;
  default argument 3 of TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:sizeVariant:)(&v157);
  v109 = v134;
  TimeDataFormatting.Resolvable.init(source:format:secondsUpdateFrequencyBudget:sizeVariant:)(v143, v141, &v157, v106, v7, v95, v107, v108, v134, v105);
  v110 = *(v138 + 8);
  *&v157 = *v138;
  *(&v157 + 1) = v110;
  AssociatedTypeWitness = *(v150 + *(v151 + 88));
  *&v154 = v146;
  BYTE14(v154) = v102 != 0;
  WORD6(v154) = (v100 & 0xFF00000000 | (v101 << 40)) >> 32;
  DWORD2(v154) = v100;
  v111 = v129;
  v112 = *(v129 + 96);

  v113 = v136;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.Resolvable<A, B>, v136);
  v112(v109, &v157, &AssociatedTypeWitness, &v154, v113, v115, v142, v111, WitnessTable);
  outlined consume of ContentTransition?(v154, DWORD2(v154) | ((WORD6(v154) | (BYTE14(v154) << 16)) << 32));

  (*(v135 + 8))(v109, v113);
  return (v148)(v147, v7);
}

uint64_t AttributedString.attributedString.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributedString();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t String.attributedString.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v2 - 8);

  AttributeContainer.init()();
  return AttributedString.init(_:attributes:)();
}

id one-time initialization function for systemFormatStyle()
{
  type metadata accessor for SwiftUICoreClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.systemFormatStyle = result;
  return result;
}

id static NSBundle.systemFormatStyle.getter()
{
  if (one-time initialization token for systemFormatStyle != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.systemFormatStyle;

  return v1;
}

uint64_t specialized static TimeDataSource<A>.DateStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  type metadata accessor for (TimeDataSource<Duration><A>.DurationStorage, TimeDataSource<Duration><A>.DurationStorage)(0, &lazy cache variable for type metadata for (TimeDataSource<Date><A>.DateStorage, TimeDataSource<Date><A>.DateStorage), &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(a1, &v22 - v12, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(a2, &v13[v15], &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  if (v18(v13, 1, v16) != 1)
  {
    outlined init with copy of TimeDataSource<Date><A>.DateStorage(v13, v10, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
    if (v18(&v13[v15], 1, v17) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v19 = static Date.== infix(_:_:)();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      outlined destroy of (pauseDate: Date)(v13, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v18(&v13[v15], 1, v17) != 1)
  {
LABEL_6:
    outlined destroy of InterfaceIdiomDependentFormatStyle?(v13, &lazy cache variable for type metadata for (TimeDataSource<Date><A>.DateStorage, TimeDataSource<Date><A>.DateStorage), &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage, type metadata accessor for (TimeDataSource<Duration><A>.DurationStorage, TimeDataSource<Duration><A>.DurationStorage));
    v19 = 0;
    return v19 & 1;
  }

  outlined destroy of (pauseDate: Date)(v13, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  v19 = 1;
  return v19 & 1;
}

void type metadata accessor for KeyedEncodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityWithPauseCodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys and conformance TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityWithPauseCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys);
    v1 = type metadata accessor for KeyedEncodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys>);
    }
  }
}

void lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), const char *a4)
{
  if (!*a1)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void type metadata accessor for KeyedEncodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityCodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys and conformance TimeDataSource<A><A>.DateStorage.IdentityCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.IdentityCodingKeys);
    v1 = type metadata accessor for KeyedEncodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys>);
    }
  }
}

void type metadata accessor for KeyedEncodingContainer<TimeDataSource<Date><A>.DateStorage.CodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Date><A>.DateStorage.CodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.CodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.CodingKeys and conformance TimeDataSource<A><A>.DateStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.CodingKeys);
    v1 = type metadata accessor for KeyedEncodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Date><A>.DateStorage.CodingKeys>);
    }
  }
}

void type metadata accessor for KeyedDecodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityWithPauseCodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys and conformance TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityWithPauseCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.IdentityWithPauseCodingKeys);
    v1 = type metadata accessor for KeyedDecodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityWithPauseCodingKeys>);
    }
  }
}

void type metadata accessor for KeyedDecodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityCodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys and conformance TimeDataSource<A><A>.DateStorage.IdentityCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.IdentityCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.IdentityCodingKeys);
    v1 = type metadata accessor for KeyedDecodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Date><A>.DateStorage.IdentityCodingKeys>);
    }
  }
}

void type metadata accessor for KeyedDecodingContainer<TimeDataSource<Date><A>.DateStorage.CodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Date><A>.DateStorage.CodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.CodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage.CodingKeys and conformance TimeDataSource<A><A>.DateStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage.CodingKeys);
    v1 = type metadata accessor for KeyedDecodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Date><A>.DateStorage.CodingKeys>);
    }
  }
}

uint64_t outlined init with copy of TimeDataSource<Date><A>.DateStorage(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void))
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for KeyedEncodingContainer<TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.DurationOffsetCodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys and conformance TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.DurationOffsetCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys);
    v1 = type metadata accessor for KeyedEncodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys>);
    }
  }
}

void type metadata accessor for KeyedEncodingContainer<TimeDataSource<Duration><A>.DurationStorage.CodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Duration><A>.DurationStorage.CodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.CodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage.CodingKeys and conformance TimeDataSource<A><A>.DurationStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage.CodingKeys);
    v1 = type metadata accessor for KeyedEncodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Duration><A>.DurationStorage.CodingKeys>);
    }
  }
}

void type metadata accessor for KeyedDecodingContainer<TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.DurationOffsetCodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys and conformance TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.DurationOffsetCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage.DurationOffsetCodingKeys);
    v1 = type metadata accessor for KeyedDecodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Duration><A>.DurationStorage.DurationOffsetCodingKeys>);
    }
  }
}

void type metadata accessor for KeyedDecodingContainer<TimeDataSource<Duration><A>.DurationStorage.CodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Duration><A>.DurationStorage.CodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.CodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage.CodingKeys and conformance TimeDataSource<A><A>.DurationStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DurationStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage.CodingKeys);
    v1 = type metadata accessor for KeyedDecodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Duration><A>.DurationStorage.CodingKeys>);
    }
  }
}

uint64_t outlined init with take of TimeDataSource<Date><A>.DateStorage(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void))
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized static TimeDataSource<A>.DateRangeStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v28 = type metadata accessor for Date();
  v2 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  type metadata accessor for (TimeDataSource<Duration><A>.DurationStorage, TimeDataSource<Duration><A>.DurationStorage)(0, &lazy cache variable for type metadata for (TimeDataSource<Range<Date>><A>.DateRangeStorage, TimeDataSource<Range<Date>><A>.DateRangeStorage), &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v26, &v25 - v15, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v27, &v16[v18], &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of TimeDataSource<Date><A>.DateStorage(v16, v13, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v22 = v28;
      (*(v2 + 32))(v7, &v16[v18], v28);
      v20 = static Date.== infix(_:_:)();
      v23 = *(v2 + 8);
      v23(v7, v22);
      v23(v13, v22);
      goto LABEL_6;
    }

LABEL_8:
    (*(v2 + 8))(v13, v28);
    outlined destroy of InterfaceIdiomDependentFormatStyle?(v16, &lazy cache variable for type metadata for (TimeDataSource<Range<Date>><A>.DateRangeStorage, TimeDataSource<Range<Date>><A>.DateRangeStorage), &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage, type metadata accessor for (TimeDataSource<Duration><A>.DurationStorage, TimeDataSource<Duration><A>.DurationStorage));
    v20 = 0;
    return v20 & 1;
  }

  outlined init with copy of TimeDataSource<Date><A>.DateStorage(v16, v10, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v13 = v10;
    goto LABEL_8;
  }

  v19 = v28;
  (*(v2 + 32))(v4, &v16[v18], v28);
  v20 = static Date.== infix(_:_:)();
  v21 = *(v2 + 8);
  v21(v4, v19);
  v21(v10, v19);
LABEL_6:
  outlined destroy of (pauseDate: Date)(v16, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
  return v20 & 1;
}

void type metadata accessor for KeyedEncodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeEndingAtCodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeEndingAtCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys);
    v1 = type metadata accessor for KeyedEncodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys>);
    }
  }
}

void type metadata accessor for KeyedEncodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeStartingAtCodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeStartingAtCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys);
    v1 = type metadata accessor for KeyedEncodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys>);
    }
  }
}

void type metadata accessor for KeyedEncodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.CodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.CodingKeys);
    v1 = type metadata accessor for KeyedEncodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys>);
    }
  }
}

void type metadata accessor for KeyedDecodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeEndingAtCodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeEndingAtCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.DateRangeEndingAtCodingKeys);
    v1 = type metadata accessor for KeyedDecodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeEndingAtCodingKeys>);
    }
  }
}

void type metadata accessor for KeyedDecodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeStartingAtCodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.DateRangeStartingAtCodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.DateRangeStartingAtCodingKeys);
    v1 = type metadata accessor for KeyedDecodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.DateRangeStartingAtCodingKeys>);
    }
  }
}

void type metadata accessor for KeyedDecodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys>)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.CodingKeys);
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys and conformance TimeDataSource<A><A>.DateRangeStorage.CodingKeys, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys, type metadata accessor for TimeDataSource<A>.DateRangeStorage.CodingKeys, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage.CodingKeys);
    v1 = type metadata accessor for KeyedDecodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataSource<Range<Date>><A>.DateRangeStorage.CodingKeys>);
    }
  }
}

uint64_t *specialized Text.init<A, B>(source:format:reducedLuminanceBudget:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = v19;
  v27[1] = v20;
  v27[2] = v21;
  v27[3] = v22;
  v27[4] = v23;
  type metadata accessor for TimeDataFormattingStorage(0, v27);
  (*(v15 + 16))(v18, a1, a5);
  (*(v11 + 16))(v13, a2, a6);
  swift_allocObject();
  return TimeDataFormattingStorage.init(source:format:reducedLuminanceBudget:)(v18, v13, v26, a4 & 1);
}

uint64_t specialized Text.init<A, B>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = TimeDataSource.BoxBase.textStorage<A>(for:)(a2, a4);

  return v4;
}

void instantiation function for generic protocol witness table for TimeDataSource<A><A>.DateStorage(void *a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage);
  a1[1] = v2;
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage);
  a1[2] = v3;
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage, protocol conformance descriptor for TimeDataSource<A><A>.DateStorage);
  a1[3] = v4;
}

void instantiation function for generic protocol witness table for TimeDataSource<A><A>.DurationStorage(void *a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage and conformance TimeDataSource<A><A>.DurationStorage, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage);
  a1[1] = v2;
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage and conformance TimeDataSource<A><A>.DurationStorage, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage);
  a1[2] = v3;
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Duration><A>.DurationStorage and conformance TimeDataSource<A><A>.DurationStorage, &lazy cache variable for type metadata for TimeDataSource<Duration><A>.DurationStorage, type metadata accessor for TimeDataSource<A>.DurationStorage, protocol conformance descriptor for TimeDataSource<A><A>.DurationStorage);
  a1[3] = v4;
}

void instantiation function for generic protocol witness table for TimeDataSource<A><A>.DateRangeStorage(void *a1)
{
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage and conformance TimeDataSource<A><A>.DateRangeStorage, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage);
  a1[1] = v2;
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage and conformance TimeDataSource<A><A>.DateRangeStorage, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage);
  a1[2] = v3;
  lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage(&lazy protocol witness table cache variable for type TimeDataSource<Range<Date>><A>.DateRangeStorage and conformance TimeDataSource<A><A>.DateRangeStorage, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage, protocol conformance descriptor for TimeDataSource<A><A>.DateRangeStorage);
  a1[3] = v4;
}

void instantiation function for generic protocol witness table for TimeDataSource<A>.OffsetStorage<A1>(void *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, const char *a6)
{
  WitnessTable = swift_getWitnessTable(a4, a2, a3);
  a1[1] = v11;
  v12 = swift_getWitnessTable(a5, a2, WitnessTable);
  a1[2] = v13;
  swift_getWitnessTable(a6, a2, v12);
  a1[3] = v14;
}

uint64_t type metadata completion function for TimeDataSource<A>.DateStorage(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TimeDataSource<A>.DateStorage(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v8 = v7;
  v9 = *(v7 - 8);
  if (!(*(v9 + 48))(a2, 1, v7))
  {
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 16))(a1, a2, v13);
    (*(v9 + 56))(a1, 0, 1, v8);
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for TimeDataSource<A>.DateStorage(uint64_t a1)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = type metadata accessor for Date();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *initializeWithCopy for TimeDataSource<A>.DateStorage(void *a1, const void *a2, uint64_t a3)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 1, v6))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 16))(a1, a2, v11);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }
}

void *assignWithCopy for TimeDataSource<A>.DateStorage(void *a1, void *a2, uint64_t a3)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 1, v6);
  v11 = v9(a2, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = type metadata accessor for Date();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      (*(v8 + 56))(a1, 0, 1, v7);
      return a1;
    }
  }

  else
  {
    if (!v11)
    {
      v15 = type metadata accessor for Date();
      (*(*(v15 - 8) + 24))(a1, a2, v15);
      return a1;
    }

    outlined destroy of (pauseDate: Date)(a1, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

void *initializeWithTake for TimeDataSource<A>.DateStorage(void *a1, const void *a2, uint64_t a3)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 1, v6))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }
}

void *assignWithTake for TimeDataSource<A>.DateStorage(void *a1, void *a2, uint64_t a3)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 1, v6);
  v11 = v9(a2, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = type metadata accessor for Date();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      (*(v8 + 56))(a1, 0, 1, v7);
      return a1;
    }
  }

  else
  {
    if (!v11)
    {
      v15 = type metadata accessor for Date();
      (*(*(v15 - 8) + 40))(a1, a2, v15);
      return a1;
    }

    outlined destroy of (pauseDate: Date)(a1, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t getEnumTag for TimeDataSource<A>.DateStorage(uint64_t a1)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t destructiveInjectEnumTag for TimeDataSource<A>.DateStorage(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t type metadata completion function for TimeDataSource<A>.DurationBox(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t type metadata completion function for TimeDataSource<A>.DurationStorage(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v4 + 84);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TimeDataSource<A>.DurationStorage(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for TimeDataSource<A>.DurationStorage(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (date: Date), MEMORY[0x1E6969530]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t storeEnumTagSinglePayload for TimeDataSource<A>.DurationStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (date: Date), MEMORY[0x1E6969530]);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

void type metadata completion function for TimeDataSource<A>.DateBox(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void))
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t type metadata completion function for TimeDataSource<A>.DateRangeStorage(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TimeDataSource<A>.DateRangeStorage(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    swift_getEnumCaseMultiPayload();
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithCopy for TimeDataSource<A>.DateRangeStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for TimeDataSource<A>.DateRangeStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of (pauseDate: Date)(a1, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
    swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for Date();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for TimeDataSource<A>.DateRangeStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for TimeDataSource<A>.DateRangeStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of (pauseDate: Date)(a1, &lazy cache variable for type metadata for TimeDataSource<Range<Date>><A>.DateRangeStorage, type metadata accessor for TimeDataSource<A>.DateRangeStorage);
    swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for Date();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t type metadata completion function for TimeDataSource.Resolver.ResolvedOffsetBox(uint64_t *a1)
{
  result = type metadata accessor for TimeDataSource.OffsetStorage(319, a1[13], a1[14], a1[15]);
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

uint64_t type metadata completion function for TimeDataSource.OffsetStorage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TimeDataSource.OffsetStorage(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for TimeDataSource.OffsetStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for TimeDataSource.OffsetStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t assignWithTake for TimeDataSource.OffsetStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for TimeDataSource.OffsetStorage(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 24) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for TimeDataSource.OffsetStorage(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t type metadata completion function for TimeDataFormattingStorage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void type metadata accessor for (TimeDataSource<Duration><A>.DurationStorage, TimeDataSource<Duration><A>.DurationStorage)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void))
{
  if (!*a2)
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata completion function for TimeDataFormattingStorage.Resolver(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TimeDataFormattingStorage.Resolver(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v7 = a3[3];
  v6 = a3[4];
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9;
  v11 = *(v8 + 64);
  v12 = *(v6 - 8);
  v13 = *(v12 + 80);
  v14 = v13 | *(v4 + 80) & 0xF8 | v9;
  v15 = ((-9 - (((((v11 + ((v5 + v9) & ~v9) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v13)) | v13) - *(v12 + 64);
  if (v14 <= 7 && ((*(v12 + 80) | *(v8 + 80) | *(v4 + 80)) & 0x100000) == 0 && v15 >= 0xFFFFFFFFFFFFFFE7)
  {
    v19 = ~v9;
    (*(v4 + 16))(a1);
    v21 = (v3 + v10) & v19;
    v22 = (a2 + v10) & v19;
    (*(v8 + 16))(v21, v22, v7);
    v23 = (v21 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v22 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = *v24;
    *(v23 + 8) = *(v24 + 8);
    *v23 = v25;
    v26 = ((v21 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    v27 = ((v22 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v26 = *v27;
    v26[1] = v27[1];
    v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
    v29 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v28 = *v29;
    v30 = *(v12 + 16);

    v30(v28 + 1, v29 + 1, v6);
  }

  else
  {
    v18 = *a2;
    *v3 = *a2;
    v3 = (v18 + (((v14 | 7) + 16) & ~(v14 | 7)));
  }

  return v3;
}

uint64_t destroy for TimeDataFormattingStorage.Resolver(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2[3] - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = (*(v7 + 56) + v8 + 23) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(a2[4] - 8);
  v11 = *(v10 + 8);
  v12 = (((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v10 + 80) + 8) & ~*(v10 + 80);

  return v11(v12);
}

uint64_t initializeWithCopy for TimeDataFormattingStorage.Resolver(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(v8 + 48);
  v14 = v13 + v11;
  v15 = v13 + v12;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 8);
  *v16 = *v17;
  *(v16 + 8) = v18;
  v19 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v19[1] = v20[1];
  v21 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v23 = a3[4];
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v26 = *(v24 + 80);
  v27 = v21 + v26 + 8;
  v28 = v22 + v26 + 8;

  v25(v27 & ~v26, v28 & ~v26, v23);
  return a1;
}

uint64_t assignWithCopy for TimeDataFormattingStorage.Resolver(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(v8 + 40);
  v14 = v13 + v11;
  v15 = v13 + v12;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *v16 = v18;
  v19 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;

  v19[1] = v20[1];

  v21 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v23 = *(a3[4] - 8);
  (*(v23 + 24))((v21 + *(v23 + 80) + 8) & ~*(v23 + 80), (v22 + *(v23 + 80) + 8) & ~*(v23 + 80));
  return a1;
}

uint64_t initializeWithTake for TimeDataFormattingStorage.Resolver(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 32))(v11, v12);
  v13 = *(v8 + 32);
  v14 = v13 + v11;
  v15 = v13 + v12;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 8);
  *v16 = *v17;
  *(v16 + 8) = v18;
  v19 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v23 = *(a3[4] - 8);
  (*(v23 + 32))((v21 + *(v23 + 80) + 8) & ~*(v23 + 80), (v22 + *(v23 + 80) + 8) & ~*(v23 + 80));
  return a1;
}

uint64_t assignWithTake for TimeDataFormattingStorage.Resolver(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(v8 + 24);
  v14 = v13 + v11;
  v15 = v13 + v12;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *v16 = v18;
  v19 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;

  v19[1] = v20[1];

  v21 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v23 = *(a3[4] - 8);
  (*(v23 + 40))((v21 + *(v23 + 80) + 8) & ~*(v23 + 80), (v22 + *(v23 + 80) + 8) & ~*(v23 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for TimeDataFormattingStorage.Resolver(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = a3[4];
  v7 = *(v5 + 84);
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80);
  if (v10 <= v12)
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v10;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(a3[2] - 8) + 64) + v13;
  v18 = *(*(a3[3] - 8) + 64) + 23;
  v19 = v14 + 8;
  v20 = a2 - v16;
  if (a2 > v16)
  {
    v21 = ((v19 + ((((v18 + (v17 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(*(v6 - 8) + 64);
    v22 = 8 * v21;
    if (v21 > 3)
    {
      goto LABEL_13;
    }

    v25 = ((v20 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v25 >= 2)
    {
LABEL_13:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_34;
      }

LABEL_21:
      v26 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v26 = 0;
      }

      if (v21)
      {
        if (v21 <= 3)
        {
          v27 = ((v19 + ((((v18 + (v17 & ~v13)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v14) + *(*(v6 - 8) + 64);
        }

        else
        {
          v27 = 4;
        }

        if (v27 > 2)
        {
          if (v27 == 3)
          {
            v28 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v28 = *a1;
          }
        }

        else if (v27 == 1)
        {
          v28 = *a1;
        }

        else
        {
          v28 = *a1;
        }
      }

      else
      {
        v28 = 0;
      }

      v34 = v16 + (v28 | v26);
      return (v34 + 1);
    }
  }

LABEL_34:
  if (v7 == v16)
  {
    v29 = *(v5 + 48);

    return v29();
  }

  v30 = (a1 + v17) & ~v13;
  if (v9 == v16)
  {
    v31 = *(v8 + 48);

    return v31(v30);
  }

  v32 = ((v18 + v30) & 0xFFFFFFFFFFFFFFF8);
  if (v15 <= 0x7FFFFFFE)
  {
    v33 = *v32;
    if (v33 >= 0xFFFFFFFF)
    {
      LODWORD(v33) = -1;
    }

    v34 = v33 - 1;
    if (v34 < 0)
    {
      v34 = -1;
    }

    return (v34 + 1);
  }

  v35 = *(v11 + 48);

  return v35((v19 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14, v12, v6);
}

char *storeEnumTagSinglePayload for TimeDataFormattingStorage.Resolver(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = a4[3];
  v7 = a4[4];
  v8 = *(v5 + 84);
  v9 = *(v6 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v7 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v6 - 8) + 64);
  v16 = *(v12 + 80);
  if (v11 <= *(v12 + 84))
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = v11;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = v17;
  }

  v19 = v15 + 23;
  v20 = ((v16 + 8 + ((((v15 + 23 + ((v13 + v14) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + *(*(v7 - 8) + 64);
  v21 = a3 >= v18;
  v22 = a3 - v18;
  if (v22 != 0 && v21)
  {
    if (v20 <= 3)
    {
      v27 = ((v22 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
      if (HIWORD(v27))
      {
        v23 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v27 < 2)
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
  }

  if (v18 < a2)
  {
    v24 = ~v18 + a2;
    if (v20 < 4)
    {
      v26 = (v24 >> (8 * v20)) + 1;
      if (v20)
      {
        v28 = v24 & ~(-1 << (8 * v20));
        v29 = result;
        bzero(result, v20);
        result = v29;
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *v29 = v28;
            if (v23 > 1)
            {
LABEL_56:
              if (v23 == 2)
              {
                *&result[v20] = v26;
              }

              else
              {
                *&result[v20] = v26;
              }

              return result;
            }
          }

          else
          {
            *v29 = v24;
            if (v23 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *v29 = v28;
        v29[2] = BYTE2(v28);
      }

      if (v23 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v25 = result;
      bzero(result, v20);
      result = v25;
      *v25 = v24;
      v26 = 1;
      if (v23 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v23)
    {
      result[v20] = v26;
    }

    return result;
  }

  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *&result[v20] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *&result[v20] = 0;
LABEL_36:
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!v23)
  {
    goto LABEL_36;
  }

  result[v20] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_37:
  if (v8 != v18)
  {
    result = (&result[v13 + v14] & ~v14);
    if (v10 == v18)
    {
      v31 = *(v9 + 56);
    }

    else
    {
      v32 = (&result[v19] & 0xFFFFFFFFFFFFFFF8);
      if (v17 <= 0x7FFFFFFE)
      {
        if (a2 > 0x7FFFFFFE)
        {
          *v32 = a2 - 0x7FFFFFFF;
          v32[1] = 0;
        }

        else
        {
          *v32 = a2;
        }

        return result;
      }

      v31 = *(v12 + 56);
      result = ((v16 + 8 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
    }

    return v31(result);
  }

  v30 = *(v5 + 56);

  return v30();
}

uint64_t outlined destroy of InterfaceIdiomDependentFormatStyle?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t static HermiteCurve.linear(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - v20;
  v22 = *(v9 + 16);
  v22(&v25 - v20, a1, AssociatedTypeWitness, v19);
  (v22)(v17, a2, AssociatedTypeWitness);
  v23 = v25;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  return HermiteCurve.init(start:end:startTangent:endTangent:)(v21, v17, v14, v11, a3, v23, v26);
}

uint64_t static HermiteCurve.hermite(start:end:startTangent:endTangent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v29 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v26 - v22;
  v24 = *(v11 + 16);
  v24(&v26 - v22, a1, AssociatedTypeWitness, v21);
  (v24)(v19, v26, AssociatedTypeWitness);
  (v24)(v16, v27, AssociatedTypeWitness);
  (v24)(v13, v28, AssociatedTypeWitness);
  return HermiteCurve.init(start:end:startTangent:endTangent:)(v23, v19, v16, v13, a5, a6, v29);
}

uint64_t HermiteCurve.init(start:end:startTangent:endTangent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(*(AssociatedTypeWitness - 8) + 32);
  (v19)((AssociatedTypeWitness - 8), a7, a1, AssociatedTypeWitness);
  v16 = type metadata accessor for HermiteCurve(0, a5, a6, v15);
  v19(a7 + v16[9], a2, AssociatedTypeWitness);
  v19(a7 + v16[10], a3, AssociatedTypeWitness);
  v17 = a7 + v16[11];

  return (v19)(v17, a4, AssociatedTypeWitness);
}

uint64_t HermiteCurve.velocity(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v28 = &v27 - v16;
  v27 = *(a1 + 40);
  v29 = *(a1 + 44);
  v17 = a3 * a3 * 6.0;
  v18 = v17 - a3 * 6.0;
  v19 = a3 * 6.0 - v17;
  v20 = a3 * a3 * 3.0;
  v21 = v20 + a3 * -4.0 + 1.0;
  v22 = v20 - (a3 + a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v11, v18);
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v8, v19);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v24 = *(v6 + 8);
  v24(v8, AssociatedTypeWitness);
  v24(v11, AssociatedTypeWitness);
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v11, v21);
  v25 = v28;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v24(v11, AssociatedTypeWitness);
  v24(v14, AssociatedTypeWitness);
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v14, v22);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v24(v14, AssociatedTypeWitness);
  return (v24)(v25, AssociatedTypeWitness);
}

uint64_t HermiteCurve.value(atArcLength:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, Swift::Double a3@<D0>)
{
  v5 = HermiteCurve.parametricTime(forArcLength:)(a3);

  return HermiteCurve.value(at:)(a1, a2, v5);
}

Swift::Double __swiftcall HermiteCurve.parametricTime(forArcLength:)(Swift::Double forArcLength)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v19 - v6;
  v8 = HermiteCurve.arcLength(at:)(1.0);
  if (v8 <= 0.0)
  {
    return 0.0;
  }

  v9 = (v5 + 8);
  v10 = 10;
  v11 = forArcLength / v8;
  do
  {
    v12 = HermiteCurve.arcLength(at:)(v11);
    if (vabdd_f64(v12, forArcLength) < 0.1)
    {
      break;
    }

    v13 = v12 - forArcLength;
    HermiteCurve.velocity(at:)(v2, v7, v11);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v16 = sqrt(v15);
    (*v9)(v7, AssociatedTypeWitness);
    v11 = v11 - v13 / v16;
    if ((~*&v11 & 0x7FF0000000000000) == 0 && (*&v11 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      return 0.0;
    }

    --v10;
  }

  while (v10);
  return v11;
}

uint64_t HermiteCurve.velocity(atArcLength:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, Swift::Double a3@<D0>)
{
  v5 = HermiteCurve.parametricTime(forArcLength:)(a3);

  return HermiteCurve.velocity(at:)(a1, a2, v5);
}

Swift::Double __swiftcall HermiteCurve.arcLength(at:)(Swift::Double at)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v31 = v1;
  v5 = v3;
  v6 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = &v31 - v8;
  type metadata accessor for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(0);
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for Quadrature.Integrator();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for Quadrature();
  v20 = *(v19 - 8);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v24;
  *v18 = 8;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E5A40], v15, v21);
  v25 = Quadrature.init(integrator:absoluteTolerance:relativeTolerance:)();
  MEMORY[0x1EEE9AC00](v25);
  *(&v31 - 4) = v6;
  *(&v31 - 3) = v5;
  *(&v31 - 2) = v36;
  Quadrature.integrate(over:integrand:)();
  outlined init with copy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v14, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = v32;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v28 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v33 + 8))(v27, AssociatedTypeWitness);
    v29 = sqrt(v28);
    outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v14);
    (*(v20 + 8))(v23, v34);
    outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v11);
    return v29;
  }

  else
  {
    outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v14);
    (*(v20 + 8))(v23, v34);
    result = *v11;
    if (at < 0.0)
    {
      return -*v11;
    }
  }

  return result;
}

void type metadata accessor for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>)
  {
    type metadata accessor for (integralResult: Double, estimatedAbsoluteError: Double)();
    type metadata accessor for Quadrature.Error();
    lazy protocol witness table accessor for type Quadrature.Error and conformance Quadrature.Error();
    v1 = type metadata accessor for Result();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>);
    }
  }
}

void type metadata accessor for (integralResult: Double, estimatedAbsoluteError: Double)()
{
  if (!lazy cache variable for type metadata for (integralResult: Double, estimatedAbsoluteError: Double))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (integralResult: Double, estimatedAbsoluteError: Double));
    }
  }
}

void lazy protocol witness table accessor for type Quadrature.Error and conformance Quadrature.Error()
{
  if (!lazy protocol witness table cache variable for type Quadrature.Error and conformance Quadrature.Error)
  {
    v2 = type metadata accessor for Quadrature.Error();
    swift_getWitnessTable(MEMORY[0x1E69E5A48], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Quadrature.Error and conformance Quadrature.Error);
  }
}

void closure #1 in HermiteCurve.arcLength(at:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v15 - v9;
  v12 = type metadata accessor for HermiteCurve(0, a3, a4, v11);
  HermiteCurve.velocity(at:)(v12, v10, a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  sqrt(v14);
}

uint64_t outlined init with copy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(uint64_t a1)
{
  type metadata accessor for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for HermiteCurve(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for HermiteCurve(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = v7 + v8;
  v11 = ((v7 + v8 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v8) + v7;
  if (v8 > 7 || (*(v6 + 80) & 0x100000) != 0 || v11 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v8 + 16) & v9));
  }

  else
  {
    v15 = AssociatedTypeWitness;
    v16 = *(v6 + 16);
    v16(a1, a2, AssociatedTypeWitness);
    v17 = (a2 + v10) & v9;
    v16(((a1 + v10) & v9), v17, v15);
    v18 = (v10 + v17) & v9;
    v16(((v10 + ((a1 + v10) & v9)) & v9), v18, v15);
    v16(((v10 + ((v10 + ((a1 + v10) & v9)) & v9)) & v9), ((v10 + v18) & v9), v15);
  }

  return a1;
}

uint64_t destroy for HermiteCurve(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v10 = *(v4 + 8);
  v11 = v4 + 8;
  v10(a1, AssociatedTypeWitness);
  v5 = *(v11 + 72);
  v6 = *(v11 + 56) + v5;
  v7 = (v6 + a1) & ~v5;
  v10(v7, AssociatedTypeWitness);
  v8 = (v6 + v7) & ~v5;
  v10(v8, AssociatedTypeWitness);

  return (v10)((v6 + v8) & ~v5, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for HermiteCurve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 64);
  v10 = *(v8 + 48) + v9;
  v11 = (v10 + a2) & ~v9;
  v7((v10 + a1) & ~v9, v11, AssociatedTypeWitness);
  v12 = (v10 + v11) & ~v9;
  v7((v10 + ((v10 + a1) & ~v9)) & ~v9, v12, AssociatedTypeWitness);
  v7((v10 + ((v10 + ((v10 + a1) & ~v9)) & ~v9)) & ~v9, (v10 + v12) & ~v9, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for HermiteCurve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v7(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 56);
  v10 = *(v8 + 40) + v9;
  v11 = (v10 + a2) & ~v9;
  v7((v10 + a1) & ~v9, v11, AssociatedTypeWitness);
  v12 = (v10 + v11) & ~v9;
  v7((v10 + ((v10 + a1) & ~v9)) & ~v9, v12, AssociatedTypeWitness);
  v7((v10 + ((v10 + ((v10 + a1) & ~v9)) & ~v9)) & ~v9, (v10 + v12) & ~v9, AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for HermiteCurve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 48);
  v10 = *(v8 + 32) + v9;
  v11 = (v10 + a2) & ~v9;
  v7((v10 + a1) & ~v9, v11, AssociatedTypeWitness);
  v12 = (v10 + v11) & ~v9;
  v7((v10 + ((v10 + a1) & ~v9)) & ~v9, v12, AssociatedTypeWitness);
  v7((v10 + ((v10 + ((v10 + a1) & ~v9)) & ~v9)) & ~v9, (v10 + v12) & ~v9, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for HermiteCurve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 40);
  v8 = v6 + 40;
  v7(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 40);
  v10 = *(v8 + 24) + v9;
  v11 = (v10 + a2) & ~v9;
  v7((v10 + a1) & ~v9, v11, AssociatedTypeWitness);
  v12 = (v10 + v11) & ~v9;
  v7((v10 + ((v10 + a1) & ~v9)) & ~v9, v12, AssociatedTypeWitness);
  v7((v10 + ((v10 + ((v10 + a1) & ~v9)) & ~v9)) & ~v9, (v10 + v12) & ~v9, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for HermiteCurve(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
LABEL_23:
    v14 = *(v6 + 48);

    return v14(a1);
  }

  v8 = *(v6 + 80);
  v9 = ((*(*(AssociatedTypeWitness - 8) + 64) + v8 + ((*(*(AssociatedTypeWitness - 8) + 64) + v8 + ((*(*(AssociatedTypeWitness - 8) + 64) + v8) & ~v8)) & ~v8)) & ~v8) + *(*(AssociatedTypeWitness - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((a2 - v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v7)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v13) + 1;
}

void storeEnumTagSinglePayload for HermiteCurve(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((*(v7 + 64) + v9 + ((*(v7 + 64) + v9 + ((*(v7 + 64) + v9) & ~v9)) & ~v9)) & ~v9) + *(v7 + 64);
  if (a3 <= v8)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v8 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v8 < a2)
  {
    v12 = ~v8 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_39:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v10] = 0;
  }

  else if (v11)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v17 = *(v7 + 56);

  v17(a1, a2);
}

uint64_t static HermiteCurve.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (type metadata accessor for HermiteCurve(0, a3, a4, v6), (dispatch thunk of static Equatable.== infix(_:_:)()) && (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t _ViewInputs.containerShape.getter()
{
  if (one-time initialization token for containerShape != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.containerShape;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, closure #1 in _GraphInputs.containerShape.getter, 0);
  swift_endAccess();
  return v1;
}

double CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(double a1)
{
  v2 = v1[11];
  v23 = v1[10];
  v24 = v2;
  v3 = v1[13];
  v25 = v1[12];
  v26 = v3;
  v4 = v1[7];
  v19 = v1[6];
  v20 = v4;
  v5 = v1[9];
  v21 = v1[8];
  v22 = v5;
  v6 = v1[3];
  v15 = v1[2];
  v16 = v6;
  v7 = v1[5];
  v17 = v1[4];
  v18 = v7;
  v8 = v1[1];
  v13 = *v1;
  v14 = v8;
  v12 = 0;
  closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(&v12);
  v10 = v9;
  v12 = 2;
  closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(&v12);
  v12 = 3;
  closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(&v12);
  v12 = 1;
  closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(&v12);
  return v10;
}

void EnvironmentValues.containerShape.getter(_OWORD *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014ContainerShapeI033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5(v2, a1);
  }
}

double key path getter for EnvironmentValues.containerShape : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014ContainerShapeI033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt1g5(v3, v6);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5(*a1, v6);
  }

  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  a2[2] = v7[0];
  result = *(v7 + 9);
  *(a2 + 41) = *(v7 + 9);
  return result;
}

double key path setter for EnvironmentValues.containerShape : EnvironmentValues(_OWORD *a1, Swift::UInt *a2)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2B5(a2, v6);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014ContainerShapeK033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Ttg5(v4, *a2);
  }

  return result;
}

double EnvironmentValues.containerShape.setter(_OWORD *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = *v1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2B5(v1, v5);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014ContainerShapeK033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Ttg5(v3, *v1);
  }

  return result;
}

uint64_t _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1[1];
  v4 = *a1[2];
  v5 = *a1[3];
  v6 = *a1[4];
  v7 = *a1[5];
  v8 = *a1[6];
  v9 = *a1[7];
  v10 = *a1[8];
  v11 = *a1[9];
  v12 = *a1[10];
  v13 = *a1[11];
  *a2 = **a1;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v8;
  a2[7] = v9;
  a2[8] = v10;
  a2[9] = v11;
  a2[10] = v12;
  a2[11] = v13;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v14 = MEMORY[0x1E69E7DE0];
  v15 = MEMORY[0x1E69E7DE0] - 8;
  (*(*(MEMORY[0x1E69E7DE0] - 8) + 8))(a1[11], MEMORY[0x1E69E7DE0]);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  (*(*v15 + 8))(a1[10], v14);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  (*(*v15 + 8))(a1[9], v14);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  (*(*v15 + 8))(a1[8], v14);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  (*(*v15 + 8))(a1[7], v14);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  (*(*v15 + 8))(a1[6], v14);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  (*(*v15 + 8))(a1[5], v14);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  (*(*v15 + 8))(a1[4], v14);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  (*(*v15 + 8))(a1[3], v14);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  (*(*v15 + 8))(a1[2], v14);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  (*(*v15 + 8))(a1[1], v14);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v16 = *a1;
  v17 = *(*v15 + 8);

  return v17(v16, v14);
}

double ContainerRelativeShape.path(in:)@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  specialized ContainerRelativeShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

double ContainerRelativeShape._Inset.path(in:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D4>)
{
  v11 = CGRectInset(*&a2, a3, a3);
  specialized ContainerRelativeShape.path(in:)(v9, v11.origin, *&v11.origin.y, v11.size, *&v11.size.height);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

double (*ContainerRelativeShape._Inset.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

double protocol witness for Shape.path(in:) in conformance ContainerRelativeShape._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v11 = CGRectInset(*&a2, *v5, *v5);
  specialized ContainerRelativeShape.path(in:)(v9, v11.origin, *&v11.origin.y, v11.size, *&v11.size.height);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

double protocol witness for Shape.path(in:) in conformance ImplicitContainerShape@<D0>(int8x16_t *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  ImplicitContainerShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8[0].i64;
  v7 = v8[1];
  *a1 = v8[0];
  a1[1] = v7;
  a1[2].i8[0] = v9;
  return result;
}

__n128 PartialContainerRelativeShape.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  *(a1 + 160) = *(v1 + 176);
  *(a1 + 176) = v2;
  v3 = *(v1 + 224);
  *(a1 + 192) = *(v1 + 208);
  *(a1 + 208) = v3;
  v4 = *(v1 + 128);
  *(a1 + 96) = *(v1 + 112);
  *(a1 + 112) = v4;
  v5 = *(v1 + 160);
  *(a1 + 128) = *(v1 + 144);
  *(a1 + 144) = v5;
  v6 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v6;
  v7 = *(v1 + 96);
  *(a1 + 64) = *(v1 + 80);
  *(a1 + 80) = v7;
  result = *(v1 + 16);
  v9 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v9;
  return result;
}

__n128 PartialContainerRelativeShape.corners.setter(uint64_t a1)
{
  v2 = *(a1 + 176);
  v1[11] = *(a1 + 160);
  v1[12] = v2;
  v3 = *(a1 + 208);
  v1[13] = *(a1 + 192);
  v1[14] = v3;
  v4 = *(a1 + 112);
  v1[7] = *(a1 + 96);
  v1[8] = v4;
  v5 = *(a1 + 144);
  v1[9] = *(a1 + 128);
  v1[10] = v5;
  v6 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v6;
  v7 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v9;
  return result;
}

uint64_t *static CornerMaskingConfiguration.containerConcentric(minimum:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  if ((result[7] & 1) != 0 || (v2 = *result, (result[1] & 1) == 0))
  {
    v4 = 0;
    v3 = v2;
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v3;
  *(a2 + 24) = 0x3FF0000000000000;
  *(a2 + 32) = v2;
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = v3;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 88) = v2;
  *(a2 + 96) = v4;
  *(a2 + 104) = v3;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 128) = v3;
  *(a2 + 136) = 0x3FF0000000000000;
  *(a2 + 144) = v2;
  *(a2 + 152) = v4;
  *(a2 + 160) = v3;
  *(a2 + 168) = 0;
  *(a2 + 176) = 1;
  *(a2 + 184) = v3;
  *(a2 + 192) = 0x3FF0000000000000;
  *(a2 + 200) = v2;
  *(a2 + 208) = v4;
  *(a2 + 216) = v3;
  return result;
}

__n128 PartialContainerRelativeShape.init(corners:isSymmetric:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a2;
  v3 = 0.0;
  if (a2)
  {
    v3 = 1.0;
  }

  *(a3 + 8) = v3;
  v4 = *(a1 + 176);
  *(a3 + 176) = *(a1 + 160);
  *(a3 + 192) = v4;
  v5 = *(a1 + 208);
  *(a3 + 208) = *(a1 + 192);
  *(a3 + 224) = v5;
  v6 = *(a1 + 112);
  *(a3 + 112) = *(a1 + 96);
  *(a3 + 128) = v6;
  v7 = *(a1 + 144);
  *(a3 + 144) = *(a1 + 128);
  *(a3 + 160) = v7;
  v8 = *(a1 + 48);
  *(a3 + 48) = *(a1 + 32);
  *(a3 + 64) = v8;
  v9 = *(a1 + 80);
  *(a3 + 80) = *(a1 + 64);
  *(a3 + 96) = v9;
  result = *a1;
  v11 = *(a1 + 16);
  *(a3 + 16) = *a1;
  *(a3 + 32) = v11;
  return result;
}

uint64_t PartialContainerRelativeShape.path(in:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v6 = v5;
  v8 = *v5;
  v9 = _threadGeometryProxyData();
  if (v9)
  {
    v10 = *v9;
    v11 = *(v9 + 4);
    v30 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 20);
    v62[0] = *(v9 + 24);
    *(v62 + 12) = *(v9 + 36);
    specialized static Update.begin()();
    v31 = v12;
    v34 = v11;
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(v61);
      v15 = v61[0];
      v14 = v61[1];
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v15 = *InputValue;
      v14 = *(InputValue + 8);
    }

    v35 = v10;
    static Update.end()();
    v33 = a1;
    if (v14)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014ContainerShapeI033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt1g5(v15, &v51);
    }

    else
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5(v15, &v51);
    }

    v32 = v51;
    v29 = v52;
    v28 = v53;
    v21 = v54;
    v22 = v55;
    v23 = v56;
    v24 = v57;
    v25 = v58;
    v26 = v59;
    v27 = v60;
    RoundedRectangularShapeCorners.init(_:)(v6 + 2, v50);
    if (v8)
    {
      LOBYTE(v47) = 15;
    }

    else
    {
      LOBYTE(v47) = 0;
    }

    ConcentricRectangle.Uniformity.init(all:)(&v47, v49);
    *&v47 = __PAIR64__(v34, v35);
    *(&v47 + 1) = v30;
    *v48 = v31;
    *&v48[4] = v13;
    *&v48[8] = v62[0];
    *&v48[20] = *(v62 + 12);
    *&v65 = v21;
    *(&v65 + 1) = __PAIR64__(v23, v22);
    *&v66 = __PAIR64__(v25, v24);
    *(&v66 + 1) = __PAIR64__(v27, v26);
    (*(*(&v32 + 1) + 16))(v63, &v47, v29 | (v28 << 32), &v65, v50, v49, v32, *(&v32 + 1), a2, a3, a4, a5);
    if (v64)
    {
      *&v47 = __PAIR64__(v34, v35);
      *(&v47 + 1) = v30;
      *v48 = v31;
      *&v48[4] = v13;
      *&v48[8] = v62[0];
      *&v48[20] = *(v62 + 12);
      v40 = v21;
      v41 = v22;
      v42 = v23;
      v43 = v24;
      v44 = v25;
      v45 = v26;
      v46 = v27;
      result = (*(*(&v32 + 1) + 8))(&v65, &v47, v29 | (v28 << 32), &v40, v32, *(&v32 + 1), a2, a3, a4, a5);
      v17 = v65;
      v19 = v66;
      v18 = v67;
    }

    else
    {
      LOBYTE(v65) = 1;
      result = specialized Path.init(roundedRect:cornerRadii:style:)(&v65, &v47, a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], v63[0], v63[1], v63[2], v63[3]);
      v17 = v47;
      v19 = *v48;
      v18 = v48[16];
    }

    a1 = v33;
  }

  else
  {
    *&v68.origin.x = a2.n128_u64[0];
    *&v68.size.width = a4.n128_u64[0];
    *&v68.origin.y = a3.n128_u64[0];
    *&v68.size.height = a5.n128_u64[0];
    result = CGRectIsNull(v68);
    if (result)
    {
      v17 = 0uLL;
      v18 = 6;
      v19 = 0uLL;
    }

    else
    {
      v18 = 0;
      *&v17 = a2.n128_u64[0];
      *(&v17 + 1) = a3.n128_u64[0];
      *&v19 = a4.n128_u64[0];
      *(&v19 + 1) = a5.n128_u64[0];
    }
  }

  *a1 = v17;
  *(a1 + 16) = v19;
  *(a1 + 32) = v18;
  return result;
}

double RoundedRectangularShapeCorners.init(_:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = a1[4];
  v5 = *(a1 + 40);
  v6 = a1[6];
  v36 = a1[7];
  v35 = *(a1 + 64);
  v7 = a1[10];
  v34 = a1[9];
  v33 = a1[11];
  v32 = *(a1 + 96);
  v8 = a1[13];
  v9 = a1[14];
  v10 = *(a1 + 120);
  v11 = a1[16];
  v12 = a1[17];
  v13 = a1[18];
  v14 = *(a1 + 152);
  v15 = a1[20];
  v16 = a1[21];
  v17 = *(a1 + 176);
  v18 = a1[23];
  v19 = a1[24];
  v20 = a1[25];
  v21 = *(a1 + 208);
  v22 = a1[27];
  v43 = *a1;
  v44 = v3;
  v45 = *(a1 + 1);
  v46 = v4;
  v47 = v5;
  v48 = v6;
  Edge.Corner.Style.init(_:)(&v43, v37);
  v43 = v9;
  v44 = v10;
  *&v45 = v11;
  *(&v45 + 1) = v12;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  Edge.Corner.Style.init(_:)(&v43, v41);
  v43 = v36;
  v44 = v35;
  *&v45 = v34;
  *(&v45 + 1) = v7;
  v46 = v33;
  v47 = v32;
  v48 = v8;
  Edge.Corner.Style.init(_:)(&v43, v40);
  v43 = v16;
  v44 = v17;
  *&v45 = v18;
  *(&v45 + 1) = v19;
  v46 = v20;
  v47 = v21;
  v48 = v22;
  Edge.Corner.Style.init(_:)(&v43, v42);
  v23 = v42[1];
  a2[12] = v42[0];
  a2[13] = v23;
  v24 = v42[3];
  a2[14] = v42[2];
  a2[15] = v24;
  v25 = v41[1];
  a2[8] = v41[0];
  a2[9] = v25;
  v26 = v41[3];
  a2[10] = v41[2];
  a2[11] = v26;
  v27 = v40[1];
  a2[4] = v40[0];
  a2[5] = v27;
  v28 = v40[3];
  a2[6] = v40[2];
  a2[7] = v28;
  v29 = v37[1];
  *a2 = v37[0];
  a2[1] = v29;
  result = *&v38;
  v31 = v39;
  a2[2] = v38;
  a2[3] = v31;
  return result;
}

double PartialContainerRelativeShape.animatableData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  CornerMaskingConfiguration.animatableData.getter(v8);
  *a1 = v3;
  v4 = v8[3];
  *(a1 + 40) = v8[2];
  *(a1 + 56) = v4;
  v5 = v8[5];
  *(a1 + 72) = v8[4];
  *(a1 + 88) = v5;
  result = *v8;
  v7 = v8[1];
  *(a1 + 8) = v8[0];
  *(a1 + 24) = v7;
  return result;
}

uint64_t PartialContainerRelativeShape.animatableData.setter(double *a1, __n128 a2)
{
  v3 = *a1;
  *(v2 + 8) = *a1;
  *v2 = v3 == 1.0;
  return CornerMaskingConfiguration.animatableData.setter(a1 + 1);
}

double CornerMaskingConfiguration.animatableData.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[2];
  v5 = v1[6];
  v6 = v1[9];
  v7 = v1[10];
  v9 = v1[16];
  v8 = v1[17];
  v10 = v1[20];
  v17 = v1[13];
  v18 = v1[23];
  v19 = v1[24];
  v20 = v1[27];
  v67 = v1[3];
  v4 = v67;
  v68 = v3;
  v66 = v5;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v11 = MEMORY[0x1E69E7DE0];
  v12 = *(*(MEMORY[0x1E69E7DE0] - 8) + 8);
  v12(&v66, MEMORY[0x1E69E7DE0]);
  v12(&v67, v11);
  v12(&v68, v11);
  v69 = v3;
  v70[0] = &v69;
  v64 = v3;
  v62 = v5;
  v63 = v4;
  v12(&v62, v11);
  v12(&v63, v11);
  v12(&v64, v11);
  v65 = v4;
  v70[1] = &v65;
  v59 = v4;
  v60 = v3;
  v58 = v5;
  v12(&v58, v11);
  v12(&v59, v11);
  v12(&v60, v11);
  v61 = v5;
  v70[2] = &v61;
  v55 = v8;
  v56 = v9;
  v54 = v10;
  v12(&v54, v11);
  v12(&v55, v11);
  v12(&v56, v11);
  v57 = v9;
  v70[3] = &v57;
  v51 = v8;
  v52 = v9;
  v50 = v10;
  v12(&v50, v11);
  v12(&v51, v11);
  v12(&v52, v11);
  v53 = v8;
  v70[4] = &v53;
  v47 = v8;
  v48 = v9;
  v46 = v10;
  v12(&v46, v11);
  v12(&v47, v11);
  v12(&v48, v11);
  v49 = v10;
  v70[5] = &v49;
  v43 = v7;
  v44 = v6;
  v42 = v17;
  v12(&v42, v11);
  v12(&v43, v11);
  v12(&v44, v11);
  v45 = v6;
  v70[6] = &v45;
  v39 = v7;
  v40 = v6;
  v38 = v17;
  v12(&v38, v11);
  v12(&v39, v11);
  v12(&v40, v11);
  v41 = v7;
  v70[7] = &v41;
  v35 = v7;
  v36 = v6;
  v34 = v17;
  v12(&v34, v11);
  v12(&v35, v11);
  v12(&v36, v11);
  v37 = v17;
  v70[8] = &v37;
  v31 = v19;
  v32 = v18;
  v30 = v20;
  v12(&v30, v11);
  v12(&v31, v11);
  v12(&v32, v11);
  v33 = v18;
  v70[9] = &v33;
  v27 = v19;
  v28 = v18;
  v26 = v20;
  v12(&v26, v11);
  v12(&v27, v11);
  v12(&v28, v11);
  v29 = v19;
  v70[10] = &v29;
  v23 = v19;
  v24 = v18;
  v22 = v20;
  v12(&v22, v11);
  v12(&v23, v11);
  v12(&v24, v11);
  v25 = v20;
  v70[11] = &v25;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v70, v21);
  v13 = v21[3];
  a1[2] = v21[2];
  a1[3] = v13;
  v14 = v21[5];
  a1[4] = v21[4];
  a1[5] = v14;
  result = *v21;
  v16 = v21[1];
  *a1 = v21[0];
  a1[1] = v16;
  return result;
}

uint64_t CornerMaskingConfiguration.animatableData.setter(double *a1)
{
  v3 = a1[1];
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = a1[4];
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = a1[7];
  v17 = *(a1 + 8);
  v18 = a1[10];
  v19 = *(a1 + 9);
  v20 = *(a1 + 11);
  v32 = *a1;
  v2 = v32;
  v30 = v4;
  v31 = v3;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v10 = MEMORY[0x1E69E7DE0];
  v11 = *(*(MEMORY[0x1E69E7DE0] - 8) + 8);
  v11(&v30, MEMORY[0x1E69E7DE0]);
  v11(&v31, v10);
  v11(&v32, v10);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 48) = v4;
  v12 = v2;
  if (v3 == 1.0)
  {
    v12 = 0;
  }

  *v1 = v12;
  *(v1 + 8) = v3 == 1.0;
  *(v1 + 32) = v4;
  *(v1 + 40) = 0;
  v28 = v6;
  v29 = v5;
  v27 = v7;
  v11(&v27, v10);
  v11(&v28, v10);
  v11(&v29, v10);
  *(v1 + 128) = v5;
  *(v1 + 136) = v6;
  *(v1 + 160) = v7;
  v13 = v5;
  if (v6 == 1.0)
  {
    v13 = 0;
  }

  *(v1 + 112) = v13;
  *(v1 + 120) = v6 == 1.0;
  *(v1 + 144) = v7;
  *(v1 + 152) = 0;
  v25 = v9;
  v26 = v8;
  v24 = v17;
  v11(&v24, v10);
  v11(&v25, v10);
  v11(&v26, v10);
  *(v1 + 72) = v8;
  *(v1 + 80) = v9;
  *(v1 + 104) = v17;
  v14 = v8;
  if (v9 == 1.0)
  {
    v14 = 0;
  }

  *(v1 + 56) = v14;
  *(v1 + 64) = v9 == 1.0;
  *(v1 + 88) = v17;
  *(v1 + 96) = 0;
  v22 = v18;
  v23 = v19;
  v21 = v20;
  v11(&v21, v10);
  v11(&v22, v10);
  result = (v11)(&v23, v10);
  *(v1 + 184) = v19;
  *(v1 + 192) = v18;
  *(v1 + 216) = v20;
  v16 = v19;
  if (v18 == 1.0)
  {
    v16 = 0;
  }

  *(v1 + 168) = v16;
  *(v1 + 176) = v18 == 1.0;
  *(v1 + 200) = v20;
  *(v1 + 208) = 0;
  return result;
}

void (*PartialContainerRelativeShape.animatableData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x210uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 520) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 32);
  *v3 = *(v1 + 16);
  *(v3 + 16) = v6;
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  v9 = *(v1 + 96);
  *(v3 + 64) = *(v1 + 80);
  *(v3 + 80) = v9;
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  v10 = *(v1 + 112);
  v11 = *(v1 + 128);
  v12 = *(v1 + 160);
  *(v3 + 128) = *(v1 + 144);
  *(v3 + 144) = v12;
  *(v3 + 96) = v10;
  *(v3 + 112) = v11;
  v13 = *(v1 + 176);
  v14 = *(v1 + 192);
  v15 = *(v1 + 224);
  *(v3 + 192) = *(v1 + 208);
  *(v3 + 208) = v15;
  *(v3 + 160) = v13;
  *(v3 + 176) = v14;
  CornerMaskingConfiguration.animatableData.getter((v3 + 232));
  *(v4 + 224) = v5;
  return PartialContainerRelativeShape.animatableData.modify;
}

void PartialContainerRelativeShape.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 224);
  v4 = *(*a1 + 520);
  v5 = 424;
  v6 = *(*a1 + 280);
  if (a2)
  {
    v5 = 328;
  }

  v7 = (v2 + v5);
  v7[2] = *(v2 + 264);
  v7[3] = v6;
  v8 = *(v2 + 312);
  v7[4] = *(v2 + 296);
  v7[5] = v8;
  v9 = *(v2 + 248);
  *v7 = *(v2 + 232);
  v7[1] = v9;
  *(v4 + 8) = v3;
  *v4 = v3 == 1.0;
  CornerMaskingConfiguration.animatableData.setter((v2 + v5));

  free(v2);
}

double protocol witness for Shape.path(in:) in conformance PartialContainerRelativeShape@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  PartialContainerRelativeShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance PartialContainerRelativeShape@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  CornerMaskingConfiguration.animatableData.getter(v8);
  *a1 = v3;
  v4 = v8[3];
  *(a1 + 40) = v8[2];
  *(a1 + 56) = v4;
  v5 = v8[5];
  *(a1 + 72) = v8[4];
  *(a1 + 88) = v5;
  result = *v8;
  v7 = v8[1];
  *(a1 + 8) = v8[0];
  *(a1 + 24) = v7;
  return result;
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance PartialContainerRelativeShape(double *a1)
{
  v2 = *a1;
  *(v1 + 8) = *a1;
  *v1 = v2 == 1.0;
  return CornerMaskingConfiguration.animatableData.setter(a1 + 1);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance PartialContainerRelativeShape(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = PartialContainerRelativeShape.animatableData.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t View.containerShape<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a4;
  v25 = a5;
  v26 = a2;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _CornerConfigurationToRoundedRectangularShape(0, v10, v11, v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  swift_getWitnessTable(protocol conformance descriptor for _CornerConfigurationToRoundedRectangularShape<A>, v13, v14, v25, v26, v27);
  v19 = type metadata accessor for _ContainerRoundedRectangularShapeModifier(0, v13, v17, v18);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v25 - v22;
  (*(v7 + 16))(v9, a1, a3, v21);
  (*(v7 + 32))(v16, v9, a3);
  _ContainerRoundedRectangularShapeModifier.init(shape:)(v16, v13, v23);
  View.modifier<A>(_:)();
  return (*(v20 + 8))(v23, v19);
}

void *static _ContainerShapeModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, ValueMetadata *a5, uint64_t a6)
{
  v9 = a2[3];
  v10 = a2[1];
  v35 = a2[2];
  v36 = v9;
  v11 = a2[3];
  v37 = a2[4];
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  v29 = v35;
  v30 = v11;
  v31 = a2[4];
  v13 = *a1;
  v38 = *(a2 + 20);
  v32 = *(a2 + 20);
  v27 = v33;
  v28 = v10;
  LODWORD(v40[0]) = v13;
  outlined init with copy of _ViewInputs(&v33, &v44);
  v15 = type metadata accessor for _ContainerShapeModifier(255, a5, a6, v14);
  type metadata accessor for _GraphValue(0, v15, v16, v17);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _ContainerShapeModifier._makeView(modifier:inputs:body:), a5, &v21);
  v44 = v33;
  v45 = v34;
  v46 = v35;
  outlined init with copy of _GraphInputs(&v33, v42);
  v18 = static Animatable.makeAnimatable(value:inputs:)(&v21, &v44, a5, *(*(a6 + 8) + 8));
  v39[0] = v44;
  v39[1] = v45;
  v39[2] = v46;
  outlined destroy of _GraphInputs(v39);
  _ViewInputs.setContainerShape<A>(_:isSystemShape:)(v18, 0, a5, a6);
  v40[2] = v29;
  v40[3] = v30;
  v40[4] = v31;
  v41 = v32;
  v40[0] = v27;
  v40[1] = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v21 = v27;
  v22 = v28;
  v19 = outlined init with copy of _ViewInputs(v40, &v44);
  a3(v19, &v21);
  v42[2] = v23;
  v42[3] = v24;
  v42[4] = v25;
  v43 = v26;
  v42[0] = v21;
  v42[1] = v22;
  outlined destroy of _ViewInputs(v42);
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v44 = v27;
  v45 = v28;
  return outlined destroy of _ViewInputs(&v44);
}

uint64_t _ViewInputs.setContainerShape<A>(_:isSystemShape:)(uint64_t result, char a2, ValueMetadata *a3, uint64_t a4, uint64_t (*a5)(void, ValueMetadata *, uint64_t), uint64_t a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a3 != &type metadata for ContainerRelativeShape)
  {
    v26 = AGMakeUniqueID();
    v9 = *(v6 + 60);
    v30 = *v6;
    v10 = *(v6 + 16);
    v32 = *(v6 + 24);
    v33 = *(v6 + 40);
    v34[0] = *(v6 + 56);
    *(v34 + 12) = *(v6 + 68);
    v31 = v10;
    swift_beginAccess();
    v11 = v6;
    LODWORD(v10) = CachedEnvironment.animatedPosition(for:)(&v30);
    swift_endAccess();
    v30 = *v6;
    v12 = *(v6 + 16);
    v32 = *(v11 + 24);
    v33 = *(v11 + 40);
    v34[0] = *(v11 + 56);
    *(v34 + 12) = *(v11 + 68);
    v31 = v12;
    swift_beginAccess();
    LODWORD(v12) = CachedEnvironment.animatedCGSize(for:)(&v30);
    swift_endAccess();
    *&v30 = __PAIR64__(v10, v9);
    DWORD2(v30) = v12;
    v31 = v26;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ContainerShapeTransform and conformance ContainerShapeTransform();
    *(v11 + 60) = Attribute.init<A>(body:value:flags:update:)();
    *(v11 + 32) |= 4u;
    v30 = *v11;
    v13 = *(v11 + 16);
    v32 = *(v11 + 24);
    v33 = *(v11 + 40);
    v34[0] = *(v11 + 56);
    *(v34 + 12) = *(v11 + 68);
    v31 = v13;
    swift_beginAccess();
    CachedEnvironment.animatedPosition(for:)(&v30);
    swift_endAccess();
    v14 = AGCreateWeakAttribute();
    LODWORD(v10) = v14;
    v15 = HIDWORD(v14);
    v30 = *v11;
    v16 = *(v11 + 16);
    v32 = *(v11 + 24);
    v33 = *(v11 + 40);
    v34[0] = *(v11 + 56);
    *(v34 + 12) = *(v11 + 68);
    v31 = v16;
    swift_beginAccess();
    CachedEnvironment.animatedSize(for:)(&v30);
    swift_endAccess();
    v17 = AGCreateWeakAttribute();
    LODWORD(v13) = v17;
    v18 = HIDWORD(v17);
    v19 = AGCreateWeakAttribute();
    v20 = v19;
    v21 = HIDWORD(v19);
    v22 = a5(0, a3, a4);
    v23 = AGCreateWeakAttribute();
    LODWORD(v30) = *(v16 + 16);
    *(&v30 + 1) = v22;
    v31 = a6;
    *&v32 = v23;
    *(&v32 + 1) = v26;
    *&v33 = __PAIR64__(v15, v10);
    *(&v33 + 1) = __PAIR64__(v18, v13);
    *&v34[0] = __PAIR64__(v21, v20);
    BYTE8(v34[0]) = a2 & 1;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ContainerShapeEnvironment and conformance ContainerShapeEnvironment();
    v24 = Attribute.init<A>(body:value:flags:update:)();
    return _GraphInputs.environment.setter(v24);
  }

  return v25;
}

uint64_t _ContainerCornerReadableShapeModifier.shape.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _CornerConfigurationToRoundedRectangularShape(0, a1[2], a1[3], a1[4]);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t _ContainerCornerReadableShapeModifier.shape.setter(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for _CornerConfigurationToRoundedRectangularShape(0, a2[2], a2[3], a2[4]);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

void *static _ContainerCornerReadableShapeModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a2[3];
  v12 = a2[1];
  v39 = a2[2];
  v40 = v11;
  v13 = a2[3];
  v41 = a2[4];
  v14 = a2[1];
  v37 = *a2;
  v38 = v14;
  v33 = v39;
  v34 = v13;
  v35 = a2[4];
  v15 = *a1;
  v42 = *(a2 + 20);
  v36 = *(a2 + 20);
  v31 = v37;
  v32 = v12;
  v16 = type metadata accessor for _CornerConfigurationToRoundedRectangularShape(0, a5, a6, a7);
  LODWORD(v44[0]) = v15;
  outlined init with copy of _ViewInputs(&v37, &v48);
  v17 = type metadata accessor for _ContainerCornerReadableShapeModifier(255, a5, a6, a7);
  type metadata accessor for _GraphValue(0, v17, v18, v19);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _ContainerCornerReadableShapeModifier._makeView(modifier:inputs:body:), v16, &v25);
  v48 = v37;
  v49 = v38;
  v50 = v39;
  outlined init with copy of _GraphInputs(&v37, v46);
  swift_getWitnessTable(protocol conformance descriptor for _CornerConfigurationToRoundedRectangularShape<A>, v16);
  v21 = static Animatable.makeAnimatable(value:inputs:)(&v25, &v48, v16, v20);
  v43[0] = v48;
  v43[1] = v49;
  v43[2] = v50;
  outlined destroy of _GraphInputs(v43);
  swift_getWitnessTable(protocol conformance descriptor for _CornerConfigurationToRoundedRectangularShape<A>, v16);
  _ViewInputs.setContainerShape<A>(_:isSystemShape:)(v21, 0, v16, v22);
  v44[2] = v33;
  v44[3] = v34;
  v44[4] = v35;
  v45 = v36;
  v44[0] = v31;
  v44[1] = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v25 = v31;
  v26 = v32;
  v23 = outlined init with copy of _ViewInputs(v44, &v48);
  a3(v23, &v25);
  v46[2] = v27;
  v46[3] = v28;
  v46[4] = v29;
  v47 = v30;
  v46[0] = v25;
  v46[1] = v26;
  outlined destroy of _ViewInputs(v46);
  v50 = v33;
  v51 = v34;
  v52 = v35;
  v53 = v36;
  v48 = v31;
  v49 = v32;
  return outlined destroy of _ViewInputs(&v48);
}

uint64_t closure #1 in static _ContainerCornerReadableShapeModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[2] = type metadata accessor for _ContainerCornerReadableShapeModifier(0, a2, a3, a4);
  v12 = type metadata accessor for _CornerConfigurationToRoundedRectangularShape(0, a2, a3, a4);
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v11, v12, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v13;
}

uint64_t ContainerShapeTransform.init(transform:position:size:id:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 4) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = v5;
  return result;
}

void *ContainerShapeContext.init(id:position:size:childTransform:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = *result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

double ContainerShapeData.init(type:shape:context:isSystemShape:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v6;
  *(a6 + 32) = *(a4 + 1);
  result = *(a4 + 3);
  *(a6 + 48) = result;
  *(a6 + 56) = a5;
  return result;
}

uint64_t ContainerShapeData.type.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

double ContainerShapeData.context.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 24);
  *(a1 + 8) = *(v1 + 32);
  result = *(v1 + 48);
  *(a1 + 24) = result;
  return result;
}

double ContainerShapeData.context.setter(uint64_t a1)
{
  *(v1 + 24) = *a1;
  *(v1 + 32) = *(a1 + 8);
  result = *(a1 + 24);
  *(v1 + 48) = result;
  return result;
}

double static ContainerShapeType.corners(in:proxy:shape:context:corners:uniformity:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double static ContainerShapeType.corners(in:shape:context:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double static ContainerCornerShapeType.path(in:proxy:shape:context:)@<D0>(uint64_t a6@<X8>)
{
  static ContainerShapeType.path(in:proxy:shape:context:)();
  result = *&v12;
  *a6 = v12;
  *(a6 + 16) = v13;
  *(a6 + 32) = v14;
  return result;
}

double static ContainerCornerShapeType.corners(in:proxy:shape:context:corners:uniformity:)@<D0>(uint64_t a8@<X8>)
{
  AGWeakAttributeGetAttribute();
  AGGraphWithUpdate();
  result = 0.0;
  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 1;
  return result;
}

double *closure #1 in static ContainerCornerShapeType.corners(in:proxy:shape:context:corners:uniformity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, int8x16_t *a13, uint64_t a14, uint64_t a15)
{
  *&v89 = a7;
  *&v88 = a6;
  v24 = *(a14 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v28 = *result;
    v29 = result[1];
    result = AGGraphGetWeakValue();
    if (result)
    {
      v85.f64[0] = v24;
      (*(*&v24 + 16))(v26, result, a14);
      (*(a15 + 16))(v91, COERCE_DOUBLE(*&v28), COERCE_DOUBLE(*&v29), 0, a14, a15);
      if (_s7SwiftUI30RoundedRectangularShapeCornersVSgWOg(v91) == 1)
      {
        return (*(*&v85.f64[0] + 8))(v26, a14);
      }

      else
      {
        v84 = a13;
        v92[12] = v91[12];
        v92[13] = v91[13];
        v92[14] = v91[14];
        v92[15] = v91[15];
        v92[8] = v91[8];
        v92[9] = v91[9];
        v92[10] = v91[10];
        v92[11] = v91[11];
        v92[4] = v91[4];
        v92[5] = v91[5];
        v92[6] = v91[6];
        v92[7] = v91[7];
        v92[0] = v91[0];
        v92[1] = v91[1];
        v92[2] = v91[2];
        v92[3] = v91[3];
        v90[0] = a1;
        v90[1] = a2;
        v90[2] = a3;
        v90[3] = a4;
        v30 = ContainerShapeContext.convert(_:to:)(v88, a9, a10, a11, a12);
        v32 = v31;
        v34 = v33;
        v36 = v35;
        LOBYTE(v90[0]) = 0;
        v37 = v89;
        closure #1 in closure #1 in static ContainerCornerShapeType.corners(in:proxy:shape:context:corners:uniformity:)(v90, v92, v89, 0.0, 0.0, v28, v29, v30, v31, v33, v35);
        v87 = v38;
        LOBYTE(v90[0]) = 2;
        closure #1 in closure #1 in static ContainerCornerShapeType.corners(in:proxy:shape:context:corners:uniformity:)(v90, v92, v37, 0.0, 0.0, v28, v29, v30, v32, v34, v36);
        v88 = v39;
        LOBYTE(v90[0]) = 3;
        closure #1 in closure #1 in static ContainerCornerShapeType.corners(in:proxy:shape:context:corners:uniformity:)(v90, v92, v37, 0.0, 0.0, v28, v29, v30, v32, v34, v36);
        v86 = v40;
        LOBYTE(v90[0]) = 1;
        closure #1 in closure #1 in static ContainerCornerShapeType.corners(in:proxy:shape:context:corners:uniformity:)(v90, v92, v37, 0.0, 0.0, v28, v29, v30, v32, v34, v36);
        *&v42 = v41;
        v89 = v42;
        LOBYTE(v90[0]) = 0;
        *&v43 = closure #2 in closure #1 in static ContainerCornerShapeType.corners(in:proxy:shape:context:corners:uniformity:)(v90, a8, *&v87, v41, *&v86, *&v88);
        v82 = v43;
        LOBYTE(v90[0]) = 2;
        *&v44 = closure #2 in closure #1 in static ContainerCornerShapeType.corners(in:proxy:shape:context:corners:uniformity:)(v90, a8, *&v87, *&v89, *&v86, *&v88);
        v83 = v44;
        LOBYTE(v90[0]) = 3;
        *&v45 = closure #2 in closure #1 in static ContainerCornerShapeType.corners(in:proxy:shape:context:corners:uniformity:)(v90, a8, *&v87, *&v89, *&v86, *&v88);
        v81 = v45;
        LOBYTE(v90[0]) = 1;
        v46.f64[0] = closure #2 in closure #1 in static ContainerCornerShapeType.corners(in:proxy:shape:context:corners:uniformity:)(v90, a8, *&v87, *&v89, *&v86, *&v88);
        v80 = v46;
        v48 = *a8;
        v47 = *(a8 + 16);
        v49 = *(a8 + 8);
        v50 = *(a8 + 24);
        v52 = *(a8 + 96);
        v51 = *(a8 + 112);
        v53 = *(a8 + 104);
        v46.f64[0] = *(a8 + 120);
        v54 = *(*&v85.f64[0] + 8);
        v48.f64[1] = *(a8 + 32);
        v49.f64[1] = *(a8 + 40);
        v73 = v48;
        v74 = v49;
        v47.f64[1] = *(a8 + 48);
        v50.f64[1] = *(a8 + 56);
        v75 = v47;
        v76 = v50;
        v52.f64[1] = *(a8 + 64);
        v53.f64[1] = *(a8 + 72);
        v77 = v52;
        v78 = v53;
        v51.f64[1] = *(a8 + 80);
        v79 = v51;
        v46.f64[1] = *(a8 + 88);
        v85 = v46;
        result = v54(v26, a14);
        v55 = vdupq_lane_s64(v82, 0);
        *&v56.f64[0] = v87;
        *&v56.f64[1] = v89;
        v57 = vaddq_f64(v56, vmulq_f64(vsubq_f64(v55, v56), v73));
        v58 = vdupq_lane_s64(*&v80.f64[0], 0);
        v59 = vaddq_f64(v56, vmulq_f64(vsubq_f64(v58, v56), v74));
        v60 = vdupq_lane_s64(v83, 0);
        v61 = vaddq_f64(v56, vmulq_f64(vsubq_f64(v60, v56), v75));
        v62 = vdupq_lane_s64(v81, 0);
        v63 = vaddq_f64(v56, vmulq_f64(vsubq_f64(v62, v56), v76));
        v64 = vbslq_s8(vcgeq_f64(v59, v57), v59, v57);
        v65 = vbslq_s8(vcgeq_f64(v61, v64), v61, v64);
        *&v61.f64[0] = v86;
        *&v61.f64[1] = v88;
        v66 = vaddq_f64(v61, vmulq_f64(vsubq_f64(v55, v61), v77));
        v67 = vaddq_f64(v61, vmulq_f64(vsubq_f64(v58, v61), v78));
        v68 = vaddq_f64(v61, vmulq_f64(vsubq_f64(v60, v61), v79));
        v69 = vaddq_f64(v61, vmulq_f64(vsubq_f64(v62, v61), v85));
        v70 = vbslq_s8(vcgeq_f64(v67, v66), v67, v66);
        v71 = vbslq_s8(vcgeq_f64(v68, v70), v68, v70);
        v72 = v84;
        *v84 = vbslq_s8(vcgeq_f64(v63, v65), v63, v65);
        v72[1] = vbslq_s8(vcgeq_f64(v69, v71), v69, v71);
        v72[2].i8[0] = 0;
      }
    }
  }

  return result;
}

void static ContainerCornerShapeType.resolvedCornerRadius(shapeCorner:containerCornerStyle:containerFrame:shapeCornerStyle:shapeFrame:)(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12.origin.x = a5;
  v12.origin.y = a6;
  v12.size.width = a7;
  v12.size.height = a8;
  CGRectGetHeight(v12);
  v13.origin.x = a5;
  v13.origin.y = a6;
  v13.size.width = a7;
  v13.size.height = a8;
  CGRectGetWidth(v13);
}

double closure #2 in closure #1 in static ContainerCornerShapeType.corners(in:proxy:shape:context:corners:uniformity:)(_BYTE *a1, double *a2, double a3, double a4, double a5, double a6)
{
  v6 = 16;
  v7 = 8;
  v8 = a2 + 8;
  v9 = 88;
  v10 = 80;
  v11 = 72;
  if (*a1 == 2)
  {
    v12 = a6;
  }

  else
  {
    v11 = 104;
    v10 = 112;
    v9 = 120;
    v8 = a2 + 12;
    v12 = a5;
  }

  v13 = a2 + 4;
  v14 = 56;
  if (*a1)
  {
    v7 = 40;
    v6 = 48;
  }

  else
  {
    v14 = 24;
    v13 = a2;
  }

  if (*a1)
  {
    v15 = a4;
  }

  else
  {
    v15 = a3;
  }

  if (*a1 <= 1u)
  {
    v16 = v7;
  }

  else
  {
    v16 = v11;
  }

  if (*a1 <= 1u)
  {
    v17 = v6;
  }

  else
  {
    v17 = v10;
  }

  if (*a1 <= 1u)
  {
    v18 = v14;
  }

  else
  {
    v18 = v9;
  }

  if (*a1 <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v8;
  }

  if (*a1 <= 1u)
  {
    v12 = v15;
  }

  v20 = *(a2 + v18);
  v21 = *(a2 + v17);
  v22 = *(a2 + v16);
  if (*v19 == 1.0)
  {
    if (v20 == 1.0)
    {
      v23 = 15;
    }

    else
    {
      v23 = 7;
    }

    if (v20 == 1.0)
    {
      v24 = 11;
    }

    else
    {
      v24 = 3;
    }

    if (v21 != 1.0)
    {
      v23 = v24;
    }

    if (v20 == 1.0)
    {
      v25 = 13;
    }

    else
    {
      v25 = 5;
    }

    if (v20 == 1.0)
    {
      v26 = 9;
    }

    else
    {
      v26 = 1;
    }

    if (v21 != 1.0)
    {
      v25 = v26;
    }

    if (v22 != 1.0)
    {
      v23 = v25;
    }

    goto LABEL_50;
  }

  if (v22 != 1.0)
  {
    if (v21 != 1.0)
    {
      if (v20 != 1.0)
      {
        return v12;
      }

      v23 = 8;
      goto LABEL_50;
    }

    v27 = v20 == 1.0;
    v23 = 4;
    v28 = 12;
    goto LABEL_48;
  }

  if (v21 == 1.0)
  {
    v27 = v20 == 1.0;
    v23 = 6;
    v28 = 14;
LABEL_48:
    if (v27)
    {
      v23 = v28;
    }

    goto LABEL_50;
  }

  if (v20 != 1.0)
  {
    v23 = 2;
LABEL_50:
    if (v12 > a3)
    {
      a3 = v12;
    }

    if ((v23 & 1) == 0)
    {
      a3 = v12;
    }

    if ((v23 & 2) != 0 && a3 <= a4)
    {
      a3 = a4;
    }

    goto LABEL_57;
  }

  if (v12 > a4)
  {
    a3 = v12;
  }

  else
  {
    a3 = a4;
  }

  v23 = 10;
LABEL_57:
  if (a3 > a6)
  {
    v29 = a3;
  }

  else
  {
    v29 = a6;
  }

  if ((v23 & 4) != 0)
  {
    v12 = v29;
  }

  else
  {
    v12 = a3;
  }

  if ((v23 & 8) != 0 && v12 <= a5)
  {
    return a5;
  }

  return v12;
}

double protocol witness for static AnyContainerShapeType.path(in:proxy:shape:context:) in conformance ContainerCornerShapeType<A>@<D0>(uint64_t a5@<X8>)
{
  static ContainerCornerShapeType.path(in:proxy:shape:context:)(v12);
  result = *v12;
  v11 = v12[1];
  *a5 = v12[0];
  *(a5 + 16) = v11;
  *(a5 + 32) = v13;
  return result;
}

double protocol witness for static AnyContainerShapeType.corners(in:proxy:shape:context:corners:uniformity:) in conformance ContainerCornerShapeType<A>@<D0>(uint64_t a7@<X8>)
{
  static ContainerCornerShapeType.corners(in:proxy:shape:context:corners:uniformity:)(v14);
  result = *v14;
  v13 = v14[1];
  *a7 = v14[0];
  *(a7 + 16) = v13;
  *(a7 + 32) = v15;
  return result;
}

double protocol witness for Rule.value.getter in conformance ContainerShapeEnvironment@<D0>(Swift::UInt *a1@<X8>)
{
  v3 = *(v1 + 24);
  v8[0] = *(v1 + 8);
  v8[1] = v3;
  v9[0] = *(v1 + 40);
  *(v9 + 9) = *(v1 + 49);
  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = Value[1];
  *a1 = *Value;
  a1[1] = v5;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2B5(a1, v8);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014ContainerShapeK033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Ttg5(v6, *a1);
  }

  return result;
}

void ContainerShapeTransform.value.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  Value = AGGraphGetValue();
  v5 = *(Value + 8);
  v6 = *(Value + 16);
  v7 = *(Value + 24);
  v8 = *(Value + 32);
  v9 = *(Value + 40);
  *a1 = *Value;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  type metadata accessor for CGPoint(0);

  v10 = AGGraphGetValue();
  v11 = *v10;
  v12 = *(v10 + 8);
  *(a1 + 32) = v8 - (*v10 - v6);
  *(a1 + 40) = v9 - (v12 - v7);
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  v14 = v3;
  type metadata accessor for CGSize(0);
  v13 = AGGraphGetValue();
  ViewTransform.appendSizedSpace(id:size:)(&v14, *v13);
}

void (*EnvironmentValues.containerShape.modify(void *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[27] = v1;
  v5 = *v1;
  v3[28] = *v1;
  v6 = *(v1 + 8);
  v3[29] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014ContainerShapeI033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt1g5(v5, v4 + 8);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5(v5, (v3 + 16));
  }

  v4[30] = 0;
  return EnvironmentValues.containerShape.modify;
}

void EnvironmentValues.containerShape.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 29);
  v4 = *(*a1 + 27);
  v5 = *(*a1 + 9);
  if (a2)
  {
    *v2 = *(v2 + 8);
    *(v2 + 1) = v5;
    *(v2 + 2) = *(v2 + 10);
    *(v2 + 41) = *(v2 + 169);
    swift_retain_n();
    v6 = v4;
    v7 = v2;
  }

  else
  {
    *(v2 + 4) = *(v2 + 8);
    *(v2 + 5) = v5;
    *(v2 + 6) = *(v2 + 10);
    *(v2 + 105) = *(v2 + 169);
    swift_retain_n();
    v7 = v2 + 8;
    v6 = v4;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2B5(v6, v7);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014ContainerShapeK033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Ttg5(v2[28], *v2[27]);
  }

  free(v2);
}

uint64_t _GraphInputs.containerShape.getter()
{
  if (one-time initialization token for containerShape != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.containerShape;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, closure #1 in _GraphInputs.containerShape.getter, 0);
  swift_endAccess();
  return v1;
}

void static CornerMaskingConfiguration.CornerStyle.none.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
}

__n128 CornerMaskingConfiguration.init(topLeading:topTrailing:bottomLeading:bottomTrailing:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = a2[4];
  v10 = a2[6];
  v11 = *a3;
  v12 = a3[4];
  v13 = a3[6];
  v14 = a4->n128_u64[0];
  v15 = a4[2].n128_u64[0];
  v16 = a4[3].n128_u64[0];
  v5 = *(a1 + 8);
  v24 = *(a1 + 40);
  v21 = *(a2 + 8);
  v20 = *(a2 + 40);
  v23 = *(a3 + 8);
  v22 = *(a3 + 40);
  v19 = a4->n128_u8[8];
  v18 = a4[2].n128_u8[8];
  *a5 = *a1;
  *(a5 + 8) = v5;
  *(a5 + 16) = *(a1 + 16);
  *(a5 + 32) = v6;
  *(a5 + 40) = v24;
  *(a5 + 48) = v7;
  *(a5 + 56) = v11;
  *(a5 + 64) = v23;
  *(a5 + 72) = *(a3 + 1);
  *(a5 + 88) = v12;
  *(a5 + 96) = v22;
  *(a5 + 104) = v13;
  *(a5 + 112) = v8;
  *(a5 + 120) = v21;
  *(a5 + 128) = *(a2 + 1);
  *(a5 + 144) = v9;
  *(a5 + 152) = v20;
  *(a5 + 160) = v10;
  *(a5 + 168) = v14;
  *(a5 + 176) = v19;
  result = a4[1];
  *(a5 + 184) = result;
  *(a5 + 200) = v15;
  *(a5 + 208) = v18;
  *(a5 + 216) = v16;
  return result;
}

double CornerMaskingConfiguration.init(all:)@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = a1[2];
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 6);
  v8 = *(a1 + 8);
  v7 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = v8;
  *(a2 + 16) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  *(a2 + 48) = v6;
  *(a2 + 56) = v2;
  *(a2 + 64) = v8;
  *(a2 + 72) = result;
  *(a2 + 80) = v4;
  *(a2 + 88) = v5;
  *(a2 + 96) = v7;
  *(a2 + 104) = v6;
  *(a2 + 112) = v2;
  *(a2 + 120) = v8;
  *(a2 + 128) = result;
  *(a2 + 136) = v4;
  *(a2 + 144) = v5;
  *(a2 + 152) = v7;
  *(a2 + 160) = v6;
  *(a2 + 168) = v2;
  *(a2 + 176) = v8;
  *(a2 + 184) = result;
  *(a2 + 192) = v4;
  *(a2 + 200) = v5;
  *(a2 + 208) = v7;
  *(a2 + 216) = v6;
  return result;
}

void static CornerMaskingConfiguration.fixed(radius:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
}

void static CornerMaskingConfiguration.CornerStyle.fixed(radius:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

uint64_t *static CornerMaskingConfiguration.CornerStyle.containerConcentric(minimum:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  if ((result[7] & 1) != 0 || (v2 = *result, (result[1] & 1) == 0))
  {
    v4 = 0;
    v3 = v2;
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v3;
  *(a2 + 24) = 0x3FF0000000000000;
  *(a2 + 32) = v2;
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  return result;
}

void static CornerMaskingConfiguration.none.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
}

double CornerMaskingConfiguration.subscript.getter@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 > 1)
  {
    v9 = v3 == 2;
    v11 = (v2 + 104);
    v8 = (v2 + 56);
    v10 = (v2 + 96);
    v7 = (v2 + 88);
    v6 = (v2 + 80);
    v5 = (v2 + 72);
    v4 = (v2 + 64);
    if (!v9)
    {
      v8 = (v2 + 168);
      v4 = (v2 + 176);
      v5 = (v2 + 184);
      v6 = (v2 + 192);
      v7 = (v2 + 200);
      v10 = (v2 + 208);
      v11 = (v2 + 216);
    }
  }

  else
  {
    v4 = (v2 + 8);
    v5 = (v2 + 16);
    v6 = (v2 + 24);
    v7 = (v2 + 32);
    v8 = (v2 + 112);
    if (*a1)
    {
      v4 = (v2 + 120);
    }

    else
    {
      v8 = v2;
    }

    if (*a1)
    {
      v5 = (v2 + 128);
      v6 = (v2 + 136);
      v7 = (v2 + 144);
    }

    v9 = v3 == 0;
    if (*a1)
    {
      v10 = (v2 + 152);
    }

    else
    {
      v10 = (v2 + 40);
    }

    if (v9)
    {
      v11 = (v2 + 48);
    }

    else
    {
      v11 = (v2 + 160);
    }
  }

  result = *v11;
  v13 = *v10;
  v14 = *v7;
  v15 = *v6;
  v16 = *v5;
  v17 = *v4;
  *a2 = *v8;
  *(a2 + 8) = v17;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v14;
  *(a2 + 40) = v13;
  *(a2 + 48) = result;
  return result;
}