uint64_t outlined destroy of _EndedGesture<SpatialTapGesture>(uint64_t a1)
{
  type metadata accessor for SingleTapGesture<TappableSpatialEvent>(0, &lazy cache variable for type metadata for _EndedGesture<SpatialTapGesture>, &type metadata for SpatialTapGesture, &protocol witness table for SpatialTapGesture, MEMORY[0x1E697E230]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.accessibilitySortPriority(_:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = a3;
  v5 = 0;
  return View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980040], &v4, 1, a1, MEMORY[0x1E6980040], a2, MEMORY[0x1E6980038]);
}

uint64_t initializeWithCopy for SizeFittingState.Child(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v5 = v3;

  return a1;
}

uint64_t View.coordinateSpace<A>(name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _CoordinateSpaceModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

_BYTE *initializeWithCopy for TextInputSuggestionsModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))(&a1[*(v4 + 80) + 1] & ~*(v4 + 80), &a2[*(v4 + 80) + 1] & ~*(v4 + 80));
  return a1;
}

uint64_t View.onTapGesture<A>(count:coordinateSpace:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a6 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v14);
  v20 = a1;
  (*(a8 + 8))(v21, a6, a8);
  (*(v13 + 8))(v16, a6);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;

  Gesture.onEnded(_:)();

  outlined destroy of SpatialTapGesture(&v20);
  type metadata accessor for SingleTapGesture<TappableSpatialEvent>(0, &lazy cache variable for type metadata for _EndedGesture<SpatialTapGesture>, &type metadata for SpatialTapGesture, &protocol witness table for SpatialTapGesture, MEMORY[0x1E697E230]);
  lazy protocol witness table accessor for type _EndedGesture<SpatialTapGesture> and conformance _EndedGesture<A>();
  View.gesture<A>(_:including:)();
  return outlined destroy of _EndedGesture<SpatialTapGesture>(v22);
}

uint64_t sub_18BE49CAC()
{

  return swift_deallocObject();
}

Swift::Int specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30 = v8;
    v31 = v3;
    v29[1] = v29;
    MEMORY[0x1EEE9AC00](v10);
    v32 = v29 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v9);
    v8 = a1 + 64;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v3 = v12 & *(a1 + 64);
    v13 = (v11 + 63) >> 6;

    v33 = 0;
    v14 = 0;
    while (v3)
    {
      v15 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v9 = v15 | (v14 << 6);
      v18 = (*(a1 + 48) + 16 * v9);
      v19 = v18[1];
      v20 = (*(a1 + 56) + 48 * v9);
      v21 = *v18;
      v22 = *(v20 + 25);
      v23 = v20[1];
      v35 = *v20;
      *v36 = v23;
      *&v36[9] = v22;
      v37[0] = v21;
      v37[1] = v19;
      *(v39 + 9) = v22;
      v38 = v35;
      v39[0] = *v36;
      if ((v22 >> 56) == *(a2 + 144))
      {
        outlined init with copy of (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)(v37, v34);
        outlined destroy of SizeFittingState.Child(&v35);

        *&v32[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
        }

        ++v33;
      }

      else
      {
        v9 = v35;
        v24 = v36[24];
        outlined init with copy of (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)(v37, v34);
        outlined init with copy of SizeFittingState.Child(&v35, v34);
        AGSubgraphRef.willInvalidate(isInserted:)(v24);
        AGSubgraphInvalidate();
        outlined destroy of SizeFittingState.Child(&v35);
        outlined destroy of SizeFittingState.Child(&v35);
      }
    }

    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        v25 = specialized _NativeDictionary.extractDictionary(using:count:)(v32, v30, v33, a1);

        return v25;
      }

      v17 = *(v8 + 8 * v14);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v3 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();

  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI12_ViewList_IDV9CanonicalVAH16SizeFittingStateC5ChildVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i5UI12_kl5_IDV9n6V_AI16opq2C5R4VTG5AQxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAlPIsgnndzo_Tf1nc_n03_s7i4UI16opq42C13applyChildren10selectLast2toySb_SbAA12_k25OutputsV_SbtXEtFSbAA01_K7l5_IDV9n9V3key_AC5R16V5valuet_tXEfU0_ANTf1nnc_n(v27, v8, a1, a2);
  v25 = v28;
  MEMORY[0x18D0110E0](v27, -1, -1);

  return v25;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<_ViewList_ID.Canonical, SizeFittingState.Child>(0);
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = (*(v4 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = (*(v4 + 56) + 48 * v16);
    v20 = *v17;
    v21 = *(v19 + 25);
    v22 = v19[1];
    v40 = *v19;
    v41[0] = v22;
    *(v41 + 9) = v21;
    v38 = v20;
    v39 = v18;
    Hasher.init(_seed:)();

    outlined init with copy of SizeFittingState.Child(&v40, v37);
    _ViewList_ID.Canonical.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
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
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    v32 = v39;
    *v31 = v38;
    v31[1] = v32;
    v33 = (*(v9 + 56) + 48 * v26);
    v34 = *(v41 + 9);
    v35 = v41[0];
    *v33 = v40;
    v33[1] = v35;
    *(v33 + 25) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<ViewIdentity, AlertStorage>(0);
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
  v54 = v4;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(v4 + 56);
      v18 = *(*(v4 + 48) + 4 * v16);
      v19 = (v17 + 248 * v16);
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[3];
      v58 = v19[2];
      v59 = v22;
      v23 = v19[7];
      v25 = v19[4];
      v24 = v19[5];
      v62 = v19[6];
      v63 = v23;
      v60 = v25;
      v61 = v24;
      v26 = v19[11];
      v28 = v19[8];
      v27 = v19[9];
      v66 = v19[10];
      v67 = v26;
      v64 = v28;
      v65 = v27;
      v30 = v19[13];
      v29 = v19[14];
      v31 = v19[12];
      v71 = *(v19 + 30);
      v69 = v30;
      v70 = v29;
      v68 = v31;
      v56 = v21;
      v57 = v20;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v32 = -1 << *(v9 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
      {
        break;
      }

      v35 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      *(*(v9 + 48) + 4 * v35) = v18;
      v40 = *(v9 + 56) + 248 * v35;
      v41 = v56;
      v42 = v57;
      v43 = v59;
      *(v40 + 32) = v58;
      *(v40 + 48) = v43;
      *v40 = v41;
      *(v40 + 16) = v42;
      v44 = v60;
      v45 = v61;
      v46 = v63;
      *(v40 + 96) = v62;
      *(v40 + 112) = v46;
      *(v40 + 64) = v44;
      *(v40 + 80) = v45;
      v47 = v64;
      v48 = v65;
      v49 = v67;
      *(v40 + 160) = v66;
      *(v40 + 176) = v49;
      *(v40 + 128) = v47;
      *(v40 + 144) = v48;
      v50 = v68;
      v51 = v69;
      v52 = v70;
      *(v40 + 240) = v71;
      *(v40 + 208) = v51;
      *(v40 + 224) = v52;
      *(v40 + 192) = v50;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        outlined init with copy of AlertStorage(&v56, v55);
        return v9;
      }

      result = outlined init with copy of AlertStorage(&v56, v55);
      v4 = v54;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v36 = 0;
    v37 = (63 - v32) >> 6;
    while (++v34 != v37 || (v36 & 1) == 0)
    {
      v38 = v34 == v37;
      if (v34 == v37)
      {
        v34 = 0;
      }

      v36 |= v38;
      v39 = *(v12 + 8 * v34);
      if (v39 != -1)
      {
        v35 = __clz(__rbit64(~v39)) + (v34 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
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
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<ViewIdentity, ConfirmationDialog>(0);
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    outlined init with copy of ConfirmationDialog(*(v4 + 56) + 184 * v16, v28);
    outlined init with take of ConfirmationDialog(v28, v27);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);
    result = Hasher._finalize()();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 4 * v21) = v17;
    result = outlined init with take of ConfirmationDialog(v27, *(v9 + 56) + 184 * v21);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<Namespace.ID, NavigationDestinationPresentation>(0);
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(*(v4 + 48) + 8 * v16);
    outlined init with copy of NavigationDestinationPresentation(v17 + 96 * v16, v35);
    v32 = v35[2];
    v33 = v35[3];
    *v34 = v36[0];
    *&v34[9] = *(v36 + 9);
    v30 = v35[0];
    v31 = v35[1];
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v18);
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v18;
    v27 = (*(v9 + 56) + 96 * v22);
    v27[2] = v32;
    v27[3] = v33;
    v27[4] = *v34;
    *(v27 + 73) = *&v34[9];
    *v27 = v30;
    v27[1] = v31;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<TabCustomizationID, TabCustomizationEntry>(0);
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
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v35 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(v4 + 48) + 24 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = (v17 + 2 * v16);
    v36 = v22[1];
    v37 = *v22;
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v21);

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
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
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v9 + 48) + 24 * v26;
    *v31 = v19;
    *(v31 + 8) = v20;
    *(v31 + 16) = v21;
    v32 = (*(v9 + 56) + 2 * v26);
    *v32 = v37;
    v32[1] = v36;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    v10 = v35;
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
      v35 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<AccessibilityEnabledTechnology, AccessibilityFocus.Target>(0);
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    outlined init with copy of AccessibilityFocus.Target(*(v4 + 56) + 8 * v16, v28);
    outlined init with take of AccessibilityFocus.Target(v28, v27);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);
    result = Hasher._finalize()();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v17;
    result = outlined init with take of AccessibilityFocus.Target(v27, *(v9 + 56) + 8 * v21);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t View.labelStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LabelStyleWritingModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t type metadata completion function for TransformBox(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t closure #1 in Label<>.init<A>(_:image:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t Label<>.init<A>(_:systemImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  closure #1 in Label<>.init<A>(_:image:)(a1, &v17);
  specialized Image.init(systemName:)(a2, a3);
  v11 = v18;
  v12 = v19;
  *a6 = v17;
  *(a6 + 16) = v11;
  v13 = *(a4 - 8);
  *(a6 + 24) = v12;
  *(a6 + 32) = v14;
  v15 = *(v13 + 8);

  return v15(a1, a4);
}

double specialized Image.init(systemName:)(uint64_t a1, uint64_t a2)
{

  outlined consume of PresentationDimmingBehavior?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  _s7SwiftUI26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetF0VGMaTm_1(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider, MEMORY[0x1E6981618], MEMORY[0x1E697E9B8]);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = 0;
  *(v4 + 36) = 1;
  *(v4 + 40) = xmmword_18CD874C0;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  result = -0.0;
  *(v4 + 72) = xmmword_18CD68310;
  *(v4 + 88) = 0;
  return result;
}

void outlined consume of PresentationDimmingBehavior?(id a1)
{
  if (a1 != 2)
  {
    outlined consume of Image.Location(a1);
  }
}

unint64_t lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider()
{
  result = lazy protocol witness table cache variable for type Image.NamedImageProvider and conformance Image.NamedImageProvider;
  if (!lazy protocol witness table cache variable for type Image.NamedImageProvider and conformance Image.NamedImageProvider)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981610], MEMORY[0x1E6981618], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Image.NamedImageProvider and conformance Image.NamedImageProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.ViewThatFitsRepresentationKey, &type metadata for _GraphInputs.ViewThatFitsRepresentationKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey);
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:)(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, _OWORD *))
{
  v4 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v4;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  a3(v10, v8);
  v6 = v10[1];
  *a1 = v10[0];
  a1[1] = v6;
  return 0;
}

double protocol witness for LayoutEngine.sizeThatFits(_:) in conformance SizeFittingLayoutComputer.Engine(uint64_t *a1)
{

  ViewSizeCache.get(_:makeValue:)();
  v2 = v1;

  return v2;
}

uint64_t partial apply for closure #1 in closure #1 in SizeFittingLayoutComputer.Engine.sizeThatFits(_:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v8 = *(v0 + 24);
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  return SizeFittingState.applyChildren(selectLast:to:)(0, partial apply for closure #1 in closure #1 in closure #1 in SizeFittingLayoutComputer.Engine.sizeThatFits(_:), v7);
}

void type metadata accessor for _DictionaryStorage<_ViewList_ID.Canonical, SizeFittingState.Child>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, SizeFittingState.Child>)
  {
    lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, SizeFittingState.Child>);
    }
  }
}

uint64_t outlined destroy of (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)(uint64_t a1)
{
  type metadata accessor for (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CoordinateSpaceTransform.value.getter@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = type metadata accessor for _CoordinateSpaceModifier(0, a3, a4, a4);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14[-1] - v9;
  CoordinateSpaceTransform.transform.getter(x8_0);
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*Value);
  CoordinateSpaceTransform.modifier.getter(a3, a4, v10);
  _convertToAnyHashable<A>(_:)();
  (*(*(a3 - 8) + 8))(v10, a3);
  type metadata accessor for CGSize(0);
  AGGraphGetValue();
  ViewTransform.appendSizedSpace(name:size:)();
  return outlined destroy of AnyHashable(v14);
}

uint64_t CoordinateSpaceTransform.transform.getter@<X0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  *a2 = *Value;
  *(a2 + 8) = v4;
  v5 = *(Value + 32);
  *(a2 + 16) = *(Value + 16);
  *(a2 + 32) = v5;
}

uint64_t CoordinateSpaceTransform.modifier.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for _CoordinateSpaceModifier(0, a2, a3, a3);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

char *HostingScrollView.init(viewType:helper:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_layoutDirection] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_rtlAdjustment] = 0;
  v6 = &v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_onScrollToTopGesture];
  *v6 = 0;
  v6[1] = 0;
  v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_descendantScrollableAxes] = 0;
  v7 = &v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 8) = 0xF000000000000000;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  v8 = &v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_lastAdjustedContentInsets];
  *v8 = 0u;
  v8[1] = 0u;
  v9 = &v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTargetConfig];
  *v10 = 1;
  *(v10 + 4) = 0;
  v11 = &v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationOffset];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_safeAreaTransitionState];
  type metadata accessor for FalseSafeAreaTransitionState();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *v12 = v13;
  v12[1] = &protocol witness table for FalseSafeAreaTransitionState;
  v14 = &v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_oldContentMargins];
  v15 = MEMORY[0x18D007050](v48);
  v16 = MEMORY[0x18D007050](v50, v15);
  v17 = MEMORY[0x18D007050](v52, v16);
  MEMORY[0x18D007050](v54, v17);
  v18 = v48[1];
  *v14 = v48[0];
  v14[1] = v18;
  v14[2] = v49[0];
  *(v14 + 41) = *(v49 + 9);
  v19 = v50[1];
  v14[4] = v50[0];
  v14[5] = v19;
  v14[6] = v51[0];
  *(v14 + 105) = *(v51 + 9);
  v20 = v52[0];
  v21 = v52[1];
  v22 = v53[0];
  *(v14 + 169) = *(v53 + 9);
  v14[9] = v21;
  v14[10] = v22;
  v14[8] = v20;
  v23 = v54[1];
  v14[12] = v54[0];
  v14[13] = v23;
  v14[14] = v55[0];
  *(v14 + 233) = *(v55 + 9);
  swift_weakInit();
  v24 = OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pinnedViews;
  *&v2[v24] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI19PinnedBarPortalViewCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_viewType] = a1;
  *&v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper] = a2;
  v38 = 256;
  v39 = 0u;
  v40 = 0u;
  v41 = 2;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  swift_unknownObjectWeakInit();
  v47 = 0;
  v46 = 0u;
  v45 = 0u;
  outlined init with take of ScrollViewConfiguration(&v38, &v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_configuration]);
  type metadata accessor for HostingScrollView.PlatformGroupContainer();
  v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v26 = a2;
  v27 = [v25 init];
  *&v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_host] = v27;
  v37.receiver = v2;
  v37.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v37, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC7SwiftUI17HostingScrollView_host;
  v30 = *&v28[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_host];
  v31 = v28;
  [v31 addSubview_];
  v32 = [*&v28[v29] layer];
  [v32 setAllowsGroupOpacity_];
  [v32 setAllowsGroupBlending_];
  swift_unknownObjectWeakAssign();
  *&v26[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_delegate + 8] = &protocol witness table for HostingScrollView;
  swift_unknownObjectWeakAssign();
  v33 = v26;
  v34 = v31;
  [v34 setDelegate_];

  v35 = *&v28[v29];
  swift_unknownObjectWeakAssign();

  return v34;
}

unint64_t lazy protocol witness table accessor for type ScrollViewFocusableBorder and conformance ScrollViewFocusableBorder()
{
  result = lazy protocol witness table cache variable for type ScrollViewFocusableBorder and conformance ScrollViewFocusableBorder;
  if (!lazy protocol witness table cache variable for type ScrollViewFocusableBorder and conformance ScrollViewFocusableBorder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewFocusableBorder, &unk_1F001A638, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewFocusableBorder and conformance ScrollViewFocusableBorder);
  }

  return result;
}

BOOL ScrollViewAdjustedState.alignIfNeeded(_:axis:newSize:newContentFrame:anchors:)(double *a1, char a2, uint64_t *a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9)
{
  v73.width = a4;
  v73.height = a5;
  v13 = *a3;
  v14 = a3[1];
  v15 = a3[2];
  v16 = *(a3 + 24);
  v17 = *(v9 + 96);
  v18 = a2 & 1;
  v70 = *(v9 + 104);
  v71 = v17;
  if (a2)
  {
    v17 = *(v9 + 104);
  }

  v74 = v17;
  AGGraphClearUpdate();
  AGGraphGetValue();
  AGGraphSetUpdate();
  ScrollAnchorStorage.adjustedAnchor(role:layoutDirection:)();
  ScrollAnchorStorage.adjustedAnchor(role:layoutDirection:)();
  v76 = v13;
  v77 = v14;
  v78 = v15;
  v79 = v16;
  ScrollAnchorStorage.adjustedAnchor(role:layoutDirection:)();
  v75 = 2;
  UnitPoint.subscript.getter();
  if (v19 != 0.0 && (*(v9 + 112) & 1) == 0)
  {
    if (v53 = a8, v54 = *(v9 + 80), v55 = *(v9 + 88), static CGSize.invalidValue.getter(), v27 = v54 == v57, a8 = v53, v27) && v55 == v56 || (specialized getter of contentSizeChanged #1 in ScrollViewAdjustedState.alignIfNeeded(_:axis:newSize:newContentFrame:anchors:)(&v75, v9, v18, v53, a9) & 1) != 0 && (static Semantics.v6.getter(), (isLinkedOnOrAfter(_:)()))
    {
      v58 = UnitPoint.in(_:)(__PAIR128__(*&a9, *&v53));
      v59 = UnitPoint.in(_:)(v73);
      y = v59.y;
      x = v59.x;
      v27 = v18 == 0;
      if (v18)
      {
        v28 = v58.y;
      }

      else
      {
        v28 = v58.x;
      }

      if (v18)
      {
        height = v73.height;
      }

      else
      {
        height = v73.width;
      }

      if (v18)
      {
        width = a9;
      }

      else
      {
        width = v53;
      }

      goto LABEL_82;
    }
  }

  UnitPoint.subscript.getter();
  if (v20 != 0.0)
  {
    v21 = 88;
    if (!v18)
    {
      v21 = 80;
    }

    v22 = 72;
    if (!v18)
    {
      v22 = 64;
    }

    if (*(v9 + v22) < *(v9 + v21))
    {
      v23 = UnitPoint.in(_:)(__PAIR128__(*&a9, *&a8));
      v26 = UnitPoint.in(_:)(v73);
      y = v26.y;
      x = v26.x;
      v27 = v18 == 0;
      if (v18)
      {
        v28 = v23.y;
      }

      else
      {
        v28 = v23.x;
      }

      if (v18)
      {
        height = v73.height;
      }

      else
      {
        height = v73.width;
      }

      if (v18)
      {
        width = a9;
      }

      else
      {
        width = a8;
      }

LABEL_82:
      if (!v27)
      {
        x = y;
      }

      v60 = v28 - x;
      v61 = width - height;
      if (v27)
      {
        v62 = a1;
      }

      else
      {
        v62 = a1 + 1;
      }

      if (v61 <= 0.0)
      {
        v61 = 0.0;
      }

      if (v60 < 0.0)
      {
        v60 = 0.0;
      }

      if (v61 < v60)
      {
        v60 = v61;
      }

      a1[v18] = v60;
      v63 = *AGGraphGetValue();
      v64 = *v62;
LABEL_104:
      v66 = v63 * 0.5 + v64;
      v27 = v63 == 1.0;
      v67 = v63 * floor(v66 / v63);
      v68 = floor(v66);
      if (v27)
      {
        v67 = v68;
      }

      a1[v18 != 0] = v67;
      return vabdd_f64(v74, v67) >= 0.5;
    }
  }

  v72.width = a8;
  v72.height = a9;
  v32 = *(v9 + 64);
  v31 = *(v9 + 72);
  v33 = *(v9 + 80);
  v34 = *(v9 + 88);
  v35 = UnitPoint.in(_:)(*(v9 + 64));
  v37 = UnitPoint.in(_:)(__PAIR128__(*&v34, *&v33));
  v36 = v37.x;
  if (v18)
  {
    v38 = v35.y;
  }

  else
  {
    v38 = v35.x;
  }

  if (v18)
  {
    v39 = v34;
  }

  else
  {
    v39 = v33;
  }

  v69 = v32;
  if (v18)
  {
    v40 = v31;
  }

  else
  {
    v40 = v32;
  }

  if (v18)
  {
    v36 = v37.y;
  }

  v41 = v38 - v36;
  if (v40 - v39 >= v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = v40 - v39;
  }

  v43 = v41 < 0.0;
  if (v41 < 0.0)
  {
    v42 = 0.0;
  }

  if (v41 > 0.0)
  {
    v41 = 0.0;
  }

  if (v43)
  {
    v41 = 0.0;
  }

  if (v40 - v39 <= 0.0)
  {
    v44 = v41;
  }

  else
  {
    v44 = v42;
  }

  UnitPoint.subscript.getter();
  if (v45 != 0.0 && vabdd_f64(v74, v44) < 0.5)
  {
    v46 = UnitPoint.in(_:)(v72);
    v47 = UnitPoint.in(_:)(v73);
    y = v47.y;
    x = v47.x;
    v27 = v18 == 0;
    if (v18)
    {
      v28 = v46.y;
    }

    else
    {
      v28 = v46.x;
    }

    if (v18)
    {
      height = v73.height;
    }

    else
    {
      height = v73.width;
    }

    if (v18)
    {
      width = v72.height;
    }

    else
    {
      width = v72.width;
    }

    goto LABEL_82;
  }

  v76 = v13;
  v77 = v14;
  v78 = v15;
  v79 = v16;
  ScrollAnchorStorage.sizeChanges.getter();
  UnitPoint.subscript.getter();
  result = 0;
  if (v49 == 0.5)
  {
    v50 = (*&v40 & 0xFFFFFFFFFFFFFLL) == 0 || (~*&v40 & 0x7FF0000000000000) != 0;
    if (v40 < v39 && v40 > 0.0 && v50)
    {
      v51 = v31 - v34;
      if (!v18)
      {
        v51 = v69 - v33;
      }

      if (v40 < 0.0)
      {
        __break(1u);
        return result;
      }

      if (v51 < 0.0)
      {
        goto LABEL_94;
      }

      if (v40 < v51)
      {
        v51 = v40;
      }

      if (v51 <= 0.0)
      {
LABEL_94:
        v52 = 0.0;
        if (!v18)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (!v18)
        {
          v52 = v71 / v51;
LABEL_95:
          *a1 = (v72.width - v73.width) * v52;
LABEL_101:
          v63 = *AGGraphGetValue();
          v65 = a1 + 1;
          if (!v18)
          {
            v65 = a1;
          }

          v64 = *v65;
          goto LABEL_104;
        }

        v52 = v70 / v51;
      }

      a1[1] = (v72.height - v73.height) * v52;
      goto LABEL_101;
    }
  }

  return result;
}

double closure #1 in ScrollViewAdjustedProperties.value.getter@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for ScrollEnvironmentStorage(0);
  v3 = *AGGraphGetValue();
  swift_getKeyPath();
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v3 + 16, a2);
  swift_getKeyPath();
  *&v10 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, &v10, type metadata accessor for ScrollEnvironmentTransform?);
  if (v11)
  {
    outlined init with take of ScrollEnvironmentTransform(&v10, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v5 + 8))(a2, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

double HostingScrollView.updateForConfiguration(oldValue:)()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper];
  v3 = &v1[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_configuration];
  swift_beginAccess();
  *(v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes) = *v3;
  v4 = *(v3 + 6);
  v5 = *(v3 + 7);
  v6 = &v1[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_onScrollToTopGesture];
  v7 = *&v1[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_onScrollToTopGesture];
  v8 = *&v1[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_onScrollToTopGesture + 8];
  *v6 = v4;
  v6[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v4, v5);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v8);
  v9 = *(v3 + 14);
  if (v9)
  {
    v10 = *(v3 + 13);

    v11 = MEMORY[0x18D00C850](v10, v9);
  }

  else
  {
    v11 = 0;
  }

  [v1 setInteractionActivityTrackingBaseName_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(v3 + 9);
    v14 = &v1[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_safeAreaTransitionState];
    *v14 = Strong;
    v14[1] = v13;
    swift_unknownObjectRelease();
  }

  lazy protocol witness table accessor for type ScrollViewSafeAreaSupportAllEdges and conformance ScrollViewSafeAreaSupportAllEdges();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    [v1 setContentInsetAdjustmentBehavior_];
  }

  type metadata accessor for _SemanticFeature<Semantics_v4>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>, type metadata accessor for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697EC30]);
  if (static SemanticFeature.isEnabled.getter())
  {
    v16 = *(v3 + 10);
    v17 = *(v3 + 11);
    v18 = *(v3 + 12);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v16;
    v20[4] = v17;
    v20[5] = v18;
    outlined copy of AppIntentExecutor?(v16, v17);
    outlined copy of AppIntentExecutor?(v16, v17);

    static Update.enqueueAction(reason:_:)();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v16, v17);
  }

  return result;
}

uint64_t sub_18BE4BC68()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

void ScrollViewHelper.didChangeProperties(from:)(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties);
    swift_beginAccess();
    [v5 setScrollEnabled_];
    [v5 setClipsToBounds_];
    if ((*(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options) & 1) != 0 && *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes))
    {
      v7 = v6[80];
    }

    else
    {
      v7 = 4;
    }

    v15 = v7;
    UIScrollView.updateDeceleration(_:)(&v15);
    v8 = *(v6 + 12);
    v9 = *(v6 + 13);
    v10 = v6[112];
    v15 = v6[81];

    UIScrollView.updateEdgeEffect(styles:hidden:disabled:layoutDirection:)(v8, v9, v10, &v15);

    ScrollViewHelper.updateAxesConfiguration()();
    v11 = *(a1 + 84);
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      if (v11 != *(v6 + 21))
      {
        v13 = v12;
        [v12 flashScrollIndicators];
        v12 = v13;
      }
    }

    v15 = v6[3];
    v14 = *(v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode);
    [v5 setKeyboardDismissMode_];
  }
}

uint64_t outlined destroy of ScrollEnvironmentProperties?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void ScrollViewHelper.adoptEnvironment(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastEnvironment);
    *v6 = v2;
    v6[1] = v3;

    type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>();
    if (v3)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v7 = v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_scrollContentBackground;
    *v7 = v8;
    *(v7 + 8) = v9;
    *(v7 + 9) = v10;

    specialized ScrollViewHelper.didChangeScrollContentBackground(from:)();

    EnvironmentValues.allScrollableAxes.getter();
  }
}

uint64_t UpdatedHostingScrollView.updateValue()()
{
  v1 = v0;
  v169 = *MEMORY[0x1E69E9840];
  type metadata accessor for HostingScrollView();
  v2 = *AGGraphGetValue();
  Value = AGGraphGetValue();
  v109 = v4;
  v101 = *Value;
  v104 = *(Value + 8);
  v5 = *(Value + 96);
  v6 = *(Value + 104);
  outlined copy of SystemScrollLayoutState.ContentOffsetMode(v5);
  v7 = AGGraphGetValue();
  v114 = v8;
  outlined init with copy of ScrollViewConfiguration(v7, v165);
  v9 = AGGraphGetValue();
  v116 = v10;
  outlined init with copy of ScrollEnvironmentProperties(v9, v164);
  v11 = AGGraphGetValue();
  v115 = v12;
  v102 = *(v11 + 16);
  v103 = *v11;
  v14 = *(v11 + 32);
  v13 = *(v11 + 40);
  v15 = AGGraphGetValue();
  v117 = v16;
  v112 = v15[1];
  v113 = *v15;
  v17 = v15[2];
  v111 = v15[3];
  type metadata accessor for CGSize(0);
  v18 = AGGraphGetValue();
  v107 = v19;
  v20 = *v18;
  v108 = v164[81];
  v105 = *(v0 + 137);
  v21 = AGGraphGetValue();
  v23 = *v21;
  v22 = v21[1];
  v100 = v24;
  if (v24)
  {

    if (PropertyList.Tracker.hasDifferentUsedValues(_:)())
    {
      PropertyList.Tracker.reset()();

      EnvironmentValues.init(_:tracker:)();

      v22 = *(&v134 + 1);
      v23 = v134;
    }
  }

  else
  {
  }

  v106 = *MEMORY[0x1E698D3F8];
  if (*v0 != *MEMORY[0x1E698D3F8])
  {
    _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for Axis.Set?, MEMORY[0x1E6980D08], MEMORY[0x1E69E6720]);
    v25 = AGGraphGetValue();
    if ((v25[1] & 1) == 0)
    {
      v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_descendantScrollableAxes] = *v25;
    }
  }

  v110 = v22;
  EnvironmentValues.contentMarginProxy.getter(&v149);
  v146 = v161;
  v147 = v162;
  v148[0] = v163[0];
  *(v148 + 9) = *(v163 + 9);
  v142 = v157;
  v143 = v158;
  v144 = v159;
  v145 = v160;
  v138 = v153;
  v139 = v154;
  v140 = v155;
  v141 = v156;
  v134 = v149;
  v135 = v150;
  v136 = v151;
  v137 = v152;
  v26 = *(v0 + 528);
  v130 = *(v0 + 512);
  v131 = v26;
  v132[0] = *(v0 + 544);
  *(v132 + 9) = *(v0 + 553);
  v27 = *(v0 + 464);
  v126 = *(v0 + 448);
  v127 = v27;
  v28 = *(v0 + 496);
  v128 = *(v0 + 480);
  v129 = v28;
  v29 = *(v0 + 400);
  v122 = *(v0 + 384);
  v123 = v29;
  v30 = *(v0 + 432);
  v124 = *(v0 + 416);
  v125 = v30;
  v31 = *(v0 + 336);
  v118 = *(v0 + 320);
  v119 = v31;
  v32 = *(v0 + 368);
  v120 = *(v0 + 352);
  v121 = v32;
  v33 = specialized static ContentMarginProxy.== infix(_:_:)(&v134, &v118);
  v34 = *(v0 + 44);
  if (v5 >> 62)
  {
    v35 = v5;
    if (v5 >> 62 != 1)
    {
      goto LABEL_16;
    }
  }

  if (v6 == -1 || v34 == -1 || v6 != v34)
  {
    *(v1 + 44) = v6;
    v35 = v5;
  }

  else
  {
    outlined consume of SystemScrollLayoutState.ContentOffsetMode(v5);
    v35 = 0x8000000000000000;
  }

LABEL_16:
  v97 = v34;
  if (v114)
  {
    *(*&v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper] + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes) = v165[0];
    outlined init with copy of ScrollViewConfiguration(v165, &v134);
    v37 = OBJC_IVAR____TtC7SwiftUI17HostingScrollView_configuration;
    swift_beginAccess();
    outlined init with copy of ScrollViewConfiguration(&v2[v37], &v118);
    swift_beginAccess();
    outlined assign with copy of ScrollViewConfiguration(&v134, &v2[v37]);
    swift_endAccess();
    HostingScrollView.updateForConfiguration(oldValue:)();
    outlined destroy of ScrollViewConfiguration(&v118);
    outlined destroy of ScrollViewConfiguration(&v134);
    if ((v116 & 1) == 0)
    {
LABEL_18:
      v36 = v33 ^ 1;
      if (v36)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((v116 & 1) == 0)
  {
    goto LABEL_18;
  }

  AGGraphClearUpdate();
  v38 = *&v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper];
  outlined init with copy of ScrollEnvironmentProperties(v164, &v134);
  v39 = v35;
  v40 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v38 + v40, &v118);
  swift_beginAccess();
  v41 = v38 + v40;
  v35 = v39;
  outlined assign with copy of ScrollEnvironmentProperties(&v134, v41);
  swift_endAccess();
  ScrollViewHelper.didChangeProperties(from:)(&v118);
  outlined destroy of ScrollEnvironmentProperties(&v118);
  outlined destroy of ScrollEnvironmentProperties(&v134);
  AGGraphSetUpdate();
  v36 = v33 ^ 1;
  if (v36)
  {
    goto LABEL_23;
  }

LABEL_22:
  if ((v117 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_23:
  v96 = v35;
  v98 = v5;
  AGGraphClearUpdate();
  v42 = OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper;
  v43 = *&v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper];
  static Edge.Set.all.getter();
  v44 = v165[0];
  if ((v165[0] & 1) == 0)
  {
    if ((v165[0] & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  static Edge.Set.horizontal.getter();
  if ((v44 & 2) != 0)
  {
LABEL_27:
    static Edge.Set.vertical.getter();
  }

LABEL_28:
  EdgeInsets.in(_:)();
  v45 = (v43 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_accessoryPlacementInsets);
  *v45 = v46;
  v45[1] = v47;
  v45[2] = v48;
  v45[3] = v49;
  v50 = (*&v2[v42] + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins);
  v146 = v50[12];
  v147 = v50[13];
  v148[0] = v50[14];
  *(v148 + 9) = *(v50 + 233);
  v142 = v50[8];
  v143 = v50[9];
  v144 = v50[10];
  v145 = v50[11];
  v138 = v50[4];
  v139 = v50[5];
  v140 = v50[6];
  v141 = v50[7];
  v134 = *v50;
  v135 = v50[1];
  v136 = v50[2];
  v137 = v50[3];
  v51 = v162;
  v50[12] = v161;
  v50[13] = v51;
  v50[14] = v163[0];
  *(v50 + 233) = *(v163 + 9);
  v52 = v158;
  v50[8] = v157;
  v50[9] = v52;
  v53 = v160;
  v50[10] = v159;
  v50[11] = v53;
  v54 = v154;
  v50[4] = v153;
  v50[5] = v54;
  v55 = v156;
  v50[6] = v155;
  v50[7] = v55;
  v56 = v150;
  *v50 = v149;
  v50[1] = v56;
  v57 = v152;
  v50[2] = v151;
  v50[3] = v57;
  ScrollViewHelper.didChangeMargins(from:)();
  v130 = v161;
  v131 = v162;
  v132[0] = v163[0];
  *(v132 + 9) = *(v163 + 9);
  v126 = v157;
  v127 = v158;
  v128 = v159;
  v129 = v160;
  v122 = v153;
  v123 = v154;
  v124 = v155;
  v125 = v156;
  v118 = v149;
  v119 = v150;
  v120 = v151;
  v121 = v152;
  outlined init with copy of UpdatedHostingScrollView(v1, &v134);
  v58 = AGGraphGetValue();
  outlined init with copy of ScrollViewConfiguration(v58, v133);
  outlined destroy of UpdatedHostingScrollView(&v134);
  v59 = v133[0];
  outlined destroy of ScrollViewConfiguration(v133);
  v166 = 0u;
  v167 = 0u;
  v168 = 1;
  specialized UIScrollView.updateIndicatorInsets(margins:axes:properties:safeArea:accessoryPlacementInsets:)(&v118, v59, v164);
  AGGraphSetUpdate();
  v35 = v96;
  v5 = v98;
LABEL_29:
  static Semantics.v5.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    OutputValue = AGGraphGetOutputValue();
    if (((v100 & 1) != 0 || !OutputValue) && *(v1 + 4) != v106)
    {
      type metadata accessor for HostingScrollView.PlatformContainer();
      v99 = v5;
      v61 = *AGGraphGetValue();
      AGGraphClearUpdate();
      *&v134 = v23;
      *(&v134 + 1) = v110;

      UIView.adoptEnvironment(_:hostedSubview:)(&v134, v2);

      *&v134 = v23;
      *(&v134 + 1) = v110;

      ScrollViewHelper.adoptEnvironment(_:)(&v134);

      AGGraphSetUpdate();

      v5 = v99;
    }
  }

  if (v107)
  {
    *&v2[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_rtlAdjustment] = v20;
  }

  if ((v117 & 1) != 0 || ((v115 | v114 | v107) & 1) != 0 || v108 != v105)
  {
    v62 = AGGraphGetValue();
    outlined init with copy of ScrollViewConfiguration(v62, &v134);
    lazy protocol witness table accessor for type ScrollViewSafeAreaSupportAllEdges and conformance ScrollViewSafeAreaSupportAllEdges();
    if (static UserDefaultKeyedFeature.isEnabled.getter())
    {
      v63 = v14;
      static Edge.Set.all.getter();
LABEL_46:
      outlined destroy of ScrollViewConfiguration(&v134);
      v65 = v17;
      EdgeInsets.in(_:)();
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      AGGraphClearUpdate();
      outlined init with copy of UpdatedHostingScrollView(v1, &v134);
      if (DWORD1(v134) == v106)
      {
        outlined destroy of UpdatedHostingScrollView(&v134);
      }

      else
      {
        if (v20 != 0.0)
        {
          v73 = v20 + v73;
        }

        type metadata accessor for HostingScrollView.PlatformContainer();
        v74 = *AGGraphGetValue();
        outlined destroy of UpdatedHostingScrollView(&v134);
        LOBYTE(v118) = v108;
        HostingScrollView.PlatformContainer.updateSafeArea(_:layoutDirection:)(&v118, v67, v69, v71, v73);
      }

      v14 = v63;
      AGGraphSetUpdate();
      v17 = v65;
      goto LABEL_52;
    }

    v64 = v134;
    if (v134)
    {
      v63 = v14;
      static Edge.Set.horizontal.getter();
      if ((v64 & 2) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v63 = v14;
      if ((v134 & 2) == 0)
      {
        goto LABEL_46;
      }
    }

    static Edge.Set.vertical.getter();
    goto LABEL_46;
  }

LABEL_52:
  if ((v109 | v36 | v115 | v116) & 1) != 0 || (v117)
  {
    AGGraphClearUpdate();
    v134 = v103;
    v135 = v102;
    *&v136 = v14;
    *(&v136 + 1) = v13;
    CGRect.init(_:)();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;
    outlined init with copy of UpdatedHostingScrollView(v1, &v134);
    v83 = AGGraphGetValue();
    v84 = *v83;
    v85 = v83[1];
    outlined destroy of UpdatedHostingScrollView(&v134);
    *&v118 = v101;
    *(&v118 + 1) = v104;
    *&v119 = v76;
    *(&v119 + 1) = v78;
    *&v120 = v80;
    *(&v120 + 1) = v82;
    *&v121 = v84;
    *(&v121 + 1) = v85;
    *&v122 = v35;
    *(&v122 + 1) = v113;
    *&v123 = v112;
    *(&v123 + 1) = v17;
    *&v124 = v111;
    v138 = v122;
    v139 = v123;
    *&v140 = v111;
    v134 = v118;
    v135 = v119;
    v136 = v120;
    v137 = v121;
    outlined copy of SystemScrollLayoutState.ContentOffsetMode(v35);
    v87 = HostingScrollView.updateContext(_:)(&v134, v86);
    outlined destroy of HostingScrollViewUpdateContext(&v118);
    AGGraphSetUpdate();
    if ((v87 & 1) == 0)
    {
      *(v1 + 44) = v97;
    }
  }

  *&v134 = v2;
  AGGraphSetOutputValue();
  outlined consume of SystemScrollLayoutState.ContentOffsetMode(v5);
  outlined consume of SystemScrollLayoutState.ContentOffsetMode(v35);
  outlined destroy of ScrollViewConfiguration(v165);

  v88 = v162;
  *(v1 + 512) = v161;
  *(v1 + 528) = v88;
  *(v1 + 544) = v163[0];
  *(v1 + 553) = *(v163 + 9);
  v89 = v158;
  *(v1 + 448) = v157;
  *(v1 + 464) = v89;
  v90 = v160;
  *(v1 + 480) = v159;
  *(v1 + 496) = v90;
  v91 = v154;
  *(v1 + 384) = v153;
  *(v1 + 400) = v91;
  v92 = v156;
  *(v1 + 416) = v155;
  *(v1 + 432) = v92;
  v93 = v150;
  *(v1 + 320) = v149;
  *(v1 + 336) = v93;
  v94 = v152;
  *(v1 + 352) = v151;
  *(v1 + 368) = v94;
  return outlined assign with take of ScrollEnvironmentProperties(v164, v1 + 56);
}

uint64_t MakeHostingScrollView.updateValue()(uint64_t a1)
{
  v2 = *(v1 + 48);
  if (!v2 || !*(v1 + 56))
  {
    HostingScroll = MakeHostingScrollView.makeScrollView()(a1);
    v5 = v4;

    *(v1 + 48) = HostingScroll;
    *(v1 + 56) = v5;
  }

  type metadata accessor for HostingScrollView();
  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

id @objc HostingScrollView.PlatformContainer.frame.getter(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t ScrollViewAdjustedState.adjustOffsetIfNeeded(state:stateChanged:reason:)(double *a1, char a2, _BYTE *a3)
{
  v4 = v3;
  AGGraphClearUpdate();
  AGGraphGetValue();

  AGGraphSetUpdate();
  Transaction.scrollContentOffsetAdjustmentBehavior.getter();
  v8 = v60;
  v9 = Transaction.fromScrollView.getter();
  Value = AGGraphGetValue();
  v11 = Value[1];
  v60 = *Value;
  v61 = v11;
  MEMORY[0x18D00B390]();
  CGSize.inset(by:)();
  v13 = v12;
  v15 = v14;
  v16 = AGGraphGetValue();
  v17 = v16[1];
  v60 = *v16;
  v61 = v17;
  v62 = v16[2];
  CGRect.init(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = *AGGraphGetValue();
  if (*a3 != 4)
  {
    if (v13 != *(v3 + 10) || v15 != *(v3 + 11) || (v68.origin.x = v19, v68.origin.y = v21, v68.size.width = v23, v68.size.height = v25, !CGRectEqualToRect(v68, *(v3 + 3))))
    {
      if (v8 != 2)
      {
        v27 = *AGGraphGetValue();
        v28 = AGGraphGetValue();
        v29 = *v28;
        v30 = *(v28 + 24);
        v49 = v30;
        if (v27 == 2)
        {
          v32 = (*(v29 + 16) != 0) | v30 ^ 1;
        }

        else
        {
          if (v27 == 1)
          {
            v31 = (*(v29 + 16) != 0) | v30 ^ 1;
            v32 = 1;
            goto LABEL_15;
          }

          v32 = 1;
        }

        v31 = 1;
LABEL_15:
        v47 = *(v28 + 16);
        v48 = *(v28 + 8);

        v70.origin.x = 0.0;
        v70.origin.y = 0.0;
        v70.size.width = 0.0;
        v70.size.height = 0.0;
        v69.origin.x = v19;
        v69.origin.y = v21;
        v69.size.width = v23;
        v69.size.height = v25;
        v36 = CGRectEqualToRect(v69, v70);
        if (v31)
        {
          if (!v36)
          {
            v37 = v4[5];
            v64 = v4[4];
            v65 = v37;
            v38 = v4[7];
            v66 = v4[6];
            v67 = v38;
            v39 = v4[1];
            v60 = *v4;
            v61 = v39;
            v40 = v4[3];
            v62 = v4[2];
            v63 = v40;
            *&v52 = v29;
            *(&v52 + 1) = v48;
            *&v53 = v47;
            BYTE8(v53) = v49;
            if (ScrollViewAdjustedState.alignIfNeeded(_:axis:newSize:newContentFrame:anchors:)(a1, 0, &v52, v13, v15, v19, v21, v23, v25))
            {
              if ((v32 & 1) == 0)
              {

                goto LABEL_29;
              }

              v41 = 1;
LABEL_25:
              v42 = v4[5];
              v56 = v4[4];
              v57 = v42;
              v43 = v4[7];
              v58 = v4[6];
              v59 = v43;
              v44 = v4[1];
              v52 = *v4;
              v53 = v44;
              v45 = v4[3];
              v54 = v4[2];
              v55 = v45;
              v50[0] = v29;
              v50[1] = v48;
              v50[2] = v47;
              v51 = v49;
              v46 = ScrollViewAdjustedState.alignIfNeeded(_:axis:newSize:newContentFrame:anchors:)(a1, 1, v50, v13, v15, v19, v21, v23, v25);

              if ((v41 & 1) == 0 && !v46)
              {
                result = 0;
                goto LABEL_30;
              }

LABEL_29:
              *a3 = 2;
              result = 1;
LABEL_30:
              *(v4 + 10) = v13;
              *(v4 + 11) = v15;
              *(v4 + 6) = v19;
              *(v4 + 7) = v21;
              *(v4 + 8) = v23;
              *(v4 + 9) = v25;
              v33 = v4 + 7;
              if (v4[7])
              {
                v35 = 1;
                goto LABEL_33;
              }

LABEL_32:
              v35 = (v26 != 0) | a2 & v9;
              goto LABEL_33;
            }

            if (v32)
            {
LABEL_24:
              v41 = 0;
              goto LABEL_25;
            }
          }
        }

        else if ((v32 & 1) != 0 && !v36)
        {
          goto LABEL_24;
        }

        result = 0;
        goto LABEL_30;
      }
    }
  }

  *(v3 + 10) = v13;
  *(v3 + 11) = v15;
  *(v3 + 6) = v19;
  *(v3 + 7) = v21;
  *(v3 + 8) = v23;
  *(v3 + 9) = v25;
  v33 = v3 + 7;
  if ((v3[7] & 1) == 0)
  {
    result = 0;
    goto LABEL_32;
  }

  result = 0;
  v35 = 1;
LABEL_33:
  *v33 = v35 & 1;
  return result;
}

id UIScrollView.updateAxesConfiguration(axes:)(uint64_t a1)
{
  v2 = a1;
  if ((a1 != 0) != [v1 _adjustsContentInsetWhenScrollDisabled])
  {
    [v1 _setAdjustsContentInsetWhenScrollDisabled_];
  }

  v3 = Axis.Set.contains(_:)() & 1;
  if (v3 != [v1 _contentScrollsAlongYAxis])
  {
    [v1 _setContentScrollsAlongYAxis_];
  }

  v4 = Axis.Set.contains(_:)() & 1;
  result = [v1 _contentScrollsAlongXAxis];
  if (v4 != result)
  {

    return [v1 _setContentScrollsAlongXAxis_];
  }

  return result;
}

id UIScrollView.updateVerticalConfiguration(properties:)(uint64_t a1)
{
  outlined init with copy of ScrollEnvironmentProperties?(a1, v3, &lazy cache variable for type metadata for ScrollEnvironmentProperties?, &type metadata for ScrollEnvironmentProperties);
  if (v3[12])
  {
    memcpy(__dst, v3, sizeof(__dst));
    [v1 setShowsVerticalScrollIndicator_];
    [v1 setAlwaysBounceVertical_];
    return outlined destroy of ScrollEnvironmentProperties(__dst);
  }

  else
  {
    outlined destroy of ScrollEnvironmentProperties?(v3, &lazy cache variable for type metadata for ScrollEnvironmentProperties?, &type metadata for ScrollEnvironmentProperties, MEMORY[0x1E69E6720], type metadata accessor for ScrollEnvironmentProperties?);
    [v1 setShowsVerticalScrollIndicator_];
    return [v1 setAlwaysBounceVertical_];
  }
}

uint64_t storeEnumTagSinglePayload for ScrollEnvironmentProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id UIScrollView.updateHorizontalConfiguration(properties:)(uint64_t a1)
{
  outlined init with copy of ScrollEnvironmentProperties?(a1, v3, &lazy cache variable for type metadata for ScrollEnvironmentProperties?, &type metadata for ScrollEnvironmentProperties);
  if (v3[12])
  {
    memcpy(__dst, v3, sizeof(__dst));
    [v1 setShowsHorizontalScrollIndicator_];
    [v1 setAlwaysBounceHorizontal_];
    return outlined destroy of ScrollEnvironmentProperties(__dst);
  }

  else
  {
    outlined destroy of ScrollEnvironmentProperties?(v3, &lazy cache variable for type metadata for ScrollEnvironmentProperties?, &type metadata for ScrollEnvironmentProperties, MEMORY[0x1E69E6720], type metadata accessor for ScrollEnvironmentProperties?);
    [v1 setShowsHorizontalScrollIndicator_];
    return [v1 setAlwaysBounceHorizontal_];
  }
}

uint64_t specialized UIScrollViewKeyboardDismissMode.init(_:defaultValue:)(_BYTE *a1, unsigned __int8 *a2)
{
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*a1)
    {
      return 3;
    }

    v2 = *a2;
    if (v2 > 2)
    {
      return 0;
    }

    else
    {
      if (v2 == 1)
      {
        return 3;
      }

      if (v2 == 2)
      {
        return 4;
      }

      else
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }
  }

  return result;
}

void ScrollViewHelper.didChangeMargins(from:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options;
    v4 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options);
    if ((v4 & 2) != 0)
    {
      v5 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 16);
      v43 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins);
      v44 = v5;
      *v45 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 32);
      *&v45[9] = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 41);
      v6 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 80);
      v39 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 64);
      v40 = v6;
      v41[0] = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 96);
      *(v41 + 9) = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 105);
      v7 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
      swift_beginAccess();
      v8 = v0;
      outlined init with copy of ScrollEnvironmentProperties(v0 + v7, v42);
      v9 = [v2 traitCollection];
      [v9 displayScale];

      static Edge.Set.all.getter();
      v10 = MEMORY[0x18D007050](&v36);
      v36 = v39;
      v37 = v40;
      v38[0] = v41[0];
      *(v38 + 9) = *(v41 + 9);
      MEMORY[0x18D007000](v34, v10);
      if (MEMORY[0x18D006FC0](&v39, v34))
      {
        v36 = v43;
        v37 = v44;
        v38[0] = *v45;
        *(v38 + 9) = *&v45[9];
      }

      OptionalEdgeInsets.in(edges:)();
      [v2 contentInset];
      v32 = v12;
      v33 = v11;
      v30 = v14;
      v31 = v13;
      static EdgeInsets.zero.getter();
      v15 = UIScrollView.isAlignedToContentInsets.getter();
      EdgeInsets.adding(_:)();
      v20 = v19;
      if (v42[81])
      {
        v19 = v17;
        v17 = v20;
      }

      if (v33 != v16 || v32 != v17 || v31 != v18 || v30 != v19)
      {
        [v2 setContentInset_];
        if (v15)
        {
          UIScrollView.alignToContentInsets()();
        }
      }

      outlined destroy of ScrollEnvironmentProperties(v42);
      v0 = v8;
      v4 = *(v8 + v3);
    }

    if ((v4 & 4) != 0)
    {
      v21 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 208);
      v54 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 192);
      v55 = v21;
      v56[0] = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 224);
      *(v56 + 9) = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 233);
      v22 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 144);
      v50 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 128);
      v51 = v22;
      v23 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 176);
      v52 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 160);
      v53 = v23;
      v24 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 80);
      v46 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 64);
      v47 = v24;
      v25 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 112);
      v48 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 96);
      v49 = v25;
      v26 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 16);
      v43 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins);
      v44 = v26;
      v27 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 48);
      *v45 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 32);
      *&v45[16] = v27;
      v28 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
      v29 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes);
      swift_beginAccess();
      outlined init with copy of ScrollEnvironmentProperties(v0 + v28, v42);
      memset(v34, 0, sizeof(v34));
      v35 = 1;
      specialized UIScrollView.updateIndicatorInsets(margins:axes:properties:safeArea:accessoryPlacementInsets:)(&v43, v29, v42);

      outlined destroy of ScrollEnvironmentProperties(v42);
    }

    else
    {
    }
  }
}

void HostingScrollView.PlatformContainer.frame.didset(SEL *a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v6 = *&v2[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_scrollView];
  v7 = type metadata accessor for HostingScrollView();
  v36.receiver = v6;
  v36.super_class = v7;
  [(SEL *)&v36 frame];
  v9 = v8;
  v11 = v10;
  v35.receiver = v4;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, *a1);
  if (v9 != v13 || v11 != v12)
  {
    v34.receiver = v4;
    v34.super_class = ObjectType;
    objc_msgSendSuper2(&v34, *a1);
    v16 = v15;
    v18 = v17;
    v33.receiver = v6;
    v33.super_class = v7;
    [(SEL *)&v33 frame];
    v20 = v19;
    v22 = v21;
    v32.receiver = v6;
    v32.super_class = v7;
    [(SEL *)&v32 frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31.receiver = v6;
    v31.super_class = v7;
    [(SEL *)&v31 setFrame:v20, v22, v16, v18];
    HostingScrollView.frame.didset(v24, v26, v28, v30);
  }
}

void UIView.adoptEnvironment(_:hostedSubview:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = EnvironmentValues.isEnabled.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v7 & 1;
  *(v8 + 32) = a2;
  v9 = v3;
  v10 = a2;
  static Update.enqueueAction(reason:_:)();

  EnvironmentValues.layoutDirection.getter();
  if (v16)
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  if ([v10 semanticContentAttribute] != v11)
  {
    [v10 setSemanticContentAttribute_];
  }

  if (EnvironmentValues.effectiveTintColor.getter())
  {
    v14 = v5;
    v15 = v6;
    dispatch thunk of AnyColorBox.resolveHDR(in:)();

    Color.ResolvedHDR.kitColor.getter();
    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    v12 = 0;
  }

  [v9 setTintColor_];
}

uint64_t sub_18BE4DD6C()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for RangeSet<String.Index>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

float64_t ScrollViewDisplayListFrame.value.getter()
{
  AGGraphGetValue();
  Value = AGGraphGetValue();
  outlined init with copy of ScrollViewConfiguration(Value, v28);
  type metadata accessor for _SemanticFeature<Semantics_v5>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    static Edge.Set.all.getter();
    goto LABEL_8;
  }

  v1 = v28[0];
  if (v28[0])
  {
    static Edge.Set.horizontal.getter();
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((v28[0] & 2) != 0)
  {
LABEL_7:
    static Edge.Set.vertical.getter();
  }

LABEL_8:
  outlined destroy of ScrollViewConfiguration(v28);
  v2 = EdgeInsets.in(_:)();
  v28[0] = v3;
  v28[1] = v4;
  v28[2] = v5;
  v28[3] = v6;
  MEMORY[0x1EEE9AC00](v2);
  EdgeInsets.xFlipIfRightToLeft(layoutDirection:)();
  AGGraphGetValue();
  EdgeInsets.adding(_:)();
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  AGGraphGetValue();
  MEMORY[0x18D00B390]();
  CGRect.outset(by:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  type metadata accessor for CGSize(0);
  v15 = AGGraphGetValue();
  v16 = v8 + *v15;
  v17 = v10 + v15[1];
  v18 = AGGraphGetValue();
  v19 = v16 - *v18;
  v20 = v17 - v18[1];
  v21 = AGGraphGetValue();
  v22 = v12 + *v21;
  v23 = v14 + v21[1];
  v27 = *AGGraphGetValue();
  v29.origin.x = v19;
  v29.origin.y = v20;
  v29.size.width = v22;
  v29.size.height = v23;
  v30 = CGRectStandardize(v29);
  v24.f64[0] = *&v27 * 0.5 + v30.origin.y;
  v24.f64[1] = *&v27 * 0.5 + v30.origin.x;
  if (*&v27 == 1.0)
  {
    v25 = vrndmq_f64(v24);
  }

  else
  {
    v25 = vmulq_n_f64(vrndmq_f64(vdivq_f64(v24, vdupq_lane_s64(v27, 0))), *&v27);
  }

  return v25.f64[1];
}

id HostingScrollView.updateContext(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v190 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v189 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 80);
  v222 = *(a1 + 64);
  v223 = v11;
  v224 = *(a1 + 96);
  v12 = *(a1 + 16);
  v219 = *a1;
  v220.origin = v12;
  v13 = *(a1 + 48);
  v220.size = *(a1 + 32);
  v221 = v13;
  v14 = [v3 window];
  v15 = v14;
  if (!v14)
  {
    v36 = &v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext];
    v37 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext + 80];
    v210[4] = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext + 64];
    v211 = v37;
    v212 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext + 96];
    v38 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext + 16];
    v210[0] = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext];
    v210[1] = v38;
    v39 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext + 48];
    v210[2] = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext + 32];
    v210[3] = v39;
    v40 = *(a1 + 16);
    *v36 = *a1;
    *(v36 + 1) = v40;
    v41 = *(a1 + 32);
    v42 = *(a1 + 48);
    v43 = *(a1 + 64);
    v44 = *(a1 + 80);
    *(v36 + 12) = *(a1 + 96);
    *(v36 + 4) = v43;
    *(v36 + 5) = v44;
    *(v36 + 2) = v41;
    *(v36 + 3) = v42;
    outlined init with copy of HostingScrollViewUpdateContext(&v219, &v203);
    outlined destroy of HostingScrollViewUpdateContext?(v210);
    return (v15 != 0);
  }

  v187 = v8;

  v16 = [v3 _isAutomaticContentOffsetAdjustmentEnabled];
  if ([v3 isTracking] & 1) != 0 || objc_msgSend(v3, sel_isDragging) || (objc_msgSend(v3, sel_isDecelerating) & 1) != 0 || (result = objc_msgSend(v3, sel_isScrollAnimating), (result))
  {
    result = [v3 _setAutomaticContentOffsetAdjustmentEnabled_];
  }

  v18 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper];
  v19 = *(v18 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    v184 = v9;
    v186 = v5;
    *(v18 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates) = v21;
    [v3 adjustedContentInset];
    v198 = v23;
    v199 = v22;
    v196 = v25;
    v197 = v24;
    v26 = (v18 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins);
    v27 = *(v18 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 16);
    v213 = *(v18 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins);
    v214 = v27;
    v215[0] = *(v18 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 32);
    *(v215 + 9) = *(v18 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 41);
    *(v218 + 9) = *(v18 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 105);
    v28 = *(v18 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 96);
    v217 = *(v18 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 80);
    v218[0] = v28;
    v216 = *(v18 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 64);
    v194 = v18;
    *&v29 = v18 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
    swift_beginAccess();
    *&v200 = v29;
    outlined init with copy of ScrollEnvironmentProperties(*&v29, v210);
    v30 = [v3 traitCollection];
    [v30 displayScale];

    static Edge.Set.all.getter();
    v31 = MEMORY[0x18D007050](&v207);
    v207 = v216;
    v208 = v217;
    v209[0] = v218[0];
    *(v209 + 9) = *(v218 + 9);
    v203 = v216;
    v204 = v217;
    v205[0] = v218[0];
    *(v205 + 9) = *(v218 + 9);
    MEMORY[0x18D007000](v206, v31);
    if (MEMORY[0x18D006FC0](&v203, v206))
    {
      v207 = v213;
      v208 = v214;
      v209[0] = v215[0];
      *(v209 + 9) = *(v215 + 9);
    }

    v203 = v207;
    v204 = v208;
    v205[0] = v209[0];
    *(v205 + 9) = *(v209 + 9);
    OptionalEdgeInsets.in(edges:)();
    [v3 contentInset];
    v195 = v32;
    v192 = v34;
    v193 = v33;
    v191 = v35;
    static EdgeInsets.zero.getter();
    v45 = v200;
    v185 = v6;
    v46 = UIScrollView.isAlignedToContentInsets.getter();
    EdgeInsets.adding(_:)();
    v51 = v50;
    if (BYTE1(v211))
    {
      v50 = v48;
      v48 = v51;
    }

    if (v195 != v47 || v193 != v48 || v192 != v49 || v191 != v50)
    {
      [v3 setContentInset_];
      if (v46)
      {
        UIScrollView.alignToContentInsets()();
      }
    }

    outlined destroy of ScrollEnvironmentProperties(v210);
    memmove(&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_oldContentMargins], v26, 0xF9uLL);
    outlined init with copy of ScrollEnvironmentProperties(v45, &v203);
    UIScrollView.updatePagingProperties(properties:)();
    outlined destroy of ScrollEnvironmentProperties(&v203);
    v52 = OBJC_IVAR____TtC7SwiftUI17HostingScrollView_configuration;
    swift_beginAccess();
    outlined init with copy of ScrollViewConfiguration(&v3[v52], &v203);
    static Edge.Set.all.getter();
    v53 = v203;
    if (v203)
    {
      static Edge.Set.horizontal.getter();
      if ((v53 & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    else if ((v203 & 2) == 0)
    {
LABEL_25:
      outlined destroy of ScrollViewConfiguration(&v203);
      EdgeInsets.in(_:)();
      v55 = v54;
      origin = v220.origin;
      height = v220.size.height;
      width = v220.size.width;
      v60 = v59 + CGRectGetWidth(v220);
      v225.origin = origin;
      v225.size.width = v60;
      v225.size.height = height;
      v61 = v55 + CGRectGetHeight(v225);
      v62 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_host];
      [v62 frame];
      v248.origin = origin;
      v248.size.width = v60;
      v248.size.height = v61;
      if (!CGRectEqualToRect(v226, v248))
      {
        [v62 setFrame_];
      }

      v63 = v222;
      if (!(v222 >> 62))
      {
        v85 = [v3 isTracking];
        v183 = v16;
        if (v85 & 1) != 0 || ([v3 isDecelerating])
        {
          v86 = v15;
          LODWORD(v195) = 0;
        }

        else
        {
          v86 = v15;
          LODWORD(v195) = [v3 isScrollAnimating] ^ 1;
        }

        v87 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_safeAreaTransitionState + 8];
        v88 = swift_getObjectType();
        v89 = *(v87 + 8);
        swift_unknownObjectRetain();
        v90 = v89(v88, v87);
        swift_unknownObjectRelease();
        if (v63 < 2u)
        {
          v15 = v86;
          v16 = v183;
          v45 = v200;
          if (v90)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v15 = v86;
          v16 = v183;
          v45 = v200;
          if (v63 - 3 >= 2 && !LODWORD(v195))
          {
            goto LABEL_58;
          }
        }

        *(v194 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending) = 0;
        [v3 contentOffset];
        *&v200 = v91;
        v195 = v92;
        v94 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_lastAdjustedContentInsets];
        v93 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_lastAdjustedContentInsets + 8];
        v95 = v219;
        [v3 adjustedContentInset];
        v97 = v96;
        [v3 adjustedContentInset];
        v98 = v95.x - v97;
        v100 = v95.y - v99;
        [v3 contentSize];
        v227.size.width = v101;
        v227.size.height = v102;
        v227.origin.x = 0.0;
        v227.origin.y = 0.0;
        if (CGRectContainsPoint(v227, v95) || (v228.origin.x = 0.0, v228.origin.y = 0.0, v228.size.width = width, v228.size.height = height, CGRectContainsPoint(v228, v95)))
        {
          [v3 setContentSize_];
          v103 = 1;
        }

        else
        {
          v103 = 0;
        }

        v104 = *&v200 + v93;
        v105 = v195 + v94;
        [v3 setContentOffset_];
        if (v63 == 1)
        {
          ScrollViewHelper.requestTargetContentOffsetUpdate()();
        }

        v106 = &v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationOffset];
        v107 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationOffset + 8];
        *v106 = v98 - v104 + *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationOffset];
        v106[1] = v100 - v105 + v107;
        if (v103)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      if (v222 >> 62 != 1)
      {
        HostingScrollView.checkAnimationCompletion()();
        goto LABEL_58;
      }

      v64 = *((v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v65 = *((v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v66 = *((v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v67 = *((v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v68 = *((v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x29);

      v69 = [v3 adjustedContentInset];
      v74 = v219;
      if (*&v221 - (v71 + v73) < 0.0)
      {
        v75 = 0.0;
      }

      else
      {
        v75 = *&v221 - (v71 + v73);
      }

      if (*(&v221 + 1) - (v70 + v72) < 0.0)
      {
        v76 = 0.0;
      }

      else
      {
        v76 = *(&v221 + 1) - (v70 + v72);
      }

      if (v75 == 0.0 && v76 == 0.0 || width == 0.0 && height == 0.0 || (LODWORD(v195) = v68, v180 = v67, v77 = MEMORY[0x1EEE9AC00](v69), *(&v176 - 7) = v74, *(&v176 - 12) = *&v75, *(&v176 - 11) = *&v76, *(&v176 - 10) = width, *(&v176 - 9) = height, v191 = v78, v192 = v77, *(&v176 - 8) = v77, *(&v176 - 7) = v78, *(&v176 - 6) = v79, *(&v176 - 5) = v80, v193 = v64, *(&v176 - 4) = v64, *(&v176 - 3) = v65, *(&v176 - 16) = v81, type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ScrollTarget?, MEMORY[0x1E697DF10]), static Update.ensure<A>(_:)(), (BYTE1(v205[1]) & 1) != 0))
      {

        v82 = &v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget];
        v83 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget];
        v84 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget + 8];
        *v82 = 0;
        *(v82 + 1) = 0;
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v83, v84);
LABEL_58:
        [v3 setContentSize_];
LABEL_59:
        v108 = *(v45 + 81);
        if (v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_layoutDirection] != v108)
        {
          v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_layoutDirection] = v108;
          ScrollViewHelper.updateGraphState(isPreferred:)(0);
        }

        $defer #2 () in HostingScrollView.updateContext(_:)(v3, v199, v198, v197, v196);
        if ([v3 isTracking] & 1) != 0 || objc_msgSend(v3, sel_isDragging) || (objc_msgSend(v3, sel_isDecelerating) & 1) != 0 || (objc_msgSend(v3, sel_isScrollAnimating))
        {
          [v3 _setAutomaticContentOffsetAdjustmentEnabled_];
        }

        return (v15 != 0);
      }

      v179 = v65;
      v109 = v205[1];
      LOBYTE(v205[1]) &= 1u;
      ScrollTarget.rect.getter();
      v114 = v112;
      v115 = v113;
      v182 = height;
      if (v109)
      {
        v116 = v110;
        v229.origin.x = v74.x;
        v117 = v111;
        v229.origin.y = v74.y;
        v229.size.width = v75;
        v229.size.height = v76;
        v177 = v116;
        v178 = v117;
        v118 = v114;
        v119 = v115;
        v120 = CGRectContainsRect(v229, *(&v114 - 2));
        x = v74.x;
        v122 = v193;
        v123 = LODWORD(v195);
        if (!v120)
        {
          v230.origin.x = v177;
          v230.origin.y = v178;
          v230.size.width = v118;
          v230.size.height = v115;
          MaxX = CGRectGetMaxX(v230);
          v231.origin = v74;
          v231.size.width = v75;
          v231.size.height = v76;
          if (CGRectGetMaxX(v231) <= MaxX)
          {
            v239.origin.x = v177;
            v239.origin.y = v178;
            v239.size.width = v118;
            v239.size.height = v115;
            v173 = CGRectGetMaxX(v239);
            v240.origin = v74;
            v240.size.width = v75;
            v240.size.height = v76;
            v127 = v173 - CGRectGetWidth(v240);
          }

          else
          {
            v232.origin.x = v177;
            v232.origin.y = v178;
            v232.size.width = v118;
            v232.size.height = v115;
            MinX = CGRectGetMinX(v232);
            v233.origin = v74;
            v233.size.width = v75;
            v233.size.height = v76;
            v126 = MinX < CGRectGetMinX(v233);
            v127 = v74.x;
            if (v126)
            {
              v234.origin.x = v177;
              v234.origin.y = v178;
              v234.size.width = v118;
              v234.size.height = v115;
              v127 = CGRectGetMinX(v234);
            }
          }

          y = v127;
          v241.origin.x = v177;
          v241.origin.y = v178;
          v241.size.width = v118;
          v241.size.height = v115;
          MaxY = CGRectGetMaxY(v241);
          v242.origin = v74;
          v242.size.width = v75;
          v242.size.height = v76;
          if (CGRectGetMaxY(v242) <= MaxY)
          {
            v246.origin.x = v177;
            v246.origin.y = v178;
            v246.size.width = v118;
            v246.size.height = v115;
            CGRectGetMaxY(v246);
            v247.origin = v74;
            v247.size.width = v75;
            v247.size.height = v76;
            CGRectGetHeight(v247);
            x = y;
          }

          else
          {
            v243.origin.x = v177;
            v243.origin.y = v178;
            v243.size.width = v118;
            v243.size.height = v115;
            MinY = CGRectGetMinY(v243);
            v244.origin = v74;
            v244.size.width = v75;
            v244.size.height = v76;
            if (MinY < CGRectGetMinY(v244))
            {
              v245.origin.x = v177;
              v245.origin.y = v178;
              v245.size.width = v118;
              v245.size.height = v115;
              CGRectGetMinY(v245);
            }

            x = y;
          }
        }
      }

      else
      {
        v128 = UnitPoint.in(_:)(*&v110);
        y = v128.y;
        x = v128.x - UnitPoint.in(_:)(__PAIR128__(*&v76, *&v75)).x;
        v122 = v193;
        v123 = LODWORD(v195);
      }

      y = x;
      v235.origin = v74;
      v235.size.width = v75;
      v235.size.height = v76;
      v129 = width - CGRectGetWidth(v235);
      if (v129 > 0.0)
      {
        v130 = v129;
      }

      else
      {
        v130 = 0.0;
      }

      v236.origin = v74;
      v236.size.width = v75;
      v236.size.height = v76;
      v131 = v182 - CGRectGetHeight(v236);
      if (v131 > 0.0)
      {
        v132 = v131;
      }

      else
      {
        v132 = 0.0;
      }

      v133 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v132, *&v130));
      [v3 contentOffset];
      v135 = v134;
      v137 = v136;

      if ((v123 & 1) == 0)
      {
        [v3 stopScrollingAndZooming];
      }

      [v3 contentSize];
      v237.size.width = v138;
      v237.size.height = v139;
      v237.origin.x = 0.0;
      v237.origin.y = 0.0;
      v140 = CGRectContainsPoint(v237, v133);
      height = v182;
      if (v140 || (v238.origin.x = 0.0, v238.origin.y = 0.0, v238.size.width = width, v238.size.height = v182, CGRectContainsPoint(v238, v133)))
      {
        [v3 setContentSize_];
        LODWORD(y) = 1;
      }

      else
      {
        LODWORD(y) = 0;
      }

      v141 = v133.x - v191;
      v142 = v133.y - v192;
      if (((*&v66 == 0) & v123) != 0)
      {
LABEL_96:
        v151 = v194;
        ScrollViewHelper.updateGraphState(isPreferred:)(*&v66 == 0);
        v152 = *(v151 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) == 0;
        if (v66 != 0.0)
        {
          v152 = 1;
        }

        if (((v152 | v123) & 1) == 0)
        {
          *(v151 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) = 0;
          v153 = v151 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState;
          *(v153 + 32) = 0u;
          *(v153 + 48) = 0u;
          *v153 = 0u;
          *(v153 + 16) = 0u;
          *(v153 + 66) = 0;
          *(v153 + 64) = 512;
          ScrollViewHelper.updateGraphState(isPreferred:)(0);
          v151 = v194;
        }

        *(v151 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending) = 0;
        v154 = &v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTargetConfig];
        v155 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTargetConfig];
        *v154 = 1;
        *(v154 + 4) = 0;
        outlined consume of ListItemTint?(v155);
        v156 = &v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget];
        v157 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget];
        v158 = *&v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget + 8];
        *v156 = 0;
        v156[1] = 0;
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v157, v158);
        if (v66 == 0.0 || v141 - v135 == 0.0 && v142 - v137 == 0.0)
        {
          type metadata accessor for OS_dispatch_queue();
          v195 = COERCE_DOUBLE(static OS_dispatch_queue.main.getter());
          v159 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v160 = swift_allocObject();
          *(v160 + 2) = v159;
          v160[3] = v122;
          *(v160 + 4) = v179;
          *&v205[0] = partial apply for closure #1 in HostingScrollView.updateContext(_:);
          *(&v205[0] + 1) = v160;
          *&v203 = MEMORY[0x1E69E9820];
          *(&v203 + 1) = 1107296256;
          *&v204 = thunk for @escaping @callee_guaranteed () -> ();
          *(&v204 + 1) = &block_descriptor_79;
          v161 = _Block_copy(&v203);

          v193 = v66;
          v162 = v189;
          static DispatchQoS.unspecified.getter();
          *&v203 = MEMORY[0x1E69E7CC0];
          lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          type metadata accessor for [DispatchWorkItemFlags](0);
          lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], type metadata accessor for [DispatchWorkItemFlags], MEMORY[0x1E69E6328]);
          v163 = v186;
          v164 = v187;
          v45 = v200;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v165 = v195;
          MEMORY[0x18D00DA20](0, v162, v164, v161);
          _Block_release(v161);

          (*(v185 + 8))(v164, v163);
          (*(v190 + 8))(v162, v184);
        }

        else
        {

          v166 = *&v122;
          v167 = *v156;
          v168 = v156[1];
          v169 = v179;
          *v156 = v166;
          v156[1] = v169;

          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v167, v168);
          if (LODWORD(v195))
          {
            v170 = 256;
          }

          else
          {
            v170 = 0;
          }

          v171 = v170 | v180;
          v172 = *v154;
          *v154 = v66;
          *(v154 + 4) = v171;
          outlined consume of ListItemTint?(v172);
        }

        if (LOBYTE(y))
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      static Semantics.v6_4.getter();
      if ((isLinkedOnOrAfter(_:)() & 1) != 0 && v66 != 0.0)
      {

        static Animation.default.getter();
        v143 = static Animation.== infix(_:_:)();

        if ((v143 & 1) == 0)
        {
          v144 = Animation.caBasicAnimation.getter();
          if (v144)
          {
            v145 = v144;
            v201.receiver = v3;
            v201.super_class = ObjectType;
            objc_msgSendSuper2(&v201, sel__setContentOffset_animation_, v144, v141, v142);
            v146 = v194;
            *(v194 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) = 4;
            v147 = v146 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState;
            *(v147 + 32) = 0u;
            *(v147 + 48) = 0u;
            *v147 = 0u;
            *(v147 + 16) = 0u;
            *(v147 + 66) = 0;
            *(v147 + 64) = 512;
            ScrollViewHelper.updateGraphState(isPreferred:)(0);

            v45 = v200;
            v122 = v193;
LABEL_95:
            v150 = &v3[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationOffset];
            *v150 = v141;
            v150[1] = v142;
            goto LABEL_96;
          }
        }

        v45 = v200;
        v122 = v193;
      }

      v202.receiver = v3;
      v202.super_class = ObjectType;
      objc_msgSendSuper2(&v202, sel_setContentOffset_animated_, *&v66 != 0, v141, v142);
      if (v66 != 0.0)
      {
        v148 = v194;
        *(v194 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) = 4;
        v149 = v148 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState;
        *(v149 + 32) = 0u;
        *(v149 + 48) = 0u;
        *v149 = 0u;
        *(v149 + 16) = 0u;
        *(v149 + 66) = 0;
        *(v149 + 64) = 512;
        ScrollViewHelper.updateGraphState(isPreferred:)(0);
      }

      goto LABEL_95;
    }

    static Edge.Set.vertical.getter();
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BE4F4B8()
{

  return swift_deallocObject();
}

uint64_t initializeWithCopy for HostingScrollViewUpdateContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  outlined copy of SystemScrollLayoutState.ContentOffsetMode(v6);
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for HostingScrollViewUpdateContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 104))
  {
    return (*a1 + 14);
  }

  v3 = (((*(a1 + 64) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 64) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t initializeWithCopy for ContentScrollViewBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = a4(a1, a2, a3);
  (a4)(v7 + 8, a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

void destroy for ContentScrollViewBox()
{
  MEMORY[0x18D011290]();

  JUMPOUT(0x18D011290);
}

uint64_t closure #1 in ContentScrollViewProvider.updateValue()(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentScrollViewBox>, &type metadata for ContentScrollViewBox, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  outlined init with copy of ContentScrollViewBox(a2, inited + 32);
  return specialized Array.append<A>(contentsOf:)(inited);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentScrollViewBox>, &type metadata for ContentScrollViewBox, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusStoreList.Item>, &type metadata for FocusStoreList.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<[UIView]>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for WeakBox<UIGestureRecognizer>(0, &lazy cache variable for type metadata for [UIView], &lazy cache variable for type metadata for UIView, 0x1E69DD250, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<(StrongHash, DisplayList)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Badge, Spacer)(0, &lazy cache variable for type metadata for (StrongHash, DisplayList), MEMORY[0x1E697DB08], MEMORY[0x1E697DCB0]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<_RowVisitationContext<TableDataSourceAdaptor>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[26 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 208 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ClosedRange<CGFloat>(0, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for _RowVisitationContext);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<(tag: String, item: String)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)(0, &lazy cache variable for type metadata for (tag: String, item: String), MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], "tag item ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_Benchmark, [Double])>, type metadata accessor for (_Benchmark, [Double]), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (_Benchmark, [Double])(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<PresentationOptionsPreference?>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[18 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 144 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<HitTestTrace<PlatformGestureRecognizerContainerBox>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for HitTestTrace<PlatformGestureRecognizerContainerBox>, &type metadata for PlatformGestureRecognizerContainerBox, &protocol witness table for PlatformGestureRecognizerContainerBox, type metadata accessor for HitTestTrace);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>, type metadata accessor for (index: Int, element: TabCustomizationID, id: TabCustomizationID), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (index: Int, element: TabCustomizationID, id: TabCustomizationID)();
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<WeakBox<UIGestureRecognizer>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      type metadata accessor for WeakBox<UIGestureRecognizer>(0, &lazy cache variable for type metadata for WeakBox<UIGestureRecognizer>, &lazy cache variable for type metadata for UIGestureRecognizer, 0x1E69DCA60, MEMORY[0x1E6981A78]);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      type metadata accessor for WeakBox<UIGestureRecognizer>(0, &lazy cache variable for type metadata for WeakBox<UIGestureRecognizer>, &lazy cache variable for type metadata for UIGestureRecognizer, 0x1E69DCA60, MEMORY[0x1E6981A78]);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for WeakBox<UIGestureRecognizer>(0, &lazy cache variable for type metadata for WeakBox<UIGestureRecognizer>, &lazy cache variable for type metadata for UIGestureRecognizer, 0x1E69DCA60, MEMORY[0x1E6981A78]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<(String, String)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Badge, Spacer)(0, &lazy cache variable for type metadata for (String, String), MEMORY[0x1E69E6158], MEMORY[0x1E69E6158]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void HostingScrollView.makeLayoutState()(uint64_t a1@<X8>)
{
  [v1 adjustedContentInset];
  v6 = v5;
  v8 = v7;
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_layoutDirection))
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (*(v1 + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_layoutDirection))
  {
    v10 = v4;
  }

  else
  {
    v10 = v3;
  }

  [v1 contentOffset];
  v12 = v11;
  v14 = v13;
  [v1 adjustedContentInset];
  v16 = v15;
  [v1 adjustedContentInset];
  v18 = v14 + v17;
  static EdgeInsets.zero.getter();
  *a1 = v12 + v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v6;
  *(a1 + 24) = v10;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v19;
  *(a1 + 56) = v20;
  *(a1 + 64) = v21;
  *(a1 + 72) = v22;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x8000000000000000;
  *(a1 + 104) = 0;
}

CGSize_optional __swiftcall HostingScrollView.makeContainerSize()()
{
  ObjectType = swift_getObjectType();
  [v0 adjustedContentInset];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel_bounds);
  CGSize.inset(by:)();
  v4 = LOBYTE(v2);
  result.value.height = v3;
  result.value.width = v2;
  result.is_nil = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemScrollLayoutState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 108))
  {
    return (*a1 + 14);
  }

  v3 = (((*(a1 + 96) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 96) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SystemScrollLayoutState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 108) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 108) = 0;
    }

    if (a2)
    {
      *(result + 96) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>))
  {
    type metadata accessor for ScrollEnvironmentProperties?(255, &lazy cache variable for type metadata for WeakAttribute<SystemScrollLayoutState>, &type metadata for SystemScrollLayoutState, MEMORY[0x1E698D370]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>));
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScrollViewCommitMutation and conformance ScrollViewCommitMutation()
{
  result = lazy protocol witness table cache variable for type ScrollViewCommitMutation and conformance ScrollViewCommitMutation;
  if (!lazy protocol witness table cache variable for type ScrollViewCommitMutation and conformance ScrollViewCommitMutation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewCommitMutation, &type metadata for ScrollViewCommitMutation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewCommitMutation and conformance ScrollViewCommitMutation);
  }

  return result;
}

__n128 initializeWithCopy for ScrollViewCommitMutation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3 >> 60 == 15)
  {
    v4 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v4;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    v6 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v6;
  }

  else
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    v8 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v8;
    v9 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v9;
    v10 = a1;
    outlined copy of SystemScrollLayoutState.ContentOffsetMode(v3);
    a1 = v10;
    *(v10 + 96) = v3;
    *(v10 + 104) = *(a2 + 104);
    *(v10 + 108) = *(a2 + 108);
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  result = *(a2 + 161);
  *(a1 + 161) = result;
  *(a1 + 177) = *(a2 + 177);
  return result;
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v5;
    v33 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      v23 = MEMORY[0x18D00F6C0](*(v8 + 40), v21);
      v24 = -1 << *(v8 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v6 + 32);
      if (v31 >= 64)
      {
        bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v6 + 16) = 0;
    }

    v4 = v33;
  }

  else
  {
  }

  *v4 = v8;
}

{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v36 = v5;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
}

{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v36 = v5;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v34 = v3;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v37 = (v13 - 1) & v13;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
        v24 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v6 = v35;
      v13 = v37;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
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

      v4 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
}

void type metadata accessor for _DictionaryStorage<UInt, ObjectIdentifier>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UInt, ObjectIdentifier>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UInt, ObjectIdentifier>);
    }
  }
}

Swift::Void __swiftcall ScrollViewCommitMutation.apply()()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 176);
  v3 = MEMORY[0x1E698D3F8];
  if (*(v0 + 96) >> 60 != 15 && AGWeakAttributeGetAttribute() != *v3)
  {
    AGGraphSetValue();
  }

  if (v1 != 5 && AGWeakAttributeGetAttribute() != *v3)
  {
    AGGraphSetValue();
  }

  if ((v2 & 1) == 0 && AGWeakAttributeGetAttribute() != *v3)
  {
    type metadata accessor for CGSize(0);
    AGGraphSetValue();
  }
}

Swift::Void __swiftcall HostingScrollView.layoutSubviews()()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  ScrollViewHelper.didLayoutSubviews()();
  v2 = OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pinnedViews;
  swift_beginAccess();
  v3 = *&v1[v2];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(v3 + 56) + ((v8 << 9) | (8 * v10)));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = v11;
      [v13 bounds];
      [v13 convertRect:v1 toCoordinateSpace:?];
      [v14 setFrame_];
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void ScrollViewHelper.retargetContentOffsetIfNeeded()()
{
  type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v35 - v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState);
    v7 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState + 16);
    v8 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState + 24);
    v9 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState + 32);
    v10 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState + 40);
    v11 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState + 48);
    v12 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState + 56);
    v13 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState + 64);
    v15 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState + 66);
    v46 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState + 65);
    v14 = v46;
    if (v46 == 2 || (v45 = *v6, (v15 & 1) == 0))
    {
LABEL_24:

      return;
    }

    v16 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates;
    v17 = *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates) = v19;
      v42 = v7;
      v43 = v8;
      v44 = 1;
      memset(v40, 0, sizeof(v40));
      v41 = 1;
      v39 = v0;
      ScrollViewHelper.updateTargetContentOffset(_:velocity:scrollGeometry:originalOffset:)(&v42, v40, v11, v12, v13 & 1, v9, v10);
      v21 = v42;
      v20 = v43;
      if (vabdd_f64(v42, v7) < 0.01 && vabdd_f64(v43, v8) < 0.01)
      {
        v22 = v39;
        v23 = *(v39 + v16);
        v18 = __OFSUB__(v23, 1);
        v24 = v23 - 1;
        if (!v18)
        {
LABEL_21:
          *(v22 + v16) = v24;
          if (!v24 && *(v22 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate) != 2)
          {
            ScrollViewHelper.updateGraphState(isPreferred:)(0);
          }

          goto LABEL_24;
        }

        __break(1u);
      }

      v38 = v13;
      v22 = v39;
      *(v39 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending) = 0;
      static Log.scroll.getter();
      v25 = type metadata accessor for Logger();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v3, 1, v25) == 1)
      {
        outlined destroy of ScrollEnvironmentProperties?(v3, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?);
      }

      else
      {
        v27 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v37))
        {
          v28 = swift_slowAlloc();
          v36 = v16;
          v29 = v28;
          *v28 = 134218240;
          *(v28 + 4) = v21;
          *(v28 + 12) = 2048;
          *(v28 + 14) = v20;
          _os_log_impl(&dword_18BD4A000, v27, v37, "Updating deceleration target to (%f, %f)", v28, 0x16u);
          v30 = v29;
          v16 = v36;
          MEMORY[0x18D0110E0](v30, -1, -1);
        }

        (*(v26 + 8))(v3, v25);
        v22 = v39;
      }

      v31 = *(v22 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_updateFlags);
      v32 = v38;
      if ((v31 & 1) == 0)
      {
        *(v22 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_updateFlags) = v31 | 1;
      }

      v33 = v46;
      if ([v5 isPagingEnabled])
      {
        [v5 _setPageDecelerationTarget_];
      }

      else
      {
        [v5 setContentOffset:v33 animated:{v21, v20}];
        [v5 contentOffset];
      }

      *v6 = v45;
      v6[2] = v7;
      v6[3] = v8;
      v6[4] = v9;
      v6[5] = v10;
      *(v6 + 6) = v11;
      *(v6 + 7) = v12;
      *(v6 + 64) = v32;
      *(v6 + 65) = v14;
      *(v6 + 66) = 0;
      v34 = *(v22 + v16);
      v18 = __OFSUB__(v34, 1);
      v24 = v34 - 1;
      if (!v18)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }
}

void closure #1 in UIScrollView.updateRefreshControl(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9[0] = a2;
    v9[1] = a3;
    v9[2] = a4;
    UIScrollView._updateRefreshControl(_:)(v9);
  }
}

void UIScrollView._updateRefreshControl(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = [v2 refreshControl];
  if (v6)
  {
  }

  else if (v4)
  {
    refreshed = type metadata accessor for UIKitRefreshControl();
    v10 = objc_allocWithZone(refreshed);
    *&v10[OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_currentTask] = 0;
    v11 = &v10[OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_configuration];
    *v11 = v4;
    v11[1] = v3;
    v11[2] = v5;
    outlined copy of AppIntentExecutor?(v4, v3);
    v14.receiver = v10;
    v14.super_class = refreshed;

    v12 = objc_msgSendSuper2(&v14, sel_init);
    [v12 addTarget:v12 action:sel__swiftui_handleRefreshControl forControlEvents:4096];
    [v2 setRefreshControl_];

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4, v3);
    return;
  }

  v7 = [v2 refreshControl];
  if (v7)
  {
    v13 = v7;
    if (v4)
    {
      type metadata accessor for UIKitRefreshControl();
      if (swift_dynamicCastClass())
      {
        v15[0] = v4;
        v15[1] = v3;
        v15[2] = v5;
        outlined copy of AppIntentExecutor?(v4, v3);
        v8 = v13;
        UIKitRefreshControl.configuration.setter(v15);

        return;
      }
    }

    else
    {
      [v2 setRefreshControl_];
    }
  }
}

void closure #1 in UIView.adoptEnvironment(_:hostedSubview:)(void *a1, char a2, void *a3)
{
  v6 = a2 & 1;
  if ([a1 isUserInteractionEnabled] != v6)
  {
    [a1 setUserInteractionEnabled_];
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a3;
    if ([v8 isEnabled] != (a2 & 1))
    {
      [v8 setEnabled_];
    }
  }
}

double ScrollViewDisplayList.value.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 12);
  type metadata accessor for HostingScrollView();
  AGGraphGetValue();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    v6[5] = type metadata accessor for HostingScrollView.PlatformContainer();
    v6[6] = lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type HostingScrollView.PlatformContainer and conformance HostingScrollView.PlatformContainer, type metadata accessor for HostingScrollView.PlatformContainer, protocol conformance descriptor for HostingScrollView.PlatformContainer);
    v6[2] = v5;
    v7 = *MEMORY[0x1E698D3F8];
    v8 = v5;
    if (v3 == v7)
    {
      DisplayList.init()();
      v9 = v23;
      v10 = v24;
      v11 = v25;
    }

    else
    {
      Value = AGGraphGetValue();
      v10 = *(Value + 8);
      v11 = *(Value + 12);
    }

    *&v19 = v6;
    *(&v19 + 1) = 0x300000000;
    *&v20 = v9;
    *(&v20 + 1) = v10 | (v11 << 32) | 0x40000000;
    type metadata accessor for CGRect(0);
    AGGraphGetValue();
    DisplayList.Version.init(forUpdate:)();
    DisplayList.Item.init(_:frame:identity:version:)();
    LOBYTE(v19) = 0;
    DisplayList.Item.canonicalize(options:)();
    v17[2] = v28;
    v18[0] = v29[0];
    *(v18 + 12) = *(v29 + 12);
    v17[0] = v26;
    v17[1] = v27;
    outlined init with copy of DisplayList.Item(v17, &v19);
    DisplayList.init(_:)();

    v21 = v28;
    v22[0] = v29[0];
    *(v22 + 12) = *(v29 + 12);
    v19 = v26;
    v20 = v27;
    outlined destroy of DisplayList.Item(&v19);
  }

  else if (v3 == *MEMORY[0x1E698D3F8])
  {

    DisplayList.init()();
  }

  else
  {
    v14 = AGGraphGetValue();
    v15 = *(v14 + 8);
    v16 = *(v14 + 12);
    *a1 = *v14;
    *(a1 + 8) = v15;
    *(a1 + 12) = v16;
  }

  return result;
}

uint64_t sub_18BE50F8C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type HostingScrollView.PlatformContainer and conformance HostingScrollView.PlatformContainer()
{
  result = lazy protocol witness table cache variable for type HostingScrollView.PlatformContainer and conformance HostingScrollView.PlatformContainer;
  if (!lazy protocol witness table cache variable for type HostingScrollView.PlatformContainer and conformance HostingScrollView.PlatformContainer)
  {
    v3 = type metadata accessor for HostingScrollView.PlatformContainer();
    result = swift_getWitnessTable(protocol conformance descriptor for HostingScrollView.PlatformContainer, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HostingScrollView.PlatformContainer and conformance HostingScrollView.PlatformContainer);
  }

  return result;
}

Swift::Void __swiftcall HostingScrollView.PlatformContainer._updateSafeAreaInsets()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 window];
  if (v3)
  {

    v4 = &v0[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer__safeAreaInsets];
    swift_beginAccess();
    v5 = v4->f64[0];
    v6 = v4->f64[1];
    v7 = v4[1].f64[0];
    v8 = v4[1].f64[1];
    v40.receiver = v0;
    v40.super_class = ObjectType;
    objc_msgSendSuper2(&v40, sel_safeAreaInsets);
    if (v8 != 1.79769313e308)
    {
      v9 = 1.79769313e308;
      v10 = 1.79769313e308;
      v11 = 1.79769313e308;
      v12 = v8;
    }

    v14 = v5 == 1.79769313e308 && v6 == 1.79769313e308 && v7 == 1.79769313e308;
    if (v14)
    {
      v15 = v9;
    }

    else
    {
      v15 = v5;
    }

    if (v14)
    {
      v16 = v10;
    }

    else
    {
      v16 = v6;
    }

    if (v14)
    {
      v17 = v11;
    }

    else
    {
      v17 = v7;
    }

    if (v14)
    {
      v18 = v12;
    }

    else
    {
      v18 = v8;
    }

    v19 = *&v0[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_safeAreaHelper];
    v20 = *&v0[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_scrollView];
    if ([v20 isTracking] & 1) != 0 || objc_msgSend(v20, sel_isDecelerating) || (objc_msgSend(v20, sel_isScrollAnimating))
    {
      v21 = 1;
    }

    else
    {
      v34 = *&v20[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_safeAreaTransitionState + 8];
      v35 = swift_getObjectType();
      v36 = *(v34 + 8);
      v37 = v35;
      swift_unknownObjectRetain();
      v21 = v36(v37, v34);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    PlatformSafeAreaHelper.adjustSafeAreaIfNeeded(_safeAreaInsets:containerView:shouldEagerlyUpdate:)(v4, v1, v21 & 1);
    if ((*(v19 + 48) & 1) == 0)
    {
      v22 = *(v19 + 32);
      *v4 = *(v19 + 16);
      v4[1] = v22;
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
      *(v19 + 48) = 1;
    }

    swift_endAccess();
    v39.receiver = v1;
    v39.super_class = ObjectType;
    objc_msgSendSuper2(&v39, sel__updateSafeAreaInsets);
    v24 = v4->f64[0];
    v23 = v4->f64[1];
    v26 = v4[1].f64[0];
    v25 = v4[1].f64[1];
    v38.receiver = v1;
    v38.super_class = ObjectType;
    objc_msgSendSuper2(&v38, sel_safeAreaInsets);
    if (v24 == 1.79769313e308 && v23 == 1.79769313e308 && v26 == 1.79769313e308)
    {
      v24 = v25 == 1.79769313e308 ? v27 : 1.79769313e308;
      v23 = v25 == 1.79769313e308 ? v28 : 1.79769313e308;
      v26 = v25 == 1.79769313e308 ? v29 : 1.79769313e308;
      if (v25 == 1.79769313e308)
      {
        v25 = v30;
      }
    }

    if (v15 != v24 || v16 != v23 || v17 != v26 || v18 != v25)
    {
      v31 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_isInitialSafeAreaUpdate;
      if (*(v1 + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_isInitialSafeAreaUpdate) == 1)
      {
        v32 = objc_opt_self();
        v33 = [v32 areAnimationsEnabled];
        [v32 setAnimationsEnabled_];
        [v20 _updateSafeAreaInsets];
        [v32 setAnimationsEnabled_];
      }

      else
      {
        [v20 _updateSafeAreaInsets];
      }

      *(v1 + v31) = 0;
    }
  }
}

Swift::Void __swiftcall ScrollViewHelper.updateGraphState(isPreferred:)(Swift::Bool isPreferred)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates))
  {
    v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate);
    if (v3 == 2 || (v3 & 1) == 0)
    {
      *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate) = isPreferred;
    }
  }

  else
  {
    v53 = 0;
    v4 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_updateFlags;
    if (*(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_updateFlags))
    {
      LOBYTE(v37) = 2;
      Transaction.scrollContentOffsetAdjustmentBehavior.setter();
    }

    v5 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate;
    v31 = *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate);
    v6 = v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(&v45, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v51 = 0xF000000000000000;
      v52 = 0;
    }

    ScrollPhaseState.init(phase:velocity:)();
    v9 = v37;
    v10 = *(&v37 + 1);
    v11 = v38;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v6 + 8);
      v13 = swift_getObjectType();
      v14 = (*(v12 + 16))(v13, v12);
      v16 = v15;
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
      v16 = 0;
      v18 = 1;
    }

    v19 = v51;
    if (v51 >> 60 == 15)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0uLL;
      v19 = 0xF000000000000000;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
    }

    else
    {
      v22 = v45;
      v23 = v46;
      v24 = v47;
      v25 = v48;
      v26 = v49;
      v27 = v50;
      v20 = *(v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState + 4);
      v21 = v52 | (*(v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState) << 32);
    }

    v37 = v22;
    v38 = v23;
    v39 = v24;
    v40 = v25;
    v41 = v26;
    v42 = v27;
    *&v43 = v19;
    *(&v43 + 1) = v21;
    v44 = v20;
    v28 = *(v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState);
    *&v34 = v9;
    *(&v34 + 1) = v10;
    v35 = v11;
    v36 = v28;
    if (v18)
    {
      v14 = 0;
      v16 = 0;
      v29 = 0;
    }

    else
    {
      v29 = *(v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize);
    }

    v30 = v53;
    outlined init with copy of ScrollEnvironmentProperties?(&v45, v32, &lazy cache variable for type metadata for SystemScrollLayoutState?, &type metadata for SystemScrollLayoutState);
    specialized static ScrollViewCommitMutation.commit(layoutState:phaseState:containerSize:isPreferred:transaction:)(&v37, &v34, v14, v16, v29, v18 & 1, v31 & 1, v30);
    outlined destroy of ScrollEnvironmentProperties?(&v45, &lazy cache variable for type metadata for SystemScrollLayoutState?, &type metadata for SystemScrollLayoutState, MEMORY[0x1E69E6720], type metadata accessor for ScrollEnvironmentProperties?);
    v32[4] = v41;
    v32[5] = v42;
    v32[6] = v43;
    v33 = v44;
    v32[0] = v37;
    v32[1] = v38;
    v32[2] = v39;
    v32[3] = v40;
    outlined destroy of ScrollEnvironmentProperties?(v32, &lazy cache variable for type metadata for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?, type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>), MEMORY[0x1E69E6720], type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?);

    *(v2 + v5) = 2;
    *(v2 + v4) = 0;
  }
}

double specialized static ScrollViewCommitMutation.commit(layoutState:phaseState:containerSize:isPreferred:transaction:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v11 = a1[6];
  v57 = a1[5];
  v58 = v11;
  v12 = a1[4];
  v59 = *(a1 + 28);
  v13 = a1[1];
  v52 = *a1;
  v53 = v13;
  v14 = a1[3];
  v54 = a1[2];
  v55 = v14;
  v56 = v12;
  v30 = a2[1];
  v31 = *a2;
  v15 = MEMORY[0x1E698D3F8];
  if (v11 >> 60 == 15 || AGWeakAttributeGetAttribute() == *v15)
  {
    v16 = 0;
  }

  else
  {
    v17 = AGGraphGetAttributeGraph();
    v16 = AGGraphRef.viewGraph()();
  }

  result = *&v31;
  if (v31 == 5 || AGWeakAttributeGetAttribute() == *v15)
  {
    v19 = 0;
    if (a6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v20 = AGGraphGetAttributeGraph();
    v19 = AGGraphRef.viewGraph()();

    if (a6)
    {
      goto LABEL_11;
    }
  }

  if (AGWeakAttributeGetAttribute() != *v15)
  {
    v23 = AGGraphGetAttributeGraph();
    v21 = AGGraphRef.viewGraph()();

    if (v16)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_11:
  v21 = 0;
  if (v16)
  {
LABEL_12:
    v22 = v16;
    goto LABEL_18;
  }

LABEL_14:
  if (v19)
  {

    v22 = v19;
  }

  else
  {
    if (!v21)
    {
      return result;
    }

    v22 = v21;
  }

LABEL_18:
  if (a8 == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = a8;
  }

  v51 = v24;

  outlined copy of Transaction?(a8);
  Transaction.fromScrollView.setter();
  v47[4] = v56;
  v47[5] = v57;
  v47[6] = v58;
  *v48 = v59;
  v47[0] = v52;
  v47[1] = v53;
  v47[2] = v54;
  v47[3] = v55;
  *&v48[24] = v30;
  *&v48[8] = v31;
  *&v48[40] = a3;
  *&v49 = a4;
  *(&v49 + 1) = a5;
  LOBYTE(v50) = a6 & 1;
  HIBYTE(v50) = a7 & 1;
  v43 = *&v48[16];
  v44 = *&v48[32];
  v45 = v49;
  v46 = v50;
  v39 = v56;
  v40 = v57;
  v41 = v58;
  v42 = *v48;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  v38 = v55;
  v32[0] = 1;
  outlined init with copy of (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(&v52, v33, type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?);
  lazy protocol witness table accessor for type ScrollViewCommitMutation and conformance ScrollViewCommitMutation();
  default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
  GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
  if (v58 >> 60 == 15)
  {

    outlined destroy of ScrollViewCommitMutation(v47);
  }

  else
  {
    if (v58 == 0x8000000000000000)
    {
      v33[5] = v57;
      v33[6] = v58;
      v33[0] = v52;
      v33[1] = v53;
      v33[2] = v54;
      v33[3] = v55;
      v33[4] = v56;
      v37 = v54;
      v38 = v55;
      v34 = v59;
      v35 = v52;
      v36 = v53;
      LODWORD(v42) = v59;
      v40 = v57;
      v41 = v58;
      v39 = v56;
      outlined init with copy of (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(&v35, v32, type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>));
      outlined init with copy of (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(v33, v32, type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>));
      static Semantics.v6.getter();
      v25 = isLinkedOnOrAfter(_:)();
    }

    else
    {
      v39 = v56;
      v40 = v57;
      v41 = v58;
      LODWORD(v42) = v59;
      v35 = v52;
      v36 = v53;
      v37 = v54;
      v38 = v55;
      outlined init with copy of (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(&v35, v33, type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>));
      v25 = 0;
    }

    LOBYTE(v35) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = v25 & 1;
    *(v26 + 24) = v22;

    static Update.enqueueAction(reason:_:)();

    outlined destroy of (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(&v52, type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?);

    outlined destroy of ScrollViewCommitMutation(v47);
  }

  return result;
}

uint64_t sub_18BE51C60()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?)
  {
    type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?);
    }
  }
}

double destroy for ScrollViewCommitMutation(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >> 60 != 15)
  {
    return outlined consume of SystemScrollLayoutState.ContentOffsetMode(v1);
  }

  return result;
}

uint64_t outlined destroy of (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of ScrollViewCommitMutation(uint64_t result)
{
  v1 = *(result + 96);
  if (v1 >> 60 != 15)
  {
    v2 = result;
    outlined consume of SystemScrollLayoutState.ContentOffsetMode(v1);
    return v2;
  }

  return result;
}

void type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

Swift::Void __swiftcall HostingScrollView.didMoveToWindow()()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_didMoveToWindow);
  v2 = [v0 window];
  v3 = v2;
  if (v2)
  {
  }

  static Signpost.scrollNotifyDidMoveToWindow(_:)();
  v4 = *&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper];
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    if (!v3)
    {
      _UIUpdateCycleUnregisterIdleObserver();
      return;
    }

    _UIUpdateCycleRegisterIdleObserver();
  }

  else if (!v3)
  {
    return;
  }

  v5 = v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
  swift_beginAccess();
  if ((*(v5 + 152) | *(v5 + 128)))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong flashScrollIndicators];
  }

  type metadata accessor for _SemanticFeature<Semantics_v4>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>, type metadata accessor for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697EC30]);
  if (static SemanticFeature.isEnabled.getter())
  {
    v7 = &v1[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_configuration];
    swift_beginAccess();
    v8 = *(v7 + 10);
    v9 = *(v7 + 11);
    v10 = *(v7 + 12);
    v21[0] = 17;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v8;
    v12[4] = v9;
    v12[5] = v10;
    outlined copy of AppIntentExecutor?(v8, v9);
    outlined copy of AppIntentExecutor?(v8, v9);

    static Update.enqueueAction(reason:_:)();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v8, v9);
  }

  HostingScrollView.flushPendingContext()();
  v13 = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 208);
  v22[12] = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 192);
  v22[13] = v13;
  v23[0] = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 224);
  *(v23 + 9) = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 233);
  v14 = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 144);
  v22[8] = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 128);
  v22[9] = v14;
  v15 = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 176);
  v22[10] = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 160);
  v22[11] = v15;
  v16 = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 80);
  v22[4] = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 64);
  v22[5] = v16;
  v17 = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 112);
  v22[6] = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 96);
  v22[7] = v17;
  v18 = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 16);
  v22[0] = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins);
  v22[1] = v18;
  v19 = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 48);
  v22[2] = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 32);
  v22[3] = v19;
  v20 = *(v4 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes);
  outlined init with copy of ScrollEnvironmentProperties(v5, v21);
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  static EdgeInsets.zero.getter();
  specialized UIScrollView.updateIndicatorInsets(margins:axes:properties:safeArea:accessoryPlacementInsets:)(v22, v20, v21);
  outlined destroy of ScrollEnvironmentProperties(v21);
}

void HostingScrollView.flushPendingContext()()
{
  v1 = [v0 window];
  if (v1)
  {

    v2 = &v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext];
    v3 = *&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext + 80];
    v22 = *&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext + 64];
    v23 = v3;
    v24 = *&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext + 96];
    v4 = *&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext + 16];
    v21[0] = *&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext];
    v21[1] = v4;
    v5 = *&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext + 48];
    v21[2] = *&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pendingContext + 32];
    v21[3] = v5;
    if (v22 >> 60 != 15)
    {
      v6 = *(v2 + 1);
      v16 = *v2;
      v17 = v6;
      v7 = *(v2 + 3);
      v18 = *(v2 + 2);
      v19 = v7;
      *v20 = v22;
      *&v20[8] = *(v2 + 72);
      *&v20[24] = *(v2 + 88);
      v15 = *(v2 + 12);
      v8 = *(v2 + 5);
      v14[4] = *(v2 + 4);
      v14[5] = v8;
      v14[0] = v16;
      v14[1] = v6;
      v14[2] = v18;
      v14[3] = v7;
      outlined init with copy of HostingScrollViewUpdateContext(v14, v13);
      HostingScrollView.updateContext(_:)(&v16, v9);
      outlined destroy of HostingScrollViewUpdateContext?(v21);
      v10 = *(v2 + 5);
      *v20 = *(v2 + 4);
      *&v20[16] = v10;
      *&v20[32] = *(v2 + 12);
      v11 = *(v2 + 1);
      v16 = *v2;
      v17 = v11;
      v12 = *(v2 + 3);
      v18 = *(v2 + 2);
      v19 = v12;
      *v2 = 0u;
      *(v2 + 1) = 0u;
      *(v2 + 2) = 0u;
      *(v2 + 3) = 0u;
      *(v2 + 8) = 0xF000000000000000;
      *(v2 + 72) = 0u;
      *(v2 + 88) = 0u;
      outlined destroy of HostingScrollViewUpdateContext?(&v16);
    }
  }
}

BOOL UIScrollView.isAlignedToContentInsets.getter()
{
  [v0 contentOffset];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  [v5 displayScale];
  v7 = v6;

  v8 = 1.0 / v7;
  if (1.0 / v7 == 1.0)
  {
    v9 = round(v2);
    v10 = round(v4);
  }

  else
  {
    v9 = v8 * round(v2 / v8);
    v10 = v8 * round(v4 / v8);
  }

  v11 = [v0 traitCollection];
  [v11 displayScale];
  v13 = v12;

  v14 = 1.0 / v13;
  [v0 adjustedContentInset];
  EdgeInsets.originOffset.getter();
  if (v14 == 1.0)
  {
    v17 = round(v15);
    v18 = round(v16);
  }

  else
  {
    v17 = v14 * round(v15 / v14);
    v18 = v14 * round(v16 / v14);
  }

  return v10 == -v18 && v9 == -v17;
}

void HostingScrollView.checkAnimationCompletion()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper];
  v11 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending;
  if (*(v10 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending) == 1 && ([v0 isTracking] & 1) == 0)
  {
    *(v10 + v11) = 0;
    type metadata accessor for OS_dispatch_queue();
    v12 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in HostingScrollView.checkAnimationCompletion();
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_22_2;
    v14 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    type metadata accessor for [DispatchWorkItemFlags](0);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], type metadata accessor for [DispatchWorkItemFlags], MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x18D00DA20](0, v9, v4, v14);
    _Block_release(v14);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t $defer #2 () in HostingScrollView.updateContext(_:)(uint64_t result, double a2, double a3, double a4, double a5)
{
  v5 = *(result + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper);
  v6 = *(v5 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates) = v8;
    if (!v8 && *(v5 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate) != 2)
    {
      v9 = result;
      v10 = a4;
      v11 = a5;
      v12 = a2;
      v13 = a3;
      ScrollViewHelper.updateGraphState(isPreferred:)(0);
      result = v9;
      a3 = v13;
      a2 = v12;
      a5 = v11;
      a4 = v10;
    }

    if (*(result + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_layoutDirection))
    {
      v14 = a3;
    }

    else
    {
      v14 = a5;
    }

    if (*(result + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_layoutDirection))
    {
      a3 = a5;
    }

    v15 = (result + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_lastAdjustedContentInsets);
    *v15 = a2;
    v15[1] = a3;
    v15[2] = a4;
    v15[3] = v14;
  }

  return result;
}

void PlatformSafeAreaHelper.adjustSafeAreaIfNeeded(_safeAreaInsets:containerView:shouldEagerlyUpdate:)(float64x2_t *a1, id a2, char a3)
{
  v7 = [a2 superview];
  if (v7)
  {
    v8 = v7;
    [v7 safeAreaInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    if ((a3 & 1) != 0 && (*(v3 + 88) & 1) == 0)
    {
      v17 = (v3 + 88);
      if (*(v3 + 48))
      {
        v18 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, v18), vceqq_f64(a1[1], v18))))))
        {
          v93 = *(v3 + 80);
          v97 = *(v3 + 72);
          v85 = *a1;
          v87 = a1[1];
          v99 = *(v3 + 56);
          v89 = *(v3 + 64);
          [a2 frame];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          [v8 bounds];
          v81 = v27;
          v83 = v28;
          v103.origin.x = v20;
          v103.origin.y = v22;
          v103.size.width = v24;
          v103.size.height = v26;
          MinX = CGRectGetMinX(v103);
          v30 = fabs(v12) < 0.25 || MinX > 0.0;
          v31 = v12 - v89;
          if (v30)
          {
            v31 = 0.0;
          }

          v90 = v31;
          v104.origin.x = v20;
          v104.origin.y = v22;
          v104.size.width = v24;
          v104.size.height = v26;
          MinY = CGRectGetMinY(v104);
          v33 = fabs(v10) < 0.25 || MinY > 0.0;
          v34 = v10 - v99;
          if (v33)
          {
            v34 = 0.0;
          }

          v79 = v34;
          v105.origin.x = v20;
          v105.origin.y = v22;
          v105.size.width = v24;
          v105.size.height = v26;
          v100 = v16;
          v30 = v81 > CGRectGetMaxX(v105);
          v35 = 0.0;
          if (!v30)
          {
            v35 = v16 - v93;
          }

          v94 = v35;
          v106.origin.x = v20;
          v106.origin.y = v22;
          v106.size.width = v24;
          v106.size.height = v26;
          if (v83 > CGRectGetMaxY(v106))
          {
            v36 = 0.0;
          }

          else
          {
            v36 = v14 - v97;
          }

          v37 = *MEMORY[0x1E69DDCE0];
          v38 = *(MEMORY[0x1E69DDCE0] + 8);
          v39 = *(MEMORY[0x1E69DDCE0] + 16);
          v40 = *(MEMORY[0x1E69DDCE0] + 24);

          v42 = v85.f64[0];
          v41 = v87.f64[0];
          v43 = v85.f64[1];
          v44 = v87.f64[1];
          if (v79 != v37 || v90 != v38 || v36 != v39 || v94 != v40)
          {
            v42 = v85.f64[0] + v79;
            v44 = v87.f64[1] + v94;
            v41 = v87.f64[0] + v36;
            v43 = v85.f64[1] + v90;
          }

          a1->f64[0] = v42;
          a1->f64[1] = v43;
          a1[1].f64[0] = v41;
          a1[1].f64[1] = v44;
          v16 = v100;
        }

        else
        {
        }
      }

      else
      {
        v88 = *(v3 + 40);
        v84 = *(v3 + 24);
        v86 = *(v3 + 32);
        v82 = *(v3 + 16);
        v95 = *(v3 + 80);
        v98 = *(v3 + 72);
        v101 = *(v3 + 56);
        v91 = *(v3 + 64);
        [a2 frame];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v55 = v54;
        [v8 bounds];
        v78 = v56;
        v80 = v57;
        v107.origin.x = v49;
        v107.origin.y = v51;
        v107.size.width = v53;
        v107.size.height = v55;
        v58 = CGRectGetMinX(v107);
        v59 = fabs(v12) < 0.25 || v58 > 0.0;
        v60 = v12 - v91;
        if (v59)
        {
          v60 = 0.0;
        }

        v92 = v60;
        v108.origin.x = v49;
        v108.origin.y = v51;
        v108.size.width = v53;
        v108.size.height = v55;
        v61 = CGRectGetMinY(v108);
        v62 = fabs(v10) < 0.25 || v61 > 0.0;
        v63 = v10 - v101;
        if (v62)
        {
          v63 = 0.0;
        }

        v77 = v63;
        v109.origin.x = v49;
        v109.origin.y = v51;
        v109.size.width = v53;
        v109.size.height = v55;
        v102 = v16;
        if (v78 > CGRectGetMaxX(v109))
        {
          v64 = 0.0;
        }

        else
        {
          v64 = v16 - v95;
        }

        v96 = v64;
        v110.origin.x = v49;
        v110.origin.y = v51;
        v110.size.width = v53;
        v110.size.height = v55;
        if (v80 > CGRectGetMaxY(v110))
        {
          v65 = 0.0;
        }

        else
        {
          v65 = v14 - v98;
        }

        v66 = *MEMORY[0x1E69DDCE0];
        v67 = *(MEMORY[0x1E69DDCE0] + 8);
        v69 = *(MEMORY[0x1E69DDCE0] + 16);
        v68 = *(MEMORY[0x1E69DDCE0] + 24);

        if (v77 == v66 && v92 == v67 && v65 == v69 && v96 == v68)
        {
          v74 = v88;
          v76 = v84;
          v75 = v86;
          v73 = v82;
        }

        else
        {
          v73 = v82 + v77;
          v74 = v88 + v96;
          v75 = v86 + v65;
          v76 = v84 + v92;
        }

        *(v3 + 16) = v73;
        *(v3 + 24) = v76;
        *(v3 + 32) = v75;
        *(v3 + 40) = v74;
        *(v3 + 48) = 0;
        v16 = v102;
      }

      *(v3 + 56) = v10;
      *(v3 + 64) = v12;
    }

    else
    {

      *(v3 + 56) = v10;
      *(v3 + 64) = v12;
      v17 = (v3 + 88);
    }

    *(v3 + 72) = v14;
    *(v3 + 80) = v16;
    *v17 = 0;
  }
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<()>, type metadata accessor for (), type metadata accessor for ());
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<[String : Any]>, type metadata accessor for [String : Any], type metadata accessor for [String : Any]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, type metadata accessor for _ContiguousArrayStorage<BackgroundTaskEntry<URLSessionBackgroundTask>>, &lazy cache variable for type metadata for BackgroundTaskEntry<URLSessionBackgroundTask>, &type metadata for URLSessionBackgroundTask, &protocol witness table for URLSessionBackgroundTask);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, type metadata accessor for _ContiguousArrayStorage<BackgroundTaskEntry<UnidentifiedURLSessionBackgroundTask>>, &lazy cache variable for type metadata for BackgroundTaskEntry<UnidentifiedURLSessionBackgroundTask>, &type metadata for UnidentifiedURLSessionBackgroundTask, &protocol witness table for UnidentifiedURLSessionBackgroundTask);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformListCell & UIFocusItem>, type metadata accessor for PlatformListCell & UIFocusItem, type metadata accessor for PlatformListCell & UIFocusItem);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: ToolbarStorage.Item)>, &lazy cache variable for type metadata for (offset: Int, element: ToolbarStorage.Item), type metadata accessor for ToolbarStorage.Item, type metadata accessor for (offset: Int, element: ToolbarStorage.Item));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<[UIWindow]>, type metadata accessor for [UIWindow], type metadata accessor for [UIWindow]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentScrollViewBox>, &type metadata for ContentScrollViewBox, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_NavigationStackStyleConfiguration.Item>, &type metadata for _NavigationStackStyleConfiguration.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[19 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<(String, Any)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Badge, Spacer)(0, &lazy cache variable for type metadata for (String, Any), MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<WheelPickerRow<AnyHashable, Subview>>, type metadata accessor for WheelPickerRow<AnyHashable, Subview>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[19 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 152 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for WheelPickerRow<AnyHashable, Subview>();
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<String?>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for ScrapedContentTree<ScrapeableContent.Item>, MEMORY[0x1E697F290], type metadata accessor for ScrapedContentTree);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>.Node>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for ScrapedContentTree<ScrapeableContent.Item>.Node, MEMORY[0x1E697F290], type metadata accessor for ScrapedContentTree.Node);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for (offset: Int, element: ToolbarStorage.Item)(0, &lazy cache variable for type metadata for (offset: Int, element: AccessibilityNode), type metadata accessor for AccessibilityNode);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<HitTestTrace<ResponderBasedHitTestTracing>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for HitTestTrace<ResponderBasedHitTestTracing>, &type metadata for ResponderBasedHitTestTracing, &protocol witness table for ResponderBasedHitTestTracing, type metadata accessor for HitTestTrace);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(key: String?, value: String)>, type metadata accessor for (key: String?, value: String), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (key: String?, value: String)(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<ProxyCodable<Color>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for ProxyCodable<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981578], MEMORY[0x1E697DEE0]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<SliderTick<Double>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    _sSNy12CoreGraphics7CGFloatVGMaTm_0(0, &lazy cache variable for type metadata for SliderTick<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderTick);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<SliderMark<Double>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    _sSNy12CoreGraphics7CGFloatVGMaTm_0(0, &lazy cache variable for type metadata for SliderMark<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderMark);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakBox<AccessibilityNode>>, type metadata accessor for WeakBox<AccessibilityNode>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      type metadata accessor for WeakBox<AccessibilityNode>(0);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      type metadata accessor for WeakBox<AccessibilityNode>(0);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for WeakBox<AccessibilityNode>(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<UIKitProxyFocusItem>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for UIKitProxyFocusItem, &protocol descriptor for UIKitProxyFocusItem, 0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(UIViewController, TabEntry)>, type metadata accessor for (UIViewController, TabEntry), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[37 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 296 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (UIViewController, TabEntry)(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<BackgroundTaskEntry<AppRefreshBackgroundTask>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for BackgroundTaskEntry<AppRefreshBackgroundTask>, &type metadata for AppRefreshBackgroundTask, &protocol witness table for AppRefreshBackgroundTask, type metadata accessor for BackgroundTaskEntry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<(name: String, value: String)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)(0, &lazy cache variable for type metadata for (name: String, value: String), MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], "name value ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void closure #1 in static ScrollViewCommitMutation.commit(layoutState:phaseState:containerSize:isPreferred:transaction:)(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(a2 + 208);
      ObjectType = swift_getObjectType();
      (*(v3 + 24))(ObjectType, v3, 0.0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    GraphHost.flushTransactions()();
  }
}

uint64_t protocol witness for LazyLayout.place(subviews:context:cache:in:) in conformance LazyVGridLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type LazyVGridLayout and conformance LazyVGridLayout();

  return MEMORY[0x1EEDE59C0](a1, a2, a3, a4, a5, v10);
}

uint64_t _s7SwiftUI6HVGrid33_31F43AFD49DC183BC0BAE157829FFC07LLPAAE5place8subviews6length13minorGeometry4emitySayAA19_LazyLayout_SubviewVG_12CoreGraphics7CGFloatVSgSayAA0cN0ACLLVGyAK_So7CGPointVAA13_ProposedSizeVAA9UnitPointVtXEtFAA0p5VGridQ0V_Tt3g5(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, double, double, double, double))
{
  v5 = *(result + 16);
  if (v5)
  {
    if (v5 > *(a4 + 16))
    {
      __break(1u);
    }

    else
    {
      v7 = result + 32;
      v8 = (a4 + 56);
      do
      {
        v9 = *(v8 - 3);
        _ProposedSize.init(_:in:by:)();
        result = a5(v7, &v10, v9, 0.0, *(v8 - 1), *v8);
        v7 += 112;
        v8 += 4;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [HVGridGeometry] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [HVGridGeometry] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [HVGridGeometry] and conformance <A> [A])
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for [String](255, &lazy cache variable for type metadata for [HVGridGeometry], &type metadata for HVGridGeometry, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HVGridGeometry and conformance HVGridGeometry();
    result = swift_getWitnessTable(MEMORY[0x1E69E6320], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type [HVGridGeometry] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HVGridGeometry and conformance HVGridGeometry()
{
  result = lazy protocol witness table cache variable for type HVGridGeometry and conformance HVGridGeometry;
  if (!lazy protocol witness table cache variable for type HVGridGeometry and conformance HVGridGeometry)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HVGridGeometry, &type metadata for HVGridGeometry, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HVGridGeometry and conformance HVGridGeometry);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HVGridGeometry(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return static UnitPoint.== infix(_:_:)();
  }

  else
  {
    return 0;
  }
}

uint64_t assignWithCopy for BorderlessButtonStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  v6 = *a1;
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6);
  v7 = *(v2 + 16);
  LOBYTE(v2) = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v7, v2);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 16) = v7;
  *(a1 + 24) = v2;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  return a1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> ()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined copy of Environment<CGFloat?>.Content(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

double @objc UIHostingContentView._preferredLeadingSeparatorInset()(void *a1)
{
  v1 = a1;
  UIHostingContentView._preferredLeadingSeparatorInset()();
  v3 = v2;

  return v3;
}

uint64_t UIHostingContentView._preferredLeadingSeparatorInset()()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  static HorizontalAlignment.listRowSeparatorLeading.getter();
  [v0 bounds];
  v2 = *(v1 + 1808);
  v6[0] = *(v1 + 1792);
  v6[1] = v2;
  v3 = type metadata accessor for UIHostingContentView(0, v6);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3);
  result = ViewRendererHost.explicitAlignment(of:at:)();
  if (v5)
  {
    static HorizontalAlignment.leadingText.getter();
    [v0 bounds];
    return ViewRendererHost.explicitAlignment(of:at:)();
  }

  return result;
}

double @objc UIHostingContentView._preferredTrailingSeparatorInset()(void *a1)
{
  v1 = a1;
  UIHostingContentView._preferredTrailingSeparatorInset()();
  v3 = v2;

  return v3;
}

id UIHostingContentView._preferredTrailingSeparatorInset()()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  static HorizontalAlignment.listRowSeparatorTrailing.getter();
  [v0 bounds];
  v2 = *(v1 + 1808);
  v6[0] = *(v1 + 1792);
  v6[1] = v2;
  v3 = type metadata accessor for UIHostingContentView(0, v6);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3);
  result = ViewRendererHost.explicitAlignment(of:at:)();
  if ((v5 & 1) == 0)
  {
    return [v0 bounds];
  }

  return result;
}

BOOL protocol witness for static StyleContext.accepts<A>(_:at:) in conformance PlainListStyleContext(uint64_t a1, uint64_t a2, ValueMetadata *a3, ValueMetadata *a4)
{
  lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext();

  return specialized static ListStyleContext.accepts<A>(_:at:)(a4, a3);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance PlainListStyleContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v8)
  {
    memcpy(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v6);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type StaticNavigationIndicator and conformance StaticNavigationIndicator()
{
  result = lazy protocol witness table cache variable for type StaticNavigationIndicator and conformance StaticNavigationIndicator;
  if (!lazy protocol witness table cache variable for type StaticNavigationIndicator and conformance StaticNavigationIndicator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StaticNavigationIndicator, &unk_1EFFBB2A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticNavigationIndicator and conformance StaticNavigationIndicator);
  }

  return result;
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24ButtonStyleConfigurationV5LabelV_Tt2B5(int a1, __int128 *a2)
{
  v5 = a2[3];
  v31 = a2[2];
  v32 = v5;
  v33 = a2[4];
  v34 = *(a2 + 20);
  v6 = a2[1];
  v29 = *a2;
  v30 = v6;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<ButtonStyleConfiguration.Label>, lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, &type metadata for ButtonStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v27);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<ButtonStyleConfiguration.Label>, lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, &type metadata for ButtonStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v25[0])
  {
    *&v27[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v7 = *(*&v25[0] + 48);
  v8 = *(*&v25[0] + 16);
  v9 = *(*&v25[0] + 24);
  v15 = *(*&v25[0] + 32);
  v10 = *(*&v25[0] + 40);
  v11 = *(*&v25[0] + 44);

  *&v25[0] = v7;
  *&v27[0] = v7;
  PropertyList.subscript.setter();
  if (!v8)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v22 = a1;
  v23[2] = v31;
  v23[3] = v32;
  v23[4] = v33;
  v24 = v34;
  v23[0] = v29;
  v23[1] = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v16 = v29;
  v17 = v30;
  v12 = *(v9 + 8);
  outlined init with copy of _ViewInputs(v23, v27);
  v13 = lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label();
  LOBYTE(v27[0]) = v11;
  v12(&v22, v8, v9, v15, v10 | (v11 << 32), &v16, &type metadata for ButtonStyleConfiguration.Label, v13, v8, v9);
  v25[2] = v18;
  v25[3] = v19;
  v25[4] = v20;
  v26 = v21;
  v25[0] = v16;
  v25[1] = v17;
  outlined destroy of _ViewInputs(v25);
LABEL_6:
  v27[2] = v31;
  v27[3] = v32;
  v27[4] = v33;
  v28 = v34;
  v27[0] = v29;
  v27[1] = v30;
  return outlined destroy of _ViewInputs(v27);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ButtonStyleConfiguration.Label(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24ButtonStyleConfigurationV5LabelV_Tt2B5(v3, v7);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>, &type metadata for DefaultNavigationIndicatorVisibilityKey, &protocol witness table for DefaultNavigationIndicatorVisibilityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void *static SourceFormula.makeView<A>(view:source:inputs:)(void x0_0, void x1_0, void x2_0, uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, void a8, uint64_t a6)
{
  v8 = a3[3];
  v23 = a3[2];
  v24 = v8;
  v25 = a3[4];
  v26 = *(a3 + 20);
  v9 = a3[1];
  v21 = *a3;
  v22 = v9;
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {

    return _ViewOutputs.init()();
  }

  else
  {
    if ((a2 & 0x100000000) != 0)
    {
      _GraphValue.init(_:)();
      v12 = a3[3];
      v17 = a3[2];
      v18 = v12;
      v19 = a3[4];
      v20 = *(a3 + 20);
      v13 = a3[1];
      v15 = *a3;
      v16 = v13;
    }

    else
    {
      v11 = type metadata accessor for Optional();
      _GraphValue.init(_:)();
      v17 = v23;
      v18 = v24;
      v19 = v25;
      v20 = v26;
      v15 = v21;
      v16 = v22;
      v14 = a6;
      swift_getWitnessTable(MEMORY[0x1E6982090], v11, &v14);
    }

    return static View.makeDebuggableView(view:inputs:)();
  }
}

void *assignWithCopy for _TaskValueModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = type metadata accessor for TaskPriority();
  v8 = *(v7 - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (a1 + v10 + 16) & ~v10;
  v12 = (a2 + v10 + 16) & ~v10;
  (*(v8 + 24))(v11, v12, v7);
  v13 = *(*(a3 + 16) - 8);
  (*(v13 + 24))((*(v9 + 40) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v9 + 40) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

void *assignWithCopy for _TaskValueModifier.InnerModifier(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;

  v7 = type metadata accessor for TaskPriority();
  v8 = *(v7 - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (a2 + v10 + 16) & ~v10;
  (*(v8 + 24))((a1 + v10 + 16) & ~v10, v11, v7);
  v12 = *(v9 + 40);
  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 80);
  v15 = v12 + v14;
  v16 = ~v14;
  v39 = *(a3 + 16);
  v35 = *(v13 + 24);
  v35((v12 + v14 + ((a1 + v10 + 16) & ~v10)) & ~v14, (v12 + v14 + v11) & ~v14);
  v17 = v13;
  v18 = *(v13 + 64);
  v19 = v18 + (v14 | 7) + ((v15 + ((v10 + 16) & ~v10)) & ~v14);
  v40 = a1;
  v20 = ((a1 + v19) & ~(v14 | 7));
  v21 = ((a2 + v19) & ~(v14 | 7));
  v22 = *(v13 + 84);
  v23 = v14 + 8;
  v24 = ((v14 + 8) & ~v14) + v18;
  v36 = v17;
  v37 = ~v14;
  if ((v22 & 0x80000000) != 0)
  {
    v28 = ((v14 + 8) & ~v14) + v18;
    v29 = *(v17 + 48);
    v27 = v39;
    v30 = v29((v20 + v23) & v16, v22, v39);
    v26 = v29((v21 + v23) & v16, v22, v39);
    v24 = v28;
    if (!v30)
    {
LABEL_5:
      if (!v26)
      {
        *v20 = *v21;

        (v35)((v20 + v23) & v37, (v21 + v23) & v37, v27);
        goto LABEL_12;
      }

      (*(v36 + 8))((v20 + v23) & v37, v27);
      goto LABEL_9;
    }
  }

  else
  {
    v25 = *v21;
    if (*v21 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v25) = -1;
    }

    v26 = v25 + 1;
    v27 = v39;
    if (*v20 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v26)
  {
    *v20 = *v21;
    v31 = v20 + v23;
    v32 = v21 + v23;
    v33 = *(v36 + 16);

    v33(v31 & v37, v32 & v37, v27);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v20, v21, v24);
LABEL_12:
  *((v20 + v24 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v21 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);

  return v40;
}

double ViewRendererHost.setPreferenceBridge(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *(v5 + 8);
  v6(a2, v5);
  v7 = ViewGraph.preferenceBridge.getter();

  if (!v7 || (, v7 != a1))
  {
    v6(a2, v5);

    ViewGraph.preferenceBridge.setter();
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_27Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_27Tm_0()
{

  v1 = *(v0 + 104);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_7;
    }

    outlined consume of Text.Storage(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  if (*(v0 + 112) != 1)
  {
  }

LABEL_7:

  outlined consume of Environment<NSManagedObjectContext>.Content(*(v0 + 256), *(v0 + 264));
  outlined consume of Environment<Selector?>.Content(*(v0 + 272), *(v0 + 280));
  outlined consume of Environment<Selector?>.Content(*(v0 + 288), *(v0 + 296));

  return swift_deallocObject();
}

char *assignWithCopy for _TaskModifier.InnerModifier(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(type metadata accessor for _TaskModifier(0) + 20);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 20);
  v10 = &a1[v9];
  v11 = &a2[v9];
  *&a1[v9] = *v11;

  *(v10 + 1) = *(v11 + 1);

  return a1;
}

uint64_t partial apply for closure #1 in closure #3 in _TaskValueModifier.InnerModifier.body(content:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in closure #1 in _TaskValueModifier.InnerModifier.body(content:)(a1, v4, v5, v6);
}

void type metadata completion function for ProgressViewValue(uint64_t a1)
{
  v2[4] = "\n";
  type metadata accessor for ClosedRange<Date>(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v2[5] = v2;
    swift_initEnumMetadataMultiPayload();
  }
}

void type metadata accessor for ClosedRange<Date>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ClosedRange<Date>)
  {
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v1 = type metadata accessor for ClosedRange();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ClosedRange<Date>);
    }
  }
}

uint64_t Material._GlassVariant.size(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for GlassMaterialProvider.Size();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v17 = *a1;
  outlined init with copy of Material._GlassVariant(v3, a2, v14);
  (*(v7 + 104))(v12, **(&unk_1E7238A78 + v17), v6);
  (*(v7 + 32))(v16, v12, v6);
  (*(v7 + 16))(v9, v16, v6);
  GlassMaterialProvider.Configuration.size.setter();
  return (*(v7 + 8))(v16, v6);
}

uint64_t Material._GlassVariant.contentLensing(_:)@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for GlassMaterialProvider.Options();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - v16;
  v18 = outlined init with copy of Material._GlassVariant(v3, a3, v15);
  a2(v18);
  v22[1] = a3;
  GlassMaterialProvider.Configuration.options.getter();
  if (a1)
  {
    v19 = *(v8 + 16);
    v19(v10, v17, v7);
    lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options, MEMORY[0x1E6999DB8], MEMORY[0x1E6999DC8]);
    dispatch thunk of SetAlgebra.formUnion(_:)();
    v20 = *(v8 + 8);
    v20(v17, v7);
  }

  else
  {
    lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options, MEMORY[0x1E6999DB8], MEMORY[0x1E6999DC8]);
    dispatch thunk of SetAlgebra.subtract(_:)();
    v20 = *(v8 + 8);
    v20(v17, v7);
    v19 = *(v8 + 16);
  }

  v19(v10, v13, v7);
  GlassMaterialProvider.Configuration.options.setter();
  return (v20)(v13, v7);
}

uint64_t UserDefaultLocation.__deallocating_deinit()
{
  UserDefaultLocation.deinit();

  return swift_deallocClassInstance();
}

char *UserDefaultLocation.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(v1 + 80));

  v2 = *(*v0 + 136);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 120);
  v5 = *(v0 + v4);
  *(v0 + v4) = 0;

  if (v5)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v6 = *(v5 + *(*v5 + 120));
      swift_retain_n();

      v5 = v6;
    }

    while (v6);
  }

  return v0;
}

unint64_t type metadata accessor for NSUserDefaults()
{
  result = lazy cache variable for type metadata for NSUserDefaults;
  if (!lazy cache variable for type metadata for NSUserDefaults)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUserDefaults);
  }

  return result;
}

uint64_t closure #3 in _TaskValueModifier.InnerModifier.body(content:)(char *a1, uint64_t a2, uint64_t a3)
{
  v49 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _TaskValueModifier.InnerModifier.TaskState(255, a2, a3, v9);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v47 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v40 - v19);
  v45 = type metadata accessor for _TaskValueModifier.InnerModifier(0, a2, a3, v21);
  _TaskValueModifier.InnerModifier.taskState.getter(v45, type metadata accessor for _TaskValueModifier.InnerModifier.TaskState);
  if ((*(v17 + 48))(v16, 1, v10) == 1)
  {
    return (*(v12 + 8))(v16, v11);
  }

  v43 = v12;
  v44 = v11;
  (*(v17 + 32))(v20, v16, v10);
  v24 = type metadata accessor for _TaskValueModifier(0, a2, a3, v23);
  v25 = *(v24 + 40);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    MEMORY[0x18D00D010](*v20, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    v26 = *(a1 + 1);
    v41 = *a1;
    v27 = *(v24 + 36);
    v28 = type metadata accessor for TaskPriority();
    v29 = *(v28 - 8);
    v42 = v25;
    v30 = v29;
    v31 = &a1[v27];
    v32 = v46;
    (*(v29 + 16))(v46, v31, v28);
    (*(v30 + 56))(v32, 0, 1, v28);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v41;
    v33[5] = v26;

    v34 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v32, &async function pointer to partial apply for closure #1 in closure #3 in _TaskValueModifier.InnerModifier.body(content:), v33);
    outlined destroy of _TaskModifier(v32, type metadata accessor for TaskPriority?);
    v36 = v48;
    v35 = v49;
    (*(v49 + 16))(v48, &a1[v42], a2);
    v37 = v47;
    *v47 = v34;
    v39 = type metadata accessor for _TaskValueModifier.InnerModifier.TaskState(0, a2, a3, v38);
    (*(v35 + 32))(v37 + *(v39 + 36), v36, a2);
    (*(v17 + 56))(v37, 0, 1, v10);
    specialized _TaskValueModifier.InnerModifier.taskState.setter(v37, v45, type metadata accessor for _TaskValueModifier.InnerModifier.TaskState);
    (*(v43 + 8))(v37, v44);
  }

  return (*(v17 + 8))(v20, v10);
}

double outlined consume of Environment<BorderedButtonColorSpec?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a10)
  {
    return outlined consume of BorderedButtonColorSpec?(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t initializeWithCopy for OpacityButtonHighlightModifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v12 = *(v2 + 72);
  v13 = *(v2 + 80);
  v15 = *(v2 + 88);
  LOBYTE(v2) = *(v2 + 96);
  outlined copy of Environment<BorderedButtonColorSpec?>.Content(v6, v7, v8, v9, v10, v11, v12, v13, v15, v2);
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v15;
  *(a1 + 96) = v2;
  return a1;
}

void outlined copy of Environment<BorderedButtonColorSpec?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a10)
  {
    outlined copy of BorderedButtonColorSpec?(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>, &type metadata for EnvironmentValues.__Key_accessibilityButtonBorderSpec, &protocol witness table for EnvironmentValues.__Key_accessibilityButtonBorderSpec, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double outlined consume of BorderedButtonColorSpec?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, unint64_t a7)
{
  if (result)
  {

    outlined consume of Material?(a4, a5);

    return outlined consume of BorderedButtonColorSpec.LabelStyle(a7);
  }

  return v10;
}

double outlined copy of BorderedButtonColorSpec?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (result)
  {
    v8 = a5;

    outlined copy of Material?(a4, v8);

    return outlined copy of BorderedButtonColorSpec.LabelStyle(a7);
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for BorderedButtonColorSpec(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t initializeWithCopy for BorderlessButtonStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v2 + 16);
  LOBYTE(v2) = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v2);
  *(a1 + 16) = v6;
  *(a1 + 24) = v2;
  return a1;
}

uint64_t destroy for BorderlessButtonStyle(uint64_t a1)
{
  outlined consume of Environment<Color?>.Content(*a1);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>);
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<BorderlessButtonStyleBase>, lazy protocol witness table accessor for type BorderlessButtonStyleBase and conformance BorderlessButtonStyleBase, &type metadata for BorderlessButtonStyleBase, type metadata accessor for ButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, a2, a3, a4);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HasAccessibilityButtonUnderline and conformance HasAccessibilityButtonUnderline()
{
  result = lazy protocol witness table cache variable for type HasAccessibilityButtonUnderline and conformance HasAccessibilityButtonUnderline;
  if (!lazy protocol witness table cache variable for type HasAccessibilityButtonUnderline and conformance HasAccessibilityButtonUnderline)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasAccessibilityButtonUnderline, &unk_1EFF97038, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasAccessibilityButtonUnderline and conformance HasAccessibilityButtonUnderline);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<BorderlessButtonStyleBase> and conformance ButtonStyleContainerModifier<A>);
    v5[1] = lazy protocol witness table accessor for type _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.LineStyle?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized BorderlessButtonStyleEnvironment.UpdateEnvironment.updateDefaultFont(useAccessibilityBorder:env:)(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  EnvironmentValues.controlSize.getter();
  if (LOBYTE(v7[0]) < 2u)
  {
    v4 = 5;
  }

  else
  {
    v4 = 6;
  }

  v9 = v4;
  v8 = 4;
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;

  specialized BorderlessButtonStyleEnvironment.UpdateEnvironment.defaultWeight(useAccessibilityBorder:env:)(v3, v7);

  static Font.system(_:design:weight:)();
  return EnvironmentValues.defaultFont.setter();
}

uint64_t specialized BorderlessButtonStyleEnvironment.UpdateEnvironment.defaultWeight(useAccessibilityBorder:env:)(char a1, uint64_t *a2)
{
  v2 = a2[1];
  if (a1)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>();
    if (v2)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v4 = v18;
    v3 = v19;
    v5 = v20;
    v6 = v21;
    if (one-time initialization token for defaultAction != -1)
    {
      swift_once();
    }

    v7 = static KeyboardShortcut.defaultAction;
    v8 = qword_1ED57A6B8;
    v9 = qword_1ED57A6C0;
    v10 = byte_1ED57A6C8;
    if (v19)
    {
      if (qword_1ED57A6B8)
      {
        if (v18 == static KeyboardShortcut.defaultAction && v19 == qword_1ED57A6B8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v20 == v9)
        {

          if (v21 == v10)
          {
            return static Font.Weight.bold.getter();
          }

          return static Font.Weight.regular.getter();
        }

LABEL_28:

        swift_bridgeObjectRelease_n();
        return static Font.Weight.regular.getter();
      }

      goto LABEL_35;
    }

    if (!qword_1ED57A6B8)
    {

      return static Font.Weight.bold.getter();
    }

    goto LABEL_34;
  }

  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>();
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v4 = v18;
  v3 = v19;
  v5 = v20;
  v6 = v21;
  if (one-time initialization token for defaultAction != -1)
  {
    swift_once();
  }

  v7 = static KeyboardShortcut.defaultAction;
  v8 = qword_1ED57A6B8;
  v9 = qword_1ED57A6C0;
  v10 = byte_1ED57A6C8;
  if (v19)
  {
    if (!qword_1ED57A6B8)
    {
LABEL_35:
      v12[0] = v4;
      v12[1] = v3;
      v12[2] = v5;
      v13 = v6;
      v14 = v7;
      v15 = v8;
      v16 = v9;
      v17 = v10;
      _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_0(v12, type metadata accessor for (KeyboardShortcut?, KeyboardShortcut?));
      return static Font.Weight.regular.getter();
    }

    if ((v18 != static KeyboardShortcut.defaultAction || v19 != qword_1ED57A6B8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v20 != v9)
    {
      goto LABEL_28;
    }

    if (v21 != v10)
    {
      return static Font.Weight.regular.getter();
    }
  }

  else
  {
    if (qword_1ED57A6B8)
    {
LABEL_34:

      goto LABEL_35;
    }
  }

  return static Font.Weight.semibold.getter();
}

void type metadata accessor for (KeyboardShortcut?, KeyboardShortcut?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (KeyboardShortcut?, KeyboardShortcut?))
  {
    type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>(255, &lazy cache variable for type metadata for KeyboardShortcut?, &type metadata for KeyboardShortcut, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (KeyboardShortcut?, KeyboardShortcut?));
    }
  }
}

void BorderlessButtonStyleEnvironment.UpdateEnvironment.updateDefaultForegroundStyle(role:useAccessibilityBorder:env:)(char *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    EnvironmentValues.backgroundMaterial.getter();
    if (BYTE8(v46[0]) == 0xFF)
    {
      v8 = EnvironmentValues.isEnabled.getter();
      v38 = *(AGGraphGetValue() + 1);
      v9 = a3[1];
      *&v46[0] = *a3;
      *(&v46[0] + 1) = v9;

      swift_retain_n();
      v10 = EnvironmentValues.tintColor.getter();

      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0x8000000000000000;
      }

      updated = BorderlessButtonStyleEnvironment.UpdateEnvironment.defaultTint.getter(a4);
      EnvironmentValues.colorScheme.getter();
      if ((v8 & 1) == 0)
      {
        v13 = static Color.secondarySystemFill.getter();

        v14 = 1.0;
        v15 = 0.75;
        v11 = 1;
        v16 = 0;
        goto LABEL_107;
      }

      if (v11 >> 62)
      {
        if (v11 >> 62 == 1)
        {
          v13 = v11 & 0x3FFFFFFFFFFFFFFFLL;
          if (v38)
          {
            if (v46[0])
            {
              LOBYTE(v41) = 0;

              v14 = 1.0;
              Color.init(_:white:opacity:)();
              v13 = Color.over(_:)();

              v11 = 0;
              v15 = 0.75;
              v16 = 0;
LABEL_107:
              *&v46[0] = v13;
              *(v46 + 1) = v14;
              *&v46[1] = 0x3FF0000000000000;
              *(&v46[1] + 8) = xmmword_18CD6E1E0;
              BYTE8(v46[2]) = v16;
              *&v47 = v11;
              *(&v47 + 1) = v15;
              v48 = 0x3FF0000000000000;
              v43 = v46[2];
              v44 = v47;
              v45 = 0x3FF0000000000000;
              v41 = v46[0];
              v42 = v46[1];
              _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>, &type metadata for EnvironmentValues.__Key_accessibilityButtonBorderSpec, &protocol witness table for EnvironmentValues.__Key_accessibilityButtonBorderSpec, MEMORY[0x1E697FE38]);
              outlined init with copy of BorderedButtonColorSpec(v46, v40);
              outlined copy of BorderedButtonColorSpec.LabelStyle(v11);
              lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>();
              PropertyList.subscript.setter();
              if (v9)
              {
                PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
              }

              v40[0] = v11;
              v37 = a3[1];
              *&v41 = *a3;
              *(&v41 + 1) = v37;

              ShapeStyle.copyStyle(name:in:foregroundStyle:)();

              outlined consume of BorderedButtonColorSpec.LabelStyle(v11);
              EnvironmentValues.defaultForegroundStyle.setter();
              outlined destroy of BorderedButtonColorSpec(v46);
              return;
            }

            v11 = 0;
            v15 = 0.75;
LABEL_74:
            v14 = 0.75;
            v16 = 0;
            goto LABEL_107;
          }

          v15 = 1.0;
          v13 = Color.opacity(_:)();

          v11 = 0;
        }

        else
        {
          v13 = static Color.secondarySystemFill.getter();
          if (v38)
          {
            if (v46[0])
            {
              v15 = 1.0;
              Color.init(_:white:opacity:)();
              v32 = Color.over(_:)();

              LOBYTE(v41) = 0;

              Color.init(_:white:opacity:)();
              v11 = Color.over(_:)();

              v14 = 1.0;
              v13 = v32;
              v16 = 0;
              goto LABEL_107;
            }

            v15 = 0.75;
            v11 = updated;
            goto LABEL_74;
          }

          v15 = 1.0;
          v11 = updated;
        }

LABEL_80:
        v14 = 1.0;
        v16 = 0;
        goto LABEL_107;
      }

      static Color.secondarySystemFill.getter();
      if ((v46[0] & 1) == 0)
      {
        if (static Color.yellow.getter() != v11)
        {
          dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
        }

        v13 = Color.opacity(_:)();

        if (v38)
        {
          v15 = 0.75;
        }

        else
        {
          v15 = 1.0;
        }

        if (v38)
        {
          v14 = 0.65;
        }

        else
        {
          v14 = 1.0;
        }

        v16 = 0;
        goto LABEL_107;
      }

      if (static Color.red.getter() != v11)
      {
        v29 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

        if (v29)
        {
LABEL_77:
          v13 = Color.opacity(_:)();
          if (v38)
          {
            LOBYTE(v41) = 0;

            v15 = 1.0;
            Color.init(_:white:opacity:)();
            v11 = Color.over(_:)();

            v14 = 1.4;
            v16 = 0;
            goto LABEL_107;
          }

          v15 = 1.0;
          goto LABEL_80;
        }

        if (static Color.pink.getter() != v11)
        {
          dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

          goto LABEL_77;
        }
      }

      goto LABEL_77;
    }

    outlined consume of Material?(*&v46[0], BYTE8(v46[0]));
    v22 = EnvironmentValues.isEnabled.getter();
    v39 = *(AGGraphGetValue() + 1);
    v23 = a3[1];
    *&v46[0] = *a3;
    *(&v46[0] + 1) = v23;

    swift_retain_n();
    v24 = EnvironmentValues.tintColor.getter();

    if (v24)
    {
      v11 = v24;
    }

    else
    {
      v11 = 0x8000000000000000;
    }

    v25 = BorderlessButtonStyleEnvironment.UpdateEnvironment.defaultTint.getter(a4);
    EnvironmentValues.colorScheme.getter();
    v9 = a3[1];
    *&v46[0] = *a3;
    *(&v46[0] + 1) = v9;
    v26 = EnvironmentValues._accessibilityReduceTransparency.getter();
    if ((v22 & 1) == 0)
    {
      if ((v41 & 1) == 0)
      {
        v14 = 1.0;
        v13 = Color.init(_:white:opacity:)();
        LOBYTE(v46[0]) = 0;
        v11 = Color.init(_:white:opacity:)();

        v16 = 0;
        v15 = 0.15;
        goto LABEL_107;
      }

      v14 = 1.0;
      LOBYTE(v46[0]) = 0;
      if (v26)
      {
        v16 = 0;
      }

      else
      {
        v16 = 19;
      }

      v13 = Color.init(_:white:opacity:)();

      v11 = 2;
LABEL_106:
      v15 = 1.0;
      goto LABEL_107;
    }

    if (v11 >> 62)
    {
      if (v11 >> 62 != 1)
      {
        if (v41)
        {
          v33 = v26;
          v15 = 1.0;
          LOBYTE(v46[0]) = 0;
          v13 = Color.init(_:white:opacity:)();
          if (v39)
          {
            if (v33)
            {
              v14 = 1.0;
            }

            else
            {
              v14 = 0.65;
            }

            LOBYTE(v46[0]) = 0;

            Color.init(_:white:opacity:)();
            v11 = Color.over(_:)();

            v16 = 0;
          }

          else
          {
            v16 = 0;
            v14 = 1.0;
            v11 = v25;
          }
        }

        else
        {
          v14 = 1.0;
          LOBYTE(v46[0]) = 0;
          if (v26)
          {
            v34 = 1.0;
          }

          else
          {
            v34 = 0.65;
          }

          v13 = Color.init(_:white:opacity:)();
          v16 = 0;
          if (v39)
          {
            v15 = 0.75;
          }

          else
          {
            v15 = 1.0;
          }

          if (v39)
          {
            v14 = v34;
          }

          v11 = v25;
        }

        goto LABEL_107;
      }

      v13 = v11 & 0x3FFFFFFFFFFFFFFFLL;
      if (v39)
      {
        if (v41)
        {
          LOBYTE(v46[0]) = 0;

          v14 = 1.0;
          Color.init(_:white:opacity:)();
          v13 = Color.over(_:)();

          v16 = 0;
          v11 = 0;
          v15 = 0.75;
        }

        else
        {
          if (v26)
          {

            static Color.white.getter();
            v13 = Color.over(_:)();
          }

          else
          {
          }

          v16 = 0;
          v11 = 0;
          v14 = 0.75;
          v15 = 0.75;
        }

        goto LABEL_107;
      }

      v16 = 0;
      v11 = 0;
      v14 = 1.0;
      goto LABEL_106;
    }

    v30 = v26;

    if ((v41 & 1) == 0)
    {
      if (static Color.yellow.getter() != v11)
      {
        dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
      }

      v13 = Color.opacity(_:)();
      if (v30)
      {
        static Color.white.getter();
        v36 = Color.over(_:)();

        v13 = v36;
      }

      v16 = 0;
      if (v39)
      {
        v15 = 0.75;
      }

      else
      {
        v15 = 1.0;
      }

      if (v39)
      {
        v14 = 0.65;
      }

      else
      {
        v14 = 1.0;
      }

      goto LABEL_107;
    }

    if (static Color.red.getter() != v11)
    {
      v31 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

      if (v31)
      {
LABEL_82:
        v35 = Color.opacity(_:)();
        if (v39)
        {
          if (v30)
          {
            static Color.black.getter();
            v13 = Color.over(_:)();
          }

          else
          {

            v13 = v35;
          }

          LOBYTE(v46[0]) = 0;

          v14 = 1.0;
          Color.init(_:white:opacity:)();
          v11 = Color.over(_:)();
        }

        else
        {
          v14 = 1.0;
          LOBYTE(v46[0]) = 0;
          Color.init(_:white:opacity:)();
          v13 = Color.over(_:)();
        }

        v16 = 0;
        goto LABEL_106;
      }

      if (static Color.pink.getter() != v11)
      {
        dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

        goto LABEL_82;
      }
    }

    goto LABEL_82;
  }

  v17 = *a1;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>, &type metadata for EnvironmentValues.__Key_accessibilityButtonBorderSpec, &protocol witness table for EnvironmentValues.__Key_accessibilityButtonBorderSpec, MEMORY[0x1E697FE38]);
  memset(v46, 0, sizeof(v46));
  v47 = 0u;
  v48 = 0;
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a3[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v18 = EnvironmentValues.isEnabled.getter();
  v19 = *a3;
  v20 = a3[1];
  *&v46[0] = *a3;
  *(&v46[0] + 1) = v20;

  if (BorderlessButtonStyleEnvironment.UpdateEnvironment.hasMonochromaticForeground(in:)(v46, a4, a5 & 0x101FFFFFFFFLL))
  {
    *&v46[0] = v19;
    *(&v46[0] + 1) = v20;
    v21 = EnvironmentValues.tintColor.getter();
    if (!v21)
    {
      v21 = static Color.primary.getter();
    }

    *&v46[0] = v21;
  }

  v27 = AnyShapeStyle.init<A>(_:)();

  LOBYTE(v46[0]) = v17;
  BYTE1(v46[0]) = v18 & 1;
  *(&v46[0] + 1) = v27;
  v28 = a3[1];
  *&v41 = *a3;
  *(&v41 + 1) = v28;
  LOBYTE(v40[0]) = 0;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for BorderlessButtonLabelShapeStyle<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], type metadata accessor for BorderlessButtonLabelShapeStyle);

  ShapeStyle.copyStyle(name:in:foregroundStyle:)();

  EnvironmentValues.defaultForegroundStyle.setter();
}