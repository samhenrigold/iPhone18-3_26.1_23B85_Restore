__n128 AttributedString.UnicodeScalarView.init()@<Q0>(uint64_t a1@<X8>)
{
  BigString.init()();
  v22 = v25;
  v23 = v24;
  v2 = v26;
  v27[0] = 0;
  MEMORY[0x1865D26B0](v27, 8);
  v3 = v27[0];
  type metadata accessor for AttributedString.Guts();
  v4 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_5:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v6 = v25;
  *(v4 + 24) = v24;
  *(v4 + 16) = add_explicit;
  *(v4 + 40) = v6;
  *(v4 + 56) = v26;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = v3;
  *(v4 + 104) = MEMORY[0x1E69E7CC0];
  v7 = BigString.startIndex.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = BigString.endIndex.getter();
  v32 = v7;
  v33 = v9;
  v34 = v11;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v40 = v23;
  v41 = v22;
  v42 = v2;

  outlined init with copy of BigString(&v24, v27);
  BigString.UnicodeScalarView.subscript.getter();

  outlined destroy of BigString(&v24);
  outlined destroy of BigSubstring.UnicodeScalarView(v27);
  result = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 24) = v19;
  *(a1 + 40) = v20;
  *(a1 + 56) = v21;
  *(a1 + 72) = 0;
  return result;
}

uint64_t AttributedString.unicodeScalars.setter(_OWORD *a1)
{
  v2 = v1;
  v3 = a1[3];
  v52[2] = a1[2];
  v52[3] = v3;
  v52[4] = a1[4];
  v4 = a1[1];
  v52[0] = *a1;
  v52[1] = v4;
  v42 = *v1;
  AttributedString._bounds.getter(v51);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  v7 = &unk_1EA7B2000;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = &static AttributedString.Guts._nextVersion;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  v10 = &static AttributedString.Guts._nextVersion;
  v11 = *(v6 + 40);
  v66 = *(v6 + 24);
  v67 = v11;
  v68 = *(v6 + 56);
  v12 = *(v6 + 72);
  v13 = *(v6 + 80);
  v14 = *(v6 + 88);
  v15 = *(v6 + 96);
  type metadata accessor for AttributedString.Guts();
  v6 = swift_allocObject();
  v16 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v66, v43);
  v17 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v17);
  if (v12)
  {
    v18 = v14 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  if (v19 != v16)
  {
    goto LABEL_21;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v9 = v10;
    add_explicit = atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    v21 = v67;
    *(v6 + 24) = v66;
    *(v6 + 16) = add_explicit;
    *(v6 + 40) = v21;
    *(v6 + 56) = v68;
    *(v6 + 72) = v12;
    *(v6 + 80) = v13;
    *(v6 + 88) = v14;
    *(v6 + 96) = v15;
    *(v6 + 104) = v8;

    *v2 = v6;
LABEL_11:
    v10 = v41;
    if (v7[147] != -1)
    {
      swift_once();
    }

    *(v6 + 16) = atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    v22 = *(v6 + 24);
    v23 = *(v6 + 56);
    v65[1] = *(v6 + 40);
    v65[2] = v23;
    v65[0] = v22;
    v7 = *(v6 + 56);
    v8 = *(v6 + 64);
    v38 = *(v6 + 40);
    v39 = *(v6 + 24);
    v24 = BigString.startIndex.getter();
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v28 = BigString.endIndex.getter();
    v53 = v24;
    v54 = v13;
    v55 = v14;
    v56 = v15;
    v57 = v28;
    v58 = v29;
    v59 = v30;
    v60 = v31;
    v61 = v39;
    v62 = v38;
    v63 = v7;
    v64 = v8;
    swift_retain_n();
    outlined init with copy of BigString(v65, v43);
    BigString.UnicodeScalarView.subscript.getter();

    outlined destroy of BigString(v65);
    outlined destroy of BigSubstring.UnicodeScalarView(v43);
    v40[5] = v44;
    v40[6] = v45;
    v40[7] = v46;
    v40[8] = v47;
    *v41 = v6;
    *&v41[8] = v44;
    *&v41[24] = v45;
    *&v41[40] = v46;
    *&v41[56] = v47;
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    v32 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v33 = *(v32 + 16);
    v12 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v32 + 16) = v12;
    os_unfair_lock_unlock((v32 + 24));
    *&v41[72] = v12;
    BigString.init()();
    *&v40[0] = 0;
    MEMORY[0x1865D26B0](v40, 8);
    v13 = *&v40[0];
    type metadata accessor for AttributedString.Guts();
    v6 = swift_allocObject();
    if (BigString.isEmpty.getter())
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v34 = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v35 = v49;
  *(v6 + 24) = v48;
  *(v6 + 16) = v34;
  *(v6 + 40) = v35;
  *(v6 + 56) = v50;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = v13;
  *(v6 + 104) = MEMORY[0x1E69E7CC0];

  *v2 = v6;
  specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(v51, v52);
  if (*&v41[72] == v12)
  {
    outlined destroy of AttributedString.UnicodeScalarView(v52);
    v36 = *v41;

    *v2 = v36;
    v40[2] = *&v41[32];
    v40[3] = *&v41[48];
    v40[4] = *&v41[64];
    v40[0] = *v41;
    v40[1] = *&v41[16];
    return outlined destroy of AttributedString.UnicodeScalarView(v40);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void (*AttributedString.unicodeScalars.modify(uint64_t *a1))(uint64_t *a1)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x220uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 528) = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v8 = &unk_1EA7B2000;
  v9 = MEMORY[0x1E69E7CC0];
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_14;
  }

  v10 = *(v7 + 24);
  v11 = *(v7 + 56);
  *(v5 + 352) = *(v7 + 40);
  *(v5 + 368) = v11;
  *(v5 + 336) = v10;
  v12 = *(v7 + 72);
  v13 = *(v7 + 80);
  v14 = *(v7 + 88);
  v15 = *(v7 + 96);
  type metadata accessor for AttributedString.Guts();
  v7 = swift_allocObject();
  v16 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(v5 + 336, v5 + 112);
  v17 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v17);
  if (v12)
  {
    v18 = v14 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  if (v19 != v16)
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
    v20 = *(v5 + 336);
    v21 = *(v5 + 352);
    *(v7 + 56) = *(v5 + 368);
    *(v7 + 40) = v21;
    *(v7 + 24) = v20;
    *(v7 + 72) = v12;
    *(v7 + 80) = v13;
    *(v7 + 88) = v14;
    *(v7 + 96) = v15;
    *(v7 + 104) = v9;

    *v2 = v7;
LABEL_14:
    if (v8[147] != -1)
    {
      swift_once();
    }

    *(v7 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v22 = *(v7 + 24);
    v23 = *(v7 + 56);
    *(v5 + 400) = *(v7 + 40);
    *(v5 + 416) = v23;
    *(v5 + 384) = v22;
    v8 = *(v7 + 56);
    v24 = *(v7 + 64);
    v39 = *(v7 + 40);
    v40 = *(v7 + 24);
    v12 = BigString.startIndex.getter();
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v28 = BigString.endIndex.getter();
    *(v5 + 272) = v12;
    *(v5 + 280) = v13;
    *(v5 + 288) = v14;
    *(v5 + 296) = v15;
    *(v5 + 304) = v28;
    *(v5 + 312) = v29;
    *(v5 + 320) = v30;
    *(v5 + 328) = v31;
    *(v5 + 432) = v40;
    *(v5 + 448) = v39;
    *(v5 + 464) = v8;
    *(v5 + 472) = v24;
    swift_retain_n();
    outlined init with copy of BigString(v5 + 384, v5 + 192);
    BigString.UnicodeScalarView.subscript.getter();

    outlined destroy of BigString(v5 + 384);
    outlined destroy of BigSubstring.UnicodeScalarView(v5);
    v32 = *(v5 + 48);
    v41 = *(v5 + 64);
    v33 = *(v5 + 80);
    v42 = *(v5 + 96);
    *(v5 + 112) = v7;
    *(v5 + 120) = v32;
    *(v5 + 136) = v41;
    *(v5 + 152) = v33;
    *(v5 + 168) = v42;
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    v34 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v35 = *(v34 + 16);
    v7 = v35 + 1;
    *(v5 + 536) = v35 + 1;
    v9 = MEMORY[0x1E69E7CC0];
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v34 + 16) = v7;
    os_unfair_lock_unlock((v34 + 24));
    *(v5 + 184) = v7;
    BigString.init()();
    *(v5 + 192) = 0;
    MEMORY[0x1865D26B0](v5 + 192, 8);
    v12 = *(v5 + 192);
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
  v36 = *(v5 + 480);
  v37 = *(v5 + 496);
  *(v7 + 56) = *(v5 + 512);
  *(v7 + 40) = v37;
  *(v7 + 24) = v36;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = v12;
  *(v7 + 104) = v9;

  *v2 = v7;
  return AttributedString.unicodeScalars.modify;
}

void AttributedString.unicodeScalars.modify(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 184) == *(*a1 + 536))
  {
    v2 = *(v1 + 528);
    v3 = *(v1 + 112);

    *v2 = v3;
    v4 = *(v1 + 160);
    *(v1 + 224) = *(v1 + 144);
    *(v1 + 240) = v4;
    *(v1 + 256) = *(v1 + 176);
    v5 = *(v1 + 128);
    *(v1 + 192) = *(v1 + 112);
    *(v1 + 208) = v5;
    outlined destroy of AttributedString.UnicodeScalarView(v1 + 192);

    free(v1);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

unint64_t *specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(unint64_t *result)
{
  if (*result >> 10 < v1[1] >> 10)
  {
    __break(1u);
  }

  else if (v1[5] >> 10 >= result[5] >> 10)
  {
    v2 = *v1;
    v3 = *(*v1 + 40);
    v23 = *(*v1 + 24);
    v24 = v3;
    v25 = *(v2 + 56);
    swift_unknownObjectRetain();
    v4 = BigString.UnicodeScalarView.index(roundingDown:)();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    swift_unknownObjectRelease();
    v11 = *(v2 + 40);
    v20 = *(v2 + 24);
    v21 = v11;
    v22 = *(v2 + 56);
    swift_unknownObjectRetain();
    v12 = BigString.UnicodeScalarView.index(roundingDown:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    swift_unknownObjectRelease();
    v19[0] = v4;
    v19[1] = v6;
    v19[2] = v8;
    v19[3] = v10;
    v19[4] = v12;
    v19[5] = v14;
    v19[6] = v16;
    v19[7] = v18;
    return specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v19);
  }

  __break(1u);
  return result;
}

unint64_t *specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(unint64_t *result, int a2)
{
  if (*result >> 10 < v2[1] >> 10)
  {
    __break(1u);
  }

  else if (v2[5] >> 10 >= result[5] >> 10)
  {
    v3 = *v2;
    v4 = *(*v2 + 40);
    v25 = *(*v2 + 24);
    v26 = v4;
    v27 = *(v3 + 56);
    swift_unknownObjectRetain();
    v5 = BigString.UnicodeScalarView.index(roundingDown:)();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    swift_unknownObjectRelease();
    v12 = *(v3 + 40);
    v22 = *(v3 + 24);
    v23 = v12;
    v24 = *(v3 + 56);
    swift_unknownObjectRetain();
    v13 = BigString.UnicodeScalarView.index(roundingDown:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    swift_unknownObjectRelease();
    v21[0] = v5;
    v21[1] = v7;
    v21[2] = v9;
    v21[3] = v11;
    v21[4] = v13;
    v21[5] = v15;
    v21[6] = v17;
    v21[7] = v19;
    return specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v21, a2);
  }

  __break(1u);
  return result;
}

unint64_t *specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(unint64_t *result, uint64_t a2)
{
  if (*result >> 10 < v2[1] >> 10)
  {
    __break(1u);
  }

  else if (v2[5] >> 10 >= result[5] >> 10)
  {
    v4 = *v2;
    v5 = *(*v2 + 40);
    v27[10] = *(*v2 + 24);
    v27[11] = v5;
    v27[12] = *(v4 + 56);
    swift_unknownObjectRetain();
    v6 = BigString.UnicodeScalarView.index(roundingDown:)();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = *(v4 + 40);
    v27[7] = *(v4 + 24);
    v27[8] = v13;
    v27[9] = *(v4 + 56);
    swift_unknownObjectRetain();
    v14 = BigString.UnicodeScalarView.index(roundingDown:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    swift_unknownObjectRelease();
    v21 = *(*a2 + 40);
    v22 = *(*a2 + 56);
    v27[0] = *(*a2 + 24);
    v27[1] = v21;
    v23 = *(a2 + 56);
    v24 = *(a2 + 24);
    v27[5] = *(a2 + 40);
    v27[6] = v23;
    v26[0] = v6;
    v26[1] = v8;
    v26[2] = v10;
    v26[3] = v12;
    v26[4] = v14;
    v26[5] = v16;
    v26[6] = v18;
    v26[7] = v20;
    v25 = *(a2 + 8);
    v27[2] = v22;
    v27[3] = v25;
    v27[4] = v24;
    swift_unknownObjectRetain();
    specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v26, v27);
    return outlined destroy of BigSubstring.UnicodeScalarView(v27);
  }

  __break(1u);
  return result;
}

unint64_t *AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(unint64_t *result, __int128 *a2, ValueMetadata *a3, void *a4)
{
  if (*result >> 10 < v4[1] >> 10)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4[5] >> 10 < result[5] >> 10)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = *v4;
  v7 = *(*v4 + 40);
  v81 = *(*v4 + 24);
  v82 = v7;
  v83 = *(v6 + 56);
  swift_unknownObjectRetain();
  v8 = BigString.UnicodeScalarView.index(roundingDown:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();
  v15 = *(v6 + 40);
  v78 = *(v6 + 24);
  v79 = v15;
  v80 = *(v6 + 56);
  swift_unknownObjectRetain();
  v16 = BigString.UnicodeScalarView.index(roundingDown:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  swift_unknownObjectRelease();
  v70[0] = v8;
  v70[1] = v10;
  v70[2] = v12;
  v70[3] = v14;
  v70[4] = v16;
  v70[5] = v18;
  v70[6] = v20;
  v70[7] = v22;
  if (a3 == &type metadata for AttributedString.UnicodeScalarView)
  {
    v23 = a2[1];
    v44 = *a2;
    v45 = v23;
    v24 = a2[4];
    v47 = a2[3];
    v48 = v24;
    v46 = a2[2];
    v42 = *(v44 + 24);
    v25 = *(v44 + 40);
    v26 = *(v44 + 56);
    v27 = *(a2 + 40);
    *&v53[32] = *(a2 + 24);
    v54 = v27;
    v55 = *(a2 + 56);
    v28 = *(a2 + 8);
    v51 = v42;
    v52 = v25;
    *v53 = v26;
    *&v53[16] = v28;
    outlined init with copy of AttributedString.UnicodeScalarView(&v44, v65);
    swift_unknownObjectRetain();
    specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v70, &v51);
    outlined destroy of AttributedString.UnicodeScalarView(&v44);
    v29 = &v51;
  }

  else
  {
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMR) != a3)
    {
      return AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v70, a2, a3, a4);
    }

    v30 = a2[5];
    *&v53[32] = a2[4];
    v54 = v30;
    v31 = a2[3];
    *v53 = a2[2];
    *&v53[16] = v31;
    v32 = a2[9];
    v57 = a2[8];
    v58 = v32;
    v33 = a2[7];
    v55 = a2[6];
    v56 = v33;
    v34 = a2[1];
    v51 = *a2;
    v52 = v34;
    v71 = v51;
    v72 = v34;
    v73 = *&v53[8];
    v74 = *&v53[24];
    v35 = v54;
    v36 = *(v54 + 40);
    v75 = *(v54 + 24);
    v76 = v36;
    v77 = *(v54 + 56);
    outlined init with copy of FloatingPointRoundingRule?(&v51, &v44, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMR);
    outlined init with copy of FloatingPointRoundingRule?(&v51, &v44, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMR);
    swift_unknownObjectRetain();
    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(v65);
    v63 = v69;
    v62 = v68;
    v61 = v67;
    v60 = v66;
    v59 = v35;
    v64 = 0;
    v37 = *(v35 + 56);
    v38 = *(v35 + 64);
    v43 = *(v35 + 40);
    v40 = *(v35 + 24);
    swift_unknownObjectRetain();
    outlined destroy of AttributedString.UnicodeScalarView(&v59);
    v47 = v60;
    v48 = v61;
    v49 = v62;
    v50 = v63;
    v44 = v40;
    v45 = v43;
    *&v46 = v37;
    *(&v46 + 1) = v38;
    specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v70, &v44);
    outlined destroy of TermOfAddress?(&v51, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMR);
    v29 = &v44;
  }

  return outlined destroy of BigSubstring.UnicodeScalarView(v29);
}

__n128 AttributedString.UnicodeScalarView.startIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 AttributedString.UnicodeScalarView.endIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

unint64_t *AttributedString.UnicodeScalarView.index(before:)@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result >> 10;
  v5 = v2[1] >> 10;
  if (v4 >= v5 && v2[5] >> 10 >= v4)
  {
    v7 = *v2;
    swift_unknownObjectRetain();
    v8 = BigString.UnicodeScalarView.index(before:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    result = swift_unknownObjectRelease();
    if (v5 <= v8 >> 10)
    {
      v15 = *(v7 + 16);
      *a2 = v8;
      a2[1] = v10;
      a2[2] = v12;
      a2[3] = v14;
      a2[4] = v15;
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

unint64_t *AttributedString.UnicodeScalarView.index(after:)@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result >> 10;
  v5 = v2[5] >> 10;
  if (v4 >= v2[1] >> 10 && v5 >= v4)
  {
    v7 = *v2;
    swift_unknownObjectRetain();
    v8 = BigString.UnicodeScalarView.index(after:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    result = swift_unknownObjectRelease();
    if (v5 >= v8 >> 10)
    {
      v15 = *(v7 + 16);
      *a2 = v8;
      a2[1] = v10;
      a2[2] = v12;
      a2[3] = v14;
      a2[4] = v15;
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

unint64_t *AttributedString.UnicodeScalarView.index(_:offsetBy:)@<X0>(unint64_t *result@<X0>, unint64_t *a3@<X8>)
{
  v5 = *result >> 10;
  v6 = v3[1] >> 10;
  if (v5 >= v6 && v3[5] >> 10 >= v5)
  {
    v8 = *v3;
    v18 = v3[5] >> 10;
    swift_unknownObjectRetain();
    v9 = BigString.UnicodeScalarView.index(_:offsetBy:)();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    result = swift_unknownObjectRelease();
    if (v9 >> 10 >= v6 && v18 >= v9 >> 10)
    {
      v17 = *(v8 + 16);
      *a3 = v9;
      a3[1] = v11;
      a3[2] = v13;
      a3[3] = v15;
      a3[4] = v17;
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

unint64_t *AttributedString.UnicodeScalarView.index(_:offsetBy:limitedBy:)@<X0>(unint64_t *result@<X0>, unint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = *result >> 10;
  v7 = v4[1] >> 10;
  v8 = v4[5] >> 10;
  v9 = *a3 >> 10;
  if (v8 >= v9 && v9 >= v7 && v6 >= v7 && v8 >= v6)
  {
    v13 = *v4;
    v22 = v4[5] >> 10;
    swift_unknownObjectRetain();
    v14 = BigString.UnicodeScalarView.index(_:offsetBy:limitedBy:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    result = swift_unknownObjectRelease();
    if (v20 == 2)
    {
      v21 = 0;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 2;
    }

    else
    {
      if (v14 >> 10 < v7 || v22 < v14 >> 10)
      {
        goto LABEL_18;
      }

      v21 = *(v13 + 16);
      *a4 = v14;
      a4[1] = v16;
      a4[2] = v18;
      a4[3] = v20;
    }

    a4[4] = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t *AttributedString.UnicodeScalarView._index(_:offsetBy:limitedBy:)@<X0>(unint64_t *result@<X0>, unint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = *result >> 10;
  v7 = v4[1] >> 10;
  v8 = v4[5] >> 10;
  v9 = *a3 >> 10;
  if (v8 >= v9 && v9 >= v7 && v6 >= v7 && v8 >= v6)
  {
    v13 = *v4;
    v22 = v4[5] >> 10;
    swift_unknownObjectRetain();
    v14 = BigString.UnicodeScalarView.index(_:offsetBy:limitedBy:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    result = swift_unknownObjectRelease();
    if (v20 == 2)
    {
      v21 = 0;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 2;
    }

    else
    {
      if (v14 >> 10 < v7 || v22 < v14 >> 10)
      {
        goto LABEL_18;
      }

      v21 = *(v13 + 16);
      *a4 = v14;
      a4[1] = v16;
      a4[2] = v18;
      a4[3] = v20;
    }

    a4[4] = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t *AttributedString.UnicodeScalarView._distance(from:to:)(unint64_t *result, unint64_t *a2)
{
  v3 = *result >> 10;
  v4 = *(v2 + 8) >> 10;
  v5 = *(v2 + 40) >> 10;
  v6 = *a2 >> 10;
  if (v5 >= v6 && v6 >= v4 && v3 >= v4 && v5 >= v3)
  {
    swift_unknownObjectRetain();
    v10 = BigString.UnicodeScalarView.distance(from:to:)();
    swift_unknownObjectRelease();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *AttributedString.UnicodeScalarView.subscript.getter(unint64_t *result)
{
  v2 = *result >> 10;
  if (v2 < *(v1 + 8) >> 10 || v2 >= *(v1 + 40) >> 10)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    v4 = BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

__int128 *AttributedString.UnicodeScalarView.subscript.getter@<X0>(__int128 *result@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[5];
  v7 = result[1];
  v22 = *result;
  v23 = v7;
  v8 = *(result + 56);
  v24 = *(result + 40);
  v25 = v8;
  v9 = v6 >> 10;
  if (v22 >> 10 >= v4 >> 10 && v9 >= v24 >> 10)
  {
    v11 = *(v5 + 40);
    v26 = *(v5 + 24);
    v27 = v11;
    v28 = *(v5 + 56);
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    result = outlined destroy of BigSubstring.UnicodeScalarView(v21);
    v12 = v21[6];
    v13 = v21[7];
    v14 = v21[8];
    v15 = v21[9];
    v16 = v21[10];
    v17 = v21[11];
    v18 = v21[12];
    v19 = v21[13];
    v20 = *(v5 + 16);
    a2[10] = v5;
    a2[11] = v12;
    a2[12] = v13;
    a2[13] = v14;
    a2[14] = v15;
    a2[15] = v16;
    a2[16] = v17;
    a2[17] = v18;
    a2[18] = v19;
    a2[19] = 0;
    *a2 = v12;
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = v15;
    a2[4] = v20;
    a2[5] = v16;
    a2[6] = v17;
    a2[7] = v18;
    a2[8] = v19;
    a2[9] = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance AttributedString.UnicodeScalarView(unint64_t *result)
{
  v2 = *result >> 10;
  v3 = v1[1] >> 10;
  if (v2 >= v3 && v1[5] >> 10 >= v2)
  {
    v5 = result;
    v6 = *v1;
    swift_unknownObjectRetain();
    v7 = BigString.UnicodeScalarView.index(before:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    result = swift_unknownObjectRelease();
    if (v3 <= v7 >> 10)
    {
      v14 = *(v6 + 16);
      *v5 = v7;
      v5[1] = v9;
      v5[2] = v11;
      v5[3] = v13;
      v5[4] = v14;
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

uint64_t protocol witness for Collection.indices.getter in conformance AttributedString.UnicodeScalarView@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  *&v10[32] = v1[2];
  *&v10[48] = v2;
  *&v10[64] = v1[4];
  v3 = *&v10[64];
  v5 = v1[1];
  *v10 = *v1;
  v4 = *v10;
  *&v10[16] = v5;
  *(a1 + 32) = *&v10[32];
  *(a1 + 48) = v2;
  *a1 = v4;
  *(a1 + 16) = v5;
  v6 = *(*v10 + 16);
  v7 = *&v10[8];
  *(a1 + 64) = v3;
  *(a1 + 80) = v7;
  *(a1 + 96) = *&v10[24];
  *(a1 + 112) = v6;
  *(a1 + 120) = *&v10[40];
  *(a1 + 136) = *&v10[56];
  *(a1 + 152) = v6;
  return outlined init with copy of AttributedString.UnicodeScalarView(v10, &v9);
}

uint64_t protocol witness for Collection.count.getter in conformance AttributedString.UnicodeScalarView()
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
  v7 = BigSubstring.UnicodeScalarView.count.getter();
  outlined destroy of BigSubstring.UnicodeScalarView(v9);
  return v7;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.UnicodeScalarView()
{
  v1 = v0[3];
  v5[2] = v0[2];
  v5[3] = v1;
  v5[4] = v0[4];
  v2 = v0[1];
  v5[0] = *v0;
  v5[1] = v2;
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(v5);
  outlined destroy of AttributedString.UnicodeScalarView(v5);
  return v3;
}

uint64_t AttributedString.UnicodeScalarView._mutateStringContents(in:attributes:with:)(void *a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5)
{
  v787 = a5;
  v788 = a4;
  v783 = a2;
  v784 = a3;
  v782 = 0;
  v7 = *v5;
  v8 = *a1;
  v849 = *(a1 + 1);
  v9 = a1[4];
  v850 = a1[3];
  *&v792 = v8;
  v847 = *(a1 + 5);
  v786 = a1;
  v848 = a1[7];
  *&v796 = v8 >> 11;
  *&v824 = v8 >> 11;
  *&v816 = v9 >> 11;
  *&v793 = v9;
  v789 = v9 >> 11;
  if (v9 >= 0x800)
  {
    v10 = (v9 >> 11) - 1;
    v11 = *(v7 + 72);
    v12 = *(v7 + 80);
    v14 = *(v7 + 88);
    v13 = *(v7 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v10, 0, v11, v12, v14, v13) != v13)
    {
LABEL_595:
      __break(1u);
LABEL_596:
      __break(1u);
LABEL_597:
      __break(1u);
      goto LABEL_598;
    }

    v17 = v15;
    v18 = v16;
    if (v11)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v13, v15, v16, v11, v12);
      swift_unknownObjectRelease();
    }

    v19 = *(v7 + 72);
    v20 = *(v7 + 80);
    v21 = *(v7 + 88);
    v6 = *(v7 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v13, v17, v18, v19, v20, v21, v6);
    v23 = v22;
    *&v794 = v24;
    swift_unknownObjectRelease();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    *&v795 = specialized Dictionary.filter(_:)(v23);
  }

  else
  {
    *&v794 = MEMORY[0x1E69E7CD0];
    *&v795 = MEMORY[0x1E69E7CC8];
  }

  v25 = *(v7 + 24);
  v26 = *(v7 + 40);
  v27 = *(v7 + 56);
  v785 = (v7 + 24);
  v911 = v25;
  v912 = v26;
  v913 = v27;
  LODWORD(v28) = v796;
  v797 = v7;
  if (v796 >= BigString.UTF8View.count.getter())
  {
    goto LABEL_57;
  }

  v29 = *(v7 + 72);
  v30 = *(v7 + 80);
  v32 = *(v7 + 88);
  v31 = *(v7 + 96);
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v796, 0, v29, v30, v32, v31) != v31)
  {
    goto LABEL_596;
  }

  v28 = v33;
  v35 = v34;
  if (v29)
  {
    specialized Rope._Node.distanceFromStart<A>(to:in:)(v31, v33, v34, v29, v30);
    swift_unknownObjectRelease();
  }

  v36 = *(v7 + 72);
  v37 = *(v7 + 80);
  v38 = *(v7 + 88);
  v39 = *(v7 + 96);
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v31, v28, v35, v36, v37, v38, v39);
  LODWORD(v31) = v40;
  v42 = v41;
  swift_unknownObjectRelease();
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  v7 = specialized Dictionary.filter(_:)(v43);

  swift_bridgeObjectRelease_n();
  v44 = 0;
  *&v829 = MEMORY[0x1865CB700](*(v7 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v45 = 1 << *(v7 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v7 + 64;
  v6 = v46 & *(v7 + 64);
  v48 = (v45 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v49 = v44;
LABEL_19:
      v50 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v51 = (*(v7 + 48) + ((v49 << 10) | (16 * v50)));
      v52 = *v51;
      v28 = v51[1];

      v31 = &v829;
      specialized Set._Variant.insert(_:)(&v806, v52, v28);

      if (!v6)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v49 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_372;
    }

    if (v49 >= v48)
    {
      break;
    }

    v6 = *(v47 + 8 * v49);
    ++v44;
    if (v6)
    {
      v44 = v49;
      goto LABEL_19;
    }
  }

  *&v813 = v829;
  v54 = v797[9];
  v53 = v797[10];
  v31 = v797[11];
  v55 = v797[12];
  swift_unknownObjectRetain();

  if (v792 > 0x7FF)
  {
    v47 = specialized Rope._endPath.getter(v54);
    if (v54)
    {
      swift_unknownObjectRelease();
      v59 = 0;
    }

    else
    {
      v59 = 0;
      v53 = 0;
      v31 = 0;
    }
  }

  else
  {
    if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v54, v53, v31, v55) != v55)
    {
LABEL_606:
      __break(1u);
      goto LABEL_607;
    }

    v47 = v56;
    v59 = v57;
    v6 = v58;
    if (v54)
    {
      v53 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v55, v56, v57, v54, v53);
      swift_unknownObjectRelease();
      v31 = -v6;
      if (__OFSUB__(0, v6))
      {
        goto LABEL_607;
      }
    }

    else
    {
      v53 = 0;
      v31 = -v58;
      if (__OFSUB__(0, v58))
      {
LABEL_607:
        __break(1u);
LABEL_608:
        __break(1u);
        goto LABEL_609;
      }
    }
  }

  *&v806 = v55;
  *(&v806 + 1) = v47;
  *&v807 = v59;
  *(&v807 + 1) = v53;
  v60 = v797[9];
  v28 = v797[10];
  v44 = v797[11];
  v61 = v797[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v60, v28, v44, v61) != v61)
  {
    goto LABEL_374;
  }

  v47 = v64;
  *&v791 = v7;
  while (1)
  {
    if (v60)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v61, v62, v63, v60, v28);
      swift_unknownObjectRelease();
    }

    if (__OFSUB__(0, v47))
    {
LABEL_498:
      __break(1u);
LABEL_499:
      __break(1u);
LABEL_500:
      __break(1u);
LABEL_501:
      __break(1u);
LABEL_502:
      __break(1u);
LABEL_503:
      __break(1u);
LABEL_504:
      __break(1u);
LABEL_505:
      __break(1u);
LABEL_506:
      __break(1u);
LABEL_507:
      __break(1u);
      goto LABEL_508;
    }

    if (-v47 >= v31 || !*(v813 + 16))
    {
      goto LABEL_56;
    }

    v68 = v797[9];
    if (!v68)
    {
      break;
    }

    if (v31 == v797[11])
    {
      goto LABEL_43;
    }

LABEL_47:
    v7 = v42;
    v77 = v797[10];
    v78 = v797[11];
    v71 = v797[12];
    v829 = v806;
    *&v830 = v807;
    v28 = *(&v807 + 1) - 1;
    if (__OFSUB__(*(&v807 + 1), 1))
    {
      __break(1u);
LABEL_567:
      __break(1u);
LABEL_568:
      __break(1u);
LABEL_569:
      __break(1u);
LABEL_570:
      __break(1u);
LABEL_571:
      __break(1u);
LABEL_572:
      __break(1u);
LABEL_573:
      __break(1u);
LABEL_574:
      __break(1u);
LABEL_575:
      __break(1u);
LABEL_576:
      __break(1u);
LABEL_577:
      __break(1u);
LABEL_578:
      __break(1u);
LABEL_579:
      __break(1u);
LABEL_580:
      __break(1u);
LABEL_581:
      __break(1u);
LABEL_582:
      __break(1u);
LABEL_583:
      __break(1u);
LABEL_584:
      __break(1u);
LABEL_585:
      __break(1u);
LABEL_586:
      __break(1u);
LABEL_587:
      __break(1u);
      goto LABEL_588;
    }

    swift_unknownObjectRetain();
    specialized Rope.formIndex(before:)(&v829, v68, v77, v78, v71);
    if (v829 != v71)
    {
      goto LABEL_567;
    }

    v75 = *(&v829 + 1);
    v76 = v830;
    if (v830)
    {
      v6 = *(v830 + 24 * ((*(&v829 + 1) >> ((4 * *(v830 + 18) + 8) & 0x3C)) & 0xFLL) + 24);

      swift_unknownObjectRelease();
      v65 = v31 - v6;
      if (__OFSUB__(v31, v6))
      {
        goto LABEL_574;
      }
    }

    else
    {
      v79 = specialized Rope._Node.subscript.getter(*(&v829 + 1), v68);
      v6 = v80;
      swift_unknownObjectRelease();

      v65 = v31 - v79;
      if (__OFSUB__(v31, v79))
      {
        goto LABEL_580;
      }

      v76 = 0;
    }

    v42 = v7;
    v7 = v791;
LABEL_35:
    *&v806 = v71;
    *(&v806 + 1) = v75;
    *&v807 = v76;
    *(&v807 + 1) = v28;
    *&v808 = v65;

    specialized AttributedString.Guts.updateRun(at:within:with:)(&v806, 0, v796, v797, &v813, v7, v42, &v824);

    v31 = v808;
    v60 = v797[9];
    v28 = v797[10];
    v44 = v797[11];
    v61 = v797[12];
    swift_unknownObjectRetain();
    v66 = specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v60, v28, v44, v61);
    v47 = v67;
    if (v66 != v61)
    {
      goto LABEL_374;
    }
  }

  if (v31)
  {
    goto LABEL_47;
  }

LABEL_43:
  v69 = v797[10];
  v70 = v797[11];
  v71 = v797[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v796, 1, v68, v69, v70, v71) != v71)
  {
    goto LABEL_572;
  }

  v75 = v72;
  v76 = v73;
  v6 = v74;
  if (v68)
  {
    v28 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v71, v72, v73, v68, v69);
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0;
  }

  v65 = v796 - v6;
  if (!__OFSUB__(v796, v6))
  {
    goto LABEL_35;
  }

  __break(1u);
LABEL_56:

  v7 = v797;

LABEL_57:
  if (v793 < 0x800)
  {
    goto LABEL_111;
  }

  v31 = *(v795 + 16);

  v44 = 0;
  *&v829 = MEMORY[0x1865CB700](v31, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v47 = v795 + 64;
  v81 = *(v795 + 64);
  v82 = 1 << *(v795 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v6 = v83 & v81;
  v84 = (v82 + 63) >> 6;
  if ((v83 & v81) != 0)
  {
    while (1)
    {
      v85 = v44;
LABEL_66:
      v86 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v87 = (*(v795 + 48) + ((v85 << 10) | (16 * v86)));
      v88 = *v87;
      v28 = v87[1];

      v31 = &v829;
      specialized Set._Variant.insert(_:)(&v806, v88, v28);

      if (!v6)
      {
        goto LABEL_62;
      }
    }
  }

  while (1)
  {
LABEL_62:
    v85 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_373;
    }

    if (v85 >= v84)
    {
      break;
    }

    v6 = *(v47 + 8 * v85);
    ++v44;
    if (v6)
    {
      v44 = v85;
      goto LABEL_66;
    }
  }

  *&v813 = v829;
  v89 = *(v7 + 40);
  v908 = *(v7 + 24);
  v909 = v89;
  v910 = *(v7 + 56);
  v90 = BigString.UTF8View.count.getter();
  if (v90 < v789)
  {
    goto LABEL_597;
  }

  v91 = v90;
  v92 = *(v7 + 72);
  v93 = *(v7 + 80);
  v95 = *(v7 + 88);
  v94 = *(v7 + 96);
  swift_unknownObjectRetain();

  if (specialized Rope.find<A>(at:in:preferEnd:)(v789, 0, v92, v93, v95, v94) != v94)
  {
LABEL_598:
    __break(1u);
LABEL_599:
    __break(1u);
LABEL_600:
    __break(1u);
LABEL_601:
    __break(1u);
    goto LABEL_602;
  }

  v99 = v96;
  v100 = v97;
  v6 = v98;
  if (v92)
  {
    v101 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v94, v96, v97, v92, v93);
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0;
  }

  v102 = v789;
  v103 = v789 - v6;
  if (__OFSUB__(v789, v6))
  {
    goto LABEL_599;
  }

  *&v806 = v94;
  *(&v806 + 1) = v99;
  *&v807 = v100;
  for (*(&v807 + 1) = v101; ; *(&v807 + 1) = v121)
  {
    *&v808 = v103;
    v107 = *(v7 + 72);
    if (v102 == v91)
    {
      v108 = *(v7 + 80);
      v109 = *(v7 + 88);
      v110 = *(v7 + 96);
      v111 = v102;
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v111, 0, v107, v108, v109, v110) != v110)
      {
        goto LABEL_570;
      }

      v6 = v114;
      if (v107)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v110, v112, v113, v107, v108);
        swift_unknownObjectRelease();
      }

      v115 = v789 - v6;
      if (__OFSUB__(v789, v6))
      {
        goto LABEL_571;
      }

      goto LABEL_87;
    }

    if (v107)
    {
      v115 = *(v7 + 88);
LABEL_87:
      if (v103 >= v115)
      {
        goto LABEL_110;
      }

      goto LABEL_88;
    }

    if (v103 >= 0)
    {
      goto LABEL_110;
    }

LABEL_88:
    if (!*(v813 + 16))
    {
      goto LABEL_110;
    }

    specialized AttributedString.Guts.updateRun(at:within:with:)(&v806, v789, v91, v7, &v813, v795, v794, &v816);

    v116 = *(&v806 + 1);
    v47 = v806;
    v117 = v7;
    v7 = v808;
    v44 = v117[9];
    v118 = v117[10];
    v120 = v117[11];
    v119 = v117[12];
    v829 = v806;
    *&v830 = v807;
    v121 = *(&v807 + 1) + 1;
    if (__OFADD__(*(&v807 + 1), 1))
    {
      goto LABEL_504;
    }

    if (v806 != v119)
    {
      goto LABEL_505;
    }

    if (v807)
    {
      v122 = *(v807 + 24 * ((*(&v806 + 1) >> ((4 * *(v807 + 18) + 8) & 0x3C)) & 0xFLL) + 24);
      swift_unknownObjectRetain();
      v123 = __OFADD__(v7, v122);
      v103 = v7 + v122;
      if (v123)
      {
        goto LABEL_506;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v124 = specialized Rope._Node.subscript.getter(v116, v44);
      v6 = v125;

      v123 = __OFADD__(v7, v124);
      v103 = v7 + v124;
      if (v123)
      {
        goto LABEL_506;
      }
    }

    specialized Rope.formIndex(after:)(&v829, v44, v118, v120, v47);
    swift_unknownObjectRelease();
    if (v103 < v91)
    {
      v104 = *(&v829 + 1);
      v105 = v829;
      v106 = v830;
      v7 = v797;
LABEL_76:
      v102 = v789;
      goto LABEL_77;
    }

    v7 = v797;
    v126 = v797[9];
    v121 = v797[10];
    v103 = v797[11];
    v105 = v797[12];
    swift_unknownObjectRetain();
    if (v789 != v91)
    {
      v104 = specialized Rope._endPath.getter(v126);
      if (v126)
      {
        swift_unknownObjectRelease();
        v106 = 0;
      }

      else
      {
        v106 = 0;
        v121 = 0;
        v103 = 0;
      }

      goto LABEL_76;
    }

    if (specialized Rope.find<A>(at:in:preferEnd:)(v789, 0, v126, v121, v103, v105) != v105)
    {
      goto LABEL_579;
    }

    v104 = v127;
    v106 = v128;
    v6 = v129;
    if (v126)
    {
      v121 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v105, v127, v128, v126, v121);
      swift_unknownObjectRelease();
    }

    else
    {
      v121 = 0;
    }

    v102 = v789;
    v103 = v789 - v6;
    if (__OFSUB__(v789, v6))
    {
      break;
    }

LABEL_77:
    *&v806 = v105;
    *(&v806 + 1) = v104;
    *&v807 = v106;
  }

  __break(1u);
LABEL_110:

LABEL_111:

  if (v816 < v824)
  {
    goto LABEL_587;
  }

  v781 = v816;
  v772 = v824;
  v130 = *(v7 + 104);
  v131 = specialized Array.count.getter();
  if (v131 < 0)
  {
LABEL_588:
    __break(1u);
LABEL_589:
    __break(1u);
    goto LABEL_590;
  }

  v31 = v131;
  if (v131)
  {
    v28 = 0;
    v47 = v792 >> 10;
    v44 = v793 >> 10;
    v132 = 88;
    *&v794 = v131;
    *&v795 = v793 >> 10;
    while (1)
    {
      if (v28 >= *(v130 + 2))
      {
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
LABEL_370:
        __break(1u);
LABEL_371:
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
        goto LABEL_375;
      }

      v133 = *&v130[v132 - 56];
      v134 = v47 >= v133 >> 10 || v133 >> 10 >= v44;
      v135 = !v134;
      v6 = *&v130[v132 - 24];
      v136 = v6 >> 10;
      if (v47 >= v6 >> 10)
      {
        break;
      }

      if (v135)
      {
        if (v136 < v44)
        {
          v806 = v849;
          *&v807 = v850;
          v829 = v849;
          *&v830 = v850;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 104) = v130;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v130 = specialized _ArrayBuffer._consumeAndCreateNew()(v130);
          }

          if (v28 >= *(v130 + 2))
          {
            goto LABEL_575;
          }

          v138 = &v130[v132];
          v139 = v792;
          *(v138 - 7) = v792;
          v140 = v807;
          *(v138 - 3) = v806;
          *(v138 - 4) = v140;
          *(v138 - 3) = v139;
          v141 = v829;
          *v138 = v830;
          *(v138 - 1) = v141;
          *(v7 + 104) = v130;
          goto LABEL_115;
        }

        goto LABEL_131;
      }

      if (v136 < v44)
      {
        v147 = *&v130[v132 - 48];
        v6 = *&v130[v132 - 40];
        v148 = v7;
        v7 = *&v130[v132 - 32];
        v806 = v849;
        *&v807 = v850;
        v149 = swift_isUniquelyReferenced_nonNull_native();
        *(v148 + 104) = v130;
        if ((v149 & 1) == 0)
        {
          v130 = specialized _ArrayBuffer._consumeAndCreateNew()(v130);
        }

        v44 = v795;
        if (v28 >= *(v130 + 2))
        {
          goto LABEL_576;
        }

        v150 = &v130[v132];
        *(v150 - 7) = v133;
        *(v150 - 6) = v147;
        *(v150 - 5) = v6;
        *(v150 - 4) = v7;
        *(v150 - 3) = v792;
        v151 = v806;
        *v150 = v807;
        *(v150 - 1) = v151;
        v7 = v797;
        v797[13] = v130;
        v31 = v794;
      }

LABEL_115:
      ++v28;
      v132 += 64;
      if (v31 == v28)
      {
        goto LABEL_140;
      }
    }

    if (!v135)
    {
      goto LABEL_115;
    }

LABEL_131:
    v142 = *&v130[v132 - 16];
    v44 = *&v130[v132 - 8];
    v143 = *&v130[v132];
    v806 = v847;
    *&v807 = v848;
    v144 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 104) = v130;
    if ((v144 & 1) == 0)
    {
      v130 = specialized _ArrayBuffer._consumeAndCreateNew()(v130);
    }

    if (v28 >= *(v130 + 2))
    {
      goto LABEL_507;
    }

    v145 = &v130[v132];
    *(v145 - 7) = v793;
    v146 = v807;
    *(v145 - 3) = v806;
    *(v145 - 4) = v146;
    *(v145 - 3) = v6;
    *(v145 - 2) = v142;
    *(v145 - 1) = v44;
    *v145 = v143;
    v7 = v797;
    v797[13] = v130;
    v31 = v794;
    v44 = v795;
    goto LABEL_115;
  }

LABEL_140:
  v47 = *(v7 + 32);
  v44 = *(v7 + 40);
  v152 = *(v7 + 48);
  v6 = *(v7 + 56);
  v153 = *(v7 + 64);
  v902 = *(v7 + 24);
  v28 = v902;
  v903 = v47;
  v904 = v44;
  v905 = v152;
  v906 = v6;
  v907 = v153;
  *&v795 = BigString.UTF8View.count.getter();
  v154 = v790;
  v155 = *(v790 + 24);
  v832 = *(v790 + 8);
  v833 = v155;
  v156 = *(v790 + 56);
  v834 = *(v790 + 40);
  v835 = v156;
  *&v829 = v28;
  *(&v829 + 1) = v47;
  *&v830 = v44;
  *(&v830 + 1) = v152;
  *&v831 = v6;
  *(&v831 + 1) = v153;
  swift_unknownObjectRetain();
  BigString.init()();
  v157 = v837;
  v158 = v785;
  *v785 = v836;
  v158[1] = v157;
  v158[2] = v838;
  swift_unknownObjectRelease();
  (v788)(&v829, v786);
  v159 = v830;
  *(v7 + 24) = v829;
  *(v7 + 40) = v159;
  *(v7 + 56) = v831;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v160 = v833;
  *(v154 + 8) = v832;
  *(v154 + 24) = v160;
  v161 = v835;
  *(v154 + 40) = v834;
  *(v154 + 56) = v161;
  v162 = *(v7 + 40);
  v899 = *(v7 + 24);
  v900 = v162;
  v901 = *(v7 + 56);
  v163 = BigString.UTF8View.count.getter();
  v164 = v163 - v795;
  if (__OFSUB__(v163, v795))
  {
    goto LABEL_589;
  }

  if (__OFADD__(v789 - v796, v164))
  {
LABEL_590:
    __break(1u);
    goto LABEL_591;
  }

  specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v796, v789, v789 - v796 + v164, v783, v784);
  v165 = *(v7 + 40);
  v896 = *(v7 + 24);
  v897 = v165;
  v898 = *(v7 + 56);
  v166 = BigString.UTF8View.count.getter();
  if (__OFSUB__(v166, v795))
  {
LABEL_591:
    __break(1u);
    goto LABEL_592;
  }

  *&v791 = v166 - v795;
  v31 = *(v7 + 104);
  v167 = specialized Array.count.getter();
  if (v167 < 0)
  {
LABEL_592:
    __break(1u);
LABEL_593:
    __break(1u);
    goto LABEL_594;
  }

  if (v167)
  {
    v168 = 0;
    v169 = 88;
    v170 = v796;
    v787 = v167;
    do
    {
      if (v168 >= *(v31 + 16))
      {
        goto LABEL_368;
      }

      *&v793 = v168;
      v171 = *(v31 + v169 - 56);
      v47 = *(v31 + v169 - 24);
      v788 = *(v31 + v169 - 16);
      v7 = *(v31 + v169 - 8);
      *&v790 = *(v31 + v169);
      v172 = v171 >> 11;
      *&v792 = v169;
      if (v170 >= v171 >> 11)
      {
        v173 = v791;
        if (v789 != v170 || (v172 == v170 ? (v174 = v791 == 0) : (v174 = 1), v174))
        {
LABEL_157:
          v184 = *(v797 + 5);
          v887 = *(v797 + 3);
          v888 = v184;
          v889 = *(v797 + 7);
          v6 = v887;
          swift_unknownObjectRetain();
          v178 = BigString.UTF8View.index(_:offsetBy:)();
          v28 = v185;
          v181 = v186;
          v183 = v187;
          swift_unknownObjectRelease();
          goto LABEL_158;
        }
      }

      else
      {
        v173 = v791;
        if (!v791)
        {
          goto LABEL_157;
        }
      }

      v175 = *v785;
      v176 = v785[1];
      v895 = v785[2];
      v894 = v176;
      v893 = v175;
      v177 = *(v797 + 5);
      v890 = *(v797 + 3);
      v891 = v177;
      v892 = *(v797 + 7);
      BigString.startIndex.getter();
      v123 = __OFADD__(v172, v173);
      v6 = v172 + v173;
      if (v123)
      {
        __break(1u);
LABEL_411:
        __break(1u);
        goto LABEL_412;
      }

      v914[0] = v893;
      v914[1] = v894;
      v915 = v895;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v914, &v806);
      v178 = BigString.UTF8View.index(_:offsetBy:)();
      v28 = v179;
      v181 = v180;
      v183 = v182;
      outlined destroy of BigString(&v893);
LABEL_158:
      v44 = v47 >> 11;
      v188 = v7;
      *&v795 = v178;
      *&v794 = v183;
      if (v796 >= v47 >> 11)
      {
        v196 = v797[13];
        v7 = v790;
        if (v793 >= *(v196 + 16))
        {
          __break(1u);
          goto LABEL_498;
        }

        v189 = v791;
        if ((*(v196 + v792 - 56) ^ v178) < 0x400 || v791 == 0)
        {
LABEL_168:
          v6 = v797;
          v198 = *(v797 + 5);
          v883[3] = *(v797 + 3);
          v883[4] = v198;
          v883[5] = *(v797 + 7);
          swift_unknownObjectRetain();
          *&v795 = BigString.UTF8View.index(_:offsetBy:)();
          v28 = v199;
          v181 = v200;
          *&v794 = v201;
          swift_unknownObjectRelease();
          v44 = v788;
          goto LABEL_169;
        }
      }

      else
      {
        v189 = v791;
        v7 = v790;
        if (!v791)
        {
          goto LABEL_168;
        }
      }

      v190 = *v785;
      v191 = v785[1];
      v886 = v785[2];
      v885 = v191;
      v884 = v190;
      v192 = *(v797 + 5);
      v883[6] = *(v797 + 3);
      v883[7] = v192;
      v883[8] = *(v797 + 7);
      BigString.startIndex.getter();
      if (__OFADD__(v44, v189))
      {
        goto LABEL_411;
      }

      v916[0] = v884;
      v916[1] = v885;
      v917 = v886;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v916, &v806);
      v47 = BigString.UTF8View.index(_:offsetBy:)();
      v44 = v193;
      v188 = v194;
      v7 = v195;
      outlined destroy of BigString(&v884);
      v6 = v797;
LABEL_169:
      v31 = *(v6 + 104);
      v202 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 104) = v31;
      if ((v202 & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
      }

      v170 = v796;
      v203 = v792;
      if (v793 >= *(v31 + 16))
      {
        goto LABEL_369;
      }

      v168 = v793 + 1;
      v204 = (v31 + v792);
      *(v204 - 7) = v795;
      *(v204 - 6) = v28;
      v205 = v794;
      *(v204 - 5) = v181;
      *(v204 - 4) = v205;
      *(v204 - 3) = v47;
      *(v204 - 2) = v44;
      *(v204 - 1) = v188;
      *v204 = v7;
      v169 = v203 + 64;
      v7 = v797;
      v797[13] = v31;
    }

    while (v787 != v168);
  }

  if (__OFADD__(v781, v791))
  {
    goto LABEL_593;
  }

  if (v781 + v791 < v772)
  {
LABEL_594:
    __break(1u);
    goto LABEL_595;
  }

  v771 = v781 + v791;
  v206 = *(v7 + 72);
  v207 = *(v7 + 88);
  v208 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v208);
  if (!v206)
  {
    goto LABEL_496;
  }

  swift_unknownObjectRelease();
  if (!v207)
  {
    goto LABEL_496;
  }

  v209 = *v785;
  v210 = v785[1];
  v883[2] = v785[2];
  v883[1] = v210;
  v883[0] = v209;
  v211 = *(v7 + 40);
  v880 = *(v7 + 24);
  v881 = v211;
  v882 = *(v7 + 56);
  v212 = *v785;
  v213 = v785[1];
  v919 = *(v785 + 4);
  v918[1] = v213;
  v918[0] = v212;
  BigString.startIndex.getter();
  outlined init with copy of Rope<BigString._Chunk>._Node?(v918, &v806);
  v214 = BigString.UTF8View.index(_:offsetBy:)();
  v216 = v215;
  v218 = v217;
  v220 = v219;
  outlined destroy of BigString(v883);
  v221 = *(v7 + 40);
  v877 = *(v7 + 24);
  v878 = v221;
  v879 = *(v7 + 56);
  if (__OFSUB__(v771, v772))
  {
LABEL_602:
    __break(1u);
    goto LABEL_603;
  }

  swift_unknownObjectRetain();
  v222 = BigString.UTF8View.index(_:offsetBy:)();
  v763 = v224;
  v764 = v223;
  v762 = v225;
  swift_unknownObjectRelease();
  v226 = *(v7 + 40);
  v874 = *(v7 + 24);
  v875 = v226;
  v876 = *(v7 + 56);
  swift_unknownObjectRetain();
  v761 = v214;
  v759[2] = v216;
  v759[3] = v218;
  v227 = v220;
  v228 = BigString.UnicodeScalarView.index(roundingDown:)();
  v230 = v229;
  v777 = v231;
  v233 = v232;
  swift_unknownObjectRelease();
  v234 = *(v7 + 40);
  v871 = *(v7 + 24);
  v872 = v234;
  v873 = *(v7 + 56);
  swift_unknownObjectRetain();
  v760 = v222;
  v235 = BigString.UnicodeScalarView.index(roundingUp:)();
  swift_unknownObjectRelease();
  v765 = v228;
  v236 = v228 >> 11;
  if (v235 >> 11 < v228 >> 11)
  {
LABEL_603:
    __break(1u);
    goto LABEL_604;
  }

  v776 = v233;
  v237 = v230;
  v789 = v235 >> 11;
  v759[1] = v227;
  v238 = *(v7 + 72);
  v239 = *(v7 + 80);
  v240 = *(v7 + 88);
  v241 = *(v7 + 96);
  swift_unknownObjectRetain();
  swift_retain_n();
  v242 = v236;
  if (specialized Rope.find<A>(at:in:preferEnd:)(v236, 0, v238, v239, v240, v241) != v241)
  {
LABEL_604:
    __break(1u);
LABEL_605:
    __break(1u);
    goto LABEL_606;
  }

  v246 = v245;
  v787 = v243;
  v788 = v241;
  v786 = v244;
  if (v238)
  {
    v247 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v241, v243, v244, v238, v239);
    swift_unknownObjectRelease();
  }

  else
  {
    v247 = 0;
  }

  v248 = v765;

  if (__OFSUB__(v242, v246))
  {
    goto LABEL_605;
  }

  v249 = v237;
  *&v791 = v242 - v246;
  v783 = v247;
  v767 = MEMORY[0x1E69E7CC8];
  v770 = MEMORY[0x1E69E7CC8];
  v250 = v777;
  v784 = v242;
LABEL_185:
  v44 = v248;
  v781 = v249;
  while (2)
  {
    v780 = v250;
    v779 = v776;
    v251 = *(v7 + 72);
    v252 = *(v7 + 80);
    v253 = *(v7 + 88);
    v254 = *(v7 + 96);
    swift_unknownObjectRetain();
    if (v242 == v789)
    {
      v255 = v44;
      if (specialized Rope.find<A>(at:in:preferEnd:)(v242, 0, v251, v252, v253, v254) != v254)
      {
        goto LABEL_568;
      }

      v259 = v258;
      if (v251)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v254, v256, v257, v251, v252);
        swift_unknownObjectRelease();
      }

      v253 = v242 - v259;
      if (__OFSUB__(v242, v259))
      {
        goto LABEL_569;
      }

      v44 = v255;
    }

    else
    {
      specialized Rope._endPath.getter(v251);
      if (v251)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v253 = 0;
      }
    }

    if (v791 == v253)
    {

      v382 = 0;
      v383 = v770 + 64;
      v384 = 1 << *(v770 + 32);
      v385 = -1;
      if (v384 < 64)
      {
        v385 = ~(-1 << v384);
      }

      v386 = v385 & *(v770 + 64);
      v387 = (v384 + 63) >> 6;
      while (1)
      {
        if (!v386)
        {
          do
          {
            v388 = v382 + 1;
            if (__OFADD__(v382, 1))
            {
              goto LABEL_573;
            }

            if (v388 >= v387)
            {
              goto LABEL_339;
            }

            v386 = *(v383 + 8 * v388);
            ++v382;
          }

          while (!v386);
          v382 = v388;
        }

        v389 = __clz(__rbit64(v386));
        v386 &= v386 - 1;
        v390 = v389 | (v382 << 6);
        v391 = *(*(v770 + 56) + 8 * v390);
        *&v791 = *(v391 + 16);
        if (v791)
        {
          v786 = v386;
          v787 = v387;
          v788 = v382;
          v789 = v383;
          v392 = (*(v770 + 48) + 16 * v390);
          v393 = v392[1];
          *&v794 = *v392;
          *&v792 = v391 + 32;

          v394 = v391;
          v395 = 0;
          *&v790 = v394;
          do
          {
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
            v396 = (v792 + 16 * v395);
            v398 = *v396;
            v397 = v396[1];
            *&v793 = v395 + 1;

            AttributedString._InternalRunsSlice.startIndex.getter(v7, v398, v839);
            v6 = v840;
            v806 = v839[0];
            v807 = v839[1];
            *&v808 = v840;
            *&v796 = v397;
            *&v795 = v398;
            while (1)
            {
              v400 = *(v7 + 72);
              if (v398 == v397)
              {
                v401 = *(v7 + 80);
                v402 = *(v7 + 88);
                v365 = *(v7 + 96);
                swift_unknownObjectRetain();
                if (specialized Rope.find<A>(at:in:preferEnd:)(v398, 0, v400, v401, v402, v365) != v365)
                {
                  __break(1u);
LABEL_358:
                  __break(1u);
LABEL_359:
                  if ((v400 ^ v401))
                  {

LABEL_361:

                    goto LABEL_362;
                  }

                  v788 = v398;
                  v789 = v44;
                  v539 = v402;
                  v542 = *(v402 + 64);
                  v541 = v402 + 64;
                  v540 = v542;
                  v543 = 1 << *(v539 + 32);
                  v544 = -1;
                  if (v543 < 64)
                  {
                    v544 = ~(-1 << v543);
                  }

                  v545 = v544 & v540;
                  v546 = (v543 + 63) >> 6;
                  *&v794 = v539;

                  v547 = 0;
LABEL_385:
                  if (v545)
                  {
                    goto LABEL_390;
                  }

                  while (1)
                  {
                    v548 = v547 + 1;
                    if (__OFADD__(v547, 1))
                    {
                      break;
                    }

                    if (v548 >= v546)
                    {
                      goto LABEL_412;
                    }

                    v545 = *(v541 + 8 * v548);
                    ++v547;
                    if (v545)
                    {
                      v547 = v548;
LABEL_390:
                      v549 = __clz(__rbit64(v545)) | (v547 << 6);
                      v550 = (*(v794 + 48) + 16 * v549);
                      v552 = *v550;
                      v551 = v550[1];
                      outlined init with copy of AttributedString._AttributeValue(*(v794 + 56) + 72 * v549, &v806);
                      v790 = v806;
                      v791 = v807;
                      v792 = v809;
                      v793 = v808;
                      v553 = *v810;

                      if (v551)
                      {
                        v545 &= v545 - 1;
                        v824 = v790;
                        v825 = v791;
                        v826 = v793;
                        v827 = v792;
                        v554 = v792;
                        v828 = v553;
                        v365 = *(&v793 + 1);
                        if (v792 == 1)
                        {
                          outlined copy of AttributedString.AttributeRunBoundaries?(*(&v793 + 1), 1);

                          outlined consume of AttributedString.AttributeRunBoundaries?(v365, 1);
                          outlined consume of AttributedString.AttributeRunBoundaries?(0, 0);
                          goto LABEL_398;
                        }

                        *&v806 = *(&v793 + 1);
                        *(&v806 + 1) = v792;
                        v816 = 0uLL;
                        outlined copy of AttributedString.AttributeRunBoundaries?(*(&v793 + 1), v792);
                        outlined copy of AttributedString.AttributeRunBoundaries?(v365, v554);
                        v555 = specialized static AttributedString.AttributeRunBoundaries.== infix(_:_:)(&v806, &v816);

                        outlined consume of AttributedString.AttributeRunBoundaries?(v365, v554);
                        if ((v555 & 1) == 0)
                        {

                          v7 = v797;
LABEL_398:
                          outlined destroy of AttributedString._AttributeValue(&v824);
                          goto LABEL_385;
                        }

                        *&v793 = v546;
                        v556 = v789;
                        if (*(v789 + 16))
                        {
                          v557 = specialized __RawDictionaryStorage.find<A>(_:)(v552, v551);
                          v559 = v558;

                          if (v559)
                          {
                            outlined init with copy of AttributedString._AttributeValue(*(v556 + 56) + 72 * v557, &v816);
                            goto LABEL_401;
                          }
                        }

                        else
                        {
                        }

                        v820 = 0;
                        v818 = 0u;
                        v819 = 0u;
                        v816 = 0u;
                        v817 = 0u;
LABEL_401:
                        v7 = v797;
                        v546 = v793;
                        outlined init with copy of AttributedString._AttributeValue(&v824, &v813);
                        v365 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
                        outlined init with copy of FloatingPointRoundingRule?(&v816, &v806, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                        outlined init with copy of FloatingPointRoundingRule?(&v813, &v810[8], &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                        if (*(&v807 + 1))
                        {
                          outlined init with copy of FloatingPointRoundingRule?(&v806, &v803, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                          if (*&v810[32])
                          {
                            v800 = *&v810[40];
                            v801 = v811;
                            v802 = v812;
                            v798 = *&v810[8];
                            v799 = *&v810[24];
                            v560 = *(&v804 + 1);
                            v787 = v805;
                            v786 = __swift_project_boxed_opaque_existential_1(&v803, *(&v804 + 1));
                            v561 = __swift_project_boxed_opaque_existential_1(&v798, *(&v799 + 1));
                            *&v792 = v759;
                            v562 = *(v560 - 8);
                            MEMORY[0x1EEE9AC00](v561);
                            v784 = v759 - ((v563 + 15) & 0xFFFFFFFFFFFFFFF0);
                            *&v791 = v759;
                            v565 = MEMORY[0x1EEE9AC00](v564);
                            (*(v567 + 16))(v759 - ((v566 + 15) & 0xFFFFFFFFFFFFFFF0), v565);
                            v568 = type metadata accessor for Optional();
                            *&v790 = v759;
                            v783 = v568;
                            v569 = *(v568 - 8);
                            MEMORY[0x1EEE9AC00](v568);
                            v571 = v759 - v570;
                            v572 = swift_dynamicCast();
                            v573 = *(v562 + 56);
                            if (v572)
                            {
                              v573(v571, 0, 1, v560);
                              v574 = v784;
                              (*(v562 + 32))(v784, v571, v560);
                              v365 = dispatch thunk of static Equatable.== infix(_:_:)();
                              (*(v562 + 8))(v574, v560);
                              outlined destroy of TermOfAddress?(&v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                              outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                            }

                            else
                            {
                              v573(v571, 1, 1, v560);
                              outlined destroy of TermOfAddress?(&v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                              outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                              (*(v569 + 8))(v571, v783);
                              v365 = 0;
                            }

                            v7 = v797;
                            outlined destroy of AttributedString._AttributeValue(&v798);
                            outlined destroy of AttributedString._AttributeValue(&v824);
                            outlined destroy of AttributedString._AttributeValue(&v803);
                            outlined destroy of TermOfAddress?(&v806, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                            v546 = v793;
                            if ((v365 & 1) == 0)
                            {
LABEL_611:

                              goto LABEL_361;
                            }

                            goto LABEL_385;
                          }

LABEL_609:
                          outlined destroy of TermOfAddress?(&v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                          outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                          outlined destroy of AttributedString._AttributeValue(&v824);
                          outlined destroy of AttributedString._AttributeValue(&v803);
                        }

                        else
                        {
                          outlined destroy of TermOfAddress?(&v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                          outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                          outlined destroy of AttributedString._AttributeValue(&v824);
                          if (!*&v810[32])
                          {
                            outlined destroy of TermOfAddress?(&v806, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                            goto LABEL_385;
                          }
                        }

                        outlined destroy of TermOfAddress?(&v806, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMR);
                        goto LABEL_611;
                      }

LABEL_412:

                      v575 = 0;
                      v576 = v789;
                      v577 = v789 + 64;
                      v578 = 1 << *(v789 + 32);
                      v579 = -1;
                      if (v578 < 64)
                      {
                        v579 = ~(-1 << v578);
                      }

                      v365 = v579 & *(v789 + 64);
                      v580 = ((v578 + 63) >> 6);
                      v788 = v580;
                      while (1)
                      {
LABEL_415:
                        if (!v365)
                        {
                          do
                          {
                            v581 = v575 + 1;
                            if (__OFADD__(v575, 1))
                            {
                              goto LABEL_618;
                            }

                            if (v581 >= v580)
                            {
                              goto LABEL_440;
                            }

                            v365 = *(v577 + 8 * v581);
                            ++v575;
                          }

                          while (!v365);
                          v575 = v581;
                        }

                        v582 = __clz(__rbit64(v365)) | (v575 << 6);
                        v583 = (*(v576 + 48) + 16 * v582);
                        v585 = *v583;
                        v584 = v583[1];
                        outlined init with copy of AttributedString._AttributeValue(*(v576 + 56) + 72 * v582, &v806);
                        v790 = v806;
                        v791 = v807;
                        v792 = v809;
                        v793 = v808;
                        v586 = *v810;

                        if (!v584)
                        {
LABEL_440:

                          goto LABEL_441;
                        }

                        v365 &= v365 - 1;
                        v824 = v790;
                        v825 = v791;
                        v826 = v793;
                        v827 = v792;
                        v587 = v792;
                        v828 = v586;
                        if (v792 == 1)
                        {
                          break;
                        }

                        v590 = *(&v793 + 1);
                        *&v806 = *(&v793 + 1);
                        *(&v806 + 1) = v792;
                        v816 = 0uLL;
                        outlined copy of AttributedString.AttributeRunBoundaries?(*(&v793 + 1), v792);
                        outlined copy of AttributedString.AttributeRunBoundaries?(v590, v587);
                        v591 = specialized static AttributedString.AttributeRunBoundaries.== infix(_:_:)(&v806, &v816);

                        outlined consume of AttributedString.AttributeRunBoundaries?(v590, v587);
                        if ((v591 & 1) == 0)
                        {

                          v7 = v797;
                          goto LABEL_428;
                        }

                        v592 = v794;
                        if (*(v794 + 16))
                        {
                          v593 = specialized __RawDictionaryStorage.find<A>(_:)(v585, v584);
                          v595 = v594;

                          v7 = v797;
                          if (v595)
                          {
                            outlined init with copy of AttributedString._AttributeValue(*(v592 + 56) + 72 * v593, &v816);
                          }

                          else
                          {
                            v820 = 0;
                            v818 = 0u;
                            v819 = 0u;
                            v816 = 0u;
                            v817 = 0u;
                          }
                        }

                        else
                        {

                          v820 = 0;
                          v818 = 0u;
                          v819 = 0u;
                          v816 = 0u;
                          v817 = 0u;
                          v7 = v797;
                        }

                        v580 = v788;
                        v576 = v789;
                        outlined init with copy of AttributedString._AttributeValue(&v824, &v813);
                        outlined init with copy of FloatingPointRoundingRule?(&v816, &v806, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                        outlined init with copy of FloatingPointRoundingRule?(&v813, &v810[8], &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                        if (*(&v807 + 1))
                        {
                          outlined init with copy of FloatingPointRoundingRule?(&v806, &v803, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                          if (!*&v810[32])
                          {
                            outlined destroy of TermOfAddress?(&v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                            outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                            outlined destroy of AttributedString._AttributeValue(&v824);
                            outlined destroy of AttributedString._AttributeValue(&v803);
LABEL_613:
                            outlined destroy of TermOfAddress?(&v806, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMR);
LABEL_614:

LABEL_362:
                            v482 = v785;
                            v483 = *v785;
                            v484 = v785[2];
                            v814 = v785[1];
                            v815 = v484;
                            v813 = v483;
                            v485 = *v785;
                            v486 = v785[1];
                            v921 = *(v785 + 4);
                            v920[1] = v486;
                            v920[0] = v485;
                            outlined init with copy of Rope<BigString._Chunk>._Node?(v920, &v806);
                            v487 = BigString.index(before:)();
                            v489 = v488;
                            v491 = v490;
                            v493 = v492;
                            outlined destroy of BigString(&v813);
                            v796 = *(v7 + 24);
                            v494 = *(v7 + 40);
                            v798 = v796;
                            v799 = v494;
                            v800 = *(v7 + 56);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMR);
                            v495 = swift_allocObject();
                            _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v495, 1);
                            *v496 = 2;
                            _NSBundleDeallocatingImmortalBundle();
                            *&v794 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
                            swift_unknownObjectRetain();

                            v497 = *v482;
                            v498 = v482[2];
                            v804 = v482[1];
                            v805 = v498;
                            v803 = v497;
                            v499 = *v482;
                            v500 = v482[1];
                            v923 = *(v482 + 4);
                            v922[0] = v499;
                            v922[1] = v500;
                            outlined init with copy of Rope<BigString._Chunk>._Node?(v922, &v806);
                            v501 = v489;
                            v502 = v491;
                            v503 = BigString.index(after:)();
                            v505 = v504;
                            v507 = v506;
                            v509 = v508;
                            outlined destroy of BigString(&v803);
                            if (v487 >> 10 > v503 >> 10)
                            {
                              goto LABEL_631;
                            }

                            *&v824 = v487;
                            *(&v824 + 1) = v501;
                            *&v825 = v502;
                            *(&v825 + 1) = v493;
                            *&v826 = v503;
                            *(&v826 + 1) = v505;
                            *&v827 = v507;
                            *(&v827 + 1) = v509;
                            specialized BidirectionalCollection<>._getBlock(for:in:)(v794, &v824, &v806);
                            swift_unknownObjectRelease();
                            if (*(&v809 + 1) == 2)
                            {
                              goto LABEL_637;
                            }

                            v7 = v797;
                            v420 = v795;
                            if (v487 >> 10 > v808 >> 10)
                            {
                              goto LABEL_632;
                            }

                            v481 = 0;
                            v475 = v487 >> 11;
                            v476 = v808 >> 11;
                            v823 = 0;
LABEL_366:
                            v480 = v771;
LABEL_442:
                            v613 = v785[1];
                            v856 = *v785;
                            v857 = v613;
                            v858 = v785[2];
                            if (v420 >= BigString.endIndex.getter() >> 10)
                            {
LABEL_452:
                              v477 = 0;
                              v478 = 0;
                              v479 = 0;
                            }

                            else
                            {
                              if (v481)
                              {
                                if (v480 < 1)
                                {
                                  goto LABEL_452;
                                }
                              }

                              else if (v476 >= v480)
                              {
                                goto LABEL_452;
                              }

                              if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v480 - 1, v480) & 1) == 0)
                              {
                                goto LABEL_452;
                              }

                              *&v793 = v476;
                              v614 = v785;
                              v615 = *v785;
                              v616 = v785[1];
                              v855[2] = v785[2];
                              v855[1] = v616;
                              v855[0] = v615;
                              v617 = *v785;
                              v618 = v785[1];
                              v925 = *(v785 + 4);
                              v924[0] = v617;
                              v924[1] = v618;
                              outlined init with copy of Rope<BigString._Chunk>._Node?(v924, &v806);
                              v619 = BigString.index(before:)();
                              v621 = v620;
                              v623 = v622;
                              *&v796 = v624;
                              outlined destroy of BigString(v855);
                              v795 = *(v7 + 24);
                              v625 = *(v7 + 40);
                              v851 = v795;
                              v852 = v625;
                              v853 = *(v7 + 56);
                              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMR);
                              v626 = swift_allocObject();
                              _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v626, 1);
                              *v627 = 2;
                              _NSBundleDeallocatingImmortalBundle();
                              *&v794 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
                              swift_unknownObjectRetain();

                              v628 = *v614;
                              v629 = v614[1];
                              v854[2] = v614[2];
                              v854[1] = v629;
                              v854[0] = v628;
                              v630 = *v614;
                              v631 = v614[1];
                              v927 = *(v614 + 4);
                              v926[0] = v630;
                              v926[1] = v631;
                              outlined init with copy of Rope<BigString._Chunk>._Node?(v926, &v806);
                              v632 = v623;
                              v633 = BigString.index(after:)();
                              v635 = v634;
                              v637 = v636;
                              v639 = v638;
                              outlined destroy of BigString(v854);
                              if (v619 >> 10 > v633 >> 10)
                              {
                                goto LABEL_629;
                              }

                              *&v792 = v619;
                              *&v816 = v619;
                              *(&v816 + 1) = v621;
                              *&v817 = v632;
                              *(&v817 + 1) = v796;
                              *&v818 = v633;
                              *(&v818 + 1) = v635;
                              *&v819 = v637;
                              *(&v819 + 1) = v639;
                              specialized BidirectionalCollection<>._getBlock(for:in:)(v794, &v816, &v806);
                              swift_unknownObjectRelease();
                              if (*(&v809 + 1) == 2)
                              {
                                goto LABEL_636;
                              }

                              v7 = v797;
                              v476 = v793;
                              if (v619 >> 10 > v808 >> 10)
                              {
                                goto LABEL_630;
                              }

                              v477 = v792 >> 11;
                              v478 = v808 >> 11;
                              v479 = 1;
LABEL_355:
                              v480 = v771;
                            }

                            *&v796 = v478;
                            if ((v823 & 1) == 0)
                            {
                              v640 = v772;
                              if (v772 >= v476)
                              {
                                v480 = v771;
                                goto LABEL_474;
                              }

                              LODWORD(v791) = v479;
                              *&v792 = v477;
                              v806 = 0uLL;
                              v641 = AttributedString.Guts._constrainedAttributes(at:with:)(v475, &v806);
                              v643 = v642;
                              *&v795 = v641;

                              *&v794 = v643;

                              AttributedString._InternalRunsSlice.startIndex.getter(v7, v640, v841);
                              v644 = v842;
                              v806 = v841[0];
                              v807 = v841[1];
                              *&v808 = v842;
                              *&v793 = v476;
                              while (1)
                              {
                                v648 = *(v7 + 72);
                                v649 = *(v7 + 88);
                                v650 = swift_unknownObjectRetain();
                                specialized Rope._endPath.getter(v650);
                                if (v648)
                                {
                                  swift_unknownObjectRelease();
                                  if (v644 >= v649)
                                  {
                                    goto LABEL_472;
                                  }
                                }

                                else if (v644 >= 0)
                                {
LABEL_472:
                                  swift_bridgeObjectRelease_n();
                                  swift_bridgeObjectRelease_n();
                                  v480 = v771;
                                  v478 = v796;
                                  v477 = v792;
                                  v479 = v791;
                                  break;
                                }

                                v651 = v795;

                                specialized AttributedString.Guts.updateRun(at:within:with:)(&v806, v772, v476, v7, v651, 0, 0);

                                v652 = v806;
                                v653 = v808;
                                v654 = v7;
                                v7 = *(v7 + 72);
                                v655 = v654[10];
                                v656 = v654[11];
                                v657 = v654[12];
                                v821 = v806;
                                v822 = v807;
                                v658 = *(&v807 + 1) + 1;
                                if (__OFADD__(*(&v807 + 1), 1))
                                {
                                  goto LABEL_581;
                                }

                                if (v806 != v657)
                                {
                                  goto LABEL_582;
                                }

                                if (v807)
                                {
                                  v659 = *(v807 + 24 * ((*(&v806 + 1) >> ((4 * *(v807 + 18) + 8) & 0x3C)) & 0xFLL) + 24);
                                  swift_unknownObjectRetain();
                                }

                                else
                                {
                                  swift_unknownObjectRetain();
                                  v659 = specialized Rope._Node.subscript.getter(*(&v652 + 1), v7);
                                }

                                v123 = __OFADD__(v653, v659);
                                v644 = v653 + v659;
                                if (v123)
                                {
                                  goto LABEL_583;
                                }

                                specialized Rope.formIndex(after:)(&v821, v7, v655, v656, v652);
                                swift_unknownObjectRelease();
                                v476 = v793;
                                if (*(&v652 + 1) < v793)
                                {
                                  v646 = *(&v821 + 1);
                                  v645 = v821;
                                  v647 = v822;
                                  v7 = v797;
                                }

                                else
                                {
                                  v7 = v797;
                                  v660 = v797[9];
                                  v658 = v797[10];
                                  v644 = v797[11];
                                  v645 = v797[12];
                                  v661 = swift_unknownObjectRetain();
                                  v646 = specialized Rope._endPath.getter(v661);
                                  if (v660)
                                  {
                                    swift_unknownObjectRelease();
                                    v647 = 0;
                                  }

                                  else
                                  {
                                    v647 = 0;
                                    v658 = 0;
                                    v644 = 0;
                                  }
                                }

                                *&v806 = v645;
                                *(&v806 + 1) = v646;
                                *&v807 = v647;
                                *(&v807 + 1) = v658;
                                *&v808 = v644;
                              }
                            }

LABEL_474:
                            if (v480 < v478)
                            {
                              v662 = v479;
                            }

                            else
                            {
                              v662 = 0;
                            }

                            if (v662 == 1)
                            {
                              v806 = 0uLL;
                              v663 = AttributedString.Guts._constrainedAttributes(at:with:)(v477, &v806);
                              v665 = v664;
                              *&v795 = v663;

                              *&v794 = v665;

                              AttributedString._InternalRunsSlice.startIndex.getter(v7, v480, &v843);
                              for (i = v846; ; v846 = i)
                              {
                                v670 = *(v7 + 72);
                                v671 = *(v7 + 88);
                                v672 = swift_unknownObjectRetain();
                                specialized Rope._endPath.getter(v672);
                                if (v670)
                                {
                                  swift_unknownObjectRelease();
                                  if (i >= v671)
                                  {
                                    goto LABEL_495;
                                  }
                                }

                                else if (i >= 0)
                                {
LABEL_495:
                                  swift_bridgeObjectRelease_n();
                                  swift_bridgeObjectRelease_n();
                                  break;
                                }

                                v673 = v795;

                                specialized AttributedString.Guts.updateRun(at:within:with:)(&v843, v771, v478, v7, v673, 0, 0);

                                v674 = v843;
                                v675 = v846;
                                v677 = *(v7 + 72);
                                v676 = *(v7 + 80);
                                v679 = *(v7 + 88);
                                v678 = *(v7 + 96);
                                v806 = v843;
                                *&v807 = v844;
                                v680 = v845 + 1;
                                if (__OFADD__(v845, 1))
                                {
                                  goto LABEL_584;
                                }

                                if (v843 != v678)
                                {
                                  goto LABEL_585;
                                }

                                if (v844)
                                {
                                  v681 = v844 + 24 * ((*(&v843 + 1) >> ((4 * *(v844 + 18) + 8) & 0x3C)) & 0xFLL);
                                  v682 = *(v681 + 24);
                                  v7 = *(v681 + 32);
                                  swift_unknownObjectRetain();
                                }

                                else
                                {
                                  swift_unknownObjectRetain();
                                  v682 = specialized Rope._Node.subscript.getter(*(&v674 + 1), v677);
                                  v7 = v683;
                                }

                                v123 = __OFADD__(v675, v682);
                                i = v675 + v682;
                                if (v123)
                                {
                                  goto LABEL_586;
                                }

                                specialized Rope.formIndex(after:)(&v806, v677, v676, v679, v674);
                                swift_unknownObjectRelease();
                                v478 = v796;
                                if (*(&v674 + 1) < v796)
                                {
                                  v668 = *(&v806 + 1);
                                  v667 = v806;
                                  v669 = v807;
                                  v7 = v797;
                                }

                                else
                                {
                                  v7 = v797;
                                  v684 = v797[9];
                                  v680 = v797[10];
                                  i = v797[11];
                                  v667 = v797[12];
                                  v685 = swift_unknownObjectRetain();
                                  v668 = specialized Rope._endPath.getter(v685);
                                  if (v684)
                                  {
                                    swift_unknownObjectRelease();
                                    v669 = 0;
                                  }

                                  else
                                  {
                                    v669 = 0;
                                    v680 = 0;
                                    i = 0;
                                  }
                                }

                                *&v843 = v667;
                                *(&v843 + 1) = v668;
                                v844 = v669;
                                v845 = v680;
                              }
                            }

LABEL_496:
                            *v810 = v833;
                            *&v810[16] = v834;
                            *&v810[32] = v835;
                            v806 = v829;
                            v807 = v830;
                            v808 = v831;
                            v809 = v832;
                            return outlined destroy of BigSubstring.UnicodeScalarView(&v806);
                          }

                          v800 = *&v810[40];
                          v801 = v811;
                          v802 = v812;
                          v798 = *&v810[8];
                          v799 = *&v810[24];
                          v596 = *(&v804 + 1);
                          v787 = v805;
                          v786 = __swift_project_boxed_opaque_existential_1(&v803, *(&v804 + 1));
                          v597 = __swift_project_boxed_opaque_existential_1(&v798, *(&v799 + 1));
                          *&v793 = v759;
                          *&v790 = *(v596 - 8);
                          MEMORY[0x1EEE9AC00](v597);
                          v784 = v759 - ((v598 + 15) & 0xFFFFFFFFFFFFFFF0);
                          *&v792 = v759;
                          v600 = MEMORY[0x1EEE9AC00](v599);
                          (*(v602 + 16))(v759 - ((v601 + 15) & 0xFFFFFFFFFFFFFFF0), v600);
                          v603 = type metadata accessor for Optional();
                          *&v791 = v759;
                          v604 = v603;
                          v605 = *(v603 - 8);
                          MEMORY[0x1EEE9AC00](v603);
                          v607 = v759 - v606;
                          v608 = v790;
                          v609 = swift_dynamicCast();
                          v610 = *(v608 + 56);
                          if (v609)
                          {
                            v610(v607, 0, 1, v596);
                            v611 = v784;
                            (*(v608 + 32))(v784, v607, v596);
                            v612 = dispatch thunk of static Equatable.== infix(_:_:)();
                            (*(v608 + 8))(v611, v596);
                          }

                          else
                          {
                            v610(v607, 1, 1, v596);
                            (*(v605 + 8))(v607, v604);
                            v612 = 0;
                          }

                          v7 = v797;
                          v576 = v789;
                          outlined destroy of TermOfAddress?(&v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                          outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                          outlined destroy of AttributedString._AttributeValue(&v798);
                          outlined destroy of AttributedString._AttributeValue(&v824);
                          outlined destroy of AttributedString._AttributeValue(&v803);
                          outlined destroy of TermOfAddress?(&v806, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                          v580 = v788;
                          if ((v612 & 1) == 0)
                          {
                            goto LABEL_614;
                          }
                        }

                        else
                        {
                          outlined destroy of TermOfAddress?(&v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                          outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                          outlined destroy of AttributedString._AttributeValue(&v824);
                          if (*&v810[32])
                          {
                            goto LABEL_613;
                          }

                          outlined destroy of TermOfAddress?(&v806, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                        }
                      }

                      v588 = *(&v793 + 1);
                      outlined copy of AttributedString.AttributeRunBoundaries?(*(&v793 + 1), 1);

                      v589 = v588;
                      v580 = v788;
                      outlined consume of AttributedString.AttributeRunBoundaries?(v589, 1);
                      outlined consume of AttributedString.AttributeRunBoundaries?(0, 0);
LABEL_428:
                      v576 = v789;
                      outlined destroy of AttributedString._AttributeValue(&v824);
                      goto LABEL_415;
                    }
                  }

                  __break(1u);
LABEL_616:
                  __break(1u);
LABEL_617:
                  __break(1u);
LABEL_618:
                  __break(1u);
LABEL_619:
                  outlined destroy of TermOfAddress?(&v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, v365);
                  outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, v365);
                  outlined destroy of AttributedString._AttributeValue(&v824);
                  outlined destroy of AttributedString._AttributeValue(&v803);
LABEL_620:
                  outlined destroy of TermOfAddress?(&v806, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMR);
LABEL_621:

                  v510 = v797;
LABEL_378:
                  v511 = v785;
                  v512 = *v785;
                  v513 = v785[2];
                  v817 = v785[1];
                  v818 = v513;
                  v816 = v512;
                  v514 = *v785;
                  v515 = v785[1];
                  *&v858 = *(v785 + 4);
                  v857 = v515;
                  v856 = v514;
                  outlined init with copy of Rope<BigString._Chunk>._Node?(&v856, &v806);
                  v516 = BigString.index(before:)();
                  v518 = v517;
                  v520 = v519;
                  v522 = v521;
                  outlined destroy of BigString(&v816);
                  v796 = *(v510 + 3);
                  v523 = *(v510 + 5);
                  v803 = v796;
                  v804 = v523;
                  v805 = *(v510 + 7);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMR);
                  v524 = swift_allocObject();
                  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v524, 1);
                  *v525 = 2;
                  _NSBundleDeallocatingImmortalBundle();
                  *&v795 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
                  swift_unknownObjectRetain();

                  v526 = *v511;
                  v527 = v511[2];
                  v814 = v511[1];
                  v815 = v527;
                  v813 = v526;
                  v528 = *v511;
                  v529 = v511[1];
                  *&v800 = *(v511 + 4);
                  v798 = v528;
                  v799 = v529;
                  outlined init with copy of Rope<BigString._Chunk>._Node?(&v798, &v806);
                  v530 = v518;
                  v531 = v520;
                  v532 = BigString.index(after:)();
                  v534 = v533;
                  v536 = v535;
                  v538 = v537;
                  outlined destroy of BigString(&v813);
                  if (v516 >> 10 > v532 >> 10)
                  {
                    goto LABEL_633;
                  }

                  *&v824 = v516;
                  *(&v824 + 1) = v530;
                  *&v825 = v531;
                  *(&v825 + 1) = v522;
                  *&v826 = v532;
                  *(&v826 + 1) = v534;
                  *&v827 = v536;
                  *(&v827 + 1) = v538;
                  specialized BidirectionalCollection<>._getBlock(for:in:)(v795, &v824, &v806);
                  swift_unknownObjectRelease();
                  if (*(&v809 + 1) == 2)
                  {
                    goto LABEL_638;
                  }

                  v7 = v797;
                  if (v516 >> 10 > v808 >> 10)
                  {
                    goto LABEL_634;
                  }

                  v477 = 0;
                  v478 = 0;
                  v479 = 0;
                  v475 = v516 >> 11;
                  v823 = 0;
                  v476 = v808 >> 11;
                  goto LABEL_355;
                }

                v44 = v405;
                if (v400)
                {
                  specialized Rope._Node.distanceFromStart<A>(to:in:)(v365, v403, v404, v400, v401);
                  swift_unknownObjectRelease();
                }

                v406 = &v398[-v44];
                if (__OFSUB__(v398, v44))
                {
                  goto LABEL_358;
                }

                v397 = v796;
              }

              else
              {
                v406 = v400 ? *(v7 + 88) : 0;
              }

              if (v6 >= v406)
              {
                break;
              }

              specialized AttributedString.Guts.updateRun(at:within:with:)(&v806, v398, v397, v7, v794, v393);
              v407 = v393;

              v408 = v806;
              v409 = v808;
              v410 = v7;
              v7 = *(v7 + 72);
              v411 = v410[10];
              v44 = v410[11];
              v412 = v410[12];
              v824 = v806;
              *&v825 = v807;
              v28 = *(&v807 + 1) + 1;
              if (__OFADD__(*(&v807 + 1), 1))
              {
                __break(1u);
LABEL_352:
                __break(1u);
LABEL_353:
                __break(1u);
LABEL_354:
                v475 = 0;
                v476 = 0;
                v477 = 0;
                v478 = 0;
                v479 = 0;
                goto LABEL_355;
              }

              if (v806 != v412)
              {
                goto LABEL_352;
              }

              if (v807)
              {
                v413 = *(v807 + 24 * ((*(&v806 + 1) >> ((4 * *(v807 + 18) + 8) & 0x3C)) & 0xFLL) + 24);
                swift_unknownObjectRetain();
                v123 = __OFADD__(v409, v413);
                v6 = v409 + v413;
                if (v123)
                {
                  goto LABEL_353;
                }
              }

              else
              {
                swift_unknownObjectRetain();
                v414 = specialized Rope._Node.subscript.getter(*(&v408 + 1), v7);

                v123 = __OFADD__(v409, v414);
                v6 = v409 + v414;
                if (v123)
                {
                  goto LABEL_353;
                }
              }

              specialized Rope.formIndex(after:)(&v824, v7, v411, v44, v408);
              swift_unknownObjectRelease();
              v397 = v796;
              if (v6 < v796)
              {
                v31 = *(&v824 + 1);
                v399 = v824;
                v7 = v825;
              }

              else
              {
                v44 = v797[9];
                LODWORD(v31) = v795;
                if (v795 == v796)
                {
                  v28 = v797[10];
                  v47 = v797[11];
                  v399 = v797[12];
                  swift_unknownObjectRetain();
                  if (specialized Rope.find<A>(at:in:preferEnd:)(v795, 0, v44, v28, v47, v399) != v399)
                  {
                    goto LABEL_370;
                  }

                  v31 = v415;
                  v7 = v416;
                  v418 = v417;
                  if (v44)
                  {
                    v28 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v399, v415, v416, v44, v28);
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v28 = 0;
                  }

                  v6 = v795 - v418;
                  if (__OFSUB__(v795, v418))
                  {
                    goto LABEL_371;
                  }

                  v397 = v796;
                }

                else
                {
                  v399 = v797[12];
                  if (v44)
                  {
                    v7 = 0;
                    v28 = v797[10];
                    v6 = v797[11];
                    v31 = ((-15 << ((4 * *(v44 + 18) + 8) & 0x3C)) - 1) & *(v44 + 18) | (*(v44 + 16) << ((4 * *(v44 + 18) + 8) & 0x3C));
                  }

                  else
                  {
                    v31 = 0;
                    v7 = 0;
                    v28 = 0;
                    v6 = 0;
                  }
                }
              }

              *&v806 = v399;
              *(&v806 + 1) = v31;
              *&v807 = v7;
              *(&v807 + 1) = v28;
              *&v808 = v6;
              v7 = v797;
              v393 = v407;
              v398 = v795;
            }

            v395 = v793;
          }

          while (v793 != v791);

          v382 = v788;
          v383 = v789;
          v386 = v786;
          v387 = v787;
        }
      }
    }

    v778 = v44;
    v260 = *(v7 + 72);
    v261 = *(v7 + 80);
    v262 = *(v7 + 88);
    v263 = *(v7 + 96);
    swift_unknownObjectRetain();
    v6 = v788;
    v44 = v786;
    specialized Rope.subscript.getter(v788, v787, v786, v260, v261, v262, v263);
    *&v792 = v264;
    v47 = v265;
    swift_unknownObjectRelease();
    v266 = *(v7 + 72);
    v267 = *(v7 + 80);
    v268 = *(v7 + 88);
    v269 = *(v7 + 96);
    swift_unknownObjectRetain();
    v270 = specialized Rope.subscript.getter(v788, v787, v786, v266, v267, v268, v269);
    swift_unknownObjectRelease();

    v271 = v791 + v270;
    if (__OFADD__(v791, v270))
    {
      goto LABEL_499;
    }

    if (v789 >= v791)
    {
      v272 = v791;
    }

    else
    {
      v272 = v789;
    }

    if (v791 < v784)
    {
      v272 = v784;
    }

    if (v271 <= v784)
    {
      v273 = v784;
    }

    else
    {
      v273 = v791 + v270;
    }

    if (v789 >= v271)
    {
      v274 = v273;
    }

    else
    {
      v274 = v789;
    }

    if (v272 == v274)
    {
      goto LABEL_500;
    }

    if (__OFSUB__(v274, v272))
    {
      goto LABEL_501;
    }

    v775 = v47;
    v275 = *(v7 + 72);
    v276 = *(v7 + 80);
    v6 = *(v7 + 88);
    v277 = *(v7 + 96);
    v47 = v788;
    *&v806 = v788;
    *(&v806 + 1) = v787;
    v44 = v786;
    *&v807 = v786;
    v123 = __OFADD__(v783++, 1);
    if (v123)
    {
      goto LABEL_502;
    }

    swift_unknownObjectRetain();
    v47 = specialized Rope.subscript.getter(v788, v787, v786, v275, v276, v6, v277);

    if (__OFADD__(v791, v47))
    {
      goto LABEL_503;
    }

    *&v791 = v791 + v47;
    specialized Rope.formIndex(after:)(&v806, v275, v276, v6, v277);
    swift_unknownObjectRelease();
    if (v791 < v789)
    {
      v787 = *(&v806 + 1);
      v788 = v806;
      v786 = v807;
      v278 = v778;
      v279 = v792;
      goto LABEL_222;
    }

    v280 = *(v7 + 72);
    v281 = *(v7 + 80);
    v283 = *(v7 + 88);
    v282 = *(v7 + 96);
    swift_unknownObjectRetain();
    v278 = v778;
    v788 = v282;
    if (v784 == v789)
    {
      if (specialized Rope.find<A>(at:in:preferEnd:)(v784, 0, v280, v281, v283, v282) != v282)
      {
        goto LABEL_577;
      }

      v287 = v286;
      v786 = v285;
      v787 = v284;
      if (v280)
      {
        v783 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v282, v284, v285, v280, v281);
        swift_unknownObjectRelease();
      }

      else
      {
        v783 = 0;
      }

      v279 = v792;
      v242 = v784;
      if (__OFSUB__(v784, v287))
      {
        goto LABEL_578;
      }

      *&v791 = v784 - v287;
    }

    else
    {
      *&v791 = v283;
      v787 = specialized Rope._endPath.getter(v280);
      v279 = v792;
      if (v280)
      {
        v783 = v281;
        swift_unknownObjectRelease();
        v786 = 0;
      }

      else
      {
        v786 = 0;
        v783 = 0;
        *&v791 = 0;
      }

LABEL_222:
      v242 = v784;
    }

    v288 = *(v7 + 40);
    v868 = *(v7 + 24);
    v869 = v288;
    v870 = *(v7 + 56);
    swift_unknownObjectRetain();
    v289 = BigString.UTF8View.index(_:offsetBy:)();
    v291 = v290;
    v776 = v293;
    v777 = v292;
    v294 = v289;
    swift_unknownObjectRelease();

    v295 = specialized Sequence.contains(where:)(v279);

    if ((v295 & 1) == 0 || v294 >> 10 <= v278 >> 10)
    {

      v44 = v294;
      v781 = v291;
      v250 = v777;
      continue;
    }

    break;
  }

  v765 = v294;
  v766 = v294 >> 10;
  v759[0] = v291;
  v296 = v279 + 64;
  *&v790 = v279 + 64;
LABEL_230:
  v297 = *(v7 + 40);
  v865 = *(v7 + 24);
  v866 = v297;
  v867 = *(v7 + 56);
  swift_unknownObjectRetain();
  v773 = BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();
  v298 = *(v7 + 40);
  v862 = *(v7 + 24);
  v863 = v298;
  v864 = *(v7 + 56);
  swift_unknownObjectRetain();
  v299 = BigString.UnicodeScalarView.index(after:)();
  v780 = v301;
  v781 = v300;
  v779 = v302;
  swift_unknownObjectRelease();
  v303 = 1 << *(v279 + 32);
  v304 = *(v279 + 64);
  v774 = (v303 + 63) >> 6;
  if (v303 < 64)
  {
    v305 = ~(-1 << v303);
  }

  else
  {
    v305 = -1;
  }

  v7 = v305 & v304;
  v778 = v299;
  v768 = v299 >> 11;
  v769 = v278 >> 11;

  for (j = 0; v7; v767 = v770)
  {
    while (1)
    {
      v307 = j;
LABEL_245:
      v310 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v311 = v310 | (v307 << 6);
      v312 = *(v279 + 56);
      v313 = (*(v279 + 48) + 16 * v311);
      v314 = v313[1];
      *&v796 = *v313;
      outlined init with copy of AttributedString._AttributeValue(v312 + 72 * v311, &v824);
      *&v794 = *(&v824 + 1);
      *&v795 = v824;
      v315 = *(&v825 + 1);
      *&v793 = v825;
      v317 = *(&v826 + 1);
      v316 = v826;
      v319 = *(&v827 + 1);
      v318 = v827;
      v320 = v828;

      v321 = v320;
      v322 = v317;
      v323 = v314;
      v324 = v793;
      v325 = v794;
      v326 = v795;
      v327 = v796;
LABEL_246:
      *&v806 = v327;
      *(&v806 + 1) = v323;
      *&v807 = v326;
      *(&v807 + 1) = v325;
      *&v808 = v324;
      *(&v808 + 1) = v315;
      *&v809 = v316;
      *(&v809 + 1) = v322;
      *v810 = v318;
      *&v810[8] = v319;
      *&v810[16] = v321;
      if (!v323)
      {
        v279 = v792;

        v278 = v778;
        v7 = v797;
        v296 = v790;
        if (v766 <= v778 >> 10)
        {

          v242 = v784;
          v249 = v759[0];
          v250 = v777;
          v248 = v765;
          goto LABEL_185;
        }

        goto LABEL_230;
      }

      v328 = v323;
      outlined copy of AttributedString.AttributeRunBoundaries?(v322, v318);
      outlined destroy of AttributedString._AttributeValue(&v807);
      v279 = v792;
      v296 = v790;
      if (v318 >= 2)
      {
        v329 = specialized Collection.first.getter(v322, v318);
        outlined consume of AttributedString.AttributeRunBoundaries?(v322, v318);
        if ((v329 & 0x100000000) == 0 && v773 != v329)
        {
          break;
        }
      }

      if (!v7)
      {
        goto LABEL_237;
      }
    }

    if (v768 < v769)
    {
      goto LABEL_600;
    }

    v330 = swift_isUniquelyReferenced_nonNull_native();
    *&v824 = v767;
    v332 = specialized __RawDictionaryStorage.find<A>(_:)(v327, v328);
    v333 = v767[2];
    v334 = (v331 & 1) == 0;
    v335 = v333 + v334;
    if (__OFADD__(v333, v334))
    {
      goto LABEL_601;
    }

    v336 = v331;
    if (v767[3] >= v335)
    {
      if (v330)
      {
        v770 = v767;
        if (v331)
        {
          goto LABEL_259;
        }
      }

      else
      {
        *&v794 = v332;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySnySiGGGMd, &_ss18_DictionaryStorageCySSSaySnySiGGGMR);
        v770 = static _DictionaryStorage.copy(original:)();
        if (v767[2])
        {
          v341 = (v770 + 64);
          v342 = 1 << *(v770 + 32);
          *&v793 = v767 + 8;
          v343 = (v342 + 63) >> 6;
          if (v770 != v767 || v341 >= v793 + 8 * v343)
          {
            memmove(v341, v793, 8 * v343);
          }

          v344 = 0;
          v345 = v767;
          *(v770 + 16) = v767[2];
          v346 = 1 << *(v345 + 32);
          v347 = v345[8];
          if (v346 < 64)
          {
            v348 = ~(-1 << v346);
          }

          else
          {
            v348 = -1;
          }

          v349 = v348 & v347;
          v350 = (v346 + 63) >> 6;
          *&v795 = v350;
          if (v349)
          {
            do
            {
              v351 = __clz(__rbit64(v349));
              *&v796 = (v349 - 1) & v349;
LABEL_274:
              v354 = v351 | (v344 << 6);
              v355 = (v767[6] + 16 * v354);
              v356 = v355[1];
              v357 = *(v767[7] + 8 * v354);
              v358 = v770;
              v359 = (*(v770 + 48) + 16 * v354);
              *v359 = *v355;
              v359[1] = v356;
              *(*(v358 + 56) + 8 * v354) = v357;

              v350 = v795;
              v349 = v796;
            }

            while (v796);
          }

          v352 = v344;
          while (1)
          {
            v344 = v352 + 1;
            if (__OFADD__(v352, 1))
            {
              goto LABEL_635;
            }

            if (v344 >= v350)
            {
              break;
            }

            v353 = *(v793 + 8 * v344);
            ++v352;
            if (v353)
            {
              v351 = __clz(__rbit64(v353));
              *&v796 = (v353 - 1) & v353;
              goto LABEL_274;
            }
          }
        }

        v332 = v794;
        if (v336)
        {
LABEL_259:
          v339 = v332;

          v332 = v339;
          v340 = v770;
          goto LABEL_279;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v335, v330);
      v770 = v824;
      v337 = specialized __RawDictionaryStorage.find<A>(_:)(v327, v328);
      if ((v336 & 1) != (v338 & 1))
      {
        goto LABEL_639;
      }

      v332 = v337;
      if (v336)
      {
        goto LABEL_259;
      }
    }

    v340 = v770;
    *(v770 + 8 * (v332 >> 6) + 64) |= 1 << v332;
    v360 = (v340[6] + 16 * v332);
    *v360 = v327;
    v360[1] = v328;
    *(v340[7] + 8 * v332) = MEMORY[0x1E69E7CC0];
    v361 = v340[2];
    v123 = __OFADD__(v361, 1);
    v362 = v361 + 1;
    if (v123)
    {
      goto LABEL_608;
    }

    v340[2] = v362;
LABEL_279:
    v363 = v340[7];
    v364 = *(v363 + 8 * v332);
    v365 = *(v364 + 2);
    if (v365 && (v366 = v365 - 1, v367 = &v364[16 * v365 - 16], *(v367 + 5) == v769))
    {
      *&v796 = v340[7];
      v368 = *(v367 + 4);
      if (v768 < v368)
      {
        goto LABEL_616;
      }

      v369 = v332;
      v370 = swift_isUniquelyReferenced_nonNull_native();
      v371 = v796;
      *(v796 + 8 * v369) = v364;
      if ((v370 & 1) == 0)
      {
        *&v794 = v369;
        v381 = v371;
        v364 = specialized _ArrayBuffer._consumeAndCreateNew()(v364);
        *(v381 + 8 * v794) = v364;
      }

      if (v365 > *(v364 + 2))
      {
        goto LABEL_617;
      }
    }

    else
    {
      v372 = v332;
      v373 = swift_isUniquelyReferenced_nonNull_native();
      *(v363 + 8 * v372) = v364;
      if (v373)
      {
        v374 = v372;
      }

      else
      {
        v378 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v365 + 1, 1, v364);
        v374 = v372;
        v364 = v378;
        *(v363 + 8 * v372) = v378;
      }

      v366 = *(v364 + 2);
      v375 = *(v364 + 3);
      if (v366 >= v375 >> 1)
      {
        v379 = v363;
        v380 = v374;
        v364 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v375 > 1), v366 + 1, 1, v364);
        *(v379 + 8 * v380) = v364;
      }

      *(v364 + 2) = v366 + 1;
      v368 = v769;
    }

    v376 = &v364[16 * v366];
    v377 = v768;
    *(v376 + 4) = v368;
    *(v376 + 5) = v377;
  }

LABEL_237:
  if (v774 <= j + 1)
  {
    v308 = j + 1;
  }

  else
  {
    v308 = v774;
  }

  v309 = v308 - 1;
  while (1)
  {
    v307 = j + 1;
    if (__OFADD__(j, 1))
    {
      break;
    }

    if (v307 >= v774)
    {
      v327 = 0;
      v323 = 0;
      v326 = 0;
      v325 = 0;
      v324 = 0;
      v315 = 0;
      v316 = 0;
      v322 = 0;
      v318 = 0;
      v319 = 0;
      v321 = 0;
      v7 = 0;
      j = v309;
      goto LABEL_246;
    }

    v7 = *(v296 + 8 * v307);
    ++j;
    if (v7)
    {
      j = v307;
      goto LABEL_245;
    }
  }

  __break(1u);
LABEL_339:

  v823 = 1;
  v419 = v761 >> 10;
  v420 = v760 >> 10;
  if (v761 >> 10 != v760 >> 10)
  {
    v448 = v785[1];
    v859 = *v785;
    v860 = v448;
    v861 = v785[2];
    if (v419 <= BigString.startIndex.getter() >> 10)
    {
      v475 = 0;
      v476 = 0;
      v481 = 1;
      goto LABEL_366;
    }

    *&v795 = v760 >> 10;
    if (__OFSUB__(v772, 1))
    {
      goto LABEL_627;
    }

    v449 = *(v7 + 72);
    v450 = *(v7 + 80);
    v451 = *(v7 + 88);
    v452 = *(v7 + 96);
    swift_unknownObjectRetain();
    AttributedString._InternalRuns.index(atUTF8Offset:preferEnd:)(v772 - 1, 0, v449, v450, v451, v452, &v806);
    v453 = *(&v806 + 1);
    *&v796 = v806;
    v454 = v807;
    swift_unknownObjectRelease();
    v455 = *(v7 + 72);
    v456 = *(v7 + 80);
    v457 = *(v7 + 88);
    v458 = *(v7 + 96);
    swift_unknownObjectRetain();
    AttributedString._InternalRuns.index(atUTF8Offset:preferEnd:)(v772, 0, v455, v456, v457, v458, &v806);
    v460 = *(&v806 + 1);
    v459 = v806;
    v461 = v807;
    swift_unknownObjectRelease();
    v462 = *(v7 + 72);
    v463 = *(v7 + 80);
    v464 = v797[11];
    v465 = v797[12];
    swift_unknownObjectRetain();
    v466 = v464;
    v7 = v797;
    specialized Rope.subscript.getter(v796, v453, v454, v462, v463, v466, v465);
    v402 = v467;
    *&v796 = v468;
    swift_unknownObjectRelease();
    v400 = v797[9];
    v469 = v797[10];
    v401 = v797[11];
    v470 = v797[12];
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v459, v460, v461, v400, v469, v401, v470);
    v44 = v471;
    v398 = v472;
    swift_unknownObjectRelease();

    v365 = v782;
    LODWORD(v400) = specialized Sequence.contains(where:)(v473);

    LODWORD(v401) = specialized Sequence.contains(where:)(v474);

    if ((v400 & 1) == 0 && (v401 & 1) == 0)
    {

LABEL_441:
      v475 = 0;
      v476 = 0;
      v481 = 1;
      v480 = v771;
      v420 = v795;
      goto LABEL_442;
    }

    goto LABEL_359;
  }

  v421 = v785[1];
  v859 = *v785;
  v860 = v421;
  v861 = v785[2];
  if (v419 <= BigString.startIndex.getter() >> 10 || v419 >= BigString.endIndex.getter() >> 10)
  {
    goto LABEL_354;
  }

  if (__OFSUB__(v772, 1))
  {
    goto LABEL_628;
  }

  v422 = *(v7 + 72);
  v423 = *(v7 + 80);
  v424 = *(v7 + 88);
  v425 = *(v7 + 96);
  swift_unknownObjectRetain();
  AttributedString._InternalRuns.index(atUTF8Offset:preferEnd:)(v772 - 1, 0, v422, v423, v424, v425, &v806);
  *&v795 = *(&v806 + 1);
  *&v796 = v806;
  v426 = v807;
  swift_unknownObjectRelease();
  v427 = *(v7 + 72);
  v428 = *(v7 + 80);
  v429 = *(v7 + 88);
  v430 = *(v7 + 96);
  swift_unknownObjectRetain();
  AttributedString._InternalRuns.index(atUTF8Offset:preferEnd:)(v772, 0, v427, v428, v429, v430, &v806);
  v432 = *(&v806 + 1);
  v431 = v806;
  v433 = v807;
  swift_unknownObjectRelease();
  v434 = *(v7 + 72);
  v435 = *(v7 + 80);
  v437 = *(v7 + 88);
  v436 = *(v7 + 96);
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v796, v795, v426, v434, v435, v437, v436);
  v439 = v438;
  v6 = v440;
  swift_unknownObjectRelease();
  v31 = *(v7 + 72);
  v441 = *(v7 + 80);
  v28 = *(v7 + 88);
  v442 = *(v7 + 96);
  swift_unknownObjectRetain();
  v443 = v442;
  v7 = v439;
  specialized Rope.subscript.getter(v431, v432, v433, v31, v441, v28, v443);
  v47 = v444;
  v44 = v445;
  swift_unknownObjectRelease();

  LODWORD(v31) = specialized Sequence.contains(where:)(v446);

  LODWORD(v28) = specialized Sequence.contains(where:)(v447);

  if ((v31 & 1) == 0 && (v28 & 1) == 0)
  {

LABEL_565:
    v475 = 0;
    v476 = 0;
    v477 = 0;
    v478 = 0;
    v479 = 0;
    v7 = v797;
    goto LABEL_355;
  }

LABEL_375:
  if ((v31 ^ v28))
  {

LABEL_377:
    v510 = v797;
    goto LABEL_378;
  }

LABEL_508:
  v789 = v6;
  *&v790 = v44;
  *&v791 = v47;
  v687 = v7 + 64;
  v688 = 1 << *(v7 + 32);
  v689 = -1;
  if (v688 < 64)
  {
    v689 = ~(-1 << v688);
  }

  v690 = v689 & *(v7 + 64);
  v691 = (v688 + 63) >> 6;

  v692 = 0;
  *&v792 = v7;
  while (1)
  {
    if (!v690)
    {
      do
      {
        v693 = v692 + 1;
        if (__OFADD__(v692, 1))
        {
          __break(1u);
          goto LABEL_626;
        }

        if (v693 >= v691)
        {
          goto LABEL_536;
        }

        v690 = *(v687 + 8 * v693);
        ++v692;
      }

      while (!v690);
      v692 = v693;
    }

    v694 = __clz(__rbit64(v690)) | (v692 << 6);
    v695 = (*(v7 + 48) + 16 * v694);
    v697 = *v695;
    v696 = v695[1];
    outlined init with copy of AttributedString._AttributeValue(*(v7 + 56) + 72 * v694, &v806);
    v793 = v806;
    v794 = v807;
    v795 = v809;
    v796 = v808;
    v698 = *v810;

    if (!v696)
    {
      break;
    }

    v690 &= v690 - 1;
    v824 = v793;
    v825 = v794;
    v826 = v796;
    v827 = v795;
    v699 = v795;
    v828 = v698;
    v700 = *(&v796 + 1);
    if (v795 == 1)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*(&v796 + 1), 1);

      outlined consume of AttributedString.AttributeRunBoundaries?(v700, 1);
      outlined consume of AttributedString.AttributeRunBoundaries?(0, 0);
LABEL_524:
      outlined destroy of AttributedString._AttributeValue(&v824);
      continue;
    }

    *&v806 = *(&v796 + 1);
    *(&v806 + 1) = v795;
    v816 = 0uLL;
    outlined copy of AttributedString.AttributeRunBoundaries?(*(&v796 + 1), v795);
    outlined copy of AttributedString.AttributeRunBoundaries?(v700, v699);
    v701 = specialized static AttributedString.AttributeRunBoundaries.== infix(_:_:)(&v806, &v816);

    outlined consume of AttributedString.AttributeRunBoundaries?(v700, v699);
    if ((v701 & 1) == 0)
    {

      v7 = v792;
      goto LABEL_524;
    }

    *&v796 = v691;
    v702 = v791;
    if (*(v791 + 16))
    {
      v703 = specialized __RawDictionaryStorage.find<A>(_:)(v697, v696);
      v705 = v704;

      v7 = v792;
      if (v705)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v702 + 56) + 72 * v703, &v816);
      }

      else
      {
        v820 = 0;
        v818 = 0u;
        v819 = 0u;
        v816 = 0u;
        v817 = 0u;
      }
    }

    else
    {

      v820 = 0;
      v818 = 0u;
      v819 = 0u;
      v816 = 0u;
      v817 = 0u;
      v7 = v792;
    }

    v691 = v796;
    v365 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    outlined init with copy of AttributedString._AttributeValue(&v824, &v813);
    outlined init with copy of FloatingPointRoundingRule?(&v816, &v806, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    outlined init with copy of FloatingPointRoundingRule?(&v813, &v810[8], &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    if (*(&v807 + 1))
    {
      outlined init with copy of FloatingPointRoundingRule?(&v806, &v803, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      if (!*&v810[32])
      {
        goto LABEL_619;
      }

      v800 = *&v810[40];
      v801 = v811;
      v802 = v812;
      v798 = *&v810[8];
      v799 = *&v810[24];
      v706 = *(&v804 + 1);
      v787 = v805;
      v786 = __swift_project_boxed_opaque_existential_1(&v803, *(&v804 + 1));
      v707 = __swift_project_boxed_opaque_existential_1(&v798, *(&v799 + 1));
      *&v795 = v759;
      v788 = *(v706 - 8);
      MEMORY[0x1EEE9AC00](v707);
      v784 = v759 - ((v708 + 15) & 0xFFFFFFFFFFFFFFF0);
      *&v794 = v759;
      v710 = MEMORY[0x1EEE9AC00](v709);
      (*(v712 + 16))(v759 - ((v711 + 15) & 0xFFFFFFFFFFFFFFF0), v710);
      v713 = type metadata accessor for Optional();
      *&v793 = v759;
      v714 = v713;
      v715 = *(v713 - 8);
      MEMORY[0x1EEE9AC00](v713);
      v717 = v759 - v716;
      v718 = v788;
      v719 = swift_dynamicCast();
      v720 = v718[7];
      if (v719)
      {
        v720(v717, 0, 1, v706);
        v721 = v784;
        (v718[4])(v784, v717, v706);
        v722 = dispatch thunk of static Equatable.== infix(_:_:)();
        (v718[1])(v721, v706);
      }

      else
      {
        v720(v717, 1, 1, v706);
        (*(v715 + 8))(v717, v714);
        v722 = 0;
      }

      v7 = v792;
      outlined destroy of TermOfAddress?(&v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      outlined destroy of AttributedString._AttributeValue(&v798);
      outlined destroy of AttributedString._AttributeValue(&v824);
      outlined destroy of AttributedString._AttributeValue(&v803);
      outlined destroy of TermOfAddress?(&v806, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      v691 = v796;
      if ((v722 & 1) == 0)
      {
        goto LABEL_621;
      }
    }

    else
    {
      outlined destroy of TermOfAddress?(&v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      outlined destroy of AttributedString._AttributeValue(&v824);
      if (*&v810[32])
      {
        goto LABEL_620;
      }

      outlined destroy of TermOfAddress?(&v806, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    }
  }

LABEL_536:

  v723 = 0;
  v724 = v791;
  v725 = v791 + 64;
  v726 = 1 << *(v791 + 32);
  v727 = -1;
  if (v726 < 64)
  {
    v727 = ~(-1 << v726);
  }

  v728 = v727 & *(v791 + 64);
  v729 = (v726 + 63) >> 6;
  *&v790 = v729;
  while (2)
  {
    if (v728)
    {
LABEL_544:
      v731 = __clz(__rbit64(v728)) | (v723 << 6);
      v732 = (*(v724 + 48) + 16 * v731);
      v734 = *v732;
      v733 = v732[1];
      outlined init with copy of AttributedString._AttributeValue(*(v724 + 56) + 72 * v731, &v806);
      v793 = v806;
      v794 = v807;
      v795 = v809;
      v796 = v808;
      v735 = *v810;

      if (!v733)
      {
LABEL_564:

        goto LABEL_565;
      }

      v728 &= v728 - 1;
      v824 = v793;
      v825 = v794;
      v826 = v796;
      v827 = v795;
      v736 = v795;
      v828 = v735;
      v737 = *(&v796 + 1);
      if (v795 == 1)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*(&v796 + 1), 1);

        outlined consume of AttributedString.AttributeRunBoundaries?(v737, 1);
        outlined consume of AttributedString.AttributeRunBoundaries?(0, 0);
LABEL_552:
        v729 = v790;
        outlined destroy of AttributedString._AttributeValue(&v824);
        continue;
      }

      *&v806 = *(&v796 + 1);
      *(&v806 + 1) = v795;
      v816 = 0uLL;
      outlined copy of AttributedString.AttributeRunBoundaries?(*(&v796 + 1), v795);
      outlined copy of AttributedString.AttributeRunBoundaries?(v737, v736);
      v738 = specialized static AttributedString.AttributeRunBoundaries.== infix(_:_:)(&v806, &v816);

      outlined consume of AttributedString.AttributeRunBoundaries?(v737, v736);
      if ((v738 & 1) == 0)
      {

        v724 = v791;
        goto LABEL_552;
      }

      v739 = v792;
      v729 = v790;
      if (*(v792 + 16))
      {
        v740 = specialized __RawDictionaryStorage.find<A>(_:)(v734, v733);
        v742 = v741;

        if (v742)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v739 + 56) + 72 * v740, &v816);
          goto LABEL_555;
        }
      }

      else
      {
      }

      v820 = 0;
      v818 = 0u;
      v819 = 0u;
      v816 = 0u;
      v817 = 0u;
LABEL_555:
      outlined init with copy of AttributedString._AttributeValue(&v824, &v813);
      outlined init with copy of FloatingPointRoundingRule?(&v816, &v806, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      outlined init with copy of FloatingPointRoundingRule?(&v813, &v810[8], &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      v724 = v791;
      if (*(&v807 + 1))
      {
        outlined init with copy of FloatingPointRoundingRule?(&v806, &v803, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        if (!*&v810[32])
        {
          outlined destroy of TermOfAddress?(&v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
          outlined destroy of AttributedString._AttributeValue(&v824);
          outlined destroy of AttributedString._AttributeValue(&v803);
LABEL_623:
          outlined destroy of TermOfAddress?(&v806, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMR);
LABEL_624:

          goto LABEL_377;
        }

        v800 = *&v810[40];
        v801 = v811;
        v802 = v812;
        v798 = *&v810[8];
        v799 = *&v810[24];
        v743 = *(&v804 + 1);
        v788 = v805;
        v787 = __swift_project_boxed_opaque_existential_1(&v803, *(&v804 + 1));
        v744 = __swift_project_boxed_opaque_existential_1(&v798, *(&v799 + 1));
        *&v796 = v759;
        *&v794 = *(v743 - 8);
        MEMORY[0x1EEE9AC00](v744);
        v786 = (v759 - ((v745 + 15) & 0xFFFFFFFFFFFFFFF0));
        *&v795 = v759;
        v747 = MEMORY[0x1EEE9AC00](v746);
        (*(v749 + 16))(v759 - ((v748 + 15) & 0xFFFFFFFFFFFFFFF0), v747);
        v750 = type metadata accessor for Optional();
        *&v793 = v759;
        v784 = v750;
        v751 = *(v750 - 8);
        MEMORY[0x1EEE9AC00](v750);
        v753 = v759 - v752;
        v754 = v794;
        v755 = swift_dynamicCast();
        v756 = *(v754 + 56);
        if (v755)
        {
          v756(v753, 0, 1, v743);
          v757 = v786;
          (*(v754 + 32))(v786, v753, v743);
          v758 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v754 + 8))(v757, v743);
        }

        else
        {
          v756(v753, 1, 1, v743);
          (*(v751 + 8))(v753, v784);
          v758 = 0;
        }

        v724 = v791;
        v729 = v790;
        outlined destroy of TermOfAddress?(&v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of AttributedString._AttributeValue(&v798);
        outlined destroy of AttributedString._AttributeValue(&v824);
        outlined destroy of AttributedString._AttributeValue(&v803);
        outlined destroy of TermOfAddress?(&v806, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        if ((v758 & 1) == 0)
        {
          goto LABEL_624;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
        outlined destroy of AttributedString._AttributeValue(&v824);
        if (*&v810[32])
        {
          goto LABEL_623;
        }

        outlined destroy of TermOfAddress?(&v806, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v730 = v723 + 1;
    if (__OFADD__(v723, 1))
    {
      break;
    }

    if (v730 >= v729)
    {
      goto LABEL_564;
    }

    v728 = *(v725 + 8 * v730);
    ++v723;
    if (v728)
    {
      v723 = v730;
      goto LABEL_544;
    }
  }

LABEL_626:
  __break(1u);
LABEL_627:
  __break(1u);
LABEL_628:
  __break(1u);
LABEL_629:
  __break(1u);
LABEL_630:
  __break(1u);
LABEL_631:
  __break(1u);
LABEL_632:
  __break(1u);
LABEL_633:
  __break(1u);
LABEL_634:
  __break(1u);
LABEL_635:
  __break(1u);
LABEL_636:
  __break(1u);
LABEL_637:
  __break(1u);
LABEL_638:
  __break(1u);
LABEL_639:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(uint64_t i, unint64_t a2)
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
    BigSubstring.UnicodeScalarView.init(_:in:)();
    LODWORD(v587) = BigSubstring.UnicodeScalarView.isIdentical(to:)();
    outlined destroy of BigSubstring.UnicodeScalarView(v634);
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
      outlined init with copy of BigSubstring.UnicodeScalarView(v591, &v608);
      lazy protocol witness table accessor for type BigSubstring.UnicodeScalarView and conformance BigSubstring.UnicodeScalarView();
      v5 = &v619;
      BigSubstring.UnicodeScalarView.replaceSubrange<A>(_:with:)();
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
  return outlined destroy of BigSubstring.UnicodeScalarView(&v619);
}

uint64_t specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(uint64_t a1)
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
  i = &_ss15EmptyCollectionVys7UnicodeO6ScalarVGMR;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15EmptyCollectionVys7UnicodeO6ScalarVGMd, &_ss15EmptyCollectionVys7UnicodeO6ScalarVGMR);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type EmptyCollection<Unicode.Scalar> and conformance EmptyCollection<A>, &_ss15EmptyCollectionVys7UnicodeO6ScalarVGMd, &_ss15EmptyCollectionVys7UnicodeO6ScalarVGMR, MEMORY[0x1E69E6C48]);
  BigSubstring.UnicodeScalarView.replaceSubrange<A>(_:with:)();
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
  return outlined destroy of BigSubstring.UnicodeScalarView(&v611);
}