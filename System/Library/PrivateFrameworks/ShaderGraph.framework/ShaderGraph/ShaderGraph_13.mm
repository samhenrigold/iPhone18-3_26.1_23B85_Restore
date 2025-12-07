unint64_t *_s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSaySiG_Tt3g5(unint64_t *result, uint64_t a2, int64_t a3, char a4, int64_t a5)
{
  v6 = result;
  v7 = *(a2 + 16);
  if (v7 < 0x10)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v8 = ceil(v7 / 0.75);
  if (v8 == INFINITY)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  if ((v7 + 1) > v8)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = 64 - __clz(v9 - 1);
LABEL_10:
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v10 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v10;
  }

  if (v12 > 4)
  {
    v13 = specialized _HashTable.init(scale:reservedScale:)(v12, a5);
    specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(&v29, a2, v13 + 2, (v13 + 4));
    result = v13;
    *v6 = v29;
  }

  else
  {
    if (v7 >= 2)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 16), 0, MEMORY[0x277D84F90]);
      v15 = 0;
      v16 = a2 + 32;
      do
      {
        v17 = 0;
        v18 = v15++;
        v19 = *(v16 + 8 * v18);
        v20 = *(v14 + 2);
        while (v20 != v17)
        {
          v21 = &v14[8 * v17++];
          if (*(v21 + 4) == v19)
          {

            result = 0;
            *v6 = v18;
            return result;
          }
        }

        v22 = *(v14 + 3);
        v23 = v20 + 1;
        if (v20 >= v22 >> 1)
        {
          v27 = v19;
          v28 = v16;
          v25 = *(v14 + 2);
          v26 = v15;
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v20 + 1, 1, v14);
          v20 = v25;
          v15 = v26;
          v19 = v27;
          v16 = v28;
          v14 = v24;
        }

        *(v14 + 2) = v23;
        *&v14[8 * v20 + 32] = v19;
      }

      while (v15 != v7);
    }

    result = 0;
    *v6 = v7;
  }

  return result;
}

unint64_t *_s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm(unint64_t *result, uint64_t a2, int64_t a3, char a4, int64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t (*a8)(uint64_t, void *, uint64_t))
{
  v41 = a7;
  v42 = a8;
  v9 = result;
  v10 = 0;
  v11 = *(a2 + 16);
  if (v11 < 0x10)
  {
    goto LABEL_9;
  }

  v12 = ceil(v11 / 0.75);
  if (v12 == INFINITY)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  if ((v11 + 1) > v12)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v12;
  }

  v10 = 64 - __clz(v13 - 1);
LABEL_9:
  if (a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  if (v10 <= v14)
  {
    v10 = v14;
  }

  if (v10 <= a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = v10;
  }

  if (v15 > 4)
  {
    v16 = specialized _HashTable.init(scale:reservedScale:)(v15, a5);
    specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(v46, a2, v16 + 2, (v16 + 4));
    result = v16;
    *v9 = v46[0];
  }

  else if (v11 >= 2)
  {
    v39 = v9;
    v38 = a6;
    v17 = (a6)(0, v11, 0, MEMORY[0x277D84F90]);
    v18 = v17;
    v19 = 0;
    v45 = 0;
    v20 = (a2 + 80);
    v40 = v11;
    while (1)
    {
      v44 = &v38;
      v21 = *(v20 - 5);
      v22 = *(v20 - 4);
      v23 = *(v20 - 3);
      v24 = *(v20 - 2);
      v25 = *(v20 - 8);
      v26 = *v20;
      v43 = *(v20 - 6);
      v46[0] = v43;
      v46[1] = v21;
      v46[2] = v22;
      v46[3] = v23;
      v46[4] = v24;
      v47 = v25;
      v48 = v26;
      MEMORY[0x28223BE20](v17);
      v37[2] = v46;

      v27 = v18;
      v28 = v18;
      v29 = v45;
      if (v42(v41, v37, v27))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v28;
      v45 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = (v38)(0, *(v28 + 16) + 1, 1);
      }

      v44 = v22;
      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      v18 = v31;
      if (v33 >= v32 >> 1)
      {
        v18 = v38(v32 > 1);
      }

      ++v19;
      v20 += 7;

      *(v18 + 16) = v33 + 1;
      v34 = v18 + 56 * v33;
      v35 = v44;
      *(v34 + 32) = v43;
      *(v34 + 40) = v21;
      *(v34 + 48) = v35;
      *(v34 + 56) = v23;
      *(v34 + 64) = v24;
      *(v34 + 72) = v25;
      *(v34 + 80) = v26;
      v36 = v40;
      if (v40 == v19)
      {

        result = 0;
        *v39 = v36;
        return result;
      }
    }

    result = 0;
    *v39 = v19;
  }

  else
  {
    result = 0;
    *v9 = v11;
  }

  return result;
}

unint64_t *_s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA5InputVG_Tt3g5(unint64_t *result, uint64_t a2, int64_t a3, char a4, int64_t a5)
{
  v6 = result;
  v7 = 0;
  v8 = *(a2 + 16);
  if (v8 < 0x10)
  {
    goto LABEL_9;
  }

  v9 = ceil(v8 / 0.75);
  if (v9 == INFINITY)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  if ((v8 + 1) > v9)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  v7 = 64 - __clz(v10 - 1);
LABEL_9:
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  if (v7 <= v11)
  {
    v7 = v11;
  }

  if (v7 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v7;
  }

  if (v12 > 4)
  {
    v13 = specialized _HashTable.init(scale:reservedScale:)(v12, a5);
    specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(v41, a2, v13 + 2, (v13 + 4));
    result = v13;
    *v6 = v41[0];
  }

  else if (v8 >= 2)
  {
    v36 = v6;
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0, MEMORY[0x277D84F90]);
    v15 = v14;
    v16 = 0;
    v40 = 0;
    v17 = (a2 + 80);
    v37 = v8;
    while (1)
    {
      v39 = &v35;
      v18 = *(v17 - 5);
      v20 = *(v17 - 4);
      v19 = *(v17 - 3);
      v21 = *(v17 - 2);
      v22 = *(v17 - 8);
      v23 = *v17;
      v38 = *(v17 - 6);
      v41[0] = v38;
      v41[1] = v18;
      v41[2] = v20;
      v41[3] = v19;
      v41[4] = v21;
      v42 = v22;
      v43 = v23;
      MEMORY[0x28223BE20](v14);
      v34[2] = v41;

      v24 = v15;
      v25 = v15;
      v26 = v40;
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v34, v24))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v25;
      v40 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v39 = v20;
      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      v15 = v28;
      if (v30 >= v29 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
      }

      ++v16;
      v17 += 7;

      *(v15 + 2) = v30 + 1;
      v31 = &v15[56 * v30];
      v32 = v39;
      *(v31 + 4) = v38;
      *(v31 + 5) = v18;
      *(v31 + 6) = v32;
      *(v31 + 7) = v19;
      *(v31 + 8) = v21;
      v31[72] = v22;
      *(v31 + 10) = v23;
      v33 = v37;
      if (v37 == v16)
      {

        result = 0;
        *v36 = v33;
        return result;
      }
    }

    result = 0;
    *v36 = v16;
  }

  else
  {
    result = 0;
    *v6 = v8;
  }

  return result;
}

unint64_t *_s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSaySOG_Tt3g5(unint64_t *result, uint64_t a2, int64_t a3, char a4, int64_t a5)
{
  v6 = result;
  v7 = *(a2 + 16);
  if (v7 < 0x10)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v8 = ceil(v7 / 0.75);
  if (v8 == INFINITY)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  if ((v7 + 1) > v8)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = 64 - __clz(v9 - 1);
LABEL_10:
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v10 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v10;
  }

  if (v12 > 4)
  {
    v13 = specialized _HashTable.init(scale:reservedScale:)(v12, a5);
    specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(&v29, a2, v13 + 2, (v13 + 4));
    result = v13;
    *v6 = v29;
  }

  else
  {
    if (v7 >= 2)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 16), 0, MEMORY[0x277D84F90]);
      v15 = 0;
      v16 = a2 + 32;
      do
      {
        v17 = 0;
        v18 = v15++;
        v19 = *(v16 + 8 * v18);
        v20 = *(v14 + 2);
        while (v20 != v17)
        {
          v21 = &v14[8 * v17++];
          if (*(v21 + 4) == v19)
          {

            result = 0;
            *v6 = v18;
            return result;
          }
        }

        v22 = *(v14 + 3);
        v23 = v20 + 1;
        if (v20 >= v22 >> 1)
        {
          v27 = v19;
          v28 = v16;
          v25 = *(v14 + 2);
          v26 = v15;
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v20 + 1, 1, v14);
          v20 = v25;
          v15 = v26;
          v19 = v27;
          v16 = v28;
          v14 = v24;
        }

        *(v14 + 2) = v23;
        *&v14[8 * v20 + 32] = v19;
      }

      while (v15 != v7);
    }

    result = 0;
    *v6 = v7;
  }

  return result;
}

uint64_t _s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm(unint64_t *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v31 = a8;
  LOBYTE(v11) = a4;
  v15 = (a2 >> 62);
  if (a2 >> 62)
  {
LABEL_38:
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = specialized static _HashTable.scale(forCapacity:)(v16);
  if (v11)
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  if (v17 > v18)
  {
    v18 = v17;
  }

  if (v18 <= a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = v18;
  }

  if (v19 > 4)
  {
    v21 = specialized _HashTable.init(scale:reservedScale:)(v19, a5);
    specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(&v33, a2, (v21 + 16), v21 + 32, a6);
    result = v21;
    v20 = v33;
LABEL_19:
    *a1 = v20;
    return result;
  }

  if (!v15)
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 >= 2)
    {
      v33 = MEMORY[0x277D84F90];
      a6 = &v33;
      specialized Array.reserveCapacity(_:)(v20);
      a3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (__CocoaSet.count.getter() < 2)
  {
    v20 = __CocoaSet.count.getter();
LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  v33 = MEMORY[0x277D84F90];
  v23 = __CocoaSet.count.getter();
  a6 = &v33;
  specialized Array.reserveCapacity(_:)(v23);
  result = __CocoaSet.count.getter();
  a3 = result;
  if (result < 0)
  {
    __break(1u);
    return result;
  }

LABEL_21:
  v29 = v15;
  v30 = a1;
  if (a3)
  {
    v11 = 0;
    a5 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x266772030](v11, a2);
      }

      else
      {
        if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }

        v24 = *(a2 + 8 * v11 + 32);
      }

      v25 = v24;
      a1 = v28;
      v32 = v24;
      v26 = MEMORY[0x28223BE20](v24);
      if ((v31)(a7, v26))
      {

        result = 0;
        *v30 = v11;
        return result;
      }

      v15 = v25;
      a6 = &v33;
      MEMORY[0x266771770]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28[1] = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v11;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (a3 != v11);
  }

  if (v29)
  {
    v27 = __CocoaSet.count.getter();
  }

  else
  {
    v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = 0;
  *v30 = v27;
  return result;
}

void UserGraph.createSubgraph(labeled:inputs:outputs:)(void *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v7 = *(v5 + 72);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 72) = v8;

    specialized UserGraph.init(id:label:inputs:outputs:)(v8, result, a2, a3, a4, v18);
    v13 = v19[0];
    a5[8] = v18[8];
    a5[9] = v13;
    *(a5 + 153) = *(v19 + 9);
    v14 = v18[5];
    a5[4] = v18[4];
    a5[5] = v14;
    v15 = v18[7];
    a5[6] = v18[6];
    a5[7] = v15;
    v16 = v18[1];
    *a5 = v18[0];
    a5[1] = v16;
    v17 = v18[3];
    a5[2] = v18[2];
    a5[3] = v17;
  }
}

__n128 UserGraph.init(label:inputs:outputs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  specialized UserGraph.init(id:label:inputs:outputs:)(0, a1, a2, a3, a4, v11);
  v6 = v12[0];
  *(a5 + 128) = v11[8];
  *(a5 + 144) = v6;
  *(a5 + 153) = *(v12 + 9);
  v7 = v11[5];
  *(a5 + 64) = v11[4];
  *(a5 + 80) = v7;
  v8 = v11[7];
  *(a5 + 96) = v11[6];
  *(a5 + 112) = v8;
  v9 = v11[1];
  *a5 = v11[0];
  *(a5 + 16) = v9;
  result = v11[3];
  *(a5 + 32) = v11[2];
  *(a5 + 48) = result;
  return result;
}

unint64_t UserGraph.node(withID:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == -7)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
LABEL_6:
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v8;
    *(a2 + 40) = v7;
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v2 + 64);
    if (*(v9 + 16) > result)
    {
      v10 = v9 + 48 * result;
      v4 = *(v10 + 32);
      v5 = *(v10 + 40);
      v6 = *(v10 + 48);
      v11 = *(v10 + 56);
      v7 = *(v10 + 72);
      outlined copy of NodePersonality(v4);

      v8 = v11;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

double ShaderGraphNode.input(labeled:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized ShaderGraphNode.input(labeled:)(a1, a2, *(v3 + 8), v7);
  v5 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v5;
  result = *&v8;
  *(a3 + 32) = v8;
  *(a3 + 48) = v9;
  return result;
}

__n128 Edge.init(from:to:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *v6 = *(a1 + 48);
  v5 = *(a1 + 16);
  *&v6[8] = *a2;
  v3 = *(a1 + 32);
  *&v6[24] = *(a2 + 16);
  *&v6[40] = *(a2 + 32);
  *&v6[56] = *(a2 + 48);
  *a3 = *a1;
  a3[1] = v5;
  result = *&v6[32];
  a3[5] = *&v6[32];
  a3[6] = *&v6[48];
  a3[3] = *v6;
  a3[4] = *&v6[16];
  a3[2] = v3;
  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  v9 = *a1;
  MEMORY[0x266772770](*a1);
  v35 = a1[1];
  (*(*v35 + 120))(v37);
  v33 = a1[3];
  v34 = a1[2];
  String.hash(into:)();
  v10 = a1[4];
  v31 = *(a1 + 40);
  if (v31 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v10);
  }

  v32 = a1[6];
  MEMORY[0x266772770]();
  result = Hasher._finalize()();
  v12 = 1 << *a4;
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
    return result;
  }

  v15 = _HashTable.UnsafeHandle.startFind(_:)(v37, v14 & result, a4, a5);
  if (v16)
  {
    return v15;
  }

  while (1)
  {
    v17 = a2 + 56 * v15;
    if (*v17 != v9)
    {
      goto LABEL_26;
    }

    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v36 = *(v17 + 32);
    v20 = *(v17 + 40);
    v21 = *(v17 + 48);
    v22 = *(**(v17 + 8) + 128);

    if ((v22(v35) & 1) == 0)
    {

      goto LABEL_26;
    }

    if (v18 == v34 && v19 == v33)
    {

      if (v20)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        goto LABEL_26;
      }

      if (v20)
      {
LABEL_14:
        v25 = v31;
        if (v21 != v32)
        {
          v25 = 0;
        }

        if (v25)
        {
          return v15;
        }

        goto LABEL_26;
      }
    }

    v26 = v31 ^ 1;
    if (v36 != v10)
    {
      v26 = 0;
    }

    if (v26 == 1 && v21 == v32)
    {
      return v15;
    }

LABEL_26:
    _HashTable.BucketIterator.advance()();
    if (!v38)
    {
      return 0;
    }

    v28 = -1 << *v37[0];
    v29 = (v28 ^ ~v38) + (*(v37[0] + 8) >> 6);
    if (v29 >= ~v28)
    {
      v30 = ~v28;
    }

    else
    {
      v30 = 0;
    }

    v15 = v29 - v30;
  }
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = 1 << *a5;
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = _HashTable.UnsafeHandle.startFind(_:)(&v25, v14 & result, a5, a6);
    v16 = v15;
    if ((v17 & 1) == 0)
    {
      v18 = (a3 + 16 * v15);
      v19 = *v18 == a1 && v18[1] == a2;
      if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        while (1)
        {
          _HashTable.BucketIterator.advance()();
          if (!v26)
          {
            break;
          }

          v20 = -1 << *v25;
          v21 = (v20 ^ ~v26) + (v25[1] >> 6);
          if (v21 >= ~v20)
          {
            v22 = ~v20;
          }

          else
          {
            v22 = 0;
          }

          v16 = v21 - v22;
          v23 = (a3 + 16 * (v21 - v22));
          v24 = *v23 == a1 && v23[1] == a2;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v16;
          }
        }

        return 0;
      }
    }

    return v16;
  }

  return result;
}

{
  Hasher.init(_seed:)();
  MEMORY[0x2667727B0](a1);
  String.hash(into:)();
  result = Hasher._finalize()();
  v13 = 1 << *a5;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = _HashTable.UnsafeHandle.startFind(_:)(&v26, v15 & result, a5, a6);
    v17 = v16;
    if ((v18 & 1) == 0)
    {
      v19 = *(a4 + 16);
      if (v16 >= v19)
      {
LABEL_16:
        __break(1u);
      }

      else
      {
        v20 = a4 + 32;
        while (1)
        {
          v21 = (v20 + 24 * v17);
          if (*v21 == a1)
          {
            v22 = v21[1] == a2 && v21[2] == a3;
            if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }
          }

          _HashTable.BucketIterator.advance()();
          if (!v27)
          {
            return 0;
          }

          v23 = -1 << *v26;
          v24 = (v23 ^ ~v27) + (v26[1] >> 6);
          if (v24 >= ~v23)
          {
            v25 = ~v23;
          }

          else
          {
            v25 = 0;
          }

          v17 = v24 - v25;
          if (v24 - v25 >= v19)
          {
            goto LABEL_16;
          }
        }
      }
    }

    return v17;
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    Hasher._combine(_:)(1u);
    v10 = v9;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v12 = 1 << *a4;
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
    return result;
  }

  v15 = _HashTable.UnsafeHandle.startFind(_:)(&v25, v14 & result, a4, a5);
  if (v16)
  {
    return v15;
  }

  while (1)
  {
    outlined init with copy of [Input](a2 + 8 * v15, v24, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    v17 = swift_unknownObjectWeakLoadStrong();
    v18 = swift_unknownObjectWeakLoadStrong();
    v19 = v18;
    if (!v17)
    {
      outlined destroy of [Input](v24, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
      if (!v19)
      {
        return v15;
      }

      goto LABEL_13;
    }

    if (!v18)
    {
      outlined destroy of [Input](v24, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
      v19 = v17;
LABEL_13:

      goto LABEL_14;
    }

    type metadata accessor for SGEdge();
    v20 = static NSObject.== infix(_:_:)();
    outlined destroy of [Input](v24, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);

    if (v20)
    {
      return v15;
    }

LABEL_14:
    _HashTable.BucketIterator.advance()();
    if (!v26)
    {
      return 0;
    }

    v21 = -1 << *v25;
    v22 = (v21 ^ ~v26) + (v25[1] >> 6);
    if (v22 >= ~v21)
    {
      v23 = ~v21;
    }

    else
    {
      v23 = 0;
    }

    v15 = v22 - v23;
  }
}

unint64_t specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *a4;
  result = MEMORY[0x266772750](*a4, a1, a3);
  if (__OFSUB__(1 << v9, 1))
  {
    __break(1u);
  }

  else
  {
    result = _HashTable.UnsafeHandle.startFind(_:)(&v15, ((1 << v9) - 1) & result, a4, a5);
    if ((v11 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      while (1)
      {
        _HashTable.BucketIterator.advance()();
        if (!v16)
        {
          break;
        }

        v12 = -1 << *v15;
        v13 = (v12 ^ ~v16) + (v15[1] >> 6);
        if (v13 >= ~v12)
        {
          v14 = ~v12;
        }

        else
        {
          v14 = 0;
        }

        result = v13 - v14;
        if (*(a2 + 8 * (v13 - v14)) == a1)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

{
  v9 = *a4;
  result = MEMORY[0x266772750](*a4, a1, a3);
  if (__OFSUB__(1 << v9, 1))
  {
    __break(1u);
  }

  else
  {
    result = _HashTable.UnsafeHandle.startFind(_:)(&v15, ((1 << v9) - 1) & result, a4, a5);
    if ((v11 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      while (1)
      {
        _HashTable.BucketIterator.advance()();
        if (!v16)
        {
          break;
        }

        v12 = -1 << *v15;
        v13 = (v12 ^ ~v16) + (v15[1] >> 6);
        if (v13 >= ~v12)
        {
          v14 = ~v12;
        }

        else
        {
          v14 = 0;
        }

        result = v13 - v14;
        if (*(a2 + 8 * (v13 - v14)) == a1)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  result = Hasher._finalize()();
  v10 = 1 << *a4;
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    result = _HashTable.UnsafeHandle.startFind(_:)(&v17, v12 & result, a4, a5);
    if ((v13 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      while (1)
      {
        _HashTable.BucketIterator.advance()();
        if (!v18)
        {
          break;
        }

        v14 = -1 << *v17;
        v15 = (v14 ^ ~v18) + (v17[1] >> 6);
        if (v15 >= ~v14)
        {
          v16 = ~v14;
        }

        else
        {
          v16 = 0;
        }

        result = v15 - v16;
        if (*(a2 + 8 * (v15 - v16)) == a1)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4, uint64_t a5)
{
  result = NSObject._rawHashValue(seed:)(*a4);
  v9 = 1 << *a4;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = _HashTable.UnsafeHandle.startFind(_:)(&v21, v11 & result, a4, a5);
    if ((v13 & 1) == 0)
    {
      type metadata accessor for SGNode();
      v14 = *(a2 + 8 * v12);
      v15 = static NSObject.== infix(_:_:)();

      if ((v15 & 1) == 0)
      {
        while (1)
        {
          _HashTable.BucketIterator.advance()();
          if (!v22)
          {
            break;
          }

          v16 = -1 << *v21;
          v17 = (v16 ^ ~v22) + (v21[1] >> 6);
          if (v17 >= ~v16)
          {
            v18 = ~v16;
          }

          else
          {
            v18 = 0;
          }

          v12 = v17 - v18;
          v19 = *(a2 + 8 * (v17 - v18));
          v20 = static NSObject.== infix(_:_:)();

          if (v20)
          {
            return v12;
          }
        }

        return 0;
      }
    }

    return v12;
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a3 & 1);
  String.hash(into:)();
  result = Hasher._finalize()();
  v14 = 1 << *a6;
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
    return result;
  }

  v17 = _HashTable.UnsafeHandle.startFind(_:)(&v24, v16 & result, a6, a7);
  if (v18)
  {
    return v17;
  }

  while (1)
  {
    v19 = a4 + 24 * v17;
    if (*(v19 + 16))
    {
      if ((a3 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (a3)
    {
      goto LABEL_12;
    }

    v20 = *v19 == a1 && *(v19 + 8) == a2;
    if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v17;
    }

LABEL_12:
    _HashTable.BucketIterator.advance()();
    if (!v25)
    {
      return 0;
    }

    v21 = -1 << *v24;
    v22 = (v21 ^ ~v25) + (v24[1] >> 6);
    if (v22 >= ~v21)
    {
      v23 = ~v21;
    }

    else
    {
      v23 = 0;
    }

    v17 = v22 - v23;
  }
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  Hasher.init(_seed:)();
  MEMORY[0x2667727B0](a1);
  String.hash(into:)();
  result = Hasher._finalize()();
  v14 = 1 << *a6;
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = _HashTable.UnsafeHandle.startFind(_:)(&v24, v16 & result, a6, a7);
    if ((v18 & 1) == 0)
    {
      while (1)
      {
        v19 = (a4 + 24 * v17);
        if (*v19 == a1)
        {
          v20 = v19[1] == a2 && v19[2] == a3;
          if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        _HashTable.BucketIterator.advance()();
        if (!v25)
        {
          return 0;
        }

        v21 = -1 << *v24;
        v22 = (v21 ^ ~v25) + (v24[1] >> 6);
        if (v22 >= ~v21)
        {
          v23 = ~v21;
        }

        else
        {
          v23 = 0;
        }

        v17 = v22 - v23;
      }
    }

    return v17;
  }

  return result;
}

uint64_t specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(uint64_t result, void *a2, uint64_t a3)
{
  v38 = *(result + 16);
  if (!v38)
  {
    return result;
  }

  v5 = 0;
  v37 = result + 32;
  while (1)
  {
    v39 = v5;
    v6 = (v37 + 56 * v5);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[4];
    v10 = *(v6 + 40);
    v11 = v6[6];
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v7);
    (*(*v8 + 120))(v40);
    String.hash(into:)();
    if (v10 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v9);
    }

    MEMORY[0x266772770](v11);
    v12 = Hasher._finalize()();
    v13 = 1 << *a2;
    v14 = __OFSUB__(v13, 1);
    v15 = v13 - 1;
    if (v14)
    {
      goto LABEL_42;
    }

    v16 = v15 & v12;
    v17 = _HashTable.UnsafeHandle._startIterator(bucket:)(v15 & v12, a2, a3);
    v40[0] = a2;
    v40[1] = a3;
    v41 = v16;
    v42 = v17;
    v43 = v18;
    v44 = v19;
    v45 = 0;
    if (v17)
    {
      break;
    }

LABEL_4:
    result = _HashTable.BucketIterator.currentValue.setter(v39, 0);
    v5 = v39 + 1;
    if (v39 + 1 == v38)
    {
      return result;
    }
  }

  v20 = 0;
  v21 = *a2 & 0x3FLL;
  v22 = 1 << *a2;
  v23 = v21 << *a2;
  v24 = v23 + 64;
  v25 = __OFADD__(v23, 64);
  v27 = v24 - 1;
  v26 = v24 < 1;
  v28 = v24 + 62;
  if (!v26)
  {
    v28 = v27;
  }

  v29 = v28 >> 6;
  while (1)
  {
    if (++v16 == v22)
    {
      if (v20)
      {
        goto LABEL_43;
      }

      v16 = 0;
      v20 = 1;
    }

    if (v19 >= v21)
    {
      break;
    }

    v30 = (v16 * v21) >> 6;
    if (v19)
    {
      if (v25)
      {
        goto LABEL_41;
      }

      if (v30 + 1 == v29)
      {
        v30 = 0;
      }

      else
      {
        ++v30;
      }
    }

    v31 = v21 - v19;
    if (__OFSUB__(v21, v19))
    {
      goto LABEL_39;
    }

    if (v30 == 2 && v21 == 5)
    {
      v33 = 32;
    }

    else
    {
      v33 = 64;
    }

    v14 = __OFSUB__(v33, v31);
    v34 = v33 - v31;
    if (v14)
    {
      goto LABEL_40;
    }

    v35 = *(a3 + 8 * v30);
    v36 = (v35 << v19) | v18;
    v18 = v35 >> v31;
    v19 = v34;
LABEL_16:
    if ((v36 & (v22 - 1)) == 0)
    {
      v45 = v20;
      v43 = v18;
      v44 = v19;
      v41 = v16;
      v42 = 0;
      goto LABEL_4;
    }
  }

  v14 = __OFSUB__(v19, v21);
  v19 -= v21;
  if (!v14)
  {
    v36 = v18;
    v18 >>= v21;
    goto LABEL_16;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v6 = 0;
  v37 = result + 32;
  while (1)
  {
    outlined init with copy of [Input](v37 + 8 * v6, v38, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    Hasher.init(_seed:)();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      Hasher._combine(_:)(1u);
      v9 = v8;
      NSObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v10 = Hasher._finalize()();
    v11 = 1 << *a2;
    v12 = __OFSUB__(v11, 1);
    v13 = v11 - 1;
    if (v12)
    {
      goto LABEL_41;
    }

    v14 = v13 & v10;
    v15 = _HashTable.UnsafeHandle._startIterator(bucket:)(v13 & v10, a2, a3);
    v17 = v16;
    v19 = v18;
    outlined destroy of [Input](v38, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    if (v15)
    {
      break;
    }

LABEL_3:
    result = _HashTable.BucketIterator.currentValue.setter(v6++, 0);
    if (v6 == v3)
    {
      return result;
    }
  }

  v20 = 0;
  v21 = *a2 & 0x3FLL;
  v22 = 1 << *a2;
  v23 = v21 << *a2;
  v24 = v23 + 64;
  v25 = __OFADD__(v23, 64);
  v27 = v24 - 1;
  v26 = v24 < 1;
  v28 = v24 + 62;
  if (!v26)
  {
    v28 = v27;
  }

  v29 = v28 >> 6;
  while (1)
  {
    if (++v14 == v22)
    {
      if (v20)
      {
        goto LABEL_42;
      }

      v14 = 0;
      v20 = 1;
    }

    if (v19 >= v21)
    {
      break;
    }

    v30 = (v14 * v21) >> 6;
    if (v19)
    {
      if (v25)
      {
        goto LABEL_40;
      }

      if (v30 + 1 == v29)
      {
        v30 = 0;
      }

      else
      {
        ++v30;
      }
    }

    v31 = v21 - v19;
    if (__OFSUB__(v21, v19))
    {
      goto LABEL_38;
    }

    if (v30 == 2 && v21 == 5)
    {
      v33 = 32;
    }

    else
    {
      v33 = 64;
    }

    v12 = __OFSUB__(v33, v31);
    v34 = v33 - v31;
    if (v12)
    {
      goto LABEL_39;
    }

    v35 = *(a3 + 8 * v30);
    v36 = (v35 << v19) | v17;
    v17 = v35 >> v31;
    v19 = v34;
LABEL_15:
    if ((v36 & (v22 - 1)) == 0)
    {
      goto LABEL_3;
    }
  }

  v12 = __OFSUB__(v19, v21);
  v19 -= v21;
  if (!v12)
  {
    v36 = v17;
    v17 >>= v21;
    goto LABEL_15;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v6 = 0;
  v32 = result + 32;
  while (1)
  {
    v7 = *(v32 + 24 * v6 + 16);
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v7);
    String.hash(into:)();
    v8 = Hasher._finalize()();
    v9 = 1 << *a2;
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (v10)
    {
      goto LABEL_38;
    }

    v12 = v11 & v8;
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v11 & v8, a2, a3))
    {
      break;
    }

LABEL_3:
    result = _HashTable.BucketIterator.currentValue.setter(v6++, 0);
    if (v6 == v3)
    {
      return result;
    }
  }

  v15 = 0;
  v16 = *a2 & 0x3FLL;
  v17 = 1 << *a2;
  v18 = v16 << *a2;
  v19 = v18 + 64;
  v20 = __OFADD__(v18, 64);
  v22 = v19 - 1;
  v21 = v19 < 1;
  v23 = v19 + 62;
  if (!v21)
  {
    v23 = v22;
  }

  v24 = v23 >> 6;
  while (1)
  {
    if (++v12 == v17)
    {
      if (v15)
      {
        goto LABEL_39;
      }

      v12 = 0;
      v15 = 1;
    }

    if (v14 >= v16)
    {
      break;
    }

    v25 = (v12 * v16) >> 6;
    if (v14)
    {
      if (v20)
      {
        goto LABEL_37;
      }

      if (v25 + 1 == v24)
      {
        v25 = 0;
      }

      else
      {
        ++v25;
      }
    }

    v26 = v16 - v14;
    if (__OFSUB__(v16, v14))
    {
      goto LABEL_35;
    }

    if (v25 == 2 && v16 == 5)
    {
      v28 = 32;
    }

    else
    {
      v28 = 64;
    }

    v10 = __OFSUB__(v28, v26);
    v29 = v28 - v26;
    if (v10)
    {
      goto LABEL_36;
    }

    v30 = *(a3 + 8 * v25);
    v31 = (v30 << v14) | v13;
    v13 = v30 >> v26;
    v14 = v29;
LABEL_12:
    if ((v31 & (v17 - 1)) == 0)
    {
      goto LABEL_3;
    }
  }

  v10 = __OFSUB__(v14, v16);
  v14 -= v16;
  if (!v10)
  {
    v31 = v13;
    v13 >>= v16;
    goto LABEL_12;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = 0;
    v8 = a2 + 32;
    while (1)
    {
      v9 = *(v8 + 8 * v7);
      v10 = *a3;
      v11 = MEMORY[0x266772750](*a3, v9);
      v12 = (1 << v10) - 1;
      if (__OFSUB__(1 << v10, 1))
      {
        break;
      }

      v13 = v12 & v11;
      v14 = _HashTable.UnsafeHandle._startIterator(bucket:)(v12 & v11, a3, a4);
      v17 = 0;
      if (v14)
      {
        v18 = *a3 & 0x3FLL;
        v19 = 1 << *a3;
        v20 = __OFADD__(v18 << v18, 64);
        v21 = (v18 << v18) + 63;
        if ((v18 << v18) + 64 < 1)
        {
          v21 = (v18 << v18) + 126;
        }

        v22 = v19 - 1;
        v23 = v21 >> 6;
        v24 = v15;
        while (1)
        {
          v27 = (a3[1] >> 6) + (v14 ^ v22);
          v28 = v27 >= v22 ? v19 - 1 : 0;
          v29 = v27 - v28;
          if (v29 >= v4)
          {
            break;
          }

          if (*(v8 + 8 * v29) == v9)
          {
            result = 0;
            *a1 = v7;
            return result;
          }

          if (++v13 == v19)
          {
            if (v17)
            {
              goto LABEL_48;
            }

            v13 = 0;
            v17 = 1;
          }

          if (v16 >= v18)
          {
            v34 = __OFSUB__(v16, v18);
            v16 -= v18;
            if (v34)
            {
              goto LABEL_43;
            }

            v26 = v24 >> v18;
          }

          else
          {
            v30 = (v13 * v18) >> 6;
            if (v16)
            {
              if (v20)
              {
                goto LABEL_46;
              }

              if (v30 + 1 == v23)
              {
                v30 = 0;
              }

              else
              {
                ++v30;
              }
            }

            v31 = v18 - v16;
            if (__OFSUB__(v18, v16))
            {
              goto LABEL_44;
            }

            v32 = v30 == 2 && v18 == 5;
            if (v32)
            {
              v33 = 32;
            }

            else
            {
              v33 = 64;
            }

            v34 = __OFSUB__(v33, v31);
            v35 = v33 - v31;
            if (v34)
            {
              goto LABEL_45;
            }

            v25 = *(a4 + 8 * v30);
            v24 |= v25 << v16;
            v26 = v25 >> v31;
            v16 = v35;
          }

          v14 = v24 & v22;
          v32 = (v24 & v22) == 0;
          v24 = v26;
          if (v32)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        break;
      }

LABEL_3:
      _HashTable.BucketIterator.currentValue.setter(v7++, 0);
      if (v7 == v4)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_48:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_40:
    *a1 = v4;
    return 1;
  }

  return result;
}

{
  v60 = *(a2 + 16);
  if (v60)
  {
    v5 = 0;
    v59 = a2 + 32;
    while (1)
    {
      v7 = (v59 + 56 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = v7[4];
      v13 = *(v7 + 40);
      v53 = v7[6];
      Hasher.init(_seed:)();
      v58 = v8;
      MEMORY[0x266772770](v8);
      v55 = v9;
      (*(*v9 + 120))(v61);
      v54 = v11;
      String.hash(into:)();
      v52 = v13;
      if (v13 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v12);
      }

      MEMORY[0x266772770](v53);
      v14 = Hasher._finalize()();
      v15 = 1 << *a3;
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v16)
      {
        break;
      }

      v50 = v5;
      v18 = v17 & v14;
      v19 = _HashTable.UnsafeHandle._startIterator(bucket:)(v17 & v14, a3, a4);
      v21 = v20;
      v23 = v22;
      v62 = a3;
      v63 = a4;
      if (v19)
      {
        v51 = v12;
        v6 = 0;
        v24 = *a3;
        while (1)
        {
          v25 = -1 << v24;
          v26 = (v25 ^ ~v19) + (a3[1] >> 6);
          v27 = v26 >= ~v25 ? ~v25 : 0;
          v28 = v26 - v27;
          if (v28 >= v60)
          {
            break;
          }

          v29 = v59 + 56 * v28;
          if (*v29 == v58)
          {
            v30 = *(v29 + 24);
            v57 = *(v29 + 32);
            v31 = *(v29 + 40);
            v32 = *(v29 + 48);
            v33 = *(v29 + 16);
            if ((*(**(v29 + 8) + 128))(v55))
            {
              v34 = v33 == v10 && v30 == v54;
              if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                if (v31)
                {
                  v35 = v52;
                  if (v32 != v53)
                  {
                    v35 = 0;
                  }

                  if (v35)
                  {
                    goto LABEL_55;
                  }
                }

                else
                {
                  v36 = v52 ^ 1;
                  if (v57 != v51)
                  {
                    v36 = 0;
                  }

                  if (v36 == 1 && v32 == v53)
                  {
LABEL_55:
                    result = 0;
                    *a1 = v50;
                    return result;
                  }
                }
              }
            }
          }

          ++v18;
          v24 = *a3;
          v38 = *a3 & 0x3FLL;
          v39 = 1 << *a3;
          if (v18 == v39)
          {
            if (v6)
            {
              goto LABEL_61;
            }

            v18 = 0;
            v6 = 1;
          }

          if (v23 >= v38)
          {
            v23 -= v38;
            v19 = (v39 - 1) & v21;
            v21 >>= v38;
            if (!v19)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v40 = (v18 * v38) >> 6;
            if (v23)
            {
              if (__OFADD__(v38 << v38, 64))
              {
                goto LABEL_59;
              }

              v41 = (v38 << v38) + 126;
              if ((v38 << v38) + 64 >= 1)
              {
                v41 = (v38 << v38) + 63;
              }

              if (v40 + 1 == v41 >> 6)
              {
                v40 = 0;
              }

              else
              {
                ++v40;
              }
            }

            v42 = v38 - v23;
            if (__OFSUB__(v38, v23))
            {
              goto LABEL_57;
            }

            v43 = v40 == 2 && v38 == 5;
            v44 = 64;
            if (v43)
            {
              v44 = 32;
            }

            v16 = __OFSUB__(v44, v42);
            v45 = v44 - v42;
            if (v16)
            {
              goto LABEL_58;
            }

            v46 = *(a4 + 8 * v40);
            v47 = (v46 << v23) | v21;
            v21 = v46 >> v42;
            v23 = v45;
            v19 = v47 & (v39 - 1);
            if (!v19)
            {
              goto LABEL_4;
            }
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        break;
      }

      v6 = 0;
LABEL_4:
      v68 = v6;
      v64 = v18;
      v65 = 0;
      v66 = v21;
      v67 = v23;
      _HashTable.BucketIterator.currentValue.setter(v50, 0);
      v5 = v50 + 1;
      if (v50 + 1 == v60)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_61:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_54:
    *a1 = v60;
    return 1;
  }

  return result;
}

{
  v4 = *(a2 + 16);
  if (!v4)
  {
LABEL_51:
    *a1 = v4;
    return 1;
  }

  v5 = a3;
  v6 = 0;
  v7 = a2 + 32;
  v53 = a2 + 32;
  v54 = *(a2 + 16);
  while (1)
  {
    v47 = v6;
    v8 = (v7 + 56 * v6);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[3];
    v51 = v8[2];
    v50 = *(v8 + 40);
    v48 = v8[4];
    v49 = v8[6];
    Hasher.init(_seed:)();
    v59 = v9;
    MEMORY[0x266772770](v9);
    v12 = *(*v10 + 120);

    v60 = v10;
    v12(v62);
    v61 = v11;
    String.hash(into:)();
    if (v50 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v48);
    }

    MEMORY[0x266772770](v49);
    v13 = Hasher._finalize()();
    v14 = 1 << *v5;
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v15)
    {
      goto LABEL_56;
    }

    v17 = v16 & v13;
    v18 = _HashTable.UnsafeHandle._startIterator(bucket:)(v16 & v13, v5, a4);
    v20 = v19;
    v22 = v21;

    v63 = v5;
    v64 = a4;
    v23 = 0;
    if (v18)
    {
      break;
    }

LABEL_3:
    v69 = v23;
    v65 = v17;
    v66 = 0;
    v67 = v20;
    v68 = v22;
    _HashTable.BucketIterator.currentValue.setter(v47, 0);
    v6 = v47 + 1;
    if (v47 + 1 == v4)
    {
      goto LABEL_51;
    }
  }

  v24 = *v5;
  while (1)
  {
    v25 = -1 << v24;
    v26 = (v25 ^ ~v18) + (v5[1] >> 6);
    v27 = v26 >= ~v25 ? ~v25 : 0;
    v28 = v26 - v27;
    if (v28 >= v4)
    {
      break;
    }

    v29 = v7 + 56 * v28;
    if (*v29 == v59)
    {
      v58 = v23;
      v30 = *(v29 + 16);
      v31 = *(v29 + 24);
      v55 = *(v29 + 32);
      v32 = *(v29 + 40);
      v57 = *(v29 + 48);
      v33 = *(**(v29 + 8) + 128);

      if (v33(v60))
      {
        v34 = v30 == v51 && v31 == v61;
        if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v32)
          {

            if (v50)
            {
              goto LABEL_49;
            }

            goto LABEL_27;
          }

          if ((v50 & 1) == 0)
          {

            if (v55 == v48)
            {
LABEL_49:

              v5 = a3;
              v7 = v53;
              v4 = v54;
              v23 = v58;
              if (v57 == v49)
              {
                result = 0;
                *a1 = v47;
                return result;
              }

              goto LABEL_28;
            }

            goto LABEL_27;
          }
        }
      }

LABEL_27:

      v5 = a3;
      v7 = v53;
      v4 = v54;
      v23 = v58;
    }

LABEL_28:
    ++v17;
    v24 = *v5;
    v35 = *v5 & 0x3FLL;
    v36 = 1 << *v5;
    if (v17 == v36)
    {
      if (v23)
      {
        goto LABEL_57;
      }

      v17 = 0;
      v23 = 1;
    }

    if (v22 >= v35)
    {
      v22 -= v35;
      v18 = (v36 - 1) & v20;
      v20 >>= v35;
      if (!v18)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v37 = (v17 * v35) >> 6;
      if (v22)
      {
        if (__OFADD__(v35 << v35, 64))
        {
          goto LABEL_55;
        }

        v38 = (v35 << v35) + 126;
        if ((v35 << v35) + 64 >= 1)
        {
          v38 = (v35 << v35) + 63;
        }

        if (v37 + 1 == v38 >> 6)
        {
          v37 = 0;
        }

        else
        {
          ++v37;
        }
      }

      v39 = v35 - v22;
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_53;
      }

      v40 = v37 == 2 && v35 == 5;
      v41 = 64;
      if (v40)
      {
        v41 = 32;
      }

      v15 = __OFSUB__(v41, v39);
      v42 = v41 - v39;
      if (v15)
      {
        goto LABEL_54;
      }

      v43 = *(a4 + 8 * v37);
      v44 = (v43 << v22) | v20;
      v20 = v43 >> v39;
      v22 = v42;
      v18 = v44 & (v36 - 1);
      if (!v18)
      {
        goto LABEL_3;
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(unint64_t *a1, unint64_t a2, Swift::Int *a3, uint64_t a4, void (*a5)(void))
{
  if (a2 >> 62)
  {
    goto LABEL_49;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = 0;
      v49 = a2 & 0xC000000000000001;
      v46 = a2 + 32;
      v44 = v7;
      while (1)
      {
        if (v49)
        {
          v9 = MEMORY[0x266772030](v8, a2);
        }

        else
        {
          if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v9 = *(v46 + 8 * v8);
        }

        v10 = v9;
        v11 = NSObject._rawHashValue(seed:)(*a3);
        v12 = 1 << *a3;
        v13 = __OFSUB__(v12, 1);
        v14 = v12 - 1;
        if (v13)
        {
          break;
        }

        v15 = v14 & v11;
        v16 = _HashTable.UnsafeHandle._startIterator(bucket:)(v14 & v11, a3, a4);
        v18 = v17;
        v20 = v19;

        v21 = 0;
        if (v16)
        {
          v22 = *a3;
          while (1)
          {
            while (1)
            {
              v23 = -1 << v22;
              v24 = (v23 ^ ~v16) + (a3[1] >> 6);
              v25 = v24 >= ~v23 ? ~v23 : 0;
              v26 = v24 - v25;
              if (v49)
              {
                v27 = MEMORY[0x266772030](v26, a2);
                v28 = MEMORY[0x266772030](v8, a2);
              }

              else
              {
                if ((v26 & 0x8000000000000000) != 0)
                {
                  goto LABEL_45;
                }

                if (v26 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_46;
                }

                v29 = *(v46 + 8 * v8);
                v27 = *(v46 + 8 * v26);
                v28 = v29;
              }

              v30 = v28;
              a5(0);
              v31 = static NSObject.== infix(_:_:)();

              if (v31)
              {
                result = 0;
                *a1 = v8;
                return result;
              }

              ++v15;
              v22 = *a3;
              v32 = *a3 & 0x3F;
              v33 = 1 << *a3;
              if (v15 == v33)
              {
                if (v21)
                {
                  goto LABEL_52;
                }

                v15 = 0;
                v21 = 1;
              }

              if (v20 < v32)
              {
                break;
              }

              v20 -= v32;
              v16 = (v33 - 1) & v18;
              v18 >>= v32;
              if (!v16)
              {
                goto LABEL_4;
              }
            }

            v34 = (v15 * v32) >> 6;
            if (v20)
            {
              if (__OFADD__(v32 << v32, 64))
              {
                goto LABEL_47;
              }

              v35 = (v32 << v32) + 126;
              if ((v32 << v32) + 64 >= 1)
              {
                v35 = (v32 << v32) + 63;
              }

              if (v34 + 1 == v35 >> 6)
              {
                v34 = 0;
              }

              else
              {
                ++v34;
              }
            }

            v36 = v32 - v20;
            if (__OFSUB__(v32, v20))
            {
              break;
            }

            v37 = v34 == 2 && v32 == 5;
            v38 = 64;
            if (v37)
            {
              v38 = 32;
            }

            v13 = __OFSUB__(v38, v36);
            v39 = v38 - v36;
            if (v13)
            {
              goto LABEL_44;
            }

            v40 = *(a4 + 8 * v34);
            v41 = (v40 << v20) | v18;
            v18 = v40 >> v36;
            v20 = v39;
            v16 = v41 & (v33 - 1);
            if (!v16)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          break;
        }

LABEL_4:
        _HashTable.BucketIterator.currentValue.setter(v8++, 0);
        v7 = v44;
        if (v8 == v44)
        {
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_49:
      v43 = __CocoaSet.count.getter();
      if (v43 < 0)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        v43 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v7 = v43;
    }

    while (v43);
  }

LABEL_54:
  *a1 = v7;
  return 1;
}

uint64_t UserGraph.insert(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v1;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v2 = *(a1 + 72);
  v4[0] = *(a1 + 56);
  v4[1] = v2;
  v4[2] = *(a1 + 88);
  v5 = *(a1 + 104);
  return UserGraph.connect(_:to:)(v6, v4);
}

uint64_t specialized OrderedDictionary.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = result;
  v7 = v3[1];
  v8 = v7 + 32;
  v9 = *(v7 + 16);
  if (!*v3)
  {
    if (v9)
    {
      v11 = 0;
      while (*(v8 + 8 * v11) != a3)
      {
        if (v9 == ++v11)
        {
          v9 = 0;
          goto LABEL_14;
        }
      }

      v9 = 0;
      if (result)
      {
        goto LABEL_4;
      }

LABEL_22:
      specialized OrderedSet._removeExistingMember(at:in:)(v11, v9);
      specialized ContiguousArray.remove(at:)(v11);
    }

LABEL_14:
    if (v6)
    {
      specialized OrderedSet._appendNew(_:in:)(a3, v9, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      v16 = v3[2];
      v14 = v3 + 2;
      v15 = v16;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v14 = v16;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1);
        v15 = *v14;
      }

      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v15 = *v14;
      }

      *(v15 + 16) = v18 + 1;
      v19 = v15 + 16 * v18;
      *(v19 + 32) = v6;
      *(v19 + 40) = a2;
      *v14 = v15;
    }

    return result;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a3, v8, v9, (*v3 + 16), *v3 + 32);
  if (v10)
  {
    goto LABEL_14;
  }

  v11 = result;
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_4:
  v12 = v3[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v12);
    v12 = result;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < v12[2])
  {
    v13 = &v12[2 * v11];
    v13[4] = v6;
    v13[5] = a2;

    v3[2] = v12;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.subscript.setter(uint64_t result, uint64_t a2)
{
  v5 = *result;
  v4 = *(result + 8);
  v7 = *(result + 16);
  v6 = *(result + 24);
  v9 = *(result + 32);
  v8 = *(result + 40);
  v10 = v2[1];
  v11 = v10 + 32;
  v12 = *(v10 + 16);
  if (!*v2)
  {
    if (v12)
    {
      v14 = 0;
      while (*(v11 + 8 * v14) != a2)
      {
        if (v12 == ++v14)
        {
          v12 = 0;
          goto LABEL_14;
        }
      }

      v12 = 0;
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_21:
      specialized OrderedSet._removeExistingMember(at:in:)(v14, v12);
      specialized ContiguousArray.remove(at:)(v14, v27);
      v23 = v27[1];
      v24 = v27[2];
      v33 = v27[0];
      outlined destroy of [Input](&v33, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
      v32 = v23;
      outlined destroy of [Input](&v32, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
      v31 = v24;
      outlined destroy of [Input](&v31, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
      v25 = v27[4];
      v26 = v27[5];
      v30 = v27[3];
      outlined destroy of [Input](&v30, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
      v29 = v25;
      outlined destroy of [Input](&v29, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
      v28 = v26;
      return outlined destroy of [Input](&v28, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
    }

LABEL_14:
    if (v4)
    {
      specialized OrderedSet._appendNew(_:in:)(a2, v12, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      v19 = v2[2];
      v18 = v2 + 2;
      v17 = v19;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v19;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1);
        v17 = *v18;
      }

      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v17 = *v18;
      }

      *(v17 + 16) = v21 + 1;
      v22 = (v17 + 48 * v21);
      v22[4] = v5;
      v22[5] = v4;
      v22[6] = v7;
      v22[7] = v6;
      v22[8] = v9;
      v22[9] = v8;
      *v18 = v17;
    }

    return result;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v11, v12, (*v2 + 16), *v2 + 32);
  if (v13)
  {
    goto LABEL_14;
  }

  v14 = result;
  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_4:
  v15 = v2[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v15);
    v15 = result;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(v15 + 16))
  {
    v16 = (v15 + 48 * v14);
    v16[4] = v5;
    v16[5] = v4;
    v16[6] = v7;
    v16[7] = v6;
    v16[8] = v9;
    v16[9] = v8;

    v2[2] = v15;
    return result;
  }

  __break(1u);
  return result;
}

void specialized OrderedDictionary.subscript.setter(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v30 = a1[3];
  v31 = a1[4];
  v32 = a1[5];
  v33 = a1[6];
  v8 = *v2;
  v7 = v2[1];
  v9 = *(v7 + 16);
  if (*v2)
  {
    v10 = a1[2];

    v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v7 + 32, v9, (v8 + 16), v8 + 32);
    v13 = v12;
    v15 = v14;

    if (v13)
    {
      v6 = v10;
      goto LABEL_5;
    }

    v6 = v10;
  }

  else
  {
    v16 = specialized Collection<>.firstIndex(of:)(a2, v7 + 32, *(v7 + 16));
    v15 = 0;
    if (v17)
    {
LABEL_5:
      if (v4 == 1)
      {

        v36[0] = *(a2 + 16);
        outlined destroy of String(v36);
      }

      else
      {
        specialized OrderedSet._appendNew(_:in:)(a2, v15, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

        v36[0] = *(a2 + 16);
        outlined destroy of String(v36);
        v19 = v2 + 2;
        v18 = v2[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v2[2] = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1);
          v18 = *v19;
        }

        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v18 = *v19;
        }

        *(v18 + 16) = v22 + 1;
        v23 = (v18 + 56 * v22);
        v23[4] = v5;
        v23[5] = v4;
        v23[6] = v6;
        v23[7] = v30;
        v23[8] = v31;
        v23[9] = v32;
        v23[10] = v33;
        *v19 = v18;
      }

      return;
    }

    v11 = v16;
  }

  v38 = *(a2 + 16);
  outlined destroy of String(&v38);
  if (v4 == 1)
  {
    specialized OrderedSet._removeExistingMember(at:in:)(v11, v15, v34);

    v37 = v35;
    outlined destroy of String(&v37);
    specialized ContiguousArray.remove(at:)(v11, v36);
    outlined destroy of [Input](v36, &_s11ShaderGraph6OutputVSgMd, &_s11ShaderGraph6OutputVSgMR);
    return;
  }

  v24 = v2[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v24);
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < v24[2])
  {
    v25 = &v24[7 * v11];
    v26 = v25[4];
    v27 = v25[5];
    v28 = v25[6];
    v29 = v25[7];
    v25[4] = v5;
    v25[5] = v4;
    v25[6] = v6;
    v25[7] = v30;
    v25[8] = v31;
    v25[9] = v32;
    v25[10] = v33;
    outlined consume of Output?(v26, v27, v28, v29);
    v2[2] = v24;
    return;
  }

  __break(1u);
}

void specialized OrderedDictionary.subscript.setter(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v8 + 16);
  if (*v3)
  {

    v10 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, a3, v8 + 32, v9, (v7 + 16), v7 + 32);
    v12 = v11;
    v9 = v13;

    if ((v12 & 1) == 0)
    {

      if (!a1)
      {
        goto LABEL_26;
      }

LABEL_20:
      v19 = v3[2];
      v17 = v3 + 2;
      NewAByxGyF11ShaderGraph6SGNodeC_Tg5_0 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        NewAByxGyF11ShaderGraph6SGNodeC_Tg5_0 = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF11ShaderGraph6SGNodeC_Tg5_0(NewAByxGyF11ShaderGraph6SGNodeC_Tg5_0);
        *v17 = NewAByxGyF11ShaderGraph6SGNodeC_Tg5_0;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *(NewAByxGyF11ShaderGraph6SGNodeC_Tg5_0 + 16))
      {
        v21 = NewAByxGyF11ShaderGraph6SGNodeC_Tg5_0 + 8 * v10;
        v22 = *(v21 + 32);
        *(v21 + 32) = a1;

        specialized ContiguousArray._endMutation()();
        return;
      }

      __break(1u);
      return;
    }
  }

  else if (v9)
  {
    v10 = 0;
    v14 = (v8 + 40);
    while (1)
    {
      v15 = *(v14 - 1) == a2 && *v14 == a3;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v10;
      v14 += 2;
      if (v9 == v10)
      {
        v9 = 0;
        goto LABEL_14;
      }
    }

    if (!a1)
    {
      v9 = 0;
LABEL_26:
      specialized OrderedSet._removeExistingMember(at:in:)(v10, v9);

      v16 = specialized ContiguousArray.remove(at:)(v10);
      goto LABEL_27;
    }

    goto LABEL_20;
  }

LABEL_14:
  if (a1)
  {
    specialized OrderedSet._appendNew(_:in:)(a2, a3, v9);

    v23 = a1;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v16 = v23;
LABEL_27:

    return;
  }
}

uint64_t specialized OrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v8 + 16);
  if (*v3)
  {

    v10 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, a3, v8 + 32, v9, (v7 + 16), v7 + 32);
    v12 = v11;
    v9 = v13;

    if ((v12 & 1) == 0)
    {

      if (!a1)
      {
        goto LABEL_26;
      }

LABEL_20:
      v19 = v3[2];
      v17 = v3 + 2;
      v18 = v19;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v19;
      if ((result & 1) == 0)
      {
        result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF11ShaderGraph6SGNodeC_Tg5_0(v18);
        v18 = result;
        *v17 = result;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *(v18 + 16))
      {
        *(v18 + 8 * v10 + 32) = a1;
        swift_unknownObjectRelease();
        return specialized ContiguousArray._endMutation()();
      }

      __break(1u);
      return result;
    }
  }

  else if (v9)
  {
    v10 = 0;
    v14 = (v8 + 40);
    while (1)
    {
      v15 = *(v14 - 1) == a2 && *v14 == a3;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v10;
      v14 += 2;
      if (v9 == v10)
      {
        v9 = 0;
        goto LABEL_14;
      }
    }

    if (!a1)
    {
      v9 = 0;
LABEL_26:
      specialized OrderedSet._removeExistingMember(at:in:)(v10, v9);

      specialized ContiguousArray.remove(at:)(v10);
      goto LABEL_27;
    }

    goto LABEL_20;
  }

LABEL_14:
  if (a1)
  {
    specialized OrderedSet._appendNew(_:in:)(a2, a3, v9);

    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_27:

    return swift_unknownObjectRelease();
  }
}

unint64_t specialized OrderedDictionary.subscript.setter(unint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = v2[1];
  v6 = v5 + 32;
  v7 = *(v5 + 16);
  if (!*v2)
  {
    if (v7)
    {
      v9 = 0;
      while (*(v6 + 8 * v9) != a2)
      {
        if (v7 == ++v9)
        {
          v7 = 0;
          goto LABEL_14;
        }
      }

      v7 = 0;
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

LABEL_14:
    if (!v4)
    {
      return result;
    }

    specialized OrderedSet._appendNew(_:in:)(a2, v7, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    goto LABEL_19;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v6, v7, (*v2 + 16), *v2 + 32);
  if (v8)
  {
    goto LABEL_14;
  }

  v9 = result;
  if (!v4)
  {
LABEL_18:
    specialized OrderedSet._removeExistingMember(at:in:)(v9, v7);
    specialized ContiguousArray.remove(at:)(v9);
LABEL_19:

    return swift_unknownObjectRelease();
  }

LABEL_4:
  v10 = v2[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  v2[2] = v10;
  if ((result & 1) == 0)
  {
    result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF11ShaderGraph6SGNodeC_Tg5_0(v10);
    v10 = result;
    v2[2] = result;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v10 + 16))
  {
    *(v10 + 8 * v9 + 32) = v4;
    swift_unknownObjectRelease();
    return specialized ContiguousArray._endMutation()();
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = v2[1];
  v6 = v5 + 32;
  v7 = *(v5 + 16);
  if (!*v2)
  {
    if (v7)
    {
      v9 = 0;
      while (*(v6 + 8 * v9) != a2)
      {
        if (v7 == ++v9)
        {
          v7 = 0;
          goto LABEL_14;
        }
      }

      v7 = 0;
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

LABEL_14:
    if (!v4)
    {
      return result;
    }

    specialized OrderedSet._appendNew(_:in:)(a2, v7, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    goto LABEL_19;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v6, v7, (*v2 + 16), *v2 + 32);
  if (v8)
  {
    goto LABEL_14;
  }

  v9 = result;
  if (!v4)
  {
LABEL_18:
    specialized OrderedSet._removeExistingMember(at:in:)(v9, v7);
    specialized ContiguousArray.remove(at:)(v9);
LABEL_19:

    return swift_unknownObjectRelease();
  }

LABEL_4:
  v10 = v2[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  v2[2] = v10;
  if ((result & 1) == 0)
  {
    result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF11ShaderGraph6SGNodeC_Tg5_0(v10);
    v10 = result;
    v2[2] = result;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v10 + 16))
  {
    *(v10 + 8 * v9 + 32) = v4;
    swift_unknownObjectRelease();
    return specialized ContiguousArray._endMutation()();
  }

  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (*v4)
  {

    v12 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, a3, a4, v10 + 32, v11, (v9 + 16), v9 + 32);
    v14 = v13;
    v11 = v15;

    if ((v14 & 1) == 0)
    {

      if (!a1)
      {
LABEL_26:
        specialized OrderedSet._removeExistingMember(at:in:)(v12);

        specialized ContiguousArray.remove(at:)(v12);
        goto LABEL_27;
      }

      goto LABEL_15;
    }
  }

  else if (v11)
  {
    v12 = 0;
    v16 = (v10 + 48);
    while (1)
    {
      if (*(v16 - 2) == a2)
      {
        v17 = *(v16 - 1) == a3 && *v16 == a4;
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      ++v12;
      v16 += 3;
      if (v11 == v12)
      {
        v11 = 0;
        goto LABEL_21;
      }
    }

    if (!a1)
    {
      goto LABEL_26;
    }

LABEL_15:
    v20 = v4[2];
    v18 = v4 + 2;
    v19 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v20;
    if ((result & 1) == 0)
    {
      result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF11ShaderGraph6SGNodeC_Tg5_0(v19);
      v19 = result;
      *v18 = result;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *(v19 + 16))
    {
      *(v19 + 8 * v12 + 32) = a1;
      swift_unknownObjectRelease();
      return specialized ContiguousArray._endMutation()();
    }

    __break(1u);
    return result;
  }

LABEL_21:
  if (a1)
  {
    specialized OrderedSet._appendNew(_:in:)(a2, a3, a4, v11);

    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_27:

    return swift_unknownObjectRelease();
  }
}

uint64_t specialized OrderedDictionary.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (*v4)
  {

    v12 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a3, a4, v10 + 32, v11, (v9 + 16), v9 + 32);
    v14 = v13;
    v11 = v15;

    if ((v14 & 1) == 0)
    {

      goto LABEL_23;
    }

LABEL_13:
    if (a2 == -1)
    {
    }

    else
    {
      specialized OrderedSet._appendNew(_:in:)(a3, a4, v11);

      v20 = v4[2];
      v18 = v4 + 2;
      v19 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v20;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1);
        v19 = *v18;
      }

      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v19 = *v18;
      }

      *(v19 + 16) = v23 + 1;
      v24 = v19 + 16 * v23;
      *(v24 + 32) = a1;
      *(v24 + 40) = a2 & 1;
      *v18 = v19;
    }

    return result;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = 0;
  v16 = (v10 + 40);
  while (1)
  {
    v17 = *(v16 - 1) == a3 && *v16 == a4;
    if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v12;
    v16 += 2;
    if (v11 == v12)
    {
      v11 = 0;
      goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_23:
  if (a2 == -1)
  {
    specialized OrderedSet._removeExistingMember(at:in:)(v12, v11);

    v29 = specialized ContiguousArray.remove(at:)(v12);
    v31 = v30 & 1;

    return outlined consume of MetalLibrary(v29, v31);
  }

  else
  {
    v25 = v4[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v25);
      v25 = result;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *(v25 + 16))
    {
      v26 = v25 + 16 * v12;
      v27 = *(v26 + 32);
      v28 = *(v26 + 40);
      *(v26 + 32) = a1;
      *(v26 + 40) = a2 & 1;
      result = outlined consume of MetalLibrary(v27, v28);
      v4[2] = v25;
      return result;
    }

    __break(1u);
  }

  return result;
}

void specialized OrderedSet.removeAll(keepingCapacity:)(char a1)
{
  v2 = v1 + 1;
  if ((a1 & 1) == 0)
  {

    v1[1] = MEMORY[0x277D84F90];

    *v1 = 0;
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized ContiguousArray.replaceSubrange<A>(_:with:)(0, *(v4 + 16), specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    if (!*v1)
    {
      return;
    }

LABEL_10:
    isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
    v8 = *v1;
    if ((isUniquelyReferenced_native & 1) == 0)
    {
      if (!v8)
      {
LABEL_21:
        __break(1u);
        return;
      }

      v9 = v8[2];
      v10 = (v9 & 0x3F) << v9;
      v11 = __OFADD__(v10, 64);
      v12 = v10 + 64;
      if (v11)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v14 = v12 - 1;
      v13 = v12 < 1;
      v15 = v12 + 62;
      if (!v13)
      {
        v15 = v14;
      }

      v16 = v15 >> 6;
      type metadata accessor for _HashTable.Storage(0);
      v17 = swift_allocObject();
      v18 = v8[3];
      v17[2] = v9;
      v17[3] = v18;
      memcpy(v17 + 4, v8 + 4, 8 * v16);

      *v1 = v17;
      v8 = v17;
    }

    if (v8)
    {
      closure #1 in OrderedSet.removeAll(keepingCapacity:)(v8 + 2, v8 + 4);
      return;
    }

    goto LABEL_20;
  }

  if (*(v4 + 24) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph5InputVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph5InputVGMR);
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size(v5);
    v5[2] = 0;
    v5[3] = 2 * ((v6 - 32) / 56);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  *v2 = v5;
  if (*v1)
  {
    goto LABEL_10;
  }
}

unint64_t specialized OrderedDictionary.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = result;
  v9 = a3 + 32;
  v10 = *(a3 + 16);
  if (!a2)
  {
    if (v10)
    {
      result = 0;
      while (*(v9 + 8 * result) != v7)
      {
        if (v10 == ++result)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_4;
    }

LABEL_10:
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_11;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(result, v9, v10, (a2 + 16), a2 + 32);
  if (v11)
  {
    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (result < *(a4 + 16))
  {
    v12 = (a4 + 48 * result);
    v13 = v12[4];
    v14 = v12[5];
    v15 = v12[6];
    v16 = v12[7];
    v17 = v12[8];
    v18 = v12[9];

LABEL_11:
    *a5 = v13;
    a5[1] = v14;
    a5[2] = v15;
    a5[3] = v16;
    a5[4] = v17;
    a5[5] = v18;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void specialized OrderedDictionary.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *(a3 + 16);
  if (a2)
  {

    v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a3 + 32, v8, (a2 + 16), a2 + 32);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v16 = 1;
    goto LABEL_8;
  }

  v22 = specialized Collection<>.firstIndex(of:)(a1, a3 + 32, *(a3 + 16));
  if (v23)
  {
    goto LABEL_7;
  }

  v11 = v22;
  if (v22 < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v11 < *(a4 + 16))
  {
    v14 = (a4 + 56 * v11);
    v15 = v14[4];
    v16 = v14[5];
    v17 = v14[6];
    v18 = v14[7];
    v19 = v14[8];
    v20 = v14[9];
    v21 = v14[10];
    outlined copy of Output?(v15, v16, v17, v18);
LABEL_8:
    *a5 = v15;
    a5[1] = v16;
    a5[2] = v17;
    a5[3] = v18;
    a5[4] = v19;
    a5[5] = v20;
    a5[6] = v21;
    return;
  }

LABEL_11:
  __break(1u);
}

unint64_t specialized OrderedDictionary.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  if (a2)
  {

    v9 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a3 + 32, v6, (a2 + 16), a2 + 32);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    return 0;
  }

  result = specialized Collection<>.firstIndex(of:)(a1, a3 + 32, *(a3 + 16));
  if (v14)
  {
    return 0;
  }

  v9 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v9 < *(a4 + 16))
  {
    v13 = *(a4 + 16 * v9 + 32);

    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = result;
  v11 = *(a4 + 16);
  if (a3)
  {

    v13 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v9, a2, a4 + 32, v11, (a3 + 16), a3 + 32);
    v15 = v14;

    if (v15)
    {
LABEL_3:
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v11 = 0;
LABEL_17:
      *a6 = v16;
      a6[1] = v17;
      a6[2] = v18;
      a6[3] = v19;
      a6[4] = v20;
      a6[5] = v11;
      return result;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    if (!v11)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_17;
    }

    v13 = 0;
    v21 = (a4 + 40);
    while (1)
    {
      result = *(v21 - 1);
      if (result == v9 && *v21 == a2)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      ++v13;
      v21 += 2;
      if (v11 == v13)
      {
        goto LABEL_3;
      }
    }
  }

  if (v13 < *(a5 + 16))
  {
    v23 = (a5 + 48 * v13);
    v16 = v23[4];
    v17 = v23[5];
    v18 = v23[6];
    v19 = v23[7];
    v20 = v23[8];
    v11 = v23[9];

    result = outlined copy of MaterialXAvailability(v20, v11);
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 16);
  if (!a3)
  {
    if (v9)
    {
      v11 = 0;
      for (i = (a4 + 40); ; i += 2)
      {
        result = *(i - 1);
        if (result == a1 && *i == a2)
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        if (v9 == ++v11)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }

    return 0;
  }

  v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a2, a4 + 32, v9, (a3 + 16), a3 + 32);
  v13 = v12;

  if (v13)
  {
    return 0;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_4:
  if (v11 < *(a5 + 16))
  {
    v15 = *(a5 + 8 * v11 + 32);
    v16 = v15;
    return v15;
  }

LABEL_17:
  __break(1u);
  return result;
}

{
  v9 = *(a4 + 16);
  if (!a3)
  {
    if (v9)
    {
      v11 = 0;
      for (i = (a4 + 40); ; i += 2)
      {
        result = *(i - 1);
        if (result == a1 && *i == a2)
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        if (v9 == ++v11)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }

    return 0;
  }

  v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a2, a4 + 32, v9, (a3 + 16), a3 + 32);
  v13 = v12;

  if (v13)
  {
    return 0;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_4:
  if (v11 < *(a5 + 16))
  {
    v15 = a5 + 16 * v11;
    v16 = *(v15 + 32);
    outlined copy of MetalLibrary(v16, *(v15 + 40));
    return v16;
  }

LABEL_17:
  __break(1u);
  return result;
}

{
  v9 = *(a4 + 16);
  if (!a3)
  {
    if (v9)
    {
      v11 = 0;
      for (i = (a4 + 40); ; i += 2)
      {
        result = *(i - 1);
        if (result == a1 && *i == a2)
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        if (v9 == ++v11)
        {
          return 0;
        }
      }

LABEL_4:
      if (v11 < *(a5 + 16))
      {
        return swift_unknownObjectRetain();
      }

      goto LABEL_16;
    }

    return 0;
  }

  v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a2, a4 + 32, v9, (a3 + 16), a3 + 32);
  v13 = v12;

  if (v13)
  {
    return 0;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t specialized OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a3 + 32;
  v8 = *(a3 + 16);
  if (a2)
  {
    result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v7, v8, (a2 + 16), a2 + 32);
    if ((v10 & 1) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_12:
        __break(1u);
        return result;
      }

LABEL_4:
      if (result < *(a4 + 16))
      {
        return swift_unknownObjectRetain();
      }

      goto LABEL_12;
    }

    return 0;
  }

  else
  {
    result = 0;
    if (v8)
    {
      while (*(v7 + 8 * result) != a1)
      {
        if (v8 == ++result)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }
  }

  return result;
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    __CocoaSet.count.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t UserGraph.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v15 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  if (v8 >= ArraySlice.endIndex.getter())
  {
    v12 = *(v15 + 56);

    return v12(a2, 1, 1, v5);
  }

  else
  {
    v14 = a2;
    v9 = v3[5];
    v16 = (v15 + 8);
    v17 = v9;
    while (1)
    {
      ArraySlice.subscript.getter();
      v10 = v17(v7);
      (*v16)(v7, v5);
      if (v10)
      {
        break;
      }

      *v3 = ++v8;
      if (v8 >= ArraySlice.endIndex.getter())
      {
        return (*(v15 + 56))(v14, 1, 1, v5);
      }
    }

    v13 = v14;
    ArraySlice.subscript.getter();
    result = (*(v15 + 56))(v13, 0, 1, v5);
    if (__OFADD__(*v3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v3;
    }
  }

  return result;
}

unint64_t UserGraph.output(connectedTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OrderedDictionary.subscript.getter(*a1, *v2, v2[1], v2[2], &v20);
  v6 = v21;
  v7 = 0uLL;
  if (v21)
  {
    v8 = v24;
    v9 = v25;
    v11 = v22;
    v10 = v23;
    v34 = v20;

    outlined destroy of [Input](&v34, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    v33 = v6;
    outlined destroy of [Input](&v33, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
    v32 = v11;
    outlined destroy of [Input](&v32, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);

    specialized OrderedDictionary.subscript.getter(a1, v10, v8, v9, &v26);

    v12 = v27;
    if (v27 >= 2)
    {
      v17 = v30;
      v16 = v31;
      v18 = v29;
      v14 = v28;
      v13 = v26;

      outlined destroy of [Input](&v26, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
      v35 = *(a1 + 16);

      outlined init with copy of String(&v35, v19);

      v7 = v18;
      v15 = v17 & 1;
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v7 = 0uLL;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v7;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  return result;
}

void UserGraph.remove(_:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  specialized UserGraph.removeEdges(connectedTo:)(v2);
  v3 = *(v1 + 64);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v2 < *(v3 + 2))
  {
    ShaderGraphNode.update(id:)(-7);
    *(v1 + 64) = v3;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t UserGraph.moveEdge(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  result = specialized OrderedDictionary.subscript.getter(*a1, *v2, v2[1], v2[2], &v37);
  v7 = v38;
  if (v38)
  {
    v9 = v41;
    v8 = v42;
    v11 = v39;
    v10 = v40;
    v12 = v37;
    specialized OrderedDictionary.subscript.getter(a1, v40, v41, v42, &v43);
    result = outlined consume of UserGraph.Adjacent?(v12, v7, v11, v10, v9, v8);
    v13 = v44;
    if (v44 >= 2)
    {
      v14 = v45;
      v15 = v46;
      v16 = a2;
      v17 = v47;
      v18 = v49;
      v33 = *(&v45 + 1);
      v34 = v43;
      v51[0] = v43;
      v51[1] = v44;
      v52 = v45;
      v53 = v46;
      v54 = v47;
      *v55 = *v48;
      *&v55[3] = *&v48[3];
      v56 = v49;
      v19 = specialized OrderedDictionary.subscript.modify(v60, *v16);
      if (*(v20 + 8))
      {
        v59 = *(v16 + 16);
        v57 = v52;
        v62[0] = v34;
        v62[1] = v13;
        v62[2] = v14;
        v62[3] = v33;
        v62[4] = v15;
        v62[5] = v17 & 1;
        v62[6] = v18;
        v21 = v19;

        outlined init with copy of String(&v59, v50);

        outlined init with copy of String(&v57, v50);
        specialized OrderedDictionary.subscript.setter(v62, v16);
        v21(v60, 0);
      }

      else
      {
        v19(v60, 0);
      }

      v22 = specialized OrderedDictionary.subscript.modify(v50, v5);
      if (*(v23 + 8))
      {
        v58 = *(a1 + 16);
        *v60 = xmmword_265F1F680;
        memset(&v60[2], 0, 32);
        v61 = 0;

        outlined init with copy of String(&v58, v36);
        specialized OrderedDictionary.subscript.setter(v60, a1);
      }

      v22(v50, 0);
      v24 = v51[0];
      v25 = specialized OrderedDictionary.subscript.modify(v36, v51[0]);
      if (*(v26 + 8))
      {
        v27 = specialized OrderedDictionary.subscript.modify(v35, v51);
        if (*(v28 + 8))
        {
          specialized OrderedSet.remove(_:)(a1, v50);
          outlined destroy of [Input](v50, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
        }

        v27(v35, 0);
        v25(v36, 0);
      }

      else
      {
        v25(v36, 0);
      }

      v29 = specialized OrderedDictionary.subscript.modify(v36, v24);
      if (*(v30 + 8))
      {
        v31 = specialized OrderedDictionary.subscript.modify(v35, v51);
        if (*(v32 + 8))
        {
          specialized OrderedSet._append(_:)(v16);
        }

        v31(v35, 0);
        v29(v36, 0);
      }

      else
      {
        v29(v36, 0);
      }

      *v36 = v52;
      return outlined destroy of String(v36);
    }
  }

  return result;
}

uint64_t UserGraph.copyEdge(originalDestination:newDestination:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  specialized OrderedDictionary.subscript.getter(*a2, *v2, v2[1], v2[2], &v17);
  v6 = v18;
  if (v18 && (v7 = v21, v8 = v22, v10 = v19, v9 = v20, v35 = v17, , , , outlined destroy of [Input](&v35, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR), v34 = v6, outlined destroy of [Input](&v34, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR), v33 = v10, outlined destroy of [Input](&v33, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR), , , , specialized OrderedDictionary.subscript.getter(a2, v9, v7, v8, v23), , , , v23[1] >= 2uLL))
  {

    outlined destroy of [Input](v23, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
    v37[0] = *(a2 + 16);

    outlined init with copy of String(v37, v29);
  }

  else
  {
    v11 = *(v3 + 9);
    v37[8] = *(v3 + 8);
    v38[0] = v11;
    *(v38 + 9) = *(v3 + 153);
    v12 = *(v3 + 5);
    v37[4] = *(v3 + 4);
    v37[5] = v12;
    v13 = *(v3 + 7);
    v37[6] = *(v3 + 6);
    v37[7] = v13;
    v14 = *(v3 + 1);
    v37[0] = *v3;
    v37[1] = v14;
    v15 = *(v3 + 3);
    v37[2] = *(v3 + 2);
    v37[3] = v15;
    UserGraph.output(connectedTo:)(a1, &v24);
    if (v25)
    {
      v29[0] = v24;
      v29[1] = v25;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      UserGraph.connect(_:to:)(v29, a2);

      v36 = v30;
      outlined destroy of String(&v36);
      return 1;
    }
  }

  return 0;
}

uint64_t UserGraph.replaceShaderGraphData(for:with:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 64);
  outlined copy of NodePersonality(a2);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v7 = *(a1 + 24);
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  v7 = *(a1 + 24);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v7 < *(v5 + 16))
  {
    v8 = v5 + 48 * v7;
    v9 = *(v8 + 32);
    *(v8 + 32) = a2;
    result = outlined consume of NodePersonality(v9);
    *(v2 + 64) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void UserGraph.hoist(_:)(unint64_t *a1)
{
  v2 = *a1;
  v90 = v2;
  if (v2 >> 61 != 6)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  v3 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[6];
  v69[4] = v3[5];
  v69[5] = v8;
  v69[2] = v6;
  v69[3] = v7;
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[9];
  v12 = v3[10];
  *(v70 + 9) = *(v3 + 169);
  v69[8] = v11;
  v70[0] = v12;
  v69[6] = v9;
  v69[7] = v10;
  v69[0] = v4;
  v69[1] = v5;
  v13 = v3[10];
  v79 = v3[9];
  v80[0] = v13;
  *(v80 + 9) = *(v3 + 169);
  v14 = v3[6];
  v75 = v3[5];
  v76 = v14;
  v15 = v3[8];
  v77 = v3[7];
  v78 = v15;
  v16 = v3[2];
  v71 = v3[1];
  v72 = v16;
  v17 = v3[4];
  v73 = v3[3];
  v74 = v17;
  outlined init with copy of UserGraph(v69, v91);
  UserGraph.flatten()();
  v18 = *(&v77 + 1);
  v19 = *(&v80[0] + 1);
  v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0cD4NodeV2IDV_AGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v20 = v75;
  v21 = *(v75 + 16);

  if (!v21)
  {
LABEL_13:

    v30 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph6OutputV_SayAFGTt0g5Tf4g_nTm(v29, lazy protocol witness table accessor for type Output and conformance Output, &type metadata for Output, specialized Set._Variant.insert(_:));

    v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph6OutputV_SayAFGTt0g5Tf4g_nTm(v31, lazy protocol witness table accessor for type Input and conformance Input, &type metadata for Input, specialized Set._Variant.insert(_:));

    v98 = v79;
    v99[0] = v80[0];
    *(v99 + 9) = *(v80 + 9);
    v94 = v75;
    v95 = v76;
    v97 = v78;
    v96 = v77;
    *v91 = v71;
    *&v91[16] = v72;
    v93 = v74;
    v92 = v73;
    outlined init with copy of UserGraph(v91, &v58);
    v33 = UserGraph.sinkNodes()();
    specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(v91, v33, v81);
    outlined destroy of UserGraph(v91);
    v34 = a1[1];
    v35 = a1[2];
    v89 = v34;
    v88 = v35;
    v87 = v81[0];
    v86 = v81[1];
    v85 = v81[2];
    v84 = v81[3];
    v83 = v81[4];

    outlined init with copy of NodePersonality(&v90, &v58);
    outlined init with copy of [Input](&v89, &v58, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v88, &v58, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined init with copy of [Input](&v87, &v58, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    outlined init with copy of [Input](&v86, &v58, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
    outlined init with copy of [Input](&v85, &v58, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
    outlined init with copy of [Input](&v84, &v58, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v83, &v58, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
    while (1)
    {
      UserGraph.DepthFirstEdgeIterator.next()(v82);
      v55 = v82[4];
      v56 = v82[5];
      v57 = v82[6];
      v51 = v82[0];
      v52 = v82[1];
      v53 = v82[2];
      v54 = v82[3];
      if (!*(&v82[0] + 1))
      {
        break;
      }

      v62 = v55;
      v63 = v56;
      v64 = v57;
      v58 = v51;
      v59 = v52;
      v60 = v53;
      v61 = v54;
      specialized closure #2 in UserGraph.hoist(_:)(&v58, v30, v32, v34, v35, v1, &v68);
      v48 = v62;
      v49 = v63;
      v50 = v64;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v47 = v61;
      outlined destroy of Edge(&v44);
    }

    outlined destroy of NodePersonality(&v90);
    outlined destroy of [Input](&v89, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v88, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    outlined destroy of [Input](&v87, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    outlined destroy of [Input](&v86, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
    outlined destroy of [Input](&v85, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
    outlined destroy of [Input](&v84, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v83, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);

    v40 = a1[3];
    specialized UserGraph.removeEdges(connectedTo:)(v40);
    v41 = *(v1 + 64);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v40 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
      if ((v40 & 0x8000000000000000) == 0)
      {
LABEL_21:
        if (v40 < *(v41 + 2))
        {
          ShaderGraphNode.update(id:)(-7);
          *(v1 + 64) = v41;
          v66 = v79;
          v67[0] = v80[0];
          *(v67 + 9) = *(v80 + 9);
          v62 = v75;
          v63 = v76;
          v64 = v77;
          v65 = v78;
          v58 = v71;
          v59 = v72;
          v60 = v73;
          v61 = v74;
          outlined destroy of UserGraph(&v58);

          return;
        }

        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v44 = v58;
    v45 = v59;
    v46 = v60;
    v47 = v61;
    outlined destroy of Edge(&v44);

    __break(1u);
    return;
  }

  v22 = 0;
  while (v22 < v21)
  {
    v23 = v20 + 32 + 48 * v22;
    v24 = *(v23 + 24);
    v26 = __OFADD__(v22++, 1);
    if (v24 == -7)
    {
      if (v26)
      {
        goto LABEL_27;
      }

      if (v22 >= v21)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v26)
      {
        goto LABEL_28;
      }

      v27 = *(v23 + 40);
      v28 = *(v23 + 32);
      *v91 = *v23;
      *&v91[8] = *(v23 + 8);
      *&v91[24] = v24;
      *&v92 = v28;
      BYTE8(v92) = v27;
      specialized closure #1 in UserGraph.hoist(_:)(v91, v18, v19, v1, &v68);
      if (v22 >= v21)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  swift_once();
LABEL_17:
  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, logger);
  oslog = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v91 = v39;
    *v38 = 136315138;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x3A5F287473696F68, 0xE900000000000029, v91);
    _os_log_impl(&dword_265D7D000, oslog, v37, "%s: Called on a non-graph node.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x266773120](v39, -1, -1);
    MEMORY[0x266773120](v38, -1, -1);
  }

  else
  {
  }
}

unint64_t *UserGraph.node(containingInput:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  if (*result == -7)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0uLL;
LABEL_6:
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v9;
    *(a2 + 40) = v8;
    return result;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v2 + 64);
    if (v4 < *(v10 + 16))
    {
      v11 = v10 + 48 * v4;
      v5 = *(v11 + 32);
      v6 = *(v11 + 40);
      v7 = *(v11 + 48);
      v12 = *(v11 + 56);
      v8 = *(v11 + 72);
      outlined copy of NodePersonality(v5);

      v9 = v12;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t UserGraph.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v64 = *(a1 + 56);
  v3 = *(a1 + 88);
  v65 = *(a1 + 72);
  v66 = v3;
  v67 = *(a1 + 104);
  v4 = *(a1 + 16);
  v62[0] = *a1;
  v62[1] = v4;
  v62[2] = *(a1 + 32);
  v63 = *(a1 + 48);
  v6 = specialized OrderedDictionary.subscript.modify(v61, *&v62[0]);
  v7 = v5[1];
  if (!v7)
  {
    v6(v61, 0);
    goto LABEL_25;
  }

  v8 = v5;
  v9 = *v5;
  v10 = *(v7 + 16);
  if (!*v5)
  {
    v16 = specialized Collection<>.firstIndex(of:)(v62, v7 + 32, *(v7 + 16));
    if ((v17 & 1) == 0)
    {
      v11 = v16;
      goto LABEL_19;
    }

    v15 = 0;
LABEL_8:
    specialized OrderedSet._appendNew(_:in:)(v62, v15, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA5InputV_SayAHGTt0g5(MEMORY[0x277D84F90]);
    v19 = v18;
    v21 = v20;
    v24 = v8[2];
    v22 = v8 + 2;
    v23 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1);
      v23 = *v22;
    }

    v27 = *(v23 + 16);
    v26 = *(v23 + 24);
    if (v27 >= v26 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
      v23 = *v22;
    }

    *(v23 + 16) = v27 + 1;
    v28 = v23 + 16 * v27;
    *(v28 + 32) = v19;
    *(v28 + 40) = v21;
    v11 = *v22;
    v29 = *(*v22 + 16);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v11;
    if ((v30 & 1) == 0)
    {
      v11 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v11);
      *v22 = v11;
    }

    if (v29)
    {
      v32 = *(v11 + 16);
      v11 += 16;
      v31 = v32;
      if (v29 <= v32)
      {
        v33 = v11 + 16 * v29;
        v68 = v65;

        outlined init with copy of String(&v68, v60);
        v11 = 0;
        v34 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v33 + 8), &v64);
        v35 = *(*(v33 + 8) + 16);
        if (v35 < v34)
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        goto LABEL_24;
      }

      goto LABEL_49;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v62, v7 + 32, v10, (v9 + 16), v9 + 32);
  v13 = v12;
  v15 = v14;

  if (v13)
  {
    goto LABEL_8;
  }

LABEL_19:
  v29 = v8[2];
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v8[2] = v29;
  if ((v36 & 1) == 0)
  {
    v29 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v29);
    v8[2] = v29;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  v31 = *(v29 + 16);
  if (v11 >= v31)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v6, 1);
    v50 = *v11;
LABEL_35:
    v50[2] = v6;
    v53 = &v50[7 * v29];
    *(v53 + 2) = 0u;
    *(v53 + 3) = 0u;
    *(v53 + 4) = 0u;
    v53[10] = 0;
    v54 = *v11;
    v55 = *(*v11 + 16);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v54;
    if ((v56 & 1) == 0)
    {
      v54 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v54);
      *v11 = v54;
    }

    if (v55)
    {
      if (v55 <= v54[2])
      {
        v57 = &v54[7 * v55 - 3];
LABEL_46:
        outlined consume of Output?(*v57, *(v57 + 8), *(v57 + 16), *(v57 + 24));
        *(v57 + 48) = 0;
        *(v57 + 16) = 0u;
        *(v57 + 32) = 0u;
        *v57 = 0u;
        return v2(v61, 0);
      }

      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_53;
  }

  v37 = (v29 + 16 * v11);
  v68 = v65;

  outlined init with copy of String(&v68, v60);
  v11 = 0;
  v34 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v37 + 5, &v64);
  v35 = *(v37[5] + 16);
  if (v35 < v34)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_24:
  specialized ContiguousArray.replaceSubrange<A>(_:with:)(v34, v35, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  specialized OrderedSet._regenerateHashTable()(_s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt2g5Tm);
  v6(v61, 0);
LABEL_25:
  v2 = specialized OrderedDictionary.subscript.modify(v61, v64);
  if (!v38[1])
  {
    return v2(v61, 0);
  }

  v11 = v38;
  v39 = v38[3];
  v40 = v38[4];
  v41 = *(v40 + 16);
  if (!v39)
  {
    v48 = specialized Collection<>.firstIndex(of:)(&v64, v40 + 32, *(v40 + 16));
    if ((v49 & 1) == 0)
    {
      v42 = v48;
      goto LABEL_41;
    }

    v46 = 0;
LABEL_32:
    specialized OrderedSet._appendNew(_:in:)(&v64, v46, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    v51 = *(v11 + 40);
    v11 += 40;
    v50 = v51;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v51;
    if ((v52 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1);
      v50 = *v11;
    }

    v29 = v50[2];
    v31 = v50[3];
    v6 = (v29 + 1);
    if (v29 < v31 >> 1)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  v42 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v64, v40 + 32, v41, (v39 + 16), v39 + 32);
  v44 = v43;
  v46 = v45;

  if (v44)
  {
    goto LABEL_32;
  }

LABEL_41:
  v58 = *(v11 + 40);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 40) = v58;
  if ((v59 & 1) == 0)
  {
    v58 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v58);
    *(v11 + 40) = v58;
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v42 < v58[2])
  {
    v57 = &v58[7 * v42 + 4];
    goto LABEL_46;
  }

LABEL_57:
  __break(1u);

  result = specialized OrderedSet._regenerateHashTable()(_s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt2g5Tm);
  __break(1u);
  return result;
}

uint64_t UserGraph.connectedBreathFirstUpstreamSubgraph(rootedAt:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVGMR);
  inited = swift_initStackObject();
  v5 = *a1;
  v59 = a1[1];
  v60[0] = v5;
  v58 = a1[2];
  v7 = *a1;
  v6 = *(a1 + 1);
  inited[1] = xmmword_265F1F670;
  inited[2] = v7;
  inited[3] = v6;
  *(inited + 57) = *(a1 + 25);
  outlined init with copy of UserGraph(v2, &v44);
  outlined init with copy of NodePersonality(v60, &v44);
  outlined init with copy of [Input](&v59, &v44, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v58, &v44, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized UserGraph.BreathFirstEdgeIterator.init(_:initial:)(v2, inited, v48);
  v37 = v2;
  outlined destroy of UserGraph(v2);
  v8 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v56 = v48[1];
  v57 = v48[0];
  v54 = v48[3];
  v55 = v48[2];
  v52 = v48[5];
  v53 = v48[4];
  outlined init with copy of [Input](&v57, &v44, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v56, &v44, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v55, &v44, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v54, &v44, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v53, &v44, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v52, &v44, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
  UserGraph.BreathFirstEdgeIterator.next()(&v49);
  if (v50)
  {
    do
    {
      v9 = v49;
      specialized OrderedSet._append(_:)(v51);
      specialized OrderedSet._append(_:)(v9);
      outlined destroy of [Input](&v49, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
      UserGraph.BreathFirstEdgeIterator.next()(&v49);
    }

    while (v50);
    v10 = v43;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    v35 = a1;
    v44 = v8;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v13 = 0;
    v14 = v44;
    v15 = *(v37 + 64);
    v38 = v15 + 32;
    v39 = v11;
    v40 = v10;
    v41 = *(v15 + 16);
    while (v13 < *(v10 + 16))
    {
      v16 = *(v10 + 8 * v13 + 32);
      if (v16 >= v41)
      {
        goto LABEL_16;
      }

      v17 = v38 + 48 * v16;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v42 = *(v17 + 32);
      v22 = *(v17 + 40);
      outlined copy of NodePersonality(*v17);
      v44 = v14;
      v23 = *(v14 + 16);
      v24 = *(v14 + 24);

      if (v23 >= v24 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v23 + 1, 1);
        v14 = v44;
      }

      ++v13;
      *(v14 + 16) = v23 + 1;
      v25 = v14 + 48 * v23;
      *(v25 + 32) = v18;
      *(v25 + 40) = v19;
      *(v25 + 48) = v20;
      *(v25 + 56) = v21;
      *(v25 + 64) = v42;
      *(v25 + 72) = v22;
      v10 = v40;
      if (v39 == v13)
      {

        v26 = v14;
        v27 = a2;
        a1 = v35;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
    v27 = a2;
LABEL_14:
    v28 = swift_initStackObject();
    v29 = *a1;
    v30 = *(a1 + 1);
    v28[1] = xmmword_265F1F670;
    v28[2] = v29;
    v28[3] = v30;
    *(v28 + 57) = *(a1 + 25);
    outlined init with copy of UserGraph(v37, &v44);
    outlined init with copy of NodePersonality(v60, &v44);
    outlined init with copy of [Input](&v59, &v44, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v58, &v44, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized UserGraph.BreathFirstEdgeIterator.init(_:initial:)(v37, v28, &v44);
    v31 = v44;
    v32 = v47;
    outlined destroy of UserGraph(v37);
    outlined destroy of [Input](&v57, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    outlined destroy of [Input](&v56, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
    outlined destroy of [Input](&v55, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
    outlined destroy of [Input](&v54, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v53, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
    result = outlined destroy of [Input](&v52, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
    v33 = v45;
    v34 = v46;
    *v27 = v26;
    *(v27 + 8) = v31;
    *(v27 + 16) = v33;
    *(v27 + 32) = v34;
    *(v27 + 48) = v32;
  }

  return result;
}

uint64_t UserGraph.removeEdge(to:)(unint64_t *a1)
{
  result = specialized OrderedDictionary.subscript.getter(*a1, *v1, v1[1], v1[2], &v14);
  v4 = v15;
  if (v15)
  {
    v6 = v18;
    v5 = v19;
    v8 = v16;
    v7 = v17;
    v9 = v14;
    specialized OrderedDictionary.subscript.getter(a1, v17, v18, v19, &v20);
    result = outlined consume of UserGraph.Adjacent?(v9, v4, v8, v7, v6, v5);
    if (v21 >= 2)
    {
      v28 = v22;
      v29 = v23;
      v10 = *(a1 + 1);
      v11 = *(a1 + 2);
      v31 = *a1;
      v32 = v10;
      v33 = v11;
      v25 = v22;
      v26 = v10;
      v12 = a1[6];
      v30 = v24;
      v34 = v12;
      v27[0] = v20;
      v27[1] = v21;
      outlined init with copy of [Input](&v20, v13, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);

      outlined init with copy of String(&v25, v13);

      outlined init with copy of String(&v26, v13);
      UserGraph.remove(_:)(v27);
      outlined destroy of Edge(v27);

      outlined destroy of String(&v25);
      return outlined destroy of [Input](&v20, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
    }
  }

  return result;
}

uint64_t Input.label.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

BOOL _s11ShaderGraph6OutputVSQAASQ2eeoiySbx_xtFZTW_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static Input.== infix(_:_:)(v5, v7);
}

uint64_t Input.hash(into:)(uint64_t a1)
{
  MEMORY[0x266772770](*v1);
  (*(**(v1 + 8) + 120))(a1);
  String.hash(into:)();
  if (*(v1 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *(v1 + 32);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v3);
  }

  return MEMORY[0x266772770](*(v1 + 48));
}

Swift::Int Input.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](*v0);
  (*(**(v0 + 8) + 120))(v3);
  String.hash(into:)();
  if (*(v0 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v1);
  }

  MEMORY[0x266772770](*(v0 + 48));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Input()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = v0[6];
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v1);
  (*(*v2 + 120))(v7);
  String.hash(into:)();
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v3);
  }

  MEMORY[0x266772770](v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Input(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  MEMORY[0x266772770](*v1);
  (*(*v3 + 120))(a1);
  String.hash(into:)();
  if (v5 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v4);
  }

  return MEMORY[0x266772770](v6);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Input(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[4];
  v5 = *(v1 + 40);
  v6 = v1[6];
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v2);
  (*(*v3 + 120))(v8);
  String.hash(into:)();
  if (v5 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v4);
  }

  MEMORY[0x266772770](v6);
  return Hasher._finalize()();
}

uint64_t Output.dotID.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  MEMORY[0x266771550](110, 0xE100000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](0x5F7475706E695FLL, 0xE700000000000000);

  v2 = String.Iterator.next()();
  object = v2.value._object;
  if (v2.value._object)
  {
    countAndFlagsBits = v2.value._countAndFlagsBits;
    do
    {
      if ((countAndFlagsBits != 58 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        MEMORY[0x266771540](countAndFlagsBits, object);
      }

      v5 = String.Iterator.next()();
      countAndFlagsBits = v5.value._countAndFlagsBits;
      object = v5.value._object;
    }

    while (v5.value._object);
    object = 0;
  }

  MEMORY[0x266771550](object, 0xE000000000000000);

  return 103;
}

uint64_t Input.dotID.getter()
{
  _StringGuts.grow(_:)(16);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  MEMORY[0x266771550](110, 0xE100000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](0x5F74757074756F5FLL, 0xE800000000000000);

  v2 = String.Iterator.next()();
  object = v2.value._object;
  if (v2.value._object)
  {
    countAndFlagsBits = v2.value._countAndFlagsBits;
    do
    {
      if ((countAndFlagsBits != 58 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        MEMORY[0x266771540](countAndFlagsBits, object);
      }

      v5 = String.Iterator.next()();
      countAndFlagsBits = v5.value._countAndFlagsBits;
      object = v5.value._object;
    }

    while (v5.value._object);
    object = 0;
  }

  MEMORY[0x266771550](object, 0xE000000000000000);

  return 103;
}

uint64_t Edge.from.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

uint64_t Edge.to.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

uint64_t Edge.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  MEMORY[0x266772770](*v1);
  (*(*v3 + 120))(a1);
  String.hash(into:)();
  if (v5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v4);
  }

  MEMORY[0x266772770](v6);
  v7 = *(v1 + 64);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = *(v1 + 104);
  MEMORY[0x266772770](*(v1 + 56));
  (*(*v7 + 120))(a1);
  String.hash(into:)();
  if (v9)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v8);
  }

  return MEMORY[0x266772770](v10);
}

Swift::Int Edge.hashValue.getter()
{
  Hasher.init(_seed:)();
  Edge.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Edge()
{
  Hasher.init(_seed:)();
  Edge.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Edge(uint64_t a1)
{
  Hasher.init(_seed:)();
  Edge.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Edge(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return specialized static Edge.== infix(_:_:)(v13, v14) & 1;
}

unint64_t ShaderGraphNode.shaderGraphData.getter()
{
  v1 = *v0;
  outlined copy of NodePersonality(*v0);
  return v1;
}

unint64_t ShaderGraphNode.shaderGraphData.setter(unint64_t a1)
{
  result = outlined consume of NodePersonality(*v1);
  *v1 = a1;
  return result;
}

uint64_t ShaderGraphNode.ID.description.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  return 1701080942;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ShaderGraphNode.ID()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  return 1701080942;
}

Swift::Void __swiftcall ShaderGraphNode.update(id:)(ShaderGraph::ShaderGraphNode::ID id)
{
  v1[3].value = id.value;
  value = v1[1].value;
  v4 = *(value + 16);

  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = value;
    while (v6 < *(value + 16))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      if (v6 >= *(v7 + 2))
      {
        goto LABEL_19;
      }

      ++v6;
      *&v7[v5 + 32] = id;

      v1[1].value = v7;
      v5 += 56;
      if (v4 == v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_8:

    v8 = v1[2].value;
    v9 = *(v8 + 16);

    if (!v9)
    {
LABEL_15:

      return;
    }

    v10 = 0;
    v11 = 0;
    v12 = v8;
    while (v11 < *(v8 + 16))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      }

      if (v11 >= *(v12 + 2))
      {
        goto LABEL_21;
      }

      ++v11;
      *&v12[v10 + 32] = id;

      v1[2].value = v12;
      v10 += 56;
      if (v9 == v11)
      {
        goto LABEL_15;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void ShaderGraphNode.hash(into:)(uint64_t a1)
{
  NodePersonality.hash(into:)(a1, *v1);
  specialized Array<A>.hash(into:)();
  specialized Array<A>.hash(into:)();
  MEMORY[0x266772770](*(v1 + 24));
  if (*(v1 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v1 + 32);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v2);
  }
}

Swift::Int ShaderGraphNode.hashValue.getter()
{
  Hasher.init(_seed:)();
  NodePersonality.hash(into:)(v3, *v0);
  specialized Array<A>.hash(into:)();
  specialized Array<A>.hash(into:)();
  MEMORY[0x266772770](*(v0 + 24));
  if (*(v0 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ShaderGraphNode()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  Hasher.init(_seed:)();
  NodePersonality.hash(into:)(v6, v1);
  specialized Array<A>.hash(into:)();
  specialized Array<A>.hash(into:)();
  MEMORY[0x266772770](v2);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v3);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ShaderGraphNode(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  NodePersonality.hash(into:)(a1, *v1);
  specialized Array<A>.hash(into:)();
  specialized Array<A>.hash(into:)();
  MEMORY[0x266772770](v2);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v3);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ShaderGraphNode(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  Hasher.init(_seed:)();
  NodePersonality.hash(into:)(v7, v2);
  specialized Array<A>.hash(into:)();
  specialized Array<A>.hash(into:)();
  MEMORY[0x266772770](v3);
  if (v5 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ShaderGraphNode(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return specialized static ShaderGraphNode.== infix(_:_:)(&v5, &v7) & 1;
}

uint64_t UserGraph.Iterator.isLiving.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t UserGraph.Iterator.init(elements:isLiving:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a8@<X8>)
{
  swift_unknownObjectRetain();
  v15 = ArraySlice.startIndex.getter();
  result = swift_unknownObjectRelease();
  *a8 = v15;
  a8[1] = a1;
  a8[2] = a2;
  a8[3] = a3;
  a8[4] = a4;
  a8[5] = a5;
  a8[6] = a6;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UserGraph.Iterator<A>(uint64_t a1, uint64_t a2)
{
  v2 = specialized Sequence._copyToContiguousArray()();
  swift_unknownObjectRelease();

  return v2;
}

void UserGraph.DepthFirstEdgeIterator.next()(uint64_t a1@<X8>)
{
  v3 = (v1 + 24);
  v2 = *(v1 + 24);
  v4 = *(v2 + 2);
  v5 = 0uLL;
  if (v4)
  {
    v6 = v1;
    v49 = a1;
    v54 = (v1 + 24);
    while (1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = *(v2 + 2);
        if (!v8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v8 = *(v2 + 2);
        if (!v8)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          v35 = 0;
          v34 = 0;
          v36 = 0;
          v33 = 0;
          v37 = 0;
          v4 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0uLL;
          v41 = 0uLL;
          a1 = v49;
          v5 = 0uLL;
          goto LABEL_30;
        }
      }

      v9 = v8 - 1;
      v10 = &v2[56 * v8];
      v11 = *(v10 - 24);
      v12 = *(v10 - 8);
      v13 = *(v10 + 8);
      v70 = *(v10 + 3);
      v68 = v12;
      v69 = v13;
      v67 = v11;
      *(v2 + 2) = v9;
      *v3 = v2;
      if (specialized Set.contains(_:)(&v67, v6[4]))
      {

        v71 = v68;
        v7 = &v71;
      }

      else
      {
        v72[0] = v68;

        outlined init with copy of String(v72, &v56);
        specialized Set._Variant.insert(_:)(&v56, &v67);

        v14 = *v6;
        v15 = v6[1];
        v16 = v6[2];
        v17 = v15 + 32;
        v18 = *(v15 + 16);
        if (*v6)
        {
          v19 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v67, v17, v18, (v14 + 16), v14 + 32);
          if (v20)
          {
            goto LABEL_19;
          }

          if ((v19 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            return;
          }
        }

        else
        {
          if (!v18)
          {
LABEL_19:

            v7 = v72;
            goto LABEL_4;
          }

          v19 = 0;
          while (*(v17 + 8 * v19) != v67)
          {
            if (v18 == ++v19)
            {
              goto LABEL_19;
            }
          }
        }

        if (v19 >= *(v16 + 16))
        {
          goto LABEL_36;
        }

        v21 = (v16 + 48 * v19);
        v22 = v21[7];
        v23 = v21[8];
        v24 = v21[9];
        v25 = *(v23 + 16);
        if (v22)
        {

          v26 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v67, v23 + 32, v25, (v22 + 16), v22 + 32);
          if (v27)
          {
            goto LABEL_21;
          }
        }

        else
        {

          v26 = specialized Collection<>.firstIndex(of:)(&v67, v23 + 32, v25);
          if (v28)
          {
LABEL_21:

            v7 = v72;
            goto LABEL_4;
          }
        }

        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v26 >= *(v24 + 16))
        {
          goto LABEL_38;
        }

        v50 = v16;
        v29 = (v24 + 56 * v26);
        v30 = v29[5];
        v31 = v29[9];
        v32 = v29[10];
        v51 = v29[6];
        v52 = v29[4];
        v33 = v29[7];
        v53 = v29[8];
        outlined copy of Output?(v52, v30, v51, v33);

        v34 = v30;

        if (v30)
        {

          v36 = v51;
          v47 = v32;
          outlined consume of Output?(v52, v34, v51, v33);
          v39 = v31 & 1;
          LOBYTE(v56) = v39;
          v48 = v67;
          v45 = v69;
          v46 = v68;
          v38 = v70;
          specialized OrderedDictionary.subscript.getter(v52, v14, v15, v50, &v56);
          v42 = v57;
          v37 = v53;
          if (v57)
          {
            v43 = v60;
            v44 = v58;
            v64 = v59;
            v62 = v61;
            v63 = v60;
            v66 = v56;

            outlined init with copy of String(v72, v55);
            outlined init with copy of [Input](&v64, v55, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
            outlined init with copy of [Input](&v63, v55, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
            outlined init with copy of [Input](&v62, v55, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
            outlined destroy of [Input](&v66, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
            v55[0] = v42;
            outlined destroy of [Input](v55, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
            v65 = v44;
            outlined destroy of [Input](&v65, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
            outlined destroy of [Input](&v64, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
            outlined destroy of [Input](&v63, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
            outlined destroy of [Input](&v62, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
            v36 = v51;
            outlined destroy of [Input](&v62, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
            v35 = v52;
            v37 = v53;
            outlined destroy of [Input](&v64, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
          }

          else
          {
            v35 = v52;

            outlined init with copy of String(v72, v55);
            v43 = MEMORY[0x277D84F90];
          }

          specialized Array.append<A>(contentsOf:)(v43);

          outlined destroy of String(v72);
          a1 = v49;
          v5 = v48;
          v4 = v47;
          v41 = v45;
          v40 = v46;
          goto LABEL_30;
        }

        v7 = v72;
        v3 = v54;
      }

LABEL_4:
      outlined destroy of String(v7);
      v2 = *v3;
      if (!*(*v3 + 2))
      {
        goto LABEL_28;
      }
    }
  }

  v35 = 0;
  v34 = 0;
  v36 = 0;
  v33 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0uLL;
  v41 = 0uLL;
LABEL_30:
  *a1 = v35;
  *(a1 + 8) = v34;
  *(a1 + 16) = v36;
  *(a1 + 24) = v33;
  *(a1 + 32) = v37;
  *(a1 + 40) = v39;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 72) = v40;
  *(a1 + 88) = v41;
  *(a1 + 104) = v38;
}

double UserGraph.DepthFirstEdgeIterator.init(_:initial:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(a1, a2, v7);
  outlined destroy of UserGraph(a1);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance UserGraph.DepthFirstEdgeIterator@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  result = *(v1 + 24);
  *(a1 + 24) = result;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance UserGraph.DepthFirstEdgeIterator()
{
  v1 = v0[1];
  v7 = *v0;
  v8 = v1;
  v9 = *(v0 + 4);
  specialized _copySequenceToContiguousArray<A>(_:)(&v7);
  v3 = v2;
  v4 = *(&v7 + 1);
  v5 = v8;
  v12 = v7;
  outlined destroy of [Input](&v12, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v11 = v4;
  outlined destroy of [Input](&v11, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  v10 = v5;
  outlined destroy of [Input](&v10, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  v13 = *(&v8 + 1);
  outlined destroy of [Input](&v13, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v14 = v9;
  outlined destroy of [Input](&v14, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  return v3;
}

__n128 protocol witness for IteratorProtocol.next() in conformance UserGraph.DepthFirstEdgeIterator@<Q0>(uint64_t a1@<X8>)
{
  UserGraph.DepthFirstEdgeIterator.next()(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v5[6];
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

void UserGraph.BreathFirstEdgeIterator.next()(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 2);
  v4 = 0uLL;
  if (!v3)
  {
    v105 = 0;
    v69 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0uLL;
    v80 = 0uLL;
    goto LABEL_87;
  }

  v5 = v1;
  v85 = a1;
  while (1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v7 = *(v2 + 2);
      if (!v7)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v7 = *(v2 + 2);
      if (!v7)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        v105 = 0;
        v69 = 0;
        v3 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0uLL;
        v80 = 0uLL;
        a1 = v85;
        v4 = 0uLL;
        goto LABEL_87;
      }
    }

    v8 = v7 - 1;
    v9 = &v2[56 * v7];
    v10 = *(v9 - 24);
    v11 = *(v9 - 8);
    v12 = *(v9 + 8);
    v121 = *(v9 + 3);
    v119 = v11;
    v120 = v12;
    v118 = v10;
    *(v2 + 2) = v8;
    v5[3] = v2;
    v14 = *v5;
    v13 = v5[1];
    v15 = v5[2];
    v16 = v118;
    v17 = v13 + 32;
    v99 = v13;
    if (!*v5)
    {
      break;
    }

    v18 = (v14 + 16);
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v16);
    v19 = Hasher._finalize()();
    v20 = 1 << *(v14 + 16);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v21)
    {
      goto LABEL_96;
    }

    v23 = v22 & v19;
    v24 = _HashTable.UnsafeHandle._startIterator(bucket:)(v22 & v19, (v14 + 16), v14 + 32);
    if (v24)
    {
      v27 = ~(-1 << *v18);
      v28 = *(v14 + 24) >> 6;
      v29 = v28 + (v24 ^ v27);
      if (v29 >= v27)
      {
        v30 = ~(-1 << *v18);
      }

      else
      {
        v30 = 0;
      }

      v31 = v29 - v30;
      if (*(v17 + 8 * (v29 - v30)) != v16)
      {
        v32 = 0;
        v33 = *v18 & 0x3FLL;
        v34 = (1 << v33) - 1;
        v35 = __OFADD__(v33 << v33, 64);
        v36 = (v33 << v33) + 126;
        if ((v33 << v33) + 64 >= 1)
        {
          v36 = (v33 << v33) + 63;
        }

        v37 = v36 >> 6;
        do
        {
          if (++v23 == 1 << v33)
          {
            if (v32)
            {
              goto LABEL_101;
            }

            v23 = 0;
            v32 = 1;
          }

          if (v26 >= v33)
          {
            v21 = __OFSUB__(v26, v33);
            v26 -= v33;
            if (v21)
            {
              __break(1u);
LABEL_93:
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
              goto LABEL_100;
            }

            v45 = v25 >> v33;
            v46 = v25 & v34;
            if ((v25 & v34) == 0)
            {
              goto LABEL_3;
            }
          }

          else
          {
            v38 = (v23 * v33) >> 6;
            if (v26)
            {
              if (v35)
              {
                goto LABEL_95;
              }

              if (v38 + 1 == v37)
              {
                v38 = 0;
              }

              else
              {
                ++v38;
              }
            }

            v39 = v33 - v26;
            if (__OFSUB__(v33, v26))
            {
              goto LABEL_93;
            }

            v40 = v38 == 2 && v33 == 5;
            v41 = 64;
            if (v40)
            {
              v41 = 32;
            }

            v21 = __OFSUB__(v41, v39);
            v42 = v41 - v39;
            if (v21)
            {
              goto LABEL_94;
            }

            v43 = *(v14 + 32 + 8 * v38);
            v44 = (v43 << v26) | v25;
            v45 = v43 >> v39;
            v26 = v42;
            v46 = v44 & v34;
            if ((v44 & v34) == 0)
            {
              goto LABEL_3;
            }
          }

          v47 = (v46 ^ v27) + v28;
          if (v47 >= v27)
          {
            v48 = ~(-1 << *v18);
          }

          else
          {
            v48 = 0;
          }

          v31 = v47 - v48;
          v25 = v45;
        }

        while (*(v17 + 8 * v31) != v16);
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      goto LABEL_45;
    }

LABEL_3:

    v122 = v119;
    v6 = &v122;
LABEL_4:
    outlined destroy of String(v6);
    v2 = v5[3];
    if (!*(v2 + 2))
    {
      goto LABEL_85;
    }
  }

  v57 = *(v13 + 16);
  if (!v57)
  {
    goto LABEL_3;
  }

  v31 = 0;
  while (*(v17 + 8 * v31) != v118)
  {
    if (v57 == ++v31)
    {
      goto LABEL_3;
    }
  }

LABEL_45:
  if (v31 >= *(v15 + 16))
  {
    goto LABEL_98;
  }

  v49 = (v15 + 48 * v31);
  v51 = v49[7];
  v50 = v49[8];
  v52 = v49[9];
  v53 = *(v50 + 16);
  v123[0] = v119;
  if (!v51)
  {
    v103 = *(&v118 + 1);
    v96 = v52;
    if (!v53)
    {

LABEL_81:

      v5 = v88;
      goto LABEL_82;
    }

    v86 = v15;
    v87 = v14;
    v92 = v120;
    v94 = v121;
    v90 = BYTE8(v120);
    v89 = BYTE8(v120) ^ 1;

    v58 = 0;
    v59 = (v50 + 80);
    while (1)
    {
      if (*(v59 - 6) != v16)
      {
        goto LABEL_57;
      }

      v60 = *(v59 - 4);
      v61 = *(v59 - 3);
      v101 = *(v59 - 2);
      v62 = *(v59 - 8);
      v104 = *v59;
      v63 = *(**(v59 - 5) + 128);

      if ((v63(v103) & 1) == 0)
      {

        goto LABEL_57;
      }

      if (v60 == *&v123[0] && v61 == *(&v123[0] + 1))
      {

        if (v62)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v65 & 1) == 0)
        {
          goto LABEL_57;
        }

        if (v62)
        {
LABEL_66:
          v66 = v90;
          if (v104 != v94)
          {
            v66 = 0;
          }

          if (v66)
          {
            goto LABEL_75;
          }

          goto LABEL_57;
        }
      }

      v67 = v89;
      if (v101 != v92)
      {
        v67 = 0;
      }

      if (v67 == 1 && v104 == v94)
      {
LABEL_75:
        v14 = v87;
        v5 = v88;
        v15 = v86;
        goto LABEL_77;
      }

LABEL_57:
      v59 += 7;
      if (v53 == ++v58)
      {
        goto LABEL_81;
      }
    }
  }

  v54 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v118, v50 + 32, v53, (v51 + 16), v51 + 32);
  v55 = v52;
  if (v56)
  {

LABEL_82:

    v6 = v123;
    goto LABEL_4;
  }

  v58 = v54;
  v96 = v55;
  if (v54 < 0)
  {
    goto LABEL_99;
  }

LABEL_77:
  if (v58 < *(v96 + 16))
  {
    v68 = (v96 + 56 * v58);
    v69 = v68[5];
    v70 = v68[6];
    v71 = v68[7];
    v73 = v68[8];
    v72 = v68[9];
    v105 = v68[4];
    v102 = v68[10];
    outlined copy of Output?(v105, v69, v70, v71);

    if (!v69)
    {

      v6 = v123;
      goto LABEL_4;
    }

    v81 = v70;
    v82 = v15;
    v95 = v71;
    v97 = v81;
    outlined consume of Output?(v105, v69, v81, v71);
    v78 = v72 & 1;
    LOBYTE(v106) = v72 & 1;
    v98 = v118;
    v91 = v120;
    v93 = v119;
    v77 = v121;
    specialized OrderedDictionary.subscript.getter(v105, v14, v99, v82, &v106);
    v83 = v107;
    v76 = v102;
    if (v107)
    {
      v84 = v110;
      v100 = v108;
      v114 = v110;
      v115 = v109;
      v113 = v111;
      v117 = v106;

      outlined init with copy of String(v123, v112);
      outlined init with copy of [Input](&v115, v112, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
      outlined init with copy of [Input](&v114, v112, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
      outlined init with copy of [Input](&v113, v112, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
      outlined destroy of [Input](&v117, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
      v112[0] = v83;
      outlined destroy of [Input](v112, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
      v116 = v100;
      outlined destroy of [Input](&v116, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
      outlined destroy of [Input](&v115, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
      outlined destroy of [Input](&v114, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v113, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
      v5 = v88;
      outlined destroy of [Input](&v113, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
      outlined destroy of [Input](&v115, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    }

    else
    {

      outlined init with copy of String(v123, v112);
      v84 = MEMORY[0x277D84F90];
    }

    specialized Sequence.forEach(_:)(v84, v5);

    outlined destroy of String(v123);

    a1 = v85;
    v4 = v98;
    v74 = v95;
    v3 = v97;
    v75 = v73;
    v80 = v91;
    v79 = v93;
LABEL_87:
    *a1 = v105;
    *(a1 + 8) = v69;
    *(a1 + 16) = v3;
    *(a1 + 24) = v74;
    *(a1 + 32) = v75;
    *(a1 + 40) = v78;
    *(a1 + 48) = v76;
    *(a1 + 56) = v4;
    *(a1 + 72) = v79;
    *(a1 + 88) = v80;
    *(a1 + 104) = v77;
    return;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double UserGraph.BreathFirstEdgeIterator.init(_:initial:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  specialized UserGraph.BreathFirstEdgeIterator.init(_:initial:)(a1, a2, v7);
  outlined destroy of UserGraph(a1);
  v5 = v7[1];
  *a3 = v7[0];
  a3[1] = v5;
  result = *&v8;
  a3[2] = v8;
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance UserGraph.BreathFirstEdgeIterator@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = v2;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance UserGraph.BreathFirstEdgeIterator()
{
  v1 = v0[1];
  v7 = *v0;
  v8 = v1;
  v9 = v0[2];
  specialized _copySequenceToContiguousArray<A>(_:)(&v7);
  v3 = v2;
  v4 = *(&v7 + 1);
  v5 = v8;
  v12 = v7;
  outlined destroy of [Input](&v12, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v11 = v4;
  outlined destroy of [Input](&v11, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  v10 = v5;
  outlined destroy of [Input](&v10, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  v13 = *(&v8 + 1);
  outlined destroy of [Input](&v13, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v14 = v9;
  outlined destroy of [Input](&v14, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  v15 = *(&v9 + 1);
  outlined destroy of [Input](&v15, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
  return v3;
}

__n128 protocol witness for IteratorProtocol.next() in conformance UserGraph.BreathFirstEdgeIterator@<Q0>(uint64_t a1@<X8>)
{
  UserGraph.BreathFirstEdgeIterator.next()(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v5[6];
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

Swift::Int ShaderGraphNode.ID.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  return Hasher._finalize()();
}

uint64_t UserGraph.Adjacent.outgoing.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserGraph.Adjacent.outgoing.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t UserGraph.Adjacent.incoming.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t UserGraph.Adjacent.incoming.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return result;
}

double UserGraph.Adjacent.init(_:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[2];
  v10 = a1[1];
  v11 = v4;
  specialized UserGraph.Adjacent.init(_:)(v10, v4, v7);
  v9 = *a1;
  outlined destroy of NodePersonality(&v9);
  outlined destroy of [Input](&v10, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v11, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v5 = v7[1];
  *a2 = v7[0];
  a2[1] = v5;
  result = *&v8;
  a2[2] = v8;
  return result;
}

BOOL static UserGraph.Adjacent.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  result = 0;
  if (specialized Sequence<>.elementsEqual<A>(_:)(a2[1], a1[1]) & 1) != 0 && (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph10OrderedSetVyAE5InputVG_Tt1g5(v4, v5))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a2[4];
    v9 = a2[5];
    if (specialized Sequence<>.elementsEqual<A>(_:)(v8, v6))
    {
      _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph6OutputVSg_Tt1g5(v7, v9);
      if (v10)
      {
        return 1;
      }
    }
  }

  return result;
}

void UserGraph.Adjacent.hash(into:)(uint64_t a1)
{
  specialized OrderedDictionary<>.hash(into:)(a1, v1[1], v1[2]);
  v3 = v1[4];
  v4 = v1[5];

  specialized OrderedDictionary<>.hash(into:)(a1, v3, v4);
}

Swift::Int UserGraph.Adjacent.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized OrderedDictionary<>.hash(into:)(v2, v0[1], v0[2]);
  specialized OrderedDictionary<>.hash(into:)(v2, v0[4], v0[5]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserGraph.Adjacent()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = v0[4];
  v3 = v0[5];
  Hasher.init(_seed:)();
  specialized OrderedDictionary<>.hash(into:)(v6, v1, v2);
  specialized OrderedDictionary<>.hash(into:)(v6, v4, v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance UserGraph.Adjacent(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v6 = v1[4];
  v5 = v1[5];
  specialized OrderedDictionary<>.hash(into:)(a1, v3, v4);

  specialized OrderedDictionary<>.hash(into:)(a1, v6, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserGraph.Adjacent(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  Hasher.init(_seed:)();
  specialized OrderedDictionary<>.hash(into:)(v7, v2, v3);
  specialized OrderedDictionary<>.hash(into:)(v7, v5, v4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance UserGraph.Adjacent(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a2[2];
  v7 = a2[4];
  v6 = a2[5];
  result = 0;
  if (specialized Sequence<>.elementsEqual<A>(_:)(a2[1], a1[1]) & 1) != 0 && (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph10OrderedSetVyAE5InputVG_Tt1g5(v2, v5) & 1) != 0 && (specialized Sequence<>.elementsEqual<A>(_:)(v7, v4))
  {
    _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph6OutputVSg_Tt1g5(v3, v6);
    if (v8)
    {
      return 1;
    }
  }

  return result;
}

uint64_t UserGraph.label.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

double UserGraph.edges.getter@<D0>(uint64_t a1@<X8>)
{
  outlined init with copy of UserGraph(v1, v6);
  v3 = UserGraph.sinkNodes()();
  specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(v1, v3, v6);
  outlined destroy of UserGraph(v1);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t UserGraph.sinkNodes()()
{
  v23 = *(v0 + 8);
  v27 = *(v0 + 16);
  v1 = *(v27 + 16);

  v3 = 0;
  v4 = result + 72;
  v20 = v1;
  v21 = MEMORY[0x277D84F90];
  v19 = result + 72;
LABEL_2:
  if (v3 <= v1)
  {
    v5 = v1;
  }

  else
  {
    v5 = v3;
  }

  v24 = v5;
  v6 = v4 + 48 * v3;
  while (1)
  {
    if (v24 == v3)
    {
      outlined destroy of [Input](&v27, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
      return v21;
    }

    if (v3 >= *(v23 + 16))
    {
      break;
    }

    v7 = *(v23 + 32 + 8 * v3);
    v8 = *(v6 - 32);
    v9 = *(v6 - 24);
    ++v3;

    specialized closure #1 in UserGraph.sinkNodes()(v7, v8, v9, v22, v25);
    v10 = v25[0];
    v11 = v25[1];
    v12 = v25[2];
    v13 = v25[3];
    v14 = v25[4];
    v15 = v26;

    v6 += 48;
    if (v11)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v17 = *(v21 + 16);
      v16 = *(v21 + 24);
      if (v17 >= v16 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v21);
        v21 = result;
      }

      *(v21 + 16) = v17 + 1;
      v18 = v21 + 48 * v17;
      *(v18 + 32) = v10;
      *(v18 + 40) = v11;
      *(v18 + 48) = v12;
      *(v18 + 56) = v13;
      *(v18 + 64) = v14;
      *(v18 + 72) = v15 & 1;
      v4 = v19;
      v1 = v20;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

double UserGraph.edgesBreathFirst.getter@<D0>(_OWORD *a1@<X8>)
{
  outlined init with copy of UserGraph(v1, v6);
  v3 = UserGraph.sinkNodes()();
  specialized UserGraph.BreathFirstEdgeIterator.init(_:initial:)(v1, v3, v6);
  outlined destroy of UserGraph(v1);
  v4 = v6[1];
  *a1 = v6[0];
  a1[1] = v4;
  result = *v7;
  a1[2] = v7[0];
  return result;
}

ShaderGraph::UserGraph::ID __swiftcall UserGraph.nextGraphID()()
{
  v1 = *(v0 + 72);
  result.value = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 72) = result;
  }

  return result;
}

uint64_t UserGraph.argumentsNode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  outlined copy of NodePersonality(v3);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
}

uint64_t UserGraph.resultNode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  v6 = *(v1 + 152);
  v7 = *(v1 + 160);
  v8 = *(v1 + 168);
  outlined copy of NodePersonality(v3);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
}

uint64_t specialized OrderedDictionary.subscript.modify(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xE0uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 144) = a2;
  *(v5 + 152) = v2;
  v7 = v2[1];
  v8 = v7 + 32;
  v9 = *(v7 + 16);
  if (*v2)
  {
    v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v8, v9, (*v2 + 16), *v2 + 32);
    v12 = (v6 + 104);
    v13 = (v6 + 112);
    v14 = (v6 + 120);
    v15 = (v6 + 128);
    v16 = (v6 + 136);
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 128) = 0u;
    if ((v17 & 1) == 0)
    {
      v36 = v10;
      goto LABEL_14;
    }

LABEL_12:
    v18 = 1;
LABEL_19:
    *(v6 + 200) = v11;
    *(v6 + 208) = v10;
    *(v6 + 216) = v18;
    *(v6 + 184) = v13;
    *(v6 + 192) = v12;
    *(v6 + 168) = v15;
    *(v6 + 176) = v14;
    *(v6 + 160) = v16;
    return OrderedDictionary.subscript.modifyspecialized ;
  }

  if (!v9)
  {
LABEL_11:
    v11 = 0;
    v10 = 0;
    v12 = (v5 + 104);
    v13 = (v5 + 112);
    *(v5 + 112) = 0u;
    *(v5 + 128) = 0u;
    v14 = (v5 + 120);
    v15 = (v5 + 128);
    v16 = (v5 + 136);
    *(v5 + 96) = 0u;
    goto LABEL_12;
  }

  v11 = 0;
  while (*(v8 + 8 * v11) != a2)
  {
    if (v9 == ++v11)
    {
      goto LABEL_11;
    }
  }

  v36 = 0;
  v12 = (v5 + 104);
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  v13 = (v5 + 112);
  v14 = (v5 + 120);
  v15 = (v5 + 128);
  v16 = (v5 + 136);
  *(v5 + 96) = 0u;
LABEL_14:
  v20 = v2[2];
  v19 = v2 + 2;
  result = specialized MutableCollection.swapAt(_:_:)(v11, *(v20 + 16) - 1);
  v22 = *v19;
  if (*(*v19 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v22);
      v22 = result;
    }

    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48 * v23);
      v25 = *(v24 - 2);
      v26 = *(v24 - 1);
      v27 = *v24;
      v28 = v24[1];
      v30 = v24[2];
      v29 = v24[3];
      *(v22 + 16) = v23 - 1;
      *v19 = v22;
      v31 = *v12;
      v32 = *v13;
      v33 = *v14;
      v34 = *v15;
      v35 = *v16;
      *(v6 + 96) = v25;
      *v12 = v26;
      *v13 = v27;
      *v14 = v28;
      *v15 = v30;
      *v16 = v29;
      outlined consume of UserGraph.Adjacent?(0, v31, v32, v33, v34, v35);
      v18 = 0;
      v10 = v36;
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void OrderedDictionary.subscript.modifyspecialized (__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = **(*a1 + 24);
  v5 = **(*a1 + 23);
  v6 = **(*a1 + 22);
  v7 = **(*a1 + 21);
  v8 = **(*a1 + 20);
  if (a2)
  {
    if ((*(*a1 + 216) & 1) == 0)
    {
      if (!v4)
      {
        v9 = v2[25];
        v10 = v2[19];
        v12 = *(v10 + 16);
        v11 = (v10 + 16);
        if (v9 < *(v12 + 16))
        {
          specialized ContiguousArray.remove(at:)(v9, v2);
          v13 = *v11;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v11 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
            v13 = *v11;
          }

          v16 = *(v13 + 16);
          v15 = *(v13 + 24);
          if (v16 >= v15 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
            v13 = *v11;
          }

          *(v13 + 16) = v16 + 1;
          v17 = (v13 + 48 * v16);
          v18 = *v2;
          v19 = *(v2 + 1);
          v20 = *(v2 + 2);
LABEL_29:
          v17[3] = v19;
          v17[4] = v20;
          v17[2] = v18;
          *v11 = v13;
          v9 = v2[25];
          goto LABEL_30;
        }

        goto LABEL_30;
      }

LABEL_18:
      v32 = v2[19];
      v35 = *(v32 + 16);
      v33 = (v32 + 16);
      v34 = v35;
      outlined copy of UserGraph.Adjacent?(*(*a1 + 12), v4);

      v36 = swift_isUniquelyReferenced_nonNull_native();
      *v33 = v35;
      if ((v36 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 16) + 1, 1);
        v34 = *v33;
      }

      v37 = *(v34 + 16);
      v38 = *(v34 + 24);
      v39 = v37 + 1;
      if (v37 >= v38 >> 1)
      {
        v47 = *(v34 + 16);
        v48 = v37 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v37 + 1, 1);
        v39 = v48;
        v37 = v47;
        v34 = *v33;
      }

      v40 = v2[25];
      *(v34 + 16) = v39;
      v41 = (v34 + 48 * v37);
      v41[4] = v3;
      v41[5] = v4;
      v41[6] = v5;
      v41[7] = v6;
      v41[8] = v7;
      v41[9] = v8;
      *v33 = v34;
      specialized MutableCollection.swapAt(_:_:)(v40, v37);

      goto LABEL_31;
    }
  }

  else if ((*(*a1 + 216) & 1) == 0)
  {
    if (!v4)
    {
      v9 = v2[25];
      v42 = v2[19];
      v43 = *(v42 + 16);
      v11 = (v42 + 16);
      if (v9 < *(v43 + 16))
      {
        specialized ContiguousArray.remove(at:)(v9, (v2 + 6));
        v13 = *v11;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        *v11 = v13;
        if ((v44 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
          v13 = *v11;
        }

        v46 = *(v13 + 16);
        v45 = *(v13 + 24);
        if (v46 >= v45 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
          v13 = *v11;
        }

        *(v13 + 16) = v46 + 1;
        v17 = (v13 + 48 * v46);
        v18 = *(v2 + 3);
        v19 = *(v2 + 4);
        v20 = *(v2 + 5);
        goto LABEL_29;
      }

LABEL_30:
      specialized OrderedSet._removeExistingMember(at:in:)(v9, v2[26]);
      goto LABEL_31;
    }

    goto LABEL_18;
  }

  if (v4)
  {
    v21 = v2[26];
    v23 = v2[18];
    v22 = v2[19];

    specialized OrderedSet._appendNew(_:in:)(v23, v21, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
    v26 = *(v22 + 16);
    v24 = (v22 + 16);
    v25 = v26;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *v24 = v26;
    if ((v27 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1);
      v25 = *v24;
    }

    v29 = *(v25 + 16);
    v28 = *(v25 + 24);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      v30 = v29 + 1;
      v25 = *v24;
    }

    *(v25 + 16) = v30;
    v31 = (v25 + 48 * v29);
    v31[4] = v3;
    v31[5] = v4;
    v31[6] = v5;
    v31[7] = v6;
    v31[8] = v7;
    v31[9] = v8;
    *v24 = v25;
  }

LABEL_31:
  outlined consume of UserGraph.Adjacent?(v2[12], *v2[24], *v2[23], *v2[22], *v2[21], *v2[20]);

  free(v2);
}

unint64_t specialized OrderedDictionary.subscript.modify(uint64_t *a1, uint64_t *a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xD8uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 160) = a2;
  *(v5 + 168) = v2;
  v7 = *v2;
  v8 = v2[1];
  v9 = *(v8 + 16);
  if (*v2)
  {

    v10 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v8 + 32, v9, (v7 + 16), v7 + 32);
    v12 = v11;
    v14 = v13;

    v15 = v6 + 19;
    v6[18] = 0;
    v6[19] = 0;
    if ((v12 & 1) == 0)
    {
      v16 = v10;
      goto LABEL_9;
    }

LABEL_8:
    v6[25] = v15;
    v6[26] = v14;
    return OrderedDictionary.subscript.modifyspecialized ;
  }

  v16 = specialized Collection<>.firstIndex(of:)(a2, v8 + 32, *(v8 + 16));
  v14 = 0;
  v15 = v6 + 19;
  v6[18] = 0;
  v6[19] = 0;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_9:
  v6[23] = v16;
  v6[24] = v14;
  v6[22] = v15;
  v20 = v2[2];
  v19 = v2 + 2;
  result = specialized MutableCollection.swapAt(_:_:)(v16, *(v20 + 16) - 1);
  v22 = *v19;
  if (*(*v19 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v22);
      v22 = result;
    }

    v23 = v22[2];
    if (v23)
    {
      v24 = v23 - 1;
      v25 = &v22[2 * v24];
      v27 = v25[4];
      v26 = v25[5];
      v22[2] = v24;
      *v19 = v22;
      v28 = *v15;
      v6[18] = v27;
      *v15 = v26;
      outlined consume of OrderedSet<Input>?(0, v28);
      return OrderedDictionary.subscript.modifyspecialized ;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void OrderedDictionary.subscript.modifyspecialized (uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 144);
  v3 = **(*a1 + 200);
  if (v3)
  {
    v4 = *(v1 + 208);
    v6 = *(v1 + 160);
    v5 = *(v1 + 168);

    specialized OrderedSet._appendNew(_:in:)(v6, v4, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    v9 = *(v5 + 16);
    v7 = (v5 + 16);
    v8 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
      v8 = *v7;
    }

    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    if (v12 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      v8 = *v7;
    }

    *(v8 + 16) = v12 + 1;
    v13 = v8 + 16 * v12;
    *(v13 + 32) = v2;
    *(v13 + 40) = v3;
    *v7 = v8;
    v2 = *(v1 + 144);
    v14 = **(v1 + 200);
  }

  else
  {
    v14 = 0;
  }

  outlined consume of OrderedSet<Input>?(v2, v14);

  free(v1);
}

void OrderedDictionary.subscript.modifyspecialized (uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 144);
  v4 = *(*a1 + 176);
  v5 = *v4;
  if (a2)
  {
    if (!v5)
    {
      v6 = *(v2 + 184);
      v7 = *(v2 + 168);
      v9 = *(v7 + 16);
      v8 = (v7 + 16);
      if (v6 < *(v9 + 16))
      {
        v10 = specialized ContiguousArray.remove(at:)(v6);
        v12 = v11;
        v13 = *v8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v8 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
          v13 = *v8;
        }

        v15 = *(v13 + 16);
        v16 = *(v13 + 24);
        v17 = v15 + 1;
        if (v15 >= v16 >> 1)
        {
          v44 = *(v13 + 16);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v15 + 1, 1);
          v15 = v44;
          v13 = *v8;
        }

        *(v13 + 16) = v17;
        v18 = v13 + 16 * v15;
        *(v18 + 32) = v10;
        *(v18 + 40) = v12;
        *v8 = v13;
        v6 = *(v2 + 184);
      }

      specialized OrderedSet._removeExistingMember(at:in:)(v6, *(v2 + 192), v2);

      *(v2 + 112) = *(v2 + 16);
      v19 = v2 + 112;
LABEL_23:
      outlined destroy of String(v19);
      goto LABEL_24;
    }
  }

  else if (!v5)
  {
    v30 = *(v2 + 184);
    v31 = *(v2 + 168);
    v33 = *(v31 + 16);
    v32 = (v31 + 16);
    if (v30 < *(v33 + 16))
    {
      v34 = specialized ContiguousArray.remove(at:)(v30);
      v36 = v35;
      v37 = *v32;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *v32 = v37;
      if ((v38 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1);
        v37 = *v32;
      }

      v39 = *(v37 + 16);
      v40 = *(v37 + 24);
      v41 = v39 + 1;
      if (v39 >= v40 >> 1)
      {
        v45 = *(v37 + 16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v39 + 1, 1);
        v39 = v45;
        v37 = *v32;
      }

      *(v37 + 16) = v41;
      v42 = v37 + 16 * v39;
      *(v42 + 32) = v34;
      *(v42 + 40) = v36;
      *v32 = v37;
      v30 = *(v2 + 184);
    }

    specialized OrderedSet._removeExistingMember(at:in:)(v30, *(v2 + 192), v2 + 56);

    *(v2 + 128) = *(v2 + 72);
    v19 = v2 + 128;
    goto LABEL_23;
  }

  v20 = *(v2 + 168);
  v23 = *(v20 + 16);
  v21 = (v20 + 16);
  v22 = v23;
  outlined copy of OrderedSet<Input>?(*(*a1 + 144), *v4);

  v24 = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v23;
  if ((v24 & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
    v22 = *v21;
  }

  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  v27 = v25 + 1;
  if (v25 >= v26 >> 1)
  {
    v43 = *(v22 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v25 + 1, 1);
    v25 = v43;
    v22 = *v21;
  }

  v28 = *(v2 + 184);
  *(v22 + 16) = v27;
  v29 = v22 + 16 * v25;
  *(v29 + 32) = v3;
  *(v29 + 40) = v5;
  *v21 = v22;
  specialized MutableCollection.swapAt(_:_:)(v28, v25);

LABEL_24:
  outlined consume of OrderedSet<Input>?(*(v2 + 144), **(v2 + 176));

  free(v2);
}

unint64_t specialized OrderedDictionary.subscript.modify(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 8) = a2;
  *(v5 + 16) = v2;
  v7 = v2[1];
  v8 = v7 + 32;
  v9 = *(v7 + 16);
  if (*v2)
  {
    v10 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v8, v9, (*v2 + 16), *v2 + 32);
    v6[3] = v11;
    *v6 = 0;
    if (v12)
    {
      return OrderedDictionary.subscript.modifyspecialized ;
    }
  }

  else
  {
    if (!v9)
    {
LABEL_11:
      *v6 = 0;
      return OrderedDictionary.subscript.modifyspecialized ;
    }

    v10 = 0;
    while (*(v8 + 8 * v10) != a2)
    {
      if (v9 == ++v10)
      {
        goto LABEL_11;
      }
    }

    v11 = 0;
    *v6 = 0;
  }

  v6[4] = v10;
  v6[5] = v11;
  v15 = v2[2];
  v14 = v2 + 2;
  result = specialized MutableCollection.swapAt(_:_:)(v10, *(v15 + 16) - 1);
  v17 = *v14;
  if (*(*v14 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v17);
      v17 = result;
    }

    v18 = v17[2];
    if (v18)
    {
      v19 = v18 - 1;
      v20 = v17[v19 + 4];
      v17[2] = v19;
      *v14 = v17;
      *v6 = v20;

      return OrderedDictionary.subscript.modifyspecialized ;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void OrderedDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[2];
    v4 = v1[3];
    v5 = v1[1];

    specialized OrderedSet._appendNew(_:in:)(v5, v4, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
    v8 = *(v3 + 16);
    v6 = (v3 + 16);
    v7 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
      v7 = *v6;
    }

    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    if (v11 >= v10 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v7 = *v6;
    }

    *(v7 + 16) = v11 + 1;
    *(v7 + 8 * v11 + 32) = v2;
    *v6 = v7;
  }

  free(v1);
}

{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[2];
    v6 = *(v3 + 16);
    v4 = (v3 + 16);
    v5 = v6;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
      v5 = *v4;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    v10 = v8 + 1;
    if (v8 >= v9 >> 1)
    {
      v22 = *(v5 + 16);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v8 + 1, 1);
      v8 = v22;
      v5 = *v4;
    }

    v11 = v1[4];
    *(v5 + 16) = v10;
    *(v5 + 8 * v8 + 32) = v2;
    *v4 = v5;
    specialized MutableCollection.swapAt(_:_:)(v11, v8);
  }

  else
  {
    v12 = v1[4];
    v13 = v1[2];
    v15 = *(v13 + 16);
    v14 = (v13 + 16);
    if (v12 < *(v15 + 16))
    {
      v16 = specialized ContiguousArray.remove(at:)(v12);
      v17 = *v14;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      *v14 = v17;
      if ((v18 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1);
        v17 = *v14;
      }

      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      v21 = v19 + 1;
      if (v19 >= v20 >> 1)
      {
        v23 = *(v17 + 16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v19 + 1, 1);
        v19 = v23;
        v17 = *v14;
      }

      *(v17 + 16) = v21;
      *(v17 + 8 * v19 + 32) = v16;
      *v14 = v17;
      v12 = v1[4];
    }

    specialized OrderedSet._removeExistingMember(at:in:)(v12, v1[5]);
  }

  free(v1);
}

{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v3 = v1[2];

    specialized OrderedSet._appendNew(_:in:)(v4, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
    v7 = *(v3 + 16);
    v5 = (v3 + 16);
    v6 = v7;
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
    *(v6 + 8 * v10 + 32) = v2;
    *v5 = v6;
  }

  free(v1);
}

uint64_t UserGraph.removeEdges(from:)(unint64_t *a1)
{
  v2 = a1;
  result = specialized OrderedDictionary.subscript.getter(*a1, *v1, v1[1], v1[2], &v40);
  v4 = v41;
  if (v41)
  {
    v5 = v40;
    v6 = v42;
    v7 = v43;
    v8 = v44;
    v9 = v45;
    specialized OrderedDictionary.subscript.getter(v2, v40, v41, v42);
    if (v10)
    {
      v11 = v10;
      outlined consume of UserGraph.Adjacent?(v5, v4, v6, v7, v8, v9);
      v12 = *(v11 + 16);
      if (v12)
      {
        v39 = MEMORY[0x277D84F90];
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
        v13 = v39;
        v46 = *(v2 + 1);
        if (!*(v11 + 16))
        {
LABEL_18:
          __break(1u);
          return result;
        }

        v14 = 0;
        v15 = (v11 + 80);
        v27 = v2;
        v28 = v12 - 1;
        v29 = v11;
        while (1)
        {
          v16 = *(v15 - 6);
          v17 = *(v15 - 5);
          v18 = *(v15 - 3);
          v30 = *(v15 - 2);
          v31 = *(v15 - 4);
          v19 = *(v15 - 8);
          v32 = *v15;
          v20 = *(v2 + 1);
          v35 = *v2;
          v36 = v20;
          v37 = *(v2 + 2);
          v38 = v2[6];
          v33[0] = v19;

          result = outlined init with copy of String(&v46, v33);
          v39 = v13;
          v22 = *(v13 + 16);
          v21 = *(v13 + 24);
          if (v22 >= v21 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
            v13 = v39;
          }

          *(v13 + 16) = v22 + 1;
          v23 = v13 + 112 * v22;
          v24 = v35;
          v25 = v37;
          v26 = v38;
          *(v23 + 48) = v36;
          *(v23 + 64) = v25;
          *(v23 + 32) = v24;
          *(v23 + 80) = v26;
          *(v23 + 88) = v16;
          *(v23 + 96) = v17;
          *(v23 + 104) = v31;
          *(v23 + 112) = v18;
          *(v23 + 120) = v30;
          *(v23 + 128) = v19;
          LODWORD(v26) = *&v34[3];
          *(v23 + 129) = *v34;
          *(v23 + 132) = v26;
          *(v23 + 136) = v32;
          if (v28 == v14)
          {
            break;
          }

          v15 += 7;
          ++v14;
          v2 = v27;
          if (v14 >= *(v29 + 16))
          {
            goto LABEL_18;
          }
        }
      }

      else
      {

        v13 = MEMORY[0x277D84F90];
      }

      specialized Sequence.forEach(_:)(v13);
    }

    else
    {

      return outlined consume of UserGraph.Adjacent?(v5, v4, v6, v7, v8, v9);
    }
  }

  return result;
}

unint64_t UserGraph.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v2 + 64);
  if (*(v4 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v5 = v4 + 48 * result;
  v6 = *(v5 + 56);
  if (v6 == -7)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v6 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v11 = *(v5 + 72);
    v10 = *(v5 + 64);
    v8 = *(v5 + 40);
    v9 = *(v5 + 48);
    v7 = *(v5 + 32);
    outlined copy of NodePersonality(v7);
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v6;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  return result;
}

void UserGraph.hash(into:)(uint64_t a1)
{
  specialized OrderedDictionary<>.hash(into:)(a1, *(v1 + 8), *(v1 + 16));
  String.hash(into:)();
  MEMORY[0x266772770](*(v1 + 40));
  v3 = *(v1 + 48);
  v4 = *(v3 + 16);
  MEMORY[0x266772770](v4);
  if (v4)
  {
    v5 = (v3 + 48);
    do
    {
      v6 = *v5;
      v5 += 3;

      String.hash(into:)();
      (*(*v6 + 120))(a1);

      --v4;
    }

    while (v4);
  }

  v7 = *(v1 + 56);
  v8 = *(v7 + 16);
  MEMORY[0x266772770](v8);
  if (v8)
  {
    v9 = (v7 + 48);
    do
    {
      v10 = *v9;
      v9 += 3;

      String.hash(into:)();
      (*(*v10 + 120))(a1);

      --v8;
    }

    while (v8);
  }

  specialized Array<A>.hash(into:)(a1, *(v1 + 64));
  MEMORY[0x266772770](*(v1 + 72));
  v11 = *(v1 + 104);
  v12 = *(v1 + 112);
  v13 = *(v1 + 120);
  NodePersonality.hash(into:)(a1, *(v1 + 80));
  specialized Array<A>.hash(into:)();
  specialized Array<A>.hash(into:)();
  MEMORY[0x266772770](v11);
  if (v13)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v12);
  }

  v14 = *(v1 + 152);
  v15 = *(v1 + 160);
  v16 = *(v1 + 168);
  NodePersonality.hash(into:)(a1, *(v1 + 128));
  specialized Array<A>.hash(into:)();
  specialized Array<A>.hash(into:)();
  MEMORY[0x266772770](v14);
  if (v16)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v15);
  }
}

Swift::Int UserGraph.hashValue.getter()
{
  Hasher.init(_seed:)();
  UserGraph.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserGraph()
{
  Hasher.init(_seed:)();
  UserGraph.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserGraph(uint64_t a1)
{
  Hasher.init(_seed:)();
  UserGraph.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UserGraph(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v14[0] = v2;
  *(v14 + 9) = *(a1 + 153);
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v15[8] = a2[8];
  v16[0] = v7;
  *(v16 + 9) = *(a2 + 153);
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return specialized static UserGraph.== infix(_:_:)(v13, v15) & 1;
}

uint64_t UserGraph.edges(from:)(uint64_t a1)
{
  specialized OrderedDictionary.subscript.getter(*(a1 + 24), *v1, v1[1], v1[2], &v55);
  v2 = v56;
  if (!v56)
  {
    return MEMORY[0x277D84F90];
  }

  v34 = v55;
  v3 = v57;
  v5 = v59;
  v4 = v60;
  v61 = v57;
  v62 = v56;
  v66 = v58;
  outlined destroy of [Input](&v66, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v65 = v5;
  outlined destroy of [Input](&v65, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
  v64 = v4;
  outlined destroy of [Input](&v64, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
  v6 = *(v3 + 16);
  result = outlined init with copy of [Input](&v61, &v63, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
  v8 = MEMORY[0x277D84F90];
  v39 = v6;
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_32:
    v63 = v34;
    outlined destroy of [Input](&v63, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    outlined destroy of [Input](&v62, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
    outlined destroy of [Input](&v61, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
    outlined destroy of [Input](&v61, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
    return v10;
  }

  v9 = 0;
  v37 = v2 + 32;
  v38 = v3 + 32;
  v10 = MEMORY[0x277D84F90];
  v35 = v3;
  v36 = v2;
  while (v9 < *(v2 + 16))
  {
    if (v9 >= *(v3 + 16))
    {
      goto LABEL_36;
    }

    v11 = *(v38 + 16 * v9 + 8);
    v12 = *(v11 + 16);
    if (v12)
    {
      v40 = v9;
      v41 = v10;
      v13 = (v37 + 56 * v9);
      v14 = v13[1];
      v15 = v13[3];
      v46 = v13[2];
      v47 = *v13;
      v16 = *(v13 + 40);
      v44 = v13[6];
      v45 = v13[4];
      v63 = v8;

      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      if (!*(v11 + 16))
      {
LABEL_34:
        __break(1u);
        break;
      }

      v17 = 0;
      v18 = v63;
      v19 = (v11 + 80);
      v43 = v11;
      v42 = v16;
      while (1)
      {
        v20 = *(v19 - 5);
        v21 = *(v19 - 3);
        v49 = *(v19 - 4);
        v50 = *(v19 - 6);
        v48 = *(v19 - 2);
        v52 = *v19;
        v51 = *(v19 - 8);
        v22 = *(v18 + 16);
        v23 = *(v18 + 24);
        v63 = v18;
        v24 = v18;

        v18 = v24;
        if (v22 >= v23 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v22 + 1, 1);
          v18 = v63;
        }

        *(v18 + 16) = v22 + 1;
        v25 = v18 + 112 * v22;
        *(v25 + 32) = v47;
        *(v25 + 40) = v14;
        *(v25 + 48) = v46;
        *(v25 + 56) = v15;
        *(v25 + 64) = v45;
        *(v25 + 72) = v42;
        *(v25 + 73) = *v54;
        *(v25 + 76) = *&v54[3];
        *(v25 + 80) = v44;
        *(v25 + 88) = v50;
        *(v25 + 96) = v20;
        *(v25 + 104) = v49;
        *(v25 + 112) = v21;
        *(v25 + 120) = v48;
        *(v25 + 128) = v51;
        *(v25 + 132) = *&v53[3];
        *(v25 + 129) = *v53;
        *(v25 + 136) = v52;
        if (v12 - 1 == v17)
        {
          break;
        }

        v19 += 7;
        if (++v17 >= *(v43 + 16))
        {
          goto LABEL_34;
        }
      }

      v26 = v18;

      v3 = v35;
      v2 = v36;
      v9 = v40;
      v10 = v41;
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      v26 = v8;
    }

    v27 = *(v26 + 16);
    v28 = *(v10 + 16);
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      goto LABEL_37;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0 || v29 > *(v10 + 24) >> 1)
    {
      if (v28 <= v29)
      {
        v30 = v28 + v27;
      }

      else
      {
        v30 = v28;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v30, 1, v10);
      v10 = result;
    }

    if (*(v26 + 16))
    {
      if ((*(v10 + 24) >> 1) - *(v10 + 16) < v27)
      {
        goto LABEL_39;
      }

      swift_arrayInitWithCopy();

      if (v27)
      {
        v31 = *(v10 + 16);
        v32 = __OFADD__(v31, v27);
        v33 = v31 + v27;
        if (v32)
        {
          goto LABEL_40;
        }

        *(v10 + 16) = v33;
      }
    }

    else
    {

      if (v27)
      {
        goto LABEL_38;
      }
    }

    if (++v9 == v39)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void UserGraph.edges(to:)(uint64_t a1)
{
  specialized OrderedDictionary.subscript.getter(*(a1 + 24), *v1, v1[1], v1[2], &v50);
  v2 = v51;
  if (v51)
  {
    v4 = v54;
    v3 = v55;
    v5 = v52;
    v57 = v54;
    v58 = v53;
    v56 = v55;
    v61 = v50;
    outlined init with copy of [Input](&v58, &v60, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    outlined init with copy of [Input](&v57, &v60, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v56, &v60, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
    outlined destroy of [Input](&v61, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    v60 = v2;
    outlined destroy of [Input](&v60, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
    v59 = v5;
    outlined destroy of [Input](&v59, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);
    outlined destroy of [Input](&v58, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    outlined destroy of [Input](&v57, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v56, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
    v6 = *(v3 + 16);
    outlined init with copy of [Input](&v56, v49, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
    if (v6)
    {
      v7 = 0;
      v8 = v3 + 40;
      v9 = MEMORY[0x277D84F90];
      for (i = 0; i < v6; v7 = i)
      {
        v11 = 56 * v7;
        v12 = v4;
        while (1)
        {
          if (i >= *(v4 + 16))
          {
            __break(1u);
LABEL_20:
            __break(1u);
            return;
          }

          if (i >= *(v3 + 16))
          {
            goto LABEL_20;
          }

          v13 = *(v8 + v11 - 8);
          v14 = *(v8 + 56 * v7);
          v15 = *(v8 + v11 + 8);
          v16 = *(v8 + v11 + 16);
          v17 = *(v8 + v11 + 24);
          ++i;
          v18 = *(v8 + v11 + 40);
          if (v14)
          {
            break;
          }

          outlined consume of Output?(v13, 0, v15, v16);
          v12 += 56;
          v8 += 56;
          if (i >= v6)
          {
            goto LABEL_18;
          }
        }

        v40 = *(v12 + v11 + 64);
        v41 = *(v12 + v11 + 80);
        v47 = *(v12 + v11 + 56);
        v46 = *(v12 + v11 + 40);
        v38 = *(v12 + v11 + 32);
        v39 = *(v12 + v11 + 48);
        v45 = *(v12 + 56 * v7 + 72);
        LOBYTE(v49[0]) = *(v8 + v11 + 32) & 1;
        v19 = v13;
        v44 = v18;
        v20 = v9;
        v21 = v17;
        v22 = v16;
        v36 = v20;
        v23 = v15;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        outlined copy of Output?(v19, v14, v23, v22);

        v43 = v23;
        v42 = v22;
        v24 = v22;
        v25 = v21;
        outlined consume of Output?(v19, v14, v23, v24);
        v48[0] = v45;
        v9 = v36;
        v37 = v49[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
        }

        v27 = *(v9 + 2);
        v26 = *(v9 + 3);
        v28 = v42;
        v29 = v43;
        v30 = v19;
        if (v27 >= v26 >> 1)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v9);
          v28 = v42;
          v29 = v43;
          v32 = v25;
          v31 = v44;
          v9 = v35;
          v30 = v19;
        }

        else
        {
          v31 = v44;
          v32 = v25;
        }

        v8 = v3 + 40;
        *(v9 + 2) = v27 + 1;
        v33 = &v9[112 * v27];
        *(v33 + 4) = v30;
        *(v33 + 5) = v14;
        *(v33 + 6) = v29;
        *(v33 + 7) = v28;
        *(v33 + 8) = v32;
        v33[72] = v37;
        v34 = *(v49 + 3);
        *(v33 + 73) = v49[0];
        *(v33 + 19) = v34;
        *(v33 + 10) = v31;
        *(v33 + 11) = v38;
        *(v33 + 12) = v46;
        *(v33 + 13) = v39;
        *(v33 + 14) = v47;
        *(v33 + 15) = v40;
        v33[128] = v45;
        *(v33 + 33) = *&v48[3];
        *(v33 + 129) = *v48;
        *(v33 + 17) = v41;
      }
    }

LABEL_18:
    outlined destroy of [Input](&v58, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    outlined destroy of [Input](&v57, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v56, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
    outlined destroy of [Input](&v56, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
  }
}

BOOL UserGraph.isEmpty.getter()
{
  v1 = *(v0 + 64);
  v2 = (v1 + 56);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v2 += 6;
  }

  while (v4 == -7);
  return v3 == 0;
}

uint64_t closure #1 in UserGraph.insert<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  v2 = *(a1 + 72);
  v6[0] = *(a1 + 56);
  v6[1] = v2;
  v6[2] = *(a1 + 88);
  v7 = *(a1 + 104);
  return UserGraph.connect(_:to:)(v4, v6);
}

uint64_t UserGraph.prune(at:)(unint64_t *a1)
{
  result = UserGraph.remove(_:)(a1);
  v4 = *a1;
  if (*a1 == -7)
  {
    return result;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v1 + 64);
  if (v4 >= *(v5 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = (v5 + 48 * v4);
  v7 = v6[4];
  v8 = v6[5];
  v9 = v6[6];
  v10 = v6[7];
  outlined copy of NodePersonality(v7);

  specialized UserGraph.prune(_:)(v8, v9, v10);
  outlined consume of NodePersonality(v7);
}

uint64_t UserGraph.describeEdge(_:)(uint64_t result)
{
  v2 = result;
  v3 = *result;
  v4 = *(result + 16);
  v5 = *(result + 24);
  if (*result == -7)
  {
    v27 = 0;
    v28 = 0;
    v6 = 0;
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v7 = *(v1 + 64);
    if (v3 >= *(v7 + 16))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v8 = (v7 + 48 * v3);
    v6 = v8[5];
    v9 = v8[6];
    v28 = v8[4];
    outlined copy of NodePersonality(v28);

    v27 = v9;
  }

  v10 = v2[7];
  v24 = v2[10];
  v25 = v2[9];
  v23 = v5;
  if (v10 == -7)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_11;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v14 = *(v1 + 64);
  if (v10 < *(v14 + 16))
  {
    v15 = (v14 + 48 * v10);
    v11 = v15[4];
    v12 = v15[5];
    v13 = v15[6];
    outlined copy of NodePersonality(v11);

LABEL_11:
    v26 = v6;
    if (v6)
    {
      outlined copy of NodePersonality(v28);

      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v16);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      MEMORY[0x266771550](v4, v23);
      outlined consume of NodePersonality(v28);

      v17 = 1701080942;
      v18 = 0xE400000000000000;
      if (v12)
      {
LABEL_13:
        outlined copy of NodePersonality(v11);

        v19 = v13;

        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v20);

        MEMORY[0x266771550](8236, 0xE200000000000000);
        MEMORY[0x266771550](v25, v24);
        outlined consume of NodePersonality(v11);

        v22 = 1701080942;
        v21 = 0xE400000000000000;
LABEL_16:
        MEMORY[0x266771550](v17, v18);

        MEMORY[0x266771550](0x28203E2D2029, 0xE600000000000000);
        MEMORY[0x266771550](v22, v21);

        MEMORY[0x266771550](41, 0xE100000000000000);
        outlined consume of ShaderGraphNode?(v11, v12, v19);
        outlined consume of ShaderGraphNode?(v28, v26, v27);
        return 40;
      }
    }

    else
    {
      v17 = 0xD000000000000010;
      v18 = 0x8000000265F32330;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    v22 = 0xD000000000000010;
    v21 = 0x8000000265F32330;
    v19 = v13;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t Edge.debugDescription.getter()
{
  MEMORY[0x266771550](1701274693, 0xE400000000000000);
  MEMORY[0x266771550](10272, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](540945696, 0xE400000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0;
}

unint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2)
{
  return specialized OrderedSet._appendNew(_:in:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
}

{
  return specialized OrderedSet._appendNew(_:in:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
}

{
  outlined init with copy of [Input](a1, v23, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
  v4 = v2 + 1;
  v5 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
    v5 = *v4;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
    v5 = *v4;
  }

  *(v5 + 16) = v8 + 1;
  result = outlined init with take of WeakBox<SGEdge>(v23, v5 + 8 * v8 + 32);
  v2[1] = v5;
  v10 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v10[2] & 0x3FLL) > v8)
    {
      result = swift_isUniquelyReferenced_native();
      v11 = *v2;
      if ((result & 1) == 0)
      {
        if (!v11)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v12 = v11[2];
        v13 = (v12 & 0x3F) << v12;
        v14 = __OFADD__(v13, 64);
        v15 = v13 + 64;
        if (v14)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v17 = v15 - 1;
        v16 = v15 < 1;
        v18 = v15 + 62;
        if (!v16)
        {
          v18 = v17;
        }

        v19 = v18 >> 6;
        type metadata accessor for _HashTable.Storage(0);
        v20 = swift_allocObject();
        v21 = v11[3];
        v20[2] = v12;
        v20[3] = v21;
        memcpy(v20 + 4, v11 + 4, 8 * v19);

        *v2 = v20;
        v11 = v20;
      }

      if (v11)
      {
        v22 = *(*v4 + 16) + ~(v11[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v11[2]) ^ ~(((v22 >> 63) & ~(-1 << v11[2])) + v22), a2, v11 + 2, (v11 + 4));
      }

      goto LABEL_19;
    }
  }

  else if (v8 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA13TextureSourceOG_Tt2g5Tm);
}

{
  return specialized OrderedSet._appendNew(_:in:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
}

{
  return specialized OrderedSet._appendNew(_:in:)(a1, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
}

unint64_t specialized OrderedSet._appendNew(_:in:)(__int128 *a1, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  v7 = v3 + 1;
  v8 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[1] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    a3(v10 > 1, v11 + 1, 1);
    v8 = *v7;
  }

  v32 = a1[1];
  *(v8 + 16) = v11 + 1;
  v12 = v8 + 56 * v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  *(v12 + 80) = *(a1 + 6);
  *(v12 + 48) = v14;
  *(v12 + 64) = v15;
  *(v12 + 32) = v13;
  v3[1] = v8;
  v16 = *v3;
  if (!*v3)
  {
    if (v11 < 0xF)
    {

      return outlined init with copy of String(&v32, v30);
    }

LABEL_16:

    outlined init with copy of String(&v32, v31);
    return specialized OrderedSet._regenerateHashTable()(_s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt2g5Tm);
  }

  swift_beginAccess();
  if (specialized static _HashTable.maximumCapacity(forScale:)(v16[2] & 0x3FLL) <= v11)
  {
    goto LABEL_16;
  }

  outlined init with copy of String(&v32, v31);
  result = swift_isUniquelyReferenced_native();
  v18 = *v3;
  if (result)
  {
    goto LABEL_13;
  }

  if (v18)
  {
    v19 = v18[2];
    v20 = (v19 & 0x3F) << v19;
    v21 = __OFADD__(v20, 64);
    v22 = v20 + 64;
    if (v21)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v24 = v22 - 1;
    v23 = v22 < 1;
    v25 = v22 + 62;
    if (!v23)
    {
      v25 = v24;
    }

    v26 = v25 >> 6;
    type metadata accessor for _HashTable.Storage(0);
    v27 = swift_allocObject();
    v28 = v18[3];
    v27[2] = v19;
    v27[3] = v28;
    memcpy(v27 + 4, v18 + 4, 8 * v26);

    *v3 = v27;
    v18 = v27;
LABEL_13:
    if (v18)
    {
      v29 = *(*v7 + 16) + ~(v18[3] >> 6);
      return _HashTable.UnsafeHandle.subscript.setter((-1 << v18[2]) ^ ~(((v29 >> 63) & ~(-1 << v18[2])) + v29), a2, v18 + 2, (v18 + 4));
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v15[2] & 0x3FLL) > v13)
    {
      result = swift_isUniquelyReferenced_native();
      v16 = *v4;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v17 = v16[2];
        v18 = (v17 & 0x3F) << v17;
        v19 = __OFADD__(v18, 64);
        v20 = v18 + 64;
        if (v19)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v22 = v20 - 1;
        v21 = v20 < 1;
        v23 = v20 + 62;
        if (!v21)
        {
          v23 = v22;
        }

        v24 = v23 >> 6;
        type metadata accessor for _HashTable.Storage(0);
        v25 = swift_allocObject();
        v26 = v16[3];
        v25[2] = v17;
        v25[3] = v26;
        memcpy(v25 + 4, v16 + 4, 8 * v24);

        *v4 = v25;
        v16 = v25;
      }

      if (v16)
      {
        v27 = *(*v8 + 16) + ~(v16[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v16[2]) ^ ~(((v27 >> 63) & ~(-1 << v16[2])) + v27), a3, v16 + 2, (v16 + 4));
      }

      goto LABEL_19;
    }
  }

  else if (v13 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

unint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t), uint64_t a4)
{
  v7 = v4;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if ((result & 1) == 0)
  {
    result = a3(0, *(v11 + 16) + 1, 1);
    v11 = *v10;
  }

  v15 = *(v11 + 16);
  v14 = *(v11 + 24);
  if (v15 >= v14 >> 1)
  {
    result = a3(v14 > 1, v15 + 1, 1);
    v11 = *v10;
  }

  *(v11 + 16) = v15 + 1;
  *(v11 + 8 * v15 + 32) = a1;
  v7[1] = v11;
  v16 = *v7;
  if (*v7)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v16[2] & 0x3FLL) > v15)
    {
      result = swift_isUniquelyReferenced_native();
      v17 = *v7;
      if ((result & 1) == 0)
      {
        if (!v17)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v18 = v17[2];
        v19 = (v18 & 0x3F) << v18;
        v20 = __OFADD__(v19, 64);
        v21 = v19 + 64;
        if (v20)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v23 = v21 - 1;
        v22 = v21 < 1;
        v24 = v21 + 62;
        if (!v22)
        {
          v24 = v23;
        }

        v25 = v24 >> 6;
        type metadata accessor for _HashTable.Storage(0);
        v26 = swift_allocObject();
        v27 = v17[3];
        v26[2] = v18;
        v26[3] = v27;
        memcpy(v26 + 4, v17 + 4, 8 * v25);

        *v7 = v26;
        v17 = v26;
      }

      if (v17)
      {
        v28 = *(*v10 + 16) + ~(v17[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v17[2]) ^ ~(((v28 >> 63) & ~(-1 << v17[2])) + v28), a2, v17 + 2, (v17 + 4));
      }

      goto LABEL_19;
    }
  }

  else if (v15 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(a4, _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

{
  v7 = v4;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if ((result & 1) == 0)
  {
    result = a3(0, *(v11 + 16) + 1, 1);
    v11 = *v10;
  }

  v15 = *(v11 + 16);
  v14 = *(v11 + 24);
  if (v15 >= v14 >> 1)
  {
    result = a3(v14 > 1, v15 + 1, 1);
    v11 = *v10;
  }

  *(v11 + 16) = v15 + 1;
  *(v11 + 8 * v15 + 32) = a1;
  v7[1] = v11;
  v16 = *v7;
  if (*v7)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v16[2] & 0x3FLL) > v15)
    {
      result = swift_isUniquelyReferenced_native();
      v17 = *v7;
      if ((result & 1) == 0)
      {
        if (!v17)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v18 = v17[2];
        v19 = (v18 & 0x3F) << v18;
        v20 = __OFADD__(v19, 64);
        v21 = v19 + 64;
        if (v20)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v23 = v21 - 1;
        v22 = v21 < 1;
        v24 = v21 + 62;
        if (!v22)
        {
          v24 = v23;
        }

        v25 = v24 >> 6;
        type metadata accessor for _HashTable.Storage(0);
        v26 = swift_allocObject();
        v27 = v17[3];
        v26[2] = v18;
        v26[3] = v27;
        memcpy(v26 + 4, v17 + 4, 8 * v25);

        *v7 = v26;
        v17 = v26;
      }

      if (v17)
      {
        v28 = *(*v10 + 16) + ~(v17[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v17[2]) ^ ~(((v28 >> 63) & ~(-1 << v17[2])) + v28), a2, v17 + 2, (v17 + 4));
      }

      goto LABEL_19;
    }
  }

  else if (v15 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(a4, _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}