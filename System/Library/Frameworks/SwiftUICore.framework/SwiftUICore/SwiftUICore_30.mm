void type metadata accessor for IndexingIterator<IndexSet>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<IndexSet>)
  {
    type metadata accessor for IndexSet();
    _s10Foundation8IndexSetVACSlAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<IndexSet>);
    }
  }
}

uint64_t outlined init with copy of IndexSetBuilder(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSetBuilder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for IndexSetBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t closure #1 in ForEachState.EditsBuilder.finalize()(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v46 = a6;
  v47 = a7;
  v37 = a4;
  v44 = a9;
  v45 = a5;
  v16 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for IndexSet.Index();
  v36 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = 1;
  v43 = a11;
  v48 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = UnsafeBufferPointer.baseAddress.getter();
  v41 = result;
  if (result)
  {
    v35 = v13;
    v39 = a12;
    v40 = a13;
    v38 = a10;
    IndexSet.makeIterator()();
    type metadata accessor for IndexSet();
    _s10Foundation8IndexSetVACSlAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v24 = (v36 + 8);
    v37 = AssociatedTypeWitness - 8;
    for (i = (v16 + 8); ; (*i)(v32, v33))
    {
      v26 = v49;
      dispatch thunk of Collection.endIndex.getter();
      _s10Foundation8IndexSetVACSlAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
      v27 = v51;
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v24)(v26, v27);
      if (v28)
      {
        break;
      }

      v29 = dispatch thunk of Collection.subscript.read();
      v31 = *v30;
      v29(v50, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v32 = v42;
      v45(v41 + *(*v37 + 72) * v31);
      v33 = v44;
      v50[0] = v48;
      v50[1] = v44;
      v50[2] = v38;
      v50[3] = v43;
      v50[4] = v39;
      v50[5] = v40;
      v34 = type metadata accessor for ForEachState.Edits(0, v50);
      ForEachState.Edits.appendInsert(id:)(v32, v34);
    }

    return outlined destroy of IndexingIterator<IndexSet>(v21);
  }

  return result;
}

uint64_t type metadata accessor for EstimationCache(uint64_t a1)
{
  result = type metadata singleton initialization cache for EstimationCache;
  if (!type metadata singleton initialization cache for EstimationCache)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void storeEnumTagSinglePayload for MinorProperties(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 16) & ~v9) + *(v7 + 64);
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

  v17((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, a2);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<CGFloat, Int>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6530]);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void type metadata accessor for [_LazyLayout_Subview](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t a3, const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for [_LazyLayout_Subview](255, a2, a3, MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

uint64_t initializeWithCopy for LazySubviewPlacements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v3 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v3;
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v4;
  v5 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v5;
  v6 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v6;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  v7 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v7;
  v8 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v8;
  v9 = *(a2 + 352);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = v9;
  v10 = *(a2 + 384);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = v10;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  v11 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v11;
  *(a1 + 452) = *(a2 + 452);
  v12 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 456) = v12;

  return a1;
}

uint64_t destroy for LazySubviewPlacements(void *a1)
{
}

void LazyLayoutViewCache.subviews(context:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = *(v6 + 16);
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    Counter = AGGraphGetCounter();
  }

  else
  {
    Counter = 0;
  }

  swift_beginAccess();
  if (*(v2 + 200) != Counter)
  {
    *(v2 + 200) = Counter;
    ++*(v2 + 208);
  }

  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  InputValue = AGGraphGetInputValue();
  outlined init with copy of AnyTrackedValue(InputValue, a2 + 16);
  *(a2 + 56) = *(v2 + 136);
  *(a2 + 60) = 0;
  *(a2 + 109) = 0;
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 112) = MEMORY[0x1E69E7CC0];
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 132) = 1;
  *(a2 + 133) = 0;
  *(a2 + 136) = 0;
}

void *initializeWithCopy for _LazyStack_Cache(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = ((v8 + 16) & ~v8) + *(v6 + 64);
  if (!v7)
  {
    if (!*(a2 + v10))
    {
      goto LABEL_24;
    }

    v11 = (*(a2 + v10) - 1) << (8 * v10);
    if (v10 > 3)
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v10 <= 3 ? ((v8 + 16) & ~v8) + *(v6 + 64) : 4;
      if (v12 > 2)
      {
        v13 = v12 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v13 = v12 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v13 = 0;
    }

    if ((v13 | v11) == 0xFFFFFFFF)
    {
      goto LABEL_24;
    }

LABEL_20:
    if (v7)
    {
      v14 = v10;
    }

    else
    {
      v14 = v10 + 1;
    }

    memcpy(a1, a2, v14);
    goto LABEL_26;
  }

  if ((*(v6 + 48))((((a2 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v9, *(v6 + 84), AssociatedTypeWitness))
  {
    goto LABEL_20;
  }

LABEL_24:
  *a1 = *a2;
  v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  (*(v6 + 16))((v15 + v8 + 8) & v9, (v16 + v8 + 8) & v9, AssociatedTypeWitness);
  if (!v7)
  {
    *(a1 + v10) = 0;
  }

LABEL_26:
  if (v7)
  {
    v17 = v10;
  }

  else
  {
    v17 = v10 + 1;
  }

  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 8) = *(v21 + 8);
  *v20 = v22;
  v23 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  v29 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = type metadata accessor for IndexSet();
  v34 = *(v33 - 8);
  v35 = *(v34 + 16);
  v36 = *(v34 + 80);
  v37 = *(v34 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v38 = ((v31 + v36 + 8) & v37);
  v39 = ((v32 + v36 + 8) & v37);
  *v38 = *v39;
  v40 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  v41 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v40 = *v41;
  v42 = v40 + v36 + 8;
  v43 = v41 + v36 + 8;

  v35(v42 & ~v36, v43 & ~v36, v33);
  return a1;
}

uint64_t LazyStack<>.resolveMinorProperties(minorSize:cache:)@<X0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v23 = *a1;
  v15 = (*(a3 + 72))(&v22 - v13, &v23, a2, a3);
  if (v15 < 1 || (v16 = v23, v23 <= 0.0))
  {
    (*(v9 + 8))(v14, AssociatedTypeWitness);
    v19 = 1;
  }

  else
  {
    v17 = v15;
    (*(v9 + 32))(v11, v14, AssociatedTypeWitness);
    MinorProperties.init(count:size:geometry:)(v17, v11, a2, a3, a4, v16);
    v19 = 0;
  }

  v20 = type metadata accessor for MinorProperties(0, a2, a3, v18);
  return (*(*(v20 - 8) + 56))(a4, v19, 1, v20);
}

void AlignmentKey.fraction.getter(unint64_t a1)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = static LayoutComputer.defaultValue;
  v3 = one-time initialization token for typeCache;

  if (v3 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (a1 < 2)
  {
    __break(1u);
  }

  else if (a1 >> 1 <= *(off_1ED537F58 + 2))
  {
    v4 = (off_1ED537F58 + 16 * (a1 >> 1) + 16);
    v5 = *v4;
    v6 = v4[1];
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    v12[0] = v2;
    __asm { FMOV            V0.2D, #1.0 }

    v12[1] = _Q0;
    v12[2] = _Q0;
    (*(v6 + 8))(v12, v5, v6);

    return;
  }

  __break(1u);
}

void AlignmentGuide.fraction.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);

  AlignmentKey.fraction.getter(v2);
}

uint64_t MinorProperties.init(count:size:geometry:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = a1;
  *(a5 + 8) = a6;
  v8 = *(type metadata accessor for MinorProperties(0, a3, a4, a4) + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 32);

  return v10(a5 + v8, a2, AssociatedTypeWitness);
}

uint64_t getEnumTagSinglePayload for MinorProperties(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
LABEL_23:
    v14 = *(v6 + 48);

    return v14((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
  }

  v9 = ((v8 + 16) & ~v8) + *(*(AssociatedTypeWitness - 8) + 64);
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

uint64_t specialized LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a7;
  v18 = a5;
  v12 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF12CoreGraphics7CGFloatV_s5NeverOSbTg5(partial apply for closure #1 in LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:), v15, a1, a2 & 1);
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a5;
  return (v12 | _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF12CoreGraphics7CGFloatV_s5NeverOSbTg5(partial apply for closure #2 in LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:), v14, a3, a4 & 1)) & 1;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF12CoreGraphics7CGFloatV_s5NeverOSbTg5(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 2;
  }

  v6 = a3;
  result = a1(&var1, &v6);
  if (!v4)
  {
    return var1;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:)@<X0>(double *a1@<X0>, uint64_t a2@<X3>, BOOL *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = *a1;
  result = type metadata accessor for _LazyStack_Cache(0, v5, v6, a2);
  v10 = *(v7 + *(result + 56));
  v11 = v10 > 0.0;
  if (v8 <= 0.0)
  {
    v11 = 0;
  }

  if (vabdd_f64(v10, v8) < 0.01)
  {
    v11 = 0;
  }

  *a3 = v11;
  return result;
}

void LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(double *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v106 = a5;
  v95 = a4;
  v105 = a2;
  v11 = type metadata accessor for MinorProperties(0, a6, a7, a4);
  v102 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v89 = (&v86 - v12);
  v13 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v91 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v86 - v15;
  v104 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v86 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v86 - v24;
  v94 = (*(a7 + 32))(a6, a7, v23);
  v110 = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = 0;
  v93 = a1;
  v26 = *a1;
  v27 = a7;
  v28 = v106;
  v30 = type metadata accessor for _LazyStack_Cache(0, a6, v27, v29);
  v90 = *(v30 + 60);
  v31 = *(*(v28 + v90) + 16);
  v92 = v30;
  v32 = (v28 + *(v30 + 40));
  v34 = *v32;
  v33 = v32[1];
  v98 = v34;
  v103 = a3;
  v99 = a6;
  v100 = v31;
  v101 = v27;
  if (v34 == v33)
  {
    goto LABEL_8;
  }

  v87 = v33;
  v35 = v102;
  (*(v102 + 16))(v25, a3, v11);
  (*(v35 + 56))(v25, 0, 1, v11);
  v36 = *(v104 + 16);
  v36(v21, v28, v13);
  v88 = TupleTypeMetadata2;
  v37 = *(TupleTypeMetadata2 + 48);
  v36(v16, v25, v13);
  v36(&v16[v37], v21, v13);
  v38 = *(v35 + 48);
  if (v38(v16, 1, v11) == 1)
  {
    v39 = v21;
    v40 = *(v104 + 8);
    v40(v39, v13);
    v40(v25, v13);
    v41 = v38(&v16[v37], 1, v11);
    v42 = v106;
    a3 = v103;
    v27 = v101;
    if (v41 == 1)
    {
      v40(v16, v13);
      v43 = v87;
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v36(v97, v16, v13);
  v44 = v38(&v16[v37], 1, v11);
  v45 = (v102 + 8);
  if (v44 == 1)
  {
    v46 = *(v104 + 8);
    v46(v21, v13);
    v46(v25, v13);
    (*v45)(v97, v11);
    a3 = v103;
    v27 = v101;
LABEL_7:
    (*(v91 + 8))(v16, v88);
    v31 = v100;
LABEL_8:
    if (v31)
    {
      v47 = *v105;
      if (*v105 < 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }

    v48 = *a3;
    if (*a3 + 0x4000000000000000 >= 0)
    {
      v43 = 2 * v48;
      v110 = 2 * v48;
      v47 = *v105;
      goto LABEL_21;
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v49 = v102 + 32;
  v50 = v89;
  (*(v102 + 32))(v89, &v16[v37], v11);
  v51 = v97;
  LODWORD(v102) = static MinorProperties.== infix(_:_:)(v97, v50, v99, v101);
  v52 = *(v49 - 24);
  v52(v50, v11);
  v53 = *(v104 + 8);
  v53(v21, v13);
  v53(v25, v13);
  v52(v51, v11);
  v53(v16, v13);
  v31 = v100;
  v27 = v101;
  v42 = v106;
  a3 = v103;
  v43 = v87;
  if ((v102 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v54 = v105;
  v55 = v98;
  *v105 = v98;
  v110 = v43;
  v26 = *(v42 + *(v92 + 44));
  v56 = *a3;
  v47 = v55;
  v57 = __OFSUB__(v55, v56);
  v58 = v55 < v56;
  v59 = v55 - v56;
  if (!v58)
  {
    *(v107 + 16) = 1;
    if (v57)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    *v54 = v59;
    v47 = v59;
  }

  if (__OFSUB__(v43, v47))
  {
    goto LABEL_39;
  }

  if (v43 - v47 > 1)
  {
    goto LABEL_21;
  }

  v57 = __OFADD__(v43, v56);
  v43 += v56;
  if (!v57)
  {
    v110 = v43;
LABEL_21:
    if (v47 < v43)
    {
LABEL_22:
      v104 = swift_allocObject();
      *(v104 + 16) = 0;
      v60 = swift_allocObject();
      v97 = v60;
      *(v60 + 16) = Array.init()();
      v61 = swift_allocObject();
      v91 = v61;
      *(v61 + 16) = 0;
      v89 = (v61 + 16);
      type metadata accessor for EstimationCache(0);
      v102 = swift_allocBox();
      v63 = v62;
      v64 = MEMORY[0x1E69E7CC0];
      *v62 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v63[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v64);
      type metadata accessor for IndexSet();
      v108[0] = v64;
      lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
      v65 = MEMORY[0x1E69E6530];
      type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], v65, MEMORY[0x1E69E6328]);
      v88 = v63;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v66 = swift_allocObject();
      *(v66 + 16) = 0;
      v109 = v47;
      v67 = v103;
      v68 = *v103;
      v108[0] = 2 * *v103;
      MEMORY[0x1EEE9AC00](v66);
      *(&v86 - 14) = v99;
      *(&v86 - 13) = v27;
      *(&v86 - 12) = v60;
      *(&v86 - 11) = v67;
      v69 = v107;
      *(&v86 - 10) = v70;
      *(&v86 - 9) = v69;
      v71 = v96;
      v72 = v104;
      *(&v86 - 8) = v96;
      *(&v86 - 7) = v72;
      v73 = v91;
      v74 = v102;
      *(&v86 - 6) = v91;
      *(&v86 - 5) = v74;
      v75 = v105;
      v83 = v105;
      LOBYTE(v84) = v94 & 1;
      v85 = &v110;
      _LazyLayout_Subviews.apply(from:style:to:)(&v109, v108, partial apply for closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), (&v86 - 16));
      swift_beginAccess();
      if ((*(v66 + 16) & 1) == 0)
      {
        flushMinorGroup #1 <A>() in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(v66, v97, v67, v107, v71, v104, v73, v102, v75, v99, v101);
      }

      if (v100)
      {
        goto LABEL_34;
      }

      v76 = v88;
      swift_beginAccess();
      EstimationCache.merge(_:)(v76);
      v77 = COERCE_DOUBLE(EstimationCache.average.getter());
      if (v68)
      {
        if (v98 == 0x8000000000000000 && v68 == -1)
        {
          goto LABEL_44;
        }

        if ((v98 / v68 * v68) >> 64 == (v98 / v68 * v68) >> 63)
        {
          v80 = 0.0;
          if ((v78 & 1) == 0)
          {
            v80 = v77;
          }

          v81 = (v79 + v80) * (v98 / v68 * v68);
          if ((v98 / v68 < 1) | v78 & 1)
          {
            v26 = v81;
          }

          else
          {
            v26 = v81 - v77;
          }

LABEL_34:
          v82 = v89;
          swift_beginAccess();
          *v93 = v26 + *v82;
          if (*(v66 + 16) == 1)
          {
            AGGraphCancelUpdate();
          }

          goto LABEL_37;
        }

        goto LABEL_41;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_37:

    return;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_18D1DCCF8()
{

  return swift_deallocObject();
}

uint64_t _LazyLayout_Subviews.apply(from:style:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = swift_allocObject();
  v10 = v4[17];
  if (__OFADD__(*a1, v10))
  {
    __break(1u);
  }

  *(v9 + 16) = *a1 + v10;
  v11 = v4[15];
  v18[0] = v4[14];
  v18[1] = v11;
  v17 = v8;
  v19 = v18;
  v20 = 1;
  MEMORY[0x1EEE9AC00](v9);
  v16[2] = v4;
  v16[3] = v12;
  v16[4] = a3;
  v16[5] = a4;

  _ViewList_Node.applyNodes(from:style:transform:to:)(a1, &v17, &v19, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.apply(from:style:to:), v16);
  v14 = v13;

  return v14 & 1;
}

void _ViewList_Node.applyNodes(from:style:transform:to:)(void *a1, unint64_t *a2, unint64_t *a3, void (*a4)(void *, unint64_t *, __int128 *, unint64_t *), uint64_t a5)
{
  v7 = *a2;
  v36 = *a3;
  v37 = *(a3 + 8);
  outlined init with copy of _ViewList_Node(v5, &v51);
  if (v56 <= 1u)
  {
    if (!v56)
    {
      v8 = DWORD2(v53);
      v9 = BYTE12(v53);
      outlined init with take of AnyTrackedValue(&v51, &v40);
      v10 = *&v41[8];
      __swift_project_boxed_opaque_existential_1(&v40, *&v41[8]);
      v48 = v7;
      *&v43 = v36;
      BYTE8(v43) = v37;
      v11 = *(*(&v10 + 1) + 64);
      LOBYTE(v50) = v9;
      v11(a1, &v48, v8 | (v9 << 32), &v43, a4, a5, v10, *(&v10 + 1));
      __swift_destroy_boxed_opaque_existential_1(&v40);
      return;
    }

    *&v44[16] = v53;
    v45 = v54;
    v46[0] = *v55;
    *(v46 + 13) = *&v55[13];
    v43 = v51;
    *v44 = v52;
    v21 = *(&v51 + 1);
    if ((v7 & 1) == 0 || (v21 = *(&v43 + 1) * (v7 >> 1), (*(&v43 + 1) * (v7 >> 1)) >> 64 == v21 >> 63))
    {
      v22 = *a1 - v21;
      if (*a1 >= v21)
      {
        outlined destroy of _ViewList_Sublist(&v43);
        *a1 = v22;
      }

      else
      {
        v50 = v7;
        outlined init with copy of _ViewList_Sublist(&v43, &v40);
        v42 = 1;
        v48 = v36;
        v49 = v37;
        a4(a1, &v50, &v40, &v48);
        outlined destroy of _ViewList_Node(&v40);
        outlined destroy of _ViewList_Sublist(&v43);
        *a1 = 0;
      }

      return;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v12 = a1;
  if (v56 == 2)
  {
    v13 = 0;
    v14 = v51;
    v15 = *(v51 + 16);
    v34 = v51 + 32;
    while (1)
    {
      if (v13 == v15)
      {
        v13 = v15;
        v43 = 0u;
        memset(v44, 0, 28);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (v13 >= *(v14 + 16))
        {
          goto LABEL_35;
        }

        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v34 + 48 * v13++, &v43, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      }

      *&v41[12] = *&v44[12];
      v40 = v43;
      *v41 = *v44;
      if (*&v44[8])
      {
        v16 = *&v41[24];
        outlined init with take of AnyTrackedValue(&v40, &v43);
        v17 = *&v44[8];
        v18 = *&v44[16];
        __swift_project_boxed_opaque_existential_1(&v43, *&v44[8]);
        v50 = v7;
        v48 = v36;
        v49 = v37;
        v19 = *(v18 + 64);
        v47 = 0;
        v20 = v19(v12, &v50, v16, &v48, a4, a5, v17, v18);
        __swift_destroy_boxed_opaque_existential_1(&v43);
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_33;
    }
  }

  v23 = *(&v51 + 1);
  if (BYTE8(v52) == 1)
  {
    if (*(*(&v51 + 1) + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(*(&v51 + 1) + 32, &v40, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(&v40, &v43);
      v24 = *&v44[8];
      v25 = *&v44[16];
      __swift_project_boxed_opaque_existential_1(&v43, *&v44[8]);
      v48 = v7;
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v23 + 32, &v40, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      v26 = *&v41[24];
      __swift_destroy_boxed_opaque_existential_1(&v40);

      *&v40 = v36;
      BYTE8(v40) = v37;
      v27 = *(v25 + 64);
      LOBYTE(v50) = 0;
      v27(a1, &v48, v26, &v40, a4, a5, v24, v25);
      __swift_destroy_boxed_opaque_existential_1(&v43);
      return;
    }

    goto LABEL_39;
  }

  v28 = *(*(&v51 + 1) + 16);
  v35 = *(&v51 + 1) + 32;

  v29 = 0;
  if (v28)
  {
    goto LABEL_23;
  }

LABEL_22:
  v29 = v28;
  v43 = 0u;
  memset(v44, 0, 28);
  while (1)
  {
    *&v41[12] = *&v44[12];
    v40 = v43;
    *v41 = *v44;
    if (!*&v44[8])
    {

      swift_bridgeObjectRelease_n();
      return;
    }

    v30 = *&v41[24];
    outlined init with take of AnyTrackedValue(&v40, &v43);
    v31 = *&v44[8];
    v32 = *&v44[16];
    __swift_project_boxed_opaque_existential_1(&v43, *&v44[8]);
    v50 = v7;
    v48 = v36;
    v49 = v37;
    v33 = *(v32 + 64);
    v47 = 0;
    if ((v33(v12, &v50, v30, &v48, a4, a5, v31, v32) & 1) == 0)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v43);
    if (v29 == v28)
    {
      goto LABEL_22;
    }

LABEL_23:
    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    if (v29 >= *(v23 + 16))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v35 + 48 * v29++, &v43, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  }

  __swift_destroy_boxed_opaque_existential_1(&v43);
LABEL_33:
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t closure #1 in closure #1 in _LazyLayout_Subviews.apply(from:style:to:)(void *a1, unint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t *a5, unint64_t a6, void (*a7)(__int128 *, _BYTE *), unint64_t a8)
{
  v13 = *a2;
  v52 = *a4;
  LODWORD(v53) = *(a4 + 8);
  v14 = *(a5 + 32);
  v48 = *(a5 + 132);
  LODWORD(v49) = v14;
  v15 = *(a5 + 133);
  v46 = *(a5 + 134);
  v47 = v15;
  v16 = outlined init with copy of _ViewList_Node(a3, &v74);
  if (v79 > 2u)
  {
    LODWORD(v54) = v74.n128_u32[0];
    *(&v54 + 1) = v74.n128_u64[1];
    *&v55[0] = v75;
    BYTE8(v55[0]) = BYTE8(v75);
    v57 = v13;
    *v71 = v52;
    v71[8] = v53;
    MEMORY[0x1EEE9AC00](v16);
    v40 = a5;
    v41 = a6;
    v42 = a7;
    v43 = a8;
    v27 = _ViewList_Section.applyNodes(from:style:transform:to:)(a1, &v57, v71, partial apply for closure #2 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:), v39);

    return v27 & 1;
  }

  if (v79 == 1)
  {
    *&v71[32] = v76;
    v72 = v77;
    v73[0] = *v78;
    *(v73 + 13) = *&v78[13];
    *v71 = v74;
    *&v71[16] = v75;
    v17 = v74.n128_i64[1];
    if (v13)
    {
      v17 = v74.n128_u64[1] * (v13 >> 1);
      if ((v74.n128_i64[1] * (v13 >> 1)) >> 64 != v17 >> 63)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    v18 = *a1 - v17;
    if (*a1 >= v17)
    {
      outlined destroy of _ViewList_Sublist(v71);
      *a1 = v18;
    }

    else
    {
      v51 = a6;
      *&v54 = v52;
      BYTE8(v54) = v53;
      _ViewList_TemporarySublistTransform.apply(sublist:)(v71, v74);
      v19 = *v71;
      if (*&v71[8] < *v71)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      swift_beginAccess();
      swift_beginAccess();
      if (v19 != *(&v19 + 1))
      {
        v20 = 0x80000000;
        if (v19 > 0x80000000)
        {
          v20 = v19;
        }

        v53 = v20;
        v21 = v19;
        v44[1] = a8;
        v45 = a7;
        while (1)
        {
          v69[0] = 0;
          if (v19 < 0xFFFFFFFF80000000)
          {
            break;
          }

          if (v53 == v21)
          {
            goto LABEL_35;
          }

          v22 = *&v71[20];
          v23 = *&v71[24];
          outlined init with copy of _ViewList_SubgraphElements(&v71[32], &v57);
          v59 = v21;
          v60 = v22;
          v61 = v23;
          v62 = *&v73[1];
          v63 = DWORD2(v73[1]);
          v64 = BYTE12(v73[1]);
          v65 = v49;
          v66 = v48;
          v67 = v47;
          v68 = v46;
          v24 = *a5;
          v25 = *(a5 + 2);
          outlined init with copy of _LazyLayout_Subview.Data(&v57, v55);
          v26 = *(v51 + 16);
          *&v54 = v24;
          DWORD2(v54) = v25;
          v56 = v26;

          v45(&v54, v69);
          outlined destroy of _LazyLayout_Subview(&v54);
          outlined destroy of _LazyLayout_Subview.Data(&v57);
          ++*(v51 + 16);
          if (v69[0] == 1)
          {
            outlined destroy of _ViewList_Sublist(v71);
            v27 = 0;
            return v27 & 1;
          }

          if (*(&v19 + 1) == ++v21)
          {
            goto LABEL_15;
          }
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_15:
      outlined destroy of _ViewList_Sublist(v71);
    }

    v27 = 1;
    return v27 & 1;
  }

  v50 = a1;
  v51 = v13;
  if (v79 == 2)
  {
    v44[0] = v44;
    MEMORY[0x1EEE9AC00](v16);
    v28 = 0;
    v39[0] = a5;
    v39[1] = a6;
    v40 = a7;
    v41 = a8;
    LODWORD(v42) = v49;
    BYTE4(v42) = v48;
    BYTE5(v42) = v47;
    BYTE6(v42) = v46;
    v30 = v29 + 32;
    v49 = v29;
    v31 = *(v29 + 16);
    if (v31)
    {
      goto LABEL_22;
    }

LABEL_25:
    v28 = v31;
    memset(v71, 0, 44);
    while (1)
    {
      *(v55 + 12) = *&v71[28];
      v54 = *v71;
      v55[0] = *&v71[16];
      v27 = *&v71[24] == 0;
      if (!*&v71[24] || (v32 = DWORD2(v55[1]), outlined init with take of _ViewList_Elements(&v54, v71), v33 = *&v71[24], v34 = *&v71[32], __swift_project_boxed_opaque_existential_1(v71, *&v71[24]), v70[0] = v51, v57 = v52, v58 = v53, v35 = *(v34 + 64), v69[1] = 0, v36 = v35(v50, v70, v32, &v57, partial apply for closure #1 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:), &v38, v33, v34), __swift_destroy_boxed_opaque_existential_1(v71), (v36 & 1) == 0))
      {

        return v27 & 1;
      }

      if (v28 == v31)
      {
        goto LABEL_25;
      }

LABEL_22:
      if ((v28 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v28 >= *(v49 + 16))
      {
        goto LABEL_33;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v30 + 48 * v28++, v71);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_38:
  LODWORD(v43) = 0;
  v42 = 570;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(uint64_t a1, BOOL *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, void *a12, char a13, void *a14, uint64_t a15, uint64_t a16)
{
  v18 = a5;
  if ((*(a1 + 101) & 1) == 0 && (*(a1 + 102) & 1) == 0)
  {
    outlined init with copy of _LazyLayout_Subview(a1, v44);
    swift_beginAccess();
    type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
    Array.append(_:)();
    swift_endAccess();
    swift_beginAccess();

    v25 = MEMORY[0x193ABF270](v24, &type metadata for _LazyLayout_Subview);

    if (v25 == *a4)
    {
      flushMinorGroup #1 <A>() in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(v18, a3, a4, a6, a7, a8, a10, a11, a12, a15, a16);
    }

    goto LABEL_26;
  }

  flushMinorGroup #1 <A>() in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(a5, a3, a4, a6, a7, a8, a10, a11, a12, a15, a16);
  swift_beginAccess();
  if (*(a6 + 16))
  {
    swift_beginAccess();
    *(a6 + 16) = 0;
  }

  else
  {
    if (a13)
    {
      v22 = *(a4 + 1);
    }

    else
    {
      v22 = 0;
    }

    v36 = v22;
    if (a13)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(a4 + 1);
    }

    swift_beginAccess();
    v37 = v18;
    if (*(a8 + 16))
    {
      Array.subscript.getter();
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      memset(v44, 0, sizeof(v44));
    }

    (*(a16 + 40))(a15, a16);
    LazyLayoutViewCache.item(data:)((a1 + 16));

    v40 = v36;
    v41 = (a13 & 1) == 0;
    v42 = v23;
    v43 = a13 & 1;
    LayoutProxy.lengthThatFits(_:in:)(&v40, a13 & 1);
    v27 = v26;
    MEMORY[0x1EEE9AC00](v28);
    *&v29 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply));
    v31 = v30;
    outlined destroy of _LazyLayout_Subview?(v44, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
    v32 = *&v29;
    if (v31)
    {
      v32 = 0.0;
    }

    v33 = v27 + v32;
    swift_beginAccess();
    *(a10 + 16) = v33 + *(a10 + 16);
    v18 = v37;
  }

  v34 = *a4;
  if (__OFADD__(*a12, *a4))
  {
    __break(1u);
    goto LABEL_31;
  }

  *a12 += *a4;
  if (v34 < 0)
  {
LABEL_31:
    __break(1u);
    return;
  }

  if (v34)
  {
    swift_beginAccess();
    do
    {
      outlined init with copy of _LazyLayout_Subview(a1, v44);
      type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
      Array.append(_:)();
      --v34;
    }

    while (v34);
    swift_endAccess();
  }

  swift_beginAccess();
  swift_beginAccess();
  swapSubviews(_:_:)((a8 + 16), (a3 + 16));
  swift_endAccess();
  swift_endAccess();
LABEL_26:
  swift_beginAccess();
  v35 = (*(v18 + 16) & 1) != 0 || *a12 >= *a14;
  *a2 = v35;
}

uint64_t initializeWithCopy for _LazyLayout_Subview(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  v4 = *(a2 + 5);
  *(a1 + 40) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 16, a2 + 2, v5);
  *(a1 + 56) = a2[7];
  *(a1 + 64) = a2[8];
  v7 = a2[10];
  *(a1 + 72) = a2[9];
  *(a1 + 80) = v7;
  *(a1 + 88) = *(a2 + 22);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 99) = *(a2 + 99);
  *(a1 + 104) = a2[13];

  return a1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t destroy for _LazyLayout_Subview(void *a1)
{

  __swift_destroy_boxed_opaque_existential_1(a1 + 2);
}

void flushMinorGroup #1 <A>() in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for EstimationCache(0);
  swift_projectBox();
  swift_beginAccess();
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [_LazyLayout_Subview] and conformance [A], &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6340]);
  if (Collection.isEmpty.getter())
  {
    goto LABEL_10;
  }

  v17 = a9;
  swift_beginAccess();
  if (*(a4 + 16))
  {
    swift_beginAccess();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_beginAccess();
    swift_beginAccess();
    v18 = a3;
    v19 = *(a6 + 16);
    v21 = *(type metadata accessor for MinorProperties(0, a10, a11, v20) + 40);
    v22 = *(a11 + 80);

    v24 = v22(v23, v19, &v18[v21], a10, a11);
    v26 = v25;

    a3 = v18;

    swift_beginAccess();
    *(a7 + 16) = v26 + v24 + *(a7 + 16);
    swift_beginAccess();
    v27 = *(a6 + 16) == 0;
    if (*(a6 + 16))
    {
      v28 = *&v26;
    }

    else
    {
      v28 = 0;
    }

    swift_beginAccess();
    EstimationCache.add(length:spacing:count:)(v28, v27, 1, v24);
    v17 = a9;
    swift_endAccess();
  }

  if (!__OFADD__(*v17, *a3))
  {
    *v17 += *a3;
    swift_beginAccess();
    swift_beginAccess();
    swapSubviews(_:_:)((a6 + 16), (a2 + 16));
    swift_endAccess();
    swift_endAccess();
LABEL_10:
    HasDeadlinePassed = AGGraphHasDeadlinePassed();
    swift_beginAccess();
    *(a1 + 16) = HasDeadlinePassed;
    return;
  }

  __break(1u);
}

uint64_t storeEnumTagSinglePayload for SDFStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *result = a2 - 118;
    if (a3 >= 0x76)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

double View.scrapeableAttachment(_:)(unint64_t *a1)
{
  v1 = *a1;
  v3 = *a1;
  View.modifier<A>(_:)();
  outlined copy of ScrapeableContent.Content?(v1);
  return outlined consume of ScrapeableContent.Content?(v3);
}

unint64_t *sub_18D1DE488(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if ((~*a2 & 0xF000000000000007) != 0)
  {
    v3 = result;
    outlined copy of ScrapeableContent.Content(*a2);
    result = v3;
  }

  *result = v2;
  return result;
}

double outlined copy of ScrapeableContent.Content(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) <= 3)
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (v1 == 2 || v1 == 3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v1 > 5)
    {
      if (v1 != 6 && v1 != 7 && v1 != 8)
      {
        return result;
      }

LABEL_15:

      return result;
    }

    if (v1 == 4 || v1 == 5)
    {
      goto LABEL_15;
    }
  }

  return result;
}

double outlined copy of ScrapeableContent.Content?(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return outlined copy of ScrapeableContent.Content(a1);
  }

  return result;
}

double outlined consume of ScrapeableContent.Content?(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined consume of ScrapeableContent.Content(result);
  }

  return v1;
}

double outlined consume of ScrapeableContent.Content(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) <= 3)
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (v1 == 2 || v1 == 3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v1 > 5)
    {
      if (v1 != 6 && v1 != 7 && v1 != 8)
      {
        return result;
      }

LABEL_15:

      return result;
    }

    if (v1 == 4 || v1 == 5)
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ScrapeableAttachmentViewModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t _LazyStack_Cache.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for MinorProperties(0, a1, a2, a3);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v9 = type metadata accessor for _LazyStack_Cache(0, a1, a2, v8);
  v10 = a4 + v9[9];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a4 + v9[10]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a4 + v9[11]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a4 + v9[12]);
  *v13 = 0;
  v13[1] = 0;
  *(a4 + v9[13]) = 0xBFF0000000000000;
  *(a4 + v9[14]) = 0xBFF0000000000000;
  v14 = (a4 + v9[15]);
  v15 = MEMORY[0x1E69E7CC0];
  *v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v14[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v15);
  type metadata accessor for EstimationCache(0);
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  v16 = MEMORY[0x1E69E6530];
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], v16, MEMORY[0x1E69E6328]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t LazyLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 24);
  (*(*&v6 + 16))(v9, v2, v5, v7);
  v15 = v12;
  v16 = (v2 + *(a2 + 36));
  v17 = *(v2 + *(a2 + 40));
  v19 = *v16;
  v18 = v16[1];
  v70 = a2;
  v71 = v3;
  v20 = v3 + *(a2 + 48);
  v21 = *v20;
  v22 = *(v20 + 8);
  v24 = *(v20 + 16);
  v23 = *(v20 + 24);
  v26 = *(v20 + 32);
  v25 = *(v20 + 40);
  v27 = *(v20 + 48);
  v28 = *(v20 + 64);
  v29 = *(v20 + 80);
  v30 = *(v20 + 72);
  v31 = *(v20 + 56);
  v33 = *(v20 + 88);
  v32 = *(v20 + 96);
  v34 = *(v20 + 104);
  v35 = *(v20 + 112);
  v36 = *(v20 + 120);
  v37 = *(v20 + 128);
  v38 = *(v20 + 136);
  v39 = *(v20 + 160);
  v72 = v5;
  if ((v27 & 1) == 0)
  {
    if (v15)
    {
      if ((v22 & 1) == 0)
      {
        if (v34)
        {
          goto LABEL_21;
        }

LABEL_10:
        if ((v28 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_11;
      }
    }

    else if ((v22 & 1) != 0 || v11 != v21)
    {
      goto LABEL_2;
    }

    if (v14)
    {
      if (v23)
      {
        goto LABEL_38;
      }
    }

    else if ((v23 & 1) == 0 && v13 == v24)
    {
      goto LABEL_38;
    }
  }

LABEL_2:
  if (v34)
  {
    goto LABEL_21;
  }

  if (v15)
  {
    goto LABEL_10;
  }

  if ((v28 & 1) != 0 || *&v31 != v11)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (v14)
  {
    if (v29)
    {
      goto LABEL_38;
    }
  }

  else if ((v29 & 1) == 0 && *&v30 == v13)
  {
    goto LABEL_38;
  }

LABEL_21:
  if (v39)
  {
LABEL_22:
    v40 = v18;
    v57 = v34;
    v58 = v30;
    v59 = v31;
    v60 = v33;
    v56 = v17;
    v62 = v32;
    v63 = v27;
    v64 = v23;
    v65 = v24;
    v66 = v22;
    v67 = v21;
    v68 = v26;
    v69 = v6;
    v61 = v25;
    v41 = v15;
    swift_beginAccess();
    v43 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      v43[4] = v11;
      *(v43 + 5) = v41;
      v43[6] = v13;
      *(v43 + 28) = v14;
    }

    v44 = *(v70 + 24);
    v74 = v41;
    v73 = v14;
    v45 = v72;
    closure #1 in LazyLayoutComputer.Engine.sizeThatFits(_:)(v19, v40, v56, v9, *&v11, v41, *&v13, v14, v42, v72, v44);
    v46 = v58;
    *(v20 + 112) = v59;
    *(v20 + 128) = v46;
    v47 = v62;
    *(v20 + 144) = v60;
    *(v20 + 152) = v47;
    *(v20 + 160) = v57;
    v48 = v66;
    *(v20 + 56) = v67;
    *(v20 + 64) = v48;
    v49 = v64;
    *(v20 + 72) = v65;
    *(v20 + 80) = v49;
    v50 = v61;
    *(v20 + 88) = v68;
    *(v20 + 96) = v50;
    *(v20 + 104) = v63;
    *v20 = v11;
    *(v20 + 8) = v41;
    *(v20 + 16) = v13;
    *(v20 + 24) = v14;
    *(v20 + 32) = v51;
    *(v20 + 40) = v52;
    *(v20 + 48) = 0;
    v6 = v69;
    return (*(*&v6 + 8))(v9, v45);
  }

  if (v15)
  {
    if ((v36 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((v36 & 1) != 0 || v35 != v11)
  {
    goto LABEL_22;
  }

  if (v14)
  {
    if ((v38 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((v38 & 1) != 0 || v37 != v13)
  {
    goto LABEL_22;
  }

LABEL_38:
  v53 = v15;
  v69 = v11;
  swift_beginAccess();
  v54 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v54[4] = v69;
    *(v54 + 5) = v53;
    v54[6] = v13;
    *(v54 + 28) = v14 | 0x100;
  }

  v45 = v72;
  return (*(*&v6 + 8))(v9, v45);
}

double destroy for ScrapeableAttachmentViewModifier(unint64_t *a1)
{
  v1 = *a1;
  if ((~v1 & 0xF000000000000007) != 0)
  {
    return outlined consume of ScrapeableContent.Content(v1);
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021LazyLayoutCacheParentV033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021LazyLayoutCacheParentV033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.LazyLayoutCacheParentKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void _s7SwiftUI19LazyLayoutViewCacheC6layout4list6inputsAC14AttributeGraph0J0VyxG_AIyAA0E4List_pGAA01_E6InputsVtcAA0cD0RzlufcyAA06UpdateeF033_EB2336F1CBB87914F55D10FF4F9B475ALLVzXEfU_TA_0(uint64_t a1)
{

  *(a1 + 8) = v1;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24LazyLayoutReuseIdleInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24LazyLayoutReuseIdleInputV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for LazyLayoutReuseIdleInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t LazyLayoutViewCache.anyTransition(data:)(uint64_t a1)
{
  if (*(a1 + 76))
  {
    return 0;
  }

  v1 = *(a1 + 64);
  if ((_s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA013CanTransitiondJ0V_Tt0B5(0, v1) & 1) == 0)
  {
    return 0;
  }

  if (one-time initialization token for opacity != -1)
  {
    swift_once();
  }

  v2 = static AnyTransition.opacity;
  v3 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, v1);
  if ((*(*v3 + 96))())
  {

    return 0;
  }

  AGGraphClearUpdate();
  swift_beginAccess();
  swift_beginAccess();
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  if (v6)
  {

    v8 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v7);
  }

  else
  {
    v8 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(*Value);
  }

  if (v8 == 2)
  {
    v11 = v7;
    v12 = v6;
    v10 = 3;
    v8 = EnvironmentValues.accessibilitySettingEnabled(_:)(&v10);
  }

  v9 = AGGraphSetUpdate();
  if (((*(*v3 + 104))(v9) & 1) == 0)
  {
    return v3;
  }

  result = v3;
  if (v8)
  {

    return v2;
  }

  return result;
}

void LazyLayoutViewCache.reusedItem(data:anyTransition:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v253 = a1;
  v254 = a2;
  v288 = *MEMORY[0x1E69E9840];
  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v270 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v268 = &v240 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v263 = &v240 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v257 = &v240 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v259 = &v240 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v250 = &v240 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v249 = &v240 - v15;
  swift_beginAccess();
  v17 = *(v2 + 176);
  v18 = *(v17 + 16);
  v265 = v3;
  if (v18)
  {
    v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v18, 0, v16);
    v20 = specialized Sequence._copySequenceContents(initializing:)(&v285, v19 + 4, v18, v17);
    v21 = v285;
    v22 = v286;

    outlined consume of Set<EventID>.Iterator._Variant(v21);
    if (v20 != v18)
    {
      __break(1u);
LABEL_184:

      v226.n128_f64[0] = MEMORY[0x1EEE9AC00](v225);
      v227 = v265;
      v228 = v253;
      *(&v240 - 2) = v22;
      *(&v240 - 1) = v228;
      (*(*v227 + 432))(partial apply for implicit closure #7 in LazyLayoutViewCache.reusedItem(data:anyTransition:), v226);
      *&v285 = *(v228 + 40);

      v229 = _ViewList_SublistSubgraphStorage.retain()();

      *(v22 + 376) = v229;

      if (v19[303])
      {
        *&v285 = *(v22 + 24);
        AGGraphAddTraceEvent();
      }

      v230 = v253;
      v231 = *(v253 + 56);
      *(v22 + 144) = *(v253 + 48);
      *(v22 + 152) = v231;

      v232 = *(v230 + 84);
      v233 = *(v230 + 85);
      v234 = *(v230 + 86);
      *(v22 + 168) = *(v230 + 80);
      *(v22 + 172) = v232;
      *(v22 + 173) = v233;
      *(v22 + 174) = v234;
      LazyLayoutViewCache.addItem(_:data:reset:)(v22, v230, 1);
      v235 = *(v22 + 152);
      *&v279 = *(v22 + 144);
      *(&v279 + 1) = v235;

      _ViewList_ID.Canonical.init(id:)(&v279, &v285);
      v236 = v285;
      swift_beginAccess();
      v237 = v244;

      v238 = v240;
      specialized Dictionary.subscript.setter(v240, v237, v236, *(&v236 + 1));
      swift_endAccess();
      if (v237)
      {
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v279 = v227[47];
        v227[47] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v236, *(&v236 + 1), v238, isUniquelyReferenced_nonNull_native);
        v227[47] = v279;
        swift_endAccess();

        v285 = v282;
        v286 = v283;
        *v287 = v284[0];
        *&v287[9] = *(v284 + 9);
        outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
      }

      else
      {
        v285 = v282;
        v286 = v283;
        *v287 = v284[0];
        *&v287[9] = *(v284 + 9);
        outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
      }

      return;
    }

    v3 = v265;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v23 = specialized LazyLayoutViewCache.LeastRecentlyUsedItems.updatedItems<A>(_:)(v19);
  swift_endAccess();

  v24 = v253;
  v25 = *(v253 + 56);
  *&v285 = *(v253 + 48);
  *(&v285 + 1) = v25;
  v269 = _ViewList_ID.reuseIdentifier.getter();
  v282 = 0uLL;
  *&v283 = 0;
  *(&v283 + 1) = 0x1FFFFFFFELL;
  memset(v284, 0, 25);
  v26 = *(v24 + 56);
  *&v27 = *(v24 + 48);
  v271 = v27;
  *&v285 = v27;
  *(&v285 + 1) = v26;
  v28 = _ViewList_ID.reuseIdentifier.getter();
  swift_beginAccess();
  if (static ReuseTrace.recorder)
  {
    *&v279 = v28;
    AGGraphAddTraceEvent();
  }

  v256 = v23 >> 62;
  if (v23 >> 62)
  {
LABEL_171:
    v29 = __CocoaSet.count.getter();
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_172:

    if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA34EnableLazyLayoutReuseLoggingAlwaysV_Ttg5() & 1) == 0)
    {
      swift_beginAccess();
      if (*(&v283 + 1) >> 1 == 0xFFFFFFFFLL && BYTE8(v284[1]) <= 1u)
      {
        if (one-time initialization token for lazyLayoutReuse != -1)
        {
          swift_once();
        }

        v219 = __swift_project_value_buffer(v270, static Log.lazyLayoutReuse);
        v220 = MEMORY[0x1E69E9420];
        v221 = MEMORY[0x1E69E6720];
        v222 = v268;
        _s2os6LoggerVSgWOcTm_1(v219, v268, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
        v223 = type metadata accessor for Logger();
        v224 = (*(*(v223 - 8) + 48))(v222, 1, v223);
        _s2os6LoggerVSgWOhTm_1(v222, &lazy cache variable for type metadata for Logger?, 255, v220, v221);
        if (v224 != 1)
        {
          if (_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA34EnableLazyLayoutReuseLoggingAlwaysV_Ttg5())
          {
            (*(*v3 + 432))(specialized implicit closure #1 in noteFailedReuse #1 (_:) in LazyLayoutViewCache.reusedItem(data:anyTransition:), 0);
          }

          else
          {
            v285 = v282;
            v286 = v283;
            *v287 = v284[0];
            *&v287[9] = *(v284 + 9);
            outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
            *&v282 = 0;
            *(&v283 + 1) = 0;
            BYTE8(v284[1]) = 16;
          }
        }
      }

      goto LABEL_166;
    }

    goto LABEL_173;
  }

  v29 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_172;
  }

LABEL_9:
  v268 = v23 & 0xC000000000000001;
  swift_beginAccess();
  v3 = 0;
  v258 = "UnaryGlassContainerEnabled";
  v262 = v23 & 0xFFFFFFFFFFFFFF8;
  if ((v23 & 0x8000000000000000) != 0)
  {
    v30 = v23;
  }

  else
  {
    v30 = v23 & 0xFFFFFFFFFFFFFF8;
  }

  v251 = v30;
  v248 = v271;
  v19 = &type metadata instantiation cache for Gradient.WatchDefinition;
  v31 = &property descriptor for SizingPreferences.size2D;
  v264 = v23;
  v267 = v29;
  do
  {
    if (v268)
    {
      v33 = MEMORY[0x193AC03C0](v3, v23);
      v34 = v33;
      v35 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        goto LABEL_169;
      }
    }

    else
    {
      if (v3 >= *(v262 + 16))
      {
        goto LABEL_170;
      }

      v34 = *(v23 + 8 * v3 + 32);

      v35 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }
    }

    v36 = *(v34 + 160);
    *&v271 = v34;
    if (v36 == v269)
    {
      v37 = v265[52] - *(v34 + 184);
      v266 = v35;
      if (v37 >= 1)
      {
        if (*(v34 + 200) != v265[57] && *(v34 + 224) == 1)
        {
          v277 = *(v34 + 136);
          v278 = 0;
          if (v254)
          {
            (*(*v254 + 88))(&v277, &unk_1F00A1FB8, &protocol witness table for CompareTransitionType);
            if (v278 == 1)
            {
              v38 = *(v34 + 120);
              if (v38)
              {
                v39 = *(v34 + 104);
                *(&v275 + 1) = &type metadata for _ViewList_SubgraphElements;
                *&v276[0] = &protocol witness table for _ViewList_SubgraphElements;
                *&v274 = swift_allocObject();
                outlined init with copy of _ViewList_SubgraphElements(v253, v274 + 16);
                outlined init with copy of AnyTrackedValue(&v274, v272);
                v40 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _ViewList_Elements, &protocol descriptor for _ViewList_Elements);

                if (swift_dynamicCast())
                {
                  *v287 = v281[0];
                  v285 = v279;
                  v286 = v280;
                  *&v279 = *(&v281[0] + 1);
                  if (_ViewList_SublistSubgraphStorage.isValid.getter())
                  {
                    v244 = v40;
                    v245 = v38;
                    v41 = *(v34 + 80);
                    v42 = v34;
                    v43 = v39;
                    v44 = *(v42 + 88);
                    __swift_project_boxed_opaque_existential_1((v42 + 56), v41);
                    v45 = (*(v44 + 24))(v43, &v285, v248, v245, 1, v41, v44);
                    outlined destroy of _ViewList_SubgraphElements(&v285);
                    __swift_destroy_boxed_opaque_existential_1(&v274);
                    if (v45)
                    {
                      v46 = *(v42 + 144);
                      v47 = *(v42 + 148);
                      v48 = *(v42 + 152);
                      v49 = *(v48 + 16);
                      swift_bridgeObjectRetain_n();
                      if (v49)
                      {
                        v50 = *(v48 + 32);
                        v51 = *(v48 + 52);

                        swift_bridgeObjectRelease_n();
                        if (v51)
                        {
                          v47 = 0xFFFFFFFFLL;
                        }

                        else
                        {
                          v47 = v47;
                        }
                      }

                      else
                      {
                        swift_bridgeObjectRelease_n();
                        v50 = 0;
                      }

                      v185 = v265;
                      swift_beginAccess();
                      v186 = *(v185 + 22);
                      v19 = &type metadata instantiation cache for Gradient.WatchDefinition;
                      if (!*(v186 + 16) || (v187 = v46 | (v47 << 32), v188 = specialized __RawDictionaryStorage.find<A>(_:)(v187, v50), (v189 & 1) == 0))
                      {
                        swift_endAccess();
                        __break(1u);
                        return;
                      }

                      v190 = *(*(v186 + 56) + 8 * v188);
                      swift_endAccess();
                      v191 = v265;
                      swift_beginAccess();

                      specialized Dictionary._Variant.removeValue(forKey:)(v187, v50);
                      swift_endAccess();

                      swift_beginAccess();
                      v192 = *(v191 + 46);
                      v193 = *(v192 + 16);
                      v242 = v187;
                      v243 = v190;
                      if (v193)
                      {
                        v194 = specialized __RawDictionaryStorage.find<A>(_:)(v187, v50);
                        v195 = v271;
                        if (v196)
                        {
                          v197 = (*(v192 + 56) + 16 * v194);
                          v199 = *v197;
                          v198 = v197[1];
                        }

                        else
                        {
                          v199 = 0;
                          v198 = 0;
                        }
                      }

                      else
                      {
                        v199 = 0;
                        v198 = 0;
                        v195 = v271;
                      }

                      swift_endAccess();
                      swift_beginAccess();
                      specialized Dictionary._Variant.removeValue(forKey:)(v242, v50);
                      swift_endAccess();

                      if (v198)
                      {
                        v242 = v50;
                        swift_beginAccess();
                        v200 = specialized __RawDictionaryStorage.find<A>(_:)(v199);
                        v202 = v201;

                        if (v202)
                        {
                          v203 = v199;
                          v204 = v198;
                          v205 = v265;
                          v206 = swift_isUniquelyReferenced_nonNull_native();
                          v207 = *(v205 + 47);
                          *&v279 = v207;
                          *(v205 + 47) = 0x8000000000000000;
                          if (!v206)
                          {
                            specialized _NativeDictionary.copy()();
                            v207 = v279;
                          }

                          specialized _NativeDictionary._delete(at:)(v200, v207);
                          *(v205 + 47) = v207;
                          v198 = v204;
                          v199 = v203;
                          v195 = v271;
                        }

                        swift_endAccess();

                        v50 = v242;
                      }

                      v241 = v195[13];
                      *(&v275 + 1) = &type metadata for _ViewList_SubgraphElements;
                      *&v276[0] = &protocol witness table for _ViewList_SubgraphElements;
                      *&v274 = swift_allocObject();
                      outlined init with copy of _ViewList_SubgraphElements(v253, v274 + 16);
                      outlined init with copy of AnyTrackedValue(&v274, v272);
                      if (swift_dynamicCast())
                      {
                        *v287 = v281[0];
                        v285 = v279;
                        v286 = v280;
                        *&v279 = *(&v281[0] + 1);
                        if (_ViewList_SublistSubgraphStorage.isValid.getter())
                        {
                          v240 = v199;
                          v244 = v198;
                          v242 = v50;
                          v208 = v195[10];
                          v209 = v195[11];
                          v22 = v195;
                          __swift_project_boxed_opaque_existential_1(v195 + 7, v208);
                          v210 = (*(v209 + 24))(v241, &v285, v248, v245, 0, v208, v209);
                          outlined destroy of _ViewList_SubgraphElements(&v285);
                          __swift_destroy_boxed_opaque_existential_1(&v274);
                          if (v210)
                          {
                            goto LABEL_184;
                          }

                          goto LABEL_101;
                        }

                        outlined destroy of _ViewList_SubgraphElements(&v285);
                      }

                      else
                      {

                        v280 = 0u;
                        v281[0] = 0u;
                        v279 = 0u;
                        outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v279, &lazy cache variable for type metadata for _ViewList_SubgraphElements?, &type metadata for _ViewList_SubgraphElements);
                      }

                      __swift_project_boxed_opaque_existential_1(&v274, *(&v275 + 1));
                      v211 = static ReuseTrace.recorder;
                      if (static ReuseTrace.recorder)
                      {
                        DynamicType = swift_getDynamicType();
                        v213 = v211[2];
                        *&v285 = DynamicType;

                        v214 = v213;
                        AGGraphAddTraceEvent();
                      }

                      v23 = v264;
                      v32 = v267;
                      __swift_destroy_boxed_opaque_existential_1(&v274);
                      goto LABEL_103;
                    }

                    v34 = v42;
                    if (!v19[303])
                    {
LABEL_123:
                      if (one-time initialization token for lazyLayoutReuse != -1)
                      {
                        swift_once();
                      }

                      v162 = __swift_project_value_buffer(v270, static Log.lazyLayoutReuse);
                      v163 = v249;
                      _s2os6LoggerVSgWOcTm_1(v162, v249, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
                      v164 = type metadata accessor for Logger();
                      if ((*(*(v164 - 8) + 48))(v163, 1, v164) == 1)
                      {

                        _s2os6LoggerVSgWOhTm_1(v163, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
                        goto LABEL_102;
                      }

                      _s2os6LoggerVSgWOhTm_1(v163, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
                      v165 = swift_beginAccess();
                      if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
                      {
                        v166 = objc_opt_self();
                        v167 = [v166 v31[473]];
                        v168 = v258;
                        v169 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v258 | 0x8000000000000000);
                        v170 = [v167 objectForKey_];

                        if (v170)
                        {
                          _bridgeAnyObjectToAny(_:)();
                          swift_unknownObjectRelease();
                          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
                          v171 = [v166 v31[473]];
                          v172 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v168 | 0x8000000000000000);
                          v173 = [v171 BOOLForKey_];

                          static EnableLazyLayoutReuseLoggingAlways.cachedValue = v173;
                          v23 = v264;
                          if ((v173 & 1) == 0)
                          {
                            goto LABEL_134;
                          }

LABEL_132:
                          v174 = MEMORY[0x1EEE9AC00](v165);
                          v175 = v271;
                          *(&v240 - 2) = partial apply for implicit closure #8 in LazyLayoutViewCache.reusedItem(data:anyTransition:);
                          *(&v240 - 1) = v175;
                          (*(*v265 + 432))(implicit closure #1 in noteFailedReuse #1 (_:) in LazyLayoutViewCache.reusedItem(data:anyTransition:)partial apply, v174);

                          goto LABEL_102;
                        }

                        v286 = 0u;
                        v285 = 0u;
                        outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
                        static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
                        v23 = v264;
                      }

                      else if (static EnableLazyLayoutReuseLoggingAlways.cachedValue)
                      {
                        goto LABEL_132;
                      }

LABEL_134:
                      v176 = v271;
                      v177 = *(v271 + 144);
                      v178 = *(v271 + 148);
                      v179 = *(v271 + 152);
                      v180 = *(v179 + 16);
                      swift_bridgeObjectRetain_n();

                      if (v180)
                      {
                        v181 = *(v179 + 32);
                        v182 = *(v179 + 52);

                        swift_bridgeObjectRelease_n();
                        if (v182)
                        {
                          v178 = 0xFFFFFFFFLL;
                        }

                        else
                        {
                          v178 = v178;
                        }
                      }

                      else
                      {

                        swift_bridgeObjectRelease_n();
                        v181 = 0;
                      }

                      v183 = *(v176 + 160);

                      LOBYTE(v279) = 0;
                      v184 = v246 & 1 | 0x50;
                      v285 = v282;
                      v286 = v283;
                      *v287 = v284[0];
                      *&v287[9] = *(v284 + 9);
                      outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
                      *&v282 = v177 | (v178 << 32);
                      *(&v282 + 1) = v181;
                      *&v283 = v183;
                      BYTE8(v283) = 0;
                      HIBYTE(v283) = 0;
                      *(&v283 + 13) = 0;
                      *(&v283 + 9) = 0;
                      v246 = v184;
                      BYTE8(v284[1]) = v184;
                      v19 = &type metadata instantiation cache for Gradient.WatchDefinition;
                      goto LABEL_102;
                    }

LABEL_122:
                    *&v285 = *(v34 + 24);
                    AGGraphAddTraceEvent();
                    goto LABEL_123;
                  }

                  outlined destroy of _ViewList_SubgraphElements(&v285);
                }

                else
                {
                  v280 = 0u;
                  v281[0] = 0u;
                  v279 = 0u;
                  outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v279, &lazy cache variable for type metadata for _ViewList_SubgraphElements?, &type metadata for _ViewList_SubgraphElements);
                }

                __swift_project_boxed_opaque_existential_1(&v274, *(&v275 + 1));
                v158 = v19[303];
                if (v158)
                {
                  v159 = swift_getDynamicType();
                  v160 = *(v158 + 16);
                  *&v285 = v159;

                  v161 = v160;
                  AGGraphAddTraceEvent();
                }

                v23 = v264;
                __swift_destroy_boxed_opaque_existential_1(&v274);
              }

              if (!v19[303])
              {
                goto LABEL_123;
              }

              goto LABEL_122;
            }
          }

          if (one-time initialization token for lazyLayoutReuse != -1)
          {
            swift_once();
          }

          v104 = __swift_project_value_buffer(v270, static Log.lazyLayoutReuse);
          v105 = MEMORY[0x1E69E9420];
          v106 = MEMORY[0x1E69E6720];
          v107 = v250;
          _s2os6LoggerVSgWOcTm_1(v104, v250, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
          v108 = type metadata accessor for Logger();
          v109 = (*(*(v108 - 8) + 48))(v107, 1, v108);
          _s2os6LoggerVSgWOhTm_1(v107, &lazy cache variable for type metadata for Logger?, 255, v105, v106);
          if (v109 == 1)
          {
            v31 = &property descriptor for SizingPreferences.size2D;
            v110 = v271;
            goto LABEL_114;
          }

          v119 = swift_beginAccess();
          v31 = &property descriptor for SizingPreferences.size2D;
          if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
          {
            v120 = objc_opt_self();
            v121 = [v120 standardUserDefaults];
            v122 = v258;
            v123 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v258 | 0x8000000000000000);
            v124 = [v121 objectForKey_];

            if (v124)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
              v125 = [v120 standardUserDefaults];
              v126 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v122 | 0x8000000000000000);
              v127 = [v125 BOOLForKey_];

              static EnableLazyLayoutReuseLoggingAlways.cachedValue = v127;
              if ((v127 & 1) == 0)
              {
                goto LABEL_108;
              }

LABEL_105:
              v148 = MEMORY[0x1EEE9AC00](v119);
              v110 = v271;
              *(&v240 - 2) = partial apply for implicit closure #4 in LazyLayoutViewCache.reusedItem(data:anyTransition:);
              *(&v240 - 1) = v110;
              (*(*v265 + 432))(implicit closure #1 in noteFailedReuse #1 (_:) in LazyLayoutViewCache.reusedItem(data:anyTransition:)partial apply, v148);
              v23 = v264;
              goto LABEL_114;
            }

            v286 = 0u;
            v285 = 0u;
            outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
            static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
          }

          else if (static EnableLazyLayoutReuseLoggingAlways.cachedValue)
          {
            goto LABEL_105;
          }

LABEL_108:
          v149 = v271;
          v150 = *(v271 + 144);
          v151 = *(v271 + 148);
          v152 = *(v271 + 152);
          v153 = *(v152 + 16);
          swift_bridgeObjectRetain_n();

          if (v153)
          {
            v153 = *(v152 + 32);
            v154 = *(v152 + 52);

            swift_bridgeObjectRelease_n();
            if (v154)
            {
              v151 = 0xFFFFFFFFLL;
            }

            else
            {
              v151 = v151;
            }
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          v155 = *(v149 + 160);

          LOBYTE(v279) = 0;
          v156 = v247 & 1 | 0x40;
          v285 = v282;
          v286 = v283;
          *v287 = v284[0];
          *&v287[9] = *(v284 + 9);
          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
          *&v282 = v150 | (v151 << 32);
          *(&v282 + 1) = v153;
          *&v283 = v155;
          BYTE8(v283) = 0;
          HIBYTE(v283) = 0;
          *(&v283 + 13) = 0;
          *(&v283 + 9) = 0;
          v247 = v156;
          BYTE8(v284[1]) = v156;
          v110 = v271;
          v23 = v264;
          v19 = &type metadata instantiation cache for Gradient.WatchDefinition;
LABEL_114:
          if (!v19[303])
          {
            goto LABEL_101;
          }

          v157 = *(v110 + 136);
          *&v285 = v277;
          *(&v285 + 1) = v157;
          AGGraphAddTraceEvent();
          v82 = v19[303];
          if (!v82)
          {
            goto LABEL_101;
          }

          goto LABEL_99;
        }

        if (one-time initialization token for lazyLayoutReuse != -1)
        {
          swift_once();
        }

        v69 = __swift_project_value_buffer(v270, static Log.lazyLayoutReuse);
        v70 = MEMORY[0x1E69E9420];
        v71 = MEMORY[0x1E69E6720];
        v72 = v259;
        _s2os6LoggerVSgWOcTm_1(v69, v259, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
        v73 = type metadata accessor for Logger();
        v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
        _s2os6LoggerVSgWOhTm_1(v72, &lazy cache variable for type metadata for Logger?, 255, v70, v71);
        if (v74 == 1)
        {
          v31 = &property descriptor for SizingPreferences.size2D;
          v75 = v19[303];
          if (!v75)
          {
            goto LABEL_101;
          }

          goto LABEL_90;
        }

        v84 = swift_beginAccess();
        v31 = &property descriptor for SizingPreferences.size2D;
        if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
        {
          v85 = objc_opt_self();
          v86 = [v85 standardUserDefaults];
          v87 = v258;
          v88 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v258 | 0x8000000000000000);
          v89 = [v86 objectForKey_];

          if (!v89)
          {
            v286 = 0u;
            v285 = 0u;
            outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
            static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
            goto LABEL_84;
          }

          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
          v90 = [v85 standardUserDefaults];
          v91 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v87 | 0x8000000000000000);
          v92 = [v90 BOOLForKey_];

          static EnableLazyLayoutReuseLoggingAlways.cachedValue = v92;
          if ((v92 & 1) == 0)
          {
LABEL_84:
            v128 = v271;
            v129 = *(v271 + 144);
            v130 = *(v271 + 148);
            v131 = *(v271 + 152);
            v132 = *(v131 + 16);
            swift_bridgeObjectRetain_n();

            if (v132)
            {
              v132 = *(v131 + 32);
              v133 = *(v131 + 52);

              swift_bridgeObjectRelease_n();
              if (v133)
              {
                v130 = 0xFFFFFFFFLL;
              }

              else
              {
                v130 = v130;
              }
            }

            else
            {
              swift_bridgeObjectRelease_n();
            }

            v134 = *(v128 + 160);

            LOBYTE(v279) = 0;
            v135 = v255 & 1 | 0x30;
            v285 = v282;
            v286 = v283;
            *v287 = v284[0];
            *&v287[9] = *(v284 + 9);
            outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
            *&v282 = v129 | (v130 << 32);
            *(&v282 + 1) = v132;
            *&v283 = v134;
            BYTE8(v283) = 0;
            HIBYTE(v283) = 0;
            *(&v283 + 13) = 0;
            *(&v283 + 9) = 0;
            v255 = v135;
            BYTE8(v284[1]) = v135;
            v23 = v264;
            v19 = &type metadata instantiation cache for Gradient.WatchDefinition;
            v75 = static ReuseTrace.recorder;
            if (!static ReuseTrace.recorder)
            {
              goto LABEL_101;
            }

LABEL_90:
            v136 = v75[2];
            *&v285 = *(v271 + 24);
            v137 = v285;

            v138 = v136;
LABEL_100:
            AGGraphAddTraceEvent();

LABEL_101:

LABEL_102:
            v32 = v267;
LABEL_103:
            v35 = v266;
            goto LABEL_14;
          }
        }

        else if ((static EnableLazyLayoutReuseLoggingAlways.cachedValue & 1) == 0)
        {
          goto LABEL_84;
        }

        v102 = MEMORY[0x1EEE9AC00](v84);
        v103 = v271;
        *(&v240 - 2) = partial apply for implicit closure #3 in LazyLayoutViewCache.reusedItem(data:anyTransition:);
        *(&v240 - 1) = v103;
        (*(*v265 + 432))(implicit closure #1 in noteFailedReuse #1 (_:) in LazyLayoutViewCache.reusedItem(data:anyTransition:)partial apply, v102);
        v23 = v264;
        v75 = v19[303];
        if (!v75)
        {
          goto LABEL_101;
        }

        goto LABEL_90;
      }

      if (one-time initialization token for lazyLayoutReuse != -1)
      {
        swift_once();
      }

      v76 = __swift_project_value_buffer(v270, static Log.lazyLayoutReuse);
      v77 = MEMORY[0x1E69E9420];
      v78 = MEMORY[0x1E69E6720];
      v79 = v257;
      _s2os6LoggerVSgWOcTm_1(v76, v257, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
      v80 = type metadata accessor for Logger();
      v81 = (*(*(v80 - 8) + 48))(v79, 1, v80);
      _s2os6LoggerVSgWOhTm_1(v79, &lazy cache variable for type metadata for Logger?, 255, v77, v78);
      if (v81 == 1)
      {
        v31 = &property descriptor for SizingPreferences.size2D;
        v82 = v19[303];
        if (!v82)
        {
          goto LABEL_101;
        }

        goto LABEL_98;
      }

      v93 = swift_beginAccess();
      v31 = &property descriptor for SizingPreferences.size2D;
      if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
      {
        v94 = objc_opt_self();
        v95 = [v94 standardUserDefaults];
        v96 = v258;
        v97 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v258 | 0x8000000000000000);
        v98 = [v95 objectForKey_];

        if (!v98)
        {
          v286 = 0u;
          v285 = 0u;
          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
          static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
          goto LABEL_92;
        }

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
        v99 = [v94 standardUserDefaults];
        v100 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v96 | 0x8000000000000000);
        v101 = [v99 BOOLForKey_];

        static EnableLazyLayoutReuseLoggingAlways.cachedValue = v101;
        if ((v101 & 1) == 0)
        {
LABEL_92:
          v139 = v271;
          v140 = *(v271 + 144);
          v141 = *(v271 + 148);
          v142 = *(v271 + 152);
          v143 = *(v142 + 16);
          swift_bridgeObjectRetain_n();

          if (v143)
          {
            v143 = *(v142 + 32);
            v144 = *(v142 + 52);

            swift_bridgeObjectRelease_n();
            if (v144)
            {
              v141 = 0xFFFFFFFFLL;
            }

            else
            {
              v141 = v141;
            }
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          v145 = *(v139 + 160);

          LOBYTE(v279) = 0;
          v146 = v252 & 1 | 0x20;
          v285 = v282;
          v286 = v283;
          *v287 = v284[0];
          *&v287[9] = *(v284 + 9);
          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
          *&v282 = v140 | (v141 << 32);
          *(&v282 + 1) = v143;
          *&v283 = v145;
          BYTE8(v283) = 0;
          HIBYTE(v283) = 0;
          *(&v283 + 13) = 0;
          *(&v283 + 9) = 0;
          v252 = v146;
          BYTE8(v284[1]) = v146;
          v23 = v264;
          v19 = &type metadata instantiation cache for Gradient.WatchDefinition;
          v82 = static ReuseTrace.recorder;
          if (!static ReuseTrace.recorder)
          {
            goto LABEL_101;
          }

LABEL_98:
          v110 = v271;
LABEL_99:
          v147 = v82[2];
          *&v285 = *(v110 + 24);
          v137 = v285;

          v138 = v147;
          goto LABEL_100;
        }
      }

      else if ((static EnableLazyLayoutReuseLoggingAlways.cachedValue & 1) == 0)
      {
        goto LABEL_92;
      }

      v117 = MEMORY[0x1EEE9AC00](v93);
      v118 = v271;
      *(&v240 - 2) = partial apply for implicit closure #2 in LazyLayoutViewCache.reusedItem(data:anyTransition:);
      *(&v240 - 1) = v118;
      (*(*v265 + 432))(implicit closure #1 in noteFailedReuse #1 (_:) in LazyLayoutViewCache.reusedItem(data:anyTransition:)partial apply, v117);
      v23 = v264;
      v82 = v19[303];
      if (!v82)
      {
        goto LABEL_101;
      }

      goto LABEL_98;
    }

    MEMORY[0x1EEE9AC00](v33);
    *(&v240 - 2) = v23;
    if (one-time initialization token for lazyLayoutReuse != -1)
    {
      swift_once();
    }

    v52 = __swift_project_value_buffer(v270, static Log.lazyLayoutReuse);
    v53 = MEMORY[0x1E69E9420];
    v54 = MEMORY[0x1E69E6720];
    v55 = v263;
    _s2os6LoggerVSgWOcTm_1(v52, v263, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    v56 = type metadata accessor for Logger();
    v57 = (*(*(v56 - 8) + 48))(v55, 1, v56);
    _s2os6LoggerVSgWOhTm_1(v55, &lazy cache variable for type metadata for Logger?, 255, v53, v54);
    if (v57 != 1)
    {
      v59 = swift_beginAccess();
      v31 = &property descriptor for SizingPreferences.size2D;
      if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
      {
        v60 = objc_opt_self();
        v61 = [v60 standardUserDefaults];
        v62 = v258;
        v63 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v258 | 0x8000000000000000);
        v64 = [v61 objectForKey_];

        if (v64)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
          v65 = [v60 standardUserDefaults];
          v66 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v62 | 0x8000000000000000);
          v67 = [v65 BOOLForKey_];

          static EnableLazyLayoutReuseLoggingAlways.cachedValue = v67;
          v31 = &property descriptor for SizingPreferences.size2D;
          if ((v67 & 1) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_55;
        }

        v286 = 0u;
        v285 = 0u;
        outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
        static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
        v31 = &property descriptor for SizingPreferences.size2D;
        if (v256)
        {
LABEL_72:
          v68 = __CocoaSet.count.getter();
          goto LABEL_73;
        }
      }

      else
      {
        if (static EnableLazyLayoutReuseLoggingAlways.cachedValue)
        {
LABEL_55:
          v83 = MEMORY[0x1EEE9AC00](v59);
          *(&v240 - 2) = partial apply for implicit closure #1 in LazyLayoutViewCache.reusedItem(data:anyTransition:);
          *(&v240 - 1) = (&v240 - 4);
          (*(*v265 + 432))(partial apply for implicit closure #1 in noteFailedReuse #1 (_:) in LazyLayoutViewCache.reusedItem(data:anyTransition:), v83);
          v23 = v264;
          v58 = v271;
          goto LABEL_74;
        }

LABEL_42:
        if (v256)
        {
          goto LABEL_72;
        }
      }

      v68 = *(v262 + 16);
LABEL_73:
      v23 = v264;
      v58 = v271;
      v111 = v261 & 1;
      v112 = v260 & 1 | 0x10;
      v285 = v282;
      v286 = v283;
      *v287 = v284[0];
      *&v287[9] = *(v284 + 9);
      outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v285, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
      *&v282 = v68;
      v261 = v111;
      *(&v283 + 1) = v111;
      v260 = v112;
      BYTE8(v284[1]) = v112;
      goto LABEL_74;
    }

    v23 = v264;
    v31 = &property descriptor for SizingPreferences.size2D;
    v58 = v271;
LABEL_74:
    v19 = &type metadata instantiation cache for Gradient.WatchDefinition;
    if (static ReuseTrace.recorder)
    {
      v113 = *(v58 + 24);
      v114 = *(static ReuseTrace.recorder + 2);
      *&v285 = *(v58 + 160);
      *(&v285 + 1) = v113;
      v115 = v113;

      v116 = v114;
      AGGraphAddTraceEvent();
    }

    v32 = v267;
LABEL_14:
    ++v3;
  }

  while (v35 != v32);

  v215 = _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA34EnableLazyLayoutReuseLoggingAlwaysV_Ttg5();
  v3 = v265;
  if (v215)
  {
    goto LABEL_173;
  }

LABEL_166:
  v216 = swift_beginAccess();
  *(v281 + 9) = *(v284 + 9);
  v279 = v282;
  v280 = v283;
  v281[0] = v284[0];
  if (*(&v283 + 1) >> 1 != 0xFFFFFFFFLL || BYTE8(v281[1]) >= 2u)
  {
    v285 = v282;
    v286 = v283;
    *v287 = v284[0];
    *&v287[9] = *(v284 + 9);
    MEMORY[0x1EEE9AC00](v216);
    *(&v240 - 2) = &v285;
    v217 = *(*v3 + 432);
    v272[0] = v279;
    v272[1] = v280;
    v273[0] = v281[0];
    *(v273 + 9) = *(v281 + 9);
    outlined init with copy of ReuseMessage(v272, &v274);
    v217(partial apply for implicit closure #1 in closure #1 in LazyLayoutViewCache.reusedItem(data:anyTransition:), &v240 - 4);
    outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v279, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
    v274 = v282;
    v275 = v283;
    v276[0] = v284[0];
    *(v276 + 9) = *(v284 + 9);
    v218 = &v274;
    goto LABEL_174;
  }

LABEL_173:
  v285 = v282;
  v286 = v283;
  *v287 = v284[0];
  *&v287[9] = *(v284 + 9);
  v218 = &v285;
LABEL_174:
  outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(v218, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
}

uint64_t sub_18D1E1688()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t specialized LazyLayoutViewCache.LeastRecentlyUsedItems.updatedItems<A>(_:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    ++*v1;

    sub_18D1E1774(v3);

    v6 = sub_18D1E1774(v4);
    specialized MutableCollection<>.sort(by:)(&v6);

    v2 = v6;
    *(v1 + 32) = v6;
  }

  return v2;
}

unint64_t sub_18D1E1774(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v5 = v3;
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v3, 0, v4);
  specialized Array._copyContents(initializing:)(v6 + 32, v5, a1);
  v8 = v7;

  result = v6;
  if (v8 != v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

Swift::Int _ViewList_ID.reuseIdentifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  Hasher.init()();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      v5 += 3;
      MEMORY[0x193AC11A0](v6);
      --v4;
    }

    while (v4);
  }

  return Hasher.finalize()();
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 10) = BYTE2(a3);
  *(v5 + 8) = a3;
  *(v5 + 11) = BYTE3(a3);
  *(v5 + 12) = BYTE4(a3);
  *(v5 + 13) = BYTE5(a3) & 1;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(v5 + 12) = HIDWORD(a3);
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *closure #1 in LazyLayoutViewCache.makeSubviewOutputs(inputs:indirectMap:data:anyTransition:)@<X0>(__int128 *a1@<X0>, void (*a2)(uint64_t *__return_ptr, _BYTE *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v108 = *MEMORY[0x1E69E9840];
  v13 = a1[3];
  v103 = a1[2];
  v104 = v13;
  v105 = a1[4];
  v106 = *(a1 + 20);
  v14 = a1[1];
  v101 = *a1;
  v102 = v14;
  *v64 = 0;
  *&v64[4] = 0;
  v64[6] = 1;
  v15 = Attribute.init<A>(body:value:flags:update:)();
  v16 = *(a6 + 18);
  v17 = *(a5 + 140);
  *v64 = *(a5 + 148);
  *&v64[4] = v16;
  *&v64[8] = v105;
  *&v64[12] = v17;
  *&v64[16] = a5;
  *&v64[24] = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type LazyViewGeometry and conformance LazyViewGeometry();

  v18 = Attribute.init<A>(body:value:flags:update:)();

  v19 = a6[1];
  v92 = *a6;
  v93 = v19;
  v94 = a6[2];
  v20 = DWORD2(v19);
  *&v54 = __PAIR64__(DWORD2(v19), DWORD2(v102));
  v46 = v15;
  DWORD2(v54) = v15;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _GraphInputs(&v92, v64);
  lazy protocol witness table accessor for type LazyViewPhase and conformance LazyViewPhase();
  v21 = Attribute.init<A>(body:value:flags:update:)();
  *v64 = 0;
  *&v64[8] = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type LazyDisplayListWrapper and conformance LazyDisplayListWrapper();
  v47 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v22 = v102;
  v88 = v103;
  v89 = v104;
  v90 = v105;
  v91 = v106;
  v86 = v101;
  v87 = v102;
  swift_beginAccess();
  v23 = v22[3];
  v107[1] = v22[2];
  v107[2] = v23;
  v24 = v22[5];
  v107[3] = v22[4];
  v107[4] = v24;
  v107[0] = v22[1];
  type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v25 = swift_allocObject();
  memmove((v25 + 16), v22 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(&v101, v64);
  outlined init with copy of CachedEnvironment(v107, v64);

  *&v87 = v25;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  LODWORD(v22) = v88;
  v27 = *(a6 + 15);
  LODWORD(v90) = OffsetAttribute2;
  HIDWORD(v89) = v27;
  DWORD2(v90) = AGGraphCreateOffsetAttribute2();
  LODWORD(v88) = v22 | 0x1C;
  *v64 = v92;
  *&v64[16] = v93;
  *&v64[32] = v94;
  _GraphInputs.merge(_:ignoringPhase:)(v64, 1);
  v85[0] = *v64;
  v85[1] = *&v64[16];
  v85[2] = *&v64[32];
  outlined destroy of _GraphInputs(v85);
  DWORD2(v87) = v21;
  if ((v88 & 0x40) == 0)
  {
    LODWORD(v88) = v88 | 0x40;
  }

  specialized Set._Variant.insert(_:)(v64, v20);
  v28 = HIDWORD(v102);
  *v64 = HIDWORD(v102);
  *&v64[4] = v46;
  *&v64[8] = 0;
  v64[16] = 3;
  *&v64[20] = 0;
  v64[24] = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type LazyTransaction and conformance LazyTransaction();
  v29 = Attribute.init<A>(body:value:flags:update:)();
  HIDWORD(v87) = v29;
  specialized Set._Variant.insert(_:)(v64, v28);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24LazyLayoutReuseIdleInputV_Tt2g5(&v86, 0, 1);

  outlined init with copy of LazyLayoutCacheParent(a7, v53);
  outlined init with copy of LazyLayoutCacheParent(v53, v52);
  outlined init with copy of LazyLayoutCacheParent(v52, v51);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021LazyLayoutCacheParentF033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt2g5(&v86, v51);
  outlined destroy of weak AnyGestureResponder?(v52);
  outlined destroy of weak AnyGestureResponder?(v53);

  outlined destroy of weak AnyGestureResponder?(v51);
  AGGraphSetFlags();
  swift_beginAccess();
  *(a4 + 16) = v46;
  *(a4 + 20) = 0;
  *(a4 + 24) = v18;
  *(a4 + 28) = 0;
  *(a4 + 32) = v21;
  *(a4 + 36) = 0;
  *(a4 + 40) = v47;
  *(a4 + 44) = 0;
  *(a4 + 48) = v29;
  *(a4 + 52) = 0;
  v81 = v88;
  v82 = v89;
  v83 = v90;
  v84 = v91;
  v79 = v86;
  v80 = v87;
  outlined init with copy of _LazyLayout_Subview.Data(a10, v77);
  outlined init with copy of _LazyLayout_Subview.Data(v77, v75);
  v30 = swift_allocObject();
  *(v30 + 16) = a8;
  *(v30 + 24) = v46;
  v31 = v77[3];
  *(v30 + 64) = v77[2];
  *(v30 + 80) = v31;
  *(v30 + 96) = *v78;
  *(v30 + 111) = *&v78[15];
  v32 = v77[1];
  *(v30 + 32) = v77[0];
  *(v30 + 48) = v32;
  *(v30 + 120) = a2;
  *(v30 + 128) = a3;
  *(v30 + 136) = a4;
  ShouldRecordTree = AGSubgraphShouldRecordTree();

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v71 = v81;
  v72 = v82;
  v73 = v83;
  v69 = v79;
  v70 = v80;
  v42 = v81;
  v74 = v84;
  LODWORD(v71) = 0;
  v100 = v84;
  v98 = v82;
  v99 = v83;
  v95 = v79;
  v96 = v80;
  v97 = v71;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v82))
  {
    outlined init with copy of _ViewInputs(&v79, v64);
    outlined init with copy of _ViewInputs(&v95, v64);
    specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:)(v47, &v95, partial apply for makeBody #1 (_:_:) in closure #1 in LazyLayoutViewCache.makeSubviewOutputs(inputs:indirectMap:data:anyTransition:), &v49);
  }

  else
  {
    if (a8)
    {
      *&v64[40] = v97;
      *&v64[56] = v98;
      *&v64[72] = v99;
      *&v64[8] = v95;
      *v64 = v46;
      *&v64[88] = v100;
      *&v64[24] = v96;
      v65 = v76;
      *&v66 = a2;
      v67 = 0uLL;
      *(&v66 + 1) = a3;
      LODWORD(v68) = 0;
      BYTE4(v68) = 1;
      *(&v68 + 1) = 0;
      v34 = *(*a8 + 80);
      outlined init with copy of _ViewInputs(&v95, &v54);

      outlined init with copy of _ViewInputs(&v79, &v54);
      outlined init with copy of _ViewInputs(&v95, &v54);

      v34(v64, &unk_1F00A2038, &protocol witness table for MakeSubviewTransition);
      v35 = v68;
      LOBYTE(v34) = BYTE4(v68);
      swift_beginAccess();
      *(a4 + 56) = v35;
      *(a4 + 60) = v34;
      v36 = v67;
      *(a4 + 64) = *(&v68 + 1);
      if (v36)
      {
        v37 = HIDWORD(v67);
        v38 = DWORD2(v67);

        outlined destroy of _ViewInputs(&v95);
        v61 = v66;
        v62 = v67;
        v63 = v68;
        v57 = *&v64[48];
        v58 = *&v64[64];
        v59 = *&v64[80];
        v60 = v65;
        v54 = *v64;
        v55 = *&v64[16];
        v56 = *&v64[32];
        outlined destroy of MakeSubviewTransition(&v54);
      }

      else
      {
        v37 = *MEMORY[0x1E698D3F8];

        outlined destroy of _ViewInputs(&v95);
        v61 = v66;
        v62 = v67;
        v63 = v68;
        v57 = *&v64[48];
        v58 = *&v64[64];
        v59 = *&v64[80];
        v60 = v65;
        v54 = *v64;
        v55 = *&v64[16];
        v56 = *&v64[32];
        outlined destroy of MakeSubviewTransition(&v54);
        v38 = 0;
        v36 = MEMORY[0x1E69E7CC0];
      }

      v49 = v36;
      v50 = __PAIR64__(v37, v38);
      goto LABEL_14;
    }

    *&v64[32] = v97;
    *&v64[48] = v98;
    *&v64[64] = v99;
    *&v64[80] = v100;
    *v64 = v95;
    *&v64[16] = v96;
    outlined init with copy of _ViewInputs(&v79, &v54);
    outlined init with copy of _ViewInputs(&v95, &v54);
    a2(&v49, v64);
  }

  outlined destroy of _ViewInputs(&v95);
LABEL_14:
  LODWORD(v71) = v42;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(&v49, &v69);
    AGSubgraphEndTreeElement();
  }

  outlined destroy of _LazyLayout_Subview.Data(v75);
  v57 = v72;
  v58 = v73;
  LODWORD(v59) = v74;
  v54 = v69;
  v55 = v70;
  v56 = v71;
  outlined destroy of _ViewInputs(&v54);
  *&v64[32] = v88;
  *&v64[48] = v89;
  *&v64[64] = v90;
  *&v64[80] = v91;
  *v64 = v86;
  *&v64[16] = v87;
  result = outlined destroy of _ViewInputs(v64);
  v40 = v50;
  *a9 = v49;
  a9[1] = v40;
  return result;
}

uint64_t sub_18D1E262C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

void lazy protocol witness table accessor for type LazyViewGeometry and conformance LazyViewGeometry()
{
  if (!lazy protocol witness table cache variable for type LazyViewGeometry and conformance LazyViewGeometry)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyViewGeometry, &unk_1F00A21D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyViewGeometry and conformance LazyViewGeometry);
  }
}

uint64_t initializeWithCopy for LazyViewGeometry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

void lazy protocol witness table accessor for type LazyViewPhase and conformance LazyViewPhase()
{
  if (!lazy protocol witness table cache variable for type LazyViewPhase and conformance LazyViewPhase)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyViewPhase, &unk_1F00A2150, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyViewPhase and conformance LazyViewPhase);
  }
}

void lazy protocol witness table accessor for type LazyDisplayListWrapper and conformance LazyDisplayListWrapper()
{
  if (!lazy protocol witness table cache variable for type LazyDisplayListWrapper and conformance LazyDisplayListWrapper)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyDisplayListWrapper, &unk_1F00A2268, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyDisplayListWrapper and conformance LazyDisplayListWrapper);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ScrollTargetConfiguration(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 4);

  return a1;
}

void lazy protocol witness table accessor for type LazyTransaction and conformance LazyTransaction()
{
  if (!lazy protocol witness table cache variable for type LazyTransaction and conformance LazyTransaction)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyTransaction, &unk_1F00A22F0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyTransaction and conformance LazyTransaction);
  }
}

uint64_t initializeWithCopy for LazyTransaction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24LazyLayoutReuseIdleInputV_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for LazyLayoutReuseIdleInput);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24LazyLayoutReuseIdleInputV_Tt0B5(v6, v11);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = *(v7 + 80);
  if (a3)
  {
    if (*(v7 + 80))
    {
      return;
    }

LABEL_8:
    v9 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<LazyLayoutReuseIdleInput>, &type metadata for LazyLayoutReuseIdleInput, &protocol witness table for LazyLayoutReuseIdleInput, type metadata accessor for TypedElement);
    v10 = swift_allocObject();
    *(v10 + 72) = a2;
    *(v10 + 80) = a3 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for LazyLayoutReuseIdleInput, 0, v9);

    return;
  }

  if (*(v7 + 72) != a2)
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_8;
  }
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021LazyLayoutCacheParentF033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.LazyLayoutCacheParentKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021LazyLayoutCacheParentV033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt0B5(v4, v11[0]);
  if (!v5 || (outlined init with copy of LazyLayoutCacheParent(v5 + 72, v11), v6 = AGCompareValues(), outlined destroy of LazyLayoutCacheParent(v11), !v6))
  {
    outlined init with copy of LazyLayoutCacheParent(a2, v11);
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.LazyLayoutCacheParentKey>, &type metadata for _GraphInputs.LazyLayoutCacheParentKey, &protocol witness table for _GraphInputs.LazyLayoutCacheParentKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    outlined init with copy of LazyLayoutCacheParent(v11, v9 + 72);

    value = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.LazyLayoutCacheParentKey, 0, v8).value;
    outlined destroy of LazyLayoutCacheParent(v11);
    *a1 = value;
  }

  return result;
}

void *makeBody #1 (_:_:) in closure #1 in LazyLayoutViewCache.makeSubviewOutputs(inputs:indirectMap:data:anyTransition:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, void *(*a5)(void *__return_ptr, _BYTE *)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v9 = *(a1 + 48);
  v38[2] = *(a1 + 32);
  v38[3] = v9;
  v38[4] = *(a1 + 64);
  v39 = *(a1 + 80);
  v10 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v10;
  if (a2)
  {
    v12 = *(a1 + 48);
    *&v33[40] = *(a1 + 32);
    *&v33[56] = v12;
    *&v33[72] = *(a1 + 64);
    v13 = *(a1 + 16);
    *&v33[8] = *a1;
    v14 = *(a4 + 56);
    v15 = *(a1 + 80);
    *v33 = a3;
    *&v33[88] = v15;
    *&v33[24] = v13;
    *&v34 = *(a4 + 48);
    *(&v34 + 1) = v14;
    *&v35 = a5;
    v36 = 0uLL;
    *(&v35 + 1) = a6;
    LODWORD(v37) = 0;
    BYTE4(v37) = 1;
    *(&v37 + 1) = 0;
    v16 = *(*a2 + 80);

    outlined init with copy of _ViewInputs(v38, &v23);

    v16(v33, &unk_1F00A2038, &protocol witness table for MakeSubviewTransition);
    LODWORD(v14) = v37;
    LOBYTE(v16) = BYTE4(v37);
    swift_beginAccess();
    *(a7 + 56) = v14;
    *(a7 + 60) = v16;
    v17 = v36;
    *(a7 + 64) = *(&v37 + 1);
    if (v17)
    {
      v18 = HIDWORD(v36);
      v19 = DWORD2(v36);

      v29 = v34;
      v30 = v35;
      v31 = v36;
      v32 = v37;
      v25 = *&v33[32];
      v26 = *&v33[48];
      v27 = *&v33[64];
      v28 = *&v33[80];
      v23 = *v33;
      v24 = *&v33[16];
      result = outlined destroy of MakeSubviewTransition(&v23);
    }

    else
    {
      v18 = *MEMORY[0x1E698D3F8];

      v29 = v34;
      v30 = v35;
      v31 = v36;
      v32 = v37;
      v25 = *&v33[32];
      v26 = *&v33[48];
      v27 = *&v33[64];
      v28 = *&v33[80];
      v23 = *v33;
      v24 = *&v33[16];
      result = outlined destroy of MakeSubviewTransition(&v23);
      v19 = 0;
      v17 = MEMORY[0x1E69E7CC0];
    }

    *a8 = v17;
    *(a8 + 8) = v19;
    *(a8 + 12) = v18;
  }

  else
  {
    v21 = *(a1 + 48);
    *&v33[32] = *(a1 + 32);
    *&v33[48] = v21;
    *&v33[64] = *(a1 + 64);
    *&v33[80] = *(a1 + 80);
    v22 = *(a1 + 16);
    *v33 = *a1;
    *&v33[16] = v22;
    return a5(a8, v33);
  }

  return result;
}

uint64_t MakeSubviewTransition.visit<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LazyTransition(0, v8, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = *v3;
  (*(v5 + 16))(v7, v32, a2, v13);
  *v15 = v16;
  *(v15 + 1) = 0;
  (*(v5 + 32))(&v15[*(v11 + 40)], v7, a2);
  v35[2] = swift_getAssociatedTypeWitness();
  v35[3] = v11;
  swift_getWitnessTable(protocol conformance descriptor for LazyTransition<A>, v11);
  v35[4] = v17;
  v18 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v35, v11, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  (*(v12 + 8))(v15, v11);
  v20 = v44[0];
  _GraphValue.init(_:)(LODWORD(v44[0]), &v33);
  v21 = *(v3 + 14);
  v42[2] = *(v3 + 10);
  v42[3] = v21;
  v42[4] = *(v3 + 18);
  v43 = v3[22];
  v22 = *(v3 + 6);
  v42[0] = *(v3 + 2);
  v42[1] = v22;
  v23 = *(v3 + 14);
  v38 = *(v3 + 10);
  v39 = v23;
  v40 = *(v3 + 18);
  v41 = v3[22];
  v24 = *(v3 + 6);
  v36 = *(v3 + 2);
  v37 = v24;
  v25 = *(v3 + 14);
  v26 = *(v3 + 15);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  outlined init with copy of _ViewInputs(v42, v44);

  static Transition.makeView(view:inputs:body:)(&v33, &v36, partial apply for closure #1 in DynamicLayoutViewAdaptor.MakeTransition.visit<A>(_:), v27, a2, v34);

  v44[2] = v38;
  v44[3] = v39;
  v44[4] = v40;
  v45 = v41;
  v44[0] = v36;
  v44[1] = v37;
  outlined destroy of _ViewInputs(v44);
  v28 = v34[0];
  v29 = v34[1];

  *(v3 + 16) = v28;
  *(v3 + 17) = v29;
  v3[36] = v20;
  *(v3 + 148) = 0;
  *(v3 + 19) = a2;
  return result;
}

uint64_t sub_18D1E35E8()
{

  return swift_deallocObject();
}

uint64_t destroy for LazyTransition(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

_DWORD *initializeWithCopy for LazyTransition(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(*(v7 - 8) + 80);
  v10 = v6 + v9 + 8;
  v11 = v9 + 8 + (v4 & 0xFFFFFFFFFFFFFFF8);

  v8(v10 & ~v9, v11 & ~v9, v7);
  return a1;
}

uint64_t destroy for MakeSubviewTransition(void *a1)
{
}

void lazy protocol witness table accessor for type RendererEffectDisplayList<HiddenForReuseEffect> and conformance RendererEffectDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<HiddenForReuseEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<HiddenForReuseEffect>, &type metadata for HiddenForReuseEffect, &protocol witness table for HiddenForReuseEffect, type metadata accessor for RendererEffectDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for RendererEffectDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RendererEffectDisplayList<HiddenForReuseEffect> and conformance RendererEffectDisplayList<A>);
  }
}

uint64_t outlined init with copy of LazyLayoutViewCache.SubviewOutputs(int *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *a2 = v3;
  v4 = a1[2];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 8) = v4;
  v5 = a1[4];
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 16) = v5;
  v6 = a1[6];
  *(a2 + 28) = *(a1 + 28);
  *(a2 + 24) = v6;
  v7 = a1[8];
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 32) = v7;
  v8 = a1[10];
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 40) = v8;
  v9 = *(a1 + 7);
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 56) = v9;
  *(a2 + 64) = *(a1 + 8);

  return a2;
}

void partial apply for closure #3 in LazyLayoutViewCache.makeNewItem(data:anyTransition:)(uint64_t a1)
{

  *(a1 + 24) = v1;
}

void partial apply for closure #4 in LazyLayoutViewCache.makeNewItem(data:anyTransition:)(uint64_t *a1)
{

  *a1 = v1;
}

void partial apply for closure #1 in UpdateSubviewTransition.visit<A>(_:)(uint64_t a1)
{
  v3 = *(*(v1 + 32) + 8);

  *(a1 + 8) = v3;
}

uint64_t DynamicViewList.WrappedList.edit(forID:since:)@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = *(a3 + 24);
  v69 = *(a3 + 16);
  AssociatedConformanceWitness = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = &v52 - v17;
  v26 = MEMORY[0x1EEE9AC00](v19);
  v27 = *a1;
  v28 = a1[1];
  v29 = *(a1 + 1);
  v30 = *a2;
  if (v30 < *(v4 + *(a3 + 44)))
  {
    goto LABEL_10;
  }

  v62 = v20;
  v63 = v21;
  v64 = &v52 - v22;
  v65 = a4;
  v66 = v29;
  v67 = v28;
  v68 = v27;
  v31 = v4 + *(a3 + 40);
  v32 = v23;
  v33 = v24;
  v34 = v25;
  (*(v25 + 16))(v14, v31, v24, v26);
  v35 = v32[6];
  if (v35(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v34 + 8))(v14, v33);
LABEL_9:
    v29 = v66;
    v28 = v67;
    v27 = v68;
    goto LABEL_10;
  }

  v59 = v34;
  v60 = v33;
  v36 = v64;
  v57 = v32[4];
  v58 = v32 + 4;
  v57(v64, v14, AssociatedTypeWitness);
  v61 = v4;
  v37 = v4[5];
  v38 = v32[2];
  v54 = *(*v37 + 136);
  v55 = v38;
  v56 = v32 + 2;
  v38(v18, v37 + v54, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = *(AssociatedConformanceWitness + 8);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = v32[1];
  v40(v18, AssociatedTypeWitness);
  if (v39)
  {
    v40(v36, AssociatedTypeWitness);
LABEL_8:
    v4 = v61;
    goto LABEL_9;
  }

  v53 = v40;
  v72 = v68;
  v73 = v67;
  v74 = v66;
  v41 = v63;
  _ViewList_ID.explicitID<A>(owner:)(*(v37 + *(*v37 + 144)), AssociatedTypeWitness, AssociatedConformanceWitness, v63);
  if (v35(v41, 1, AssociatedTypeWitness) == 1)
  {
    v53(v64, AssociatedTypeWitness);
    (*(v59 + 8))(v41, v60);
    goto LABEL_8;
  }

  v45 = v62;
  v57(v62, v41, AssociatedTypeWitness);
  v46 = v64;
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = v65;
  if (v47)
  {
    v49 = v53;
    v53(v45, AssociatedTypeWitness);
    result = v49(v46, AssociatedTypeWitness);
    *v48 = 1;
    return result;
  }

  v55(v18, v37 + v54, AssociatedTypeWitness);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = v53;
  v53(v18, AssociatedTypeWitness);
  v51(v45, AssociatedTypeWitness);
  result = (v51)(v46, AssociatedTypeWitness);
  v4 = v61;
  v28 = v67;
  v27 = v68;
  v29 = v66;
  if (v50)
  {
    *v48 = 0;
    return result;
  }

LABEL_10:
  v42 = v4[3];
  v43 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v42);
  v72 = v27;
  v73 = v28;
  v74 = v29;
  v71 = v30;
  return (*(v43 + 72))(&v72, &v71, v42, v43);
}

uint64_t View.overlay<A>(_:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[2] = a6;
  v23[1] = a4;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _OverlayModifier(0, v14, v15, v13);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v23 - v19;
  (*(v10 + 16))(v12, a1, a5, v18);
  (*(v10 + 32))(v20, v12, a5);
  v21 = &v20[*(v16 + 36)];
  *v21 = a2;
  *(v21 + 1) = a3;
  View.modifier<A>(_:)();
  return (*(v17 + 8))(v20, v16);
}

uint64_t Image._prefetch(in:)(uint64_t *a1, uint64_t a2)
{
  v19 = a2;
  _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20[-1] - v4;
  v6 = type metadata accessor for ImageResolutionContext(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = type metadata accessor for Text.Style(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  v14 = *MEMORY[0x1E698D3F8];
  *(v9 + 2) = 0;
  v15 = v7[8];
  v13(&v9[v15], 1, 1, v12);
  v16 = v7[9];
  v17 = &v9[v7[10]];
  *v17 = 520;
  v17[2] = 2;
  v9[v7[11]] = 3;
  v9[v7[12]] = 1;
  *v9 = v11;
  *(v9 + 1) = v10;

  outlined assign with take of Text.Style?(v5, &v9[v15]);
  *&v9[v16] = v14;
  (*(*v19 + 80))(v20, v9);
  outlined destroy of Image.Resolved(v20);
  return _s7SwiftUI22ImageResolutionContextVWOhTm_1(v9, type metadata accessor for ImageResolutionContext);
}

uint64_t _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA34EnableLazyLayoutReuseLoggingAlwaysV_Ttg5()
{
  swift_beginAccess();
  v0 = static EnableLazyLayoutReuseLoggingAlways.cachedValue;
  if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD00000000000002ELL, 0x800000018DD77040);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined destroy of Any?(v8);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD00000000000002ELL, 0x800000018DD77040);
      v0 = [v5 BOOLForKey_];

      static EnableLazyLayoutReuseLoggingAlways.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      outlined destroy of Any?(v8);
      v0 = 0;
      static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t LazyLayoutViewCache.makeNewItem(data:anyTransition:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = *MEMORY[0x1E69E9840];
  v6 = AGSubgraphGetGraph();
  if (*(a1 + 76))
  {
    v7 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v7 = *(a1 + 72);
  }

  v34 = *MEMORY[0x1E698D3F8];
  v35 = v7;
  v8 = AGSubgraphCreate2();

  v9 = &static GraphReuseOptions.overrideValue;
  swift_beginAccess();
  if (byte_1EAB273F0 == 1)
  {
    if (one-time initialization token for defaultsValue != -1)
    {
      swift_once();
    }

    v9 = &static GraphReuseOptions.defaultsValue;
  }

  if ((*v9 & 2) != 0)
  {
    type metadata accessor for IndirectAttributeMap();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E7CC8];
    *(v10 + 16) = v8;
    *(v10 + 24) = v11;
    v12 = v8;
  }

  else
  {
    v10 = 0;
  }

  AGGraphClearUpdate();
  v13 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v36 = a2;
  closure #2 in LazyLayoutViewCache.makeNewItem(data:anyTransition:)(v2, v10, a1, a2, v38);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v40 = v38[0];
  v41 = v38[1];
  v42 = v38[2];
  v43 = v38[3];
  v44 = v39;
  if (BYTE4(v38[0]))
  {
    __break(1u);
  }

  v14 = v10;
  v28 = v40;
  v27 = *(&v43 + 1);
  v15 = v44;
  outlined init with copy of _ViewList_SubgraphElements(a1, v37);
  v16 = *(a1 + 52);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v31 = *(a1 + 84);
  v32 = *(a1 + 80);
  v29 = *(a1 + 86);
  v30 = *(a1 + 85);
  v25 = BYTE12(v42);
  v26 = DWORD2(v42);
  v33 = v43;
  type metadata accessor for LazyLayoutCacheItem();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 52) = v34;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0u;
  *(v19 + 192) = 0u;
  *(v19 + 205) = 0;
  *(v19 + 224) = 1;
  *(v19 + 228) = -1;
  *(v19 + 232) = 0u;
  *(v19 + 248) = 0u;
  *(v19 + 264) = 0u;
  *(v19 + 280) = 0u;
  *(v19 + 296) = 1;
  *(v19 + 304) = 0u;
  *(v19 + 320) = 0u;
  *(v19 + 336) = 0u;
  *(v19 + 352) = 0u;
  *(v19 + 368) = 1;
  *(v19 + 376) = 0;
  *(v19 + 384) = 0x20000;
  swift_beginAccess();
  v20 = v8;
  outlined init with copy of LazyLayoutViewCache.SubviewOutputs(&v40, v38);
  *(v19 + 16) = v3;

  swift_endAccess();
  *(v19 + 24) = v20;
  *(v19 + 32) = v27;
  *(v19 + 40) = v15;
  *(v19 + 48) = v28;
  *(v19 + 52) = v35;
  outlined init with copy of _ViewList_SubgraphElements(v37, v19 + 56);
  *(v19 + 104) = v17;
  *(v19 + 144) = v17;
  *(v19 + 148) = v16;
  *(v19 + 152) = v18;
  *&v38[0] = __PAIR64__(v16, v17);
  *(&v38[0] + 1) = v18;
  *(v19 + 160) = _ViewList_ID.reuseIdentifier.getter();
  *(v19 + 168) = v32;
  *(v19 + 172) = v31;
  *(v19 + 173) = v30;
  *(v19 + 174) = v29;
  *&v38[0] = v37[5];
  swift_unownedRetain();

  v21 = _ViewList_SublistSubgraphStorage.retain()();

  result = outlined destroy of _ViewList_SubgraphElements(v37);
  *(v19 + 112) = v21;
  *(v19 + 120) = v14;
  *(v19 + 128) = v26;
  *(v19 + 132) = v25;
  *(v19 + 136) = v33;
  if ((BYTE12(v40) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](DWORD2(v40));
    result = AGGraphMutateAttribute();
  }

  if ((BYTE12(v41) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](DWORD2(v41));
    result = AGGraphMutateAttribute();
  }

  if ((BYTE4(v42) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v42);
    result = AGGraphMutateAttribute();
  }

  if (v25)
  {
    outlined destroy of LazyLayoutViewCache.SubviewOutputs(&v40);
  }

  else
  {
    LODWORD(v38[0]) = v26;
    *(&v38[0] + 1) = v19;
    if (!v36)
    {
      __break(1u);
      return result;
    }

    outlined destroy of LazyLayoutViewCache.SubviewOutputs(&v40);
    (*(*v36 + 88))(v38, &unk_1F00A2380, &protocol witness table for UpdateSubviewTransition);
  }

  (*(*v3 + 432))(partial apply for implicit closure #2 in LazyLayoutViewCache.makeNewItem(data:anyTransition:), v19);
  v23 = *(v19 + 160);
  v24 = *(v19 + 24);
  swift_beginAccess();
  if (static ReuseTrace.recorder)
  {
    v37[0] = v23;
    v37[1] = v24;
    AGGraphAddTraceEvent();
  }

  LazyLayoutViewCache.addItem(_:data:reset:)(v19, a1, 0);

  return v19;
}

uint64_t getEnumTagSinglePayload for ReuseMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double closure #2 in LazyLayoutViewCache.makeNewItem(data:anyTransition:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v10 = *(a1 + 80);
  v51 = *(a1 + 64);
  v52 = v10;
  v53 = *(a1 + 96);
  v54 = *(a1 + 112);
  v11 = *(a1 + 48);
  v49 = *(a1 + 32);
  v50 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 20) = 1;
  *(v12 + 24) = 0;
  *(v12 + 28) = 1;
  *(v12 + 32) = 0;
  *(v12 + 36) = 1;
  *(v12 + 40) = 0;
  *(v12 + 44) = 1;
  *(v12 + 48) = 0;
  *(v12 + 52) = 1;
  *(v12 + 60) = 1;
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = v13;
  LODWORD(v13) = *MEMORY[0x1E698D3F8];
  *(v12 + 80) = 0;
  *(v12 + 84) = v13;
  v14 = a3[7];
  v41[0] = a3[6];
  v28 = v41[0];
  v41[1] = v14;
  outlined init with copy of _ViewInputs(&v49, &v43);

  _ViewList_ID.Canonical.init(id:)(v41, &v43);
  *v41 = v43;
  v15 = LazyLayoutViewCache.childCacheSeed(id:)(v41);

  swift_weakInit();
  v30 = v15;
  v35 = v12;
  v36 = a1;
  v37 = &v49;
  v38 = v29;
  v39 = a4;
  v40 = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in LazyLayoutViewCache.makeSubviewOutputs(inputs:indirectMap:data:anyTransition:);
  *(v16 + 24) = &v34;
  v42[0] = v28;
  v32 = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?);
  v33 = v16;
  *&v43 = a3[5];
  v17 = 0;
  v18 = 0;
  if (_ViewList_SublistSubgraphStorage.isValid.getter())
  {
    v19 = a3[3];
    v20 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v19);
    v45 = v51;
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v43 = v49;
    v44 = v50;
    (*(v20 + 16))(v41, v42, &v43, a2, _s7SwiftUI18_ViewList_ElementsPAAE14makeOneElement2at6inputs11indirectMap4bodyAA01_C7OutputsVSgSi_AA01_C6InputsVAA017IndirectAttributeL0CSgAkM_AjMctXEtFA2kM_AjMctcXEfU_AK_SbtAM_AjMctXEfU_TA_0, v31, v19, v20);
    v17 = v41[1];
    v18 = v41[0];
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v18)
  {
    swift_beginAccess();
    *(v12 + 72) = v18;
    *(v12 + 80) = v17;
  }

  swift_beginAccess();
  if (*(v12 + 20))
  {
    LODWORD(v43) = 0;
    WORD2(v43) = 0;
    BYTE6(v43) = 1;
    v22 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of _ViewInputs(&v49);
    *(v12 + 16) = v22;
    *(v12 + 20) = 0;
  }

  else
  {
    outlined destroy of _ViewInputs(&v49);
  }

  v23 = *(v12 + 64);
  v45 = *(v12 + 48);
  v46 = v23;
  *&v47 = *(v12 + 80);
  v24 = v47;
  v25 = *(v12 + 32);
  v43 = *(v12 + 16);
  v26 = v43;
  v44 = v25;
  *(a5 + 32) = v45;
  *(a5 + 48) = v23;
  *(a5 + 64) = v24;
  *a5 = v26;
  *(a5 + 16) = v25;
  outlined init with copy of LazyLayoutViewCache.SubviewOutputs(&v43, v41);
  outlined destroy of weak AnyGestureResponder?(v29);

  return result;
}

uint64_t sub_18D1E5354()
{

  return swift_deallocObject();
}

uint64_t LazyLayoutViewCache.childCacheSeed(id:)(unint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v5 = *(v1 + 368);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v8 = *(v2 + 384);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + 376);
    *(v2 + 376) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, v3, v8, isUniquelyReferenced_nonNull_native);
    *(v2 + 376) = v11;
    swift_endAccess();
    ++*(v2 + 384);
  }

  return v8;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, uint64_t a2)
{
  v4 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  if (a2)
  {
    Hasher._combine(_:)(1u);
    v5 = *(*a2 + 120);

    v5(v8);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v9 = a1;
    v10 = HIDWORD(a1);
    v11 = ~v5;
    while (1)
    {
      v12 = *(v7 + 48) + 16 * v6;
      if (*v12 != v9 || *(v12 + 4) != v10)
      {
        goto LABEL_5;
      }

      v14 = *(v12 + 8);
      if (!v14)
      {
        break;
      }

      if (!a2)
      {

LABEL_4:

        goto LABEL_5;
      }

      if (v14 == a2)
      {
        return v6;
      }

      v15 = *(*v14 + 112);
      swift_retain_n();

      LOBYTE(v15) = v15(v16);

      if (v15)
      {
        return v6;
      }

LABEL_5:
      v6 = (v6 + 1) & v11;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (!a2)
    {
      return v6;
    }

    goto LABEL_4;
  }

  return v6;
}

void lazy protocol witness table accessor for type ScrapeableAttachmentViewModifier.Attachment and conformance ScrapeableAttachmentViewModifier.Attachment()
{
  if (!lazy protocol witness table cache variable for type ScrapeableAttachmentViewModifier.Attachment and conformance ScrapeableAttachmentViewModifier.Attachment)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrapeableAttachmentViewModifier.Attachment, &unk_1F0087C28, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrapeableAttachmentViewModifier.Attachment and conformance ScrapeableAttachmentViewModifier.Attachment);
  }
}

void type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t initializeWithCopy for _LazyLayout_Subview.Data(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 83) = *(a2 + 83);

  return a1;
}

uint64_t destroy for _LazyLayout_Subview.Data(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

double _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  v11 = *(v5 + 8);
  v12 = *(LazyLayoutViewCache.item(data:)((v5 + 16)) + 44);

  v13 = *MEMORY[0x1E698D3F8];
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v17 = a1;
  v18 = a2 & 1;
  v19 = a3;
  v20 = a4 & 1;
  LayoutProxy.lengthThatFits(_:in:)(&v17, a5 & 1);
  v15 = v14;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:));
  return v15;
}

uint64_t LazyLayoutViewCache.item(data:)(void *a1)
{
  v2 = v1;
  v4 = a1[7];
  v19[0] = a1[6];
  v19[1] = v4;

  _ViewList_ID.Canonical.init(id:)(v19, v18);
  v5 = v18[0];
  v6 = v18[1];
  swift_beginAccess();
  v7 = *(v1 + 176);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);

    swift_endAccess();

    if (*(v10 + 224) == 1 && (v11 = *(v10 + 184), swift_beginAccess(), v11 != *(v2 + 208)))
    {
      LazyLayoutViewCache.addItem(_:data:reset:)(v10, a1, 0);
    }

    else
    {
      v12 = *(v10 + 196);
      swift_beginAccess();
      v13 = *(v2 + 184);
      if (v12 != v13)
      {
        *(v10 + 196) = v13;
        _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06ZIndexdJ0V_Tt0B5(a1[8]);
        *(v10 + 176) = v14;
        *(v2 + 342) = *(v2 + 342) & 1 | (v14 != 0.0);
      }
    }
  }

  else
  {

    swift_endAccess();
    v15 = LazyLayoutViewCache.anyTransition(data:)(a1);
    LazyLayoutViewCache.reusedItem(data:anyTransition:)(a1, v15);
    if (!v16)
    {
      v16 = LazyLayoutViewCache.makeNewItem(data:anyTransition:)(a1, v15);
    }

    v10 = v16;
  }

  return v10;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for WeakBox<GlassContainerCache>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s2os6LoggerVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s2os6LoggerVSgMaTm_1(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s2os6LoggerVSgWOcTm_1(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  _s2os6LoggerVSgMaTm_2(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

_DWORD *__swift_memcpy7_4(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0x1FFFFFFFFFFLL);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0x1FFFFFFFFFFLL);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3 & 0x1FFFFFFFFFFLL, a1, v21);
  }
}

uint64_t LazyLayoutViewCache.addItem(_:data:reset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = *(a2 + 56);
  v16[0] = *(a2 + 48);
  v16[1] = v7;

  _ViewList_ID.Canonical.init(id:)(v16, v17);
  v8 = v17[0];
  v9 = v17[1];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + 176);
  *(v3 + 176) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v8, v9, isUniquelyReferenced_nonNull_native);

  *(v3 + 176) = v15;
  swift_endAccess();
  (*(*v3 + 432))(partial apply for implicit closure #3 in LazyLayoutViewCache.addItem(_:data:reset:), v3);
  swift_beginAccess();
  *(a1 + 196) = *(v3 + 184);
  _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06ZIndexdJ0V_Tt0B5(*(a2 + 64));
  *(a1 + 176) = v11;
  *(a1 + 228) = -1;
  AGGraphClearUpdate();
  closure #1 in LazyLayoutViewCache.addItem(_:data:reset:)(v3, a1, v4, a2);
  result = AGGraphSetUpdate();
  if (*(v3 + 341))
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a2 + 84) ^ 1;
  }

  *(v3 + 341) = v13 & 1;
  v14 = (*(v3 + 342) & 1) != 0 || *(a1 + 176) != 0.0;
  *(v3 + 342) = v14;
  return result;
}

uint64_t _LazyLayoutViewCache.logReuse(_:)(void (*a1)(_OWORD *__return_ptr, uint64_t))
{
  v3 = *v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  if (one-time initialization token for lazyLayoutReuse != -1)
  {
    v17 = v9;
    swift_once();
    v9 = v17;
  }

  v12 = __swift_project_value_buffer(v9, static Log.lazyLayoutReuse);
  _s2os6LoggerVSgWOcTm_1(v12, v11, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  result = (*(v5 + 48))(v11, 1, v4);
  if (result != 1)
  {
    v14 = (*(v5 + 32))(v7, v11, v4);
    v15 = *(v3 + 440);
    a1(v18, v14);
    ReuseMessage.log<A>(layout:log:)(v16, v15, v7, v15);
    v20[0] = v18[0];
    v20[1] = v18[1];
    v21[0] = v19[0];
    *(v21 + 9) = *(v19 + 9);
    outlined destroy of ReuseMessage(v20);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t closure #1 in LazyLayoutViewCache.addItem(_:data:reset:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Value = AGGraphGetValue();
  v9 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(*Value);
  v10 = *AGGraphGetValue();
  swift_beginAccess();
  *(a2 + 184) = *(a1 + 208);
  if (v9)
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    AGGraphClearUpdate();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    v13 = AGGraphGetValue();
    outlined init with copy of AnyTrackedValue(v13, v22 + 1);
    AGGraphSetUpdate();
    v14 = v23;
    v15 = v24;
    __swift_project_boxed_opaque_existential_1((v22 + 1), v23);
    v16 = *(a4 + 56);
    v21[0] = *(a4 + 48);
    v21[1] = v16;
    v20 = *(a1 + 200);
    v17 = *(v15 + 72);

    v17(v22, v21, &v20, v14, v15);

    v11 = (v22[0] & 1) == 0 && LOBYTE(v22[0]) != 2;
    __swift_destroy_boxed_opaque_existential_1((v22 + 1));
    v12 = 0;
  }

  *(v22 + 1) = v10 + (a3 & 1);
  BYTE5(v22[0]) = v12;
  HIWORD(v22[0]) = v11;
  return AGGraphSetValue();
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<FromScrollViewKey>, &type metadata for FromScrollViewKey, &protocol witness table for FromScrollViewKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<FromScrollViewKey>, &type metadata for FromScrollViewKey, &protocol witness table for FromScrollViewKey, type metadata accessor for TransactionPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void ForEachList.edit(forID:since:)(void *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a1[1];
  v4 = *a2;
  v6[0] = *a1;
  v6[1] = v3;
  v5 = v4;
  ForEachState.edit(forID:since:)(v6, &v5, a3);
}

void ForEachState.edit(forID:since:)(unsigned int *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v47 = a3;
  v7 = *v3;
  v8 = *(*v3 + 88);
  v9 = type metadata accessor for Optional();
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v39 - v14;
  v15 = *a1;
  v45 = a1[1];
  v46 = v15;
  v44 = *(a1 + 1);
  v42 = *a2;
  v16 = v3 + *(v7 + 160);
  swift_beginAccess();
  v17 = *(v7 + 80);
  v41 = v7;
  v18 = *(v7 + 96);
  v19 = *(v7 + 112);
  *&v54 = v17;
  *(&v54 + 1) = v8;
  v48 = v18;
  v55 = v18;
  v56 = v19;
  v20 = type metadata accessor for ForEach(0, &v54);
  if ((*(*(v20 - 8) + 48))(v16, 1, v20) == 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v21 = *(v16 + *(v20 + 64));
  *&v54 = v17;
  *(&v54 + 1) = v8;
  v55 = v48;
  v56 = v19;
  type metadata accessor for ForEach.IDGenerator(0, &v54);
  if (v21)
  {
    *&v54 = __PAIR64__(v45, v46);
    *(&v54 + 1) = v44;
    if ((*(v4 + 172) & 1) == 0)
    {
      _ViewList_ID.explicitID<A>(owner:)(*(v4 + 42), v8, v19, v11);
      v22 = v12;
      if ((*(v12 + 48))(v11, 1, v8) == 1)
      {
        (*(v40 + 8))(v11, v9);
        goto LABEL_17;
      }

      v23 = v43;
      (*(v12 + 32))(v43, v11, v8);
      v24 = *v4;
      v25 = v42;
      v26 = v41;
      if (v42 >= *(v4 + *(*v4 + 216)))
      {
        swift_beginAccess();
        v27 = *(v26 + 120);
        *&v54 = v17;
        *(&v54 + 1) = v8;
        v55 = v48;
        v56 = v19;
        v57 = v27;
        v28 = type metadata accessor for ForEachState.LazyEdits(0, &v54);
        ForEachState.LazyEdits.edit(for:)(v23, v28, v50);
        swift_endAccess();
        v29 = v50[0];
        if (LOBYTE(v50[0]) != 2)
        {
          (*(v22 + 8))(v23, v8);
          *v47 = v29;
          return;
        }

        v24 = *v4;
      }

      v30 = *(v24 + 200);
      swift_beginAccess();
      v31 = *(v4 + v30);
      v32 = *(v26 + 120);
      *&v33 = v17;
      *(&v33 + 1) = v8;
      v54 = v33;
      v55 = v48;
      v56 = v19;
      v57 = v32;
      v34 = type metadata accessor for ForEachState.Item(0, &v54);
      MEMORY[0x193ABE750](v50, v23, v31, v8, v34, v19);
      v35 = v50[0];
      if (!v50[0])
      {
        swift_endAccess();
        (*(v22 + 8))(v23, v8);
        goto LABEL_17;
      }

      swift_endAccess();
      if (*(v35 + *(*v35 + 216)) != *(v4 + *(*v4 + 240)))
      {
        (*(v22 + 8))(v23, v8);

        goto LABEL_17;
      }

      outlined init with copy of _ViewListOutputs.Views(v35 + *(*v35 + 176), &v54);
      if ((v57 & 1) == 0)
      {

        (*(v22 + 8))(v23, v8);
        *v47 = 2;
        outlined destroy of _ViewListOutputs.Views(&v54);
        return;
      }

      if (*(v4 + 172) != 1)
      {
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
        InputValue = AGGraphGetInputValue();
        outlined init with copy of AnyTrackedValue(InputValue, v51);
        v37 = v52;
        v38 = v53;
        __swift_project_boxed_opaque_existential_1(v51, v52);
        v50[0] = __PAIR64__(v45, v46);
        v50[1] = v44;
        v49 = v25;
        (*(v38 + 72))(v50, &v49, v37, v38);

        (*(v22 + 8))(v23, v8);
        __swift_destroy_boxed_opaque_existential_1(v51);
        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
  *v47 = 2;
}

void _ViewList_ID.explicitID<A>(owner:)(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v18 = a4;
  v19 = type metadata accessor for Optional();
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v10 = &v18 - v9;
  v11 = *(v4 + 8);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v7 + 8);
    v15 = (v11 + 48);
    while (v13 < *(v11 + 16))
    {
      if (*v15 == a1)
      {
        v21 = *(v15 - 2);

        AnyHashable2.as<A>(type:)();

        v16 = *(a2 - 8);
        if ((*(v16 + 48))(v10, 1, a2) != 1)
        {
          v17 = v18;
          (*(v16 + 32))(v18, v10, a2);
          (*(v16 + 56))(v17, 0, 1, a2);
          return;
        }

        (*v14)(v10, v19);
      }

      ++v13;
      v15 += 6;
      if (v12 == v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    (*(*(a2 - 8) + 56))(v18, 1, 1, a2, v8);
  }
}

uint64_t _AnyHashableBox.as<A>(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*v3 + 136);
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v13 - v10, v3 + *(v8 + 152), v6, v7);
  v11 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v11 ^ 1u, 1, a2);
}

uint64_t ForEachState.LazyEdits.finalized()(_OWORD *a1)
{
  v2 = v1;
  v4 = a1[2];
  v18[0] = a1[1];
  v18[1] = v4;
  v18[2] = a1[3];
  v5 = type metadata accessor for ForEachState.EditsBuilder(0, v18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 32))(v12, v2, a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    v15 = v12[1];
  }

  else
  {
    (*(v6 + 32))(v8, v12, v5);
    v14 = ForEachState.EditsBuilder.finalize()(v5);
    v15 = v16;
    (*(v6 + 8))(v8, v5);
  }

  *v2 = v14;
  v2[1] = v15;
  swift_storeEnumTagMultiPayload();

  return v14;
}

uint64_t ForEachState.LazyEdits.edit(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = ForEachState.LazyEdits.finalized()(a2);
  v8 = v7;
  v9 = *(a2 + 24);
  v10 = *(a2 + 48);
  if (MEMORY[0x193ABF5D0](a1, v6, v9, v10))
  {
    v11 = 1;
  }

  else if (MEMORY[0x193ABF5D0](a1, v8, v9, v10))
  {
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  *a3 = v11;
}

void LayoutProxy.lengthThatFits(_:in:)(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = *(a1 + 24);
  if (*(v2 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v9 = *InputValue;
  v10 = one-time initialization token for lockAssertionsAreEnabled;

  if (v10 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    v11 = v4;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    (*(*v9 + 128))(&v11, a2 & 1);
  }
}

uint64_t LazyViewPhase.value.getter@<X0>(unsigned int *a3@<X8>)
{
  v4 = *AGGraphGetValue();
  Value = AGGraphGetValue();
  v6 = *Value + (v4 & 0xFFFFFFFE);
  v7 = *Value | v4;
  v8 = v6 + 2 * *AGGraphGetValue();
  result = AGGraphGetValue();
  if (*(result + 4) == 2)
  {
    v10 = v8 | 1;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFE | v7 & 1;
  }

  *a3 = v10;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollableKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE010ScrollableV033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v3 = &static _GraphInputs.ScrollableKey.defaultValue;
  }

  return *v3;
}

void type metadata accessor for [ScrollableCollection](uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for ScrollablePreferenceKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ContentScrollPositionKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void *static ScrapeableAttachmentViewModifier._makeView(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v38 = *(a2 + 32);
  v39 = v4;
  v6 = *(a2 + 48);
  v40 = *(a2 + 64);
  v7 = *(a2 + 16);
  v37[0] = *a2;
  v37[1] = v7;
  v33 = v38;
  v34 = v6;
  v35 = *(a2 + 64);
  v41 = *(a2 + 80);
  v8 = *&v37[0];
  v36 = *(a2 + 80);
  v31 = v37[0];
  v32 = v5;
  if ((BYTE4(v38) & 0x20) != 0 && (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v34) & 1) != 0 && (WORD2(v38) & 0x2000) == 0)
  {
    outlined init with copy of _ViewInputs(v37, &v25);
    v9 = AGMakeUniqueID();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v8, v25);
    if (v11)
    {
      v12 = *(v11 + 72);
    }

    else
    {
      v12 = 0;
    }

    *&v25 = __PAIR64__(v40, OffsetAttribute2);
    *(&v25 + 1) = __PAIR64__(HIDWORD(v39), DWORD2(v40));
    *&v26 = __PAIR64__(v12, v9);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ScrapeableAttachmentViewModifier.Attachment and conformance ScrapeableAttachmentViewModifier.Attachment();
    Attribute.init<A>(body:value:flags:update:)();
    AGGraphGetFlags();
    AGGraphSetFlags();
    _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(&v31, v9);
  }

  else
  {
    outlined init with copy of _ViewInputs(v37, &v25);
  }

  v21[2] = v33;
  v21[3] = v34;
  v21[4] = v35;
  v22 = v36;
  v21[0] = v31;
  v21[1] = v32;
  v17 = v33;
  v18 = v34;
  v19 = v35;
  v20 = v36;
  v15 = v31;
  v16 = v32;
  v13 = outlined init with copy of _ViewInputs(v21, &v25);
  a3(v13, &v15);
  v23[2] = v17;
  v23[3] = v18;
  v23[4] = v19;
  v24 = v20;
  v23[0] = v15;
  v23[1] = v16;
  outlined destroy of _ViewInputs(v23);
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v25 = v31;
  v26 = v32;
  return outlined destroy of _ViewInputs(&v25);
}

uint64_t assignWithCopy for _OverlayStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *(*(v5 + 40) + a1) = *(*(v5 + 40) + a2);
  return a1;
}

uint64_t storeEnumTagSinglePayload for ResolvedIDs(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v5[0] = &type metadata for Rectangle;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Rectangle, ForegroundStyle>);
    }
  }
}

uint64_t getEnumTagSinglePayload for ResolvedIDs(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

void lazy protocol witness table accessor for type StaticLayoutComputer<_ZStackLayout> and conformance StaticLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<_ZStackLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for StaticLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type StaticLayoutComputer<_ZStackLayout> and conformance StaticLayoutComputer<A>);
  }
}

uint64_t one-time initialization function for bottomLeading()
{
  if (one-time initialization token for leading != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.leading;
  if (one-time initialization token for bottom != -1)
  {
    result = swift_once();
  }

  static Alignment.bottomLeading = v0;
  unk_1ED521B78 = static VerticalAlignment.bottom;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _AlignmentWritingModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void storeEnumTagSinglePayload for ZStack(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
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
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 16] & ~v8;

  v18(v19);
}

void StackLayout.UnmanagedImplementation.spacing()(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (*(*(a1 + 88) + 16))
  {
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
LABEL_27:
      swift_once();
    }
  }

  v18 = v4;
  v5 = *(*(a1 + 88) + 16);
  if (v5)
  {
    v15 = a2;
    v6 = 0;
    v7 = *MEMORY[0x1E698D3F8];
    v8 = 32;
    while (1)
    {
      v16[0] = *(a1 + 97);
      AbsoluteEdge.Set.init(_:layoutDirection:)(v16, &v17);
      v9 = *(a1 + 88);
      v10 = *(v9 + 16);
      if (*(a1 + 96))
      {
        if (v6 >= v10)
        {
          goto LABEL_26;
        }

        v11 = (v9 + v8);
      }

      else
      {
        if (v6 >= v10)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v11 = (v9 + 8 * v6 + 32);
      }

      if (*v11 == v7)
      {
        InputValue = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          InputValue = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        InputValue = AGGraphGetInputValue();
      }

      v13 = *InputValue;
      v14 = one-time initialization token for lockAssertionsAreEnabled;

      if (v14 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          break;
        }
      }

      ++v6;
      (*(*v13 + 112))(v16);

      a2 = &v18;
      Spacing.incorporate(_:of:)(&v17, v16);

      v8 += 12;
      if (v5 == v6)
      {
        v4 = v18;
        a2 = v15;
        goto LABEL_24;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_24:
    *a2 = v4;
  }
}

_BYTE *Spacing.incorporate(_:of:)(_BYTE *result, void *a2)
{
  v3 = *result;
  if (*result)
  {
    v4 = v2;
    v5 = *a2;
    v6 = *a2 + 64;
    v7 = 1 << *(*a2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(*a2 + 64);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (v9)
    {
LABEL_10:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = v14 | (v11 << 6);
      v16 = v5[6] + 16 * v15;
      v17 = *(v16 + 8);
      if (v17 - 9 < 0xEF || (v17 & 0x80) != 0 || v17 > 7 || ((1 << v17) & ~v3) == 0)
      {
        v28 = *v16;
        v18 = v5[7] + 40 * v15;
        v26 = *(v18 + 16);
        v27 = *v18;
        v25 = *(v18 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
        }

        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v21 = v20 + 1;
        }

        *(v12 + 16) = v21;
        v22 = v12 + 56 * v20;
        *(v22 + 32) = v28;
        *(v22 + 40) = v17;
        *(v22 + 48) = v27;
        *(v22 + 64) = v26;
        *(v22 + 80) = v25;
      }
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v23 = specialized _arrayForceCast<A, B>(_:)(v12);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *v4;
        *v4 = 0x8000000000000000;
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v23, isUniquelyReferenced_nonNull_native, specialized max<A>(_:_:));

        *v4 = v29;
        return result;
      }

      v9 = *(v6 + 8 * v13);
      ++v11;
      if (v9)
      {
        v11 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(key: Spacing.Key, value: Spacing.Value)>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DiffResult.Move>, &type metadata for DiffResult.Move, MEMORY[0x1E69E6F90], type metadata accessor for _ContiguousArrayStorage<UInt32>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Line>, &type metadata for Text.Layout.Line);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Edge>, &type metadata for Edge);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextVariantsStorage.Variant>, &type metadata for TextVariantsStorage.Variant);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ForEachConstantID>, &type metadata for ForEachConstantID);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityEnabledTechnology>, &type metadata for AccessibilityEnabledTechnology);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_NSRange>, type metadata accessor for _NSRange, MEMORY[0x1E69E6F90], type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassEffectContainerTintConfiguration.Element>, &type metadata for GlassEffectContainerTintConfiguration.Element);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<MaterialEffectContainerTintConfiguration.Element>, &type metadata for MaterialEffectContainerTintConfiguration.Element);
}

void type metadata accessor for _ContiguousArrayStorage<(key: Spacing.Key, value: Spacing.Value)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(key: Spacing.Key, value: Spacing.Value)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (key: Spacing.Key, value: Spacing.Value), &type metadata for Spacing.Key, &type metadata for Spacing.Value, "key value ");
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(key: Spacing.Key, value: Spacing.Value)>);
    }
  }
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v16;
    type metadata accessor for (key: Spacing.Key, value: Spacing.Value)();
    type metadata accessor for (Spacing.Key, Spacing.Value)();
    v4 = a1 + 40;
    do
    {
      swift_dynamicCast();
      v5 = v13;
      v6 = v14;
      v8 = *(v16 + 16);
      v7 = *(v16 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v14;
        v5 = v13;
      }

      *(v16 + 16) = v8 + 1;
      v9 = v16 + 56 * v8;
      *(v9 + 32) = v11;
      v4 += 56;
      *(v9 + 40) = v12;
      *(v9 + 48) = v5;
      *(v9 + 64) = v6;
      *(v9 + 80) = v15;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v11;
    type metadata accessor for (AbstractHomogeneousCollection, Int)(0);
    type metadata accessor for (key: NSAttributedStringKey, value: Any)(0, &lazy cache variable for type metadata for (AbstractHomogeneousCollection, precedingElementCount: Int), type metadata accessor for AbstractHomogeneousCollection, MEMORY[0x1E69E6530], " precedingElementCount ");
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      v4 += 16;
      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void (*a3)(_OWORD *__return_ptr, id *, void *))
{
  v38 = *(a1 + 16);
  if (!v38)
  {
LABEL_18:

    return;
  }

  v5 = 0;
  v6 = 0;
  v37 = a1;
  while (1)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_25;
    }

    v7 = a1 + v5;
    v8 = *(a1 + v5 + 80);
    if (v8 == 255)
    {
      goto LABEL_18;
    }

    v41 = v6;
    v42 = v5;
    v9 = *(v7 + 40);
    v10 = *(v7 + 48);
    v11 = *(v7 + 56);
    v13 = *(v7 + 64);
    v12 = *(v7 + 72);
    v14 = *(v7 + 32);
    v50 = v14;
    v51 = v9;
    v39 = v10;
    v40 = v12;
    v48[0] = v10;
    v48[1] = v11;
    v48[2] = v13;
    v48[3] = v12;
    v49 = v8;
    v15 = *v52;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v9);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_22;
    }

    v21 = v16;
    if (v15[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v21)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v29 = *v52;
    v29[(v17 >> 6) + 8] |= 1 << v17;
    v30 = v29[6] + 16 * v17;
    *v30 = v14;
    *(v30 + 8) = v9;
    v31 = v29[7] + 40 * v17;
    *v31 = v39;
    *(v31 + 8) = v11;
    *(v31 + 16) = v13;
    *(v31 + 24) = v40;
    *(v31 + 32) = v8;
    v32 = v29[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_23;
    }

    v29[2] = v34;
LABEL_3:
    a1 = v37;
    v6 = v41 + 1;
    v5 = v42 + 56;
    a2 = 1;
    if (v38 == v41 + 1)
    {
      goto LABEL_18;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a2 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v9);
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_24;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v24 = *v52;
  v25 = *(*v52 + 56) + 40 * v17;
  v26 = *(v25 + 32);
  *v43 = *v25;
  v44 = *(v25 + 16);
  v45 = v26;
  a3(v46, v43, v48);
  if (!v3)
  {
    v27 = v24[7] + 40 * v17;
    v28 = v47;
    *v27 = v46[0];
    *(v27 + 16) = v46[1];
    *(v27 + 32) = v28;
    goto LABEL_3;
  }

  v43[0] = v3;
  v35 = v3;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error, MEMORY[0x1E69E7280]);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_25:
  *&v46[0] = 0;
  *(&v46[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD744D0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TypesettingLanguage.resolve(with:locale:)(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v36[1] = a2;
  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v36 - v11;
  type metadata accessor for Locale.LanguageCode?(0, &lazy cache variable for type metadata for Locale.LanguageCode?, MEMORY[0x1E6969610], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v36 - v14;
  v16 = type metadata accessor for TypesettingLanguage.Storage(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TypesettingLanguage.Storage(v3, v18, type metadata accessor for TypesettingLanguage.Storage);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v20 = v19;
  v21 = (*(*(v19 - 8) + 48))(v18, 2, v19);
  if (!v21)
  {
    v26 = v18[*(v20 + 48)];
    v27 = v6;
    (*(v7 + 32))(v9, v18, v6);
    v28 = Locale.Language.maximalIdentifier.getter();
    v30 = v29;
    (*(v7 + 8))(v9, v27);
    *a3 = v28;
    *(a3 + 8) = v30;
    *(a3 + 16) = v26;
    *(a3 + 17) = 0;
    return;
  }

  if (v21 == 1)
  {
    goto LABEL_12;
  }

  if (a1)
  {
    v22 = a1();
    v23 = MEMORY[0x193ABEC20](v22);

    v24 = CTFontCopyTallestTextStyleLanguageForString();

    if (v24)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v37 = 0;
        v38 = 0;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();

        v25 = v38;
        if (v38)
        {
          *a3 = v37;
          *(a3 + 8) = v25;
          *(a3 + 16) = 256;
          return;
        }
      }

      else
      {
      }
    }
  }

  Locale.language.getter();
  Locale.Language.languageCode.getter();
  (*(v7 + 8))(v12, v6);
  v31 = type metadata accessor for Locale.LanguageCode();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v15, 1, v31) == 1)
  {
    outlined destroy of Locale.LanguageCode?(v15);
LABEL_12:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 512;
    return;
  }

  v33 = MEMORY[0x193ABDA90]();
  v35 = v34;
  (*(v32 + 8))(v15, v31);
  *a3 = v33;
  *(a3 + 8) = v35;
  *(a3 + 16) = 1;
}

void type metadata accessor for Locale.LanguageCode?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _s10Foundation6LocaleV12LanguageCodeVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t outlined consume of TypesettingLanguage.Resolved(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

double outlined copy of TypesettingLanguage.Resolved(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

void updateContent(layer:color:radius:style:)(void *a1, uint64_t *a2, unsigned __int8 *a3, double a4)
{
  v7 = *a3;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v8 = specialized ObjectCache.subscript.getter(a2);
  [a1 setBackgroundColor_];

  [a1 setBorderColor_];
  [a1 setContents_];
  [a1 setCornerRadius_];
  v9 = MEMORY[0x1E69796E8];
  if (!v7)
  {
    v9 = MEMORY[0x1E69796E0];
  }

  v10 = *v9;
  [a1 setCornerCurve_];
}

void lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    swift_getWitnessTable(protocol conformance descriptor for NSAttributedStringKey, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }
}

_BYTE *assignWithCopy for TypesettingLanguage(_BYTE *a1, _BYTE *a2)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 2, v4);
  v9 = v7(a2, 2, v5);
  if (v8)
  {
    if (!v9)
    {
      v10 = type metadata accessor for Locale.Language();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      a1[*(v5 + 48)] = a2[*(v5 + 48)];
      (*(v6 + 56))(a1, 0, 2, v5);
      return a1;
    }
  }

  else
  {
    if (!v9)
    {
      v13 = type metadata accessor for Locale.Language();
      (*(*(v13 - 8) + 24))(a1, a2, v13);
      a1[*(v5 + 48)] = a2[*(v5 + 48)];
      return a1;
    }

    outlined destroy of (CFStringRef, String)(a1, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  }

  v11 = *(*(type metadata accessor for TypesettingLanguage.Storage(0) - 8) + 64);

  return memcpy(a1, a2, v11);
}

void closure #1 in Text.Resolved.append(_:in:with:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v16 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = a5;
  outlined init with copy of Text.Style(a5, v18, type metadata accessor for Text.Style);
  v64 = a1;

  Dictionary<>.transferAttributedStringStyles(to:)(v18);
  if (one-time initialization token for kitLink == -1)
  {
    if (!*(a1 + 16))
    {
LABEL_15:
      v26 = a6;
      v62 = 0u;
      v63 = 0u;
      goto LABEL_16;
    }
  }

  else
  {
    swift_once();
    if (!*(a1 + 16))
    {
      goto LABEL_15;
    }
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.kitLink);
  if ((v20 & 1) == 0)
  {
    goto LABEL_15;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v19, &v62);
  outlined destroy of ParagraphStyleResolutionContext(&v62, type metadata accessor for Any?);
  v21 = MEMORY[0x193ABEC20](0xD000000000000017, 0x800000018DD7BFA0);
  v22 = v21;
  if ((a6 & 0x10) != 0)
  {
    v26 = a6;

    goto LABEL_17;
  }

  if (*(a1 + 16))
  {
    v23 = v21;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
    v22 = v23;
    if (v25)
    {
      v26 = a6;
      outlined init with copy of Any(*(a1 + 56) + 32 * v24, &v62);

LABEL_16:
      outlined destroy of ParagraphStyleResolutionContext(&v62, type metadata accessor for Any?);
      goto LABEL_17;
    }
  }

  v27 = v22;
  v62 = 0u;
  v63 = 0u;
  outlined destroy of ParagraphStyleResolutionContext(&v62, type metadata accessor for Any?);
  *&v62 = a7;
  *(&v62 + 1) = a8;
  v28 = EnvironmentValues.tintColor.getter();
  if (!v28)
  {
    v61[0] = a7;
    v61[1] = a8;
    v29 = EnvironmentValues.resolvedTextProvider.getter();
    if (v29)
    {
      v60[0] = a7;
      v60[1] = a8;
      v28 = (*(v30 + 8))(v60, v29, v30);
    }

    else
    {
      _s7SwiftUI22AnyDynamicFontModifierCyAA0E0V06WeightF0VGMaTm_0(0, &lazy cache variable for type metadata for ColorBox<Color.AccentColorProvider>, lazy protocol witness table accessor for type Color.AccentColorProvider and conformance Color.AccentColorProvider, &type metadata for Color.AccentColorProvider, type metadata accessor for ColorBox);
      v28 = swift_allocObject();
    }
  }

  v31 = v28;

  v26 = a6;
  outlined consume of Gradient.ProviderTag(v18[2]);
  v18[2] = v31;
LABEL_17:
  v32 = [a9 attributedSubstringFromRange_];
  v33 = [v32 string];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *&v62 = a7;
  *(&v62 + 1) = a8;
  v37 = String.caseConvertedIfNeeded(_:)(&v62, v34, v36);
  v39 = v38;

  v40 = a8;
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  *(v41 + 24) = v39;
  *&v62 = a7;
  *(&v62 + 1) = v40;
  v42 = type metadata accessor for Text.Resolved(0);
  LODWORD(v34) = *(v59 + v42[6]);
  v61[0] = v26;
  v43 = v59;
  v44 = v42[8];

  v56[1] = v44;
  v58 = v18;
  v45 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(partial apply for closure #1 in closure #1 in NSMutableAttributedString.convertToPlatformStyled(style:environment:includeDefaultAttributes:options:properties:), v41, &v62, v34, v61, v43 + v44);

  v46 = v64;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v62 = v46;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v45, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v62);

  v48 = v62;
  v57 = a7;
  *&v62 = a7;
  *(&v62 + 1) = v40;
  Text.Resolved.append(_:with:in:)(v37, v39, v48, &v62);
  v49 = v42[5];
  v50 = *(v43 + v49);
  if (!v50)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (![v50 isEmptyOrTerminatedByParagraphSeparator])
  {

    goto LABEL_23;
  }

  v51 = *(v43 + v49);
  if (!v51)
  {
    goto LABEL_25;
  }

  v52 = v51;
  v53 = [v52 length];

  v54 = *(v43 + v49);
  if (v54)
  {
    v55 = v54;

    *&v62 = v57;
    *(&v62 + 1) = v40;
    Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(v53, v55, &v62);

LABEL_23:
    outlined destroy of ParagraphStyleResolutionContext(v58, type metadata accessor for Text.Style);
    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t Dictionary<>.transferAttributedStringStyles(to:)(unint64_t *a1)
{
  v2 = v1;
  type metadata accessor for AttributedString.LineHeight?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v207 = &v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for AttributedString.LineHeight();
  v6 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v195 = &v191 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.TextAlignment?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.TextAlignment();
  v205 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v194 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.AdaptiveImageGlyph?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v219 = &v191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v193 = &v191 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for TypesettingLanguage(0);
  MEMORY[0x1EEE9AC00](v209);
  v192 = &v191 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v200 = &v191 - v21;
  v22 = MEMORY[0x193ABEC20](0x2E49557466697753, 0xEC000000746E6F46, v20);
  v23 = *v1;
  v24 = *(*v2 + 16);
  v206 = v22;
  v201 = v16;
  v202 = v15;
  if (v24 && (v25 = v22, v26 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v27 & 1) != 0) && (outlined init with copy of Any(*(v23 + 56) + 32 * v26, &v236), (swift_dynamicCast() & 1) != 0))
  {
    v28 = v6;
    v29 = v229;
    outlined consume of EffectAnimator<A>.State<A>(*a1);
    *a1 = v29;
    v236 = 0u;
    v237 = 0u;
    specialized Dictionary.subscript.setter(&v236, v25);
  }

  else
  {
    v28 = v6;
  }

  v30 = MEMORY[0x193ABEC20](0xD000000000000017, 0x800000018DD7BFA0);
  v31 = *v2;
  v32 = *(*v2 + 16);
  v204 = v28;
  v216 = v30;
  if (v32)
  {
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
    if (v34)
    {
      outlined init with copy of Any(*(v31 + 56) + 32 * v33, &v236);
      if (swift_dynamicCast())
      {
        v35 = v229;
        outlined consume of Gradient.ProviderTag(a1[2]);
        a1[2] = v35;
        v236 = 0u;
        v237 = 0u;
        specialized Dictionary.subscript.setter(&v236, v216);
      }
    }
  }

  v36 = MEMORY[0x193ABEC20](0xD000000000000017, 0x800000018DD7BFC0);
  v37 = v36;
  v38 = *v2;
  if (*(*v2 + 16))
  {
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v36);
    if (v40)
    {
      outlined init with copy of Any(*(v38 + 56) + 32 * v39, &v236);
      if (swift_dynamicCast())
      {
        v41 = v229;

        a1[3] = v41;
        v236 = 0u;
        v237 = 0u;
        specialized Dictionary.subscript.setter(&v236, v37);
      }
    }
  }

  v42 = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD7BFE0);
  v43 = *v2;
  v44 = *(*v2 + 16);
  v215 = v42;
  if (v44)
  {
    v45 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
    if (v46)
    {
      outlined init with copy of Any(*(v43 + 56) + 32 * v45, &v236);
      if (swift_dynamicCast())
      {
        v47 = v229;
        outlined consume of Text.Style.LineStyle(a1[10], a1[11]);
        *(a1 + 5) = v47;
        v236 = 0u;
        v237 = 0u;
        specialized Dictionary.subscript.setter(&v236, v215);
      }
    }
  }

  v48 = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD7C000);
  v49 = *v2;
  v50 = *(*v2 + 16);
  v218 = v11;
  v214 = v48;
  if (v50)
  {
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(v48);
    if (v52)
    {
      outlined init with copy of Any(*(v49 + 56) + 32 * v51, &v236);
      if (swift_dynamicCast())
      {
        v53 = v229;
        v54 = a1[11];
        if ((v54 - 1) <= 1)
        {
          v55 = a1[10];

          outlined consume of Text.Style.LineStyle(v55, v54);
          a1[10] = 1;
          a1[11] = v53;
        }

        v236 = 0u;
        v237 = 0u;
        specialized Dictionary.subscript.setter(&v236, v214);
      }
    }
  }

  v56 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD7C020);
  v57 = *v2;
  v58 = *(*v2 + 16);
  v220 = a1;
  v213 = v56;
  if (v58)
  {
    v59 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
    if (v60)
    {
      outlined init with copy of Any(*(v57 + 56) + 32 * v59, &v236);
      if (swift_dynamicCast())
      {
        v61 = v229;
        outlined consume of Text.Style.LineStyle(a1[12], a1[13]);
        *(a1 + 6) = v61;
        v236 = 0u;
        v237 = 0u;
        specialized Dictionary.subscript.setter(&v236, v213);
      }
    }
  }

  v62 = MEMORY[0x193ABEC20](0xD000000000000015, 0x800000018DD7C060);
  v63 = v62;
  v64 = *v2;
  if (*(*v2 + 16))
  {
    v65 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
    if (v66)
    {
      outlined init with copy of Any(*(v64 + 56) + 32 * v65, v243);
      if (swift_dynamicCast())
      {
        v226 = v240;
        v227 = v241;
        v228 = v242;
        v222 = v236;
        v223 = v237;
        v224 = v238;
        v225 = v239;
        v67 = v220;
        v68 = *(v220 + 8);
        v229 = *(v220 + 7);
        v230 = v68;
        v69 = *(v220 + 9);
        v70 = *(v220 + 10);
        v71 = *(v220 + 11);
        v72 = *(v220 + 12);
        v235 = *(v220 + 208);
        v233 = v71;
        v234 = v72;
        v231 = v69;
        v232 = v70;
        outlined destroy of Text.Encapsulation?(&v229);
        v73 = v227;
        *(v67 + 11) = v226;
        *(v67 + 12) = v73;
        *(v67 + 208) = v228;
        v74 = v223;
        *(v67 + 7) = v222;
        *(v67 + 8) = v74;
        v75 = v225;
        *(v67 + 9) = v224;
        *(v67 + 10) = v75;
        memset(v221, 0, sizeof(v221));
        specialized Dictionary.subscript.setter(v221, v63);
      }
    }
  }

  v76 = MEMORY[0x193ABEC20](0x2E49557466697753, 0xEC0000006E72654BLL);
  v77 = *v2;
  v78 = *(*v2 + 16);
  v212 = v76;
  if (v78)
  {
    v79 = specialized __RawDictionaryStorage.find<A>(_:)(v76);
    if (v80)
    {
      outlined init with copy of Any(*(v77 + 56) + 32 * v79, &v236);
      if (swift_dynamicCast())
      {
        v81 = v220;
        v220[6] = v229;
        *(v81 + 56) = 0;
        v236 = 0u;
        v237 = 0u;
        specialized Dictionary.subscript.setter(&v236, v212);
      }
    }
  }

  v82 = MEMORY[0x193ABEC20](0xD000000000000010, 0x800000018DD7C080);
  v83 = *v2;
  v84 = *(*v2 + 16);
  v211 = v82;
  if (v84)
  {
    v85 = specialized __RawDictionaryStorage.find<A>(_:)(v82);
    if (v86)
    {
      outlined init with copy of Any(*(v83 + 56) + 32 * v85, &v236);
      if (swift_dynamicCast())
      {
        v87 = v220;
        v220[8] = v229;
        *(v87 + 72) = 0;
        v236 = 0u;
        v237 = 0u;
        specialized Dictionary.subscript.setter(&v236, v211);
      }
    }
  }

  v88 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD7C0A0);
  v89 = *v2;
  v90 = *(*v2 + 16);
  v199 = v63;
  v210 = v88;
  if (v90 && (v91 = specialized __RawDictionaryStorage.find<A>(_:)(v88), (v92 & 1) != 0))
  {
    outlined init with copy of Any(*(v89 + 56) + 32 * v91, &v236);
    v93 = swift_dynamicCast();
    v94 = v218;
    if (v93)
    {
      v95 = v220;
      v220[4] = v229;
      *(v95 + 40) = 0;
      v236 = 0u;
      v237 = 0u;
      specialized Dictionary.subscript.setter(&v236, v210);
    }
  }

  else
  {
    v94 = v218;
  }

  v96 = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DD7C0C0);
  v97 = *v2;
  v98 = *(*v2 + 16);
  v203 = v37;
  v217 = v96;
  if (v98)
  {
    v99 = specialized __RawDictionaryStorage.find<A>(_:)(v96);
    if (v100)
    {
      outlined init with copy of Any(*(v97 + 56) + 32 * v99, &v229);
      outlined init with take of Any(&v229, &v236);
      outlined init with copy of Any(&v236, &v229);
      type metadata accessor for CTGlyphInfoRef(0);
      swift_dynamicCast();
      v101 = v222;
      v102 = v220;

      v102[37] = v101;
      v229 = 0u;
      v230 = 0u;
      specialized Dictionary.subscript.setter(&v229, v217);
      __swift_destroy_boxed_opaque_existential_1(&v236);
    }
  }

  v103 = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DD7C0E0);
  v104 = v103;
  v105 = *v2;
  if (*(*v2 + 16))
  {
    v106 = specialized __RawDictionaryStorage.find<A>(_:)(v103);
    if (v107)
    {
      outlined init with copy of Any(*(v105 + 56) + 32 * v106, &v236);
      if (swift_dynamicCast())
      {
        *(v220 + 320) = v229;
        v236 = 0u;
        v237 = 0u;
        specialized Dictionary.subscript.setter(&v236, v104);
      }
    }
  }

  v108 = MEMORY[0x193ABEC20](0xD000000000000013, 0x800000018DD7C120);
  v109 = v108;
  v110 = *v2;
  if (*(*v2 + 16))
  {
    v111 = specialized __RawDictionaryStorage.find<A>(_:)(v108);
    if (v112)
    {
      outlined init with copy of Any(*(v110 + 56) + 32 * v111, &v236);
      if (swift_dynamicCast())
      {
        *(v220 + 321) = 0;
        v236 = 0u;
        v237 = 0u;
        specialized Dictionary.subscript.setter(&v236, v109);
      }
    }
  }

  v113 = MEMORY[0x193ABEC20](0xD000000000000018, 0x800000018DD7C140);
  v114 = v113;
  v115 = *v2;
  v116 = *(*v2 + 16);
  v198 = v109;
  if (v116)
  {
    v117 = specialized __RawDictionaryStorage.find<A>(_:)(v113);
    if (v118)
    {
      outlined init with copy of Any(*(v115 + 56) + 32 * v117, &v236);
      if (swift_dynamicCast())
      {
        v119 = v229;
        type metadata accessor for Text.Style(0);
        specialized Array.replaceSubrange<A>(_:with:)(0, 0, v119, v120);

        v236 = 0u;
        v237 = 0u;
        specialized Dictionary.subscript.setter(&v236, v114);
      }
    }
  }

  v121 = MEMORY[0x193ABEC20](0xD000000000000015, 0x800000018DD7C160);
  v122 = *v2;
  v123 = *(*v2 + 16);
  v196 = v121;
  if (v123 && (v124 = v121, v125 = specialized __RawDictionaryStorage.find<A>(_:)(v121), (v126 & 1) != 0))
  {
    outlined init with copy of Any(*(v122 + 56) + 32 * v125, &v236);
    type metadata accessor for [AnyFontModifier](0);
    v127 = swift_dynamicCast();
    v128 = v220;
    if (v127)
    {
      specialized Array.append<A>(contentsOf:)(v229);
      v236 = 0u;
      v237 = 0u;
      specialized Dictionary.subscript.setter(&v236, v124);
    }
  }

  else
  {
    v128 = v220;
  }

  v129 = *v2;
  v130 = *(*v2 + 16);
  v197 = v114;
  if (v130)
  {
    v131 = *MEMORY[0x1E696A4A0];
    v132 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E696A4A0]);
    if (v133)
    {
      outlined init with copy of Any(*(v129 + 56) + 32 * v132, &v236);
      if (swift_dynamicCast())
      {
        v134 = v229;
        if (v229)
        {
          _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V06ItalicE0V_Ttt0g5();
          MEMORY[0x193ABF170]();
          if (*((v128[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v94 = v218;
          if ((v134 & 2) == 0)
          {
LABEL_70:
            if ((v134 & 4) == 0)
            {
              goto LABEL_71;
            }

            goto LABEL_79;
          }
        }

        else if ((v229 & 2) == 0)
        {
          goto LABEL_70;
        }

        _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V04BoldE0V_Ttt0g5();
        MEMORY[0x193ABF170]();
        if (*((v128[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v94 = v218;
        if ((v134 & 4) == 0)
        {
LABEL_71:
          if ((v134 & 0x20) == 0)
          {
LABEL_85:
            v236 = 0u;
            v237 = 0u;
            specialized Dictionary.subscript.setter(&v236, v131);
            goto LABEL_86;
          }

LABEL_82:
          v191 = v10;
          if (one-time initialization token for single != -1)
          {
            swift_once();
          }

          v135 = *(&static Text.LineStyle.single + 1);
          v136 = static Text.LineStyle.single;
          v137 = v220;
          v138 = v220[10];
          v139 = v220[11];

          outlined consume of Text.Style.LineStyle(v138, v139);
          v137[10] = v136;
          v137[11] = v135;
          v128 = v137;
          v94 = v218;
          v10 = v191;
          goto LABEL_85;
        }

LABEL_79:
        _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V010MonospacedE0V_Ttt0g5();
        MEMORY[0x193ABF170]();
        if (*((v128[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v94 = v218;
        if ((v134 & 0x20) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_82;
      }
    }
  }

LABEL_86:
  v218 = type metadata accessor for Text.Style(0);
  v140 = v218[21];
  v141 = v200;
  outlined init with copy of TypesettingLanguage(v128 + v140, v200, type metadata accessor for TypesettingLanguage);
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  v142 = __swift_project_value_buffer(v209, static TypesettingLanguage.automatic);
  v143 = specialized static TypesettingLanguage.Storage.== infix(_:_:)(v141, v142);
  outlined destroy of Text.Style(v141, type metadata accessor for TypesettingLanguage);
  v200 = v104;
  if (v143)
  {
    v144 = *v2;
    if (*(*v2 + 16))
    {
      v145 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E696A518]);
      if (v146)
      {
        outlined init with copy of Any(*(v144 + 56) + 32 * v145, &v236);
        if (swift_dynamicCast())
        {
          type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
          v148 = v147;
          v149 = *(v147 + 48);
          v150 = v192;
          Locale.Language.init(identifier:)();
          *(v150 + v149) = 0;
          v128 = v220;
          (*(*(v148 - 8) + 56))(v150, 0, 2, v148);
          outlined assign with take of TypesettingLanguage(v150, v128 + v140);
        }
      }
    }
  }

  v151 = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD7C180);
  v152 = *v2;
  v153 = *(*v2 + 16);
  v209 = v151;
  if (v153 && (v154 = specialized __RawDictionaryStorage.find<A>(_:)(v151), (v155 & 1) != 0))
  {
    outlined init with copy of Any(*(v152 + 56) + 32 * v154, &v236);
    v156 = v219;
    v157 = v202;
    v158 = swift_dynamicCast();
    v159 = v201;
    v160 = *(v201 + 56);
    v160(v156, v158 ^ 1u, 1, v157);
    if ((*(v159 + 48))(v156, 1, v157) != 1)
    {
      v161 = v193;
      (*(v159 + 32))(v193, v219, v157);
      v162 = v218[23];
      outlined destroy of Text.Style(v220 + v162, type metadata accessor for AttributedString.AdaptiveImageGlyph?);
      (*(v159 + 16))(v220 + v162, v161, v157);
      v163 = v220 + v162;
      v128 = v220;
      v160(v163, 0, 1, v157);
      v236 = 0u;
      v237 = 0u;
      specialized Dictionary.subscript.setter(&v236, v209);
      (*(v159 + 8))(v161, v157);
      goto LABEL_99;
    }
  }

  else
  {
    (*(v201 + 56))(v219, 1, 1, v202);
  }

  outlined destroy of Text.Style(v219, type metadata accessor for AttributedString.AdaptiveImageGlyph?);
LABEL_99:
  v164 = static AttributeScopes.CoreTextAttributes.TextAlignmentAttribute.name.getter();
  v165 = MEMORY[0x193ABEC20](v164);

  specialized Dictionary._Variant.removeValue(forKey:)(v165, &v236);

  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  v166 = swift_dynamicCast();
  v167 = v205;
  v168 = *(v205 + 56);
  v168(v10, v166 ^ 1u, 1, v94);
  v169 = (*(v167 + 48))(v10, 1, v94);
  v170 = v10;
  if (v169 == 1)
  {
    outlined destroy of Text.Style(v10, type metadata accessor for AttributedString.TextAlignment?);
  }

  else
  {
    v171 = *(v167 + 32);
    v172 = v194;
    v171(v194, v170, v94);
    v173 = v218[24];
    outlined destroy of Text.Style(v220 + v173, type metadata accessor for AttributedString.TextAlignment?);
    v171(v220 + v173, v172, v94);
    v128 = v220;
    v168(v220 + v173, 0, 1, v94);
  }

  v174 = v216;
  v175 = v203;
  v177 = v211;
  v176 = v212;
  v178 = static AttributeScopes.FoundationAttributes.WritingDirectionAttribute.name.getter();
  v179 = MEMORY[0x193ABEC20](v178);

  specialized Dictionary._Variant.removeValue(forKey:)(v179, &v236);

  if ((swift_dynamicCast() & 1) != 0 && v229 != 2)
  {
    *(v128 + v218[25]) = v229;
  }

  v180 = static AttributeScopes.CoreTextAttributes.LineHeightAttribute.name.getter();
  v181 = MEMORY[0x193ABEC20](v180);

  specialized Dictionary._Variant.removeValue(forKey:)(v181, &v236);

  v183 = v207;
  v182 = v208;
  v184 = swift_dynamicCast();
  v185 = v204;
  v186 = *(v204 + 56);
  v186(v183, v184 ^ 1u, 1, v182);
  if ((*(v185 + 48))(v183, 1, v182) == 1)
  {
    return outlined destroy of Text.Style(v183, type metadata accessor for AttributedString.LineHeight?);
  }

  v188 = *(v185 + 32);
  v189 = v195;
  v188(v195, v183, v182);
  v190 = v218[26];
  outlined destroy of Text.Style(v128 + v190, type metadata accessor for AttributedString.LineHeight?);
  v188(v128 + v190, v189, v182);
  return v186(v128 + v190, 0, 1, v182);
}

uint64_t outlined init with copy of TypesettingLanguage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void Text.Resolved.append(_:in:with:isUniqueSizeVariant:)(void *a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v20 = type metadata accessor for Text.Resolved(0);
  v9 = *(v20 + 20);
  v10 = *(v4 + v9);
  if (v10)
  {
    [v10 length];
  }

  v11 = [a1 length];
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v8;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in Text.Resolved.append(_:in:with:isUniqueSizeVariant:);
  *(v13 + 24) = v12;
  aBlock[4] = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_25;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  [v15 enumerateAttributesInRange:0 options:v11 usingBlock:{0, v14}];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (!*(v4 + v9))
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      v18 = *(v4 + v9);
      *(v4 + v9) = v17;
    }

    if (a4)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    *(v4 + *(v21 + 32) + 32) |= v19;
  }
}

uint64_t sub_18D1EB764()
{

  return swift_deallocObject();
}

uint64_t type metadata completion function for CubicKeyframe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  result = a4(319, *(a1 + 16), *(a1 + 24));
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _ResolvedKeyframeTrackContent.Linear(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for CombinedKeyframes(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for KeyframeTrackContentBuilder.Conditional(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v2;
  v5[2] = *(a1 + 48);
  v6 = v1;
  result = type metadata accessor for KeyframeTrackContentBuilder.Conditional.Storage(319, v5);
  if (v4 <= 0x3F)
  {
    *&v5[0] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for KeyframeTrackContentBuilder.Conditional.Storage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for KeyframeTrack(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for CustomModifier(uint64_t a1, uint64_t a2)
{
  return swift_getGenericMetadata();
}

{
  return swift_getGenericMetadata();
}

uint64_t type metadata completion function for CustomModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Font.PlatformFontProvider(uint64_t a1)
{
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type CTFontRef and conformance CTFontRef();
  return _CFObject.hash(into:)();
}

CTFontDescriptorRef protocol witness for FontProvider.resolveDescriptor(in:) in conformance Font.PlatformFontProvider(uint64_t a1)
{
  v2 = *(a1 + 25);
  result = (*(*(a1 + 16) + 72))(*v1);
  v4 = result;
  if (v2 == 1)
  {
    v5 = CTFontDescriptorRef.clearFeatures()();

    return v5;
  }

  return result;
}

uint64_t type metadata completion function for KeyframeAnimator(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ContentOffsetAdjustmentReason(uint64_t result, unsigned int a2, unsigned int a3)
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

double _Glass.interaction(_:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 40);
  if (v3 == 5)
  {
    LOBYTE(v3) = *(v2 + 16);
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v3;
  *(a2 + 24) = *(v2 + 24);
  *(a2 + 40) = v6;
  outlined copy of _Glass.Variant.Role(v4, v5);

  return result;
}

double View.monospacedDigit()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  View.transformEnvironment<A>(_:transform:)(KeyPath, closure #1 in View.monospacedDigit(), 0, a1);

  return result;
}

void closure #1 in View.fontWeight(_:)(unint64_t *a1, uint64_t a2, char a3, __n128 a4)
{
  if ((a3 & 1) == 0)
  {
    _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for AnyDynamicFontModifier);
    *(swift_allocObject() + 16) = a2;
    MEMORY[0x193ABF170]();
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return;
  }

  v5 = *a1;
  v27 = *a1 >> 62;
  v6 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v27)
  {
    goto LABEL_90;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      if (v27)
      {
        goto LABEL_79;
      }

      v8 = *(v6 + 16);
LABEL_80:
      if (v5 >> 62)
      {
        v26 = __CocoaSet.count.getter();
        if (v26 >= v8)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26 >= v8)
        {
LABEL_82:
          specialized Array.replaceSubrange<A>(_:with:)(v8, v26, a4);
          return;
        }
      }

      __break(1u);
      goto LABEL_93;
    }

    if ((v5 & 0xC000000000000001) == 0)
    {
      if (v8 < *(v6 + 16))
      {

        goto LABEL_11;
      }

      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v7 = __CocoaSet.count.getter();
      goto LABEL_4;
    }

    MEMORY[0x193AC03C0](v8, v5);
LABEL_11:
    _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for AnyDynamicFontModifier);
    if (swift_dynamicCastClass())
    {
      break;
    }

    type metadata accessor for AnyStaticFontModifier<Font.ItalicModifier>(0, &lazy cache variable for type metadata for AnyStaticFontModifier<Font.BoldModifier>, &type metadata for Font.BoldModifier, &protocol witness table for Font.BoldModifier);
    if (swift_dynamicCastClass())
    {
      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v10 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        v11 = dyld_program_sdk_at_least();

        if ((v11 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v12 = static Semantics.forced;

        if (v12 < v10)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_84;
    }
  }

LABEL_29:
  v14 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    if (v27)
    {
      if (v14 == __CocoaSet.count.getter())
      {
        goto LABEL_80;
      }
    }

    else if (v14 == *(v6 + 16))
    {
      goto LABEL_80;
    }

    v6 = v8 + 5;
    while (2)
    {
      v15 = v6 - 4;
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AC03C0](v6 - 4, v5);
      }

      else
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_85;
        }

        if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_86;
        }
      }

      if (swift_dynamicCastClass())
      {

        goto LABEL_70;
      }

      type metadata accessor for AnyStaticFontModifier<Font.ItalicModifier>(0, &lazy cache variable for type metadata for AnyStaticFontModifier<Font.BoldModifier>, &type metadata for Font.BoldModifier, &protocol witness table for Font.BoldModifier);
      if (swift_dynamicCastClass())
      {
        if (one-time initialization token for v7 != -1)
        {
          swift_once();
        }

        v16 = static Semantics.v7;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          v17 = dyld_program_sdk_at_least();

          if (v17)
          {
            goto LABEL_48;
          }

LABEL_70:
          v24 = v6 - 3;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_87;
          }

          if (v5 >> 62)
          {
            v25 = __CocoaSet.count.getter();
          }

          else
          {
            v25 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v6;
          if (v24 == v25)
          {
            goto LABEL_80;
          }

          continue;
        }

        v20 = static Semantics.forced;

        if (v20 < v16)
        {
          goto LABEL_70;
        }

LABEL_48:
        if (v15 == v8)
        {
LABEL_69:
          v9 = __OFADD__(v8++, 1);
          if (v9)
          {
            goto LABEL_88;
          }

          goto LABEL_70;
        }
      }

      else
      {

        if (v15 == v8)
        {
          goto LABEL_69;
        }
      }

      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x193AC03C0](v8, v5);
      v19 = MEMORY[0x193AC03C0](v6 - 4, v5);
    }

    else
    {
      if (v8 < 0)
      {
        goto LABEL_94;
      }

      v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v21)
      {
        goto LABEL_95;
      }

      if (v15 >= v21)
      {
        goto LABEL_96;
      }

      v18 = *(v5 + 8 * v8 + 32);
      v19 = *(v5 + 8 * v6);
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v22 = (v5 >> 62) & 1;
    }

    else
    {
      LODWORD(v22) = 0;
    }

    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v19;

    if ((v5 & 0x8000000000000000) != 0 || v22)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v23 = v5 & 0xFFFFFFFFFFFFFF8;
      if ((v15 & 0x8000000000000000) != 0)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        v8 = __CocoaSet.count.getter();
        goto LABEL_80;
      }
    }

    else if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_78;
    }

    if (v15 >= *(v23 + 16))
    {
      goto LABEL_89;
    }

    *(v23 + 8 * v6) = v18;

    *a1 = v5;
    goto LABEL_69;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013FontModifiersF033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt2g5(uint64_t *a1, unint64_t a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(*a1);
  if (!v4 || (v5 = v4[9], , v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI15AnyFontModifierC_Tt1g5(a2, v5), , (v6 & 1) == 0))
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<FontModifiersKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);
    v9 = v8;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v9, 0, v7);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<FontModifiersKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<FontModifiersKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FontModifiersKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<FontModifiersKey>>);
    }
  }
}

void type metadata accessor for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(255, a3, a4, a5, type metadata accessor for OffsetShapeStyle);
    v9 = type metadata accessor for ShapeStyleBox(a1, v7, &protocol witness table for OffsetShapeStyle<A>, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void OffsetShapeStyle._apply(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v5;
  v12 = v5 + 1;
  v13 = v5[1];
  v14 = v5[2];
  v15 = *(v5 + 24);
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      MEMORY[0x1EEE9AC00](v5);
      v28 = *(v27 + 24);
      *(&v45 - 4) = v4;
      *(&v45 - 3) = v28;
      *(&v45 - 2) = v2;
      type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(0, v27, v29, v30);
      ShapeStyle.mapCopiedStyle<A>(in:body:)(a1, partial apply for closure #1 in OffsetShapeStyle._apply(to:), (&v45 - 6), v4, v31, v28, &protocol witness table for OffsetShapeStyle<A>);
      return;
    }

    if (v15 != 4)
    {
      if (v14 | v13 | v11)
      {
        v35 = v6;
        (*(v7 + 16))(v10, v2, v4, v8.n128_f64[0]);
        v36 = AnyShapeStyle.init<A>(_:)(v10, v4, *(v35 + 24));
        outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
        *(a1 + 32) = v36;
        v37 = 2;
      }

      else
      {
        outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
        *(a1 + 32) = 0;
        v37 = 4;
      }

      *(a1 + 40) = v37;
      return;
    }

    v21 = *(v2 + *(v6 + 36));
    v22 = __OFADD__(v21, v11);
    v23 = v21 + v11;
    if (v22)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *a1 = v23;
    *v12 = 0;
    v5[2] = 0;
    v24 = 4;
  }

  else
  {
    if (!*(v5 + 24))
    {
      v25 = *(v2 + *(v6 + 36));
      v22 = __OFADD__(v25, v11);
      v26 = v25 + v11;
      if (v22)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      *a1 = v26;
      *v12 = 0;
      v5[2] = 0;
      *(v5 + 24) = 0;
      goto LABEL_19;
    }

    if (v15 == 1)
    {
      v16 = *(v2 + *(v6 + 36));
      v17 = v13 + v16;
      if (!__OFADD__(v13, v16))
      {
        v18 = v14 + v16;
        if (!__OFADD__(v14, v16))
        {
          if (v18 >= v17)
          {
            v45 = v2;
            v46 = v6;
            v48 = v11;
            if (*(a1 + 40) == 1)
            {
              v19 = *(a1 + 32);

              outlined consume of _ShapeStyle_Shape.Result(v20, 1u);
              *(a1 + 32) = 0;
              *(a1 + 40) = 5;
            }

            else
            {
              v19 = MEMORY[0x1E69E7CC0];
            }

            v47 = v19;
            _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v48, v16);
            v38 = *(a1 + 32);
            *(a1 + 32) = v47;
            v39 = *(a1 + 40);
            *(a1 + 40) = 1;

            outlined consume of _ShapeStyle_Shape.Result(v38, v39);

            *a1 = v11;
            *(a1 + 8) = v17;
            *(a1 + 16) = v18;
            *(a1 + 24) = 1;
            (*(*(v46 + 24) + 32))(a1, v4);
            v48 = v11;
            if (!__OFSUB__(0, v16))
            {
              if (*(a1 + 40) == 1)
              {
                v40 = *(a1 + 32);

                outlined consume of _ShapeStyle_Shape.Result(v41, 1u);
                *(a1 + 32) = 0;
                *(a1 + 40) = 5;
              }

              else
              {
                v40 = MEMORY[0x1E69E7CC0];
              }

              v47 = v40;
              _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v48, -v16);
              v42 = v47;
              v43 = *(a1 + 32);
              v44 = *(a1 + 40);

              outlined consume of _ShapeStyle_Shape.Result(v43, v44);
              *(a1 + 32) = v42;
              *(a1 + 40) = 1;

              return;
            }

LABEL_39:
            __break(1u);
            return;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    v32 = *(v2 + *(v6 + 36));
    v22 = __OFADD__(v32, v11);
    v33 = v32 + v11;
    if (v22)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    *a1 = v33;
    *v12 = 0;
    v5[2] = 0;
    v24 = 2;
  }

  *(a1 + 24) = v24;
LABEL_19:
  v34 = *(*(v6 + 24) + 32);

  v34(a1, v4, v8);
}

double static Material.Layer.SDFLayer.gradient(colors:distances:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v20;
    v10 = (a1 + 32);
    v11 = *(v20 + 16);
    v12 = 20 * v11;
    do
    {
      v13 = *v10;
      v14 = *(v20 + 24);
      v15 = v11 + 1;
      if (v11 >= v14 >> 1)
      {
        v19 = *v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1);
        v13 = v19;
      }

      *(v20 + 16) = v15;
      v16 = v20 + v12;
      *(v16 + 32) = v13;
      *(v16 + 48) = 2143289344;
      v12 += 20;
      ++v10;
      v11 = v15;
      --v7;
    }

    while (v7);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *a4 = v17 | 0x2000000000000000;
  a4[1] = 0;

  return result;
}

uint64_t sub_18D1ECFDC()
{

  return swift_deallocObject();
}

SwiftUI::Spacing __swiftcall ResolvedStyledText.StringDrawing.spacing()()
{
  v2 = v0;
  ResolvedStyledText.maxFontMetrics.getter(v27);
  swift_beginAccess();
  v3 = *(v1 + 168);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = *(v1 + 192);
  swift_beginAccess();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, v26, INFINITY, INFINITY, v3, v4, v5, v6);
  swift_endAccess();
  swift_beginAccess();
  v7 = *(v1 + 128);
  v8 = *(v1 + 96);
  v33 = *(v1 + 112);
  v34 = v7;
  v9 = *(v1 + 128);
  v35 = *(v1 + 144);
  v10 = *(v1 + 64);
  v11 = *(v1 + 32);
  v29 = *(v1 + 48);
  v30 = v10;
  v12 = *(v1 + 64);
  v13 = *(v1 + 96);
  v31 = *(v1 + 80);
  v32 = v13;
  v14 = *(v1 + 32);
  v28[0] = *(v1 + 16);
  v28[1] = v14;
  v22 = v33;
  v23 = v9;
  v24 = *(v1 + 144);
  v18 = v29;
  v19 = v12;
  v20 = v31;
  v21 = v8;
  v36 = *(v1 + 160);
  v25 = *(v1 + 160);
  v16 = v28[0];
  v17 = v11;
  outlined init with copy of TextLayoutProperties(v28, v37);
  static Spacing.textSpacing(maxFontMetrics:idealMetrics:layoutProperties:)(v27, v26, &v16, v2);
  v37[6] = v22;
  v37[7] = v23;
  v37[8] = v24;
  v38 = v25;
  v37[2] = v18;
  v37[3] = v19;
  v37[4] = v20;
  v37[5] = v21;
  v37[0] = v16;
  v37[1] = v17;
  return outlined destroy of TextLayoutProperties(v37);
}

uint64_t static Spacing.textSpacing(maxFontMetrics:idealMetrics:layoutProperties:)@<X0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = a1[1];
  v40 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a3 + 96);
  v9 = *(a3 + 104);
  v10 = *(a3 + 112);
  if (*(a3 + 81))
  {
    if (one-time initialization token for edgeRightText != -1)
    {
      swift_once();
    }

    v38 = static Spacing.Category.edgeRightText;
    if (one-time initialization token for edgeLeftText != -1)
    {
      swift_once();
    }

    v11 = static Spacing.Category.edgeLeftText;
    if (one-time initialization token for rightTextBaseline != -1)
    {
      swift_once();
    }

    v12 = static Spacing.Category.rightTextBaseline;
    if (one-time initialization token for leftTextBaseline != -1)
    {
      swift_once();
    }

    v13 = static Spacing.Category.leftTextBaseline;
    v14 = 3;
    v15 = 1;
  }

  else
  {
    if (one-time initialization token for edgeAboveText != -1)
    {
      swift_once();
    }

    v38 = static Spacing.Category.edgeAboveText;
    if (one-time initialization token for edgeBelowText != -1)
    {
      swift_once();
    }

    v11 = static Spacing.Category.edgeBelowText;
    if (one-time initialization token for textBaseline != -1)
    {
      swift_once();
    }

    v14 = 0;
    v13 = static Spacing.Category.textBaseline;
    v15 = 2;
    v12 = static Spacing.Category.textBaseline;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v39 = v5;
  v16 = v5 - v6;
  v17 = static Semantics_v5.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  v18 = v16 * 0.1;
  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    v19 = dyld_program_sdk_at_least();
    v20 = 4.0;
    if ((v19 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v20 = 4.0;
    if (static Semantics.forced < v17)
    {
      goto LABEL_28;
    }
  }

  v20 = v8;
  if (v8 == 1.0)
  {
    v21 = ceil(v18);
    goto LABEL_29;
  }

LABEL_28:
  v21 = v20 * ceil(v18 / v20);
LABEL_29:
  v22 = one-time initialization token for uniformLineHeight;

  if (v22 != -1)
  {
    swift_once();
  }

  v37 = v8;
  v23 = v6;
  if (v9 != static Text.Sizing.uniformLineHeight)
  {
    v26 = v7;

    goto LABEL_35;
  }

  v24 = qword_1ED52F420;

  v25 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(v10, v24);

  v26 = v7;
  if ((v25 & 1) == 0)
  {
LABEL_35:
    v7 = 0.0;
  }

  v27 = a2[1];
  v28 = a2[3];
  v29 = a2[4];
  type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDAC2E0;
  if (one-time initialization token for textToText != -1)
  {
    swift_once();
  }

  v31 = static Spacing.Category.textToText;
  *(inited + 32) = static Spacing.Category.textToText;
  *(inited + 40) = v14;
  v32 = v7 * 0.5 - v23;
  v33 = v39 + v7 * 0.5;
  *(inited + 48) = v33;
  *(inited + 56) = v32;
  v34 = v16 + v21 - v40;
  *(inited + 64) = v26 - v7;
  *(inited + 72) = v37;
  *(inited + 80) = 2;
  if (v34 <= v21 + v32)
  {
    v34 = v21 + v32;
  }

  *(inited + 88) = v31;
  *(inited + 96) = v15;
  *(inited + 104) = v33;
  *(inited + 112) = v32;
  *(inited + 120) = v26 - v7;
  *(inited + 128) = v37;
  *(inited + 136) = 1;
  *(inited + 144) = v13;
  *(inited + 152) = v15;
  *(inited + 160) = -(v27 - v29);
  *(inited + 176) = 0;
  *(inited + 184) = 0;
  *(inited + 168) = 0;
  *(inited + 192) = 0;
  *(inited + 200) = v12;
  *(inited + 208) = v14;
  *(inited + 216) = -v28;
  *(inited + 224) = 0;
  *(inited + 232) = 0;
  *(inited + 248) = 0;
  *(inited + 240) = 0;
  *(inited + 256) = v38;
  *(inited + 264) = v14;
  *(inited + 272) = v16 + v21 - v33;
  *(inited + 280) = 0;
  *(inited + 288) = 0;
  *(inited + 304) = 0;
  *(inited + 296) = 0;
  *(inited + 312) = v11;
  *(inited + 320) = v15;
  *(inited + 328) = v34;
  *(inited + 336) = 0;
  *(inited + 344) = 0;
  *(inited + 360) = 0;
  *(inited + 352) = 0;
  v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
  result = swift_setDeallocating();
  *a4 = v35;
  return result;
}

BOOL specialized max<A>(_:_:)@<W0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  v6 = a1[1];
  v21 = *a1;
  v22 = v6;
  v23 = v4;
  v7 = a2[1];
  v18 = *a2;
  v19 = v7;
  v20 = v5;
  result = specialized static Spacing.Value.< infix(_:_:)(&v18, &v21);
  v9 = &v21 + 8;
  if (!result)
  {
    v9 = &v18 + 8;
  }

  v10 = *v9;
  if (result)
  {
    v11 = &v22;
  }

  else
  {
    v11 = &v19;
  }

  v12 = *v11;
  if (result)
  {
    v13 = &v22 + 8;
  }

  else
  {
    v13 = &v19 + 8;
  }

  v14 = *v13;
  if (result)
  {
    v15 = &v23;
  }

  else
  {
    v15 = &v20;
  }

  v16 = *v15;
  if (result)
  {
    v17 = &v21;
  }

  else
  {
    v17 = &v18;
  }

  *a3 = *v17;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;
  *(a3 + 24) = v14;
  *(a3 + 32) = v16;
  return result;
}

BOOL specialized static Spacing.Value.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 32);
  if (*(a1 + 32))
  {
    v5 = *(a1 + 16);
    v8 = *(a2 + 8);
    v7 = *(a2 + 16);
    if (*(a1 + 32) == 1)
    {
      if (v4 != 1)
      {
        v9 = 1;
        return v9 < v4;
      }
    }

    else if (v4 != 2)
    {
      v9 = 2;
      return v9 < v4;
    }

    v6 = *(a1 + 8);
    return (v2 != v3 || v6 != v8 || v5 != v7 || *(a1 + 24) != *(a2 + 24)) && v2 + v6 + v5 < v3 + v8 + v7;
  }

  else
  {
    if (*(a2 + 32))
    {
      v9 = 0;
      return v9 < v4;
    }

    return v2 != v3 && v2 < v3;
  }
}

double protocol witness for LayoutEngine.lengthThatFits(_:in:) in conformance StyledTextLayoutEngine(uint64_t *a1, char a2)
{
  v4 = *(a1 + 8);
  if ((a2 & 1) != 0 || (a1[1] & 1) != 0 || (result = 0.0, (*a1 & 0x7FFFFFFFFFFFFFFFLL) != 0))
  {
    v6 = *(a1 + 24);
    v7 = a1[2];
    v8 = *v2;
    v9 = v2[1];
    v11 = *a1;
    v12 = v4;
    v13 = v7;
    v14 = v6;
    StyledTextLayoutEngine.sizeThatFits(_:)(&v11, v8, v9);
    if (a2)
    {
      return v10;
    }
  }

  return result;
}

Swift::Void __swiftcall _ShapeStyle_Pack.adjustLevelIndices(of:by:)(SwiftUI::_ShapeStyle_Name of, Swift::Int by)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v6 = *of;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_25:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    v8 = 0;
    *v2 = v3;
    while (1)
    {
      while (1)
      {
        if (v8 >= v3[2])
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v9 = &v3[16 * v8];
        v12 = *(v9 + 32);
        v10 = v9 + 4;
        v11 = v12;
        if (v12 >= v6)
        {
          break;
        }

LABEL_5:
        if (++v8 >= v4)
        {
          goto LABEL_19;
        }
      }

      if (v6 < v11)
      {
        goto LABEL_19;
      }

      v13 = *(v10 + 1);
      v14 = v13 + by;
      if (__OFADD__(v13, by))
      {
        goto LABEL_22;
      }

      v15 = swift_isUniquelyReferenced_nonNull_native();
      if ((v14 & 0x8000000000000000) == 0)
      {
        if ((v15 & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }

        if (v8 >= v3[2])
        {
          goto LABEL_23;
        }

        BYTE1(v3[16 * v8 + 4]) = v14;
        goto LABEL_5;
      }

      if ((v15 & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      }

      v16 = v3[2];
      if (v8 >= v16)
      {
        goto LABEL_24;
      }

      v17 = v16 - 1;
      v18 = &v3[16 * v8];
      v19 = v18[2];
      v20 = v18[3];
      v21 = v18[5];
      v25[2] = v18[4];
      v25[3] = v21;
      v25[0] = v19;
      v25[1] = v20;
      v22 = v18[6];
      v23 = v18[7];
      v24 = v18[9];
      v25[6] = v18[8];
      v25[7] = v24;
      v25[4] = v22;
      v25[5] = v23;
      memmove(v18 + 2, v18 + 10, (v17 - v8) << 7);
      v3[2] = v17;
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v25, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      if (v8 >= --v4)
      {
LABEL_19:
        *v2 = v3;
        return;
      }
    }
  }
}

void specialized OffsetShapeStyle._apply(to:)(uint64_t *a1, Swift::Int a2)
{
  v32 = a2;
  v3 = *a1;
  v4 = a1 + 1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  if (v7 <= 2)
  {
    if (*(a1 + 24))
    {
      if (v7 == 1)
      {
        v8 = v5 + a2;
        if (!__OFADD__(v5, a2))
        {
          v9 = v6 + a2;
          if (!__OFADD__(v6, a2))
          {
            if (v9 >= v8)
            {
              v31 = *a1;
              if (*(a1 + 40) == 1)
              {
                v10 = a1[4];
                v11 = a2;

                outlined consume of _ShapeStyle_Shape.Result(v12, 1u);
                a2 = v11;
                a1[4] = 0;
                *(a1 + 40) = 5;
              }

              else
              {
                v10 = MEMORY[0x1E69E7CC0];
              }

              v26 = a2;
              _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v31, a2);
              outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
              a1[4] = v10;
              *(a1 + 40) = 1;
              *a1 = v3;
              a1[1] = v8;
              a1[2] = v9;
              *(a1 + 24) = 1;
              SystemColorsStyle._apply(to:)(a1);
              v31 = v3;
              v27 = __OFSUB__(0, v26);
              v28 = -v26;
              if (!v27)
              {
                if (*(a1 + 40) == 1)
                {
                  v29 = a1[4];

                  outlined consume of _ShapeStyle_Shape.Result(v30, 1u);
                  a1[4] = 0;
                  *(a1 + 40) = 5;
                }

                else
                {
                  v29 = MEMORY[0x1E69E7CC0];
                }

                _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v31, v28);
                outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
                a1[4] = v29;
                v23 = 1;
                goto LABEL_47;
              }

              goto LABEL_81;
            }

LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        goto LABEL_76;
      }

      v20 = a2 + v3;
      if (__OFADD__(a2, v3))
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      *a1 = v20;
      *v4 = 0;
      a1[2] = 0;
      *(a1 + 24) = 2;
      if (v20 > 4)
      {
        goto LABEL_22;
      }

      v25 = (a2 + v3);
      if (v25 <= 1)
      {
        if (!(a2 + v3))
        {
          if (one-time initialization token for primary != -1)
          {
            swift_once();
          }

          v21 = &static Color.primary;
          goto LABEL_25;
        }

        if (v25 == 1)
        {
          if (one-time initialization token for secondary != -1)
          {
            swift_once();
          }

          v21 = &static Color.secondary;
          goto LABEL_25;
        }

LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (v25 == 2)
      {
        if (one-time initialization token for tertiary != -1)
        {
          swift_once();
        }

        v21 = &static Color.tertiary;
        goto LABEL_25;
      }

      if (v25 == 3)
      {
        if (one-time initialization token for quaternary != -1)
        {
          swift_once();
        }

        v21 = &static Color.quaternary;
        goto LABEL_25;
      }

LABEL_73:
      if (v25 == 4)
      {
LABEL_22:
        if (one-time initialization token for quinary != -1)
        {
          swift_once();
        }

        v21 = &static Color.quinary;
LABEL_25:
        v22 = *v21;

        outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
        a1[4] = v22;
        v23 = 3;
        goto LABEL_47;
      }

      goto LABEL_74;
    }

    v13 = a2 + v3;
    if (__OFADD__(a2, v3))
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    *a1 = v13;
    *v4 = 0;
    a1[2] = 0;
    *(a1 + 24) = 0;
    if (v13 > 4)
    {
LABEL_15:
      if (one-time initialization token for quinary == -1)
      {
LABEL_16:
        v14 = &static Color.quinary;
LABEL_17:
        v15 = *v14;

        outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
        a1[4] = v15;
        *(a1 + 40) = 0;
        return;
      }

LABEL_82:
      swift_once();
      goto LABEL_16;
    }

    v25 = (a2 + v3);
    if (v25 <= 1)
    {
      if (!(a2 + v3))
      {
        if (one-time initialization token for primary != -1)
        {
          swift_once();
        }

        v14 = &static Color.primary;
        goto LABEL_17;
      }

      if (v25 == 1)
      {
        if (one-time initialization token for secondary != -1)
        {
          swift_once();
        }

        v14 = &static Color.secondary;
        goto LABEL_17;
      }
    }

    else
    {
      switch(v25)
      {
        case 2u:
          if (one-time initialization token for tertiary != -1)
          {
            swift_once();
          }

          v14 = &static Color.tertiary;
          goto LABEL_17;
        case 3u:
          if (one-time initialization token for quaternary != -1)
          {
            swift_once();
          }

          v14 = &static Color.quaternary;
          goto LABEL_17;
        case 4u:
          goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_73;
  }

  if (v7 != 3)
  {
    if (v7 == 4)
    {
      if (!__OFADD__(a2, v3))
      {
        *a1 = a2 + v3;
        *v4 = 0;
        a1[2] = 0;
        *(a1 + 24) = 4;
        return;
      }

      goto LABEL_77;
    }

    if (v6 | v5 | v3)
    {
      type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<SystemColorsStyle>, &type metadata for SystemColorsStyle, &protocol witness table for SystemColorsStyle, type metadata accessor for ShapeStyleBox);
      v24 = swift_allocObject();
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = v24;
      v23 = 2;
    }

    else
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      v23 = 4;
    }

LABEL_47:
    *(a1 + 40) = v23;
    return;
  }

  v16 = a2;
  SystemColorsStyle._apply(to:)(a1);
  if (*(a1 + 40) == 2)
  {
    v17 = a1[4];
    type metadata accessor for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>(0, &lazy cache variable for type metadata for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>, &lazy cache variable for type metadata for OffsetShapeStyle<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;

    outlined consume of _ShapeStyle_Shape.Result(v19, 2u);
    a1[4] = v18;
    *(a1 + 40) = 2;
  }
}