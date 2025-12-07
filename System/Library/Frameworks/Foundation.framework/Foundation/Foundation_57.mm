uint64_t key path getter for AttributedString.characters : AttributedString@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = BigString.startIndex.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = BigString.endIndex.getter();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v8;
  a2[4] = v10;
  a2[5] = v11;
  a2[6] = v12;
  a2[7] = v13;
  a2[8] = v14;
  a2[9] = 0;
}

uint64_t AttributedString.characters.setter(_OWORD *a1)
{
  v5 = v1;
  v6 = a1[4];
  v61[3] = a1[3];
  v61[4] = v6;
  v7 = a1[2];
  v61[1] = a1[1];
  v61[2] = v7;
  v61[0] = *a1;
  v8 = *v1;
  v9 = *(*v1 + 24);
  v10 = *(*v1 + 56);
  v66 = *(*v1 + 40);
  v67 = v10;
  v65 = v9;
  v11 = BigString.startIndex.getter();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *(v8 + 16);
  v19 = BigString.endIndex.getter();
  if (v19 >> 10 < v11 >> 10)
  {
    __break(1u);
    goto LABEL_20;
  }

  v60[0] = v11;
  v60[1] = v13;
  v60[2] = v15;
  v60[3] = v17;
  v60[4] = v18;
  v60[5] = v19;
  v60[6] = v20;
  v60[7] = v21;
  v60[8] = v22;
  v60[9] = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v4 = &unk_1EA7B2000;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = &static AttributedString.Guts._nextVersion;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_12;
  }

  v24 = *(v13 + 40);
  v62 = *(v13 + 24);
  v63 = v24;
  v64 = *(v13 + 56);
  v25 = *(v13 + 72);
  v26 = *(v13 + 80);
  v27 = *(v13 + 88);
  v28 = *(v13 + 96);
  type metadata accessor for AttributedString.Guts();
  v13 = swift_allocObject();
  v29 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v62, &v52);
  v30 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v30);
  if (v25)
  {
    v31 = v27 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  if (v32 != v29)
  {
    goto LABEL_23;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(v3, 1uLL, memory_order_relaxed);
    v34 = v63;
    *(v13 + 24) = v62;
    *(v13 + 16) = add_explicit;
    *(v13 + 40) = v34;
    *(v13 + 56) = v64;
    *(v13 + 72) = v25;
    *(v13 + 80) = v26;
    *(v13 + 88) = v27;
    *(v13 + 96) = v28;
    *(v13 + 104) = v2;

    *v5 = v13;
LABEL_12:
    if (v4[147] != -1)
    {
LABEL_20:
      swift_once();
    }

    *(v13 + 16) = atomic_fetch_add_explicit(v3, 1uLL, memory_order_relaxed);
    *&v52 = v13;
    v35 = *(v13 + 40);
    v61[5] = *(v13 + 24);
    v61[6] = v35;
    v61[7] = *(v13 + 56);
    v36 = BigString.startIndex.getter();
    v26 = v37;
    v27 = v38;
    v28 = v39;
    v40 = BigString.endIndex.getter();
    *(&v52 + 1) = v36;
    *&v53 = v26;
    *(&v53 + 1) = v27;
    *&v54 = v28;
    *(&v54 + 1) = v40;
    *&v55 = v41;
    *(&v55 + 1) = v42;
    *&v56 = v43;
    v44 = one-time initialization token for currentIdentity;

    if (v44 != -1)
    {
      swift_once();
    }

    v45 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v46 = *(v45 + 16);
    v25 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v45 + 16) = v25;
    os_unfair_lock_unlock((v45 + 24));
    *(&v56 + 1) = v25;
    BigString.init()();
    *&v51[0] = 0;
    MEMORY[0x1865D26B0](v51, 8);
    v26 = *&v51[0];
    type metadata accessor for AttributedString.Guts();
    v13 = swift_allocObject();
    if (BigString.isEmpty.getter())
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v47 = atomic_fetch_add_explicit(v3, 1uLL, memory_order_relaxed);
  v48 = v58;
  *(v13 + 24) = v57;
  *(v13 + 16) = v47;
  *(v13 + 40) = v48;
  *(v13 + 56) = v59;
  *(v13 + 72) = 0;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  *(v13 + 96) = v26;
  *(v13 + 104) = v2;

  *v5 = v13;
  specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(v60, v61);
  if (*(&v56 + 1) == v25)
  {
    outlined destroy of AttributedString.CharacterView(v61);
    v49 = v52;

    *v5 = v49;
    v51[2] = v54;
    v51[3] = v55;
    v51[4] = v56;
    v51[0] = v52;
    v51[1] = v53;
    return outlined destroy of AttributedString.CharacterView(v51);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void (*AttributedString.characters.modify(uint64_t *a1))(uint64_t a1)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x140uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 304) = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v8 = &unk_1EA7B2000;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_14;
  }

  v9 = *(v7 + 24);
  v10 = *(v7 + 56);
  *(v5 + 176) = *(v7 + 40);
  *(v5 + 192) = v10;
  *(v5 + 160) = v9;
  v11 = *(v7 + 72);
  v12 = *(v7 + 80);
  v13 = *(v7 + 88);
  v14 = *(v7 + 96);
  type metadata accessor for AttributedString.Guts();
  v7 = swift_allocObject();
  v15 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(v5 + 160, v5);
  v16 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v16);
  if (v11)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = v17;
  if (v18 != v15)
  {
    goto LABEL_23;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    *(v7 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v19 = *(v5 + 160);
    v20 = *(v5 + 176);
    *(v7 + 56) = *(v5 + 192);
    *(v7 + 40) = v20;
    *(v7 + 24) = v19;
    *(v7 + 72) = v11;
    *(v7 + 80) = v12;
    *(v7 + 88) = v13;
    *(v7 + 96) = v14;
    *(v7 + 104) = MEMORY[0x1E69E7CC0];

    *v2 = v7;
LABEL_14:
    if (v8[147] != -1)
    {
      swift_once();
    }

    v8 = &static AttributedString.Guts._nextVersion;
    *(v7 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    *v5 = v7;
    v21 = *(v7 + 24);
    v22 = *(v7 + 56);
    *(v5 + 224) = *(v7 + 40);
    *(v5 + 240) = v22;
    *(v5 + 208) = v21;
    v11 = BigString.startIndex.getter();
    v12 = v23;
    v13 = v24;
    v14 = v25;
    v26 = BigString.endIndex.getter();
    *(v5 + 8) = v11;
    *(v5 + 16) = v12;
    *(v5 + 24) = v13;
    *(v5 + 32) = v14;
    *(v5 + 40) = v26;
    *(v5 + 48) = v27;
    *(v5 + 56) = v28;
    *(v5 + 64) = v29;
    v30 = one-time initialization token for currentIdentity;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v32 = *(v31 + 16);
    v7 = v32 + 1;
    *(v5 + 312) = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v31 + 16) = v7;
    os_unfair_lock_unlock((v31 + 24));
    *(v5 + 72) = v7;
    BigString.init()();
    *(v5 + 80) = 0;
    MEMORY[0x1865D26B0](v5 + 80, 8);
    v11 = *(v5 + 80);
    type metadata accessor for AttributedString.Guts();
    v7 = swift_allocObject();
    if (BigString.isEmpty.getter())
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  *(v7 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v33 = *(v5 + 256);
  v34 = *(v5 + 272);
  *(v7 + 56) = *(v5 + 288);
  *(v7 + 40) = v34;
  *(v7 + 24) = v33;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = v11;
  *(v7 + 104) = MEMORY[0x1E69E7CC0];

  *v2 = v7;
  return AttributedString.characters.modify;
}

void AttributedString.characters.modify(uint64_t a1)
{
  v1 = *a1;
  if (*(*a1 + 72) == *(*a1 + 312))
  {
    v2 = v1[38];
    v3 = *v1;

    *v2 = v3;
    v4 = *(v1 + 3);
    *(v1 + 7) = *(v1 + 2);
    *(v1 + 8) = v4;
    *(v1 + 9) = *(v1 + 4);
    v5 = *(v1 + 1);
    *(v1 + 5) = *v1;
    *(v1 + 6) = v5;
    outlined destroy of AttributedString.CharacterView((v1 + 10));

    free(v1);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

unint64_t *specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(unint64_t *result)
{
  v2 = *result;
  if (*result >> 10 < v1[1] >> 10)
  {
    __break(1u);
  }

  else
  {
    v3 = result[5];
    if (v1[5] >> 10 >= v3 >> 10)
    {
      v4 = result[1];
      v5 = result[2];
      v6 = result[3];
      v7 = result[7];
      v32 = result[8];
      v8 = result[6];
      v9 = *v1;
      v10 = *(*v1 + 24);
      v11 = *(*v1 + 56);
      v35[1] = *(*v1 + 40);
      v35[2] = v11;
      v35[0] = v10;
      v12 = *(v9 + 24);
      v37 = *(v9 + 56);
      v13 = *(v9 + 40);
      v36[0] = v12;
      v36[1] = v13;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v36, v33);
      v14 = MEMORY[0x1865CA460](v2, v4, v5, v6);
      v16 = v15;
      v18 = v17;
      v20 = v19;
      outlined destroy of BigString(v35);
      v21 = *(v9 + 24);
      v22 = *(v9 + 56);
      v34[1] = *(v9 + 40);
      v34[2] = v22;
      v34[0] = v21;
      v23 = *(v9 + 24);
      v39 = *(v9 + 56);
      v24 = *(v9 + 40);
      v38[0] = v23;
      v38[1] = v24;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v38, v33);
      v25 = MEMORY[0x1865CA460](v3, v8, v7, v32);
      v27 = v26;
      v29 = v28;
      v31 = v30;
      outlined destroy of BigString(v34);
      v33[0] = v14;
      v33[1] = v16;
      v33[2] = v18;
      v33[3] = v20;
      v33[4] = v25;
      v33[5] = v27;
      v33[6] = v29;
      v33[7] = v31;
      return specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(v33);
    }
  }

  __break(1u);
  return result;
}

unint64_t *specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *result;
  if (*result >> 10 < v3[1] >> 10)
  {
    __break(1u);
  }

  else
  {
    v5 = result[5];
    if (v3[5] >> 10 >= v5 >> 10)
    {
      v7 = result[1];
      v6 = result[2];
      v8 = result[3];
      v9 = result[7];
      v34 = result[8];
      v10 = result[6];
      v11 = *v3;
      v12 = *(*v3 + 24);
      v13 = *(*v3 + 56);
      v39[1] = *(*v3 + 40);
      v39[2] = v13;
      v39[0] = v12;
      v14 = *(v11 + 24);
      v41 = *(v11 + 56);
      v15 = *(v11 + 40);
      v40[0] = v14;
      v40[1] = v15;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v40, v37);
      v16 = MEMORY[0x1865CA460](v4, v7, v6, v8);
      v18 = v17;
      v20 = v19;
      v22 = v21;
      outlined destroy of BigString(v39);
      v23 = *(v11 + 24);
      v24 = *(v11 + 56);
      v38[1] = *(v11 + 40);
      v38[2] = v24;
      v38[0] = v23;
      v25 = *(v11 + 24);
      v43 = *(v11 + 56);
      v26 = *(v11 + 40);
      v42[0] = v25;
      v42[1] = v26;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v42, v37);
      v27 = MEMORY[0x1865CA460](v5, v10, v9, v34);
      v29 = v28;
      v31 = v30;
      v33 = v32;
      outlined destroy of BigString(v38);
      v37[0] = v16;
      v37[1] = v18;
      v37[2] = v20;
      v37[3] = v22;
      v37[4] = v27;
      v37[5] = v29;
      v37[6] = v31;
      v37[7] = v33;
      return specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(v37, a2, a3);
    }
  }

  __break(1u);
  return result;
}

{
  v4 = *result;
  if (*result >> 10 < v3[1] >> 10)
  {
    __break(1u);
  }

  else
  {
    v5 = result[5];
    if (v3[5] >> 10 >= v5 >> 10)
    {
      v7 = result[1];
      v6 = result[2];
      v8 = result[3];
      v9 = result[7];
      v34 = result[6];
      v10 = result[8];
      v11 = *v3;
      v12 = *(*v3 + 24);
      v13 = *(*v3 + 56);
      v39[1] = *(*v3 + 40);
      v39[2] = v13;
      v39[0] = v12;
      v14 = *(v11 + 24);
      v41 = *(v11 + 56);
      v15 = *(v11 + 40);
      v40[0] = v14;
      v40[1] = v15;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v40, v37);
      v16 = MEMORY[0x1865CA460](v4, v7, v6, v8);
      v18 = v17;
      v20 = v19;
      v22 = v21;
      outlined destroy of BigString(v39);
      v23 = *(v11 + 24);
      v24 = *(v11 + 56);
      v38[1] = *(v11 + 40);
      v38[2] = v24;
      v38[0] = v23;
      v25 = *(v11 + 24);
      v43 = *(v11 + 56);
      v26 = *(v11 + 40);
      v42[0] = v25;
      v42[1] = v26;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v42, v37);
      v27 = MEMORY[0x1865CA460](v5, v34, v9, v10);
      v29 = v28;
      v31 = v30;
      v33 = v32;
      outlined destroy of BigString(v38);
      v37[0] = v16;
      v37[1] = v18;
      v37[2] = v20;
      v37[3] = v22;
      v37[4] = v27;
      v37[5] = v29;
      v37[6] = v31;
      v37[7] = v33;
      return specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(v37, a2, a3);
    }
  }

  __break(1u);
  return result;
}

unint64_t *specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(unint64_t *result, uint64_t a2)
{
  v3 = *result;
  if (*result >> 10 < v2[1] >> 10)
  {
    __break(1u);
  }

  else
  {
    v4 = result[5];
    if (v2[5] >> 10 >= v4 >> 10)
    {
      v6 = result[1];
      v7 = result[2];
      v8 = result[3];
      v9 = result[7];
      v39 = result[6];
      v10 = result[8];
      v11 = *v2;
      v12 = *(*v2 + 24);
      v13 = *(*v2 + 56);
      v43[1] = *(*v2 + 40);
      v43[2] = v13;
      v43[0] = v12;
      v14 = *(v11 + 24);
      v45 = *(v11 + 56);
      v15 = *(v11 + 40);
      v44[0] = v14;
      v44[1] = v15;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v44, v41);
      v16 = MEMORY[0x1865CA460](v3, v6, v7, v8);
      v18 = v17;
      v20 = v19;
      v22 = v21;
      outlined destroy of BigString(v43);
      v23 = *(v11 + 24);
      v24 = *(v11 + 56);
      v42[1] = *(v11 + 40);
      v42[2] = v24;
      v42[0] = v23;
      v25 = *(v11 + 24);
      v47 = *(v11 + 56);
      v26 = *(v11 + 40);
      v46[0] = v25;
      v46[1] = v26;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v46, v41);
      v27 = MEMORY[0x1865CA460](v4, v39, v9, v10);
      v29 = v28;
      v31 = v30;
      v33 = v32;
      outlined destroy of BigString(v42);
      v34 = *(*a2 + 40);
      v35 = *(*a2 + 56);
      v41[0] = *(*a2 + 24);
      v41[1] = v34;
      v36 = *(a2 + 56);
      v37 = *(a2 + 24);
      v41[5] = *(a2 + 40);
      v41[6] = v36;
      v40[0] = v16;
      v40[1] = v18;
      v40[2] = v20;
      v40[3] = v22;
      v40[4] = v27;
      v40[5] = v29;
      v40[6] = v31;
      v40[7] = v33;
      v38 = *(a2 + 8);
      v41[2] = v35;
      v41[3] = v38;
      v41[4] = v37;
      swift_unknownObjectRetain();
      specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(v40, v41);
      return outlined destroy of BigSubstring(v41);
    }
  }

  __break(1u);
  return result;
}

unint64_t *specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(unint64_t *result, __int128 *a2)
{
  v3 = *result;
  if (*result >> 10 < v2[1] >> 10)
  {
    __break(1u);
  }

  else
  {
    v4 = result[5];
    if (v2[5] >> 10 >= v4 >> 10)
    {
      v6 = result[1];
      v7 = result[2];
      v8 = result[3];
      v9 = result[7];
      v42 = result[6];
      v10 = result[8];
      v11 = *v2;
      v12 = *(*v2 + 24);
      v13 = *(*v2 + 56);
      v63[1] = *(*v2 + 40);
      v63[2] = v13;
      v63[0] = v12;
      v14 = *(v11 + 24);
      v65 = *(v11 + 56);
      v15 = *(v11 + 40);
      v64[0] = v14;
      v64[1] = v15;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v64, v44);
      v16 = MEMORY[0x1865CA460](v3, v6, v7, v8);
      v18 = v17;
      v20 = v19;
      v22 = v21;
      outlined destroy of BigString(v63);
      v23 = *(v11 + 24);
      v24 = *(v11 + 56);
      v62[1] = *(v11 + 40);
      v62[2] = v24;
      v62[0] = v23;
      v25 = *(v11 + 24);
      v26 = *(v11 + 40);
      v67 = *(v11 + 56);
      v66[0] = v25;
      v66[1] = v26;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v66, v44);
      v27 = MEMORY[0x1865CA460](v4, v42, v9, v10);
      v29 = v28;
      v31 = v30;
      v33 = v32;
      outlined destroy of BigString(v62);
      v60[0] = v16;
      v60[1] = v18;
      v60[2] = v20;
      v60[3] = v22;
      v60[4] = v27;
      v60[5] = v29;
      v60[6] = v31;
      v60[7] = v33;
      v34 = a2[1];
      v51 = *a2;
      v52 = v34;
      v35 = *(a2 + 56);
      v53 = *(a2 + 40);
      v54 = v35;
      v36 = *(a2 + 10);
      v37 = *(v36 + 24);
      v38 = *(v36 + 56);
      v61[1] = *(v36 + 40);
      v61[2] = v38;
      v61[0] = v37;
      outlined init with copy of FloatingPointRoundingRule?(a2, v44, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMR);
      outlined init with copy of BigString(v61, v44);
      BigString.subscript.getter();
      outlined destroy of BigString(v61);
      outlined destroy of BigSubstring(v55);
      v72 = v59;
      v71 = v58;
      v70 = v57;
      v69 = v56;
      v68 = v36;
      v73 = 0;
      v39 = *(v36 + 56);
      v40 = *(v36 + 64);
      v41 = *(v36 + 24);
      v43 = *(v36 + 40);
      swift_unknownObjectRetain();
      outlined destroy of AttributedString.CharacterView(&v68);
      v47 = v69;
      v48 = v70;
      v49 = v71;
      v50 = v72;
      v44[0] = v41;
      v44[1] = v43;
      v45 = v39;
      v46 = v40;
      specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(v60, v44);
      return outlined destroy of BigSubstring(v44);
    }
  }

  __break(1u);
  return result;
}

unint64_t *AttributedString.CharacterView.replaceSubrange<A>(_:with:)(unint64_t *result, __int128 *a2, ValueMetadata *a3, uint64_t a4)
{
  v5 = *result;
  if (*result >> 10 < v4[1] >> 10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = result[5];
  if (v4[5] >> 10 < v6 >> 10)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v9 = result[1];
  v8 = result[2];
  v10 = result[3];
  v11 = result[7];
  v53 = result[6];
  v12 = result[8];
  v13 = *v4;
  v14 = *(*v4 + 24);
  v15 = *(*v4 + 56);
  v91[1] = *(*v4 + 40);
  v91[2] = v15;
  v91[0] = v14;
  v16 = *(v13 + 24);
  v93 = *(v13 + 56);
  v17 = *(v13 + 40);
  v92[0] = v16;
  v92[1] = v17;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v92, &v65);
  v18 = MEMORY[0x1865CA460](v5, v9, v8, v10);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  outlined destroy of BigString(v91);
  v25 = *(v13 + 24);
  v26 = *(v13 + 56);
  v90[1] = *(v13 + 40);
  v90[2] = v26;
  v90[0] = v25;
  v27 = *(v13 + 24);
  v95 = *(v13 + 56);
  v28 = *(v13 + 40);
  v94[0] = v27;
  v94[1] = v28;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v94, &v65);
  v29 = MEMORY[0x1865CA460](v6, v53, v11, v12);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  outlined destroy of BigString(v90);
  v84[0] = v18;
  v84[1] = v20;
  v84[2] = v22;
  v84[3] = v24;
  v84[4] = v29;
  v84[5] = v31;
  v84[6] = v33;
  v84[7] = v35;
  if (a3 == &type metadata for AttributedString.CharacterView)
  {
    v36 = a2[1];
    v58 = *a2;
    v59 = v36;
    v37 = a2[4];
    v61 = a2[3];
    v62 = v37;
    v60 = a2[2];
    v56 = *(v58 + 24);
    v38 = *(v58 + 40);
    v39 = *(v58 + 56);
    v40 = *(a2 + 40);
    *&v67[32] = *(a2 + 24);
    v68 = v40;
    v69 = *(a2 + 56);
    v41 = *(a2 + 8);
    v65 = v56;
    v66 = v38;
    *v67 = v39;
    *&v67[16] = v41;
    outlined init with copy of AttributedString.CharacterView(&v58, v79);
    swift_unknownObjectRetain();
    specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(v84, &v65);
    outlined destroy of AttributedString.CharacterView(&v58);
    v42 = &v65;
  }

  else
  {
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMR) != a3)
    {
      return AttributedString.CharacterView._replaceSubrange<A>(_:with:)(v84, a2, a3);
    }

    v43 = a2[5];
    *&v67[32] = a2[4];
    v68 = v43;
    v44 = a2[3];
    *v67 = a2[2];
    *&v67[16] = v44;
    v45 = a2[9];
    v71 = a2[8];
    v72 = v45;
    v46 = a2[7];
    v69 = a2[6];
    v70 = v46;
    v47 = a2[1];
    v65 = *a2;
    v66 = v47;
    v85 = v65;
    v86 = v47;
    v87 = *&v67[8];
    v88 = *&v67[24];
    v48 = v68;
    v49 = *(v68 + 24);
    v50 = *(v68 + 56);
    v89[1] = *(v68 + 40);
    v89[2] = v50;
    v89[0] = v49;
    outlined init with copy of FloatingPointRoundingRule?(&v65, &v58, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMR);
    outlined init with copy of FloatingPointRoundingRule?(&v65, &v58, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMR);
    outlined init with copy of BigString(v89, &v58);
    BigString.subscript.getter();
    outlined destroy of BigString(v89);
    outlined destroy of BigSubstring(v79);
    v77 = v83;
    v76 = v82;
    v75 = v81;
    v74 = v80;
    v73 = v48;
    v78 = 0;
    v51 = *(v48 + 56);
    v52 = *(v48 + 64);
    v57 = *(v48 + 40);
    v54 = *(v48 + 24);
    swift_unknownObjectRetain();
    outlined destroy of AttributedString.CharacterView(&v73);
    v61 = v74;
    v62 = v75;
    v63 = v76;
    v64 = v77;
    v58 = v54;
    v59 = v57;
    *&v60 = v51;
    *(&v60 + 1) = v52;
    specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(v84, &v58);
    outlined destroy of TermOfAddress?(&v65, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMR);
    v42 = &v58;
  }

  return outlined destroy of BigSubstring(v42);
}

__n128 AttributedString.CharacterView.startIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 AttributedString.CharacterView.endIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t AttributedString.CharacterView._count.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v9[0] = *(*v0 + 24);
  v9[1] = v2;
  v3 = *(v1 + 56);
  v4 = *(v0 + 7);
  v5 = *(v0 + 3);
  v9[5] = *(v0 + 5);
  v9[6] = v4;
  v6 = *(v0 + 1);
  v9[2] = v3;
  v9[3] = v6;
  v9[4] = v5;
  swift_unknownObjectRetain();
  v7 = BigSubstring.count.getter();
  outlined destroy of BigSubstring(v9);
  return v7;
}

unint64_t *AttributedString.CharacterView.index(before:)@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result >> 10;
  v5 = v2[1] >> 10;
  if (v4 >= v5 && v2[5] >> 10 >= v4)
  {
    v7 = *v2;
    v8 = *(*v2 + 24);
    v9 = *(*v2 + 56);
    v21[1] = *(*v2 + 40);
    v21[2] = v9;
    v21[0] = v8;
    v10 = *(v7 + 24);
    v23 = *(v7 + 56);
    v11 = *(v7 + 40);
    v22[0] = v10;
    v22[1] = v11;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v22, v20);
    v12 = BigString.index(before:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    result = outlined destroy of BigString(v21);
    if (v5 <= v12 >> 10)
    {
      v19 = *(v7 + 16);
      *a2 = v12;
      a2[1] = v14;
      a2[2] = v16;
      a2[3] = v18;
      a2[4] = v19;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *AttributedString.CharacterView.index(after:)@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result >> 10;
  v5 = v2[5] >> 10;
  if (v4 >= v2[1] >> 10 && v5 >= v4)
  {
    v7 = *v2;
    v8 = *(*v2 + 24);
    v9 = *(*v2 + 56);
    v21[1] = *(*v2 + 40);
    v21[2] = v9;
    v21[0] = v8;
    v10 = *(v7 + 24);
    v23 = *(v7 + 56);
    v11 = *(v7 + 40);
    v22[0] = v10;
    v22[1] = v11;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v22, v20);
    v12 = BigString.index(after:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    result = outlined destroy of BigString(v21);
    if (v5 >= v12 >> 10)
    {
      v19 = *(v7 + 16);
      *a2 = v12;
      a2[1] = v14;
      a2[2] = v16;
      a2[3] = v18;
      a2[4] = v19;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *AttributedString.CharacterView._index(_:offsetBy:)@<X0>(unint64_t *result@<X0>, unint64_t *a3@<X8>)
{
  v5 = *result >> 10;
  v6 = v3[1] >> 10;
  v7 = v3[5] >> 10;
  if (v5 >= v6 && v7 >= v5)
  {
    v9 = *v3;
    v10 = *(*v3 + 24);
    v11 = *(*v3 + 56);
    v23[1] = *(*v3 + 40);
    v23[2] = v11;
    v23[0] = v10;
    v12 = *(v9 + 24);
    v25 = *(v9 + 56);
    v13 = *(v9 + 40);
    v24[0] = v12;
    v24[1] = v13;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v24, v22);
    v14 = BigString.index(_:offsetBy:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    result = outlined destroy of BigString(v23);
    if (v14 >> 10 >= v6 && v7 >= v14 >> 10)
    {
      v21 = *(v9 + 16);
      *a3 = v14;
      a3[1] = v16;
      a3[2] = v18;
      a3[3] = v20;
      a3[4] = v21;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *AttributedString.CharacterView.index(_:offsetBy:limitedBy:)@<X0>(unint64_t *result@<X0>, unint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = *result >> 10;
  v7 = v4[1] >> 10;
  v8 = v4[5] >> 10;
  v9 = *a3 >> 10;
  if (v8 >= v9 && v9 >= v7 && v6 >= v7 && v8 >= v6)
  {
    v13 = *v4;
    v14 = *(*v4 + 24);
    v15 = *(*v4 + 56);
    v27[1] = *(*v4 + 40);
    v27[2] = v15;
    v27[0] = v14;
    v16 = *(v13 + 24);
    v29 = *(v13 + 56);
    v17 = *(v13 + 40);
    v28[0] = v16;
    v28[1] = v17;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v28, v26);
    v18 = BigString.index(_:offsetBy:limitedBy:)();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    result = outlined destroy of BigString(v27);
    if (v24 == 2)
    {
      v25 = 0;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 2;
    }

    else
    {
      if (v18 >> 10 < v7 || v8 < v18 >> 10)
      {
        goto LABEL_18;
      }

      v25 = *(v13 + 16);
      *a4 = v18;
      a4[1] = v20;
      a4[2] = v22;
      a4[3] = v24;
    }

    a4[4] = v25;
    return result;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t *AttributedString.CharacterView._index(_:offsetBy:limitedBy:)@<X0>(unint64_t *result@<X0>, unint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = *result >> 10;
  v7 = v4[1] >> 10;
  v8 = v4[5] >> 10;
  v9 = *a3 >> 10;
  if (v8 >= v9 && v9 >= v7 && v6 >= v7 && v8 >= v6)
  {
    v13 = *v4;
    v14 = *(*v4 + 24);
    v15 = *(*v4 + 56);
    v27[1] = *(*v4 + 40);
    v27[2] = v15;
    v27[0] = v14;
    v16 = *(v13 + 24);
    v29 = *(v13 + 56);
    v17 = *(v13 + 40);
    v28[0] = v16;
    v28[1] = v17;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v28, v26);
    v18 = BigString.index(_:offsetBy:limitedBy:)();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    result = outlined destroy of BigString(v27);
    if (v24 == 2)
    {
      v25 = 0;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 2;
    }

    else
    {
      if (v18 >> 10 < v7 || v8 < v18 >> 10)
      {
        goto LABEL_18;
      }

      v25 = *(v13 + 16);
      *a4 = v18;
      a4[1] = v20;
      a4[2] = v22;
      a4[3] = v24;
    }

    a4[4] = v25;
    return result;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t *AttributedString.CharacterView._distance(from:to:)(unint64_t *result, unint64_t *a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 40);
  v5 = *result >> 10;
  v6 = v3 >> 10;
  v7 = *a2 >> 10;
  if (v4 >> 10 >= v7 && v7 >= v6 && v5 >= v6 && v4 >> 10 >= v5)
  {
    v11 = *(*v2 + 24);
    v12 = *(*v2 + 40);
    v13 = *(*v2 + 56);
    v18 = *(v2 + 16);
    v14 = *(v2 + 32);
    v21 = *(v2 + 48);
    v22 = *(v2 + 64);
    v16[0] = v11;
    v16[1] = v12;
    v16[2] = v13;
    v17 = v3;
    v19 = v14;
    v20 = v4;
    swift_unknownObjectRetain();
    v15 = BigSubstring.distance(from:to:)();
    outlined destroy of BigSubstring(v16);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *AttributedString.CharacterView.subscript.getter(unint64_t *result)
{
  v2 = *result >> 10;
  if (v2 < v1[1] >> 10 || v2 >= v1[5] >> 10)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1;
    v5 = *(*v1 + 24);
    v6 = *(*v1 + 56);
    v11[1] = *(*v1 + 40);
    v11[2] = v6;
    v11[0] = v5;
    v7 = *(v4 + 24);
    v13 = *(v4 + 56);
    v8 = *(v4 + 40);
    v12[0] = v7;
    v12[1] = v8;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v12, v10);
    v9 = BigString.subscript.getter();
    outlined destroy of BigString(v11);
    return v9;
  }

  return result;
}

void *key path getter for AttributedString.CharacterView.subscript(_:) : AttributedString.CharacterView@<X0>(void *result@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2 >> 10;
  if (v4 < result[1] >> 10 || v4 >= result[5] >> 10)
  {
    __break(1u);
  }

  else
  {
    v6 = *result;
    v7 = *(*result + 24);
    v8 = *(*result + 56);
    v15[1] = *(*result + 40);
    v15[2] = v8;
    v15[0] = v7;
    v9 = *(v6 + 24);
    v17 = *(v6 + 56);
    v10 = *(v6 + 40);
    v16[0] = v9;
    v16[1] = v10;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v16, v14);
    v11 = BigString.subscript.getter();
    v13 = v12;
    result = outlined destroy of BigString(v15);
    *a3 = v11;
    a3[1] = v13;
  }

  return result;
}

uint64_t key path setter for AttributedString.CharacterView.subscript(_:) : AttributedString.CharacterView(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = v3;

  specialized AttributedString.CharacterView.subscript.setter(v4, v5, v8);
}

uint64_t AttributedString.CharacterView.subscript.setter(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  specialized AttributedString.CharacterView.subscript.setter(a1, a2, a3);
}

uint64_t specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(uint64_t i, _OWORD *a2)
{
  v6 = v2;
  v591 = a2;
  v8 = &v619;
  v710 = *MEMORY[0x1E69E9840];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v691[0] = *(v10 + 24);
    v691[1] = *(v10 + 40);
    v691[2] = *(v10 + 56);
    v5 = v6;
    v11 = *(v10 + 72);
    v12 = *(v10 + 80);
    v13 = i;
    v14 = *(v10 + 88);
    v3 = *(v10 + 96);
    type metadata accessor for AttributedString.Guts();
    v4 = swift_allocObject();
    outlined init with copy of BigString(v691, v634);
    swift_unknownObjectRetain();
    v15 = v12;
    v6 = v5;
    v16 = v14;
    i = v13;
    v17 = AttributedString.Guts.init(string:runs:)(v691, v11, v15, v16, v3);

    *v5 = v17;
    v10 = v17;
    v8 = &v619;
  }

  v18 = v6[1];
  v19 = v6[5];
  v688 = *(v10 + 24);
  v689 = *(v10 + 40);
  v690 = *(v10 + 56);
  v20 = *i;
  v596 = *(i + 8);
  v597 = v20;
  v21 = *(i + 16);
  v593 = *(i + 24);
  v594 = v21;
  v22 = v20 >> 10;
  v23 = *(i + 32);
  v643 = *(i + 40);
  v24 = *(i + 56);
  *&v603 = v22;
  v644 = v24;
  if (v22 >= v18 >> 10 && v19 >> 10 >= v23 >> 10)
  {
    v602 = v23 >> 10;
    v600 = v23;
    v588 = (v6 + 1);
    v589 = v6;
    v590 = 0;
    v692[0] = *(v10 + 24);
    v692[1] = *(v10 + 40);
    v693 = *(v10 + 56);
    outlined init with copy of Rope<BigString._Chunk>._Node?(v692, v634);
    v585 = i;
    BigSubstring.init(_:in:)();
    LODWORD(v587) = BigSubstring.isIdentical(to:)();
    outlined destroy of BigSubstring(v634);
    v25 = *(v10 + 24);
    v26 = *(v10 + 40);
    v687 = *(v10 + 56);
    v686 = v26;
    v685 = v25;
    v27 = *(v10 + 40);
    v604 = *(v10 + 24);
    v605 = v27;
    v28 = *(v10 + 56);
    i = *(v10 + 64);
    v606 = v10;
    if (BigString.isEmpty.getter())
    {
      v592 = MEMORY[0x1E69E7CC8];
      v8 = &v619;
      goto LABEL_39;
    }

    v29 = v597;
    if (v597 >= 0x800)
    {
      v29 = v597;
      if (v603 == v602)
      {
        v682[3] = v604;
        v682[4] = v605;
        v683 = v28;
        v684 = i;
        v694[0] = v685;
        v694[1] = v686;
        v695 = v687;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v694, &v626);
        v29 = BigString.UTF8View.index(before:)();
        outlined destroy of BigString(&v685);
      }
    }

    v30 = *(v10 + 72);
    v3 = *(v10 + 80);
    v4 = v29 >> 11;
    i = *(v10 + 88);
    v8 = *(v10 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v4, 0, v30, v3, i, v8) == v8)
    {
      v33 = v31;
      v5 = v32;
      if (v30)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v8, v31, v32, v30, v3);
        swift_unknownObjectRelease();
      }

      v34 = *(v10 + 72);
      v35 = *(v10 + 80);
      v36 = *(v10 + 88);
      v37 = *(v10 + 96);
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v8, v33, v5, v34, v35, v36, v37);
      v4 = v38;
      i = v39;
      swift_unknownObjectRelease();
      v40 = *(v4 + 32);
      LODWORD(v34) = v40 & 0x3F;
      v3 = ((1 << v40) + 63) >> 6;
      v8 = 8 * v3;

      if (v34 <= 0xD)
      {
        goto LABEL_14;
      }

      goto LABEL_561;
    }

    goto LABEL_560;
  }

LABEL_543:
  __break(1u);
LABEL_544:
  __break(1u);
LABEL_545:
  __break(1u);
LABEL_546:
  __break(1u);
LABEL_547:
  __break(1u);
LABEL_548:
  __break(1u);
LABEL_549:
  __break(1u);
LABEL_550:
  __break(1u);
  do
  {
    __break(1u);
LABEL_552:
    __break(1u);
LABEL_553:
    __break(1u);
LABEL_554:
    __break(1u);
LABEL_555:
    __break(1u);
LABEL_556:
    __break(1u);
LABEL_557:
    __break(1u);
LABEL_558:
    __break(1u);
LABEL_559:
    __break(1u);
LABEL_560:
    __break(1u);
LABEL_561:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_574;
    }

LABEL_14:
    v595 = v3;
    v601 = i;
    v599 = &v565;
    MEMORY[0x1EEE9AC00](v41);
    v598 = (&v565 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v598, v8);
    *&v604 = 0;
    v5 = 0;
    *&v605 = v4;
    v42 = v4 + 64;
    v43 = 1 << *(v4 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v4 + 64);
    v46 = (v43 + 63) >> 6;
    v4 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
    do
    {
      do
      {
        while (1)
        {
          if (v45)
          {
            v47 = __clz(__rbit64(v45));
            v45 &= v45 - 1;
          }

          else
          {
            v48 = v5;
            v8 = &v619;
            do
            {
              v5 = v48 + 1;
              if (__OFADD__(v48, 1))
              {
                goto LABEL_463;
              }

              if (v5 >= v46)
              {
                goto LABEL_33;
              }

              v49 = *(v42 + 8 * v5);
              ++v48;
            }

            while (!v49);
            v47 = __clz(__rbit64(v49));
            v45 = (v49 - 1) & v49;
          }

          v8 = v47 | (v5 << 6);
          v50 = (*(v605 + 48) + 16 * v8);
          v52 = *v50;
          v51 = v50[1];
          outlined init with copy of AttributedString._AttributeValue(*(v605 + 56) + 72 * v8, v633);
          *&v626 = v52;
          *(&v626 + 1) = v51;
          outlined init with copy of AttributedString._AttributeValue(v633, &v627);
          outlined init with copy of FloatingPointRoundingRule?(&v626, &v619, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);

          LODWORD(v51) = BYTE8(v623);
          outlined destroy of AttributedString._AttributeValue(&v620);
          if (v51 == 1)
          {
            break;
          }

          outlined destroy of TermOfAddress?(&v626, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          outlined destroy of AttributedString._AttributeValue(v633);
          v10 = v606;
        }

        outlined init with copy of FloatingPointRoundingRule?(&v626, &v608, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);

        v10 = v606;
        if (!v616)
        {
          outlined destroy of TermOfAddress?(&v626, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          outlined destroy of AttributedString._AttributeValue(v633);
          outlined destroy of AttributedString._AttributeValue(&v609);
          break;
        }

        v53 = specialized Set.contains(_:)(0, 0, v616);
        outlined destroy of TermOfAddress?(&v626, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
        outlined destroy of AttributedString._AttributeValue(v633);
        outlined destroy of AttributedString._AttributeValue(&v609);
      }

      while ((v53 & 1) != 0);
      *(v598 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      v54 = __OFADD__(v604, 1);
      *&v604 = v604 + 1;
    }

    while (!v54);
    __break(1u);
LABEL_33:
    v55 = v604;
    if (v604)
    {
      v4 = v605;
      if (v604 == *(v605 + 16))
      {

        v592 = v4;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
        v109 = static _DictionaryStorage.allocate(capacity:)();
        v8 = &v619;
        v3 = 0;
        v5 = *v598;
        v592 = v109;
        i = v109 + 64;
        do
        {
          if (v5)
          {
            v114 = __clz(__rbit64(v5));
            v5 &= v5 - 1;
          }

          else
          {
            v115 = v3;
            do
            {
              v3 = v115 + 1;
              if (__OFADD__(v115, 1))
              {
                goto LABEL_526;
              }

              if (v3 >= v595)
              {
                goto LABEL_36;
              }

              v116 = v598[v3];
              ++v115;
            }

            while (!v116);
            v114 = __clz(__rbit64(v116));
            v5 = (v116 - 1) & v116;
          }

          v117 = v114 | (v3 << 6);
          v118 = (*(v4 + 48) + 16 * v117);
          v119 = *v118;
          v10 = v118[1];
          outlined init with copy of AttributedString._AttributeValue(*(v4 + 56) + 72 * v117, &v626);
          v621 = v628;
          v622 = v629;
          *&v623 = v630;
          v619 = v626;
          v620 = v627;
          v120 = v592;
          Hasher.init(_seed:)();

          String.hash(into:)();
          v121 = Hasher._finalize()();
          v122 = -1 << *(v120 + 32);
          v123 = v121 & ~v122;
          v124 = v123 >> 6;
          if (((-1 << v123) & ~*(i + 8 * (v123 >> 6))) != 0)
          {
            v110 = __clz(__rbit64((-1 << v123) & ~*(i + 8 * (v123 >> 6)))) | v123 & 0x7FFFFFFFFFFFFFC0;
            v8 = &v619;
          }

          else
          {
            v125 = 0;
            v126 = (63 - v122) >> 6;
            v8 = &v619;
            do
            {
              if (++v124 == v126 && (v125 & 1) != 0)
              {
                goto LABEL_532;
              }

              v127 = v124 == v126;
              if (v124 == v126)
              {
                v124 = 0;
              }

              v125 |= v127;
              v128 = *(i + 8 * v124);
            }

            while (v128 == -1);
            v110 = __clz(__rbit64(~v128)) + (v124 << 6);
          }

          *(i + ((v110 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v110;
          v111 = v592;
          v112 = (*(v592 + 48) + 16 * v110);
          *v112 = v119;
          v112[1] = v10;
          v113 = *(v111 + 56) + 72 * v110;
          *(v113 + 16) = v620;
          *(v113 + 32) = v621;
          *(v113 + 48) = v622;
          *(v113 + 64) = v623;
          *v113 = v619;
          ++*(v111 + 16);
          --v55;
          v10 = v606;
        }

        while (v55);
      }

LABEL_36:
      i = v601;
    }

    else
    {
      v592 = MEMORY[0x1E69E7CC8];
      i = v601;
      v4 = v605;
    }

LABEL_38:

    swift_bridgeObjectRelease_n();
LABEL_39:
    *&v605 = v597 >> 11;
    v633[0] = v597 >> 11;
    *&v676[0] = v600 >> 11;
    v595 = v600 >> 11;
    if (v600 < 0x800)
    {
      v599 = MEMORY[0x1E69E7CD0];
      v601 = MEMORY[0x1E69E7CC8];
      goto LABEL_66;
    }

    v3 = (v600 >> 11) - 1;
    v56 = *(v10 + 72);
    i = *(v10 + 80);
    v5 = *(v10 + 88);
    v57 = *(v10 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v3, 0, v56, i, v5, v57) == v57)
    {
      v3 = v58;
      v4 = v59;
      if (v56)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v57, v58, v59, v56, i);
        swift_unknownObjectRelease();
      }

      v60 = *(v10 + 72);
      v61 = *(v10 + 80);
      v62 = *(v10 + 88);
      v63 = *(v10 + 96);
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v57, v3, v4, v60, v61, v62, v63);
      v5 = v64;
      v599 = v65;
      swift_unknownObjectRelease();
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

      v67 = *(v5 + 32);
      i = ((1 << v67) + 63) >> 6;
      if ((v67 & 0x3Fu) <= 0xD)
      {
        goto LABEL_45;
      }
    }

    else
    {
      __break(1u);
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_45:
      v583 = i;
      v584 = &v565;
      MEMORY[0x1EEE9AC00](v66);
      v586 = (&v565 - ((v68 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v586, v68);
      v598 = 0;
      v69 = 0;
      v70 = v5 + 64;
      v71 = 1 << *(v5 + 32);
      v72 = -1;
      if (v71 < 64)
      {
        v72 = ~(-1 << v71);
      }

      v8 = v72 & *(v5 + 64);
      v10 = (v71 + 63) >> 6;
      *&v604 = v5;
      while (v8)
      {
        v73 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_56:
        v4 = v73 | (v69 << 6);
        v76 = (*(v5 + 48) + 16 * v4);
        v77 = *v76;
        v3 = v76[1];
        outlined init with copy of AttributedString._AttributeValue(*(v5 + 56) + 72 * v4, &v608);
        *&v626 = v77;
        *(&v626 + 1) = v3;
        outlined init with copy of AttributedString._AttributeValue(&v608, &v627);
        outlined init with copy of FloatingPointRoundingRule?(&v626, &v619, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
        swift_bridgeObjectRetain_n();

        if (v624)
        {
          v78 = specialized Set.contains(_:)(0, 0, v624);
          outlined destroy of TermOfAddress?(&v626, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          outlined destroy of AttributedString._AttributeValue(&v620);
          outlined destroy of AttributedString._AttributeValue(&v608);

          v5 = v604;
          if (v78)
          {
            *(v586 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
            v54 = __OFADD__(v598, 1);
            v598 = (v598 + 1);
            if (v54)
            {
              __break(1u);
              goto LABEL_61;
            }
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(&v626, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          outlined destroy of AttributedString._AttributeValue(&v620);
          outlined destroy of AttributedString._AttributeValue(&v608);

          v5 = v604;
        }
      }

      v74 = v69;
      v8 = &v619;
      while (1)
      {
        v69 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          goto LABEL_464;
        }

        if (v69 >= v10)
        {
          break;
        }

        v75 = *(v70 + 8 * v69);
        ++v74;
        if (v75)
        {
          v73 = __clz(__rbit64(v75));
          v8 = (v75 - 1) & v75;
          goto LABEL_56;
        }
      }

LABEL_61:
      i = v598;
      if (v598)
      {
        v10 = v606;
        if (v598 == *(v5 + 16))
        {

          v601 = v5;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
          v129 = static _DictionaryStorage.allocate(capacity:)();
          v8 = &v619;
          v130 = 0;
          v131 = v586;
          v132 = *v586;
          v601 = v129;
          i = v129 + 64;
          do
          {
            if (v132)
            {
              v137 = __clz(__rbit64(v132));
              v132 &= v132 - 1;
            }

            else
            {
              v138 = v130;
              do
              {
                v130 = v138 + 1;
                if (__OFADD__(v138, 1))
                {
                  goto LABEL_527;
                }

                if (v130 >= v583)
                {
                  goto LABEL_65;
                }

                v139 = v131[v130];
                ++v138;
              }

              while (!v139);
              v137 = __clz(__rbit64(v139));
              v132 = (v139 - 1) & v139;
            }

            v140 = v137 | (v130 << 6);
            v141 = (*(v5 + 48) + 16 * v140);
            v3 = *v141;
            v4 = v141[1];
            outlined init with copy of AttributedString._AttributeValue(*(v5 + 56) + 72 * v140, &v626);
            v621 = v628;
            v622 = v629;
            *&v623 = v630;
            v619 = v626;
            v620 = v627;
            v142 = v601;
            Hasher.init(_seed:)();

            String.hash(into:)();
            v143 = Hasher._finalize()();
            v144 = -1 << *(v142 + 32);
            v145 = v143 & ~v144;
            v146 = v145 >> 6;
            if (((-1 << v145) & ~*(i + 8 * (v145 >> 6))) != 0)
            {
              v133 = __clz(__rbit64((-1 << v145) & ~*(i + 8 * (v145 >> 6)))) | v145 & 0x7FFFFFFFFFFFFFC0;
              v8 = &v619;
              v131 = v586;
            }

            else
            {
              v147 = 0;
              v148 = (63 - v144) >> 6;
              v8 = &v619;
              v131 = v586;
              do
              {
                if (++v146 == v148 && (v147 & 1) != 0)
                {
                  goto LABEL_533;
                }

                v149 = v146 == v148;
                if (v146 == v148)
                {
                  v146 = 0;
                }

                v147 |= v149;
                v150 = *(i + 8 * v146);
              }

              while (v150 == -1);
              v133 = __clz(__rbit64(~v150)) + (v146 << 6);
            }

            *(i + ((v133 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v133;
            v134 = v601;
            v135 = (*(v601 + 48) + 16 * v133);
            *v135 = v3;
            v135[1] = v4;
            v136 = *(v134 + 56) + 72 * v133;
            *(v136 + 16) = v620;
            *(v136 + 32) = v621;
            *(v136 + 48) = v622;
            *(v136 + 64) = v623;
            *v136 = v619;
            ++*(v134 + 16);
            v598 = (v598 - 1);
          }

          while (v598);
        }
      }

      else
      {
        v601 = MEMORY[0x1E69E7CC8];
        v10 = v606;
      }

LABEL_65:
    }

    else
    {
      v382 = swift_slowAlloc();

      v563 = v590;
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v382, i, v5, specialized thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error));
      v601 = v564;
      v590 = v563;
      if (v563)
      {
        goto LABEL_593;
      }

      MEMORY[0x1865D2690](v382, -1, -1);

      v8 = &v619;
    }

LABEL_66:
    *(v8 + 1856) = *(v10 + 24);
    *(v8 + 1872) = *(v10 + 40);
    *(v8 + 1888) = *(v10 + 56);
    v8 = v682;
    v79 = BigString.UTF8View.count.getter();
    v3 = v605;
    if (v605 >= v79)
    {
      goto LABEL_153;
    }

    v80 = *(v10 + 72);
    i = *(v10 + 80);
    v5 = *(v10 + 88);
    v81 = *(v10 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v3, 0, v80, i, v5, v81) != v81)
    {
      __break(1u);
LABEL_567:
      __break(1u);
LABEL_568:
      __break(1u);
      goto LABEL_569;
    }

    v84 = v82;
    v85 = v83;
    if (v80)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v81, v82, v83, v80, i);
      swift_unknownObjectRelease();
    }

    v86 = *(v10 + 72);
    v87 = *(v10 + 80);
    v88 = *(v10 + 88);
    v89 = *(v10 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v81, v84, v85, v86, v87, v88, v89);
    v598 = v90;
    swift_unknownObjectRelease();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    v92 = v590;
    i = specialized Dictionary.filter(_:)(v91);
    v590 = v92;

    swift_bridgeObjectRelease_n();
    v4 = 0;
    *&v619 = MEMORY[0x1865CB700](*(i + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    *&v604 = i;
    v93 = 1 << *(i + 32);
    v94 = -1;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    v95 = i + 64;
    v96 = v94 & *(i + 64);
    v5 = (v93 + 63) >> 6;
    if (v96)
    {
      while (1)
      {
        v97 = v4;
LABEL_78:
        v98 = __clz(__rbit64(v96));
        v96 &= v96 - 1;
        v99 = (*(v604 + 48) + ((v97 << 10) | (16 * v98)));
        v100 = *v99;
        i = v99[1];

        specialized Set._Variant.insert(_:)(&v626, v100, i);

        if (!v96)
        {
          goto LABEL_74;
        }
      }
    }

    while (1)
    {
LABEL_74:
      v97 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_465;
      }

      if (v97 >= v5)
      {
        break;
      }

      v96 = *(v95 + 8 * v97);
      ++v4;
      if (v96)
      {
        v4 = v97;
        goto LABEL_78;
      }
    }

    *&v608 = v619;
    v102 = *(v10 + 72);
    v101 = *(v10 + 80);
    v8 = *(v10 + 88);
    v103 = *(v10 + 96);
    swift_unknownObjectRetain();

    if (v597 <= 0x7FF)
    {
      if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v102, v101, v8, v103) == v103)
      {
        v107 = v104;
        v108 = v105;
        i = v106;
        if (v102)
        {
          v101 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v103, v104, v105, v102, v101);
          swift_unknownObjectRelease();
          v8 = -i;
          if (!__OFSUB__(0, i))
          {
            goto LABEL_128;
          }
        }

        else
        {
          v101 = 0;
          v8 = -v106;
          if (!__OFSUB__(0, v106))
          {
            goto LABEL_128;
          }
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_580:
      __break(1u);
LABEL_581:
      __break(1u);
      goto LABEL_582;
    }

    v107 = specialized Rope._endPath.getter(v102);
    if (v102)
    {
      swift_unknownObjectRelease();
      v108 = 0;
    }

    else
    {
      v108 = 0;
      v101 = 0;
      v8 = 0;
    }

LABEL_128:
    *&v626 = v103;
    *(&v626 + 1) = v107;
    *&v627 = v108;
    *(&v627 + 1) = v101;
    *&v628 = v8;
    v151 = *(v10 + 72);
    v3 = *(v10 + 80);
    v4 = *(v10 + 88);
    v152 = *(v10 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v151, v3, v4, v152) != v152)
    {
      goto LABEL_467;
    }

    v156 = v155;
    while (2)
    {
      if (v151)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v152, v153, v154, v151, v3);
        swift_unknownObjectRelease();
      }

      if (__OFSUB__(0, v156))
      {
        goto LABEL_519;
      }

      if (-v156 < v8 && *(v608 + 16))
      {
        v3 = *(v10 + 72);
        if (v3)
        {
          if (v8 == *(v10 + 88))
          {
LABEL_139:
            v8 = *(v10 + 80);
            i = *(v10 + 88);
            v162 = *(v10 + 96);
            swift_unknownObjectRetain();
            if (specialized Rope.find<A>(at:in:preferEnd:)(v605, 1, v3, v8, i, v162) != v162)
            {
              goto LABEL_535;
            }

            v166 = v163;
            v167 = v164;
            v5 = v165;
            if (v3)
            {
              v4 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v162, v163, v164, v3, v8);
              swift_unknownObjectRelease();
            }

            else
            {
              v4 = 0;
            }

            v157 = v605 - v5;
            if (__OFSUB__(v605, v5))
            {
              __break(1u);
              break;
            }

            goto LABEL_131;
          }
        }

        else if (!v8)
        {
          goto LABEL_139;
        }

        v168 = v10;
        v5 = *(v10 + 80);
        v10 = *(v10 + 88);
        v162 = *(v168 + 96);
        v619 = v626;
        *&v620 = v627;
        v4 = *(&v627 + 1) - 1;
        if (__OFSUB__(*(&v627 + 1), 1))
        {
          goto LABEL_528;
        }

        swift_unknownObjectRetain();
        specialized Rope.formIndex(before:)(&v619, v3, v5, v10, v162);
        if (v619 != v162)
        {
          goto LABEL_529;
        }

        v166 = *(&v619 + 1);
        v167 = v620;
        if (v620)
        {
          i = *(v620 + 24 * ((*(&v619 + 1) >> ((4 * *(v620 + 18) + 8) & 0x3C)) & 0xFLL) + 24);

          swift_unknownObjectRelease();
          v157 = v8 - i;
          v10 = v606;
          if (__OFSUB__(v8, i))
          {
            goto LABEL_536;
          }
        }

        else
        {
          i = specialized Rope._Node.subscript.getter(*(&v619 + 1), v3);
          v5 = v169;
          swift_unknownObjectRelease();

          v157 = v8 - i;
          if (__OFSUB__(v8, i))
          {
            goto LABEL_542;
          }

          v167 = 0;
          v10 = v606;
        }

LABEL_131:
        *&v626 = v162;
        *(&v626 + 1) = v166;
        *&v627 = v167;
        *(&v627 + 1) = v4;
        *&v628 = v157;
        v158 = v604;

        v159 = v598;

        specialized AttributedString.Guts.updateRun(at:within:with:)(&v626, 0, v605, v10, &v608, v158, v159, v633);

        v8 = v628;
        v151 = *(v10 + 72);
        v3 = *(v10 + 80);
        v4 = *(v10 + 88);
        v152 = *(v10 + 96);
        swift_unknownObjectRetain();
        v160 = specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v151, v3, v4, v152);
        v156 = v161;
        if (v160 != v152)
        {
          goto LABEL_467;
        }

        continue;
      }

      break;
    }

LABEL_153:
    if (v600 < 0x800)
    {

      goto LABEL_204;
    }

    v170 = v601;
    v171 = *(v601 + 16);

    v4 = 0;
    *&v619 = MEMORY[0x1865CB700](v171, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v173 = *(v170 + 64);
    v3 = v170 + 64;
    v172 = v173;
    v174 = 1 << *(v3 - 32);
    v175 = -1;
    if (v174 < 64)
    {
      v175 = ~(-1 << v174);
    }

    v176 = v175 & v172;
    v5 = (v174 + 63) >> 6;
    if ((v175 & v172) != 0)
    {
      while (1)
      {
        v177 = v4;
LABEL_163:
        v178 = __clz(__rbit64(v176));
        v176 &= v176 - 1;
        v179 = (*(v601 + 48) + ((v177 << 10) | (16 * v178)));
        v180 = *v179;
        i = v179[1];

        specialized Set._Variant.insert(_:)(&v626, v180, i);

        if (!v176)
        {
          goto LABEL_159;
        }
      }
    }

    while (1)
    {
LABEL_159:
      v177 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_466;
      }

      if (v177 >= v5)
      {
        break;
      }

      v176 = *(v3 + 8 * v177);
      ++v4;
      if (v176)
      {
        v4 = v177;
        goto LABEL_163;
      }
    }

    *&v608 = v619;
    v679 = *(v10 + 24);
    v680 = *(v10 + 40);
    v681 = *(v10 + 56);
    *&v604 = BigString.UTF8View.count.getter();
    v8 = v595;
    if (v604 < v595)
    {
      goto LABEL_567;
    }

    v3 = *(v10 + 72);
    v181 = *(v10 + 80);
    v183 = *(v10 + 88);
    v182 = *(v10 + 96);
    swift_unknownObjectRetain();

    if (specialized Rope.find<A>(at:in:preferEnd:)(v8, 0, v3, v181, v183, v182) != v182)
    {
      goto LABEL_568;
    }

    v4 = v184;
    v5 = v185;
    i = v186;
    if (v3)
    {
      v187 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v182, v184, v185, v3, v181);
      swift_unknownObjectRelease();
      v188 = v8 - i;
      if (!__OFSUB__(v8, i))
      {
        goto LABEL_169;
      }

LABEL_281:
      __break(1u);
LABEL_282:
      v594 = 0;
      goto LABEL_283;
    }

    v187 = 0;
    v188 = v8 - v186;
    if (__OFSUB__(v8, v186))
    {
      goto LABEL_281;
    }

LABEL_169:
    *&v626 = v182;
    *(&v626 + 1) = v4;
    *&v627 = v5;
    *(&v627 + 1) = v187;
    while (2)
    {
      *&v628 = v188;
      v189 = *(v10 + 72);
      if (v8 == v604)
      {
        i = *(v10 + 80);
        v3 = *(v10 + 88);
        v4 = *(v10 + 96);
        swift_unknownObjectRetain();
        if (specialized Rope.find<A>(at:in:preferEnd:)(v8, 0, v189, i, v3, v4) != v4)
        {
          goto LABEL_530;
        }

        v5 = v192;
        if (v189)
        {
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v4, v190, v191, v189, i);
          swift_unknownObjectRelease();
        }

        if (__OFSUB__(v8, v5))
        {
          goto LABEL_531;
        }

        if (v188 >= v8 - v5)
        {
          goto LABEL_203;
        }
      }

      else if (v189)
      {
        if (v188 >= *(v10 + 88))
        {
          goto LABEL_203;
        }
      }

      else if (v188 >= 0)
      {
        goto LABEL_203;
      }

      if (!*(v608 + 16))
      {
        goto LABEL_203;
      }

      i = v601;

      v193 = v599;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v626, v8, v604, v10, &v608, i, v193, v676);

      v194 = *(&v626 + 1);
      v3 = v626;
      v8 = v628;
      v4 = *(v10 + 72);
      v5 = *(v10 + 80);
      v196 = *(v10 + 88);
      v195 = *(v10 + 96);
      v619 = v626;
      *&v620 = v627;
      v197 = *(&v627 + 1) + 1;
      if (__OFADD__(*(&v627 + 1), 1))
      {
        goto LABEL_520;
      }

      if (v626 != v195)
      {
LABEL_521:
        __break(1u);
LABEL_522:
        __break(1u);
LABEL_523:
        __break(1u);
LABEL_524:
        __break(1u);
LABEL_525:
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
LABEL_528:
        __break(1u);
LABEL_529:
        __break(1u);
LABEL_530:
        __break(1u);
LABEL_531:
        __break(1u);
LABEL_532:
        __break(1u);
LABEL_533:
        __break(1u);
LABEL_534:
        __break(1u);
LABEL_535:
        __break(1u);
LABEL_536:
        __break(1u);
LABEL_537:
        __break(1u);
LABEL_538:
        __break(1u);
LABEL_539:
        __break(1u);
LABEL_540:
        __break(1u);
LABEL_541:
        __break(1u);
LABEL_542:
        __break(1u);
        goto LABEL_543;
      }

      if (v627)
      {
        v198 = (v627 + 24 * ((*(&v626 + 1) >> ((4 * *(v627 + 18) + 8) & 0x3C)) & 0xFLL));
        v199 = v198[3];
        i = v198[4];
        v10 = v198[5];
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v199 = specialized Rope._Node.subscript.getter(v194, v4);
        i = v200;
        v10 = v201;
      }

      v54 = __OFADD__(v8, v199);
      v188 = v8 + v199;
      if (v54)
      {
        goto LABEL_522;
      }

      specialized Rope.formIndex(after:)(&v619, v4, v5, v196, v3);
      swift_unknownObjectRelease();
      if (v188 < v604)
      {
        v5 = *(&v619 + 1);
        v3 = v619;
        v4 = v620;
        v10 = v606;
        v8 = v595;
        goto LABEL_171;
      }

      v10 = v606;
      v202 = v606[9];
      v8 = v595;
      if (v595 != v604)
      {
        v3 = v606[12];
        if (v202)
        {
          v4 = 0;
          v197 = v606[10];
          v188 = v606[11];
          v5 = ((-15 << ((4 * *(v202 + 18) + 8) & 0x3C)) - 1) & *(v202 + 18) | (*(v202 + 16) << ((4 * *(v202 + 18) + 8) & 0x3C));
        }

        else
        {
          v5 = 0;
          v4 = 0;
          v197 = 0;
          v188 = 0;
        }

        goto LABEL_171;
      }

      v203 = v606[10];
      i = v606[11];
      v3 = v606[12];
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v8, 0, v202, v203, i, v3) != v3)
      {
        goto LABEL_541;
      }

      v5 = v204;
      v4 = v205;
      v207 = v206;
      if (v202)
      {
        v197 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v3, v204, v205, v202, v203);
        swift_unknownObjectRelease();
        v54 = __OFSUB__(v8, v207);
        v188 = v8 - v207;
        if (v54)
        {
          break;
        }

        goto LABEL_171;
      }

      v197 = 0;
      v188 = v8 - v206;
      if (!__OFSUB__(v8, v206))
      {
LABEL_171:
        *&v626 = v3;
        *(&v626 + 1) = v5;
        *&v627 = v4;
        *(&v627 + 1) = v197;
        continue;
      }

      break;
    }

    __break(1u);
LABEL_203:

LABEL_204:

    if (*&v676[0] < v633[0])
    {
      goto LABEL_544;
    }

    v586 = *&v676[0];
    v580 = v633[0];
    v208 = *(v10 + 104);
    v209 = specialized Array.count.getter();
    if (v209 < 0)
    {
      goto LABEL_545;
    }

    v8 = v209;
    if (v209)
    {
      i = 0;
      v3 = 88;
      v210 = v602;
      while (1)
      {
        if (i >= *(v208 + 2))
        {
          goto LABEL_460;
        }

        v5 = *&v208[v3 - 56];
        v216 = v603 >= v5 >> 10 || v5 >> 10 >= v210;
        v217 = !v216;
        v4 = *&v208[v3 - 24];
        v218 = v4 >> 10;
        if (v603 >= v4 >> 10)
        {
          break;
        }

        if (v217)
        {
          if (v218 < v210)
          {
            v219 = swift_isUniquelyReferenced_nonNull_native();
            *(v10 + 104) = v208;
            if ((v219 & 1) == 0)
            {
              v208 = specialized _ArrayBuffer._consumeAndCreateNew()(v208);
            }

            if (i >= *(v208 + 2))
            {
              goto LABEL_539;
            }

            v211 = &v208[v3];
            v213 = v596;
            v212 = v597;
            *(v211 - 7) = v597;
            *(v211 - 6) = v213;
            v215 = v593;
            v214 = v594;
            *(v211 - 5) = v594;
            *(v211 - 4) = v215;
            *(v211 - 3) = v212;
            *(v211 - 2) = v213;
            *(v211 - 1) = v214;
            *v211 = v215;
            *(v10 + 104) = v208;
            v210 = v602;
            goto LABEL_209;
          }

          goto LABEL_225;
        }

        if (v218 < v210)
        {
          v4 = *&v208[v3 - 48];
          v225 = *&v208[v3 - 40];
          v226 = *&v208[v3 - 32];
          v227 = swift_isUniquelyReferenced_nonNull_native();
          *(v10 + 104) = v208;
          if ((v227 & 1) == 0)
          {
            v208 = specialized _ArrayBuffer._consumeAndCreateNew()(v208);
          }

          v210 = v602;
          if (i >= *(v208 + 2))
          {
            goto LABEL_540;
          }

          v228 = &v208[v3];
          *(v228 - 7) = v5;
          *(v228 - 6) = v4;
          *(v228 - 5) = v225;
          *(v228 - 4) = v226;
          v229 = v596;
          *(v228 - 3) = v597;
          *(v228 - 2) = v229;
          v230 = v593;
          *(v228 - 1) = v594;
          *v228 = v230;
          *(v10 + 104) = v208;
        }

LABEL_209:
        ++i;
        v3 += 64;
        if (v8 == i)
        {
          goto LABEL_234;
        }
      }

      if (!v217)
      {
        goto LABEL_209;
      }

LABEL_225:
      v5 = *&v208[v3 - 16];
      v220 = *&v208[v3 - 8];
      v221 = *&v208[v3];
      v626 = v643;
      *&v627 = v644;
      v222 = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 104) = v208;
      if ((v222 & 1) == 0)
      {
        v208 = specialized _ArrayBuffer._consumeAndCreateNew()(v208);
      }

      v210 = v602;
      if (i >= *(v208 + 2))
      {
        goto LABEL_523;
      }

      v223 = &v208[v3];
      *(v223 - 7) = v600;
      v224 = v627;
      *(v223 - 3) = v626;
      *(v223 - 4) = v224;
      *(v223 - 3) = v4;
      *(v223 - 2) = v5;
      *(v223 - 1) = v220;
      *v223 = v221;
      v10 = v606;
      v606[13] = v208;
      goto LABEL_209;
    }

LABEL_234:
    v231 = *(v10 + 40);
    v603 = *(v10 + 24);
    v604 = v231;
    i = *(v10 + 56);
    v4 = *(v10 + 64);
    v3 = v603;
    v676[0] = v603;
    v676[1] = v231;
    v677 = i;
    v678 = v4;
    v232 = BigString.UTF8View.count.getter();
    v233 = *(v588 + 1);
    v629 = *v588;
    v630 = v233;
    v234 = *(v588 + 3);
    v631 = *(v588 + 2);
    v632 = v234;
    v626 = v603;
    v627 = v604;
    *&v628 = i;
    *(&v628 + 1) = v4;
    swift_unknownObjectRetain();
    BigString.init()();
    v235 = v634[8];
    *(v10 + 24) = v634[7];
    *(v10 + 40) = v235;
    *(v10 + 56) = v634[9];
    swift_unknownObjectRelease();
    if (v587)
    {
      v5 = &v619;
      v237 = v603;
      v236 = v604;
    }

    else
    {
      v238 = *(v591 + 80);
      v623 = *(v591 + 64);
      v624 = v238;
      v625 = *(v591 + 96);
      v239 = *(v591 + 16);
      v619 = *v591;
      v620 = v239;
      v240 = *(v591 + 48);
      v621 = *(v591 + 32);
      v622 = v240;
      outlined init with copy of BigSubstring(v591, &v608);
      lazy protocol witness table accessor for type BigSubstring and conformance BigSubstring();
      v5 = &v619;
      BigSubstring.replaceSubrange<A>(_:with:)();
      v237 = v626;
      v236 = v627;
      v4 = *(&v628 + 1);
      i = v628;
      v3 = v626;
    }

    *(v10 + 40) = v236;
    *(v10 + 24) = v237;
    *(v10 + 56) = i;
    *(v10 + 64) = v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v241 = v630;
    v242 = v589;
    *(v589 + 8) = v629;
    *(v242 + 24) = v241;
    v243 = v632;
    *(v242 + 40) = v631;
    *(v242 + 56) = v243;
    v675[0] = *(v10 + 24);
    v675[1] = *(v10 + 40);
    v675[2] = *(v10 + 56);
    v8 = v675;
    v244 = BigString.UTF8View.count.getter();
    v245 = v244 - v232;
    if (__OFSUB__(v244, v232))
    {
      goto LABEL_546;
    }

    if (__OFADD__(v595 - v605, v245))
    {
      goto LABEL_547;
    }

    i = MEMORY[0x1E69E7CD0];
    v3 = v592;
    specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v605, v595, v595 - v605 + v245, v592, MEMORY[0x1E69E7CD0]);

    v674[0] = *(v10 + 24);
    v674[1] = *(v10 + 40);
    v674[2] = *(v10 + 56);
    v8 = v674;
    v246 = BigString.UTF8View.count.getter();
    v247 = v246 - v232;
    if (__OFSUB__(v246, v232))
    {
      goto LABEL_548;
    }

    v8 = *(v10 + 104);
    v248 = specialized Array.count.getter();
    if (v248 < 0)
    {
      goto LABEL_549;
    }

    if (v248)
    {
      v249 = 0;
      v250 = 88;
      v251 = v605;
      v598 = v247;
      v594 = v248;
      do
      {
        if (v249 >= *(v8 + 16))
        {
          goto LABEL_461;
        }

        v601 = v250;
        v602 = v249;
        v252 = *(v8 + v250 - 56);
        v4 = *(v8 + v250 - 48);
        v5 = *(v8 + v250 - 40);
        v600 = *(v8 + v250 - 24);
        v253 = *(v8 + v250 - 16);
        v596 = *(v8 + v250 - 8);
        v597 = v253;
        *&v603 = *(v8 + v250);
        v254 = v252 >> 11;
        if (v251 >= v252 >> 11)
        {
          v3 = v598;
          if (v595 != v251 || (v254 == v251 ? (v255 = v598 == 0) : (v255 = 1), v255))
          {
LABEL_254:
            v665 = *(v10 + 24);
            v666 = *(v10 + 40);
            v667 = *(v10 + 56);
            i = v665;
            swift_unknownObjectRetain();
            v258 = BigString.UTF8View.index(_:offsetBy:)();
            v5 = v263;
            v261 = v264;
            v8 = v265;
            swift_unknownObjectRelease();
            v247 = v3;
            goto LABEL_255;
          }
        }

        else
        {
          v3 = v598;
          if (!v598)
          {
            goto LABEL_254;
          }
        }

        v256 = *(v10 + 24);
        v672 = *(v10 + 40);
        v673 = *(v10 + 56);
        v671 = v256;
        v668 = *(v10 + 24);
        v669 = *(v10 + 40);
        v670 = *(v10 + 56);
        v10 = &v619;
        v8 = &v671;
        BigString.startIndex.getter();
        if (__OFADD__(v254, v3))
        {
          __break(1u);
LABEL_512:
          __break(1u);
LABEL_513:
          __break(1u);
LABEL_514:
          __break(1u);
LABEL_515:
          __break(1u);
LABEL_516:
          __break(1u);
LABEL_517:
          __break(1u);
LABEL_518:
          __break(1u);
LABEL_519:
          __break(1u);
LABEL_520:
          __break(1u);
          goto LABEL_521;
        }

        i = v257;
        v247 = v3;
        v696[0] = v671;
        v696[1] = v672;
        v697 = v673;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v696, &v619);
        v258 = BigString.UTF8View.index(_:offsetBy:)();
        v5 = v259;
        v261 = v260;
        v8 = v262;
        outlined destroy of BigString(&v671);
        v10 = v606;
LABEL_255:
        v3 = v600;
        v4 = v600 >> 11;
        *&v604 = v8;
        if (v605 >= v600 >> 11)
        {
          v270 = *(v10 + 104);
          if (v602 >= *(v270 + 16))
          {
            goto LABEL_518;
          }

          if ((*(v270 + v601 - 56) ^ v258) >= 0x400 && v247 != 0)
          {
LABEL_257:
            v599 = v261;
            v266 = *(v10 + 24);
            v663 = *(v10 + 40);
            v664 = *(v10 + 56);
            v662 = v266;
            v661[6] = *(v10 + 24);
            v661[7] = *(v10 + 40);
            v661[8] = *(v10 + 56);
            v8 = &v662;
            BigString.startIndex.getter();
            v54 = __OFADD__(v4, v247);
            v4 += v247;
            if (v54)
            {
              goto LABEL_512;
            }

            v698[0] = v662;
            v698[1] = v663;
            v699 = v664;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v698, &v619);
            v3 = BigString.UTF8View.index(_:offsetBy:)();
            i = v267;
            v4 = v268;
            *&v603 = v269;
            outlined destroy of BigString(&v662);
            v10 = v606;
            v247 = v598;
            goto LABEL_266;
          }
        }

        else if (v247)
        {
          goto LABEL_257;
        }

        v661[3] = *(v10 + 24);
        v661[4] = *(v10 + 40);
        v661[5] = *(v10 + 56);
        swift_unknownObjectRetain();
        v258 = BigString.UTF8View.index(_:offsetBy:)();
        v5 = v272;
        v599 = v273;
        *&v604 = v274;
        swift_unknownObjectRelease();
        v4 = v596;
        i = v597;
LABEL_266:
        v8 = *(v10 + 104);
        v275 = swift_isUniquelyReferenced_nonNull_native();
        *(v10 + 104) = v8;
        v276 = v602;
        if ((v275 & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        v251 = v605;
        v277 = v601;
        if (v276 >= *(v8 + 16))
        {
          goto LABEL_462;
        }

        v249 = v276 + 1;
        v278 = (v8 + v601);
        *(v278 - 7) = v258;
        *(v278 - 6) = v5;
        *(v278 - 5) = v599;
        *(v278 - 4) = v604;
        *(v278 - 3) = v3;
        *(v278 - 2) = i;
        *(v278 - 1) = v4;
        *v278 = v603;
        v250 = v277 + 64;
        *(v10 + 104) = v8;
      }

      while (v594 != v249);
    }

    if (__OFADD__(v586, v247))
    {
      goto LABEL_550;
    }
  }

  while (v586 + v247 < v580);
  v576 = v586 + v247;
  v279 = *(v10 + 80);
  v280 = *(v10 + 88);
  v281 = swift_unknownObjectRetain();
  LOBYTE(v279) = specialized Collection.isEmpty.getter(v281, v279, v280);
  swift_unknownObjectRelease();
  if (v279)
  {
    goto LABEL_273;
  }

  v283 = *(v10 + 24);
  v661[1] = *(v10 + 40);
  v661[2] = *(v10 + 56);
  v661[0] = v283;
  v660[21] = *(v10 + 24);
  v660[22] = *(v10 + 40);
  v660[23] = *(v10 + 56);
  v284 = *(v10 + 24);
  v700[1] = *(v10 + 40);
  v701 = *(v10 + 56);
  v700[0] = v284;
  BigString.startIndex.getter();
  i = v285;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v700, &v619);
  v286 = v580;
  v4 = BigString.UTF8View.index(_:offsetBy:)();
  v288 = v287;
  v5 = v289;
  v3 = v290;
  outlined destroy of BigString(v661);
  v660[18] = *(v10 + 24);
  v660[19] = *(v10 + 40);
  v660[20] = *(v10 + 56);
  if (__OFSUB__(v576, v286))
  {
LABEL_569:
    __break(1u);
    goto LABEL_570;
  }

  swift_unknownObjectRetain();
  v291 = BigString.UTF8View.index(_:offsetBy:)();
  v572 = v292;
  v573 = v291;
  v570 = v294;
  v571 = v293;
  swift_unknownObjectRelease();
  v575 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySnySiGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v660[15] = *(v10 + 24);
  v660[16] = *(v10 + 40);
  v660[17] = *(v10 + 56);
  swift_unknownObjectRetain();
  v568 = v5;
  v569 = v4;
  v581 = v288;
  v567 = v3;
  v5 = BigString.UnicodeScalarView.index(roundingDown:)();
  v3 = v295;
  v4 = v296;
  v298 = v297;
  swift_unknownObjectRelease();
  v660[12] = *(v10 + 24);
  v660[13] = *(v10 + 40);
  v660[14] = *(v10 + 56);
  swift_unknownObjectRetain();
  v299 = BigString.UnicodeScalarView.index(roundingUp:)();
  swift_unknownObjectRelease();
  i = v5 >> 11;
  if (v299 >> 11 < v5 >> 11)
  {
LABEL_570:
    __break(1u);
    goto LABEL_571;
  }

  v588 = v3;
  v589 = v299 >> 11;
  v188 = v298;
  v587 = v4;
  v300 = *(v10 + 72);
  v301 = *(v10 + 80);
  v3 = *(v10 + 88);
  v302 = *(v10 + 96);
  swift_unknownObjectRetain();
  swift_retain_n();
  v582 = v5 >> 11;
  v303 = specialized Rope.find<A>(at:in:preferEnd:)(v5 >> 11, 0, v300, v301, v3, v302);
  v597 = v302;
  if (v303 != v302)
  {
LABEL_571:
    __break(1u);
LABEL_572:
    __break(1u);
LABEL_573:
    __break(1u);
LABEL_574:
    v382 = swift_slowAlloc();

    v561 = v590;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v382, v3, v4, closure #1 in AttributedString._AttributeStorage.attributesForAddedText());
    v592 = v562;
    v590 = v561;
    if (!v561)
    {

      MEMORY[0x1865D2690](v382, -1, -1);
      v8 = &v619;
      goto LABEL_38;
    }

    goto LABEL_593;
  }

  v4 = v306;
  v595 = v305;
  v596 = v304;
  if (!v300)
  {
    goto LABEL_282;
  }

  v594 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v597, v304, v305, v300, v301);
  swift_unknownObjectRelease();
LABEL_283:
  v307 = v188;

  i = v582 - v4;
  if (__OFSUB__(v582, v4))
  {
    goto LABEL_572;
  }

  v4 = v582;
  v579 = v575;
LABEL_285:
  v591 = v5;
  v592 = v307;
  v598 = v588;
  v593 = v587;
  while (1)
  {
    v308 = *(v10 + 72);
    v3 = *(v10 + 80);
    v8 = *(v10 + 88);
    v5 = *(v10 + 96);
    swift_unknownObjectRetain();
    v600 = i;
    if (v4 != v589)
    {
      break;
    }

    if (specialized Rope.find<A>(at:in:preferEnd:)(v4, 0, v308, v3, v8, v5) != v5)
    {
      goto LABEL_524;
    }

    i = v311;
    if (v308)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v5, v309, v310, v308, v3);
      swift_unknownObjectRelease();
    }

    v8 = v4 - i;
    if (__OFSUB__(v4, i))
    {
      goto LABEL_525;
    }

    v4 = v581;
    v5 = v589;
    i = v600;
    if (v600 == v8)
    {
      goto LABEL_382;
    }

LABEL_298:
    v312 = *(v10 + 72);
    v313 = *(v10 + 80);
    v314 = *(v10 + 88);
    v315 = *(v10 + 96);
    swift_unknownObjectRetain();
    v316 = v596;
    v4 = v597;
    v317 = v595;
    specialized Rope.subscript.getter(v597, v596, v595, v312, v313, v314, v315);
    v601 = v318;
    v586 = v319;
    swift_unknownObjectRelease();
    v320 = *(v10 + 72);
    v321 = *(v10 + 80);
    v322 = *(v10 + 88);
    v323 = *(v10 + 96);
    swift_unknownObjectRetain();
    v324 = specialized Rope.subscript.getter(v4, v316, v317, v320, v321, v322, v323);
    i = v325;
    v3 = v326;
    swift_unknownObjectRelease();
    v8 = v600;

    v327 = v8 + v324;
    if (__OFADD__(v8, v324))
    {
      goto LABEL_513;
    }

    if (v5 >= v8)
    {
      v328 = v8;
    }

    else
    {
      v328 = v5;
    }

    v4 = v582;
    if (v8 < v582)
    {
      v328 = v582;
    }

    if (v327 <= v582)
    {
      v329 = v582;
    }

    else
    {
      v329 = v8 + v324;
    }

    if (v5 >= v327)
    {
      v330 = v329;
    }

    else
    {
      v330 = v5;
    }

    if (v328 == v330)
    {
      goto LABEL_514;
    }

    v54 = __OFSUB__(v330, v328);
    v331 = v330 - v328;
    if (v54)
    {
      goto LABEL_515;
    }

    v8 = *(v10 + 72);
    v3 = *(v10 + 80);
    v332 = v10;
    v10 = *(v10 + 88);
    v333 = *(v332 + 96);
    v334 = v596;
    i = v597;
    *&v619 = v597;
    *(&v619 + 1) = v596;
    v335 = v595;
    *&v620 = v595;
    if (__OFADD__(v594, 1))
    {
      goto LABEL_516;
    }

    *&v605 = v331;
    ++v594;
    swift_unknownObjectRetain();
    v336 = specialized Rope.subscript.getter(i, v334, v335, v8, v3, v10, v333);

    v54 = __OFADD__(v600, v336);
    i = v600 + v336;
    if (v54)
    {
      goto LABEL_517;
    }

    specialized Rope.formIndex(after:)(&v619, v8, v3, v10, v333);
    swift_unknownObjectRelease();
    if (i >= v5)
    {
      v10 = v606;
      v8 = v606[9];
      i = v606[10];
      v339 = v606[11];
      v3 = v606[12];
      swift_unknownObjectRetain();
      if (v4 == v5)
      {
        v5 = i;
        if (specialized Rope.find<A>(at:in:preferEnd:)(v4, 0, v8, i, v339, v3) != v3)
        {
          goto LABEL_537;
        }

        i = v342;
        v595 = v341;
        v596 = v340;
        if (v8)
        {
          v594 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v3, v340, v341, v8, v5);
          swift_unknownObjectRelease();
        }

        else
        {
          v594 = 0;
        }

        v337 = v598;
        v338 = v601;
        if (__OFSUB__(v4, i))
        {
          goto LABEL_538;
        }

        v600 = v4 - i;
      }

      else
      {
        v594 = i;
        v596 = specialized Rope._endPath.getter(v8);
        v337 = v598;
        v338 = v601;
        if (v8)
        {
          v600 = v339;
          swift_unknownObjectRelease();
          v595 = 0;
        }

        else
        {
          v594 = 0;
          v595 = 0;
          v600 = 0;
        }
      }
    }

    else
    {
      v600 = i;
      v3 = v619;
      v595 = v620;
      v596 = *(&v619 + 1);
      v10 = v606;
      v337 = v598;
      v338 = v601;
    }

    v660[9] = *(v10 + 24);
    v660[10] = *(v10 + 40);
    v660[11] = *(v10 + 56);
    swift_unknownObjectRetain();
    v343 = v591;
    v598 = v337;
    v344 = BigString.UTF8View.index(_:offsetBy:)();
    v587 = v346;
    v588 = v345;
    v585 = v347;
    swift_unknownObjectRelease();

    v348 = v590;
    v349 = specialized Sequence.contains(where:)(v338);
    v590 = v348;

    v597 = v3;
    if ((v349 & 1) != 0 && v344 >> 10 > v343 >> 10)
    {
      v566 = v344;
      v599 = (v338 + 64);
      v574 = v344 >> 10;
LABEL_330:
      v660[6] = *(v10 + 24);
      v660[7] = *(v10 + 40);
      v660[8] = *(v10 + 56);
      swift_unknownObjectRetain();
      LODWORD(v583) = BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      v350 = *(v10 + 40);
      v660[3] = *(v10 + 24);
      v660[4] = v350;
      v660[5] = *(v10 + 56);
      swift_unknownObjectRetain();
      v8 = BigString.UnicodeScalarView.index(after:)();
      v598 = v351;
      v592 = v353;
      v593 = v352;
      swift_unknownObjectRelease();
      v354 = 1 << *(v338 + 32);
      v355 = *(v338 + 64);
      v584 = ((v354 + 63) >> 6);
      if (v354 < 64)
      {
        v356 = ~(-1 << v354);
      }

      else
      {
        v356 = -1;
      }

      v4 = v356 & v355;
      v591 = v8;
      v577 = v8 >> 11;
      v578 = (v343 >> 11);

      v5 = 0;
      v357 = v599;
      if (!v4)
      {
LABEL_337:
        if (v584 <= v5 + 1)
        {
          v359 = (v5 + 1);
        }

        else
        {
          v359 = v584;
        }

        v360 = v359 - 1;
        while (1)
        {
          v358 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          if (v358 >= v584)
          {
            v376 = 0;
            v372 = 0;
            v375 = 0;
            v373 = 0;
            v374 = 0;
            v366 = 0;
            v367 = 0;
            v8 = 0;
            v10 = 0;
            v369 = 0;
            v371 = 0;
            v4 = 0;
            v5 = v360;
            goto LABEL_346;
          }

          v4 = v357[v358];
          ++v5;
          if (v4)
          {
            v5 = v358;
            goto LABEL_345;
          }
        }

        __break(1u);
LABEL_426:

        v607 = 1;
        v445 = v569 >> 10;
        v3 = v573 >> 10;
        if (v569 >> 10 == v573 >> 10)
        {
          v446 = *(v10 + 40);
          *(v8 + 224) = *(v10 + 24);
          *(v8 + 240) = v446;
          *(v8 + 256) = *(v10 + 56);
          if (v445 <= BigString.startIndex.getter() >> 10 || v445 >= BigString.endIndex.getter() >> 10)
          {
            goto LABEL_273;
          }

          if (!__OFSUB__(v580, 1))
          {
            if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v580 - 1, v580) & 1) == 0)
            {
              goto LABEL_273;
            }

            v447 = *(v10 + 24);
            v448 = *(v10 + 56);
            v660[1] = *(v10 + 40);
            v660[2] = v448;
            v660[0] = v447;
            v449 = *(v10 + 24);
            v450 = *(v10 + 40);
            *&v650 = *(v10 + 56);
            v648 = v449;
            v649 = v450;
            outlined init with copy of Rope<BigString._Chunk>._Node?(&v648, &v619);
            v451 = BigString.index(before:)();
            v453 = v452;
            v455 = v454;
            v457 = v456;
            outlined destroy of BigString(v660);
            v605 = *(v10 + 24);
            v458 = *(v10 + 40);
            v654 = v605;
            v655 = v458;
            v656 = *(v10 + 56);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMR);
            v459 = swift_allocObject();
            _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v459, 1);
            *v460 = 2;
            _NSBundleDeallocatingImmortalBundle();
            *&v604 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
            swift_unknownObjectRetain();

            v461 = *(v10 + 24);
            v462 = *(v10 + 56);
            v658 = *(v10 + 40);
            v659 = v462;
            v657 = v461;
            v463 = *(v10 + 24);
            v464 = *(v10 + 40);
            *&v653 = *(v10 + 56);
            v651 = v463;
            v652 = v464;
            outlined init with copy of Rope<BigString._Chunk>._Node?(&v651, &v619);
            v465 = v451;
            v466 = v453;
            v467 = v455;
            v468 = BigString.index(after:)();
            v470 = v469;
            v472 = v471;
            v474 = v473;
            outlined destroy of BigString(&v657);
            v475 = v465;
            v476 = v465 >> 10;
            if (v476 > v468 >> 10)
            {
              goto LABEL_586;
            }

            *&v605 = v475;
            *&v608 = v475;
            *(&v608 + 1) = v466;
            v609 = v467;
            v610 = v457;
            v611 = v468;
            v612 = v470;
            v613 = v472;
            v614 = v474;
            v382 = &v654;
            specialized BidirectionalCollection<>._getBlock(for:in:)(v604, &v608, &v619);
            swift_unknownObjectRelease();
            if (*(&v622 + 1) != 2)
            {
              v10 = v606;
              if (v476 <= v621 >> 10)
              {
                LOBYTE(v426) = 0;
                v477 = 0;
                v478 = 0;
                v479 = 0;
                v607 = 0;
                v5 = v605 >> 11;
                v4 = v621 >> 11;
                goto LABEL_470;
              }

              goto LABEL_587;
            }

            goto LABEL_591;
          }

          goto LABEL_581;
        }

        v480 = *(v10 + 40);
        *(v8 + 944) = *(v10 + 24);
        *(v8 + 960) = v480;
        *(v8 + 976) = *(v10 + 56);
        if (v445 <= BigString.startIndex.getter() >> 10)
        {
          goto LABEL_445;
        }

        if (__OFSUB__(v580, 1))
        {
          goto LABEL_580;
        }

        if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v580 - 1, v580) & 1) == 0)
        {
          goto LABEL_445;
        }

        v481 = *(v10 + 24);
        v482 = *(v10 + 56);
        v658 = *(v10 + 40);
        v659 = v482;
        v657 = v481;
        v483 = *(v10 + 24);
        v702[1] = *(v10 + 40);
        v703 = *(v10 + 56);
        v702[0] = v483;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v702, &v619);
        v484 = BigString.index(before:)();
        v486 = v485;
        v488 = v487;
        *&v605 = v489;
        outlined destroy of BigString(&v657);
        v604 = *(v10 + 24);
        v490 = *(v10 + 40);
        v651 = v604;
        v652 = v490;
        v653 = *(v10 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMR);
        v491 = swift_allocObject();
        _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v491, 1);
        *v492 = 2;
        _NSBundleDeallocatingImmortalBundle();
        *&v603 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
        swift_unknownObjectRetain();

        v493 = *(v10 + 24);
        v494 = *(v10 + 56);
        v655 = *(v10 + 40);
        v656 = v494;
        v654 = v493;
        v495 = *(v10 + 24);
        v704[1] = *(v10 + 40);
        v705 = *(v10 + 56);
        v704[0] = v495;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v704, &v619);
        v496 = v488;
        v497 = BigString.index(after:)();
        v499 = v498;
        v501 = v500;
        v503 = v502;
        outlined destroy of BigString(&v654);
        if (v484 >> 10 > v497 >> 10)
        {
LABEL_582:
          __break(1u);
        }

        else
        {
          v602 = v484;
          *&v608 = v484;
          *(&v608 + 1) = v486;
          v609 = v496;
          v610 = v605;
          v611 = v497;
          v612 = v499;
          v613 = v501;
          v614 = v503;
          v382 = &v651;
          specialized BidirectionalCollection<>._getBlock(for:in:)(v603, &v608, &v619);
          swift_unknownObjectRelease();
          if (*(&v622 + 1) == 2)
          {
            __break(1u);
            goto LABEL_590;
          }

          v10 = v606;
          if (v484 >> 10 <= v621 >> 10)
          {
            LOBYTE(v426) = 0;
            v5 = v602 >> 11;
            v4 = v621 >> 11;
            v607 = 0;
            goto LABEL_446;
          }
        }

        __break(1u);
        goto LABEL_584;
      }

      while (1)
      {
LABEL_336:
        v358 = v5;
LABEL_345:
        v361 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v362 = v361 | (v358 << 6);
        v363 = *(v338 + 56);
        v364 = (*(v338 + 48) + 16 * v362);
        v365 = v364[1];
        *&v605 = *v364;
        outlined init with copy of AttributedString._AttributeValue(v363 + 72 * v362, &v608);
        *&v604 = v608;
        v366 = v610;
        v602 = v609;
        *&v603 = *(&v608 + 1);
        v367 = v611;
        v368 = v612;
        v10 = v613;
        v369 = v614;
        v370 = v615;

        v371 = v370;
        v8 = v368;
        v372 = v365;
        v374 = v602;
        v373 = v603;
        v375 = v604;
        v376 = v605;
LABEL_346:
        *&v619 = v376;
        *(&v619 + 1) = v372;
        *&v620 = v375;
        *(&v620 + 1) = v373;
        *&v621 = v374;
        *(&v621 + 1) = v366;
        *&v622 = v367;
        *(&v622 + 1) = v8;
        *&v623 = v10;
        *(&v623 + 1) = v369;
        *&v624 = v371;
        if (!v372)
        {
          v338 = v601;

          v343 = v591;
          v10 = v606;
          if (v574 > v591 >> 10)
          {
            goto LABEL_330;
          }

          v4 = v582;
          i = v600;
          v307 = v585;
          v5 = v566;
          goto LABEL_285;
        }

        v3 = v372;
        outlined copy of AttributedString.AttributeRunBoundaries?(v8, v10);
        outlined destroy of AttributedString._AttributeValue(&v620);
        v338 = v601;
        if (v10 >= 2)
        {
          i = specialized Collection.first.getter(v8, v10);
          outlined consume of AttributedString.AttributeRunBoundaries?(v8, v10);
          if ((i & 0x100000000) == 0 && v583 != i)
          {
            break;
          }
        }

        v357 = v599;
        if (!v4)
        {
          goto LABEL_337;
        }
      }

      if (v577 < v578)
      {
        goto LABEL_558;
      }

      v8 = v575;
      i = swift_isUniquelyReferenced_nonNull_native();
      *&v608 = v8;
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v376, v3);
      v378 = *(v8 + 16);
      v379 = (v377 & 1) == 0;
      v380 = v378 + v379;
      if (__OFADD__(v378, v379))
      {
        goto LABEL_559;
      }

      v381 = v377;
      if (*(v8 + 24) >= v380)
      {
        if (i)
        {
          v579 = v8;
          if (v377)
          {
            goto LABEL_355;
          }
        }

        else
        {
          *&v604 = v10;
          i = v377;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySnySiGGGMd, &_ss18_DictionaryStorageCySSSaySnySiGGGMR);
          v579 = static _DictionaryStorage.copy(original:)();
          if (*(v8 + 16))
          {
            v390 = (v579 + 64);
            v391 = v575 + 8;
            v392 = ((1 << *(v579 + 32)) + 63) >> 6;
            if (v579 != v575 || v390 >= &v391[v392])
            {
              memmove(v390, v575 + 8, 8 * v392);
            }

            *&v603 = v391;
            v393 = 0;
            v394 = v575;
            *(v579 + 16) = v575[2];
            v395 = 1 << *(v394 + 32);
            v396 = v394[8];
            if (v395 < 64)
            {
              v397 = ~(-1 << v395);
            }

            else
            {
              v397 = -1;
            }

            v398 = v397 & v396;
            v399 = (v395 + 63) >> 6;
            if (!v398)
            {
              goto LABEL_372;
            }

            while (1)
            {
              v400 = __clz(__rbit64(v398));
              for (*&v605 = (v398 - 1) & v398; ; *&v605 = (v402 - 1) & v402)
              {
                v403 = v400 | (v393 << 6);
                v404 = (v575[6] + 16 * v403);
                v405 = v404[1];
                i = *(v575[7] + 8 * v403);
                v406 = v579;
                v407 = (*(v579 + 48) + 16 * v403);
                *v407 = *v404;
                v407[1] = v405;
                *(*(v406 + 56) + 8 * v403) = i;

                v398 = v605;
                if (v605)
                {
                  break;
                }

LABEL_372:
                v401 = v393;
                do
                {
                  v393 = v401 + 1;
                  if (__OFADD__(v401, 1))
                  {
                    goto LABEL_588;
                  }

                  if (v393 >= v399)
                  {
                    goto LABEL_379;
                  }

                  v402 = *(v603 + 8 * v393);
                  ++v401;
                }

                while (!v402);
                v400 = __clz(__rbit64(v402));
              }
            }
          }

LABEL_379:

          v10 = v604;
          if (v381)
          {
            goto LABEL_355;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v380, i);
        v382 = v608;
        v579 = v608;
        v383 = specialized __RawDictionaryStorage.find<A>(_:)(v376, v3);
        if ((v381 & 1) != (v384 & 1))
        {
          goto LABEL_592;
        }

        v10 = v383;
        if (v381)
        {
LABEL_355:

          v385 = v579;
          goto LABEL_361;
        }
      }

      v385 = v579;
      *(v579 + 8 * (v10 >> 6) + 64) |= 1 << v10;
      v386 = (v385[6] + 16 * v10);
      *v386 = v376;
      v386[1] = v3;
      *(v385[7] + 8 * v10) = MEMORY[0x1E69E7CC0];
      v387 = v385[2];
      v54 = __OFADD__(v387, 1);
      v388 = v387 + 1;
      if (v54)
      {
        goto LABEL_573;
      }

      v385[2] = v388;
LABEL_361:
      v389 = v385;
      v8 = v385[7] + 8 * v10;
      Array<A>._extend(with:)(v578, v577);
      v575 = v389;
      v357 = v599;
      if (!v4)
      {
        goto LABEL_337;
      }

      goto LABEL_336;
    }

    v598 = v588;
    v593 = v587;
    v591 = v344;
    v592 = v585;
    i = v600;
  }

  specialized Rope._endPath.getter(v308);
  if (v308)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  v4 = v581;
  v5 = v589;
  if (i != v8)
  {
    goto LABEL_298;
  }

LABEL_382:

  v408 = 0;
  v409 = (v579 + 64);
  v410 = 1 << *(v579 + 32);
  v411 = -1;
  if (v410 < 64)
  {
    v411 = ~(-1 << v410);
  }

  v412 = v411 & *(v579 + 64);
  v413 = (v410 + 63) >> 6;
  v8 = &v619;
  do
  {
LABEL_385:
    if (!v412)
    {
      do
      {
        v414 = v408 + 1;
        if (__OFADD__(v408, 1))
        {
          goto LABEL_534;
        }

        if (v414 >= v413)
        {
          goto LABEL_426;
        }

        v412 = v409[v414];
        ++v408;
      }

      while (!v412);
      v408 = v414;
    }

    v415 = __clz(__rbit64(v412));
    v412 &= v412 - 1;
    v416 = v415 | (v408 << 6);
    v417 = *(*(v579 + 56) + 8 * v416);
    v600 = v417[2];
  }

  while (!v600);
  v595 = v412;
  v596 = v413;
  v597 = v408;
  v598 = v409;
  v418 = (*(v579 + 48) + 16 * v416);
  v419 = v418[1];
  *&v603 = *v418;
  v601 = (v417 + 4);

  v420 = v417;
  v421 = 0;
  v599 = v420;
  while (2)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v422 = (v601 + 16 * v421);
    v5 = *v422;
    i = v422[1];
    v602 = v421 + 1;

    AttributedString._InternalRunsSlice.startIndex.getter(v10, v5, v635);
    v423 = v636;
    v619 = v635[0];
    v620 = v635[1];
    *&v621 = v636;
    *&v605 = i;
    *&v604 = v5;
LABEL_396:
    v425 = *(v10 + 72);
    if (v5 == i)
    {
      v426 = *(v10 + 80);
      v3 = *(v10 + 88);
      v427 = *(v10 + 96);
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v5, 0, v425, v426, v3, v427) != v427)
      {
        __break(1u);
LABEL_451:
        __break(1u);
        goto LABEL_452;
      }

      v4 = v430;
      if (v425)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v427, v428, v429, v425, v426);
        swift_unknownObjectRelease();
      }

      v431 = v5 - v4;
      if (__OFSUB__(v5, v4))
      {
        goto LABEL_451;
      }

      i = v605;
    }

    else if (v425)
    {
      v431 = *(v10 + 88);
    }

    else
    {
      v431 = 0;
    }

    if (v423 >= v431)
    {

      v421 = v602;
      v8 = &v619;
      if (v602 == v600)
      {

        v4 = v581;
        v408 = v597;
        v409 = v598;
        v412 = v595;
        v413 = v596;
        goto LABEL_385;
      }

      continue;
    }

    break;
  }

  specialized AttributedString.Guts.updateRun(at:within:with:)(&v619, v5, i, v10, v603, v419);
  v5 = v419;

  v432 = v619;
  v433 = v621;
  v434 = v10;
  v10 = *(v10 + 72);
  v4 = v434[10];
  v3 = v434[11];
  v435 = v434[12];
  v608 = v619;
  v609 = v620;
  v436 = *(&v620 + 1) + 1;
  if (__OFADD__(*(&v620 + 1), 1))
  {
    __break(1u);
LABEL_443:
    __break(1u);
LABEL_444:
    __break(1u);
LABEL_445:
    v5 = 0;
    v4 = 0;
    LOBYTE(v426) = 1;
LABEL_446:
    v504 = *(v10 + 40);
    v648 = *(v10 + 24);
    v649 = v504;
    v650 = *(v10 + 56);
    if (v3 >= BigString.endIndex.getter() >> 10)
    {
      goto LABEL_469;
    }

    if (v426)
    {
      if (v576 < 1)
      {
        goto LABEL_273;
      }

LABEL_453:
      if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v576 - 1, v576) & 1) == 0)
      {
        goto LABEL_469;
      }

      v602 = v4;
      *&v603 = v5;
      v505 = *(v10 + 24);
      v506 = *(v10 + 56);
      v647[1] = *(v10 + 40);
      v647[2] = v506;
      v647[0] = v505;
      v507 = *(v10 + 24);
      v706[1] = *(v10 + 40);
      v707 = *(v10 + 56);
      v706[0] = v507;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v706, &v619);
      v508 = BigString.index(before:)();
      v510 = v509;
      v512 = v511;
      v514 = v513;
      outlined destroy of BigString(v647);
      v605 = *(v10 + 24);
      v515 = *(v10 + 40);
      v645[0] = v605;
      v645[1] = v515;
      v645[2] = *(v10 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMR);
      v516 = swift_allocObject();
      _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v516, 1);
      *v517 = 2;
      _NSBundleDeallocatingImmortalBundle();
      *&v604 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
      swift_unknownObjectRetain();

      v518 = *(v10 + 24);
      v519 = *(v10 + 56);
      v646[1] = *(v10 + 40);
      v646[2] = v519;
      v646[0] = v518;
      v520 = *(v10 + 24);
      v708[1] = *(v10 + 40);
      v709 = *(v10 + 56);
      v708[0] = v520;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v708, &v619);
      v521 = v510;
      v522 = BigString.index(after:)();
      v524 = v523;
      v526 = v525;
      v528 = v527;
      outlined destroy of BigString(v646);
      if (v508 >> 10 <= v522 >> 10)
      {
        v601 = v508;
        v633[0] = v508;
        v633[1] = v521;
        v633[2] = v512;
        v633[3] = v514;
        v633[4] = v522;
        v633[5] = v524;
        v633[6] = v526;
        v633[7] = v528;
        v382 = v645;
        specialized BidirectionalCollection<>._getBlock(for:in:)(v604, v633, &v619);
        swift_unknownObjectRelease();
        if (*(&v622 + 1) != 2)
        {
          v10 = v606;
          v4 = v602;
          if (v508 >> 10 <= v621 >> 10)
          {
            v477 = v601 >> 11;
            v478 = v621 >> 11;
            v479 = 1;
            LOBYTE(v426) = v607;
            v5 = v603;
            goto LABEL_470;
          }

LABEL_585:
          __break(1u);
LABEL_586:
          __break(1u);
LABEL_587:
          __break(1u);
LABEL_588:
          __break(1u);
        }

LABEL_590:
        __break(1u);
LABEL_591:
        __break(1u);
LABEL_592:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_593:

        result = MEMORY[0x1865D2690](v382, -1, -1);
        __break(1u);
        return result;
      }

LABEL_584:
      __break(1u);
      goto LABEL_585;
    }

LABEL_452:
    if (v4 >= v576)
    {
      goto LABEL_468;
    }

    goto LABEL_453;
  }

  if (v619 != v435)
  {
    goto LABEL_443;
  }

  if (v620)
  {
    v437 = *(v620 + 24 * ((*(&v619 + 1) >> ((4 * *(v620 + 18) + 8) & 0x3C)) & 0xFLL) + 24);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_unknownObjectRetain();
    v437 = specialized Rope._Node.subscript.getter(*(&v432 + 1), v10);
  }

  v54 = __OFADD__(v433, v437);
  v423 = v433 + v437;
  i = v605;
  if (v54)
  {
    goto LABEL_444;
  }

  specialized Rope.formIndex(after:)(&v608, v10, v4, v3, v432);
  swift_unknownObjectRelease();
  if (v423 < *(&v432 + 1))
  {
    v4 = *(&v608 + 1);
    v10 = v608;
    v424 = v609;
LABEL_395:
    *&v619 = v10;
    *(&v619 + 1) = v4;
    *&v620 = v424;
    *(&v620 + 1) = v436;
    *&v621 = v423;
    v10 = v606;
    v419 = v5;
    v5 = v604;
    goto LABEL_396;
  }

  v3 = v606[9];
  v438 = v604;
  if (v604 != i)
  {
    v10 = v606[12];
    if (v3)
    {
      v424 = 0;
      v436 = v606[10];
      v423 = v606[11];
      v4 = ((-15 << ((4 * *(v3 + 18) + 8) & 0x3C)) - 1) & *(v3 + 18) | (*(v3 + 16) << ((4 * *(v3 + 18) + 8) & 0x3C));
    }

    else
    {
      v4 = 0;
      v424 = 0;
      v436 = 0;
      v423 = 0;
    }

    goto LABEL_395;
  }

  v439 = v606[10];
  v440 = v606[11];
  v10 = v606[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v438, 0, v3, v439, v440, v10) == v10)
  {
    v4 = v441;
    v424 = v442;
    v444 = v443;
    if (v3)
    {
      v436 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v10, v441, v442, v3, v439);
      swift_unknownObjectRelease();
    }

    else
    {
      v436 = 0;
    }

    i = v605;
    v423 = v604 - v444;
    if (__OFSUB__(v604, v444))
    {
      goto LABEL_459;
    }

    goto LABEL_395;
  }

  __break(1u);
LABEL_459:
  __break(1u);
LABEL_460:
  __break(1u);
LABEL_461:
  __break(1u);
LABEL_462:
  __break(1u);
LABEL_463:
  __break(1u);
LABEL_464:
  __break(1u);
LABEL_465:
  __break(1u);
LABEL_466:
  __break(1u);
LABEL_467:
  __break(1u);
LABEL_468:
  LOBYTE(v426) = 0;
LABEL_469:
  v477 = 0;
  v478 = 0;
  v479 = 0;
LABEL_470:
  v529 = v580;
  *&v605 = v478;
  if ((v426 & 1) != 0 || v580 >= v4)
  {
    v545 = v576;
  }

  else
  {
    LODWORD(v600) = v479;
    v601 = v477;
    v619 = 0uLL;
    v530 = AttributedString.Guts._constrainedAttributes(at:with:)(v5, &v619);
    v532 = v531;
    *&v604 = v530;

    *&v603 = v532;

    AttributedString._InternalRunsSlice.startIndex.getter(v10, v529, v637);
    i = v638;
    v619 = v637[0];
    v620 = v637[1];
    *&v621 = v638;
    v602 = v4;
    while (1)
    {
      v536 = *(v10 + 72);
      if (v536)
      {
        v536 = *(v10 + 88);
      }

      if (i >= v536)
      {
        break;
      }

      v537 = v604;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v619, v580, v4, v10, v537, 0, 0);

      v3 = *(&v619 + 1);
      v538 = v619;
      v8 = v621;
      v539 = v10;
      v540 = *(v10 + 72);
      v10 = *(v10 + 80);
      v542 = *(v539 + 88);
      v541 = *(v539 + 96);
      v617 = v619;
      v618 = v620;
      v5 = *(&v620 + 1) + 1;
      if (__OFADD__(*(&v620 + 1), 1))
      {
        goto LABEL_552;
      }

      if (v619 != v541)
      {
        goto LABEL_553;
      }

      if (v620)
      {
        v543 = v620 + 24 * ((*(&v619 + 1) >> ((4 * *(v620 + 18) + 8) & 0x3C)) & 0xFLL);
        v3 = *(v543 + 24);
        v4 = *(v543 + 40);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v3 = specialized Rope._Node.subscript.getter(v3, v540);
        v4 = v544;
      }

      i = v8 + v3;
      if (__OFADD__(v8, v3))
      {
        goto LABEL_554;
      }

      specialized Rope.formIndex(after:)(&v617, v540, v10, v542, v538);
      swift_unknownObjectRelease();
      v4 = v602;
      if (i < v602)
      {
        v534 = *(&v617 + 1);
        v533 = v617;
        v535 = v618;
        v10 = v606;
        v478 = v605;
      }

      else
      {
        v10 = v606;
        v534 = v606[9];
        v533 = v606[12];
        v478 = v605;
        v535 = 0;
        if (v534)
        {
          v5 = v606[10];
          i = v606[11];
          v534 = ((-15 << ((4 * *(v534 + 18) + 8) & 0x3C)) - 1) & *(v534 + 18) | (*(v534 + 16) << ((4 * *(v534 + 18) + 8) & 0x3C));
        }

        else
        {
          v5 = 0;
          i = 0;
        }
      }

      *&v619 = v533;
      *(&v619 + 1) = v534;
      *&v620 = v535;
      *(&v620 + 1) = v5;
      *&v621 = i;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v545 = v576;
    v477 = v601;
    v479 = v600;
  }

  if (v545 < v478)
  {
    v546 = v479;
  }

  else
  {
    v546 = 0;
  }

  if (v546 == 1)
  {
    v619 = 0uLL;
    v547 = AttributedString.Guts._constrainedAttributes(at:with:)(v477, &v619);
    v549 = v548;
    *&v604 = v547;

    *&v603 = v549;

    AttributedString._InternalRunsSlice.startIndex.getter(v10, v576, &v639);
    for (i = v642; ; v642 = i)
    {
      v553 = *(v10 + 72);
      if (v553)
      {
        v553 = *(v10 + 88);
      }

      if (i >= v553)
      {
        break;
      }

      v554 = v604;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v639, v576, v478, v10, v554, 0, 0);

      v3 = *(&v639 + 1);
      v4 = v639;
      v8 = v642;
      v5 = *(v10 + 72);
      v555 = *(v10 + 80);
      v557 = *(v10 + 88);
      v556 = *(v10 + 96);
      v619 = v639;
      *&v620 = v640;
      v558 = v641 + 1;
      if (__OFADD__(v641, 1))
      {
        goto LABEL_555;
      }

      if (v639 != v556)
      {
        goto LABEL_556;
      }

      if (v640)
      {
        v559 = v640 + 24 * ((*(&v639 + 1) >> ((4 * *(v640 + 18) + 8) & 0x3C)) & 0xFLL);
        v3 = *(v559 + 24);
        v10 = *(v559 + 40);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v3 = specialized Rope._Node.subscript.getter(v3, v5);
        v10 = v560;
      }

      i = v8 + v3;
      if (__OFADD__(v8, v3))
      {
        goto LABEL_557;
      }

      specialized Rope.formIndex(after:)(&v619, v5, v555, v557, v4);
      swift_unknownObjectRelease();
      v478 = v605;
      if (i < v605)
      {
        v551 = *(&v619 + 1);
        v550 = v619;
        v552 = v620;
        v10 = v606;
      }

      else
      {
        v10 = v606;
        v551 = v606[9];
        v550 = v606[12];
        v552 = 0;
        if (v551)
        {
          v558 = v606[10];
          i = v606[11];
          v551 = ((-15 << ((4 * *(v551 + 18) + 8) & 0x3C)) - 1) & *(v551 + 18) | (*(v551 + 16) << ((4 * *(v551 + 18) + 8) & 0x3C));
        }

        else
        {
          v558 = 0;
          i = 0;
        }
      }

      *&v639 = v550;
      *(&v639 + 1) = v551;
      v640 = v552;
      v641 = v558;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

LABEL_273:
  v623 = v630;
  v624 = v631;
  v625 = v632;
  v619 = v626;
  v620 = v627;
  v621 = v628;
  v622 = v629;
  return outlined destroy of BigSubstring(&v619);
}

uint64_t specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(uint64_t a1)
{
  v4 = v1;
  v599 = a1;
  v735 = *MEMORY[0x1E69E9840];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  v589 = 0;
  v598 = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v718[0] = *(v6 + 24);
    v718[1] = *(v6 + 40);
    v718[2] = *(v6 + 56);
    v7 = *(v6 + 72);
    v8 = *(v6 + 80);
    i = *(v6 + 88);
    v9 = *(v6 + 96);
    type metadata accessor for AttributedString.Guts();
    v3 = swift_allocObject();
    outlined init with copy of BigString(v718, &v618);
    swift_unknownObjectRetain();
    v10 = AttributedString.Guts.init(string:runs:)(v718, v7, v8, i, v9);

    *v4 = v10;
    v6 = v10;
  }

  v11 = *(v6 + 24);
  v12 = *(v6 + 40);
  v717 = *(v6 + 56);
  v716 = v12;
  v715 = v11;
  v13 = *(v6 + 40);
  v605 = *(v6 + 24);
  v606 = v13;
  v14 = *(v6 + 56);
  v15 = *(v6 + 64);
  v607 = v6;
  if (BigString.isEmpty.getter())
  {
    v16 = MEMORY[0x1E69E7CC8];
    goto LABEL_37;
  }

  v17 = *v599;
  if (*v599 >= 0x800uLL && (*(v599 + 32) ^ v17) <= 0x3FF)
  {
    v712[3] = v605;
    v712[4] = v606;
    v713 = v14;
    v714 = v15;
    v719[0] = v715;
    v719[1] = v716;
    v720 = v717;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v719, &v618);
    v17 = BigString.UTF8View.index(before:)();
    outlined destroy of BigString(&v715);
  }

  v18 = *(v6 + 72);
  v3 = *(v6 + 80);
  i = *(v6 + 88);
  v16 = *(v6 + 96);
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v17 >> 11, 0, v18, v3, i, v16) == v16)
  {
    v21 = v19;
    v22 = v20;
    if (v18)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v16, v19, v20, v18, v3);
      swift_unknownObjectRelease();
    }

    v23 = *(v6 + 72);
    v24 = *(v6 + 80);
    v25 = *(v6 + 88);
    v26 = *(v6 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v16, v21, v22, v23, v24, v25, v26);
    v3 = v27;
    v18 = v28;
    swift_unknownObjectRelease();
    v29 = *(v3 + 32);
    v30 = v29 & 0x3F;
    i = ((1 << v29) + 63) >> 6;
    v16 = 8 * i;

    if (v30 <= 0xD)
    {
      goto LABEL_12;
    }

    goto LABEL_556;
  }

  while (2)
  {
    __break(1u);
LABEL_556:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_569;
    }

LABEL_12:
    v601 = i;
    v603 = &v567;
    v604 = v18;
    MEMORY[0x1EEE9AC00](v31);
    v602 = &v567 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v602, v16);
    *&v605 = 0;
    v32 = 0;
    *&v606 = v3;
    v33 = v3 + 8;
    v34 = 1 << *(v3 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & v3[8];
    v37 = (v34 + 63) >> 6;
    v3 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
    do
    {
      do
      {
        while (1)
        {
          if (v36)
          {
            v38 = __clz(__rbit64(v36));
            v36 &= v36 - 1;
          }

          else
          {
            v39 = v32;
            do
            {
              v32 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_459;
              }

              if (v32 >= v37)
              {
                goto LABEL_31;
              }

              v40 = v33[v32];
              ++v39;
            }

            while (!v40);
            v38 = __clz(__rbit64(v40));
            v36 = (v40 - 1) & v40;
          }

          v41 = v38 | (v32 << 6);
          v42 = (*(v606 + 48) + 16 * v41);
          v44 = *v42;
          v43 = v42[1];
          outlined init with copy of AttributedString._AttributeValue(*(v606 + 56) + 72 * v41, &v634);
          *&v618 = v44;
          *(&v618 + 1) = v43;
          outlined init with copy of AttributedString._AttributeValue(&v634, &v619);
          outlined init with copy of FloatingPointRoundingRule?(&v618, &v611, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);

          i = BYTE8(v615);
          outlined destroy of AttributedString._AttributeValue(&v612);
          if (i == 1)
          {
            break;
          }

          outlined destroy of TermOfAddress?(&v618, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          outlined destroy of AttributedString._AttributeValue(&v634);
          v6 = v607;
        }

        outlined init with copy of FloatingPointRoundingRule?(&v618, &v625, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);

        v6 = v607;
        if (!v633)
        {
          outlined destroy of TermOfAddress?(&v618, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          outlined destroy of AttributedString._AttributeValue(&v634);
          outlined destroy of AttributedString._AttributeValue(&v626);
          break;
        }

        i = specialized Set.contains(_:)(0, 0, v633);
        outlined destroy of TermOfAddress?(&v618, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
        outlined destroy of AttributedString._AttributeValue(&v634);
        outlined destroy of AttributedString._AttributeValue(&v626);
      }

      while ((i & 1) != 0);
      *(v602 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v45 = __OFADD__(v605, 1);
      *&v605 = v605 + 1;
    }

    while (!v45);
    __break(1u);
LABEL_31:
    v46 = v605;
    if (v605)
    {
      v3 = v606;
      if (v605 == *(v606 + 16))
      {

        v16 = v3;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
        v16 = static _DictionaryStorage.allocate(capacity:)();
        v18 = 0;
        v104 = *v602;
        i = v16 + 64;
        do
        {
          if (v104)
          {
            v108 = __clz(__rbit64(v104));
            v104 &= v104 - 1;
          }

          else
          {
            v109 = v18;
            do
            {
              v18 = v109 + 1;
              if (__OFADD__(v109, 1))
              {
                goto LABEL_522;
              }

              if (v18 >= v601)
              {
                goto LABEL_36;
              }

              v110 = *(v602 + 8 * v18);
              ++v109;
            }

            while (!v110);
            v108 = __clz(__rbit64(v110));
            v104 = (v110 - 1) & v110;
          }

          v111 = v108 | (v18 << 6);
          v112 = (v3[6] + 16 * v111);
          v113 = *v112;
          v6 = v112[1];
          outlined init with copy of AttributedString._AttributeValue(v3[7] + 72 * v111, &v618);
          v613 = v620;
          v614 = v621;
          *&v615 = v622;
          v611 = v618;
          v612 = v619;
          Hasher.init(_seed:)();

          String.hash(into:)();
          v114 = Hasher._finalize()();
          v115 = -1 << *(v16 + 32);
          v116 = v114 & ~v115;
          v117 = v116 >> 6;
          if (((-1 << v116) & ~*(i + 8 * (v116 >> 6))) != 0)
          {
            v105 = __clz(__rbit64((-1 << v116) & ~*(i + 8 * (v116 >> 6)))) | v116 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v118 = 0;
            v119 = (63 - v115) >> 6;
            do
            {
              if (++v117 == v119 && (v118 & 1) != 0)
              {
                goto LABEL_528;
              }

              v120 = v117 == v119;
              if (v117 == v119)
              {
                v117 = 0;
              }

              v118 |= v120;
              v121 = *(i + 8 * v117);
            }

            while (v121 == -1);
            v105 = __clz(__rbit64(~v121)) + (v117 << 6);
          }

          *(i + ((v105 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v105;
          v106 = (*(v16 + 48) + 16 * v105);
          *v106 = v113;
          v106[1] = v6;
          v107 = *(v16 + 56) + 72 * v105;
          *(v107 + 16) = v612;
          *(v107 + 32) = v613;
          *(v107 + 48) = v614;
          *(v107 + 64) = v615;
          *v107 = v611;
          ++*(v16 + 16);
          --v46;
          v6 = v607;
        }

        while (v46);
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC8];
      v3 = v606;
    }

LABEL_36:

    swift_bridgeObjectRelease_n();
LABEL_37:
    v47 = *v599;
    v652 = *(v599 + 8);
    v48 = *(v599 + 32);
    v653 = *(v599 + 24);
    v600 = v47;
    v650 = *(v599 + 40);
    v651 = *(v599 + 56);
    *&v606 = v47 >> 11;
    *&v634 = v47 >> 11;
    v708[0] = v48 >> 11;
    v603 = v48;
    v596 = v48 >> 11;
    v597 = v16;
    if (v48 < 0x800)
    {
      v602 = MEMORY[0x1E69E7CD0];
      v604 = MEMORY[0x1E69E7CC8];
      goto LABEL_65;
    }

    v49 = (v48 >> 11) - 1;
    v50 = *(v6 + 72);
    i = *(v6 + 80);
    v52 = *(v6 + 88);
    v51 = *(v6 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v49, 0, v50, i, v52, v51) == v51)
    {
      v18 = v53;
      v3 = v54;
      if (v50)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v51, v53, v54, v50, i);
        swift_unknownObjectRelease();
      }

      v55 = *(v6 + 72);
      v56 = *(v6 + 80);
      v57 = *(v6 + 88);
      v58 = *(v6 + 96);
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v51, v18, v3, v55, v56, v57, v58);
      v602 = v59;
      v50 = v60;
      swift_unknownObjectRelease();
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

      v62 = *(v50 + 32);
      i = ((1 << v62) + 63) >> 6;
      if ((v62 & 0x3Fu) <= 0xD)
      {
        goto LABEL_43;
      }
    }

    else
    {
      __break(1u);
    }

    v18 = v50;

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_43:
      v593 = i;
      v595 = &v567;
      MEMORY[0x1EEE9AC00](v61);
      v594 = (&v567 - ((v63 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v594, v63);
      v601 = 0;
      v6 = 0;
      v64 = v50 + 64;
      v65 = 1 << *(v50 + 32);
      v66 = -1;
      if (v65 < 64)
      {
        v66 = ~(-1 << v65);
      }

      v67 = v66 & *(v50 + 64);
      v3 = ((v65 + 63) >> 6);
      v32 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
      *&v605 = v50;
      while (v67)
      {
        v68 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
LABEL_54:
        v71 = v68 | (v6 << 6);
        v72 = (*(v50 + 48) + 16 * v71);
        v73 = *v72;
        v18 = v72[1];
        outlined init with copy of AttributedString._AttributeValue(*(v50 + 56) + 72 * v71, &v625);
        *&v618 = v73;
        *(&v618 + 1) = v18;
        outlined init with copy of AttributedString._AttributeValue(&v625, &v619);
        outlined init with copy of FloatingPointRoundingRule?(&v618, &v611, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
        i = *(&v611 + 1);
        swift_bridgeObjectRetain_n();

        if (v616)
        {
          i = specialized Set.contains(_:)(0, 0, v616);
          outlined destroy of TermOfAddress?(&v618, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          outlined destroy of AttributedString._AttributeValue(&v612);
          outlined destroy of AttributedString._AttributeValue(&v625);

          v50 = v605;
          if (i)
          {
            *(v594 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
            v45 = __OFADD__(v601, 1);
            v601 = (v601 + 1);
            if (v45)
            {
              __break(1u);
              goto LABEL_59;
            }
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(&v618, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          outlined destroy of AttributedString._AttributeValue(&v612);
          outlined destroy of AttributedString._AttributeValue(&v625);

          v50 = v605;
        }
      }

      v69 = v6;
      while (1)
      {
        v6 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_460;
        }

        if (v6 >= v3)
        {
          break;
        }

        v70 = *(v64 + 8 * v6);
        ++v69;
        if (v70)
        {
          v68 = __clz(__rbit64(v70));
          v67 = (v70 - 1) & v70;
          goto LABEL_54;
        }
      }

LABEL_59:
      v3 = v601;
      if (v601)
      {
        if (v601 == *(v50 + 16))
        {

          v604 = v50;
        }

        else
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
          v122 = static _DictionaryStorage.allocate(capacity:)();
          v6 = 0;
          v123 = *v594;
          v604 = v122;
          i = (v122 + 8);
          do
          {
            if (v123)
            {
              v601 = v3;
              v128 = __clz(__rbit64(v123));
              v123 &= v123 - 1;
            }

            else
            {
              v129 = v6;
              do
              {
                v6 = v129 + 1;
                if (__OFADD__(v129, 1))
                {
                  goto LABEL_523;
                }

                if (v6 >= v593)
                {
                  goto LABEL_63;
                }

                v130 = v594[v6];
                ++v129;
              }

              while (!v130);
              v601 = v3;
              v128 = __clz(__rbit64(v130));
              v123 = (v130 - 1) & v130;
            }

            v131 = v128 | (v6 << 6);
            v132 = (*(v50 + 48) + 16 * v131);
            v18 = *v132;
            v133 = v132[1];
            outlined init with copy of AttributedString._AttributeValue(*(v50 + 56) + 72 * v131, &v618);
            v613 = v620;
            v614 = v621;
            *&v615 = v622;
            v611 = v618;
            v612 = v619;
            v134 = v604;
            Hasher.init(_seed:)();

            String.hash(into:)();
            v16 = &v625;
            v135 = Hasher._finalize()();
            v136 = -1 << *(v134 + 32);
            v137 = v135 & ~v136;
            v138 = v137 >> 6;
            if (((-1 << v137) & ~*(i + 8 * (v137 >> 6))) != 0)
            {
              v124 = __clz(__rbit64((-1 << v137) & ~*(i + 8 * (v137 >> 6)))) | v137 & 0x7FFFFFFFFFFFFFC0;
              v3 = v601;
            }

            else
            {
              v139 = 0;
              v140 = (63 - v136) >> 6;
              v3 = v601;
              do
              {
                if (++v138 == v140 && (v139 & 1) != 0)
                {
                  goto LABEL_529;
                }

                v141 = v138 == v140;
                if (v138 == v140)
                {
                  v138 = 0;
                }

                v139 |= v141;
                v142 = *(i + 8 * v138);
              }

              while (v142 == -1);
              v124 = __clz(__rbit64(~v142)) + (v138 << 6);
            }

            *(i + ((v124 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v124;
            v125 = v604;
            v126 = (v604[6] + 16 * v124);
            *v126 = v18;
            v126[1] = v133;
            v127 = v125[7] + 72 * v124;
            *(v127 + 16) = v612;
            *(v127 + 32) = v613;
            *(v127 + 48) = v614;
            *(v127 + 64) = v615;
            *v127 = v611;
            ++v125[2];
            v3 = (v3 - 1);
          }

          while (v3);
        }
      }

      else
      {
        v604 = MEMORY[0x1E69E7CC8];
      }

LABEL_63:
      v6 = v607;
    }

    else
    {
      v380 = swift_slowAlloc();

      v565 = v589;
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v380, i, v18, specialized thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error));
      v604 = v566;
      v589 = v565;
      if (v565)
      {
        goto LABEL_588;
      }

      MEMORY[0x1865D2690](v380, -1, -1);
    }

LABEL_65:
    v712[0] = *(v6 + 24);
    v712[1] = *(v6 + 40);
    v712[2] = *(v6 + 56);
    v16 = v712;
    v74 = BigString.UTF8View.count.getter();
    v18 = v606;
    if (v606 >= v74)
    {
      goto LABEL_152;
    }

    v75 = *(v6 + 72);
    i = *(v6 + 80);
    v77 = *(v6 + 88);
    v76 = *(v6 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v18, 0, v75, i, v77, v76) != v76)
    {
      __break(1u);
LABEL_562:
      __break(1u);
LABEL_563:
      __break(1u);
LABEL_564:
      __break(1u);
      goto LABEL_565;
    }

    v80 = v78;
    v81 = v79;
    if (v75)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v76, v78, v79, v75, i);
      swift_unknownObjectRelease();
    }

    v82 = *(v6 + 72);
    v83 = *(v6 + 80);
    v84 = *(v6 + 88);
    v85 = *(v6 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v76, v80, v81, v82, v83, v84, v85);
    v601 = v86;
    swift_unknownObjectRelease();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    v88 = v589;
    i = specialized Dictionary.filter(_:)(v87);
    v589 = v88;

    swift_bridgeObjectRelease_n();
    v3 = 0;
    *&v611 = MEMORY[0x1865CB700](*(i + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    *&v605 = i;
    v89 = 1 << *(i + 32);
    v90 = -1;
    if (v89 < 64)
    {
      v90 = ~(-1 << v89);
    }

    v91 = i + 64;
    v92 = v90 & *(i + 64);
    v32 = (v89 + 63) >> 6;
    if (v92)
    {
      while (1)
      {
        v93 = v3;
LABEL_77:
        v94 = __clz(__rbit64(v92));
        v92 &= v92 - 1;
        v95 = (*(v605 + 48) + ((v93 << 10) | (16 * v94)));
        v96 = *v95;
        i = v95[1];

        specialized Set._Variant.insert(_:)(&v618, v96, i);

        if (!v92)
        {
          goto LABEL_73;
        }
      }
    }

    while (1)
    {
LABEL_73:
      v93 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        goto LABEL_461;
      }

      if (v93 >= v32)
      {
        break;
      }

      v92 = *(v91 + 8 * v93);
      v3 = (v3 + 1);
      if (v92)
      {
        v3 = v93;
        goto LABEL_77;
      }
    }

    *&v625 = v611;
    v98 = *(v6 + 72);
    v97 = *(v6 + 80);
    v16 = *(v6 + 88);
    v99 = *(v6 + 96);
    swift_unknownObjectRetain();

    if (v600 <= 0x7FF)
    {
      if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v98, v97, v16, v99) == v99)
      {
        v103 = v100;
        v6 = v101;
        i = v102;
        if (v98)
        {
          v97 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v99, v100, v101, v98, v97);
          swift_unknownObjectRelease();
          v16 = -i;
          if (!__OFSUB__(0, i))
          {
            goto LABEL_127;
          }
        }

        else
        {
          v97 = 0;
          v16 = -v102;
          if (!__OFSUB__(0, v102))
          {
            goto LABEL_127;
          }
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_575:
      __break(1u);
LABEL_576:
      __break(1u);
      goto LABEL_577;
    }

    v103 = specialized Rope._endPath.getter(v98);
    if (v98)
    {
      swift_unknownObjectRelease();
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v97 = 0;
      v16 = 0;
    }

LABEL_127:
    *&v618 = v99;
    *(&v618 + 1) = v103;
    *&v619 = v6;
    *(&v619 + 1) = v97;
    *&v620 = v16;
    v143 = v607[9];
    v18 = v607[10];
    v144 = v607[11];
    v145 = v607[12];
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v143, v18, v144, v145) != v145)
    {
      goto LABEL_463;
    }

    v6 = v148;
    while (2)
    {
      if (v143)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v145, v146, v147, v143, v18);
        swift_unknownObjectRelease();
      }

      if (__OFSUB__(0, v6))
      {
        goto LABEL_515;
      }

      if (-v6 < v16 && *(v625 + 16))
      {
        v18 = v607[9];
        if (v18)
        {
          if (v16 == v607[11])
          {
LABEL_138:
            v16 = v607[10];
            i = v607[11];
            v155 = v607[12];
            swift_unknownObjectRetain();
            if (specialized Rope.find<A>(at:in:preferEnd:)(v606, 1, v18, v16, i, v155) != v155)
            {
              goto LABEL_531;
            }

            v159 = v156;
            v6 = v157;
            v3 = v158;
            if (v18)
            {
              v160 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v155, v156, v157, v18, v16);
              swift_unknownObjectRelease();
            }

            else
            {
              v160 = 0;
            }

            v149 = v606 - v3;
            if (__OFSUB__(v606, v3))
            {
              __break(1u);
              break;
            }

            goto LABEL_130;
          }
        }

        else if (!v16)
        {
          goto LABEL_138;
        }

        v32 = v607[10];
        v3 = v607[11];
        v155 = v607[12];
        v611 = v618;
        *&v612 = v619;
        v160 = *(&v619 + 1) - 1;
        if (__OFSUB__(*(&v619 + 1), 1))
        {
          goto LABEL_524;
        }

        swift_unknownObjectRetain();
        specialized Rope.formIndex(before:)(&v611, v18, v32, v3, v155);
        if (v611 != v155)
        {
          goto LABEL_525;
        }

        v159 = *(&v611 + 1);
        v6 = v612;
        if (v612)
        {
          i = *(v612 + 24 * ((*(&v611 + 1) >> ((4 * *(v612 + 18) + 8) & 0x3C)) & 0xFLL) + 24);

          swift_unknownObjectRelease();
          v149 = v16 - i;
          if (__OFSUB__(v16, i))
          {
            goto LABEL_532;
          }
        }

        else
        {
          i = specialized Rope._Node.subscript.getter(*(&v611 + 1), v18);
          v3 = v161;
          v32 = v162;
          swift_unknownObjectRelease();

          v149 = v16 - i;
          if (__OFSUB__(v16, i))
          {
            goto LABEL_538;
          }

          v6 = 0;
        }

LABEL_130:
        *&v618 = v155;
        *(&v618 + 1) = v159;
        *&v619 = v6;
        *(&v619 + 1) = v160;
        *&v620 = v149;
        v150 = v605;

        v151 = v601;

        i = v607;
        specialized AttributedString.Guts.updateRun(at:within:with:)(&v618, 0, v606, v607, &v625, v150, v151, &v634);

        v16 = v620;
        v143 = *(i + 72);
        v18 = *(i + 80);
        v152 = *(i + 88);
        v145 = *(i + 96);
        swift_unknownObjectRetain();
        v153 = specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v143, v18, v152, v145);
        v6 = v154;
        if (v153 != v145)
        {
          goto LABEL_463;
        }

        continue;
      }

      break;
    }

    v6 = v607;

LABEL_152:
    if (v603 < 0x800)
    {

      goto LABEL_203;
    }

    v163 = v604;
    v164 = v604[2];

    v3 = 0;
    *&v611 = MEMORY[0x1865CB700](v164, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v167 = v163[8];
    v166 = v163 + 8;
    v165 = v167;
    v168 = 1 << *(v166 - 32);
    v169 = -1;
    if (v168 < 64)
    {
      v169 = ~(-1 << v168);
    }

    v170 = v169 & v165;
    v32 = (v168 + 63) >> 6;
    if ((v169 & v165) != 0)
    {
      while (1)
      {
        v171 = v3;
LABEL_162:
        v172 = __clz(__rbit64(v170));
        v170 &= v170 - 1;
        v173 = (v604[6] + ((v171 << 10) | (16 * v172)));
        v174 = *v173;
        i = v173[1];

        specialized Set._Variant.insert(_:)(&v618, v174, i);

        if (!v170)
        {
          goto LABEL_158;
        }
      }
    }

    while (1)
    {
LABEL_158:
      v171 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        goto LABEL_462;
      }

      if (v171 >= v32)
      {
        break;
      }

      v170 = v166[v171];
      v3 = (v3 + 1);
      if (v170)
      {
        v3 = v171;
        goto LABEL_162;
      }
    }

    *&v625 = v611;
    v709 = *(v6 + 24);
    v710 = *(v6 + 40);
    v711 = *(v6 + 56);
    *&v605 = BigString.UTF8View.count.getter();
    v16 = v596;
    if (v605 < v596)
    {
      goto LABEL_562;
    }

    v18 = *(v6 + 72);
    v175 = *(v6 + 80);
    v177 = *(v6 + 88);
    v176 = *(v6 + 96);
    swift_unknownObjectRetain();

    if (specialized Rope.find<A>(at:in:preferEnd:)(v16, 0, v18, v175, v177, v176) != v176)
    {
      goto LABEL_563;
    }

    v3 = v178;
    v181 = v179;
    i = v180;
    if (v18)
    {
      v182 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v176, v178, v179, v18, v175);
      swift_unknownObjectRelease();
      v183 = v16 - i;
      if (!__OFSUB__(v16, i))
      {
        goto LABEL_168;
      }

LABEL_277:
      __break(1u);
LABEL_278:
      v594 = 0;
      goto LABEL_279;
    }

    v182 = 0;
    v183 = v16 - v180;
    if (__OFSUB__(v16, v180))
    {
      goto LABEL_277;
    }

LABEL_168:
    *&v618 = v176;
    *(&v618 + 1) = v3;
    *&v619 = v181;
    *(&v619 + 1) = v182;
LABEL_171:
    *&v620 = v183;
    v185 = *(v6 + 72);
    if (v16 == v605)
    {
      i = *(v6 + 80);
      v18 = *(v6 + 88);
      v3 = *(v6 + 96);
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v16, 0, v185, i, v18, v3) != v3)
      {
        goto LABEL_526;
      }

      v189 = v188;
      if (v185)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v3, v186, v187, v185, i);
        swift_unknownObjectRelease();
      }

      if (__OFSUB__(v16, v189))
      {
        goto LABEL_527;
      }

      if (v183 >= (v16 - v189))
      {
        goto LABEL_202;
      }
    }

    else if (v185)
    {
      if (v183 >= *(v6 + 88))
      {
        goto LABEL_202;
      }
    }

    else if (v183 >= 0)
    {
      goto LABEL_202;
    }

    if (!*(v625 + 16))
    {
      goto LABEL_202;
    }

    i = v604;

    v190 = v602;

    specialized AttributedString.Guts.updateRun(at:within:with:)(&v618, v16, v605, v6, &v625, i, v190, v708);

    v191 = *(&v618 + 1);
    v18 = v618;
    v16 = v620;
    v3 = *(v6 + 72);
    v192 = *(v6 + 80);
    v194 = *(v6 + 88);
    v193 = *(v6 + 96);
    v611 = v618;
    *&v612 = v619;
    v195 = *(&v619 + 1) + 1;
    if (__OFADD__(*(&v619 + 1), 1))
    {
      goto LABEL_516;
    }

    if (v618 != v193)
    {
LABEL_517:
      __break(1u);
LABEL_518:
      __break(1u);
LABEL_519:
      __break(1u);
LABEL_520:
      __break(1u);
LABEL_521:
      __break(1u);
LABEL_522:
      __break(1u);
LABEL_523:
      __break(1u);
LABEL_524:
      __break(1u);
LABEL_525:
      __break(1u);
LABEL_526:
      __break(1u);
LABEL_527:
      __break(1u);
LABEL_528:
      __break(1u);
LABEL_529:
      __break(1u);
LABEL_530:
      __break(1u);
LABEL_531:
      __break(1u);
LABEL_532:
      __break(1u);
LABEL_533:
      __break(1u);
LABEL_534:
      __break(1u);
LABEL_535:
      __break(1u);
LABEL_536:
      __break(1u);
LABEL_537:
      __break(1u);
LABEL_538:
      __break(1u);
LABEL_539:
      __break(1u);
LABEL_540:
      __break(1u);
LABEL_541:
      __break(1u);
LABEL_542:
      __break(1u);
LABEL_543:
      __break(1u);
LABEL_544:
      __break(1u);
LABEL_545:
      __break(1u);
LABEL_546:
      __break(1u);
LABEL_547:
      __break(1u);
LABEL_548:
      __break(1u);
LABEL_549:
      __break(1u);
LABEL_550:
      __break(1u);
LABEL_551:
      __break(1u);
LABEL_552:
      __break(1u);
LABEL_553:
      __break(1u);
LABEL_554:
      __break(1u);
      continue;
    }

    break;
  }

  if (v619)
  {
    v196 = (v619 + 24 * ((*(&v618 + 1) >> ((4 * *(v619 + 18) + 8) & 0x3C)) & 0xFLL));
    v197 = v196[3];
    i = v196[4];
    v6 = v196[5];
    swift_unknownObjectRetain();
  }

  else
  {
    swift_unknownObjectRetain();
    v197 = specialized Rope._Node.subscript.getter(v191, v3);
    i = v198;
    v6 = v199;
  }

  v45 = __OFADD__(v16, v197);
  v183 = v16 + v197;
  if (v45)
  {
    goto LABEL_518;
  }

  specialized Rope.formIndex(after:)(&v611, v3, v192, v194, v18);
  swift_unknownObjectRelease();
  if (v183 < v605)
  {
    v184 = *(&v611 + 1);
    v18 = v611;
    v3 = v612;
    v6 = v607;
    v16 = v596;
    goto LABEL_170;
  }

  v6 = v607;
  v200 = v607[9];
  v16 = v596;
  if (v596 != v605)
  {
    v18 = v607[12];
    if (v200)
    {
      v3 = 0;
      v195 = v607[10];
      v183 = v607[11];
      v184 = ((-15 << ((4 * *(v200 + 18) + 8) & 0x3C)) - 1) & *(v200 + 18) | (*(v200 + 16) << ((4 * *(v200 + 18) + 8) & 0x3C));
    }

    else
    {
      v184 = 0;
      v3 = 0;
      v195 = 0;
      v183 = 0;
    }

    goto LABEL_170;
  }

  v201 = v607[10];
  i = v607[11];
  v18 = v607[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v16, 0, v200, v201, i, v18) != v18)
  {
    goto LABEL_537;
  }

  v184 = v202;
  v3 = v203;
  v205 = v204;
  if (v200)
  {
    v195 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v18, v202, v203, v200, v201);
    swift_unknownObjectRelease();
    v45 = __OFSUB__(v16, v205);
    v183 = v16 - v205;
    if (v45)
    {
      goto LABEL_201;
    }

    goto LABEL_170;
  }

  v195 = 0;
  v183 = v16 - v204;
  if (!__OFSUB__(v16, v204))
  {
LABEL_170:
    *&v618 = v18;
    *(&v618 + 1) = v184;
    *&v619 = v3;
    *(&v619 + 1) = v195;
    goto LABEL_171;
  }

LABEL_201:
  __break(1u);
LABEL_202:

LABEL_203:

  if (v708[0] < v634)
  {
    goto LABEL_539;
  }

  v594 = v708[0];
  v584 = v634;
  v206 = *(v6 + 104);
  v207 = specialized Array.count.getter();
  if (v207 < 0)
  {
    goto LABEL_540;
  }

  v16 = v207;
  if (v207)
  {
    i = 0;
    v18 = v600 >> 10;
    v3 = (v603 >> 10);
    v32 = 88;
    v604 = v207;
    *&v605 = v603 >> 10;
    while (1)
    {
      if (i >= *(v206 + 2))
      {
        goto LABEL_456;
      }

      v210 = *&v206[v32 - 56];
      v211 = v18 >= v210 >> 10 || v210 >> 10 >= v3;
      v212 = !v211;
      v213 = *&v206[v32 - 24];
      v214 = v213 >> 10;
      if (v18 >= v213 >> 10)
      {
        break;
      }

      if (v212)
      {
        if (v214 < v3)
        {
          v618 = v652;
          *&v619 = v653;
          v611 = v652;
          *&v612 = v653;
          v215 = swift_isUniquelyReferenced_nonNull_native();
          *(v6 + 104) = v206;
          if ((v215 & 1) == 0)
          {
            v206 = specialized _ArrayBuffer._consumeAndCreateNew()(v206);
          }

          if (i >= *(v206 + 2))
          {
            goto LABEL_535;
          }

          v216 = &v206[v32];
          v217 = v600;
          *(v216 - 7) = v600;
          v218 = v619;
          *(v216 - 3) = v618;
          *(v216 - 4) = v218;
          *(v216 - 3) = v217;
          v219 = v611;
          *v216 = v612;
          *(v216 - 1) = v219;
          *(v6 + 104) = v206;
          goto LABEL_208;
        }

        goto LABEL_224;
      }

      if (v214 < v3)
      {
        v16 = *&v206[v32 - 48];
        v224 = *&v206[v32 - 40];
        v225 = v6;
        v6 = *&v206[v32 - 32];
        v618 = v652;
        *&v619 = v653;
        v226 = swift_isUniquelyReferenced_nonNull_native();
        *(v225 + 104) = v206;
        if ((v226 & 1) == 0)
        {
          v206 = specialized _ArrayBuffer._consumeAndCreateNew()(v206);
        }

        v3 = v605;
        if (i >= *(v206 + 2))
        {
          goto LABEL_536;
        }

        v208 = &v206[v32];
        *(v208 - 7) = v210;
        *(v208 - 6) = v16;
        *(v208 - 5) = v224;
        *(v208 - 4) = v6;
        *(v208 - 3) = v600;
        v209 = v618;
        *v208 = v619;
        *(v208 - 1) = v209;
        v6 = v607;
        v607[13] = v206;
        v16 = v604;
      }

LABEL_208:
      ++i;
      v32 += 64;
      if (v16 == i)
      {
        goto LABEL_233;
      }
    }

    if (!v212)
    {
      goto LABEL_208;
    }

LABEL_224:
    v220 = *&v206[v32 - 16];
    v3 = *&v206[v32 - 8];
    v16 = *&v206[v32];
    v618 = v650;
    *&v619 = v651;
    v221 = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 104) = v206;
    if ((v221 & 1) == 0)
    {
      v206 = specialized _ArrayBuffer._consumeAndCreateNew()(v206);
    }

    if (i >= *(v206 + 2))
    {
      goto LABEL_519;
    }

    v222 = &v206[v32];
    *(v222 - 7) = v603;
    v223 = v619;
    *(v222 - 3) = v618;
    *(v222 - 4) = v223;
    *(v222 - 3) = v213;
    *(v222 - 2) = v220;
    *(v222 - 1) = v3;
    *v222 = v16;
    v6 = v607;
    v607[13] = v206;
    v16 = v604;
    v3 = v605;
    goto LABEL_208;
  }

LABEL_233:
  v227 = *(v6 + 24);
  v604 = *(v6 + 32);
  v228 = *(v6 + 40);
  v229 = *(v6 + 48);
  v230 = *(v6 + 56);
  v231 = *(v6 + 64);
  v708[0] = v227;
  v708[1] = v604;
  v708[2] = v228;
  v708[3] = v229;
  v708[4] = v230;
  v708[5] = v231;
  *&v605 = BigString.UTF8View.count.getter();
  v232 = v598;
  v233 = *(v598 + 24);
  v621 = *(v598 + 8);
  v622 = v233;
  v234 = *(v598 + 56);
  v623 = *(v598 + 40);
  v624 = v234;
  *&v618 = v227;
  *(&v618 + 1) = v604;
  *&v619 = v228;
  *(&v619 + 1) = v229;
  *&v620 = v230;
  *(&v620 + 1) = v231;
  swift_unknownObjectRetain();
  BigString.init()();
  v235 = v640;
  *(v6 + 24) = v639;
  *(v6 + 40) = v235;
  *(v6 + 56) = v641;
  swift_unknownObjectRelease();
  i = &_ss15EmptyCollectionVySJGMR;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15EmptyCollectionVySJGMd, &_ss15EmptyCollectionVySJGMR);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type EmptyCollection<Character> and conformance EmptyCollection<A>, &_ss15EmptyCollectionVySJGMd, &_ss15EmptyCollectionVySJGMR, MEMORY[0x1E69E6C48]);
  BigSubstring.replaceSubrange<A>(_:with:)();
  *(v6 + 24) = v618;
  *(v6 + 40) = v619;
  *(v6 + 56) = v620;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v236 = v622;
  *(v232 + 8) = v621;
  *(v232 + 24) = v236;
  v237 = v624;
  *(v232 + 40) = v623;
  *(v232 + 56) = v237;
  v18 = v605;
  v707[0] = *(v6 + 24);
  v707[1] = *(v6 + 40);
  v707[2] = *(v6 + 56);
  v16 = v707;
  v238 = BigString.UTF8View.count.getter();
  v239 = v238 - v18;
  if (__OFSUB__(v238, v18))
  {
    goto LABEL_541;
  }

  if (__OFADD__(v596 - v606, v239))
  {
    goto LABEL_542;
  }

  i = MEMORY[0x1E69E7CD0];
  v6 = v607;
  specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v606, v596, v596 - v606 + v239, v597, MEMORY[0x1E69E7CD0]);

  v706[0] = *(v6 + 24);
  v706[1] = *(v6 + 40);
  v706[2] = *(v6 + 56);
  v16 = v706;
  v240 = BigString.UTF8View.count.getter();
  v32 = v240 - v18;
  if (__OFSUB__(v240, v18))
  {
    goto LABEL_543;
  }

  v16 = *(v6 + 104);
  v241 = specialized Array.count.getter();
  if (v241 < 0)
  {
    goto LABEL_544;
  }

  if (v241)
  {
    v242 = 0;
    i = 88;
    v243 = v606;
    v598 = v32;
    v595 = v241;
    do
    {
      if (v242 >= *(v16 + 16))
      {
        goto LABEL_457;
      }

      v601 = i;
      v602 = v242;
      v244 = *(v16 + i - 56);
      v3 = *(v16 + i - 48);
      v600 = *(v16 + i - 24);
      v597 = *(v16 + i - 16);
      v245 = *(v16 + i - 8);
      v603 = *(v16 + i);
      v604 = v245;
      v246 = v244 >> 11;
      if (v243 >= v244 >> 11)
      {
        v18 = v598;
        if (v596 != v243 || (v246 == v243 ? (v247 = v598 == 0) : (v247 = 1), v247))
        {
LABEL_250:
          v697 = *(v6 + 24);
          v698 = *(v6 + 40);
          v699 = *(v6 + 56);
          i = v697;
          swift_unknownObjectRetain();
          v250 = BigString.UTF8View.index(_:offsetBy:)();
          v3 = v255;
          v253 = v256;
          v16 = v257;
          swift_unknownObjectRelease();
          v32 = v18;
          goto LABEL_251;
        }
      }

      else
      {
        v18 = v598;
        if (!v598)
        {
          goto LABEL_250;
        }
      }

      v248 = *(v6 + 24);
      v704 = *(v6 + 40);
      v705 = *(v6 + 56);
      v703 = v248;
      v700 = *(v6 + 24);
      v701 = *(v6 + 40);
      v702 = *(v6 + 56);
      v16 = &v703;
      v6 = &v611;
      BigString.startIndex.getter();
      if (__OFADD__(v246, v18))
      {
        __break(1u);
LABEL_508:
        __break(1u);
LABEL_509:
        __break(1u);
LABEL_510:
        __break(1u);
LABEL_511:
        __break(1u);
LABEL_512:
        __break(1u);
LABEL_513:
        __break(1u);
LABEL_514:
        __break(1u);
LABEL_515:
        __break(1u);
LABEL_516:
        __break(1u);
        goto LABEL_517;
      }

      i = v249;
      v32 = v18;
      v721[0] = v703;
      v721[1] = v704;
      v722 = v705;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v721, &v611);
      v250 = BigString.UTF8View.index(_:offsetBy:)();
      v3 = v251;
      v253 = v252;
      v16 = v254;
      outlined destroy of BigString(&v703);
      v6 = v607;
LABEL_251:
      v18 = v600;
      v258 = v600 >> 11;
      *&v605 = v16;
      if (v606 >= v600 >> 11)
      {
        v264 = *(v6 + 104);
        if (v602 >= *(v264 + 16))
        {
          goto LABEL_514;
        }

        if ((*(v601 + v264 - 56) ^ v250) >= 0x400 && v32 != 0)
        {
LABEL_253:
          v599 = v253;
          v259 = *(v6 + 24);
          v695 = *(v6 + 40);
          v696 = *(v6 + 56);
          v694 = v259;
          v693[6] = *(v6 + 24);
          v693[7] = *(v6 + 40);
          v693[8] = *(v6 + 56);
          v16 = &v694;
          BigString.startIndex.getter();
          if (__OFADD__(v258, v32))
          {
            goto LABEL_508;
          }

          v723[0] = v694;
          v723[1] = v695;
          v724 = v696;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v723, &v611);
          v18 = BigString.UTF8View.index(_:offsetBy:)();
          v261 = v260;
          v603 = v263;
          v604 = v262;
          outlined destroy of BigString(&v694);
          v6 = v607;
          v32 = v598;
          goto LABEL_262;
        }
      }

      else if (v32)
      {
        goto LABEL_253;
      }

      v693[3] = *(v6 + 24);
      v693[4] = *(v6 + 40);
      v693[5] = *(v6 + 56);
      swift_unknownObjectRetain();
      v250 = BigString.UTF8View.index(_:offsetBy:)();
      v3 = v266;
      v599 = v267;
      *&v605 = v268;
      swift_unknownObjectRelease();
      v261 = v597;
LABEL_262:
      v16 = *(v6 + 104);
      v269 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 104) = v16;
      v271 = v601;
      v270 = v602;
      if ((v269 & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      }

      v243 = v606;
      if (v270 >= *(v16 + 16))
      {
        goto LABEL_458;
      }

      v242 = (v270 + 1);
      v272 = (v271 + v16);
      *(v272 - 7) = v250;
      *(v272 - 6) = v3;
      *(v272 - 5) = v599;
      *(v272 - 4) = v605;
      *(v272 - 3) = v18;
      v273 = v604;
      *(v272 - 2) = v261;
      *(v272 - 1) = v273;
      *v272 = v603;
      i = (v271 + 8);
      *(v6 + 104) = v16;
    }

    while (v595 != v242);
  }

  if (__OFADD__(v594, v32))
  {
    goto LABEL_545;
  }

  if (v594 + v32 < v584)
  {
    goto LABEL_546;
  }

  v580 = v594 + v32;
  v274 = *(v6 + 80);
  v275 = *(v6 + 88);
  v276 = swift_unknownObjectRetain();
  LOBYTE(v274) = specialized Collection.isEmpty.getter(v276, v274, v275);
  swift_unknownObjectRelease();
  if (v274)
  {
    goto LABEL_269;
  }

  v278 = *(v6 + 24);
  v693[1] = *(v6 + 40);
  v693[2] = *(v6 + 56);
  v693[0] = v278;
  v690 = *(v6 + 24);
  v691 = *(v6 + 40);
  v692 = *(v6 + 56);
  v279 = *(v6 + 24);
  v725[1] = *(v6 + 40);
  v726 = *(v6 + 56);
  v725[0] = v279;
  BigString.startIndex.getter();
  i = v280;
  v3 = v281;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v725, &v611);
  v282 = v584;
  v283 = BigString.UTF8View.index(_:offsetBy:)();
  v285 = v284;
  v287 = v286;
  v289 = v288;
  outlined destroy of BigString(v693);
  v687 = *(v6 + 24);
  v688 = *(v6 + 40);
  v689 = *(v6 + 56);
  if (__OFSUB__(v580, v282))
  {
    goto LABEL_564;
  }

  swift_unknownObjectRetain();
  v290 = BigString.UTF8View.index(_:offsetBy:)();
  v575 = v291;
  v576 = v290;
  v573 = v293;
  v574 = v292;
  swift_unknownObjectRelease();
  v579 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySnySiGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v684 = *(v6 + 24);
  v685 = *(v6 + 40);
  v686 = *(v6 + 56);
  swift_unknownObjectRetain();
  v571 = v285;
  v572 = v283;
  v569 = v287;
  v570 = v289;
  v294 = BigString.UnicodeScalarView.index(roundingDown:)();
  v182 = v295;
  v297 = v296;
  v577 = v298;
  swift_unknownObjectRelease();
  v681 = *(v6 + 24);
  v682 = *(v6 + 40);
  v683 = *(v6 + 56);
  v3 = v575;
  swift_unknownObjectRetain();
  v299 = BigString.UnicodeScalarView.index(roundingUp:)();
  v183 = v294;
  swift_unknownObjectRelease();
  i = v294 >> 11;
  if (v299 >> 11 < i)
  {
LABEL_565:
    __break(1u);
    goto LABEL_566;
  }

  v588 = v297;
  v599 = v299 >> 11;
  v300 = *(v6 + 72);
  v301 = *(v6 + 80);
  v302 = *(v6 + 88);
  v3 = *(v6 + 96);
  swift_unknownObjectRetain();
  swift_retain_n();
  v595 = i;
  if (specialized Rope.find<A>(at:in:preferEnd:)(i, 0, v300, v301, v302, v3) != v3)
  {
LABEL_566:
    __break(1u);
LABEL_567:
    __break(1u);
LABEL_568:
    __break(1u);
LABEL_569:
    v380 = swift_slowAlloc();

    v563 = v589;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v380, i, v3, closure #1 in AttributedString._AttributeStorage.attributesForAddedText());
    v589 = v563;
    if (!v563)
    {
      i = v564;

      MEMORY[0x1865D2690](v380, -1, -1);
      v16 = i;
      goto LABEL_36;
    }

    goto LABEL_588;
  }

  v181 = v305;
  v597 = v303;
  v598 = v3;
  v596 = v304;
  if (!v300)
  {
    goto LABEL_278;
  }

  v594 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v3, v303, v304, v300, v301);
  swift_unknownObjectRelease();
LABEL_279:
  v306 = v183;

  v3 = v595;
  if (__OFSUB__(v595, v181))
  {
    goto LABEL_567;
  }

  v602 = v595 - v181;
  v583 = v579;
LABEL_281:
  v18 = v182;
  v593 = v588;
  v591 = v306;
  v592 = v577;
  while (1)
  {
    v307 = *(v6 + 72);
    v308 = *(v6 + 80);
    v16 = *(v6 + 88);
    v309 = *(v6 + 96);
    swift_unknownObjectRetain();
    if (v3 == v599)
    {
      if (specialized Rope.find<A>(at:in:preferEnd:)(v3, 0, v307, v308, v16, v309) != v309)
      {
        goto LABEL_520;
      }

      i = v312;
      if (v307)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v309, v310, v311, v307, v308);
        swift_unknownObjectRelease();
      }

      v16 = v3 - i;
      if (__OFSUB__(v3, i))
      {
        goto LABEL_521;
      }
    }

    else
    {
      specialized Rope._endPath.getter(v307);
      if (v307)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
      }
    }

    if (v602 == v16)
    {
      break;
    }

    v313 = *(v6 + 72);
    v314 = *(v6 + 80);
    v315 = *(v6 + 88);
    v316 = *(v6 + 96);
    swift_unknownObjectRetain();
    v317 = v597;
    v3 = v598;
    v318 = v596;
    specialized Rope.subscript.getter(v598, v597, v596, v313, v314, v315, v316);
    v601 = v319;
    v587 = v320;
    swift_unknownObjectRelease();
    v16 = *(v6 + 72);
    v321 = *(v6 + 80);
    v322 = *(v6 + 88);
    v323 = *(v6 + 96);
    swift_unknownObjectRetain();
    v324 = specialized Rope.subscript.getter(v3, v317, v318, v16, v321, v322, v323);
    i = v325;
    swift_unknownObjectRelease();

    v326 = (v602 + v324);
    if (__OFADD__(v602, v324))
    {
      goto LABEL_509;
    }

    if (v599 >= v602)
    {
      v327 = v602;
    }

    else
    {
      v327 = v599;
    }

    if (v602 < v595)
    {
      v327 = v595;
    }

    if (v326 <= v595)
    {
      v328 = v595;
    }

    else
    {
      v328 = (v602 + v324);
    }

    if (v599 >= v326)
    {
      v329 = v328;
    }

    else
    {
      v329 = v599;
    }

    if (v327 == v329)
    {
      goto LABEL_510;
    }

    if (__OFSUB__(v329, v327))
    {
      goto LABEL_511;
    }

    v590 = v18;
    v16 = *(v6 + 72);
    v330 = *(v6 + 80);
    v332 = *(v6 + 88);
    v331 = *(v6 + 96);
    v3 = v597;
    i = v598;
    *&v611 = v598;
    *(&v611 + 1) = v597;
    v18 = v596;
    *&v612 = v596;
    if (__OFADD__(v594, 1))
    {
      goto LABEL_512;
    }

    v594 = (v594 + 1);
    swift_unknownObjectRetain();
    i = specialized Rope.subscript.getter(i, v3, v18, v16, v330, v332, v331);
    v3 = v333;

    if (__OFADD__(v602, i))
    {
      goto LABEL_513;
    }

    v602 += i;
    specialized Rope.formIndex(after:)(&v611, v16, v330, v332, v331);
    swift_unknownObjectRelease();
    i = v599;
    if (v602 >= v599)
    {
      v16 = *(v6 + 72);
      v334 = *(v6 + 80);
      v335 = *(v6 + 88);
      v3 = *(v6 + 96);
      swift_unknownObjectRetain();
      v18 = v590;
      v598 = v3;
      if (v595 == i)
      {
        if (specialized Rope.find<A>(at:in:preferEnd:)(v595, 0, v16, v334, v335, v3) != v3)
        {
          goto LABEL_533;
        }

        i = v338;
        v596 = v337;
        v597 = v336;
        if (v16)
        {
          v594 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v3, v336, v337, v16, v334);
          swift_unknownObjectRelease();
        }

        else
        {
          v594 = 0;
        }

        if (__OFSUB__(v595, i))
        {
          goto LABEL_534;
        }

        v602 = v595 - i;
      }

      else
      {
        v594 = v334;
        v602 = v335;
        v597 = specialized Rope._endPath.getter(v16);
        if (v16)
        {
          swift_unknownObjectRelease();
          v596 = 0;
        }

        else
        {
          v596 = 0;
          v594 = 0;
          v602 = 0;
        }
      }
    }

    else
    {
      v597 = *(&v611 + 1);
      v598 = v611;
      v596 = v612;
    }

    v678 = *(v6 + 24);
    v679 = *(v6 + 40);
    v680 = *(v6 + 56);
    swift_unknownObjectRetain();
    v339 = v591;
    v340 = BigString.UTF8View.index(_:offsetBy:)();
    v18 = v341;
    v588 = v342;
    v344 = v343;
    swift_unknownObjectRelease();
    v345 = v601;

    i = v587;

    v346 = v589;
    v347 = specialized Sequence.contains(where:)(v345);
    v589 = v346;

    if ((v347 & 1) != 0 && v340 >> 10 > v339 >> 10)
    {
      v567 = v340;
      v568 = v18;
      v577 = v344;
      v578 = v340 >> 10;
      v600 = v345 + 64;
LABEL_326:
      v675 = *(v6 + 24);
      v676 = *(v6 + 40);
      v677 = *(v6 + 56);
      swift_unknownObjectRetain();
      v585 = BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      v348 = *(v6 + 40);
      v672 = *(v6 + 24);
      v673 = v348;
      v674 = *(v6 + 56);
      swift_unknownObjectRetain();
      v16 = BigString.UnicodeScalarView.index(after:)();
      v590 = v349;
      v592 = v351;
      v593 = v350;
      swift_unknownObjectRelease();
      v352 = 1 << *(v345 + 32);
      v353 = *(v345 + 64);
      v586 = (v352 + 63) >> 6;
      if (v352 < 64)
      {
        v354 = ~(-1 << v352);
      }

      else
      {
        v354 = -1;
      }

      v18 = v354 & v353;
      v591 = v16;
      v581 = v16 >> 11;
      v582 = (v339 >> 11);

      v6 = 0;
      v355 = v600;
      if (!v18)
      {
LABEL_333:
        if (v586 <= v6 + 1)
        {
          v357 = v6 + 1;
        }

        else
        {
          v357 = v586;
        }

        v358 = v357 - 1;
        while (1)
        {
          v356 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v356 >= v586)
          {
            v373 = 0;
            v369 = 0;
            v372 = 0;
            v370 = 0;
            v371 = 0;
            v364 = 0;
            v365 = 0;
            v366 = 0;
            v367 = 0;
            i = 0;
            v368 = 0;
            v18 = 0;
            v6 = v358;
            goto LABEL_342;
          }

          v18 = *(v355 + 8 * v356);
          ++v6;
          if (v18)
          {
            v6 = v356;
            goto LABEL_341;
          }
        }

        __break(1u);
LABEL_422:

        v608 = 1;
        v445 = v16 >> 10;
        v18 = v576 >> 10;
        if (v16 >> 10 == v576 >> 10)
        {
          v446 = *(v6 + 40);
          v634 = *(v6 + 24);
          v635 = v446;
          v636 = *(v6 + 56);
          if (v445 <= BigString.startIndex.getter() >> 10 || v445 >= BigString.endIndex.getter() >> 10)
          {
            goto LABEL_269;
          }

          if (!__OFSUB__(v584, 1))
          {
            if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v584 - 1, v584) & 1) == 0)
            {
              goto LABEL_269;
            }

            v447 = *(v6 + 24);
            v448 = *(v6 + 56);
            v670 = *(v6 + 40);
            v671 = v448;
            v669 = v447;
            v449 = *(v6 + 24);
            v450 = *(v6 + 40);
            *&v659 = *(v6 + 56);
            v657 = v449;
            v658 = v450;
            outlined init with copy of Rope<BigString._Chunk>._Node?(&v657, &v611);
            v451 = BigString.index(before:)();
            v453 = v452;
            v455 = v454;
            v457 = v456;
            outlined destroy of BigString(&v669);
            v606 = *(v6 + 24);
            v458 = *(v6 + 40);
            v663 = v606;
            v664 = v458;
            v665 = *(v6 + 56);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMR);
            v459 = swift_allocObject();
            _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v459, 1);
            *v460 = 2;
            _NSBundleDeallocatingImmortalBundle();
            *&v605 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
            swift_unknownObjectRetain();

            v461 = *(v6 + 24);
            v462 = *(v6 + 56);
            v667 = *(v6 + 40);
            v668 = v462;
            v666 = v461;
            v463 = *(v6 + 24);
            v464 = *(v6 + 40);
            *&v662 = *(v6 + 56);
            v660 = v463;
            v661 = v464;
            outlined init with copy of Rope<BigString._Chunk>._Node?(&v660, &v611);
            v465 = v451;
            v466 = v453;
            v467 = v455;
            v468 = BigString.index(after:)();
            v470 = v469;
            v472 = v471;
            v474 = v473;
            outlined destroy of BigString(&v666);
            v475 = v465;
            v476 = v465 >> 10;
            if (v476 > v468 >> 10)
            {
              goto LABEL_581;
            }

            *&v606 = v475;
            *&v625 = v475;
            *(&v625 + 1) = v466;
            v626 = v467;
            v627 = v457;
            v628 = v468;
            v629 = v470;
            v630 = v472;
            v631 = v474;
            v380 = &v663;
            specialized BidirectionalCollection<>._getBlock(for:in:)(v605, &v625, &v611);
            swift_unknownObjectRelease();
            if (*(&v614 + 1) != 2)
            {
              v6 = v607;
              if (v476 <= v613 >> 10)
              {
                LOBYTE(i) = 0;
                v477 = 0;
                v478 = 0;
                v479 = 0;
                v608 = 0;
                v32 = v606 >> 11;
                v3 = (v613 >> 11);
                goto LABEL_466;
              }

              goto LABEL_582;
            }

            goto LABEL_586;
          }

          goto LABEL_576;
        }

        v480 = *(v6 + 40);
        v669 = *(v6 + 24);
        v670 = v480;
        v671 = *(v6 + 56);
        if (v445 <= BigString.startIndex.getter() >> 10)
        {
          goto LABEL_441;
        }

        if (__OFSUB__(v584, 1))
        {
          goto LABEL_575;
        }

        if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v584 - 1, v584) & 1) == 0)
        {
          goto LABEL_441;
        }

        v481 = *(v6 + 24);
        v482 = *(v6 + 56);
        v667 = *(v6 + 40);
        v668 = v482;
        v666 = v481;
        v483 = *(v6 + 24);
        v727[1] = *(v6 + 40);
        v728 = *(v6 + 56);
        v727[0] = v483;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v727, &v611);
        v484 = BigString.index(before:)();
        v486 = v485;
        v488 = v487;
        *&v606 = v489;
        outlined destroy of BigString(&v666);
        v605 = *(v6 + 24);
        v490 = *(v6 + 40);
        v660 = v605;
        v661 = v490;
        v662 = *(v6 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMR);
        v491 = swift_allocObject();
        _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v491, 1);
        *v492 = 2;
        _NSBundleDeallocatingImmortalBundle();
        v604 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
        swift_unknownObjectRetain();

        v493 = *(v6 + 24);
        v494 = *(v6 + 56);
        v664 = *(v6 + 40);
        v665 = v494;
        v663 = v493;
        v495 = *(v6 + 24);
        v729[1] = *(v6 + 40);
        v730 = *(v6 + 56);
        v729[0] = v495;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v729, &v611);
        v496 = v488;
        v497 = BigString.index(after:)();
        v499 = v498;
        v501 = v500;
        v503 = v502;
        outlined destroy of BigString(&v663);
        if (v484 >> 10 > v497 >> 10)
        {
LABEL_577:
          __break(1u);
        }

        else
        {
          v603 = v484;
          *&v625 = v484;
          *(&v625 + 1) = v486;
          v626 = v496;
          v627 = v606;
          v628 = v497;
          v629 = v499;
          v630 = v501;
          v631 = v503;
          v380 = &v660;
          specialized BidirectionalCollection<>._getBlock(for:in:)(v604, &v625, &v611);
          swift_unknownObjectRelease();
          if (*(&v614 + 1) == 2)
          {
            __break(1u);
            goto LABEL_585;
          }

          v6 = v607;
          if (v484 >> 10 <= v613 >> 10)
          {
            LOBYTE(i) = 0;
            v32 = v603 >> 11;
            v3 = (v613 >> 11);
            v608 = 0;
            goto LABEL_442;
          }
        }

        __break(1u);
        goto LABEL_579;
      }

      while (1)
      {
LABEL_332:
        v356 = v6;
LABEL_341:
        v359 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v360 = v359 | (v356 << 6);
        v361 = v601[7];
        v362 = (v601[6] + 16 * v360);
        v363 = v362[1];
        *&v606 = *v362;
        outlined init with copy of AttributedString._AttributeValue(v361 + 72 * v360, &v625);
        v604 = *(&v625 + 1);
        *&v605 = v625;
        v603 = v626;
        v364 = v627;
        v365 = v628;
        v366 = v629;
        v367 = v630;
        i = v631;
        v16 = v632;

        v368 = v16;
        v369 = v363;
        v371 = v603;
        v370 = v604;
        v372 = v605;
        v373 = v606;
LABEL_342:
        *&v611 = v373;
        *(&v611 + 1) = v369;
        *&v612 = v372;
        *(&v612 + 1) = v370;
        *&v613 = v371;
        *(&v613 + 1) = v364;
        *&v614 = v365;
        *(&v614 + 1) = v366;
        *&v615 = v367;
        *(&v615 + 1) = i;
        *&v616 = v368;
        if (!v369)
        {
          v345 = v601;

          v339 = v591;
          v6 = v607;
          if (v578 > v591 >> 10)
          {
            goto LABEL_326;
          }

          v3 = v595;
          v306 = v567;
          v182 = v568;
          goto LABEL_281;
        }

        v3 = v369;
        outlined copy of AttributedString.AttributeRunBoundaries?(v366, v367);
        outlined destroy of AttributedString._AttributeValue(&v612);
        if (v367 >= 2)
        {
          i = specialized Collection.first.getter(v366, v367);
          outlined consume of AttributedString.AttributeRunBoundaries?(v366, v367);
          if ((i & 0x100000000) == 0 && v585 != i)
          {
            break;
          }
        }

        v355 = v600;
        if (!v18)
        {
          goto LABEL_333;
        }
      }

      if (v581 < v582)
      {
        goto LABEL_553;
      }

      v16 = v579;
      i = swift_isUniquelyReferenced_nonNull_native();
      *&v625 = v16;
      v375 = specialized __RawDictionaryStorage.find<A>(_:)(v373, v3);
      v376 = *(v16 + 16);
      v377 = (v374 & 1) == 0;
      v378 = v376 + v377;
      if (__OFADD__(v376, v377))
      {
        goto LABEL_554;
      }

      v379 = v374;
      if (*(v16 + 24) >= v378)
      {
        if (i)
        {
          v583 = v16;
          if (v374)
          {
            goto LABEL_351;
          }
        }

        else
        {
          LODWORD(v605) = v374;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySnySiGGGMd, &_ss18_DictionaryStorageCySSSaySnySiGGGMR);
          v583 = static _DictionaryStorage.copy(original:)();
          if (*(v16 + 16))
          {
            v388 = (v583 + 64);
            v389 = v579 + 8;
            v390 = ((1 << *(v583 + 32)) + 63) >> 6;
            if (v583 != v579 || v388 >= &v389[v390])
            {
              memmove(v388, v579 + 8, 8 * v390);
            }

            v391 = 0;
            v392 = v579;
            *(v583 + 16) = v579[2];
            v393 = 1 << *(v392 + 32);
            v394 = v392[8];
            if (v393 < 64)
            {
              v395 = ~(-1 << v393);
            }

            else
            {
              v395 = -1;
            }

            v396 = v395 & v394;
            v397 = (v393 + 63) >> 6;
            if (!v396)
            {
              goto LABEL_368;
            }

            while (1)
            {
              v398 = __clz(__rbit64(v396));
              for (*&v606 = (v396 - 1) & v396; ; *&v606 = (v400 - 1) & v400)
              {
                v401 = v398 | (v391 << 6);
                v402 = (v579[6] + 16 * v401);
                v403 = v402[1];
                i = *(v579[7] + 8 * v401);
                v404 = v583;
                v405 = (*(v583 + 48) + 16 * v401);
                *v405 = *v402;
                v405[1] = v403;
                *(*(v404 + 56) + 8 * v401) = i;

                v396 = v606;
                if (v606)
                {
                  break;
                }

LABEL_368:
                v399 = v391;
                do
                {
                  v391 = v399 + 1;
                  if (__OFADD__(v399, 1))
                  {
                    goto LABEL_583;
                  }

                  if (v391 >= v397)
                  {
                    goto LABEL_375;
                  }

                  v400 = v389[v391];
                  ++v399;
                }

                while (!v400);
                v398 = __clz(__rbit64(v400));
              }
            }
          }

LABEL_375:

          if (v605)
          {
            goto LABEL_351;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v378, i);
        v380 = v625;
        v583 = v625;
        v381 = specialized __RawDictionaryStorage.find<A>(_:)(v373, v3);
        if ((v379 & 1) != (v382 & 1))
        {
          goto LABEL_587;
        }

        v375 = v381;
        if (v379)
        {
LABEL_351:

          v383 = v583;
          goto LABEL_357;
        }
      }

      v383 = v583;
      *(v583 + 8 * (v375 >> 6) + 64) |= 1 << v375;
      v384 = (v383[6] + 16 * v375);
      *v384 = v373;
      v384[1] = v3;
      *(v383[7] + 8 * v375) = MEMORY[0x1E69E7CC0];
      v385 = v383[2];
      v45 = __OFADD__(v385, 1);
      v386 = v385 + 1;
      if (v45)
      {
        goto LABEL_568;
      }

      v383[2] = v386;
LABEL_357:
      v387 = v383;
      v16 = v383[7] + 8 * v375;
      Array<A>._extend(with:)(v582, v581);
      v579 = v387;
      v355 = v600;
      if (!v18)
      {
        goto LABEL_333;
      }

      goto LABEL_332;
    }

    v591 = v340;
    v592 = v344;
    v593 = v588;
    v3 = v595;
  }

  v406 = 0;
  v407 = v583 + 64;
  v408 = 1 << *(v583 + 32);
  v409 = -1;
  if (v408 < 64)
  {
    v409 = ~(-1 << v408);
  }

  v410 = v409 & *(v583 + 64);
  v411 = (v408 + 63) >> 6;
  v16 = v572;
  do
  {
LABEL_381:
    if (!v410)
    {
      do
      {
        v412 = v406 + 1;
        if (__OFADD__(v406, 1))
        {
          goto LABEL_530;
        }

        if (v412 >= v411)
        {
          goto LABEL_422;
        }

        v410 = *(v407 + 8 * v412);
        ++v406;
      }

      while (!v410);
      v406 = v412;
    }

    v413 = __clz(__rbit64(v410));
    v410 &= v410 - 1;
    v414 = v413 | (v406 << 6);
    v415 = *(*(v583 + 56) + 8 * v414);
    v601 = *(v415 + 16);
  }

  while (!v601);
  v596 = v410;
  v597 = v411;
  v598 = v406;
  v599 = v407;
  v416 = *(v583 + 48) + 16 * v414;
  v417 = *(v416 + 8);
  v604 = *v416;
  v602 = v415 + 32;
  v418 = v415;

  v419 = v418;
  v420 = 0;
  v600 = v419;
  while (2)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v421 = (v602 + 16 * v420);
    v32 = *v421;
    v422 = v421[1];
    v603 = v420 + 1;

    AttributedString._InternalRunsSlice.startIndex.getter(v6, v32, v642);
    v423 = v643;
    v611 = v642[0];
    v612 = v642[1];
    *&v613 = v643;
    *&v606 = v422;
    *&v605 = v32;
LABEL_392:
    v425 = *(v6 + 72);
    if (v32 == v422)
    {
      i = *(v6 + 80);
      v18 = *(v6 + 88);
      v426 = *(v6 + 96);
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v32, 0, v425, i, v18, v426) != v426)
      {
        __break(1u);
LABEL_447:
        __break(1u);
        goto LABEL_448;
      }

      v3 = v429;
      if (v425)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v426, v427, v428, v425, i);
        swift_unknownObjectRelease();
      }

      v430 = v32 - v3;
      if (__OFSUB__(v32, v3))
      {
        goto LABEL_447;
      }

      v422 = v606;
    }

    else if (v425)
    {
      v430 = *(v6 + 88);
    }

    else
    {
      v430 = 0;
    }

    if (v423 >= v430)
    {

      v420 = v603;
      if (v603 == v601)
      {

        v16 = v572;
        v406 = v598;
        v407 = v599;
        v410 = v596;
        v411 = v597;
        goto LABEL_381;
      }

      continue;
    }

    break;
  }

  specialized AttributedString.Guts.updateRun(at:within:with:)(&v611, v32, v422, v6, v604, v417);
  v32 = v417;

  i = *(&v611 + 1);
  v431 = v611;
  v432 = v613;
  v433 = v6;
  v6 = *(v6 + 72);
  v3 = v433[10];
  v18 = v433[11];
  v434 = v433[12];
  v625 = v611;
  v626 = v612;
  v435 = *(&v612 + 1) + 1;
  if (__OFADD__(*(&v612 + 1), 1))
  {
    __break(1u);
LABEL_439:
    __break(1u);
LABEL_440:
    __break(1u);
LABEL_441:
    v32 = 0;
    v3 = 0;
    LOBYTE(i) = 1;
LABEL_442:
    v504 = *(v6 + 40);
    v657 = *(v6 + 24);
    v658 = v504;
    v659 = *(v6 + 56);
    if (v18 >= BigString.endIndex.getter() >> 10)
    {
      goto LABEL_465;
    }

    if (i)
    {
      if (v580 < 1)
      {
        goto LABEL_269;
      }

LABEL_449:
      if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v580 - 1, v580) & 1) == 0)
      {
        goto LABEL_465;
      }

      v603 = v3;
      v604 = v32;
      v505 = *(v6 + 24);
      v506 = *(v6 + 56);
      v656[1] = *(v6 + 40);
      v656[2] = v506;
      v656[0] = v505;
      v507 = *(v6 + 24);
      v731[1] = *(v6 + 40);
      v732 = *(v6 + 56);
      v731[0] = v507;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v731, &v611);
      v508 = BigString.index(before:)();
      v510 = v509;
      v512 = v511;
      v514 = v513;
      outlined destroy of BigString(v656);
      v606 = *(v6 + 24);
      v515 = *(v6 + 40);
      v654[0] = v606;
      v654[1] = v515;
      v654[2] = *(v6 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMR);
      v516 = swift_allocObject();
      _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v516, 1);
      *v517 = 2;
      _NSBundleDeallocatingImmortalBundle();
      *&v605 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
      swift_unknownObjectRetain();

      v518 = *(v6 + 24);
      v519 = *(v6 + 56);
      v655[1] = *(v6 + 40);
      v655[2] = v519;
      v655[0] = v518;
      v520 = *(v6 + 24);
      v733[1] = *(v6 + 40);
      v734 = *(v6 + 56);
      v733[0] = v520;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v733, &v611);
      v521 = v510;
      v522 = BigString.index(after:)();
      v524 = v523;
      v526 = v525;
      v528 = v527;
      outlined destroy of BigString(v655);
      if (v508 >> 10 <= v522 >> 10)
      {
        v602 = v508;
        *&v634 = v508;
        *(&v634 + 1) = v521;
        *&v635 = v512;
        *(&v635 + 1) = v514;
        *&v636 = v522;
        *(&v636 + 1) = v524;
        v637 = v526;
        v638 = v528;
        v380 = v654;
        specialized BidirectionalCollection<>._getBlock(for:in:)(v605, &v634, &v611);
        swift_unknownObjectRelease();
        if (*(&v614 + 1) != 2)
        {
          v6 = v607;
          v3 = v603;
          if (v508 >> 10 <= v613 >> 10)
          {
            v477 = v602 >> 11;
            v478 = v613 >> 11;
            v479 = 1;
            LOBYTE(i) = v608;
            v32 = v604;
            goto LABEL_466;
          }

LABEL_580:
          __break(1u);
LABEL_581:
          __break(1u);
LABEL_582:
          __break(1u);
LABEL_583:
          __break(1u);
        }

LABEL_585:
        __break(1u);
LABEL_586:
        __break(1u);
LABEL_587:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_588:

        result = MEMORY[0x1865D2690](v380, -1, -1);
        __break(1u);
        return result;
      }

LABEL_579:
      __break(1u);
      goto LABEL_580;
    }

LABEL_448:
    if (v3 >= v580)
    {
      goto LABEL_464;
    }

    goto LABEL_449;
  }

  if (v611 != v434)
  {
    goto LABEL_439;
  }

  if (v612)
  {
    v436 = *(v612 + 24 * ((*(&v611 + 1) >> ((4 * *(v612 + 18) + 8) & 0x3C)) & 0xFLL) + 24);
    swift_unknownObjectRetain();
    v45 = __OFADD__(v432, v436);
    v423 = v432 + v436;
    if (v45)
    {
      goto LABEL_440;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v437 = specialized Rope._Node.subscript.getter(i, v6);
    i = v438;

    v45 = __OFADD__(v432, v437);
    v423 = v432 + v437;
    if (v45)
    {
      goto LABEL_440;
    }
  }

  specialized Rope.formIndex(after:)(&v625, v6, v3, v18, v431);
  swift_unknownObjectRelease();
  v422 = v606;
  if (v423 < v606)
  {
    v3 = *(&v625 + 1);
    v6 = v625;
    v424 = v626;
LABEL_391:
    *&v611 = v6;
    *(&v611 + 1) = v3;
    *&v612 = v424;
    *(&v612 + 1) = v435;
    *&v613 = v423;
    v6 = v607;
    v417 = v32;
    v32 = v605;
    goto LABEL_392;
  }

  v18 = v607[9];
  v439 = v605;
  if (v605 != v606)
  {
    v6 = v607[12];
    if (v18)
    {
      v424 = 0;
      v435 = v607[10];
      v423 = v607[11];
      v3 = (((-15 << ((4 * *(v18 + 18) + 8) & 0x3C)) - 1) & *(v18 + 18) | (*(v18 + 16) << ((4 * *(v18 + 18) + 8) & 0x3C)));
    }

    else
    {
      v3 = 0;
      v424 = 0;
      v435 = 0;
      v423 = 0;
    }

    goto LABEL_391;
  }

  i = v607[10];
  v440 = v607[11];
  v6 = v607[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v439, 0, v18, i, v440, v6) == v6)
  {
    v3 = v441;
    v424 = v442;
    v444 = v443;
    if (v18)
    {
      v435 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v6, v441, v442, v18, i);
      swift_unknownObjectRelease();
    }

    else
    {
      v435 = 0;
    }

    v423 = v605 - v444;
    if (__OFSUB__(v605, v444))
    {
      goto LABEL_455;
    }

    v422 = v606;
    goto LABEL_391;
  }

  __break(1u);
LABEL_455:
  __break(1u);
LABEL_456:
  __break(1u);
LABEL_457:
  __break(1u);
LABEL_458:
  __break(1u);
LABEL_459:
  __break(1u);
LABEL_460:
  __break(1u);
LABEL_461:
  __break(1u);
LABEL_462:
  __break(1u);
LABEL_463:
  __break(1u);
LABEL_464:
  LOBYTE(i) = 0;
LABEL_465:
  v477 = 0;
  v478 = 0;
  v479 = 0;
LABEL_466:
  v529 = v584;
  *&v606 = v478;
  if ((i & 1) != 0 || v584 >= v3)
  {
    v546 = v580;
  }

  else
  {
    LODWORD(v601) = v479;
    v602 = v477;
    v611 = 0uLL;
    v530 = AttributedString.Guts._constrainedAttributes(at:with:)(v32, &v611);
    v532 = v531;
    *&v605 = v530;

    v604 = v532;

    AttributedString._InternalRunsSlice.startIndex.getter(v6, v529, v644);
    i = v645;
    v611 = v644[0];
    v612 = v644[1];
    *&v613 = v645;
    v603 = v3;
    while (1)
    {
      v536 = *(v6 + 72);
      if (v536)
      {
        v536 = *(v6 + 88);
      }

      if (i >= v536)
      {
        break;
      }

      v537 = v605;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v611, v584, v3, v6, v537, 0, 0);

      v18 = *(&v611 + 1);
      v538 = v611;
      v16 = v613;
      v539 = v6;
      v540 = *(v6 + 72);
      v6 = *(v6 + 80);
      v542 = *(v539 + 88);
      v541 = *(v539 + 96);
      v609 = v611;
      v610 = v612;
      v543 = *(&v612 + 1) + 1;
      if (__OFADD__(*(&v612 + 1), 1))
      {
        goto LABEL_547;
      }

      if (v611 != v541)
      {
        goto LABEL_548;
      }

      if (v612)
      {
        v544 = v612 + 24 * ((*(&v611 + 1) >> ((4 * *(v612 + 18) + 8) & 0x3C)) & 0xFLL);
        v18 = *(v544 + 24);
        v3 = *(v544 + 40);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v18 = specialized Rope._Node.subscript.getter(v18, v540);
        v3 = v545;
      }

      i = v16 + v18;
      if (__OFADD__(v16, v18))
      {
        goto LABEL_549;
      }

      specialized Rope.formIndex(after:)(&v609, v540, v6, v542, v538);
      swift_unknownObjectRelease();
      v3 = v603;
      if (i < v603)
      {
        v534 = *(&v609 + 1);
        v533 = v609;
        v535 = v610;
        v6 = v607;
        v478 = v606;
      }

      else
      {
        v6 = v607;
        v534 = v607[9];
        v533 = v607[12];
        v478 = v606;
        v535 = 0;
        if (v534)
        {
          v543 = v607[10];
          i = v607[11];
          v534 = ((-15 << ((4 * *(v534 + 18) + 8) & 0x3C)) - 1) & *(v534 + 18) | (*(v534 + 16) << ((4 * *(v534 + 18) + 8) & 0x3C));
        }

        else
        {
          v543 = 0;
          i = 0;
        }
      }

      *&v611 = v533;
      *(&v611 + 1) = v534;
      *&v612 = v535;
      *(&v612 + 1) = v543;
      *&v613 = i;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v546 = v580;
    v477 = v602;
    v479 = v601;
  }

  if (v546 < v478)
  {
    v547 = v479;
  }

  else
  {
    v547 = 0;
  }

  if (v547 == 1)
  {
    v611 = 0uLL;
    v548 = AttributedString.Guts._constrainedAttributes(at:with:)(v477, &v611);
    v550 = v549;
    *&v605 = v548;

    v604 = v550;

    AttributedString._InternalRunsSlice.startIndex.getter(v6, v580, &v646);
    for (i = v649; ; v649 = i)
    {
      v554 = *(v6 + 72);
      if (v554)
      {
        v554 = *(v6 + 88);
      }

      if (i >= v554)
      {
        break;
      }

      v555 = v605;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v646, v580, v478, v6, v555, 0, 0);

      v18 = *(&v646 + 1);
      v3 = v646;
      v16 = v649;
      v556 = *(v6 + 72);
      v557 = *(v6 + 80);
      v559 = *(v6 + 88);
      v558 = *(v6 + 96);
      v611 = v646;
      *&v612 = v647;
      v560 = v648 + 1;
      if (__OFADD__(v648, 1))
      {
        goto LABEL_550;
      }

      if (v646 != v558)
      {
        goto LABEL_551;
      }

      if (v647)
      {
        v561 = v647 + 24 * ((*(&v646 + 1) >> ((4 * *(v647 + 18) + 8) & 0x3C)) & 0xFLL);
        v18 = *(v561 + 24);
        v6 = *(v561 + 40);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v18 = specialized Rope._Node.subscript.getter(v18, v556);
        v6 = v562;
      }

      i = v16 + v18;
      if (__OFADD__(v16, v18))
      {
        goto LABEL_552;
      }

      specialized Rope.formIndex(after:)(&v611, v556, v557, v559, v3);
      swift_unknownObjectRelease();
      v478 = v606;
      if (i < v606)
      {
        v552 = *(&v611 + 1);
        v551 = v611;
        v553 = v612;
        v6 = v607;
      }

      else
      {
        v6 = v607;
        v552 = v607[9];
        v551 = v607[12];
        v553 = 0;
        if (v552)
        {
          v560 = v607[10];
          i = v607[11];
          v552 = ((-15 << ((4 * *(v552 + 18) + 8) & 0x3C)) - 1) & *(v552 + 18) | (*(v552 + 16) << ((4 * *(v552 + 18) + 8) & 0x3C));
        }

        else
        {
          v560 = 0;
          i = 0;
        }
      }

      *&v646 = v551;
      *(&v646 + 1) = v552;
      v647 = v553;
      v648 = v560;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

LABEL_269:
  v615 = v622;
  v616 = v623;
  v617 = v624;
  v611 = v618;
  v612 = v619;
  v613 = v620;
  v614 = v621;
  return outlined destroy of BigSubstring(&v611);
}

uint64_t specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t i, uint64_t a3)
{
  v5 = v3;
  v602 = a1;
  v738 = *MEMORY[0x1E69E9840];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  v593 = 0;
  v601 = v3;
  *&v599 = i;
  *(&v599 + 1) = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v721[0] = *(v9 + 24);
    v721[1] = *(v9 + 40);
    v721[2] = *(v9 + 56);
    v10 = *(v9 + 72);
    v11 = *(v9 + 80);
    i = *(v9 + 88);
    v12 = *(v9 + 96);
    type metadata accessor for AttributedString.Guts();
    v4 = swift_allocObject();
    outlined init with copy of BigString(v721, &v621);
    swift_unknownObjectRetain();
    v13 = AttributedString.Guts.init(string:runs:)(v721, v10, v11, i, v12);

    *v5 = v13;
    v9 = v13;
  }

  v14 = *(v9 + 24);
  v15 = *(v9 + 40);
  v720 = *(v9 + 56);
  v719 = v15;
  v718 = v14;
  v16 = *(v9 + 40);
  v608 = *(v9 + 24);
  v609 = v16;
  v17 = *(v9 + 56);
  v18 = *(v9 + 64);
  v610 = v9;
  if (BigString.isEmpty.getter())
  {
    v19 = MEMORY[0x1E69E7CC8];
    goto LABEL_37;
  }

  v20 = *v602;
  if (*v602 >= 0x800uLL && (*(v602 + 32) ^ v20) <= 0x3FF)
  {
    v715[3] = v608;
    v715[4] = v609;
    v716 = v17;
    v717 = v18;
    v722[0] = v718;
    v722[1] = v719;
    v723 = v720;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v722, &v621);
    v20 = BigString.UTF8View.index(before:)();
    outlined destroy of BigString(&v718);
  }

  v21 = *(v9 + 72);
  v4 = *(v9 + 80);
  i = *(v9 + 88);
  v19 = *(v9 + 96);
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v20 >> 11, 0, v21, v4, i, v19) == v19)
  {
    v24 = v22;
    v25 = v23;
    if (v21)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v19, v22, v23, v21, v4);
      swift_unknownObjectRelease();
    }

    v26 = *(v9 + 72);
    v27 = *(v9 + 80);
    v28 = *(v9 + 88);
    v29 = *(v9 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v19, v24, v25, v26, v27, v28, v29);
    v4 = v30;
    v21 = v31;
    swift_unknownObjectRelease();
    v32 = *(v4 + 32);
    v33 = v32 & 0x3F;
    i = ((1 << v32) + 63) >> 6;
    v19 = 8 * i;

    if (v33 <= 0xD)
    {
      goto LABEL_12;
    }

    goto LABEL_556;
  }

  while (2)
  {
    __break(1u);
LABEL_556:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_569;
    }

LABEL_12:
    v604 = i;
    v606 = &v571;
    v607 = v21;
    MEMORY[0x1EEE9AC00](v34);
    v605 = &v571 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v605, v19);
    *&v608 = 0;
    v35 = 0;
    *&v609 = v4;
    v36 = v4 + 8;
    v37 = 1 << *(v4 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & v4[8];
    v40 = (v37 + 63) >> 6;
    v4 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
    do
    {
      do
      {
        while (1)
        {
          if (v39)
          {
            v41 = __clz(__rbit64(v39));
            v39 &= v39 - 1;
          }

          else
          {
            v42 = v35;
            do
            {
              v35 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                goto LABEL_459;
              }

              if (v35 >= v40)
              {
                goto LABEL_31;
              }

              v43 = v36[v35];
              ++v42;
            }

            while (!v43);
            v41 = __clz(__rbit64(v43));
            v39 = (v43 - 1) & v43;
          }

          v44 = v41 | (v35 << 6);
          v45 = (*(v609 + 48) + 16 * v44);
          v47 = *v45;
          v46 = v45[1];
          outlined init with copy of AttributedString._AttributeValue(*(v609 + 56) + 72 * v44, &v637);
          *&v621 = v47;
          *(&v621 + 1) = v46;
          outlined init with copy of AttributedString._AttributeValue(&v637, &v622);
          outlined init with copy of FloatingPointRoundingRule?(&v621, &v614, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);

          i = BYTE8(v618);
          outlined destroy of AttributedString._AttributeValue(&v615);
          if (i == 1)
          {
            break;
          }

          outlined destroy of TermOfAddress?(&v621, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          outlined destroy of AttributedString._AttributeValue(&v637);
          v9 = v610;
        }

        outlined init with copy of FloatingPointRoundingRule?(&v621, &v628, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);

        v9 = v610;
        if (!v636)
        {
          outlined destroy of TermOfAddress?(&v621, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          outlined destroy of AttributedString._AttributeValue(&v637);
          outlined destroy of AttributedString._AttributeValue(&v629);
          break;
        }

        i = specialized Set.contains(_:)(0, 0, v636);
        outlined destroy of TermOfAddress?(&v621, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
        outlined destroy of AttributedString._AttributeValue(&v637);
        outlined destroy of AttributedString._AttributeValue(&v629);
      }

      while ((i & 1) != 0);
      *(v605 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      v48 = __OFADD__(v608, 1);
      *&v608 = v608 + 1;
    }

    while (!v48);
    __break(1u);
LABEL_31:
    v49 = v608;
    if (v608)
    {
      v4 = v609;
      if (v608 == *(v609 + 16))
      {

        v19 = v4;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
        v19 = static _DictionaryStorage.allocate(capacity:)();
        v21 = 0;
        v110 = *v605;
        i = v19 + 64;
        do
        {
          if (v110)
          {
            v114 = __clz(__rbit64(v110));
            v110 &= v110 - 1;
          }

          else
          {
            v115 = v21;
            do
            {
              v21 = v115 + 1;
              if (__OFADD__(v115, 1))
              {
                goto LABEL_522;
              }

              if (v21 >= v604)
              {
                goto LABEL_36;
              }

              v116 = *(v605 + 8 * v21);
              ++v115;
            }

            while (!v116);
            v114 = __clz(__rbit64(v116));
            v110 = (v116 - 1) & v116;
          }

          v117 = v114 | (v21 << 6);
          v118 = (v4[6] + 16 * v117);
          v119 = *v118;
          v9 = v118[1];
          outlined init with copy of AttributedString._AttributeValue(v4[7] + 72 * v117, &v621);
          v616 = v623;
          v617 = v624;
          *&v618 = v625;
          v614 = v621;
          v615 = v622;
          Hasher.init(_seed:)();

          String.hash(into:)();
          v120 = Hasher._finalize()();
          v121 = -1 << *(v19 + 32);
          v122 = v120 & ~v121;
          v123 = v122 >> 6;
          if (((-1 << v122) & ~*(i + 8 * (v122 >> 6))) != 0)
          {
            v111 = __clz(__rbit64((-1 << v122) & ~*(i + 8 * (v122 >> 6)))) | v122 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v124 = 0;
            v125 = (63 - v121) >> 6;
            do
            {
              if (++v123 == v125 && (v124 & 1) != 0)
              {
                goto LABEL_528;
              }

              v126 = v123 == v125;
              if (v123 == v125)
              {
                v123 = 0;
              }

              v124 |= v126;
              v127 = *(i + 8 * v123);
            }

            while (v127 == -1);
            v111 = __clz(__rbit64(~v127)) + (v123 << 6);
          }

          *(i + ((v111 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v111;
          v112 = (*(v19 + 48) + 16 * v111);
          *v112 = v119;
          v112[1] = v9;
          v113 = *(v19 + 56) + 72 * v111;
          *(v113 + 16) = v615;
          *(v113 + 32) = v616;
          *(v113 + 48) = v617;
          *(v113 + 64) = v618;
          *v113 = v614;
          ++*(v19 + 16);
          --v49;
          v9 = v610;
        }

        while (v49);
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC8];
      v4 = v609;
    }

LABEL_36:

    swift_bridgeObjectRelease_n();
LABEL_37:
    v598 = v19;
    v50 = *v602;
    v655 = *(v602 + 8);
    v51 = *(v602 + 32);
    v656 = *(v602 + 24);
    v603 = v50;
    v653 = *(v602 + 40);
    v654 = *(v602 + 56);
    *&v609 = v50 >> 11;
    *&v637 = v50 >> 11;
    v711[0] = v51 >> 11;
    v606 = v51;
    v600 = (v51 >> 11);
    if (v51 < 0x800)
    {
      v605 = MEMORY[0x1E69E7CD0];
      v607 = MEMORY[0x1E69E7CC8];
      goto LABEL_65;
    }

    v52 = (v51 >> 11) - 1;
    v53 = *(v9 + 72);
    i = *(v9 + 80);
    v55 = *(v9 + 88);
    v54 = *(v9 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v52, 0, v53, i, v55, v54) == v54)
    {
      v58 = v56;
      v4 = v57;
      if (v53)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v54, v56, v57, v53, i);
        swift_unknownObjectRelease();
      }

      v59 = *(v9 + 72);
      v60 = *(v9 + 80);
      v61 = *(v9 + 88);
      v62 = *(v9 + 96);
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v54, v58, v4, v59, v60, v61, v62);
      v605 = v63;
      v53 = v64;
      swift_unknownObjectRelease();
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

      v66 = *(v53 + 32);
      i = ((1 << v66) + 63) >> 6;
      if ((v66 & 0x3Fu) <= 0xD)
      {
        goto LABEL_43;
      }
    }

    else
    {
      __break(1u);
    }

    v566 = v53;

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_43:
      v595 = i;
      v597 = &v571;
      MEMORY[0x1EEE9AC00](v65);
      v596 = (&v571 - ((v67 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v596, v67);
      v604 = 0;
      v9 = 0;
      v68 = v53 + 64;
      v69 = 1 << *(v53 + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & *(v53 + 64);
      v4 = ((v69 + 63) >> 6);
      v35 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
      *&v608 = v53;
      while (v71)
      {
        v72 = __clz(__rbit64(v71));
        v71 &= v71 - 1;
LABEL_54:
        v75 = v72 | (v9 << 6);
        v76 = (*(v53 + 48) + 16 * v75);
        v77 = *v76;
        v78 = v76[1];
        outlined init with copy of AttributedString._AttributeValue(*(v53 + 56) + 72 * v75, &v628);
        *&v621 = v77;
        *(&v621 + 1) = v78;
        outlined init with copy of AttributedString._AttributeValue(&v628, &v622);
        outlined init with copy of FloatingPointRoundingRule?(&v621, &v614, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
        i = *(&v614 + 1);
        swift_bridgeObjectRetain_n();

        if (v619)
        {
          i = specialized Set.contains(_:)(0, 0, v619);
          outlined destroy of TermOfAddress?(&v621, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          outlined destroy of AttributedString._AttributeValue(&v615);
          outlined destroy of AttributedString._AttributeValue(&v628);

          v53 = v608;
          if (i)
          {
            *(v596 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v75;
            v48 = __OFADD__(v604++, 1);
            if (v48)
            {
              __break(1u);
              goto LABEL_59;
            }
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(&v621, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          outlined destroy of AttributedString._AttributeValue(&v615);
          outlined destroy of AttributedString._AttributeValue(&v628);

          v53 = v608;
        }
      }

      v73 = v9;
      while (1)
      {
        v9 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_460;
        }

        if (v9 >= v4)
        {
          break;
        }

        v74 = *(v68 + 8 * v9);
        ++v73;
        if (v74)
        {
          v72 = __clz(__rbit64(v74));
          v71 = (v74 - 1) & v74;
          goto LABEL_54;
        }
      }

LABEL_59:
      v21 = v604;
      if (v604)
      {
        if (v604 == *(v53 + 16))
        {

          v607 = v53;
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
          v128 = static _DictionaryStorage.allocate(capacity:)();
          v129 = 0;
          v9 = *v596;
          v607 = v128;
          i = (v128 + 8);
          do
          {
            if (v9)
            {
              v604 = v21;
              v134 = __clz(__rbit64(v9));
              v9 &= v9 - 1;
            }

            else
            {
              v135 = v129;
              v9 = v610;
              do
              {
                v129 = v135 + 1;
                if (__OFADD__(v135, 1))
                {
                  goto LABEL_523;
                }

                if (v129 >= v595)
                {
                  goto LABEL_64;
                }

                v136 = v596[v129];
                ++v135;
              }

              while (!v136);
              v604 = v21;
              v134 = __clz(__rbit64(v136));
              v9 = (v136 - 1) & v136;
            }

            v137 = v134 | (v129 << 6);
            v138 = (*(v53 + 48) + 16 * v137);
            v21 = *v138;
            v139 = v138[1];
            outlined init with copy of AttributedString._AttributeValue(*(v53 + 56) + 72 * v137, &v621);
            v616 = v623;
            v617 = v624;
            *&v618 = v625;
            v614 = v621;
            v615 = v622;
            v4 = v607;
            Hasher.init(_seed:)();

            String.hash(into:)();
            v19 = &v628;
            v140 = Hasher._finalize()();
            v141 = -1 << *(v4 + 32);
            v142 = v140 & ~v141;
            v143 = v142 >> 6;
            if (((-1 << v142) & ~*(i + 8 * (v142 >> 6))) != 0)
            {
              v130 = __clz(__rbit64((-1 << v142) & ~*(i + 8 * (v142 >> 6)))) | v142 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v144 = 0;
              v145 = (63 - v141) >> 6;
              do
              {
                if (++v143 == v145 && (v144 & 1) != 0)
                {
                  goto LABEL_529;
                }

                v146 = v143 == v145;
                if (v143 == v145)
                {
                  v143 = 0;
                }

                v144 |= v146;
                v147 = *(i + 8 * v143);
              }

              while (v147 == -1);
              v130 = __clz(__rbit64(~v147)) + (v143 << 6);
            }

            *(i + ((v130 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v130;
            v131 = v607;
            v132 = (v607[6] + 16 * v130);
            *v132 = v21;
            v132[1] = v139;
            v133 = v131[7] + 72 * v130;
            *(v133 + 16) = v615;
            *(v133 + 32) = v616;
            *(v133 + 48) = v617;
            *(v133 + 64) = v618;
            *v133 = v614;
            ++v131[2];
            v21 = v604 - 1;
          }

          while (v604 != 1);
        }
      }

      else
      {
        v607 = MEMORY[0x1E69E7CC8];
      }

      v9 = v610;
    }

    else
    {
      v383 = swift_slowAlloc();

      v569 = v593;
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v383, i, v566, specialized thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error));
      v607 = v570;
      v593 = v569;
      if (v569)
      {
        goto LABEL_588;
      }

      MEMORY[0x1865D2690](v383, -1, -1);
    }

LABEL_64:

LABEL_65:
    v715[0] = *(v9 + 24);
    v715[1] = *(v9 + 40);
    v715[2] = *(v9 + 56);
    v19 = v715;
    v79 = BigString.UTF8View.count.getter();
    v21 = v609;
    if (v609 >= v79)
    {
      goto LABEL_152;
    }

    v80 = *(v9 + 72);
    i = *(v9 + 80);
    v82 = *(v9 + 88);
    v81 = *(v9 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v21, 0, v80, i, v82, v81) != v81)
    {
      __break(1u);
LABEL_562:
      __break(1u);
LABEL_563:
      __break(1u);
LABEL_564:
      __break(1u);
      goto LABEL_565;
    }

    v85 = v83;
    v86 = v84;
    if (v80)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v81, v83, v84, v80, i);
      swift_unknownObjectRelease();
    }

    v87 = *(v9 + 72);
    v88 = *(v9 + 80);
    v89 = *(v9 + 88);
    v90 = *(v9 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v81, v85, v86, v87, v88, v89, v90);
    v604 = v91;
    swift_unknownObjectRelease();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    v93 = v593;
    i = specialized Dictionary.filter(_:)(v92);
    v593 = v93;

    swift_bridgeObjectRelease_n();
    v4 = 0;
    *&v614 = MEMORY[0x1865CB700](*(i + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    *&v608 = i;
    v94 = 1 << *(i + 32);
    v95 = -1;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    v96 = i + 64;
    v97 = v95 & *(i + 64);
    v35 = (v94 + 63) >> 6;
    if (v97)
    {
      while (1)
      {
        v98 = v4;
LABEL_77:
        v99 = __clz(__rbit64(v97));
        v97 &= v97 - 1;
        v100 = (*(v608 + 48) + ((v98 << 10) | (16 * v99)));
        v101 = *v100;
        i = v100[1];

        specialized Set._Variant.insert(_:)(&v621, v101, i);

        if (!v97)
        {
          goto LABEL_73;
        }
      }
    }

    while (1)
    {
LABEL_73:
      v98 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_461;
      }

      if (v98 >= v35)
      {
        break;
      }

      v97 = *(v96 + 8 * v98);
      v4 = (v4 + 1);
      if (v97)
      {
        v4 = v98;
        goto LABEL_77;
      }
    }

    *&v628 = v614;
    v103 = *(v9 + 72);
    v102 = *(v9 + 80);
    v19 = *(v9 + 88);
    v104 = *(v9 + 96);
    swift_unknownObjectRetain();

    if (v603 <= 0x7FF)
    {
      if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v103, v102, v19, v104) == v104)
      {
        v108 = v105;
        v109 = v106;
        i = v107;
        if (v103)
        {
          v102 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v104, v105, v106, v103, v102);
          swift_unknownObjectRelease();
          v19 = -i;
          if (!__OFSUB__(0, i))
          {
            goto LABEL_127;
          }
        }

        else
        {
          v102 = 0;
          v19 = -v107;
          if (!__OFSUB__(0, v107))
          {
            goto LABEL_127;
          }
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_575:
      __break(1u);
LABEL_576:
      __break(1u);
      goto LABEL_577;
    }

    v108 = specialized Rope._endPath.getter(v103);
    if (v103)
    {
      swift_unknownObjectRelease();
      v109 = 0;
    }

    else
    {
      v109 = 0;
      v102 = 0;
      v19 = 0;
    }

LABEL_127:
    *&v621 = v104;
    *(&v621 + 1) = v108;
    *&v622 = v109;
    *(&v622 + 1) = v102;
    *&v623 = v19;
    v148 = v610[9];
    v21 = v610[10];
    v149 = v610[11];
    v9 = v610[12];
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v148, v21, v149, v9) != v9)
    {
      goto LABEL_463;
    }

    v153 = v152;
    while (2)
    {
      if (v148)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v9, v150, v151, v148, v21);
        swift_unknownObjectRelease();
      }

      if (__OFSUB__(0, v153))
      {
        goto LABEL_515;
      }

      if (-v153 < v19 && *(v628 + 16))
      {
        v21 = v610[9];
        if (v21)
        {
          if (v19 == v610[11])
          {
LABEL_138:
            v19 = v610[10];
            i = v610[11];
            v160 = v610[12];
            swift_unknownObjectRetain();
            if (specialized Rope.find<A>(at:in:preferEnd:)(v609, 1, v21, v19, i, v160) != v160)
            {
              goto LABEL_531;
            }

            v9 = v161;
            v164 = v162;
            v4 = v163;
            if (v21)
            {
              v165 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v160, v161, v162, v21, v19);
              swift_unknownObjectRelease();
            }

            else
            {
              v165 = 0;
            }

            v154 = v609 - v4;
            if (__OFSUB__(v609, v4))
            {
              __break(1u);
              break;
            }

            goto LABEL_130;
          }
        }

        else if (!v19)
        {
          goto LABEL_138;
        }

        v35 = v610[10];
        v4 = v610[11];
        v160 = v610[12];
        v614 = v621;
        *&v615 = v622;
        v165 = *(&v622 + 1) - 1;
        if (__OFSUB__(*(&v622 + 1), 1))
        {
          goto LABEL_524;
        }

        swift_unknownObjectRetain();
        specialized Rope.formIndex(before:)(&v614, v21, v35, v4, v160);
        if (v614 != v160)
        {
          goto LABEL_525;
        }

        v9 = *(&v614 + 1);
        v164 = v615;
        if (v615)
        {
          i = *(v615 + 24 * ((*(&v614 + 1) >> ((4 * *(v615 + 18) + 8) & 0x3C)) & 0xFLL) + 24);

          swift_unknownObjectRelease();
          v154 = v19 - i;
          if (__OFSUB__(v19, i))
          {
            goto LABEL_532;
          }
        }

        else
        {
          i = specialized Rope._Node.subscript.getter(*(&v614 + 1), v21);
          v4 = v166;
          v35 = v167;
          swift_unknownObjectRelease();

          v154 = v19 - i;
          if (__OFSUB__(v19, i))
          {
            goto LABEL_538;
          }

          v164 = 0;
        }

LABEL_130:
        *&v621 = v160;
        *(&v621 + 1) = v9;
        *&v622 = v164;
        *(&v622 + 1) = v165;
        *&v623 = v154;
        v155 = v608;

        v156 = v604;

        i = v610;
        specialized AttributedString.Guts.updateRun(at:within:with:)(&v621, 0, v609, v610, &v628, v155, v156, &v637);

        v19 = v623;
        v148 = *(i + 72);
        v21 = *(i + 80);
        v157 = *(i + 88);
        v9 = *(i + 96);
        swift_unknownObjectRetain();
        v158 = specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v148, v21, v157, v9);
        v153 = v159;
        if (v158 != v9)
        {
          goto LABEL_463;
        }

        continue;
      }

      break;
    }

    v9 = v610;

LABEL_152:
    if (v606 < 0x800)
    {

      goto LABEL_203;
    }

    v168 = v607;
    v169 = v607[2];

    v4 = 0;
    *&v614 = MEMORY[0x1865CB700](v169, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v172 = v168[8];
    v171 = v168 + 8;
    v170 = v172;
    v173 = 1 << *(v171 - 32);
    v174 = -1;
    if (v173 < 64)
    {
      v174 = ~(-1 << v173);
    }

    v175 = v174 & v170;
    v35 = (v173 + 63) >> 6;
    if ((v174 & v170) != 0)
    {
      while (1)
      {
        v176 = v4;
LABEL_162:
        v177 = __clz(__rbit64(v175));
        v175 &= v175 - 1;
        v178 = (v607[6] + ((v176 << 10) | (16 * v177)));
        v179 = *v178;
        i = v178[1];

        specialized Set._Variant.insert(_:)(&v621, v179, i);

        if (!v175)
        {
          goto LABEL_158;
        }
      }
    }

    while (1)
    {
LABEL_158:
      v176 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_462;
      }

      if (v176 >= v35)
      {
        break;
      }

      v175 = v171[v176];
      v4 = (v4 + 1);
      if (v175)
      {
        v4 = v176;
        goto LABEL_162;
      }
    }

    *&v628 = v614;
    v712 = *(v9 + 24);
    v713 = *(v9 + 40);
    v714 = *(v9 + 56);
    *&v608 = BigString.UTF8View.count.getter();
    v19 = v600;
    if (v608 < v600)
    {
      goto LABEL_562;
    }

    v21 = *(v9 + 72);
    v180 = *(v9 + 80);
    v182 = *(v9 + 88);
    v181 = *(v9 + 96);
    swift_unknownObjectRetain();

    if (specialized Rope.find<A>(at:in:preferEnd:)(v19, 0, v21, v180, v182, v181) != v181)
    {
      goto LABEL_563;
    }

    v4 = v183;
    v186 = v184;
    i = v185;
    if (v21)
    {
      v187 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v181, v183, v184, v21, v180);
      swift_unknownObjectRelease();
      v188 = v19 - i;
      if (!__OFSUB__(v19, i))
      {
        goto LABEL_168;
      }

LABEL_277:
      __break(1u);
LABEL_278:
      v598 = 0;
      goto LABEL_279;
    }

    v187 = 0;
    v188 = v19 - v185;
    if (__OFSUB__(v19, v185))
    {
      goto LABEL_277;
    }

LABEL_168:
    *&v621 = v181;
    *(&v621 + 1) = v4;
    *&v622 = v186;
    *(&v622 + 1) = v187;
LABEL_171:
    *&v623 = v188;
    v190 = *(v9 + 72);
    if (v19 == v608)
    {
      i = *(v9 + 80);
      v21 = *(v9 + 88);
      v4 = *(v9 + 96);
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v19, 0, v190, i, v21, v4) != v4)
      {
        goto LABEL_526;
      }

      v194 = v193;
      if (v190)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v4, v191, v192, v190, i);
        swift_unknownObjectRelease();
      }

      if (__OFSUB__(v19, v194))
      {
        goto LABEL_527;
      }

      if (v188 >= (v19 - v194))
      {
        goto LABEL_202;
      }
    }

    else if (v190)
    {
      if (v188 >= *(v9 + 88))
      {
        goto LABEL_202;
      }
    }

    else if (v188 >= 0)
    {
      goto LABEL_202;
    }

    if (!*(v628 + 16))
    {
      goto LABEL_202;
    }

    i = v607;

    v195 = v605;

    specialized AttributedString.Guts.updateRun(at:within:with:)(&v621, v19, v608, v9, &v628, i, v195, v711);

    v196 = *(&v621 + 1);
    v21 = v621;
    v19 = v623;
    v4 = *(v9 + 72);
    v197 = *(v9 + 80);
    v199 = *(v9 + 88);
    v198 = *(v9 + 96);
    v614 = v621;
    *&v615 = v622;
    v200 = *(&v622 + 1) + 1;
    if (__OFADD__(*(&v622 + 1), 1))
    {
      goto LABEL_516;
    }

    if (v621 != v198)
    {
LABEL_517:
      __break(1u);
LABEL_518:
      __break(1u);
LABEL_519:
      __break(1u);
LABEL_520:
      __break(1u);
LABEL_521:
      __break(1u);
LABEL_522:
      __break(1u);
LABEL_523:
      __break(1u);
LABEL_524:
      __break(1u);
LABEL_525:
      __break(1u);
LABEL_526:
      __break(1u);
LABEL_527:
      __break(1u);
LABEL_528:
      __break(1u);
LABEL_529:
      __break(1u);
LABEL_530:
      __break(1u);
LABEL_531:
      __break(1u);
LABEL_532:
      __break(1u);
LABEL_533:
      __break(1u);
LABEL_534:
      __break(1u);
LABEL_535:
      __break(1u);
LABEL_536:
      __break(1u);
LABEL_537:
      __break(1u);
LABEL_538:
      __break(1u);
LABEL_539:
      __break(1u);
LABEL_540:
      __break(1u);
LABEL_541:
      __break(1u);
LABEL_542:
      __break(1u);
LABEL_543:
      __break(1u);
LABEL_544:
      __break(1u);
LABEL_545:
      __break(1u);
LABEL_546:
      __break(1u);
LABEL_547:
      __break(1u);
LABEL_548:
      __break(1u);
LABEL_549:
      __break(1u);
LABEL_550:
      __break(1u);
LABEL_551:
      __break(1u);
LABEL_552:
      __break(1u);
LABEL_553:
      __break(1u);
LABEL_554:
      __break(1u);
      continue;
    }

    break;
  }

  if (v622)
  {
    v201 = (v622 + 24 * ((*(&v621 + 1) >> ((4 * *(v622 + 18) + 8) & 0x3C)) & 0xFLL));
    v202 = v201[3];
    i = v201[4];
    v9 = v201[5];
    swift_unknownObjectRetain();
  }

  else
  {
    swift_unknownObjectRetain();
    v202 = specialized Rope._Node.subscript.getter(v196, v4);
    i = v203;
    v9 = v204;
  }

  v48 = __OFADD__(v19, v202);
  v188 = v19 + v202;
  if (v48)
  {
    goto LABEL_518;
  }

  specialized Rope.formIndex(after:)(&v614, v4, v197, v199, v21);
  swift_unknownObjectRelease();
  if (v188 < v608)
  {
    v189 = *(&v614 + 1);
    v21 = v614;
    v4 = v615;
    v9 = v610;
    v19 = v600;
    goto LABEL_170;
  }

  v9 = v610;
  v205 = v610[9];
  v19 = v600;
  if (v600 != v608)
  {
    v21 = v610[12];
    if (v205)
    {
      v4 = 0;
      v200 = v610[10];
      v188 = v610[11];
      v189 = ((-15 << ((4 * *(v205 + 18) + 8) & 0x3C)) - 1) & *(v205 + 18) | (*(v205 + 16) << ((4 * *(v205 + 18) + 8) & 0x3C));
    }

    else
    {
      v189 = 0;
      v4 = 0;
      v200 = 0;
      v188 = 0;
    }

    goto LABEL_170;
  }

  v206 = v610[10];
  i = v610[11];
  v21 = v610[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v19, 0, v205, v206, i, v21) != v21)
  {
    goto LABEL_537;
  }

  v189 = v207;
  v4 = v208;
  v210 = v209;
  if (v205)
  {
    v200 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v21, v207, v208, v205, v206);
    swift_unknownObjectRelease();
    v48 = __OFSUB__(v19, v210);
    v188 = v19 - v210;
    if (v48)
    {
      goto LABEL_201;
    }

    goto LABEL_170;
  }

  v200 = 0;
  v188 = v19 - v209;
  if (!__OFSUB__(v19, v209))
  {
LABEL_170:
    *&v621 = v21;
    *(&v621 + 1) = v189;
    *&v622 = v4;
    *(&v622 + 1) = v200;
    goto LABEL_171;
  }

LABEL_201:
  __break(1u);
LABEL_202:

LABEL_203:

  if (v711[0] < v637)
  {
    goto LABEL_539;
  }

  v597 = v711[0];
  v588 = v637;
  v211 = *(v9 + 104);
  v212 = specialized Array.count.getter();
  if (v212 < 0)
  {
    goto LABEL_540;
  }

  v19 = v212;
  if (v212)
  {
    i = 0;
    v21 = v603 >> 10;
    v4 = (v606 >> 10);
    v35 = 88;
    v607 = v212;
    *&v608 = v606 >> 10;
    while (1)
    {
      if (i >= *(v211 + 2))
      {
        goto LABEL_456;
      }

      v215 = *&v211[v35 - 56];
      v216 = v21 >= v215 >> 10 || v215 >> 10 >= v4;
      v217 = !v216;
      v218 = *&v211[v35 - 24];
      v219 = v218 >> 10;
      if (v21 >= v218 >> 10)
      {
        break;
      }

      if (v217)
      {
        if (v219 < v4)
        {
          v621 = v655;
          *&v622 = v656;
          v614 = v655;
          *&v615 = v656;
          v220 = swift_isUniquelyReferenced_nonNull_native();
          *(v9 + 104) = v211;
          if ((v220 & 1) == 0)
          {
            v211 = specialized _ArrayBuffer._consumeAndCreateNew()(v211);
          }

          if (i >= *(v211 + 2))
          {
            goto LABEL_535;
          }

          v221 = &v211[v35];
          v222 = v603;
          *(v221 - 7) = v603;
          v223 = v622;
          *(v221 - 3) = v621;
          *(v221 - 4) = v223;
          *(v221 - 3) = v222;
          v224 = v614;
          *v221 = v615;
          *(v221 - 1) = v224;
          *(v9 + 104) = v211;
          goto LABEL_208;
        }

        goto LABEL_224;
      }

      if (v219 < v4)
      {
        v19 = *&v211[v35 - 48];
        v229 = *&v211[v35 - 40];
        v230 = v9;
        v9 = *&v211[v35 - 32];
        v621 = v655;
        *&v622 = v656;
        v231 = swift_isUniquelyReferenced_nonNull_native();
        *(v230 + 104) = v211;
        if ((v231 & 1) == 0)
        {
          v211 = specialized _ArrayBuffer._consumeAndCreateNew()(v211);
        }

        v4 = v608;
        if (i >= *(v211 + 2))
        {
          goto LABEL_536;
        }

        v213 = &v211[v35];
        *(v213 - 7) = v215;
        *(v213 - 6) = v19;
        *(v213 - 5) = v229;
        *(v213 - 4) = v9;
        *(v213 - 3) = v603;
        v214 = v621;
        *v213 = v622;
        *(v213 - 1) = v214;
        v9 = v610;
        v610[13] = v211;
        v19 = v607;
      }

LABEL_208:
      ++i;
      v35 += 64;
      if (v19 == i)
      {
        goto LABEL_233;
      }
    }

    if (!v217)
    {
      goto LABEL_208;
    }

LABEL_224:
    v225 = *&v211[v35 - 16];
    v4 = *&v211[v35 - 8];
    v19 = *&v211[v35];
    v621 = v653;
    *&v622 = v654;
    v226 = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 104) = v211;
    if ((v226 & 1) == 0)
    {
      v211 = specialized _ArrayBuffer._consumeAndCreateNew()(v211);
    }

    if (i >= *(v211 + 2))
    {
      goto LABEL_519;
    }

    v227 = &v211[v35];
    *(v227 - 7) = v606;
    v228 = v622;
    *(v227 - 3) = v621;
    *(v227 - 4) = v228;
    *(v227 - 3) = v218;
    *(v227 - 2) = v225;
    *(v227 - 1) = v4;
    *v227 = v19;
    v9 = v610;
    v610[13] = v211;
    v19 = v607;
    v4 = v608;
    goto LABEL_208;
  }

LABEL_233:
  v233 = *(v9 + 32);
  v4 = *(v9 + 40);
  v234 = *(v9 + 48);
  v235 = *(v9 + 56);
  v236 = *(v9 + 64);
  v711[0] = *(v9 + 24);
  v232 = v711[0];
  v711[1] = v233;
  v711[2] = v4;
  v711[3] = v234;
  v711[4] = v235;
  v711[5] = v236;
  *&v608 = BigString.UTF8View.count.getter();
  v237 = v601;
  v238 = *(v601 + 24);
  v624 = *(v601 + 8);
  v625 = v238;
  v239 = *(v601 + 56);
  v626 = *(v601 + 40);
  v627 = v239;
  *&v621 = v232;
  *(&v621 + 1) = v233;
  *&v622 = v4;
  *(&v622 + 1) = v234;
  *&v623 = v235;
  *(&v623 + 1) = v236;
  swift_unknownObjectRetain();
  BigString.init()();
  v240 = v643;
  *(v9 + 24) = v642;
  *(v9 + 40) = v240;
  *(v9 + 56) = v644;
  swift_unknownObjectRelease();
  v614 = v599;

  i = &_ss15CollectionOfOneVySJGMR;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVySJGMd, &_ss15CollectionOfOneVySJGMR);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type CollectionOfOne<Character> and conformance CollectionOfOne<A>, &_ss15CollectionOfOneVySJGMd, &_ss15CollectionOfOneVySJGMR, MEMORY[0x1E69E6BD0]);
  v21 = v608;
  BigSubstring.replaceSubrange<A>(_:with:)();
  *(v9 + 24) = v621;
  *(v9 + 40) = v622;
  *(v9 + 56) = v623;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v241 = v625;
  *(v237 + 8) = v624;
  *(v237 + 24) = v241;
  v242 = v627;
  *(v237 + 40) = v626;
  *(v237 + 56) = v242;
  v710[0] = *(v9 + 24);
  v710[1] = *(v9 + 40);
  v710[2] = *(v9 + 56);
  v19 = v710;
  v243 = BigString.UTF8View.count.getter();
  v244 = v243 - v21;
  if (__OFSUB__(v243, v21))
  {
    goto LABEL_541;
  }

  if (__OFADD__(v600 - v609, v244))
  {
    goto LABEL_542;
  }

  i = MEMORY[0x1E69E7CD0];
  v9 = v610;
  specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v609, v600, v600 + v244 - v609, v598, MEMORY[0x1E69E7CD0]);

  v709[0] = *(v9 + 24);
  v709[1] = *(v9 + 40);
  v709[2] = *(v9 + 56);
  v19 = v709;
  v245 = BigString.UTF8View.count.getter();
  v246 = v245 - v21;
  if (__OFSUB__(v245, v21))
  {
    goto LABEL_543;
  }

  v19 = *(v9 + 104);
  v247 = specialized Array.count.getter();
  if (v247 < 0)
  {
    goto LABEL_544;
  }

  if (v247)
  {
    v248 = 0;
    v35 = 88;
    v249 = v609;
    v601 = v246;
    *(&v599 + 1) = v247;
    do
    {
      if (v248 >= *(v19 + 16))
      {
        goto LABEL_457;
      }

      v605 = v35;
      v606 = v248;
      v250 = *(v19 + v35 - 56);
      v4 = *(v19 + v35 - 48);
      v21 = *(v19 + v35 - 24);
      v251 = *(v19 + v35 - 16);
      v252 = *(v19 + v35 - 8);
      v603 = *(v19 + v35);
      v604 = v252;
      v253 = (v250 >> 11);
      v602 = v251;
      if (v249 >= v250 >> 11)
      {
        if (v600 != v249 || (v253 == v249 ? (v254 = v246 == 0) : (v254 = 1), v254))
        {
LABEL_250:
          v700 = *(v610 + 3);
          v701 = *(v610 + 5);
          v702 = *(v610 + 7);
          i = v700;
          swift_unknownObjectRetain();
          v19 = BigString.UTF8View.index(_:offsetBy:)();
          v4 = v261;
          v259 = v262;
          *&v608 = v263;
          swift_unknownObjectRelease();
          goto LABEL_251;
        }
      }

      else if (!v246)
      {
        goto LABEL_250;
      }

      v255 = *(v610 + 3);
      v707 = *(v610 + 5);
      v708 = *(v610 + 7);
      v706 = v255;
      v703 = *(v610 + 3);
      v704 = *(v610 + 5);
      v705 = *(v610 + 7);
      v19 = &v706;
      BigString.startIndex.getter();
      v9 = v253 + v246;
      if (__OFADD__(v253, v246))
      {
        __break(1u);
LABEL_508:
        __break(1u);
LABEL_509:
        __break(1u);
LABEL_510:
        __break(1u);
LABEL_511:
        __break(1u);
LABEL_512:
        __break(1u);
LABEL_513:
        __break(1u);
LABEL_514:
        __break(1u);
LABEL_515:
        __break(1u);
LABEL_516:
        __break(1u);
        goto LABEL_517;
      }

      i = v256;
      v724[0] = v706;
      v724[1] = v707;
      v725 = v708;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v724, &v614);
      v19 = BigString.UTF8View.index(_:offsetBy:)();
      v4 = v257;
      v259 = v258;
      *&v608 = v260;
      outlined destroy of BigString(&v706);
      v246 = v601;
LABEL_251:
      v9 = v21 >> 11;
      v35 = v605;
      v264 = v606;
      v607 = v19;
      if (v609 >= v21 >> 11)
      {
        v269 = v610[13];
        if (v606 >= *(v269 + 16))
        {
          goto LABEL_514;
        }

        if ((*(v269 + v605 - 56) ^ v19) >= 0x400 && v246 != 0)
        {
LABEL_253:
          v265 = *(v610 + 3);
          v698 = *(v610 + 5);
          v699 = *(v610 + 7);
          v697 = v265;
          v696[6] = *(v610 + 3);
          v696[7] = *(v610 + 5);
          v696[8] = *(v610 + 7);
          v19 = &v697;
          BigString.startIndex.getter();
          v48 = __OFADD__(v9, v246);
          v9 += v246;
          if (v48)
          {
            goto LABEL_508;
          }

          v726[0] = v697;
          v726[1] = v698;
          v727 = v699;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v726, &v614);
          v21 = BigString.UTF8View.index(_:offsetBy:)();
          i = v266;
          v603 = v268;
          v604 = v267;
          outlined destroy of BigString(&v697);
          v9 = v610;
          v246 = v601;
          v35 = v605;
          v264 = v606;
          goto LABEL_262;
        }
      }

      else if (v246)
      {
        goto LABEL_253;
      }

      v9 = v610;
      v696[3] = *(v610 + 3);
      v696[4] = *(v610 + 5);
      v696[5] = *(v610 + 7);
      swift_unknownObjectRetain();
      v607 = BigString.UTF8View.index(_:offsetBy:)();
      *&v608 = v271;
      v4 = v272;
      v259 = v273;
      swift_unknownObjectRelease();
      i = v602;
LABEL_262:
      v19 = *(v9 + 104);
      v274 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 104) = v19;
      if ((v274 & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      }

      v249 = v609;
      if (v264 >= *(v19 + 16))
      {
        goto LABEL_458;
      }

      v248 = v264 + 1;
      v275 = (v19 + v35);
      *(v275 - 7) = v607;
      *(v275 - 6) = v4;
      v276 = v608;
      *(v275 - 5) = v259;
      *(v275 - 4) = v276;
      *(v275 - 3) = v21;
      *(v275 - 2) = i;
      *(v275 - 1) = v604;
      *v275 = v603;
      v35 += 64;
      *(v9 + 104) = v19;
    }

    while (*(&v599 + 1) != v248);
  }

  if (__OFADD__(v597, v246))
  {
    goto LABEL_545;
  }

  if ((v597 + v246) < v588)
  {
    goto LABEL_546;
  }

  v584 = v597 + v246;
  v277 = *(v9 + 80);
  v278 = *(v9 + 88);
  v279 = swift_unknownObjectRetain();
  LOBYTE(v277) = specialized Collection.isEmpty.getter(v279, v277, v278);
  swift_unknownObjectRelease();
  if (v277)
  {
    goto LABEL_269;
  }

  v281 = *(v9 + 24);
  v696[1] = *(v9 + 40);
  v696[2] = *(v9 + 56);
  v696[0] = v281;
  v693 = *(v9 + 24);
  v694 = *(v9 + 40);
  v695 = *(v9 + 56);
  v282 = *(v9 + 24);
  v728[1] = *(v9 + 40);
  v729 = *(v9 + 56);
  v728[0] = v282;
  BigString.startIndex.getter();
  i = v283;
  v4 = v284;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v728, &v614);
  v285 = v588;
  v286 = BigString.UTF8View.index(_:offsetBy:)();
  v288 = v287;
  v290 = v289;
  v292 = v291;
  outlined destroy of BigString(v696);
  v690 = *(v9 + 24);
  v691 = *(v9 + 40);
  v692 = *(v9 + 56);
  if (__OFSUB__(v584, v285))
  {
    goto LABEL_564;
  }

  swift_unknownObjectRetain();
  v293 = BigString.UTF8View.index(_:offsetBy:)();
  v579 = v294;
  v580 = v293;
  v577 = v296;
  v578 = v295;
  swift_unknownObjectRelease();
  v583 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySnySiGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v687 = *(v9 + 24);
  v688 = *(v9 + 40);
  v689 = *(v9 + 56);
  swift_unknownObjectRetain();
  v575 = v288;
  v576 = v286;
  v573 = v290;
  v574 = v292;
  v297 = BigString.UnicodeScalarView.index(roundingDown:)();
  v187 = v298;
  v300 = v299;
  v581 = v301;
  swift_unknownObjectRelease();
  v684 = *(v9 + 24);
  v685 = *(v9 + 40);
  v686 = *(v9 + 56);
  v4 = v579;
  swift_unknownObjectRetain();
  v302 = BigString.UnicodeScalarView.index(roundingUp:)();
  v188 = v297;
  swift_unknownObjectRelease();
  i = v297 >> 11;
  if (v302 >> 11 < i)
  {
LABEL_565:
    __break(1u);
    goto LABEL_566;
  }

  v592 = v300;
  v602 = v302 >> 11;
  v303 = *(v9 + 72);
  v304 = *(v9 + 80);
  v305 = *(v9 + 88);
  v4 = *(v9 + 96);
  swift_unknownObjectRetain();
  swift_retain_n();
  *&v599 = i;
  if (specialized Rope.find<A>(at:in:preferEnd:)(i, 0, v303, v304, v305, v4) != v4)
  {
LABEL_566:
    __break(1u);
LABEL_567:
    __break(1u);
LABEL_568:
    __break(1u);
LABEL_569:
    v383 = swift_slowAlloc();

    v567 = v593;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v383, i, v4, closure #1 in AttributedString._AttributeStorage.attributesForAddedText());
    v593 = v567;
    if (!v567)
    {
      i = v568;

      MEMORY[0x1865D2690](v383, -1, -1);
      v19 = i;
      goto LABEL_36;
    }

    goto LABEL_588;
  }

  v186 = v308;
  v600 = v306;
  v601 = v4;
  *(&v599 + 1) = v307;
  if (!v303)
  {
    goto LABEL_278;
  }

  v598 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v4, v306, v307, v303, v304);
  swift_unknownObjectRelease();
LABEL_279:
  v309 = v188;

  v4 = v599;
  if (__OFSUB__(v599, v186))
  {
    goto LABEL_567;
  }

  v605 = v599 - v186;
  v587 = v583;
LABEL_281:
  v21 = v187;
  v597 = v592;
  v595 = v309;
  v596 = v581;
  while (1)
  {
    v310 = *(v9 + 72);
    v311 = *(v9 + 80);
    v19 = *(v9 + 88);
    v312 = *(v9 + 96);
    swift_unknownObjectRetain();
    if (v4 == v602)
    {
      if (specialized Rope.find<A>(at:in:preferEnd:)(v4, 0, v310, v311, v19, v312) != v312)
      {
        goto LABEL_520;
      }

      i = v315;
      if (v310)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v312, v313, v314, v310, v311);
        swift_unknownObjectRelease();
      }

      v19 = v4 - i;
      if (__OFSUB__(v4, i))
      {
        goto LABEL_521;
      }
    }

    else
    {
      specialized Rope._endPath.getter(v310);
      if (v310)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
      }
    }

    if (v605 == v19)
    {
      break;
    }

    v316 = *(v9 + 72);
    v317 = *(v9 + 80);
    v318 = *(v9 + 88);
    v319 = *(v9 + 96);
    swift_unknownObjectRetain();
    v320 = v600;
    v4 = v601;
    v321 = *(&v599 + 1);
    specialized Rope.subscript.getter(v601, v600, *(&v599 + 1), v316, v317, v318, v319);
    v604 = v322;
    v591 = v323;
    swift_unknownObjectRelease();
    v19 = *(v9 + 72);
    v324 = *(v9 + 80);
    v325 = *(v9 + 88);
    v326 = *(v9 + 96);
    swift_unknownObjectRetain();
    v327 = specialized Rope.subscript.getter(v4, v320, v321, v19, v324, v325, v326);
    i = v328;
    swift_unknownObjectRelease();

    v329 = (v605 + v327);
    if (__OFADD__(v605, v327))
    {
      goto LABEL_509;
    }

    if (v602 >= v605)
    {
      v330 = v605;
    }

    else
    {
      v330 = v602;
    }

    if (v605 < v599)
    {
      v330 = v599;
    }

    if (v329 <= v599)
    {
      v331 = v599;
    }

    else
    {
      v331 = (v605 + v327);
    }

    if (v602 >= v329)
    {
      v332 = v331;
    }

    else
    {
      v332 = v602;
    }

    if (v330 == v332)
    {
      goto LABEL_510;
    }

    if (__OFSUB__(v332, v330))
    {
      goto LABEL_511;
    }

    v594 = v21;
    v19 = *(v9 + 72);
    v333 = *(v9 + 80);
    v335 = *(v9 + 88);
    v334 = *(v9 + 96);
    v4 = v600;
    i = v601;
    *&v614 = v601;
    *(&v614 + 1) = v600;
    v21 = *(&v599 + 1);
    *&v615 = *(&v599 + 1);
    if (__OFADD__(v598, 1))
    {
      goto LABEL_512;
    }

    ++v598;
    swift_unknownObjectRetain();
    i = specialized Rope.subscript.getter(i, v4, v21, v19, v333, v335, v334);
    v4 = v336;

    if (__OFADD__(v605, i))
    {
      goto LABEL_513;
    }

    v605 += i;
    specialized Rope.formIndex(after:)(&v614, v19, v333, v335, v334);
    swift_unknownObjectRelease();
    i = v602;
    if (v605 >= v602)
    {
      v19 = *(v9 + 72);
      v337 = *(v9 + 80);
      v338 = *(v9 + 88);
      v4 = *(v9 + 96);
      swift_unknownObjectRetain();
      v21 = v594;
      v601 = v4;
      if (v599 == i)
      {
        if (specialized Rope.find<A>(at:in:preferEnd:)(v599, 0, v19, v337, v338, v4) != v4)
        {
          goto LABEL_533;
        }

        i = v341;
        *(&v599 + 1) = v340;
        v600 = v339;
        if (v19)
        {
          v598 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v4, v339, v340, v19, v337);
          swift_unknownObjectRelease();
        }

        else
        {
          v598 = 0;
        }

        if (__OFSUB__(v599, i))
        {
          goto LABEL_534;
        }

        v605 = v599 - i;
      }

      else
      {
        v598 = v337;
        v605 = v338;
        v600 = specialized Rope._endPath.getter(v19);
        if (v19)
        {
          swift_unknownObjectRelease();
          *(&v599 + 1) = 0;
        }

        else
        {
          *(&v599 + 1) = 0;
          v598 = 0;
          v605 = 0;
        }
      }
    }

    else
    {
      v600 = *(&v614 + 1);
      v601 = v614;
      *(&v599 + 1) = v615;
    }

    v681 = *(v9 + 24);
    v682 = *(v9 + 40);
    v683 = *(v9 + 56);
    swift_unknownObjectRetain();
    v342 = v595;
    v343 = BigString.UTF8View.index(_:offsetBy:)();
    v21 = v344;
    v592 = v345;
    v347 = v346;
    swift_unknownObjectRelease();
    v348 = v604;

    i = v591;

    v349 = v593;
    v350 = specialized Sequence.contains(where:)(v348);
    v593 = v349;

    if ((v350 & 1) != 0 && v343 >> 10 > v342 >> 10)
    {
      v571 = v343;
      v572 = v21;
      v581 = v347;
      v582 = v343 >> 10;
      v603 = v348 + 64;
LABEL_326:
      v678 = *(v9 + 24);
      v679 = *(v9 + 40);
      v680 = *(v9 + 56);
      swift_unknownObjectRetain();
      v589 = BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      v351 = *(v9 + 40);
      v675 = *(v9 + 24);
      v676 = v351;
      v677 = *(v9 + 56);
      swift_unknownObjectRetain();
      v19 = BigString.UnicodeScalarView.index(after:)();
      v594 = v352;
      v596 = v354;
      v597 = v353;
      swift_unknownObjectRelease();
      v355 = 1 << *(v348 + 32);
      v356 = *(v348 + 64);
      v590 = (v355 + 63) >> 6;
      if (v355 < 64)
      {
        v357 = ~(-1 << v355);
      }

      else
      {
        v357 = -1;
      }

      v21 = v357 & v356;
      v595 = v19;
      v585 = v19 >> 11;
      v586 = (v342 >> 11);

      v9 = 0;
      v358 = v603;
      if (!v21)
      {
LABEL_333:
        if (v590 <= v9 + 1)
        {
          v360 = v9 + 1;
        }

        else
        {
          v360 = v590;
        }

        v361 = v360 - 1;
        while (1)
        {
          v359 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v359 >= v590)
          {
            v376 = 0;
            v372 = 0;
            v375 = 0;
            v373 = 0;
            v374 = 0;
            v367 = 0;
            v368 = 0;
            v369 = 0;
            v370 = 0;
            i = 0;
            v371 = 0;
            v21 = 0;
            v9 = v361;
            goto LABEL_342;
          }

          v21 = *(v358 + 8 * v359);
          ++v9;
          if (v21)
          {
            v9 = v359;
            goto LABEL_341;
          }
        }

        __break(1u);
LABEL_422:

        v611 = 1;
        v448 = v19 >> 10;
        v21 = v580 >> 10;
        if (v19 >> 10 == v580 >> 10)
        {
          v449 = *(v9 + 40);
          v637 = *(v9 + 24);
          v638 = v449;
          v639 = *(v9 + 56);
          if (v448 <= BigString.startIndex.getter() >> 10 || v448 >= BigString.endIndex.getter() >> 10)
          {
            goto LABEL_269;
          }

          if (!__OFSUB__(v588, 1))
          {
            if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v588 - 1, v588) & 1) == 0)
            {
              goto LABEL_269;
            }

            v450 = *(v9 + 24);
            v451 = *(v9 + 56);
            v673 = *(v9 + 40);
            v674 = v451;
            v672 = v450;
            v452 = *(v9 + 24);
            v453 = *(v9 + 40);
            *&v662 = *(v9 + 56);
            v660 = v452;
            v661 = v453;
            outlined init with copy of Rope<BigString._Chunk>._Node?(&v660, &v614);
            v454 = BigString.index(before:)();
            v456 = v455;
            v458 = v457;
            v460 = v459;
            outlined destroy of BigString(&v672);
            v609 = *(v9 + 24);
            v461 = *(v9 + 40);
            v666 = v609;
            v667 = v461;
            v668 = *(v9 + 56);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMR);
            v462 = swift_allocObject();
            _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v462, 1);
            *v463 = 2;
            _NSBundleDeallocatingImmortalBundle();
            *&v608 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
            swift_unknownObjectRetain();

            v464 = *(v9 + 24);
            v465 = *(v9 + 56);
            v670 = *(v9 + 40);
            v671 = v465;
            v669 = v464;
            v466 = *(v9 + 24);
            v467 = *(v9 + 40);
            *&v665 = *(v9 + 56);
            v663 = v466;
            v664 = v467;
            outlined init with copy of Rope<BigString._Chunk>._Node?(&v663, &v614);
            v468 = v454;
            v469 = v456;
            v470 = v458;
            v471 = BigString.index(after:)();
            v473 = v472;
            v475 = v474;
            v477 = v476;
            outlined destroy of BigString(&v669);
            v478 = v468;
            v479 = v468 >> 10;
            if (v479 > v471 >> 10)
            {
              goto LABEL_581;
            }

            *&v609 = v478;
            *&v628 = v478;
            *(&v628 + 1) = v469;
            v629 = v470;
            v630 = v460;
            v631 = v471;
            v632 = v473;
            v633 = v475;
            v634 = v477;
            v383 = &v666;
            specialized BidirectionalCollection<>._getBlock(for:in:)(v608, &v628, &v614);
            swift_unknownObjectRelease();
            if (*(&v617 + 1) != 2)
            {
              v9 = v610;
              if (v479 <= v616 >> 10)
              {
                LOBYTE(i) = 0;
                v480 = 0;
                v481 = 0;
                v482 = 0;
                v611 = 0;
                v35 = v609 >> 11;
                v4 = (v616 >> 11);
                goto LABEL_466;
              }

              goto LABEL_582;
            }

            goto LABEL_586;
          }

          goto LABEL_576;
        }

        v483 = *(v9 + 40);
        v672 = *(v9 + 24);
        v673 = v483;
        v674 = *(v9 + 56);
        if (v448 <= BigString.startIndex.getter() >> 10)
        {
          goto LABEL_441;
        }

        if (__OFSUB__(v588, 1))
        {
          goto LABEL_575;
        }

        if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v588 - 1, v588) & 1) == 0)
        {
          goto LABEL_441;
        }

        v484 = *(v9 + 24);
        v485 = *(v9 + 56);
        v670 = *(v9 + 40);
        v671 = v485;
        v669 = v484;
        v486 = *(v9 + 24);
        v730[1] = *(v9 + 40);
        v731 = *(v9 + 56);
        v730[0] = v486;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v730, &v614);
        v487 = BigString.index(before:)();
        v489 = v488;
        v491 = v490;
        *&v609 = v492;
        outlined destroy of BigString(&v669);
        v608 = *(v9 + 24);
        v493 = *(v9 + 40);
        v663 = v608;
        v664 = v493;
        v665 = *(v9 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMR);
        v494 = swift_allocObject();
        _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v494, 1);
        *v495 = 2;
        _NSBundleDeallocatingImmortalBundle();
        v607 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
        swift_unknownObjectRetain();

        v496 = *(v9 + 24);
        v497 = *(v9 + 56);
        v667 = *(v9 + 40);
        v668 = v497;
        v666 = v496;
        v498 = *(v9 + 24);
        v732[1] = *(v9 + 40);
        v733 = *(v9 + 56);
        v732[0] = v498;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v732, &v614);
        v499 = v491;
        v500 = BigString.index(after:)();
        v502 = v501;
        v504 = v503;
        v506 = v505;
        outlined destroy of BigString(&v666);
        if (v487 >> 10 > v500 >> 10)
        {
LABEL_577:
          __break(1u);
        }

        else
        {
          v606 = v487;
          *&v628 = v487;
          *(&v628 + 1) = v489;
          v629 = v499;
          v630 = v609;
          v631 = v500;
          v632 = v502;
          v633 = v504;
          v634 = v506;
          v383 = &v663;
          specialized BidirectionalCollection<>._getBlock(for:in:)(v607, &v628, &v614);
          swift_unknownObjectRelease();
          if (*(&v617 + 1) == 2)
          {
            __break(1u);
            goto LABEL_585;
          }

          v9 = v610;
          if (v487 >> 10 <= v616 >> 10)
          {
            LOBYTE(i) = 0;
            v35 = v606 >> 11;
            v4 = (v616 >> 11);
            v611 = 0;
            goto LABEL_442;
          }
        }

        __break(1u);
        goto LABEL_579;
      }

      while (1)
      {
LABEL_332:
        v359 = v9;
LABEL_341:
        v362 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v363 = v362 | (v359 << 6);
        v364 = *(v604 + 56);
        v365 = (*(v604 + 48) + 16 * v363);
        v366 = v365[1];
        *&v609 = *v365;
        outlined init with copy of AttributedString._AttributeValue(v364 + 72 * v363, &v628);
        v607 = *(&v628 + 1);
        *&v608 = v628;
        v606 = v629;
        v367 = v630;
        v368 = v631;
        v369 = v632;
        v370 = v633;
        i = v634;
        v19 = v635;

        v371 = v19;
        v372 = v366;
        v374 = v606;
        v373 = v607;
        v375 = v608;
        v376 = v609;
LABEL_342:
        *&v614 = v376;
        *(&v614 + 1) = v372;
        *&v615 = v375;
        *(&v615 + 1) = v373;
        *&v616 = v374;
        *(&v616 + 1) = v367;
        *&v617 = v368;
        *(&v617 + 1) = v369;
        *&v618 = v370;
        *(&v618 + 1) = i;
        *&v619 = v371;
        if (!v372)
        {
          v348 = v604;

          v342 = v595;
          v9 = v610;
          if (v582 > v595 >> 10)
          {
            goto LABEL_326;
          }

          v4 = v599;
          v309 = v571;
          v187 = v572;
          goto LABEL_281;
        }

        v4 = v372;
        outlined copy of AttributedString.AttributeRunBoundaries?(v369, v370);
        outlined destroy of AttributedString._AttributeValue(&v615);
        if (v370 >= 2)
        {
          i = specialized Collection.first.getter(v369, v370);
          outlined consume of AttributedString.AttributeRunBoundaries?(v369, v370);
          if ((i & 0x100000000) == 0 && v589 != i)
          {
            break;
          }
        }

        v358 = v603;
        if (!v21)
        {
          goto LABEL_333;
        }
      }

      if (v585 < v586)
      {
        goto LABEL_553;
      }

      v19 = v583;
      i = swift_isUniquelyReferenced_nonNull_native();
      *&v628 = v19;
      v378 = specialized __RawDictionaryStorage.find<A>(_:)(v376, v4);
      v379 = *(v19 + 16);
      v380 = (v377 & 1) == 0;
      v381 = v379 + v380;
      if (__OFADD__(v379, v380))
      {
        goto LABEL_554;
      }

      v382 = v377;
      if (*(v19 + 24) >= v381)
      {
        if (i)
        {
          v587 = v19;
          if (v377)
          {
            goto LABEL_351;
          }
        }

        else
        {
          LODWORD(v608) = v377;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySnySiGGGMd, &_ss18_DictionaryStorageCySSSaySnySiGGGMR);
          v587 = static _DictionaryStorage.copy(original:)();
          if (*(v19 + 16))
          {
            v391 = (v587 + 64);
            v392 = v583 + 8;
            v393 = ((1 << *(v587 + 32)) + 63) >> 6;
            if (v587 != v583 || v391 >= &v392[v393])
            {
              memmove(v391, v583 + 8, 8 * v393);
            }

            v394 = 0;
            v395 = v583;
            *(v587 + 16) = v583[2];
            v396 = 1 << *(v395 + 32);
            v397 = v395[8];
            if (v396 < 64)
            {
              v398 = ~(-1 << v396);
            }

            else
            {
              v398 = -1;
            }

            v399 = v398 & v397;
            v400 = (v396 + 63) >> 6;
            if (!v399)
            {
              goto LABEL_368;
            }

            while (1)
            {
              v401 = __clz(__rbit64(v399));
              for (*&v609 = (v399 - 1) & v399; ; *&v609 = (v403 - 1) & v403)
              {
                v404 = v401 | (v394 << 6);
                v405 = (v583[6] + 16 * v404);
                v406 = v405[1];
                i = *(v583[7] + 8 * v404);
                v407 = v587;
                v408 = (*(v587 + 48) + 16 * v404);
                *v408 = *v405;
                v408[1] = v406;
                *(*(v407 + 56) + 8 * v404) = i;

                v399 = v609;
                if (v609)
                {
                  break;
                }

LABEL_368:
                v402 = v394;
                do
                {
                  v394 = v402 + 1;
                  if (__OFADD__(v402, 1))
                  {
                    goto LABEL_583;
                  }

                  if (v394 >= v400)
                  {
                    goto LABEL_375;
                  }

                  v403 = v392[v394];
                  ++v402;
                }

                while (!v403);
                v401 = __clz(__rbit64(v403));
              }
            }
          }

LABEL_375:

          if (v608)
          {
            goto LABEL_351;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v381, i);
        v383 = v628;
        v587 = v628;
        v384 = specialized __RawDictionaryStorage.find<A>(_:)(v376, v4);
        if ((v382 & 1) != (v385 & 1))
        {
          goto LABEL_587;
        }

        v378 = v384;
        if (v382)
        {
LABEL_351:

          v386 = v587;
          goto LABEL_357;
        }
      }

      v386 = v587;
      *(v587 + 8 * (v378 >> 6) + 64) |= 1 << v378;
      v387 = (v386[6] + 16 * v378);
      *v387 = v376;
      v387[1] = v4;
      *(v386[7] + 8 * v378) = MEMORY[0x1E69E7CC0];
      v388 = v386[2];
      v48 = __OFADD__(v388, 1);
      v389 = v388 + 1;
      if (v48)
      {
        goto LABEL_568;
      }

      v386[2] = v389;
LABEL_357:
      v390 = v386;
      v19 = v386[7] + 8 * v378;
      Array<A>._extend(with:)(v586, v585);
      v583 = v390;
      v358 = v603;
      if (!v21)
      {
        goto LABEL_333;
      }

      goto LABEL_332;
    }

    v595 = v343;
    v596 = v347;
    v597 = v592;
    v4 = v599;
  }

  v409 = 0;
  v410 = v587 + 64;
  v411 = 1 << *(v587 + 32);
  v412 = -1;
  if (v411 < 64)
  {
    v412 = ~(-1 << v411);
  }

  v413 = v412 & *(v587 + 64);
  v414 = (v411 + 63) >> 6;
  v19 = v576;
  do
  {
LABEL_381:
    if (!v413)
    {
      do
      {
        v415 = v409 + 1;
        if (__OFADD__(v409, 1))
        {
          goto LABEL_530;
        }

        if (v415 >= v414)
        {
          goto LABEL_422;
        }

        v413 = *(v410 + 8 * v415);
        ++v409;
      }

      while (!v413);
      v409 = v415;
    }

    v416 = __clz(__rbit64(v413));
    v413 &= v413 - 1;
    v417 = v416 | (v409 << 6);
    v418 = *(*(v587 + 56) + 8 * v417);
    v604 = *(v418 + 16);
  }

  while (!v604);
  *(&v599 + 1) = v413;
  v600 = v414;
  v601 = v409;
  v602 = v410;
  v419 = *(v587 + 48) + 16 * v417;
  v420 = *(v419 + 8);
  v607 = *v419;
  v605 = v418 + 32;
  v421 = v418;

  v422 = v421;
  v423 = 0;
  v603 = v422;
  while (2)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v424 = (v605 + 16 * v423);
    v35 = *v424;
    v425 = v424[1];
    v606 = v423 + 1;

    AttributedString._InternalRunsSlice.startIndex.getter(v9, v35, v645);
    v426 = v646;
    v614 = v645[0];
    v615 = v645[1];
    *&v616 = v646;
    *&v609 = v425;
    *&v608 = v35;
LABEL_392:
    v428 = *(v9 + 72);
    if (v35 == v425)
    {
      i = *(v9 + 80);
      v21 = *(v9 + 88);
      v429 = *(v9 + 96);
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v35, 0, v428, i, v21, v429) != v429)
      {
        __break(1u);
LABEL_447:
        __break(1u);
        goto LABEL_448;
      }

      v4 = v432;
      if (v428)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v429, v430, v431, v428, i);
        swift_unknownObjectRelease();
      }

      v433 = v35 - v4;
      if (__OFSUB__(v35, v4))
      {
        goto LABEL_447;
      }

      v425 = v609;
    }

    else if (v428)
    {
      v433 = *(v9 + 88);
    }

    else
    {
      v433 = 0;
    }

    if (v426 >= v433)
    {

      v423 = v606;
      if (v606 == v604)
      {

        v19 = v576;
        v409 = v601;
        v410 = v602;
        v413 = *(&v599 + 1);
        v414 = v600;
        goto LABEL_381;
      }

      continue;
    }

    break;
  }

  specialized AttributedString.Guts.updateRun(at:within:with:)(&v614, v35, v425, v9, v607, v420);
  v35 = v420;

  i = *(&v614 + 1);
  v434 = v614;
  v435 = v616;
  v436 = v9;
  v9 = *(v9 + 72);
  v4 = v436[10];
  v21 = v436[11];
  v437 = v436[12];
  v628 = v614;
  v629 = v615;
  v438 = *(&v615 + 1) + 1;
  if (__OFADD__(*(&v615 + 1), 1))
  {
    __break(1u);
LABEL_439:
    __break(1u);
LABEL_440:
    __break(1u);
LABEL_441:
    v35 = 0;
    v4 = 0;
    LOBYTE(i) = 1;
LABEL_442:
    v507 = *(v9 + 40);
    v660 = *(v9 + 24);
    v661 = v507;
    v662 = *(v9 + 56);
    if (v21 >= BigString.endIndex.getter() >> 10)
    {
      goto LABEL_465;
    }

    if (i)
    {
      if (v584 < 1)
      {
        goto LABEL_269;
      }

LABEL_449:
      if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v584 - 1, v584) & 1) == 0)
      {
        goto LABEL_465;
      }

      v606 = v4;
      v607 = v35;
      v508 = *(v9 + 24);
      v509 = *(v9 + 56);
      v659[1] = *(v9 + 40);
      v659[2] = v509;
      v659[0] = v508;
      v510 = *(v9 + 24);
      v734[1] = *(v9 + 40);
      v735 = *(v9 + 56);
      v734[0] = v510;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v734, &v614);
      v511 = BigString.index(before:)();
      v513 = v512;
      v515 = v514;
      v517 = v516;
      outlined destroy of BigString(v659);
      v609 = *(v9 + 24);
      v518 = *(v9 + 40);
      v657[0] = v609;
      v657[1] = v518;
      v657[2] = *(v9 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMR);
      v519 = swift_allocObject();
      _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v519, 1);
      *v520 = 2;
      _NSBundleDeallocatingImmortalBundle();
      *&v608 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
      swift_unknownObjectRetain();

      v521 = *(v9 + 24);
      v522 = *(v9 + 56);
      v658[1] = *(v9 + 40);
      v658[2] = v522;
      v658[0] = v521;
      v523 = *(v9 + 24);
      v736[1] = *(v9 + 40);
      v737 = *(v9 + 56);
      v736[0] = v523;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v736, &v614);
      v524 = v513;
      v525 = BigString.index(after:)();
      v527 = v526;
      v529 = v528;
      v531 = v530;
      outlined destroy of BigString(v658);
      if (v511 >> 10 <= v525 >> 10)
      {
        v605 = v511;
        *&v637 = v511;
        *(&v637 + 1) = v524;
        *&v638 = v515;
        *(&v638 + 1) = v517;
        *&v639 = v525;
        *(&v639 + 1) = v527;
        v640 = v529;
        v641 = v531;
        v383 = v657;
        specialized BidirectionalCollection<>._getBlock(for:in:)(v608, &v637, &v614);
        swift_unknownObjectRelease();
        if (*(&v617 + 1) != 2)
        {
          v9 = v610;
          v4 = v606;
          if (v511 >> 10 <= v616 >> 10)
          {
            v480 = v605 >> 11;
            v481 = v616 >> 11;
            v482 = 1;
            LOBYTE(i) = v611;
            v35 = v607;
            goto LABEL_466;
          }

LABEL_580:
          __break(1u);
LABEL_581:
          __break(1u);
LABEL_582:
          __break(1u);
LABEL_583:
          __break(1u);
        }

LABEL_585:
        __break(1u);
LABEL_586:
        __break(1u);
LABEL_587:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_588:

        result = MEMORY[0x1865D2690](v383, -1, -1);
        __break(1u);
        return result;
      }

LABEL_579:
      __break(1u);
      goto LABEL_580;
    }

LABEL_448:
    if (v4 >= v584)
    {
      goto LABEL_464;
    }

    goto LABEL_449;
  }

  if (v614 != v437)
  {
    goto LABEL_439;
  }

  if (v615)
  {
    v439 = *(v615 + 24 * ((*(&v614 + 1) >> ((4 * *(v615 + 18) + 8) & 0x3C)) & 0xFLL) + 24);
    swift_unknownObjectRetain();
    v48 = __OFADD__(v435, v439);
    v426 = v435 + v439;
    if (v48)
    {
      goto LABEL_440;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v440 = specialized Rope._Node.subscript.getter(i, v9);
    i = v441;

    v48 = __OFADD__(v435, v440);
    v426 = v435 + v440;
    if (v48)
    {
      goto LABEL_440;
    }
  }

  specialized Rope.formIndex(after:)(&v628, v9, v4, v21, v434);
  swift_unknownObjectRelease();
  v425 = v609;
  if (v426 < v609)
  {
    v4 = *(&v628 + 1);
    v9 = v628;
    v427 = v629;
LABEL_391:
    *&v614 = v9;
    *(&v614 + 1) = v4;
    *&v615 = v427;
    *(&v615 + 1) = v438;
    *&v616 = v426;
    v9 = v610;
    v420 = v35;
    v35 = v608;
    goto LABEL_392;
  }

  v21 = v610[9];
  v442 = v608;
  if (v608 != v609)
  {
    v9 = v610[12];
    if (v21)
    {
      v427 = 0;
      v438 = v610[10];
      v426 = v610[11];
      v4 = (((-15 << ((4 * *(v21 + 18) + 8) & 0x3C)) - 1) & *(v21 + 18) | (*(v21 + 16) << ((4 * *(v21 + 18) + 8) & 0x3C)));
    }

    else
    {
      v4 = 0;
      v427 = 0;
      v438 = 0;
      v426 = 0;
    }

    goto LABEL_391;
  }

  i = v610[10];
  v443 = v610[11];
  v9 = v610[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v442, 0, v21, i, v443, v9) == v9)
  {
    v4 = v444;
    v427 = v445;
    v447 = v446;
    if (v21)
    {
      v438 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v9, v444, v445, v21, i);
      swift_unknownObjectRelease();
    }

    else
    {
      v438 = 0;
    }

    v426 = v608 - v447;
    if (__OFSUB__(v608, v447))
    {
      goto LABEL_455;
    }

    v425 = v609;
    goto LABEL_391;
  }

  __break(1u);
LABEL_455:
  __break(1u);
LABEL_456:
  __break(1u);
LABEL_457:
  __break(1u);
LABEL_458:
  __break(1u);
LABEL_459:
  __break(1u);
LABEL_460:
  __break(1u);
LABEL_461:
  __break(1u);
LABEL_462:
  __break(1u);
LABEL_463:
  __break(1u);
LABEL_464:
  LOBYTE(i) = 0;
LABEL_465:
  v480 = 0;
  v481 = 0;
  v482 = 0;
LABEL_466:
  v532 = v588;
  *&v609 = v481;
  if ((i & 1) != 0 || v588 >= v4)
  {
    v549 = v584;
  }

  else
  {
    LODWORD(v604) = v482;
    v605 = v480;
    v614 = 0uLL;
    v533 = AttributedString.Guts._constrainedAttributes(at:with:)(v35, &v614);
    v535 = v534;
    *&v608 = v533;

    v607 = v535;

    AttributedString._InternalRunsSlice.startIndex.getter(v9, v532, v647);
    i = v648;
    v614 = v647[0];
    v615 = v647[1];
    *&v616 = v648;
    v606 = v4;
    while (1)
    {
      v539 = *(v9 + 72);
      if (v539)
      {
        v539 = *(v9 + 88);
      }

      if (i >= v539)
      {
        break;
      }

      v540 = v608;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v614, v588, v4, v9, v540, 0, 0);

      v21 = *(&v614 + 1);
      v541 = v614;
      v19 = v616;
      v542 = v9;
      v543 = *(v9 + 72);
      v9 = *(v9 + 80);
      v545 = *(v542 + 88);
      v544 = *(v542 + 96);
      v612 = v614;
      v613 = v615;
      v546 = *(&v615 + 1) + 1;
      if (__OFADD__(*(&v615 + 1), 1))
      {
        goto LABEL_547;
      }

      if (v614 != v544)
      {
        goto LABEL_548;
      }

      if (v615)
      {
        v547 = v615 + 24 * ((*(&v614 + 1) >> ((4 * *(v615 + 18) + 8) & 0x3C)) & 0xFLL);
        v21 = *(v547 + 24);
        v4 = *(v547 + 40);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v21 = specialized Rope._Node.subscript.getter(v21, v543);
        v4 = v548;
      }

      i = v19 + v21;
      if (__OFADD__(v19, v21))
      {
        goto LABEL_549;
      }

      specialized Rope.formIndex(after:)(&v612, v543, v9, v545, v541);
      swift_unknownObjectRelease();
      v4 = v606;
      if (i < v606)
      {
        v537 = *(&v612 + 1);
        v536 = v612;
        v538 = v613;
        v9 = v610;
        v481 = v609;
      }

      else
      {
        v9 = v610;
        v537 = v610[9];
        v536 = v610[12];
        v481 = v609;
        v538 = 0;
        if (v537)
        {
          v546 = v610[10];
          i = v610[11];
          v537 = ((-15 << ((4 * *(v537 + 18) + 8) & 0x3C)) - 1) & *(v537 + 18) | (*(v537 + 16) << ((4 * *(v537 + 18) + 8) & 0x3C));
        }

        else
        {
          v546 = 0;
          i = 0;
        }
      }

      *&v614 = v536;
      *(&v614 + 1) = v537;
      *&v615 = v538;
      *(&v615 + 1) = v546;
      *&v616 = i;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v549 = v584;
    v480 = v605;
    v482 = v604;
  }

  if (v549 < v481)
  {
    v550 = v482;
  }

  else
  {
    v550 = 0;
  }

  if (v550 == 1)
  {
    v614 = 0uLL;
    v551 = AttributedString.Guts._constrainedAttributes(at:with:)(v480, &v614);
    v553 = v552;
    *&v608 = v551;

    v607 = v553;

    AttributedString._InternalRunsSlice.startIndex.getter(v9, v584, &v649);
    for (i = v652; ; v652 = i)
    {
      v557 = *(v9 + 72);
      if (v557)
      {
        v557 = *(v9 + 88);
      }

      if (i >= v557)
      {
        break;
      }

      v558 = v608;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v649, v584, v481, v9, v558, 0, 0);

      v21 = *(&v649 + 1);
      v4 = v649;
      v19 = v652;
      v559 = *(v9 + 72);
      v560 = *(v9 + 80);
      v562 = *(v9 + 88);
      v561 = *(v9 + 96);
      v614 = v649;
      *&v615 = v650;
      v563 = v651 + 1;
      if (__OFADD__(v651, 1))
      {
        goto LABEL_550;
      }

      if (v649 != v561)
      {
        goto LABEL_551;
      }

      if (v650)
      {
        v564 = v650 + 24 * ((*(&v649 + 1) >> ((4 * *(v650 + 18) + 8) & 0x3C)) & 0xFLL);
        v21 = *(v564 + 24);
        v9 = *(v564 + 40);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v21 = specialized Rope._Node.subscript.getter(v21, v559);
        v9 = v565;
      }

      i = v19 + v21;
      if (__OFADD__(v19, v21))
      {
        goto LABEL_552;
      }

      specialized Rope.formIndex(after:)(&v614, v559, v560, v562, v4);
      swift_unknownObjectRelease();
      v481 = v609;
      if (i < v609)
      {
        v555 = *(&v614 + 1);
        v554 = v614;
        v556 = v615;
        v9 = v610;
      }

      else
      {
        v9 = v610;
        v555 = v610[9];
        v554 = v610[12];
        v556 = 0;
        if (v555)
        {
          v563 = v610[10];
          i = v610[11];
          v555 = ((-15 << ((4 * *(v555 + 18) + 8) & 0x3C)) - 1) & *(v555 + 18) | (*(v555 + 16) << ((4 * *(v555 + 18) + 8) & 0x3C));
        }

        else
        {
          v563 = 0;
          i = 0;
        }
      }

      *&v649 = v554;
      *(&v649 + 1) = v555;
      v650 = v556;
      v651 = v563;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

LABEL_269:
  v618 = v625;
  v619 = v626;
  v620 = v627;
  v614 = v621;
  v615 = v622;
  v616 = v623;
  v617 = v624;
  return outlined destroy of BigSubstring(&v614);
}