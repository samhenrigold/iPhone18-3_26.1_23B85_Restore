void sub_10054DC1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100058000(&qword_1007812D8, &unk_10063CEC0);
  v39 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v43 = v8;
    v44 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = v10 + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v44);
        v41 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v36)(v43, v25, v44);
        v41 = *(*(v9 + 56) + 16 * v23);
        swift_unknownObjectRetain();
      }

      sub_10054FD8C(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v42 * v19), v43, v44);
      *(*(v11 + 56) + 16 * v19) = v41;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_10054DFF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100058000(&qword_100781288, &qword_10063CE68);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10054E2C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v55 = type metadata accessor for UUID();
  v5 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SmartListType();
  v7 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyListEntity(0);
  v59 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v63 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnyListEntityID(0);
  v57 = *(v11 - 8);
  v58 = v11;
  __chkstk_darwin(v11);
  v64 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = v48 - v14;
  v15 = *v2;
  sub_100058000(&qword_100781318, &qword_10063CF00);
  v60 = v4;
  v16 = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = v16;
  if (*(v15 + 16))
  {
    v48[0] = v2;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v53 = (v5 + 32);
    v52 = v5 + 8;
    v49 = (v7 + 32);
    v48[1] = v7 + 8;
    v24 = v16 + 64;
    v56 = v15;
    v25 = v61;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v62 = *(v57 + 72);
      v32 = v31 + v62 * v30;
      if (v60)
      {
        sub_10055003C(v32, v25, type metadata accessor for AnyListEntityID);
        v33 = *(v59 + 72);
        sub_10055003C(*(v15 + 56) + v33 * v30, v63, type metadata accessor for AnyListEntity);
      }

      else
      {
        sub_10054FFD4(v32, v25, type metadata accessor for AnyListEntityID);
        v33 = *(v59 + 72);
        sub_10054FFD4(*(v15 + 56) + v33 * v30, v63, type metadata accessor for AnyListEntity);
      }

      Hasher.init(_seed:)();
      sub_10054FFD4(v25, v64, type metadata accessor for AnyListEntityID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v35 = v54;
        v36 = v55;
        if (EnumCaseMultiPayload == 1)
        {
          (*v53)(v54, v64, v55);
          v37 = 1;
        }

        else
        {
          (*v53)(v54, v64, v55);
          v37 = 2;
        }

        Hasher._combine(_:)(v37);
        sub_10054FD8C(&qword_10076BB40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v38 = &v66;
      }

      else
      {
        v35 = v50;
        v36 = v51;
        (*v49)(v50, v64, v51);
        Hasher._combine(_:)(0);
        sub_10054FD8C(&qword_100777A20, &type metadata accessor for SmartListType, &protocol conformance descriptor for SmartListType);
        dispatch thunk of Hashable.hash(into:)();
        v38 = &v65;
      }

      (**(v38 - 32))(v35, v36);
      v39 = Hasher._finalize()();
      v40 = -1 << *(v17 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v24 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        v25 = v61;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v24 + 8 * v42);
          if (v46 != -1)
          {
            v26 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return;
      }

      v26 = __clz(__rbit64((-1 << v41) & ~*(v24 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v25 = v61;
LABEL_7:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_10055003C(v25, *(v17 + 48) + v62 * v26, type metadata accessor for AnyListEntityID);
      sub_10055003C(v63, *(v17 + 56) + v33 * v26, type metadata accessor for AnyListEntity);
      ++*(v17 + 16);
      v15 = v56;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v60 & 1) == 0)
    {

      v3 = v48[0];
      goto LABEL_40;
    }

    v47 = 1 << *(v15 + 32);
    v3 = v48[0];
    if (v47 >= 64)
    {
      bzero(v19, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v47;
    }

    *(v15 + 16) = 0;
  }

LABEL_40:
  *v3 = v17;
}

void sub_10054EA0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100058000(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v34 = 1 << *(v7 + 32);
      if (v34 >= 64)
      {
        bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v34;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
  }

  else
  {
  }

  *v5 = v9;
}

void sub_10054EC94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100058000(a3, a4);
  v33 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      v24 = Hasher._finalize()();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v4;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_10054EF30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100058000(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v40 = v6;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 48) + 32 * v22;
      v24 = *(v23 + 8);
      v25 = *v23;
      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      v41 = *(*(v7 + 56) + 16 * v22);
      Hasher.init(_seed:)();
      if (v24 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v28 = v25;
        }

        else
        {
          v28 = 0;
        }

        Hasher._combine(_:)(v28);
      }

      if (v27 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v27;
      }

      Hasher._combine(_:)(*&v29);
      if (v26 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v26;
      }

      Hasher._combine(_:)(*&v30);
      v31 = Hasher._finalize()();
      v32 = -1 << *(v9 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v16 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v16 + 8 * v34);
          if (v38 != -1)
          {
            v17 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v33) & ~*(v16 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 32 * v17;
      *v18 = v25;
      *(v18 + 8) = v24;
      *(v18 + 16) = v27;
      *(v18 + 24) = v26;
      *(*(v9 + 56) + 16 * v17) = v41;
      ++*(v9 + 16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v40)
    {
      v39 = 1 << *(v7 + 32);
      if (v39 >= 64)
      {
        bzero((v7 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v39;
      }

      *(v7 + 16) = 0;
    }

    v5 = v4;
  }

  else
  {
  }

  *v5 = v9;
}

void sub_10054F224(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100058000(&qword_1007812B8, &unk_10063CEA0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100007DD8(v22, v36);
      }

      else
      {
        sub_1000046FC(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_100007DD8(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

unint64_t sub_10054F50C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
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

unint64_t sub_10054F550(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_10054F594(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_10054F5F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_10054F708(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10054F76C(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
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

unint64_t sub_10054F7B0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4 & 1;
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

uint64_t sub_10054F82C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v13 = a4[7];
  v14 = a6(0);
  result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a3, v14);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

unint64_t sub_10054F92C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_10054F974(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_10016A43C(a3, a4[7] + 32 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10054FA34(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_10054FA84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AnyListEntityID(0);
  sub_10055003C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for AnyListEntityID);
  v10 = a4[7];
  v11 = type metadata accessor for AnyListEntity(0);
  result = sub_10055003C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for AnyListEntity);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_10054FB70(unint64_t result, uint64_t a2, char a3, void *a4, double a5, double a6, double a7, double a8)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v8 = a4[6] + 32 * result;
  *v8 = a2;
  *(v8 + 8) = a3 & 1;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v9 = (a4[7] + 16 * result);
  *v9 = a7;
  v9[1] = a8;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_10054FBC8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100007DD8(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_10054FC30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10054FC94()
{
  result = qword_10078C110;
  if (!qword_10078C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C110);
  }

  return result;
}

unint64_t sub_10054FCF0()
{
  result = qword_10078C118;
  if (!qword_10078C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C118);
  }

  return result;
}

uint64_t sub_10054FD8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10054FDD8()
{
  result = qword_10078C120;
  if (!qword_10078C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C120);
  }

  return result;
}

unint64_t sub_10054FE78()
{
  result = qword_10078C128;
  if (!qword_10078C128)
  {
    sub_10005D20C(&qword_10078C130, qword_100645AA0);
    sub_10054FD8C(&qword_100778DB8, type metadata accessor for AnyListEntity, &protocol conformance descriptor for AnyListEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C128);
  }

  return result;
}

uint64_t assignWithCopy for AnyListEntityQuery(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for AnyListEntityQuery(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_10054FFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10055003C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005500B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static IndexPath.== infix(_:_:)() & 1) == 0 || (static IndexPath.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static IndexPath.== infix(_:_:)();
}

uint64_t sub_100550134()
{
  v1 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnID;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_100550C4C(v0 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_lastTargetIndexPathForMoveOfItem);

  return swift_deallocClassInstance();
}

void sub_10055023C(uint64_t a1)
{
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  if (v1 <= 0x3F)
  {
    sub_100550350(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100550350(uint64_t a1)
{
  if (!qword_10078C338)
  {
    sub_10005D20C(&qword_10077CFF0, &qword_1006408C0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10078C338);
    }
  }
}

uint64_t initializeWithCopy for TTRIRemindersBoardColumnReorderingContext.DebugInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 64);
  *(a1 + 64) = v3;
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for TTRIRemindersBoardColumnReorderingContext.DebugInfo(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v3;
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a1 + 64);
  v7 = *(a2 + 8);
  *(a1 + 64) = v7;
  v8 = v7;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersBoardColumnReorderingContext.DebugInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersBoardColumnReorderingContext.DebugInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersBoardColumnReorderingContext.DebugInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t *sub_1005505B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for IndexPath();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v8((a1 + *(a3 + 20)), (a2 + *(a3 + 20)), v7);
    v8((a1 + *(a3 + 24)), (a2 + *(a3 + 24)), v7);
  }

  return a1;
}

uint64_t sub_1005506B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v7 = *(*(v4 - 8) + 8);
  (v7)((v4 - 8), a1, v4);
  v7(a1 + *(a2 + 20), v4);
  v5 = a1 + *(a2 + 24);

  return (v7)(v5, v4);
}

uint64_t sub_10055076C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t sub_100550820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t sub_1005508D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t sub_100550988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t sub_100550A84(uint64_t a1)
{
  result = type metadata accessor for IndexPath();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_100550B18()
{
  result = qword_10078C4B0;
  if (!qword_10078C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C4B0);
  }

  return result;
}

uint64_t sub_100550B6C()
{
  v1 = *v0;
  v2 = 0x7472617453746F6ELL;
  v3 = 0x697474696D6D6F63;
  if (v1 != 5)
  {
    v3 = 0x6465646E65;
  }

  v4 = 0x69726564726F6572;
  if (v1 != 3)
  {
    v4 = 0x646574697865;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x676E697466696CLL;
  if (v1 != 1)
  {
    v5 = 0x696C6C65636E6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100550C4C(uint64_t a1)
{
  v2 = sub_100058000(&unk_1007845C0, &qword_1006460F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100550CB4(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_100058000(&qword_10077CF90, &unk_10063AD38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_100550DBC(*a1);
  sub_100315B44();
  v7 = static FromTo.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t sub_100550EB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v3 - 8);
  v44 = &v37 - v4;
  v45 = type metadata accessor for IndexPath();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10078C4B8, &qword_1006460F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v46 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v22 = &qword_100772140;
    v23 = &qword_10062D9F0;
    v24 = v17;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    TTRRemindersBoardMainDiffableDataSource.columnID(containingItemID:)();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      (*(v19 + 8))(v21, v18);
      v22 = &unk_10076BB50;
      v23 = &unk_10062DEA0;
      v24 = v11;
    }

    else
    {
      v41 = a1;
      v25 = v46;
      v39 = *(v13 + 32);
      v40 = v13 + 32;
      v39(v46, v11, v12);
      TTRRemindersBoardMainDiffableDataSource.lastAppliedPresentationTrees.getter();
      v26 = type metadata accessor for TTRRemindersBoardPresentationTrees();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v8, 1, v26) == 1)
      {
        (*(v13 + 8))(v25, v12);
        (*(v19 + 8))(v21, v18);
        v22 = &qword_10078C4B8;
        v23 = &qword_1006460F8;
      }

      else
      {
        v38 = v13;
        v28 = TTRRemindersBoardPresentationTrees.finalTree.getter();
        (*(v27 + 8))(v8, v26);
        swift_getObjectType();
        v48 = v28;
        v8 = v44;
        TTRTreeContentsQueryable.indexPath(for:)();
        v29 = v43;
        v30 = v45;
        if ((*(v43 + 48))(v8, 1, v45) != 1)
        {
          v33 = *(v29 + 32);
          v34 = v42;
          v33(v42, v8, v30);
          sub_10055154C();
          swift_unknownObjectRelease();
          (*(v19 + 8))(v21, v18);
          v35 = v47;
          v39(v47, v46, v12);
          v36 = type metadata accessor for TTRIRemindersBoardDragItemInfo(0);
          v33(&v35[*(v36 + 20)], v34, v30);
          (*(v38 + 16))(&v35[*(v36 + 24)], v41, v12);
          return (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
        }

        swift_unknownObjectRelease();
        (*(v38 + 8))(v25, v12);
        (*(v19 + 8))(v21, v18);
        v22 = &unk_100771B10;
        v23 = qword_10062E540;
      }

      v24 = v8;
    }
  }

  sub_1000079B4(v24, v22, v23);
  v31 = type metadata accessor for TTRIRemindersBoardDragItemInfo(0);
  return (*(*(v31 - 8) + 56))(v47, 1, 1, v31);
}

uint64_t sub_10055154C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100551738();
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v12 != v11[0])
  {
    v6 = dispatch thunk of Collection.subscript.read();
    v8 = *v7;
    v6(v11, 0);
    (*(v2 + 16))(v4, v0, v1);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.index(after:)();
    dispatch thunk of Collection.endIndex.getter();
    v9 = *(v2 + 8);
    result = v9(v0, v1);
    if (v10 >= v12)
    {
      v11[0] = v12;
      v11[1] = v10;
      dispatch thunk of Collection.subscript.getter();
      v9(v4, v1);
      return v8;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_100551738()
{
  result = qword_10078C4C0;
  if (!qword_10078C4C0)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C4C0);
  }

  return result;
}

void sub_100551790(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a2;
  v34 = a3;
  v33 = type metadata accessor for TTRSectionLite();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v33);
  v32 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRSectionID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  TTRSectionLite.sectionID.getter();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for TTRSectionID.sectioned(_:))
  {
    (*(v10 + 96))(v12, v9);
    v14 = *v12;
    v15 = TTRSectionLite.displayName.getter();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0xE000000000000000;
    if (v16)
    {
      v18 = v16;
    }

    v29[1] = v18;
    v29[2] = v17;
    v19 = v31;
    if (!*(v31 + 24))
    {
      v20 = v31[2];
      sub_100003540(0, &qword_100775690, NSObject_ptr);
      v21 = v20;
      static NSObject.== infix(_:_:)();
      sub_100263FE4(v20, 0);
    }

    v29[0] = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    sub_10048AE00(v19, v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = *(v4 + 16);
    v23 = v32;
    v31 = v14;
    v24 = v33;
    v22(v32, a1, v33);
    v25 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v26 = (v7 + *(v4 + 80) + v25) & ~*(v4 + 80);
    v27 = swift_allocObject();
    sub_10048AE64(v8, v27 + v25);
    (*(v4 + 32))(v27 + v26, v23, v24);
    v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    goto LABEL_12;
  }

  if (v13 == enum case for TTRSectionID.sectionless(_:))
  {
    v28 = 0;
LABEL_12:
    *v34 = v28;
    return;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_100551B4C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRSectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) + 44));
  (*(v4 + 104))(v6, enum case for TTRSectionID.sectionless(_:), v3);
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

double sub_100551C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  *&result = __chkstk_darwin(v8 - 8).n128_u64[0];
  v12 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + *(v13 + 60));
  if (v14)
  {
    sub_10048AE00(a3, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    sub_10048AE64(v12, v17 + v15);
    *(v17 + v16) = a4;
    v18 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v18 = a1;
    v18[1] = a2;

    v14(sub_1005548DC, v17);
  }

  return result;
}

double sub_100551DC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __n128), uint64_t a5, __n128 a6)
{
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v53 = *(a1 + 16);
    if (v53)
    {
      v51 = a5;
      v52 = a4;
      v50 = a2;
      v17 = *(a2 + 8);

      v19 = sub_1004B61FC(v18);

      v55 = a3;
      sub_100058000(&qword_10078C4C8, &qword_100646128);
      sub_100554988();
      v20 = Sequence.compactMapToSet<A>(_:)();
      v49 = v17;
      v55 = v17;
      v21 = Sequence.compactMapToSet<A>(_:)();
      v47 = 0;
      v48 = v21;
      v22 = sub_100553684(v20, v19);

      v23 = 0;
      v54 = a1 + 32;
      v24 = v22 + 56;
      v25 = _swiftEmptyArrayStorage;
      v26 = v53;
      while (1)
      {
        if (v23 >= v26)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_28;
        }

        v28 = (v54 + 16 * v23);
        v30 = *v28;
        v29 = v28[1];
        ++v23;
        if (*(v22 + 2))
        {
          Hasher.init(_seed:)();

          String.hash(into:)();
          v31 = Hasher._finalize()();
          v32 = -1 << v22[32];
          v33 = v31 & ~v32;
          if ((*&v24[(v33 >> 3) & 0xFFFFFFFFFFFFFF8] >> v33))
          {
            v34 = ~v32;
            while (1)
            {
              v35 = (*(v22 + 6) + 16 * v33);
              v36 = *v35 == v30 && v35[1] == v29;
              if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v33 = (v33 + 1) & v34;
              if (((*&v24[(v33 >> 3) & 0xFFFFFFFFFFFFFF8] >> v33) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            goto LABEL_5;
          }
        }

        else
        {
        }

LABEL_17:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1CD0(0, v25[2] + 1, 1);
          v25 = v56;
        }

        v39 = v25[2];
        v38 = v25[3];
        if (v39 >= v38 >> 1)
        {
          sub_1004A1CD0((v38 > 1), v39 + 1, 1);
          v25 = v56;
        }

        v25[2] = v39 + 1;
        v40 = &v25[2 * v39];
        v40[4] = v30;
        v40[5] = v29;
        v26 = v53;
LABEL_5:
        if (v27 == v26)
        {

          __chkstk_darwin(v41);
          v42 = v49;
          *(&v47 - 4) = v48;
          *(&v47 - 3) = v42;
          *(&v47 - 2) = v50;
          sub_100399B0C(sub_1005549EC, (&v47 - 6), v25);
          v44 = v43;

          if (v44 >> 62)
          {
            goto LABEL_30;
          }

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
          v45 = v44;
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
LABEL_29:
    __break(1u);
LABEL_30:
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);

    v45 = _bridgeCocoaArray<A>(_:)();

LABEL_25:
    v46 = v52;

    (v46)(v45);
  }

  return result;
}

uint64_t sub_100552280@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a5;
  v58 = a4;
  v8 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v57 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v59 = v9;
  v60 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRSectionLite();
  v56 = *(v10 - 8);
  __chkstk_darwin(v10);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v49 - v13;
  __chkstk_darwin(v15);
  v52 = &v49 - v16;
  v53 = v17;
  __chkstk_darwin(v18);
  v55 = &v49 - v19;
  v20 = a1[1];
  v62 = *a1;
  v63 = v20;
  if ((sub_1000AA9A4(v62, v20, a2) & 1) == 0 || (v21 = *(a3 + 16)) == 0)
  {
LABEL_13:
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v34 = v60;
    sub_10048AE00(v58, v60);
    v35 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v36 = (v59 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    sub_10048AE64(v34, v37 + v35);
    v38 = (v37 + v36);
    v39 = v63;
    *v38 = v62;
    v38[1] = v39;
    swift_bridgeObjectRetain_n();
    result = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v41 = v61;
    goto LABEL_14;
  }

  v64 = *(v56 + 16);
  v22 = *(v56 + 80);
  v50 = ~v22;
  v51 = v22;
  v23 = a3 + ((v22 + 32) & ~v22);
  v24 = (v56 + 8);
  v25 = *(v56 + 72);
  v64(v14, v23, v10);
  while (1)
  {
    v27 = TTRSectionLite.canonicalName.getter();
    if (!v28)
    {
      goto LABEL_5;
    }

    if (v27 == v62 && v28 == v63)
    {
      break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_11;
    }

LABEL_5:
    (*v24)(v14, v10);
    v23 += v25;
    if (!--v21)
    {
      goto LABEL_13;
    }

    v64(v14, v23, v10);
  }

LABEL_11:
  v29 = v56 + 32;
  v30 = *(v56 + 32);
  v31 = v52;
  v30(v52, v14, v10);
  v56 = v29;
  v52 = v30;
  v30(v55, v31, v10);
  v32 = TTRSectionLite.displayName.getter();
  if (v33)
  {
    v62 = v32;
    v63 = v33;
  }

  else
  {
  }

  v41 = v61;
  v61 = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  v42 = v60;
  sub_10048AE00(v58, v60);
  v43 = v54;
  v44 = v55;
  v64(v54, v55, v10);
  v45 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v46 = (v59 + v51 + v45) & v50;
  v47 = swift_allocObject();
  sub_10048AE64(v42, v47 + v45);
  (v52)(v47 + v46, v43, v10);
  v48 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  (*v24)(v44, v10);
  result = v48;
LABEL_14:
  *v41 = result;
  return result;
}

uint64_t sub_10055275C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRSectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) + 44));
  TTRSectionLite.sectionID.getter();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

void *sub_100552850(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_100553848(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1005528E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100058000(&qword_10078C4E0, &qword_100646130);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_100554D5C(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_100552C08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100058000(&unk_10078C4F0, &unk_100646140);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_100554D5C(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_100552F30(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for IndexPath();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100058000(&qword_10078C4D8, &unk_100647050);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_100554D5C(&qword_100769AC0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

Swift::Int sub_100553258(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100058000(&qword_10078C4E8, &qword_100646138);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v16);
    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100553460(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100058000(&qword_100782420, &unk_10063E1B0);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_100553684(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_100553848((&v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_100552850(v12, v6, a2, a1);
  }

  return v10;
}

void sub_100553848(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          sub_100553460(a1, a2, v53, v5);
          return;
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        a1[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

Class sub_100553C24(void (*a1)(char *, uint64_t))
{
  v82 = type metadata accessor for TTRSectionID();
  v3 = *(v82 - 8);
  __chkstk_darwin(v82);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v85 = &v67 - v7;
  v67 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v69 = v8;
  v70 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRSectionLite();
  __chkstk_darwin(v9);
  v84 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v74 = &v67 - v15;
  v71 = a1;
  v16 = *a1;
  v83 = *(*a1 + 16);
  if (v83)
  {
    v17 = 0;
    v79 = v13 + 16;
    v78 = enum case for TTRSectionID.sectionless(_:);
    v76 = (v3 + 8);
    v77 = (v3 + 104);
    v75 = (v13 + 32);
    v72 = (v13 + 8);
    v18 = _swiftEmptyArrayStorage;
    v19 = v74;
    v73 = v5;
    v80 = v16;
    v81 = v13;
    while (v17 < *(v16 + 16))
    {
      v20 = v18;
      *&v87 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v86 = *(v13 + 72);
      (*(v13 + 16))(v19, v16 + v87 + v86 * v17, v9, v14);
      v21 = v85;
      TTRSectionLite.sectionID.getter();
      v22 = v82;
      (*v77)(v5, v78, v82);
      sub_100554D5C(&qword_10076BE70, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v1 = v76;
      a1 = *v76;
      (*v76)(v5, v22);
      a1(v21, v22);
      if (v23)
      {
        v12 = (*v72)(v19, v9);
        v18 = v20;
      }

      else
      {
        v24 = *v75;
        (*v75)(v84, v19, v9);
        v18 = v20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1AE0(0, *(v20 + 16) + 1, 1);
          v18 = aBlock[0];
        }

        v27 = *(v18 + 2);
        v26 = *(v18 + 3);
        a1 = (v27 + 1);
        if (v27 >= v26 >> 1)
        {
          sub_1004A1AE0((v26 > 1), v27 + 1, 1);
          v18 = aBlock[0];
        }

        *(v18 + 2) = a1;
        v12 = v24(&v18[v87 + v27 * v86], v84, v9);
        v5 = v73;
        v19 = v74;
      }

      ++v17;
      v16 = v80;
      v13 = v81;
      if (v83 == v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_13:
    v86 = v18;
    __chkstk_darwin(v12);
    v28 = v71;
    v65 = v71;
    *&v87 = sub_10007DC28(sub_1005547A4, &v63, v18);
    v85 = *(v67 + 36);
    static TTRLocalizableStrings.Sections.newSectionWithSelection(listLayout:)();
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v29 = v70;
    sub_10048AE00(v28, v70);
    v9 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v30 = v9 + v69;
    v31 = swift_allocObject();
    sub_10048AE64(v29, v31 + v9);
    v64 = sub_10048AEC8;
    v65 = v31;
    v63 = 0;
    v1 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v32._object = 0x8000000100688A10;
    v33._countAndFlagsBits = 1701736270;
    v33._object = 0xE400000000000000;
    v32._countAndFlagsBits = 0xD000000000000045;
    TTRLocalizedString(_:comment:)(v33, v32);
    sub_10048AE00(v28, v29);
    v34 = swift_allocObject();
    sub_10048AE64(v29, v34 + v9);
    v64 = sub_1005547C0;
    v65 = v34;
    v63 = 0;
    a1 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [a1 setState:*(v28 + 24) > 1u];
    sub_10048AE00(v28, v29);
    v35 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    sub_10048AE64(v29, v36 + v9);
    *(v36 + v35) = v86;
    aBlock[4] = sub_100554830;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10010C96C;
    aBlock[3] = &unk_10072E438;
    v37 = _Block_copy(aBlock);
    v17 = [objc_opt_self() elementWithProvider:v37];
    _Block_release(v37);

    aBlock[0] = _swiftEmptyArrayStorage;
    LODWORD(v9) = *(v28 + 26);
    if (v9)
    {
      sub_100003540(0, &unk_10076B890, UIMenu_ptr);
      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_10062D420;
      *(v38 + 32) = a1;
      v39 = a1;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v89.value.super.isa = 0;
      v89.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v40, 0, v89, 1, 0xFFFFFFFFFFFFFFFFLL, v38, v66);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v41 = v87;
    if (!(v87 >> 62))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
      v42 = v41;
      goto LABEL_19;
    }
  }

  sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);

  v42 = _bridgeCocoaArray<A>(_:)();

LABEL_19:

  sub_1000815D0(v42);
  if (v9)
  {
    sub_100003540(0, &unk_10076B890, UIMenu_ptr);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10062D420;
    *(v43 + 32) = v1;
    v44 = v1;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    v90.value.super.isa = 0;
    v90.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v45, 0, v90, 1, 0xFFFFFFFFFFFFFFFFLL, v43, v66);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (*(v71 + 25) == 1)
  {
    v46 = static TTRLocalizableStrings.Sections.suggestedSectionHeaderText(listLayout:)();
    v48 = v47;
    v49 = static TTRLocalizableStrings.Sections.suggestedSectionHeaderDescriptionText(listLayout:)();
    v51 = v50;
    sub_100003540(0, &unk_10076B890, UIMenu_ptr);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v52 = swift_allocObject();
    v87 = xmmword_10062D420;
    *(v52 + 16) = xmmword_10062D420;
    *(v52 + 32) = v17;
    v53 = v17;
    v54._countAndFlagsBits = v49;
    v54._object = v51;
    v91.value.super.isa = 0;
    v91.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v54, 0, v91, 1, 0xFFFFFFFFFFFFFFFFLL, v52, v66).super.super.isa;
    v56 = swift_allocObject();
    *(v56 + 16) = v87;
    *(v56 + 32) = isa;
    v57 = isa;
    v58._countAndFlagsBits = v46;
    v58._object = v48;
    v92.value.super.isa = 0;
    v92.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v58, 0, v92, 0, 0xFFFFFFFFFFFFFFFFLL, v56, v66);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v59 = static TTRCommonAsset.Image.sectionIcon.getter();
  v65 = sub_1000E88C0(aBlock[0]);
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  v93.value.super.isa = v59;
  v93.is_nil = 0;
  v61 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v60, 0, v93, 0, 0xFFFFFFFFFFFFFFFFLL, v65, v66).super.super.isa;

  return v61;
}

uint64_t sub_1005547C0(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100551B4C(a1, v4);
}

double sub_100554830(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100551C58(a1, a2, v2 + v6, v7);
}

double sub_1005548DC(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_100551DC0(a1, v1 + v5, v7, v9, v10, v4);
}

unint64_t sub_100554988()
{
  result = qword_10078C4D0;
  if (!qword_10078C4D0)
  {
    sub_10005D20C(&qword_10078C4C8, &qword_100646128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C4D0);
  }

  return result;
}

uint64_t sub_100554A10()
{
  v1 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v4 = *(v1 - 8);
  result = v1 - 8;
  v3 = v4;
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v0 + *(result + 56) + v5);
  if (*v6)
  {
    v7 = (v0 + ((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
    return (*v6)(*v7, v7[1]);
  }

  return result;
}

uint64_t sub_100554AB4()
{
  v1 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for TTRSectionLite();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;

  sub_100263FE4(*(v8 + 16), *(v8 + 24));
  v9 = v1[9];
  v10 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  if (*(v0 + v3 + v1[12]))
  {
  }

  if (*(v8 + v1[13]))
  {
  }

  v11 = v2 | v6;
  v12 = (v3 + v14 + v6) & ~v6;
  (*(v5 + 8))(v0 + v12, v4);

  return _swift_deallocObject(v0, v12 + v7, v11 | 7);
}

uint64_t sub_100554C94(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for TTRSectionLite();
  return sub_10055275C(a1, v1 + v4);
}

uint64_t sub_100554D5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100554DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100058000(&qword_10078C698, &qword_100646208);
    NSKeyValueObservedChange.oldValue.getter();
    v9 = *&v14[1];
    v10 = *&v14[2];
    v11 = v15;
    NSKeyValueObservedChange.newValue.getter();
    if (v11)
    {
      if (v18)
      {
LABEL_12:

        return;
      }
    }

    else if ((v18 & 1) == 0 && v9 == v16 && v10 == v17)
    {
      goto LABEL_12;
    }

    if (*(v8 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_isActive) == 1)
    {
      v13 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_columnID;
      swift_beginAccess();
      (*(v4 + 16))(v6, v8 + v13, v3);
      PassthroughSubject.send(_:)();
      (*(v4 + 8))(v6, v3);
    }

    goto LABEL_12;
  }
}

double sub_100554F84(uint64_t a1)
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_isActive) == 1)
    {
      v7 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_columnID;
      v8 = Strong;
      swift_beginAccess();
      (*(v2 + 16))(v4, v8 + v7, v1);
      PassthroughSubject.send(_:)();
      (*(v2 + 8))(v4, v1);
    }
  }

  return result;
}

uint64_t sub_1005550DC()
{
  v1 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_columnID;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000B070(v0 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_contentSizeObservation);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIBoardColumnChromelessBarsStateContributor(uint64_t a1)
{
  result = qword_10078C540;
  if (!qword_10078C540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10055520C(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID();
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

uint64_t sub_1005552D0()
{
  sub_100058000(&qword_10078C680, qword_100640928);
  sub_1005553F0();
  return Publisher.eraseToAnyPublisher()();
}

unint64_t sub_1005553F0()
{
  result = qword_10078C688;
  if (!qword_10078C688)
  {
    sub_10005D20C(&qword_10078C680, qword_100640928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078C688);
  }

  return result;
}

uint64_t sub_100555454()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078C6A0);
  v1 = sub_100003E30(v0, qword_10078C6A0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10055552C()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  if (qword_100767450 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_10078C6A0);
  v6 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Public Template Viewer Add List", 31, 2, v6);

  swift_getObjectType();
  v7 = dispatch thunk of TTRShowPublicTemplateDataModelSourceType.listRepresentation.getter();
  if (v7)
  {
    v8 = v7;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    type metadata accessor for MainActor();

    v10 = v8;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v1;
    v12[5] = v10;
    sub_10009E31C(0, 0, v4, &unk_100646278, v12);
  }

  else
  {
    v17 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v17, v13, "TTRIShowPublicTemplatePresenter: failed to create list; missing listRepresentation", v14, 2u);
    }

    v15 = v17;
  }
}

uint64_t sub_1005557A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[13] = type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[15] = v7;
  v5[16] = v6;

  return _swift_task_switch(sub_100555844, v7, v6);
}

uint64_t sub_100555844(uint64_t a1)
{
  v1[17] = *(v1[11] + 88);
  v1[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_1005558DC, v3, v2);
}

uint64_t sub_1005558DC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[22] = v2;
    *v2 = v0;
    v2[1] = sub_1005559C4;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v3 = v0[15];
    v4 = v0[16];

    return _swift_task_switch(sub_100555B68, v3, v4);
  }
}

uint64_t sub_1005559C4()
{
  v1 = *v0;
  v2 = *(*v0 + 168);

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return _swift_task_switch(sub_100555B04, v4, v3);
}

uint64_t sub_100555B04()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return _swift_task_switch(sub_100555B68, v1, v2);
}

uint64_t sub_100555B68()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v2;
      v4 = v0[11];
      v0[5] = type metadata accessor for TTRIShowPublicTemplatePresenter(0);
      v0[6] = &off_10071AA88;
      v0[2] = v4;
      (*(v3 + 16))(v0 + 2, ObjectType, v3);

      swift_unknownObjectRelease();
      sub_100004758(v0 + 2);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v5 = v0[11];
  v6 = objc_allocWithZone(TTRUndoManager);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithDebugIdentifier:v7];
  v0[23] = v8;

  v9 = *(v5 + 80);
  v10 = swift_getObjectType();
  v11 = v8;
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_100555D28;
  v13 = v0[12];

  return dispatch thunk of TTRRemindersListInteractorType.createList(fromREMListRepresentationOfPublicTemplate:storingUndoStepsIn:)(v13, v8, v10, v9);
}

uint64_t sub_100555D28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = *(v3 + 120);
    v5 = *(v3 + 128);
    v6 = sub_100555F3C;
  }

  else
  {

    v4 = *(v3 + 120);
    v5 = *(v3 + 128);
    v6 = sub_100555E44;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100555E44()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    v4 = v0[25];
    v5 = v0[23];
    if (v3)
    {
      sub_10000C36C((v2 + 48), *(v2 + 72));
      sub_100395F48(v4, v5, 1);
      swift_unknownObjectRelease();
      v6 = v5;
      v5 = v4;
    }

    else
    {
      swift_unknownObjectRelease();
      v6 = v4;
    }
  }

  else
  {
    v6 = v0[25];
    v5 = v0[23];
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100555F3C()
{
  v15 = v0;
  v1 = *(v0 + 184);

  if (qword_100767450 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10078C6A0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 184);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.rem_errorDescription.getter();
    v11 = sub_100004060(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRMShowPublicTemplatePresenter: failed to create list from template {error: %s}", v7, 0xCu);
    sub_100004758(v8);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

double sub_100556120()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  if (qword_100767450 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_10078C6A0);
  v6 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Public Template Viewer Cancel", 29, 2, v6);

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v1;
  sub_10009E31C(0, 0, v4, &unk_100646268, v9);

  return result;
}

uint64_t sub_1005562BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[7] = a4;
  v4[8] = *a4;
  v4[9] = type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[11] = v6;
  v4[12] = v5;

  return _swift_task_switch(sub_100556380, v6, v5);
}

uint64_t sub_100556380(uint64_t a1)
{
  v1[13] = *(v1[7] + 88);
  v1[14] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v3;
  v1[16] = v2;

  return _swift_task_switch(sub_100556418, v3, v2);
}

uint64_t sub_100556418()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_100556500;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v3 = v0[11];
    v4 = v0[12];

    return _swift_task_switch(sub_1005566A4, v3, v4);
  }
}

uint64_t sub_100556500()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return _swift_task_switch(sub_100556640, v4, v3);
}

uint64_t sub_100556640()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_1005566A4, v1, v2);
}

uint64_t sub_1005566A4()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v0[7];
      v0[5] = v0[8];
      v0[6] = &off_10071AA88;
      v0[2] = v3;
      (*(v2 + 16))(v0 + 2, ObjectType, v2);

      swift_unknownObjectRelease();
      sub_100004758(v0 + 2);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005567AC()
{
  sub_1001E6A30();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowPublicTemplatePresenter(uint64_t a1)
{
  result = qword_10078C6E8;
  if (!qword_10078C6E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005568B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_1005562BC(a1, v4, v5, v6);
}

uint64_t sub_10055696C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_1005557A8(a1, v4, v5, v7, v6);
}

void sub_100556A2C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v4 = Strong;
  if (a2)
  {

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    goto LABEL_13;
  }

  v9 = v6;
  if (a2)
  {
    v7 = String.count.getter();

    v8 = v7 < 1;
  }

  else
  {
    v8 = 1;
  }

  [v9 setHidden:v8];
}

void sub_100556B30(void *a1)
{
  if (!a1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRIListSharingParticipantCell_avatarViewController);
    if (v9)
    {
      sub_100469C1C();
      v10 = v9;
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v10 setContacts:isa];

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        [Strong setHidden:1];
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
      return;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRIListSharingParticipantCell_avatarViewController);
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10062D420;
  *(v4 + 32) = a1;
  sub_100469C1C();
  v5 = a1;
  v6 = v2;
  v7 = Array._bridgeToObjectiveC()().super.isa;

  [v6 setContacts:v7];

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v8;
  [v8 setHidden:0];

LABEL_8:
}

void sub_100556CCC()
{
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "awakeFromNib");
  v1 = OBJC_IVAR____TtC9Reminders30TTRIListSharingParticipantCell_avatarViewController;
  if (*&v0[OBJC_IVAR____TtC9Reminders30TTRIListSharingParticipantCell_avatarViewController])
  {
    goto LABEL_7;
  }

  v2 = [objc_allocWithZone(CNAvatarViewController) init];
  v3 = *&v0[v1];
  *&v0[v1] = v2;
  v4 = v2;

  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v4 setThreeDTouchEnabled:0];

  v5 = *&v0[v1];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = [v5 view];
  [v6 setAutoresizingMask:18];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = Strong;
  [Strong addSubview:v6];

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v6 setFrame:{v12, v14, v16, v18}];
LABEL_7:
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = objc_opt_self();
      v22 = [v21 labelColor];
      [v20 setTextColor:v22];

      v23 = swift_unknownObjectWeakLoadStrong();
      if (v23)
      {
        v24 = v23;
        v25 = [v21 secondaryLabelColor];
        [v24 setTextColor:v25];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

id sub_100557028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9Reminders30TTRIListSharingParticipantCell_avatarViewController] = 0;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a1, v7);

  return v8;
}

id sub_100557154(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9Reminders30TTRIListSharingParticipantCell_avatarViewController] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id TTRIRootAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRootAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIRootAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRootAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100557388()
{
  result = (*(v0 + 16))(&v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10055740C(uint64_t a1)
{
  sub_100014EBC(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item, &protocol conformance descriptor for TTRAccountsListsViewModel.Item);

  return TTRTreeStorageItem.treeItemDescription.getter();
}

double destroy for TTRIAccountsListsViewUpdateOptions(uint64_t a1)
{
  if (*(a1 + 8))
  {
  }

  return result;
}

__n128 sub_10055748C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a2 + 8);
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = *(a2 + 16);
    *(a1 + 8) = v2;
    *(a1 + 16) = v4;
  }

  else
  {
    result = *v3;
    *(a1 + 8) = *v3;
  }

  return result;
}

uint64_t assignWithCopy for TTRIAccountsListsViewUpdateOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = (a1 + 8);
  v5 = (a2 + 8);
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (v4)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v4;
      *(a1 + 16) = v7;

      return a1;
    }

LABEL_7:
    *v3 = *v5;
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;

  return a1;
}

__n128 assignWithTake for TTRIAccountsListsViewUpdateOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v2 = (a1 + 8);
  v4 = (a2 + 8);
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3)
    {
      v5 = *(a2 + 16);
      *(a1 + 8) = v3;
      *(a1 + 16) = v5;

      return result;
    }
  }

  else if (v3)
  {
    v7 = *(a2 + 16);
    *(a1 + 8) = v3;
    *(a1 + 16) = v7;
    return result;
  }

  result = *v4;
  *v2 = *v4;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRIAccountsListsViewUpdateOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for TTRIAccountsListsViewUpdateOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1005576E8()
{
  result = qword_10078D1E0;
  if (!qword_10078D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078D1E0);
  }

  return result;
}

uint64_t *sub_10055773C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_100058000(&qword_10076B9A0, &qword_10062FCD0);
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = a1 + v8;
    v10 = a2 + v8;
    *v9 = *v10;
    v11 = *(v10 + 1);
    if (v11)
    {
      v12 = *(v10 + 2);
      *(v9 + 1) = v11;
      *(v9 + 2) = v12;
    }

    else
    {
      *(v9 + 8) = *(v10 + 8);
    }
  }

  return a1;
}

double sub_100557840(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076B9A0, &qword_10062FCD0);
  (*(*(v4 - 8) + 8))(a1, v4);
  if (*(a1 + *(a2 + 20) + 8))
  {
  }

  return result;
}

uint64_t sub_1005578D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_10076B9A0, &qword_10062FCD0);
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = *(v9 + 16);
    *(v8 + 8) = v10;
    *(v8 + 16) = v11;
  }

  else
  {
    *(v8 + 8) = *(v9 + 8);
  }

  return a1;
}

uint64_t sub_100557990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_10076B9A0, &qword_10062FCD0);
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 1) = *(v9 + 1);
  v10 = (v8 + 8);
  v12 = (v9 + 8);
  v11 = *(v9 + 8);
  if (!*(v8 + 8))
  {
    if (v11)
    {
      v14 = *(v9 + 16);
      *(v8 + 8) = v11;
      *(v8 + 16) = v14;

      return a1;
    }

LABEL_7:
    *v10 = *v12;
    return a1;
  }

  if (!v11)
  {

    goto LABEL_7;
  }

  v13 = *(v9 + 16);
  *(v8 + 8) = v11;
  *(v8 + 16) = v13;

  return a1;
}

uint64_t sub_100557A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_10076B9A0, &qword_10062FCD0);
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t sub_100557B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_10076B9A0, &qword_10062FCD0);
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 1) = *(v9 + 1);
  v10 = (v8 + 8);
  v12 = (v9 + 8);
  v11 = *(v9 + 8);
  if (!*(v8 + 8))
  {
    if (v11)
    {
      v14 = *(v9 + 16);
      *(v8 + 8) = v11;
      *(v8 + 16) = v14;
      return a1;
    }

LABEL_7:
    *v10 = *v12;
    return a1;
  }

  if (!v11)
  {

    goto LABEL_7;
  }

  v13 = *(v9 + 16);
  *(v8 + 8) = v11;
  *(v8 + 16) = v13;

  return a1;
}

uint64_t sub_100557C34()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100003E68(v6, static OpenNewReminderAppIntent.title);
  sub_100003E30(v6, static OpenNewReminderAppIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t OpenNewReminderAppIntent.title.unsafeMutableAddressor()
{
  if (qword_100767458 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_100003E30(v0, static OpenNewReminderAppIntent.title);
}

uint64_t static OpenNewReminderAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100767458 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100003E30(v2, static OpenNewReminderAppIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenNewReminderAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_100767528, &qword_10062BD18);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t OpenNewReminderAppIntent.perform()(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for REMNavigationSpecifier();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for RemindersAppIntentCategory();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005583C8, v6, v5);
}

uint64_t sub_1005583C8()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v11 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  (*(v3 + 104))(v1, enum case for RemindersAppIntentCategory.publicAppIntent(_:), v2);
  sub_1002B5D00();
  AppIntent.postAnalytics(category:)();
  (*(v3 + 8))(v1, v2);
  (*(v8 + 104))(v6, enum case for REMNavigationSpecifier.newReminder(_:), v7);
  REMNavigationSpecifier.url.getter();
  (*(v8 + 8))(v6, v7);
  URL.open()();
  (*(v5 + 8))(v4, v11);
  static IntentResult.result<>()();

  v9 = v0[1];

  return v9();
}

unint64_t sub_10055854C()
{
  result = qword_10078D280;
  if (!qword_10078D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078D280);
  }

  return result;
}

unint64_t sub_1005585A4()
{
  result = qword_10078D288;
  if (!qword_10078D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078D288);
  }

  return result;
}

uint64_t sub_100558678(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001AA3C;

  return OpenNewReminderAppIntent.perform()(a1);
}

uint64_t sub_100558710(uint64_t a1)
{
  v2 = sub_1002B5D00();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void sub_1005588CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong isViewLoaded])
    {
      sub_1000165F0();
    }
  }
}

id sub_100558930(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewWillDisappear:", a1 & 1);
  result = [v1 collectionView];
  if (result)
  {
    v4 = result;
    v5 = [result contextMenuInteraction];

    [v5 dismissMenu];

    TTRModuleState.viewWillDisappear()();

    swift_getObjectType();
    return dispatch thunk of TTRAccountsListsInteractorType.pauseUpdates()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100558AE0(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078D510, &unk_1006468E0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v37 - v11);
  v13 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  v39 = *(v13 - 8);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v2 splitViewController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 displayMode];

    if (v19 == 1)
    {
      goto LABEL_5;
    }
  }

  v20 = [v2 presentedViewController];
  if (v20)
  {

LABEL_5:
    v21 = 0;
    return v21 & 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    v21 = [v2 isEditing] ^ 1;
    return v21 & 1;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    sub_10000794C(v41, &v46, &qword_10076AE40, &qword_10062EE50);
    v24 = *(&v47 + 1);
    if (*(&v47 + 1))
    {
      v25 = sub_10000C36C(&v46, *(&v47 + 1));
      v26 = *(v24 - 8);
      v27 = __chkstk_darwin(v25);
      v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v29, v27);
      v30 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v26 + 8))(v29, v24);
      sub_100004758(&v46);
    }

    else
    {
      v30 = 0;
    }

    v45.receiver = v2;
    v45.super_class = ObjectType;
    v21 = objc_msgSendSuper2(&v45, "canPerformAction:withSender:", a1, v30);
    swift_unknownObjectRelease();
    return v21 & 1;
  }

  if ([v2 isEditing])
  {
    goto LABEL_5;
  }

  sub_10000794C(v41, &v46, &qword_10076AE40, &qword_10062EE50);
  if (!*(&v47 + 1))
  {
LABEL_25:
    v31 = &qword_10076AE40;
    v32 = &qword_10062EE50;
    v33 = &v46;
    goto LABEL_26;
  }

  sub_100003540(0, &unk_10076BAB0, UIKeyCommand_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v23 = v43;
  if ([v43 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v46 = v43;
  v47 = v44;
  if (!*(&v44 + 1))
  {

    goto LABEL_25;
  }

  sub_100058000(&qword_100768358, &qword_10062FDA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_5;
  }

  sub_1005F6EE8(v42, v12);
  if ((*(v39 + 48))(v12, 1, v13) == 1)
  {

    v31 = &unk_10078D510;
    v32 = &unk_1006468E0;
    v33 = v12;
LABEL_26:
    sub_1000079B4(v33, v31, v32);
    goto LABEL_5;
  }

  sub_10056B878(v12, v16, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
  sub_10056B8E0(&v16[*(v13 + 20)], v9, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10056B948(v16, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);

    sub_10056B948(v9, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier);
    v21 = 1;
  }

  else
  {
    v35 = v37;
    v34 = v38;
    (*(v37 + 32))(v6, v9, v38);
    sub_10043F208(v6);
    v21 = v36;

    (*(v35 + 8))(v6, v34);
    sub_10056B948(v16, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
  }

  return v21 & 1;
}

void sub_1005591A4(char a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_100452454(a1);
  v9.receiver = v2;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setEditing:animated:", a1 & 1, a2 & 1);
  v7 = [v2 isEditing];
  if (v7)
  {
    __chkstk_darwin(v7);

    sub_100058000(&unk_10078D430, &qword_100631760);
    sub_10000E188(&qword_100783258, &unk_10078D430, &qword_100631760, &protocol conformance descriptor for TTRICollectionViewCollapsedStatesPresenterCapability<A>);
    v8 = dispatch thunk of TTRICollectionViewItemCollapsedStates.beginOverridingItemCollapsedStates(shouldExpand:)();
  }

  else
  {
    v8 = 0;
  }

  *&v3[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_itemCollapsedStatesOverrideCancellable] = v8;

  sub_1000165F0();
}

void sub_100559314(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v10)
  {
    v11 = v10;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000079B4(v5, &unk_100771B40, &unk_10062FB70);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      TTRAccountsListsViewModel.Item.isCollapsible.getter();
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10055952C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&unk_10078D520, &unk_1006468F0);
  __chkstk_darwin(v3 - 8);
  v81 = &v77 - v4;
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v82 = *(v5 - 8);
  v83 = v5;
  __chkstk_darwin(v5);
  v77 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v7 - 8);
  v79 = (&v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v84 = (&v77 - v10);
  __chkstk_darwin(v11);
  v13 = (&v77 - v12);
  __chkstk_darwin(v14);
  v16 = (&v77 - v15);
  __chkstk_darwin(v17);
  v19 = (&v77 - v18);
  v20 = type metadata accessor for TTRIAccountsListsSelection(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v78 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v77 - v24;
  __chkstk_darwin(v26);
  v28 = &v77 - v27;
  __chkstk_darwin(v29);
  v85 = &v77 - v30;
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v77 - v33;
  v86 = a1;
  [a1 action];
  if (static Selector.== infix(_:_:)())
  {
    sub_10055A0F4(v19);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      return sub_1000079B4(v19, &unk_10076B7C0, &unk_10062FBA0);
    }

    sub_10056B878(v19, v34, type metadata accessor for TTRIAccountsListsSelection);
    sub_10042DDB8(v34);
    v37 = v36 == 0;
    v38 = v36 == 2;
    v39 = v86;
    *&v89[0] = [v86 attributes];
    UIMenuElementAttributes.setDisabled(_:)(v38);
    [v39 setAttributes:*&v89[0]];
    static TTRLocalizableStrings.RemindersList.autoCategorizationTitle.getter();
    v40 = String._bridgeToObjectiveC()();

    [v39 setTitle:v40];

    v41 = static TTRCommonAsset.Image.autoCategorizationIcon.getter();
    [v39 setImage:v41];

    [v39 setState:v37];
    v42 = v34;
    return sub_10056B948(v42, type metadata accessor for TTRIAccountsListsSelection);
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_10055A0F4(v16);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      return sub_1000079B4(v16, &unk_10076B7C0, &unk_10062FBA0);
    }

    v43 = v85;
    sub_10056B878(v16, v85, type metadata accessor for TTRIAccountsListsSelection);
    sub_100452B28(v43);
    if (v44)
    {
      v45 = v86;
      if (v44 != 1)
      {
        *&v89[0] = [v86 attributes];
        UIMenuElementAttributes.setDisabled(_:)(1);
        [v45 setAttributes:*&v89[0]];
LABEL_26:
        v42 = v43;
        return sub_10056B948(v42, type metadata accessor for TTRIAccountsListsSelection);
      }

      *&v89[0] = [v86 attributes];
      UIMenuElementAttributes.setDisabled(_:)(0);
      [v45 setAttributes:*&v89[0]];
      v46._countAndFlagsBits = 0x694C206E69706E55;
      v47._countAndFlagsBits = 0xD00000000000002ALL;
      v47._object = 0x8000000100671560;
      v46._object = 0xEA00000000007473;
      TTRLocalizedString(_:comment:)(v46, v47);
      v48 = String._bridgeToObjectiveC()();

      [v45 setTitle:v48];

      v49 = String._bridgeToObjectiveC()();
      v50 = [objc_opt_self() _systemImageNamed:v49];
    }

    else
    {
      v45 = v86;
      *&v89[0] = [v86 attributes];
      UIMenuElementAttributes.setDisabled(_:)(0);
      [v45 setAttributes:*&v89[0]];
      v57._countAndFlagsBits = 0x7473694C206E6950;
      v58._object = 0x8000000100671590;
      v57._object = 0xE800000000000000;
      v58._countAndFlagsBits = 0xD000000000000028;
      TTRLocalizedString(_:comment:)(v57, v58);
      v59 = String._bridgeToObjectiveC()();

      [v45 setTitle:v59];

      v49 = String._bridgeToObjectiveC()();
      v50 = [objc_opt_self() _systemImageNamed:v49];
    }

    v60 = v50;

    [v45 setImage:v60];
LABEL_25:

    goto LABEL_26;
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_10055A0F4(v13);
    if ((*(v21 + 48))(v13, 1, v20) == 1)
    {
      return sub_1000079B4(v13, &unk_10076B7C0, &unk_10062FBA0);
    }

    sub_10056B878(v13, v28, type metadata accessor for TTRIAccountsListsSelection);
    sub_100452E1C(v28);
    v53 = v52;
    v54 = v86;
    *&v89[0] = [v86 attributes];
    UIMenuElementAttributes.setDisabled(_:)((v53 & 1) == 0);
    [v54 setAttributes:*&v89[0]];
    v42 = v28;
    return sub_10056B948(v42, type metadata accessor for TTRIAccountsListsSelection);
  }

  if (static Selector.== infix(_:_:)())
  {
    v51 = v84;
    sub_10055A0F4(v84);
    if ((*(v21 + 48))(v51, 1, v20) != 1)
    {
      sub_10056B878(v51, v25, type metadata accessor for TTRIAccountsListsSelection);
      sub_100452E2C(v25);
      v62 = v61;
      v63 = v86;
      *&v89[0] = [v86 attributes];
      UIMenuElementAttributes.setDisabled(_:)((v62 & 1) == 0);
      [v63 setAttributes:*&v89[0]];
      v42 = v25;
      return sub_10056B948(v42, type metadata accessor for TTRIAccountsListsSelection);
    }

    return sub_1000079B4(v51, &unk_10076B7C0, &unk_10062FBA0);
  }

  if (static Selector.== infix(_:_:)())
  {
    v55 = [v1 isEditing];
    v56 = v86;
    if (v55)
    {
      goto LABEL_40;
    }

    if ([v86 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
    }

    v70 = v82;
    v69 = v83;
    v71 = v81;
    v89[0] = v87;
    v89[1] = v88;
    if (!*(&v88 + 1))
    {
      v72 = &qword_10076AE40;
      v73 = &qword_10062EE50;
      v74 = v89;
      goto LABEL_39;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_40:
      *&v89[0] = [v56 attributes];
      UIMenuElementAttributes.setDisabled(_:)(1);
      return [v56 setAttributes:*&v89[0]];
    }

    TTRListType.PredefinedSmartListType.init(rawValue:)();
    if ((*(v70 + 48))(v71, 1, v69) == 1)
    {
      v72 = &unk_10078D520;
      v73 = &unk_1006468F0;
      v74 = v71;
LABEL_39:
      sub_1000079B4(v74, v72, v73);
      goto LABEL_40;
    }

    v75 = v77;
    (*(v70 + 32))(v77, v71, v69);
    sub_10043F208(v75);
    [v56 setState:v76 & 1];
    return (*(v70 + 8))(v75, v69);
  }

  else
  {
    if (static Selector.== infix(_:_:)())
    {
      v51 = v79;
      sub_10055A0F4(v79);
      if ((*(v21 + 48))(v51, 1, v20) != 1)
      {
        v43 = v78;
        sub_10056B878(v51, v78, type metadata accessor for TTRIAccountsListsSelection);
        sub_10045356C(v43);
        v65 = v64;
        v66 = v86;
        *&v89[0] = [v86 attributes];
        UIMenuElementAttributes.setDisabled(_:)((v65 & 1) == 0);
        [v66 setAttributes:*&v89[0]];
        v67._countAndFlagsBits = 0x73694C20776F6853;
        v67._object = 0xEE006F666E492074;
        v68._countAndFlagsBits = 0xD00000000000002ELL;
        v68._object = 0x8000000100671530;
        TTRLocalizedString(_:comment:)(v67, v68);
        v60 = String._bridgeToObjectiveC()();

        [v66 setTitle:v60];
        goto LABEL_25;
      }

      return sub_1000079B4(v51, &unk_10076B7C0, &unk_10062FBA0);
    }

    v90.receiver = v1;
    v90.super_class = ObjectType;
    return objc_msgSendSuper2(&v90, "validateCommand:", v86);
  }
}

void sub_10055A0F4(uint64_t *a1@<X8>)
{
  v3 = sub_100058000(&qword_100776648, &qword_100636AE8);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController];
  if (!v6)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
  swift_beginAccess();
  sub_10000794C(v6 + v7, v5, &qword_100776648, &qword_100636AE8);
  v8 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = type metadata accessor for REMHashtagLabelSpecifier();
    }

    else
    {
      v16 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    }

    (*(*(v16 - 8) + 32))(a1, v5, v16);
    v17 = type metadata accessor for TTRIAccountsListsSelection(0);
    goto LABEL_14;
  }

  v9 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = v9;
  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 indexPathsForSelectedItems];

  v14 = v1;
  if (v13)
  {
    type metadata accessor for IndexPath();
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v24 = v15;
  sub_100058000(&unk_10078A370, &unk_10063AB80);
  sub_10000E188(&unk_100771B00, &unk_10078A370, &unk_10063AB80, &protocol conformance descriptor for [A]);
  v18 = TTRICollectionViewTreeBackedDiffableDataSource.items<A>(for:)();

  if (*(v18 + 16))
  {
    *a1 = v18;
    v17 = type metadata accessor for TTRIAccountsListsSelection(0);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
    return;
  }

  v19 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
  v20 = *&v14[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
  if (!v20)
  {
    goto LABEL_24;
  }

  if ([v20 isActive])
  {
LABEL_19:
    v22 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
    swift_beginAccess();
    sub_10000794C(&v14[v22], a1, &unk_10076B7C0, &unk_10062FBA0);
    return;
  }

  v21 = *&v14[v19];
  if (!v21)
  {
    goto LABEL_25;
  }

  if ([v21 isBeingPresented])
  {
    goto LABEL_19;
  }

  v23 = type metadata accessor for TTRIAccountsListsSelection(0);
  (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
}

id sub_10055A558(uint64_t a1)
{
  sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
  v1._object = 0x80000001006711A0;
  v2._countAndFlagsBits = 0xD000000000000035;
  v2._object = 0x80000001006711C0;
  v1._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:comment:)(v1, v2);
  static TTRCommonAsset.Image.timeZoneOverrideIcon.getter();
  swift_unknownObjectRetain();
  v3 = UIBarButtonItem.init(title:image:target:action:menu:)();
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000FD678;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10010C96C;
  aBlock[3] = &unk_10072E8F0;
  v6 = _Block_copy(aBlock);
  v7 = v3;

  v8 = [v4 elementWithUncachedProvider:v6];
  _Block_release(v6);
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v9._countAndFlagsBits = 0x6E6F5A20656D6954;
  v10._countAndFlagsBits = 0xD00000000000001ELL;
  v10._object = 0x8000000100671220;
  v9._object = 0xE900000000000065;
  v11 = TTRLocalizedString(_:comment:)(v9, v10);
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v8;
  v19.value.super.isa = v13;
  v19.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v11, 0, v19, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v17).super.super.isa;
  [v7 setMenu:isa];

  return v7;
}

Class sub_10055A81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  swift_unknownObjectRetain();

  v5 = swift_allocObject();
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7 = sub_100428028(sub_10056693C, v5);
  swift_unknownObjectRelease();

  return v7;
}

void sub_10055A918(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1005591A4(1, 1);
  }
}

uint64_t sub_10055A974(uint64_t a1)
{
  v2 = sub_100058000(&unk_10077FC20, &unk_100638BA0);
  __chkstk_darwin(v2 - 8);
  v28 = &v23 - v3;
  v4 = sub_100058000(&unk_10078A4D0, &qword_10063C2A0);
  __chkstk_darwin(v4 - 8);
  v25 = &v23 - v5;
  v6 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.DisplayedState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIListContentConfiguration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.valueCell()();
  TTRAccountsListsViewModel.Item.debugDescription.getter();
  UIListContentConfiguration.text.setter();
  IndexPath.description.getter();
  UIListContentConfiguration.secondaryText.setter();
  v30[3] = v12;
  v30[4] = &protocol witness table for UIListContentConfiguration;
  v16 = sub_1000317B8(v30);
  (*(v13 + 16))(v16, v15, v12);
  v29 = a1;
  UICollectionViewCell.contentConfiguration.setter();
  if (TTRAccountsListsViewModel.Item.isCollapsible.getter())
  {
    sub_100058000(&unk_10077C050, &unk_10063A220);
    v17 = *(type metadata accessor for UICellAccessory() - 8);
    v23 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_10062D400;
    v18 = v11;
    (*(v9 + 104))(v11, enum case for UICellAccessory.DisplayedState.always(_:), v8);
    v19 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
    (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
    v20 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
    v21 = v24;
    UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
    (*(v26 + 8))(v21, v27);
    (*(v9 + 8))(v18, v8);
  }

  UICollectionViewListCell.accessories.setter();
  return (*(v13 + 8))(v15, v12);
}

void sub_10055AE24(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v15)
  {
    v16 = v15;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000079B4(v7, &unk_100771B40, &unk_10062FB70);
    }

    else
    {
      v23 = *(v9 + 32);
      v23(v14, v7, v8);
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
      v18 = swift_allocObject();
      swift_weakInit();
      (*(v9 + 16))(v11, v14, v8);
      type metadata accessor for MainActor();

      v19 = static MainActor.shared.getter();
      v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
      v21 = swift_allocObject();
      *(v21 + 2) = v19;
      *(v21 + 3) = &protocol witness table for MainActor;
      *(v21 + 4) = v18;
      v23(&v21[v20], v11, v8);

      sub_10009E31C(0, 0, v4, &unk_10062FF98, v21);

      (*(v9 + 8))(v14, v8);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10055B180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v97 = a3;
  v5 = sub_100058000(&unk_10078A4D0, &qword_10063C2A0);
  __chkstk_darwin(v5 - 8);
  v86 = &v64 - v6;
  v77 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v81 = *(v77 - 8);
  __chkstk_darwin(v77);
  v85 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.ReorderOptions();
  v83 = *(v8 - 8);
  v84 = v8;
  __chkstk_darwin(v8);
  v82 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for UICellAccessory.DetailOptions();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_10077FC20, &unk_100638BA0);
  __chkstk_darwin(v11 - 8);
  v98 = &v64 - v12;
  v87 = type metadata accessor for UICellAccessory.DeleteOptions();
  v76 = *(v87 - 1);
  __chkstk_darwin(v87);
  v75 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v95 = v16;
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UICellAccessory.DisplayedState();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_100058000(&unk_10077C050, &unk_10063A220);
    v24 = *(type metadata accessor for UICellAccessory() - 8);
    v92 = *(v24 + 72);
    v25 = *(v24 + 80);
    v74 = a1;
    v26 = (v25 + 32) & ~v25;
    v27 = swift_allocObject();
    v73._rawValue = v27;
    v27[1] = xmmword_1006337E0;
    v91 = v27 + v26;
    v71 = enum case for UICellAccessory.DisplayedState.whenEditing(_:);
    v99 = v19;
    v28 = *(v19 + 104);
    v93 = v19 + 104;
    v94 = v28;
    v96 = v18;
    v28(v21);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = *(v15 + 16);
    v67 = v15 + 16;
    v70 = v30;
    v31 = v17;
    v66 = v17;
    v65 = v14;
    v30(v17, v97, v14);
    v32 = *(v15 + 80);
    v72 = v23;
    v68 = (v32 + 24) & ~v32;
    v33 = swift_allocObject();
    *(v33 + 16) = v29;
    v69 = *(v15 + 32);
    v69(v33 + ((v32 + 24) & ~v32), v31, v14);
    v88 = type metadata accessor for UICellAccessory.LayoutDimension();
    v34 = *(v88 - 8);
    v90 = *(v34 + 56);
    v35 = v34 + 56;
    v36 = v21;
    v90(v98, 1, 1, v88);
    v89 = v35;

    v37 = v72;
    v38 = v96;
    v39 = v37;
    v40 = v75;
    UICellAccessory.DeleteOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
    static UICellAccessory.delete(displayed:options:actionHandler:)();

    (*(v76 + 8))(v40, v87);
    v41 = *(v99 + 8);
    v99 += 8;
    v87 = v41;
    v41(v36, v38);
    v72 = v39;

    v42 = v71;
    v94(v36, v71, v38);
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v44 = v66;
    v45 = v65;
    v70(v66, v97, v65);
    v46 = v68;
    v47 = swift_allocObject();
    *(v47 + 16) = v43;
    v69(v47 + v46, v44, v45);
    v48 = v88;
    v90(v98, 1, 1, v88);

    v49 = v78;
    UICellAccessory.DetailOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.detail(displayed:options:actionHandler:)();

    (*(v79 + 8))(v49, v80);
    v50 = v96;
    v51 = v87;
    v87(v36, v96);

    v52 = v50;
    v53 = v94;
    v94(v36, v42, v52);
    v54 = v98;
    v55 = v48;
    v56 = v90;
    v90(v98, 1, 1, v55);
    v57 = v82;
    UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
    static UICellAccessory.reorder(displayed:options:)();
    (*(v83 + 8))(v57, v84);
    v58 = v96;
    v51(v36, v96);
    v53(v36, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v58);
    v59 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
    (*(*(v59 - 8) + 56))(v86, 1, 1, v59);
    v56(v54, 1, 1, v88);
    v60 = v85;
    UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
    (*(v81 + 8))(v60, v77);
    v61 = v74;
    v87(v36, v58);
    UICollectionViewListCell.setUnmanagedAccessories(_:)(v73);

    *(v61 + OBJC_IVAR____TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView_delegate + 8) = &off_10072E7A8;
    v62 = v72;
    swift_unknownObjectWeakAssign();
    if (*&v62[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {

      v63 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v63)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*(v61 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_10055BC6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10055AE24(a2);
  }
}

void sub_10055BCC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
    if (v11)
    {
      v12 = v11;
      TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        sub_1000079B4(v4, &unk_100771B40, &unk_10062FB70);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        sub_10042BF78(v8);
        (*(v6 + 8))(v8, v5);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10055BEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100058000(&qword_100768830, &qword_10062D790);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    *(a1 + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsRecentlyDeletedCell_collectionView_delegate + 8) = &off_10072E798;
    swift_unknownObjectWeakAssign();
    v13 = enum case for UICellAccessory.DisplayedState.whenNotEditing(_:);
    v14 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v14 - 8) + 104))(v10, v13, v14);
    v15 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration(0);
    v10[*(v15 + 20)] = 1;
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
    v16 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_disclosureIndicatorConfiguration;
    swift_beginAccess();
    sub_10000794C(a1 + v16, v7, &qword_100768830, &qword_10062D790);
    swift_beginAccess();
    sub_100019180(v10, a1 + v16, &qword_100768830, &qword_10062D790);
    swift_endAccess();
    sub_100034B14(v7);
    sub_1000079B4(v7, &qword_100768830, &qword_10062D790);
    sub_1000079B4(v10, &qword_100768830, &qword_10062D790);
    if (*&v12[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {

      v17 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v17)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*(a1 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_10055C178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100058000(&unk_10077FC20, &unk_100638BA0);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for UICellAccessory.ReorderOptions();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICellAccessory.DisplayedState();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v22[1] = a3;
    sub_100058000(&unk_10077C050, &unk_10063A220);
    v23 = v9;
    type metadata accessor for UICellAccessory();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10062D400;
    (*(v14 + 104))(v16, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v13);
    v20 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
    static UICellAccessory.reorder(displayed:options:)();
    (*(v10 + 8))(v12, v23);
    (*(v14 + 8))(v16, v13);
    UICollectionViewListCell.setUnmanagedAccessories(_:)(v19);

    if (*&v18[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {

      v21 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v21)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*(a1 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_10055C51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100058000(&unk_10077FC20, &unk_100638BA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_100058000(&unk_10078A4D0, &qword_10063C2A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v28 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UICellAccessory.DisplayedState();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v26 = a3;
    sub_100058000(&unk_10077C050, &unk_10063A220);
    v27 = v12;
    type metadata accessor for UICellAccessory();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10062D400;
    (*(v16 + 104))(v18, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v15);
    v22 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    v23 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
    (*(v28 + 8))(v14, v27);
    (*(v16 + 8))(v18, v15);
    UICollectionViewListCell.setUnmanagedAccessories(_:)(v21);

    *(a1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_delegate + 8) = &off_10072E8A8;
    swift_unknownObjectWeakAssign();
    if (*&v20[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {
      v24 = a1;

      v25 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v25)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*(v24 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();

          if (*(v24 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsTagsHeaderCell_selectionRequestObserver))
          {
            if (*&v20[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController])
            {

              TTRViewModelObserver.subscribeIfNeeded(to:)();

              return;
            }

LABEL_13:
            __break(1u);
            return;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10055C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100014F04(&unk_10078D618, type metadata accessor for TTRIAccountsListsViewController_collectionView, &unk_1006466AC);
    v7 = v6;
    TTRIHashtagWrappingCollectionView.delegate.setter();
    if (*&v7[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {

      v8 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v8)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*(a1 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();

          if (*(a1 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsHashtagsCell_selectionRequestObserver))
          {
            if (*&v7[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController])
            {

              TTRViewModelObserver.subscribeIfNeeded(to:)();

              return;
            }

LABEL_13:
            __break(1u);
            return;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10055CB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    *(a1 + *a5 + 8) = sub_100014F04(&qword_10078D610, type metadata accessor for TTRIAccountsListsViewController_collectionView, &unk_100646654);
    swift_unknownObjectWeakAssign();
    if (*&v8[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {

      v9 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v9)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        if (*(a1 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
        {

          TTRViewModelObserver.subscribeIfNeeded(to:)();

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

double sub_10055CC9C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    v8 = sub_100058000(&unk_10078D430, &qword_100631760);
    v9 = sub_10000E188(&qword_100783258, &unk_10078D430, &qword_100631760, &protocol conformance descriptor for TTRICollectionViewCollapsedStatesPresenterCapability<A>);
    a3(a1, v8, v9);
  }

  return result;
}

char *sub_10055CD94(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_5;
  }

  v10 = result;
  v11 = *&result[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (v11)
  {
    v12 = v11;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v8, v4, v5);
      v13 = TTRAccountsListsViewModel.Item.isCollapsible.getter();

      (*(v6 + 8))(v8, v5);
      return (v13 & 1);
    }

    sub_1000079B4(v4, &unk_100771B40, &unk_10062FB70);
LABEL_5:
    v13 = 0;
    return (v13 & 1);
  }

  __break(1u);
  return result;
}

char *sub_10055CF88(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v4 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *&result[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
    if (v13)
    {
      v14 = v13;
      TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_1000079B4(v6, &unk_100771B40, &unk_10062FB70);
        return 0;
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        v15 = a3(v10);
        (*(v8 + 8))(v10, v7);

        return v15;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10055D190(double a1)
{
  UICollectionLayoutListConfiguration._cornerRadius.setter();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  return UICollectionLayoutListConfiguration.showsSeparators.setter();
}

void sub_10055D1DC(char a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v103 = *(v3 - 8);
  v104 = v3;
  __chkstk_darwin(v3);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v95 - v7;
  v9 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v9 - 8);
  v100 = &v95 - v10;
  v11 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v101 = *(v11 - 8);
  v102 = v11;
  __chkstk_darwin(v11);
  v99 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v106 = *(v13 - 8);
  v107 = v13;
  __chkstk_darwin(v13);
  v105 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_100776648, &qword_100636AE8);
  __chkstk_darwin(v15 - 8);
  v17 = &v95 - v16;
  v18 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v18 - 8);
  v110 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = (&v95 - v21);
  __chkstk_darwin(v23);
  v25 = &v95 - v24;
  __chkstk_darwin(v26);
  v108 = (&v95 - v27);
  __chkstk_darwin(v28);
  v30 = (&v95 - v29);
  v31 = type metadata accessor for TTRIAccountsListsSelection(0);
  v111 = *(v31 - 8);
  v112 = v31;
  __chkstk_darwin(v31);
  v109 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v34 = __chkstk_darwin(v33).n128_u64[0];
  v36 = &v95 - v35;
  if ([v1 isEditing])
  {
    return;
  }

  v37 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
  v38 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
  if (!v38)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if ([v38 isActive])
  {
    return;
  }

  v39 = *&v1[v37];
  if (!v39)
  {
    goto LABEL_61;
  }

  if ([v39 isBeingPresented])
  {
    return;
  }

  v40 = 8;
  if ((a1 & 1) == 0)
  {
    v40 = 0;
  }

  v97 = v40;
  v98 = v1;
  v95 = *&v1[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter];
  sub_100443D34(v30);
  v96 = *(v111 + 48);
  if (v96(v30, 1, v112) == 1)
  {
    sub_1000079B4(v30, &unk_10076B7C0, &unk_10062FBA0);
  }

  else
  {
    sub_10056B878(v30, v36, type metadata accessor for TTRIAccountsListsSelection);
    if (qword_100767460 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100003E30(v41, qword_10078D290);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Accounts list view set selection to match external selection", v44, 2u);
    }

    sub_10055DF60(v36, v97 | 0x20, 0);
    sub_10056B948(v36, type metadata accessor for TTRIAccountsListsSelection);
  }

  v45 = v98;
  v46 = *&v98[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController];
  if (!v46)
  {
    goto LABEL_62;
  }

  v47 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
  swift_beginAccess();
  sub_10000794C(v46 + v47, v17, &qword_100776648, &qword_100636AE8);
  v48 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
  if ((*(*(v48 - 8) + 48))(v17, 1, v48) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = v103;
      v56 = *(v103 + 32);
      v57 = v17;
      v58 = v104;
      v56(v8, v57, v104);
      v59 = *&v45[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
      if (v59)
      {
        v60 = v59;
        dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

        if (v113)
        {
        }

        else
        {
          type metadata accessor for TTRAccountsListsViewModel();
          swift_allocObject();
          TTRAccountsListsViewModel.init()();
        }

        TTRAccountsListsViewModel.validateHashtagSelection(_:allowsLenientFallback:)();

        sub_100014F04(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier, &protocol conformance descriptor for REMHashtagLabelSpecifier);
        v74 = dispatch thunk of static Equatable.== infix(_:_:)();
        v75 = *(v55 + 8);
        v75(v8, v58);
        if (v74)
        {
          v75(v5, v58);
          v76 = 1;
          v67 = v108;
          v71 = v110;
          v70 = v112;
        }

        else
        {
          v56(v25, v5, v58);
          v70 = v112;
          swift_storeEnumTagMultiPayload();
          v76 = 0;
          v67 = v108;
          v71 = v110;
        }

        v72 = v96;
        (*(v111 + 56))(v25, v76, 1, v70);
        v73 = v25;
        goto LABEL_38;
      }

      goto LABEL_65;
    }

    v62 = v105;
    v61 = v106;
    v63 = v107;
    (*(v106 + 32))(v105, v17, v107);
    v64 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource;
    v65 = *&v45[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
    if (!v65)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v66 = v65;
    dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

    v67 = v108;
    if (v113)
    {
    }

    else
    {
      type metadata accessor for TTRAccountsListsViewModel();
      swift_allocObject();
      TTRAccountsListsViewModel.init()();
    }

    v77 = TTRAccountsListsViewModel.validatePinnedListSelection(_:)();

    if (v77)
    {
      (*(v61 + 8))(v62, v63);
      v70 = v112;
      (*(v111 + 56))(v67, 1, 1, v112);
    }

    else
    {
      v78 = *&v98[v64];
      if (!v78)
      {
LABEL_67:
        __break(1u);
        return;
      }

      v79 = v78;
      dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

      v80 = v102;
      v81 = v100;
      if (v113)
      {
      }

      else
      {
        type metadata accessor for TTRAccountsListsViewModel();
        swift_allocObject();
        TTRAccountsListsViewModel.init()();
      }

      TTRAccountsListsViewModel.alternativeItemSelection(for:)();

      v82 = v101;
      if ((*(v101 + 48))(v81, 1, v80) == 1)
      {
        sub_1000079B4(v81, &unk_100771B40, &unk_10062FB70);
        sub_100016120(v67);
        (*(v61 + 8))(v62, v63);
        v71 = v110;
        v70 = v112;
LABEL_50:
        v72 = v96;
        goto LABEL_51;
      }

      v84 = v82 + 32;
      v83 = *(v82 + 32);
      v85 = v99;
      v83(v99, v81, v80);
      sub_100058000(&unk_10076BAA0, &unk_10062FD90);
      v86 = (*(v84 + 48) + 32) & ~*(v84 + 48);
      v87 = swift_allocObject();
      v88 = v80;
      v89 = v87;
      *(v87 + 16) = xmmword_10062D400;
      v83((v87 + v86), v85, v88);
      (*(v61 + 8))(v62, v63);
      *v67 = v89;
      v70 = v112;
      swift_storeEnumTagMultiPayload();
      (*(v111 + 56))(v67, 0, 1, v70);
    }

    v71 = v110;
    goto LABEL_50;
  }

  v49 = *&v45[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (!v49)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v50 = v49;
  v51 = [v45 collectionView];
  if (!v51)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v52 = v51;
  v53 = [v51 indexPathsForSelectedItems];

  if (v53)
  {
    type metadata accessor for IndexPath();
    v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v54 = _swiftEmptyArrayStorage;
  }

  v113 = v54;
  sub_100058000(&unk_10078A370, &unk_10063AB80);
  sub_10000E188(&unk_100771B00, &unk_10078A370, &unk_10063AB80, &protocol conformance descriptor for [A]);
  v68 = TTRICollectionViewTreeBackedDiffableDataSource.items<A>(for:)();

  v69 = *(v68 + 16);

  if (v69)
  {
    v70 = v112;
    (*(v111 + 56))(v22, 1, 1, v112);
    v67 = v108;
    v71 = v110;
  }

  else
  {
    sub_100016120(v22);
    v67 = v108;
    v71 = v110;
    v70 = v112;
  }

  v72 = v96;
  v73 = v22;
LABEL_38:
  sub_100016588(v73, v67, &unk_10076B7C0, &unk_10062FBA0);
LABEL_51:
  sub_10000794C(v67, v71, &unk_10076B7C0, &unk_10062FBA0);
  if (v72(v71, 1, v70) == 1)
  {
    sub_1000079B4(v67, &unk_10076B7C0, &unk_10062FBA0);
    v67 = v71;
  }

  else
  {
    sub_10056B878(v71, v109, type metadata accessor for TTRIAccountsListsSelection);
    if (qword_100767460 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_100003E30(v90, qword_10078D290);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "Accounts list view adjust selection", v93, 2u);
    }

    v94 = v109;
    sub_10055DF60(v109, v97, 0);
    sub_10056B948(v94, type metadata accessor for TTRIAccountsListsSelection);
  }

  sub_1000079B4(v67, &unk_10076B7C0, &unk_10062FBA0);
}

void sub_10055DF60(uint64_t a1, uint64_t a2, int a3)
{
  v318 = a3;
  v355 = a2;
  v306 = sub_100058000(&qword_10076B7B8, &qword_10062FB98);
  __chkstk_darwin(v306);
  v315 = &v296 - v4;
  v344 = type metadata accessor for REMHashtagLabelSpecifier();
  v343 = *(v344 - 8);
  __chkstk_darwin(v344);
  v348 = &v296 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v311 = *(v312 - 8);
  __chkstk_darwin(v312);
  v310 = &v296 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v342 = *(v346 - 8);
  __chkstk_darwin(v346);
  v319 = &v296 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v345 = &v296 - v9;
  v10 = sub_100058000(&unk_10078D440, &unk_10062FBB0);
  __chkstk_darwin(v10 - 8);
  v299 = &v296 - v11;
  v301 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v300 = *(v301 - 8);
  __chkstk_darwin(v301);
  v297 = &v296 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&unk_10076B7F0, &qword_10063F330);
  __chkstk_darwin(v13 - 8);
  v304 = &v296 - v14;
  v305 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v303 = *(v305 - 8);
  __chkstk_darwin(v305);
  v298 = &v296 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&unk_10078D450, &qword_10062FBC0);
  __chkstk_darwin(v16 - 8);
  v308 = &v296 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v330 = &v296 - v19;
  v337 = type metadata accessor for TTRAccountsListsViewModel.List();
  v326 = *(v337 - 8);
  __chkstk_darwin(v337);
  v309 = &v296 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v302 = &v296 - v22;
  __chkstk_darwin(v23);
  v307 = &v296 - v24;
  v25 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v25 - 8);
  v314 = &v296 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v332 = &v296 - v28;
  __chkstk_darwin(v29);
  v31 = &v296 - v30;
  __chkstk_darwin(v32);
  v350 = &v296 - v33;
  __chkstk_darwin(v34);
  v354 = (&v296 - v35);
  v351 = type metadata accessor for IndexPath();
  v347 = *(v351 - 8);
  __chkstk_darwin(v351);
  v329 = &v296 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v340 = &v296 - v38;
  __chkstk_darwin(v39);
  v313 = &v296 - v40;
  v336 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v335 = *(v336 - 8);
  __chkstk_darwin(v336);
  v334 = &v296 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v352 = *(v42 - 8);
  v353 = v42;
  __chkstk_darwin(v42);
  v321 = &v296 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v320 = &v296 - v45;
  __chkstk_darwin(v46);
  v296 = &v296 - v47;
  __chkstk_darwin(v48);
  v316 = &v296 - v49;
  __chkstk_darwin(v50);
  v317 = &v296 - v51;
  __chkstk_darwin(v52);
  v324 = &v296 - v53;
  v54 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v54 - 8);
  v327 = &v296 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v328 = &v296 - v57;
  __chkstk_darwin(v58);
  v339 = &v296 - v59;
  __chkstk_darwin(v60);
  v338 = &v296 - v61;
  __chkstk_darwin(v62);
  v323 = &v296 - v63;
  __chkstk_darwin(v64);
  v322 = &v296 - v65;
  __chkstk_darwin(v66);
  v333 = &v296 - v67;
  v68 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v68 - 8);
  v70 = &v296 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v341 = &v296 - v72;
  __chkstk_darwin(v73);
  v75 = &v296 - v74;
  __chkstk_darwin(v76);
  v349 = &v296 - v77;
  __chkstk_darwin(v78);
  v80 = &v296 - v79;
  __chkstk_darwin(v81);
  v331 = &v296 - v82;
  v83 = sub_100058000(&qword_100776648, &qword_100636AE8);
  __chkstk_darwin(v83 - 8);
  v85 = &v296 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v86);
  v88 = &v296 - v87;
  __chkstk_darwin(v89);
  v91 = &v296 - v90;
  v92 = type metadata accessor for TTRIAccountsListsSelection(0);
  v356 = *(v92 - 8);
  __chkstk_darwin(v92);
  v94 = (&v296 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  v325 = a1;
  sub_10056B8E0(a1, v94, type metadata accessor for TTRIAccountsListsSelection);
  v357 = v92;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v116 = v342;
      v118 = v345;
      v117 = v346;
      (*(v342 + 32))(v345, v94, v346);
      v119 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource;
      v120 = v358;
      v121 = *&v358[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
      if (v121)
      {
        v122 = v121;
        dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

        if (v359)
        {
        }

        else
        {
          type metadata accessor for TTRAccountsListsViewModel();
          swift_allocObject();
          TTRAccountsListsViewModel.init()();
        }

        TTRAccountsListsViewModel.pinnedListsItem(containingListFor:)();

        v350 = *(v116 + 16);
        (v350)(v88, v118, v117);
        v169 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v169 - 8) + 56))(v88, 0, 1, v169);
        v170 = *&v120[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController];
        if (v170)
        {
          sub_10000794C(v88, v91, &qword_100776648, &qword_100636AE8);
          v171 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
          swift_beginAccess();

          sub_100019180(v91, v170 + v171, &qword_100776648, &qword_100636AE8);
          swift_endAccess();
          sub_1000191E8();

          sub_1000079B4(v91, &qword_100776648, &qword_100636AE8);
          v172 = [v120 collectionView];
          if (v172)
          {
            v173 = v172;
            [v172 selectItemAtIndexPath:0 animated:1 scrollPosition:0];

            sub_10000794C(v349, v75, &unk_100771B40, &unk_10062FB70);
            v175 = v352;
            v174 = v353;
            v176 = (*(v352 + 48))(v75, 1, v353);
            v177 = v340;
            v178 = v339;
            if (v176 == 1)
            {
              v179 = v347;
              v180 = v338;
              v181 = v351;
              (*(v347 + 56))(v338, 1, 1, v351);
              v182 = v355;
              v183 = v337;
            }

            else
            {
              v184 = v320;
              (*(v175 + 32))(v320, v75, v174);
              v185 = *&v120[v119];
              if (!v185)
              {
LABEL_150:
                __break(1u);
                goto LABEL_151;
              }

              v186 = v174;
              v187 = v185;
              v188 = v334;
              TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
              v180 = v338;
              dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

              (*(v335 + 8))(v188, v336);
              (*(v175 + 8))(v184, v186);
              v182 = v355;
              v183 = v337;
              v179 = v347;
              v181 = v351;
              v177 = v340;
              v178 = v339;
            }

            sub_10000794C(v180, v178, &unk_100771B10, qword_10062E540);
            if ((*(v179 + 48))(v178, 1, v181) == 1)
            {
              sub_1000079B4(v180, &unk_100771B10, qword_10062E540);
              sub_1000079B4(v88, &qword_100776648, &qword_100636AE8);
              v189 = v178;
              v190 = &unk_100771B10;
              v191 = qword_10062E540;
            }

            else
            {
              (*(v179 + 32))(v177, v178, v181);
              if ((v182 & 2) != 0 || (v182 & 8) != 0)
              {
                (*(v179 + 8))(v177, v181);
              }

              else
              {
                v192 = [v120 collectionView];
                if (!v192)
                {
LABEL_158:
                  __break(1u);
                  goto LABEL_159;
                }

                v193 = v192;
                v194 = v177;
                isa = IndexPath._bridgeToObjectiveC()().super.isa;
                [v193 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:0];

                (*(v179 + 8))(v194, v351);
              }

              sub_1000079B4(v338, &unk_100771B10, qword_10062E540);
              v190 = &qword_100776648;
              v191 = &qword_100636AE8;
              v189 = v88;
            }

            sub_1000079B4(v189, v190, v191);
            v199 = v354;
            (*(v356 + 56))(v354, 1, 1, v357);
            v200 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
            swift_beginAccess();
            sub_10056694C(v199, &v120[v200]);
            swift_endAccess();
            v201 = *&v120[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
            v202 = v345;
            if (v201)
            {
              [v201 setActive:0];
              v203 = v346;
              if ((v182 & 0x20) != 0)
              {
                sub_1000079B4(v349, &unk_100771B40, &unk_10062FB70);
                (*(v342 + 8))(v202, v203);
                return;
              }

              v204 = v319;
              (v350)(v319, v202, v346);
              v205 = v342;
              v206 = (*(v342 + 88))(v204, v203);
              if (v206 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
              {
                (*(v205 + 96))(v204, v203);
                v207 = v311;
                v208 = v310;
                v209 = v312;
                (*(v311 + 32))(v310, v204, v312);
                sub_100425274(v208, v318 & 1);
                (*(v207 + 8))(v208, v209);
                sub_1000079B4(v349, &unk_100771B40, &unk_10062FB70);
                (*(v205 + 8))(v202, v203);
                return;
              }

              if (v206 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
              {
                (*(v205 + 96))(v204, v203);
                v227 = v309;
                (*(v326 + 32))(v309, v204, v183);
                if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
                {
                  sub_100424E14(v227);
                }

                else
                {
                  v281 = TTRAccountsListsViewModel.List.sharingStatus.getter();
                  if (v281 < 3 || v281 == 4)
                  {
                    sub_1004249C8(v227, v318 & 1);
                  }

                  else
                  {
                    if (v281 != 3)
                    {
                      goto LABEL_164;
                    }

                    sub_100424288(v227);
                  }
                }

                (*(v326 + 8))(v227, v183);
                sub_1000079B4(v349, &unk_100771B40, &unk_10062FB70);
                (*(v205 + 8))(v202, v346);
                return;
              }

LABEL_160:
              if (qword_100767460 != -1)
              {
                swift_once();
              }

              v290 = type metadata accessor for Logger();
              sub_100003E30(v290, qword_10078D290);
              v291 = sub_100008E04(_swiftEmptyArrayStorage);
              v292 = sub_100008E04(_swiftEmptyArrayStorage);
              v293 = "Unknown pinned list selection";
              v294 = 29;
              goto LABEL_163;
            }

            goto LABEL_144;
          }

          goto LABEL_142;
        }

        goto LABEL_139;
      }

      goto LABEL_137;
    }

    v96 = *&v358[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController];
    if (v96)
    {
      v97 = *v94;
      v98 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
      (*(*(v98 - 8) + 56))(v91, 1, 1, v98);
      v99 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
      swift_beginAccess();

      sub_100019180(v91, v96 + v99, &qword_100776648, &qword_100636AE8);
      swift_endAccess();
      sub_1000191E8();

      sub_1000079B4(v91, &qword_100776648, &qword_100636AE8);
      v100 = v355;
      v101 = v357;
      if ((v355 & 1) == 0)
      {
        if (*(v97 + 16))
        {
          v102 = v352;
          v103 = v353;
          v104 = v331;
          (*(v352 + 16))(v331, v97 + ((*(v352 + 80) + 32) & ~*(v352 + 80)), v353);
          v105 = 0;
        }

        else
        {
          v105 = 1;
          v102 = v352;
          v103 = v353;
          v104 = v331;
        }

        v228 = v324;
        (*(v102 + 56))(v104, v105, 1, v103);
        sub_10000794C(v104, v80, &unk_100771B40, &unk_10062FB70);
        if ((*(v102 + 48))(v80, 1, v103) == 1)
        {
          v229 = v347;
          v230 = v333;
          (*(v347 + 56))(v333, 1, 1, v351);
          v231 = v358;
        }

        else
        {
          (*(v102 + 32))(v228, v80, v103);
          v231 = v358;
          v232 = *&v358[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
          if (!v232)
          {
LABEL_153:
            __break(1u);
            goto LABEL_154;
          }

          v233 = v228;
          v234 = v232;
          v235 = v334;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          v236 = v333;
          dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
          v230 = v236;

          (*(v335 + 8))(v235, v336);
          (*(v102 + 8))(v233, v103);
          v229 = v347;
          v101 = v357;
        }

        v237 = [v231 collectionView];
        if (!v237)
        {
          goto LABEL_147;
        }

        v238 = v237;
        v239 = v230;
        v240 = v322;
        sub_10000794C(v239, v322, &unk_100771B10, qword_10062E540);
        v241 = *(v229 + 48);
        v242 = v351;
        if (v241(v240, 1, v351) == 1)
        {
          v243 = 0;
        }

        else
        {
          v244 = v240;
          v243 = IndexPath._bridgeToObjectiveC()().super.isa;
          (*(v229 + 8))(v244, v242);
        }

        [v238 selectItemAtIndexPath:v243 animated:1 scrollPosition:0];

        v245 = v333;
        v246 = v323;
        sub_10000794C(v333, v323, &unk_100771B10, qword_10062E540);
        if (v241(v246, 1, v242) == 1)
        {
          sub_1000079B4(v245, &unk_100771B10, qword_10062E540);
          sub_1000079B4(v331, &unk_100771B40, &unk_10062FB70);
          v247 = v246;
          v248 = &unk_100771B10;
          v249 = qword_10062E540;
        }

        else
        {
          v250 = v246;
          v251 = v313;
          (*(v229 + 32))(v313, v250, v242);
          if ((v100 & 8) != 0)
          {
            (*(v229 + 8))(v251, v242);
            v255 = v245;
          }

          else
          {
            v252 = [v358 collectionView];
            if (!v252)
            {
LABEL_156:
              __break(1u);
              goto LABEL_157;
            }

            v253 = v252;
            v254 = IndexPath._bridgeToObjectiveC()().super.isa;
            [v253 scrollToItemAtIndexPath:v254 atScrollPosition:0 animated:0];

            (*(v229 + 8))(v251, v351);
            v255 = v333;
          }

          sub_1000079B4(v255, &unk_100771B10, qword_10062E540);
          v248 = &unk_100771B40;
          v249 = &unk_10062FB70;
          v247 = v331;
        }

        sub_1000079B4(v247, v248, v249);
      }

      v256 = v354;
      (*(v356 + 56))(v354, 1, 1, v101);
      v257 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
      v258 = v358;
      swift_beginAccess();
      sub_10056694C(v256, &v258[v257]);
      swift_endAccess();
      v259 = *&v258[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
      if (v259)
      {
        [v259 setActive:0];
        v261 = v352;
        v260 = v353;
        v262 = v330;
        if ((v100 & 0x20) != 0 || !*(v97 + 16))
        {

          return;
        }

        v263 = v316;
        (*(v352 + 16))(v316, v97 + ((*(v352 + 80) + 32) & ~*(v352 + 80)), v353);

        v264 = v317;
        (*(v261 + 32))(v317, v263, v260);
        TTRAccountsListsViewModel.Item.list.getter();
        v265 = v326;
        v266 = *(v326 + 48);
        v267 = v337;
        if (v266(v262, 1, v337) == 1)
        {
          sub_1000079B4(v262, &unk_10078D450, &qword_10062FBC0);
          v268 = v308;
          TTRAccountsListsViewModel.Item.customSmartList.getter();
          if (v266(v268, 1, v267) == 1)
          {
            sub_1000079B4(v268, &unk_10078D450, &qword_10062FBC0);
            v269 = v304;
            TTRAccountsListsViewModel.Item.group.getter();
            v270 = v303;
            v271 = v305;
            if ((*(v303 + 48))(v269, 1, v305) == 1)
            {
              sub_1000079B4(v269, &unk_10076B7F0, &qword_10063F330);
              v272 = v299;
              TTRAccountsListsViewModel.Item.recentlyDeletedList.getter();
              v273 = v300;
              v274 = v301;
              if ((*(v300 + 48))(v272, 1, v301) == 1)
              {
                sub_1000079B4(v272, &unk_10078D440, &unk_10062FBB0);
                v275 = v296;
                v276 = v353;
                (*(v261 + 104))(v296, enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:), v353);
                v277 = static TTRAccountsListsViewModel.Item.== infix(_:_:)();
                v278 = *(v261 + 8);
                v278(v275, v276);
                if (v277)
                {
                  sub_100430AB4();
                }

                v278(v264, v276);
                return;
              }

              v288 = v297;
              (*(v273 + 32))(v297, v272, v274);
              v289 = TTRAccountsListsViewModel.RecentlyDeletedList.accountID.getter();
              sub_100425C0C(v289);

              (*(v273 + 8))(v288, v274);
            }

            else
            {
              v287 = v298;
              (*(v270 + 32))(v298, v269, v271);
              sub_100425510(v287);
              (*(v270 + 8))(v287, v271);
            }
          }

          else
          {
            v286 = v302;
            (*(v265 + 32))(v302, v268, v267);
            sub_100424E14(v286);
            (*(v265 + 8))(v286, v267);
          }

LABEL_127:
          (*(v261 + 8))(v264, v353);
          return;
        }

        v279 = v307;
        (*(v265 + 32))(v307, v262, v267);
        v280 = TTRAccountsListsViewModel.List.sharingStatus.getter();
        if (v280 < 3 || v280 == 4)
        {
          sub_1004249C8(v279, v318 & 1);
LABEL_110:
          (*(v265 + 8))(v279, v267);
          goto LABEL_127;
        }

        if (v280 == 3)
        {
          sub_100424288(v279);
          goto LABEL_110;
        }

        while (1)
        {
LABEL_164:
          if (qword_1007672D8 != -1)
          {
            swift_once();
          }

          v295 = type metadata accessor for Logger();
          sub_100003E30(v295, qword_100782E90);
          v291 = sub_100008E04(_swiftEmptyArrayStorage);
          v292 = sub_100008E04(_swiftEmptyArrayStorage);
          v293 = "unknown sharing status";
          v294 = 22;
LABEL_163:
          sub_1003F9818(v293, v294, 2uLL, v291, v292);
          __break(1u);
        }
      }

      goto LABEL_140;
    }

    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v123 = swift_projectBox();
    sub_10000794C(v123, v350, &unk_10076B7C0, &unk_10062FBA0);
    v124 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
    v125 = v358;
    swift_beginAccess();
    sub_10000794C(&v125[v124], v31, &unk_10076B7C0, &unk_10062FBA0);
    v126 = *(v356 + 48);
    v127 = v126(v31, 1, v357);
    sub_1000079B4(v31, &unk_10076B7C0, &unk_10062FBA0);
    if (v127 == 1)
    {
      v128 = *&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController];
      if (!v128)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v129 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
      (*(*(v129 - 8) + 56))(v91, 1, 1, v129);
      v130 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
      swift_beginAccess();

      sub_100019180(v91, v128 + v130, &qword_100776648, &qword_100636AE8);
      swift_endAccess();
      sub_1000191E8();

      sub_1000079B4(v91, &qword_100776648, &qword_100636AE8);
      v131 = [v125 collectionView];
      if (!v131)
      {
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      v132 = v131;
      [v131 selectItemAtIndexPath:0 animated:1 scrollPosition:0];
    }

    v133 = v332;
    sub_10000794C(v350, v332, &unk_10076B7C0, &unk_10062FBA0);
    v134 = v357;
    if (v126(v133, 1, v357) == 1)
    {
      sub_1000079B4(v133, &unk_10076B7C0, &unk_10062FBA0);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v135 = swift_projectBox();
        v136 = v315;
        sub_10000794C(v135, v315, &qword_10076B7B8, &qword_10062FB98);
        sub_1000079B4(v136, &unk_10076B7C0, &unk_10062FBA0);

        v137 = v314;
        sub_10000794C(&v125[v124], v314, &unk_10076B7C0, &unk_10062FBA0);
        v138 = v126(v137, 1, v134);
        sub_1000079B4(v137, &unk_10076B7C0, &unk_10062FBA0);
        v139 = v355;
        if (v138 == 1)
        {
          v140 = swift_allocBox();
          v141 = *(v356 + 56);
          v141(v142, 1, 1, v134);
          v143 = v354;
          *v354 = v140;
          swift_storeEnumTagMultiPayload();
          v141(v143, 0, 1, v134);
          swift_beginAccess();
          sub_10056694C(v143, &v125[v124]);
          swift_endAccess();
        }

        if ((v139 & 0x20) != 0)
        {
          goto LABEL_125;
        }

        goto LABEL_66;
      }

      sub_10056B948(v133, type metadata accessor for TTRIAccountsListsSelection);
    }

    v210 = v354;
    sub_10056B8E0(v325, v354, type metadata accessor for TTRIAccountsListsSelection);
    (*(v356 + 56))(v210, 0, 1, v134);
    swift_beginAccess();
    sub_10056694C(v210, &v125[v124]);
    swift_endAccess();
    v139 = v355;
    if ((v355 & 0x20) != 0)
    {
      goto LABEL_125;
    }

LABEL_66:
    v211 = v139 & 4;
    v212 = *(*&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
    if (v212 == 2)
    {
      if (!sub_100444328(*&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter]))
      {
LABEL_68:
        v213 = *&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
        if (!v213)
        {
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        v214 = [v213 searchBar];
        v215 = [v214 text];

        if (v215)
        {
          v216 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v218 = v217;
        }

        else
        {
          v216 = 0;
          v218 = 0xE000000000000000;
        }

        sub_100425958(v216, v218, v211 != 0);

        goto LABEL_119;
      }
    }

    else if ((v212 & 1) == 0)
    {
      goto LABEL_68;
    }

    v219 = *&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController];
    if (!v219)
    {
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    v220 = *&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
    if (!v220)
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    v221 = v219;
    v222 = [v220 searchBar];
    v223 = [v222 text];

    if (v223)
    {
      v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v226 = v225;
    }

    else
    {
      v224 = 0;
      v226 = 0xE000000000000000;
    }

    sub_100505C14(v224, v226, v211 >> 2);

LABEL_119:
    v282 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
    v283 = *&v125[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
    if (!v283)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    if (([v283 isActive] & 1) == 0)
    {
      v284 = *&v125[v282];
      if (!v284)
      {
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      if (([v284 isBeingPresented] & 1) == 0)
      {
        v285 = *&v125[v282];
        if (!v285)
        {
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        [v285 setActive:1];
      }
    }

LABEL_125:
    sub_1000079B4(v350, &unk_10076B7C0, &unk_10062FBA0);

    return;
  }

  v106 = v343;
  v107 = v348;
  v108 = v344;
  (*(v343 + 32))(v348, v94, v344);
  (*(v106 + 16))(v85, v107, v108);
  v109 = type metadata accessor for TTRIAccountsListsInnerSelectionController.Selection(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v109 - 8) + 56))(v85, 0, 1, v109);
  v110 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource;
  v111 = v358;
  v112 = *&v358[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (!v112)
  {
    goto LABEL_136;
  }

  v113 = v112;
  dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

  v114 = v352;
  v115 = v341;
  if (v359)
  {
  }

  else
  {
    type metadata accessor for TTRAccountsListsViewModel();
    swift_allocObject();
    TTRAccountsListsViewModel.init()();
  }

  v350 = v110;
  TTRAccountsListsViewModel.hashtagsItem.getter();

  v144 = *(v111 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_innerSelectionController);
  if (!v144)
  {
    goto LABEL_138;
  }

  sub_10000794C(v85, v91, &qword_100776648, &qword_100636AE8);
  v145 = OBJC_IVAR____TtC9Reminders41TTRIAccountsListsInnerSelectionController_internalSelection;
  swift_beginAccess();

  sub_100019180(v91, v144 + v145, &qword_100776648, &qword_100636AE8);
  swift_endAccess();
  sub_1000191E8();

  sub_1000079B4(v91, &qword_100776648, &qword_100636AE8);
  v146 = [v111 collectionView];
  if (!v146)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v147 = v146;
  [v146 selectItemAtIndexPath:0 animated:1 scrollPosition:0];

  sub_10000794C(v115, v70, &unk_100771B40, &unk_10062FB70);
  v148 = v353;
  v149 = (*(v114 + 48))(v70, 1, v353);
  v150 = v355;
  v151 = v357;
  if (v149 == 1)
  {
    v152 = v347;
    v153 = v328;
    v154 = v351;
    (*(v347 + 56))(v328, 1, 1, v351);
  }

  else
  {
    v155 = v357;
    v156 = v321;
    (*(v114 + 32))(v321, v70, v148);
    v157 = *&v350[v111];
    if (!v157)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v158 = v157;
    v159 = v334;
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    v153 = v328;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    (*(v335 + 8))(v159, v336);
    (*(v114 + 8))(v156, v148);
    v152 = v347;
    v154 = v351;
    v151 = v155;
    v150 = v355;
  }

  v160 = v327;
  sub_10000794C(v153, v327, &unk_100771B10, qword_10062E540);
  v161 = (*(v152 + 48))(v160, 1, v154);
  v162 = v329;
  if (v161 == 1)
  {
    sub_1000079B4(v153, &unk_100771B10, qword_10062E540);
    sub_1000079B4(v341, &unk_100771B40, &unk_10062FB70);
    sub_1000079B4(v85, &qword_100776648, &qword_100636AE8);
    v163 = v160;
    v164 = &unk_100771B10;
    v165 = qword_10062E540;
  }

  else
  {
    (*(v152 + 32))(v329, v160, v154);
    if ((v150 & 0x10) != 0 || (v150 & 8) != 0)
    {
      (*(v152 + 8))(v162, v154);
    }

    else
    {
      v166 = [v111 collectionView];
      if (!v166)
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v167 = v166;
      v168 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v167 scrollToItemAtIndexPath:v168 atScrollPosition:0 animated:0];

      (*(v152 + 8))(v162, v351);
    }

    sub_1000079B4(v153, &unk_100771B10, qword_10062E540);
    sub_1000079B4(v341, &unk_100771B40, &unk_10062FB70);
    v164 = &qword_100776648;
    v165 = &qword_100636AE8;
    v163 = v85;
  }

  sub_1000079B4(v163, v164, v165);
  v196 = v354;
  (*(v356 + 56))(v354, 1, 1, v151);
  v197 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
  swift_beginAccess();
  sub_10056694C(v196, v111 + v197);
  swift_endAccess();
  v198 = *(v111 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController);
  if (!v198)
  {
    goto LABEL_143;
  }

  [v198 setActive:0];
  if ((v150 & 0x20) == 0)
  {
    sub_100426264(v348);
  }

  (*(v343 + 8))(v348, v344);
}

void sub_1005609C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100782E90);
  v3 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Accounts Lists New Reminder", 27, 2, v3);

  sub_10000C36C((v1 + 112), *(v1 + 136));
  swift_getObjectType();
  v5 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
  v4 = sub_100014F04(&unk_10078D530, type metadata accessor for TTRIAccountsListsPresenter, &unk_10063EFE0);
  sub_1002A4ADC(v5, v1, v4);
}

void sub_100560C24()
{
  v1 = *&v0[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
  v4 = *&v0[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
  if (!v4)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v5 = v1;
  v6 = [v4 searchBar];
  v7 = [v6 text];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  sub_100505C14(v8, v10, 0);

  if (!*&v2[v3])
  {
    goto LABEL_12;
  }

  [v2 presentViewController:? animated:? completion:?];
}

void sub_100560E30(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t), void (*a6)(id, uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    v10 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v11 = a1;
  }

  v12 = sub_1000182E0(a4, a5);
  a6(v12, v13, v14, v15);

  sub_1000079B4(v16, &qword_10076AE40, &qword_10062EE50);
}

uint64_t sub_100560EF0()
{
  v0 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v9 - v1);
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10055A0F4(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1000079B4(v2, &unk_10076B7C0, &unk_10062FBA0);
  }

  sub_10056B878(v2, v6, type metadata accessor for TTRIAccountsListsSelection);
  sub_10042DDB8(v6);
  if (v8 != 2)
  {
    sub_10042E2B0(v6);
  }

  return sub_10056B948(v6, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_10056113C(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for TTRIAccountsListsSelection(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10055A0F4(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1000079B4(v5, &unk_10076B7C0, &unk_10062FBA0);
  }

  sub_10056B878(v5, v9, type metadata accessor for TTRIAccountsListsSelection);
  sub_100452E1C(v9);
  if (v11)
  {
    a2(v9);
  }

  return sub_10056B948(v9, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_1005612F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  sub_10056113C(v7, a4);

  return sub_1000079B4(v9, &qword_10076AE40, &qword_10062EE50);
}

void sub_100561380(uint64_t a1)
{
  v2 = sub_100058000(&unk_10078D520, &unk_1006468F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, &v17, &qword_10076AE40, &qword_10062EE50);
  if (*(&v18 + 1))
  {
    sub_100003540(0, &unk_10076BD00, UICommand_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v9 = v15;
    if ([v15 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      TTRListType.PredefinedSmartListType.init(rawValue:)();
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        (*(v6 + 32))(v8, v4, v5);
        sub_10043F208(v8);
        sub_10042B2D8((v13 & 1) == 0, v8);

        (*(v6 + 8))(v8, v5);
        return;
      }

      v10 = &unk_10078D520;
      v11 = &unk_1006468F0;
      v12 = v4;
      goto LABEL_12;
    }
  }

  v10 = &qword_10076AE40;
  v11 = &qword_10062EE50;
  v12 = &v17;
LABEL_12:
  sub_1000079B4(v12, v10, v11);
}

uint64_t sub_100561644(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_1000079B4(v9, &qword_10076AE40, &qword_10062EE50);
}

void sub_1005616EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v7 - 8);
  v9 = (v16 - v8);
  v10 = type metadata accessor for TTRIAccountsListsSelection(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v15 = a1;
  }

  sub_10055A0F4(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_1000079B4(v16, &qword_10076AE40, &qword_10062EE50);
    sub_1000079B4(v9, &unk_10076B7C0, &unk_10062FBA0);
  }

  else
  {
    sub_10056B878(v9, v13, type metadata accessor for TTRIAccountsListsSelection);
    a4(v13);
    sub_10056B948(v13, type metadata accessor for TTRIAccountsListsSelection);
    sub_1000079B4(v16, &qword_10076AE40, &qword_10062EE50);
  }
}

void sub_1005619B4(uint64_t a1)
{
  v2 = sub_100058000(&unk_10078D450, &qword_10062FBC0);
  __chkstk_darwin(v2 - 8);
  v45 = &v41 - v3;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v47);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v44 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  __chkstk_darwin(v11);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100058000(&unk_10078D510, &unk_1006468E0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v41 - v15);
  v17 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v48 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, &v53, &qword_10076AE40, &qword_10062EE50);
  if (*(&v54 + 1))
  {
    v42 = v4;
    sub_100003540(0, &unk_10076BAB0, UIKeyCommand_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v41 = v8;
    v20 = v51;
    if ([v51 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
    }

    v53 = v51;
    v54 = v52;
    if (*(&v52 + 1))
    {
      sub_100058000(&qword_100768358, &qword_10062FDA0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      sub_1005F6EE8(v50, v16);
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {

        v21 = &unk_10078D510;
        v22 = &unk_1006468E0;
        v23 = v16;
      }

      else
      {
        v24 = v48;
        sub_10056B878(v16, v48, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
        sub_10056B8E0(v24 + *(v17 + 20), v13, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v33 = v44;
          v34 = v41;
          (*(v44 + 32))(v10, v13, v41);
          (*(v33 + 16))(v7, v10, v34);
          v35 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
          v36 = type metadata accessor for TTRAccountsListsPinnedListSelection();
          (*(*(v36 - 8) + 104))(v7, v35, v36);
          swift_storeEnumTagMultiPayload();
          sub_10055DF60(v7, 0, 0);

          sub_10056B948(v7, type metadata accessor for TTRIAccountsListsSelection);
          (*(v33 + 8))(v10, v34);
          sub_10056B948(v24, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
          return;
        }

        v25 = *(v49 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
        if (!v25)
        {
          __break(1u);
          return;
        }

        v26 = v20;
        v27 = v7;
        v28 = *v13;
        v29 = v25;
        dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

        v30 = v42;
        v32 = v45;
        v31 = v46;
        if (v53)
        {
        }

        else
        {
          type metadata accessor for TTRAccountsListsViewModel();
          swift_allocObject();
          TTRAccountsListsViewModel.init()();
        }

        TTRAccountsListsViewModel.pinnedListInnerList(with:)();

        if ((*(v31 + 48))(v32, 1, v30) != 1)
        {
          v37 = v24;
          v38 = v43;
          (*(v31 + 32))(v43, v32, v30);
          (*(v31 + 16))(v27, v38, v30);
          v39 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
          v40 = type metadata accessor for TTRAccountsListsPinnedListSelection();
          (*(*(v40 - 8) + 104))(v27, v39, v40);
          swift_storeEnumTagMultiPayload();
          sub_10055DF60(v27, 0, 0);

          sub_10056B948(v27, type metadata accessor for TTRIAccountsListsSelection);
          (*(v31 + 8))(v38, v30);
          sub_10056B948(v37, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
          return;
        }

        sub_10056B948(v24, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);

        v21 = &unk_10078D450;
        v22 = &qword_10062FBC0;
        v23 = v32;
      }

      goto LABEL_12;
    }
  }

  v21 = &qword_10076AE40;
  v22 = &qword_10062EE50;
  v23 = &v53;
LABEL_12:
  sub_1000079B4(v23, v21, v22);
}

void sub_100562418(void *a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v4 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v14 = *&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (v14)
  {
    v15 = v14;
    TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

    v16 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v10, 1, v16) == 1)
    {
      sub_1000079B4(v10, &unk_100771B40, &unk_10062FB70);
      (*(v17 + 56))(v13, 1, 1, v16);
      sub_1000079B4(v13, &unk_100771B40, &unk_10062FB70);
      (*(v5 + 104))(v7, enum case for TTRICollectionViewCellSelectionOption.disallowed(_:), v4);
    }

    else
    {
      (*(v17 + 32))(v13, v10, v16);
      sub_100437844(v13, [v3 isEditing], v7);
      (*(v17 + 56))(v13, 0, 1, v16);
      sub_1000079B4(v13, &unk_100771B40, &unk_10062FB70);
    }

    v18 = TTRICollectionViewCellSelectionOption.shouldRevertItemHighlight.getter();
    (*(v5 + 8))(v7, v4);
    if (v18)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v21 _unhighlightItemAtIndexPath:isa animated:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100562854(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  sub_100567430(v11, a5);
  LOBYTE(a5) = v14;

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t sub_100562994(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

void sub_100562C24(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4)
{
  v97 = a4;
  v105 = a3;
  v109 = a1;
  v110 = a2;
  v4 = sub_100058000(&qword_10076BB30, &qword_10062FDC0);
  __chkstk_darwin(v4 - 8);
  v94 = &v92 - v5;
  v6 = sub_100058000(&qword_10076BD88, &unk_10062FF30);
  __chkstk_darwin(v6 - 8);
  v93 = &v92 - v7;
  v106 = sub_100058000(&qword_10078D488, &qword_100646870);
  v101 = *(v106 - 8);
  __chkstk_darwin(v106);
  v100 = &v92 - v8;
  v9 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v9 - 8);
  v92 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v92 - v12;
  __chkstk_darwin(v14);
  v96 = &v92 - v15;
  v16 = sub_100058000(&qword_10078D4D0, &qword_1006468C0);
  v103 = *(v16 - 8);
  v104 = v16;
  __chkstk_darwin(v16);
  v95 = (&v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v98 = &v92 - v19;
  v20 = sub_100058000(&unk_10078D4A8, &unk_100646890);
  __chkstk_darwin(v20 - 8);
  v22 = &v92 - v21;
  v23 = sub_100058000(&qword_1007721C0, &qword_100634538);
  __chkstk_darwin(v23);
  v25 = &v92 - v24;
  v26 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v27 = *(v26 - 8);
  v107 = v26;
  v108 = v27;
  __chkstk_darwin(v26);
  v99 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v102 = &v92 - v30;
  v31 = sub_100058000(&qword_10078D4B8, &qword_1006468A0);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v92 - v33;
  v35 = sub_100058000(&qword_10078D4C0, &qword_1006468A8);
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v39 = &v92 - v38;
  (*(v36 + 16))(&v92 - v38, v109, v35, v37);
  v40 = (*(v36 + 88))(v39, v35);
  if (v40 == enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    (*(v36 + 96))(v39, v35);
    (*(v32 + 32))(v34, v39, v31);
    v41 = v110;
    v42 = *&v110[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
    if (v42)
    {
      v43 = v42;
      TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)();

      v44 = sub_100058000(&qword_10078D4C8, &unk_1006468B0);
      if ((*(*(v44 - 8) + 48))(v22, 1, v44) == 1)
      {
        (*(v32 + 8))(v34, v31);
        v45 = &unk_10078D4A8;
        v46 = &unk_100646890;
        v47 = v22;
LABEL_9:
        sub_1000079B4(v47, v45, v46);
        return;
      }

      v109 = v31;
      v56 = *&v22[*(v44 + 48)];
      v57 = *(v23 + 48);
      v58 = v41;
      v59 = *(v108 + 32);
      v60 = v22;
      v61 = v107;
      v59(v25, v60, v107);
      *&v25[v57] = v56;
      v62 = v61;
      v106 = *&v25[*(v23 + 48)];
      v63 = v102;
      v64 = (v59)(v102, v25, v61);
      __chkstk_darwin(v64);
      *(&v92 - 2) = v58;
      sub_100058000(&qword_10078D4D8, &qword_1006468C8);
      v65 = v98;
      TTRICollectionViewDragItemSources.draggedItemsForValidation<A>(transformItemID:)();
      v67 = v103;
      v66 = v104;
      v68 = (*(v103 + 88))(v65, v104);
      if (v68 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.local<A><A1>(_:))
      {
        (*(v67 + 96))(v65, v66);
        v69 = v108;
        v70 = v96;
        (*(v108 + 16))(v96, v63, v61);
        (*(v69 + 56))(v70, 0, 1, v61);
        v71 = TTRAccountsListsPresenterCapability.paramsForMoving(_:into:atUnadjustedIndex:containerIsInEditMode:)();

        v72 = v63;
        if (v71)
        {
          TTRAccountsListsPresenterCapability.RemindersInsertionPlan.shouldDisallow.getter();
          v73 = TTRAccountsListsPresenterCapability.RemindersInsertionPlan.hasSubjectExceedingMaximumNumberOfPinnedLists.getter();

          sub_1000079B4(v70, &unk_100771B40, &unk_10062FB70);
          (*(v69 + 8))(v72, v62);
          (*(v32 + 8))(v34, v109);
          *v97 = v73 & 1;
        }

        else
        {
          sub_1000079B4(v70, &unk_100771B40, &unk_10062FB70);
          (*(v69 + 8))(v63, v62);
          (*(v32 + 8))(v34, v109);
          *v97 = 0;
        }

        return;
      }

      if (v68 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.external<A><A1>(_:))
      {
        (*(v108 + 8))(v102, v61);
        (*(v32 + 8))(v34, v109);
        (*(v67 + 8))(v65, v66);
        return;
      }

      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_30;
  }

  v48 = v110;
  if (v40 == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
  {
    (*(v36 + 96))(v39, v35);
    v50 = v100;
    v49 = v101;
    v51 = v106;
    (*(v101 + 32))(v100, v39, v106);
    v52 = *&v48[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
    if (!v52)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      if (qword_100767460 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_100003E30(v91, qword_10078D290);
      v75 = sub_100008E04(_swiftEmptyArrayStorage);
      v76 = sub_100008E04(_swiftEmptyArrayStorage);
      v77 = "Unknown dragged items";
      v78 = 21;
LABEL_34:
      sub_1003F9818(v77, v78, 2uLL, v75, v76);
      __break(1u);
      return;
    }

    v53 = v52;
    TTRICollectionViewTreeBackedDiffableDataSource.targetParent(for:)();

    v54 = v107;
    v55 = v108;
    if ((*(v108 + 48))(v13, 1, v107) == 1)
    {
      (*(v49 + 8))(v50, v51);
      v45 = &unk_100771B40;
      v46 = &unk_10062FB70;
      v47 = v13;
      goto LABEL_9;
    }

    v79 = (*(v55 + 32))(v99, v13, v54);
    __chkstk_darwin(v79);
    *(&v92 - 2) = v48;
    sub_100058000(&qword_10078D4D8, &qword_1006468C8);
    v80 = v95;
    TTRICollectionViewDragItemSources.draggedItemsForValidation<A>(transformItemID:)();
    v82 = v103;
    v81 = v104;
    v83 = (*(v103 + 88))(v80, v104);
    if (v83 != enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.local<A><A1>(_:))
    {
      if (v83 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.external<A><A1>(_:))
      {
        (*(v82 + 96))(v80, v81);
        v88 = v94;
        v89 = v99;
        sub_100439D90(*v80, v94);

        (*(v55 + 8))(v89, v54);
        (*(v49 + 8))(v50, v106);
        v90 = sub_100058000(&qword_10076BB38, &qword_10063F300);
        (*(*(v90 - 8) + 48))(v88, 1, v90);
        sub_1000079B4(v88, &qword_10076BB30, &qword_10062FDC0);
        return;
      }

      goto LABEL_31;
    }

    (*(v82 + 96))(v80, v81);
    v84 = v93;
    v85 = v99;
    TTRAccountsListsPresenterCapability.paramsForCreatingGroup(byDropping:into:)();
    v86 = type metadata accessor for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams();
    if ((*(*(v86 - 8) + 48))(v84, 1, v86) == 1)
    {
      sub_1000079B4(v84, &qword_10076BD88, &unk_10062FF30);
      v87 = v92;
      (*(v55 + 16))(v92, v85, v54);
      (*(v55 + 56))(v87, 0, 1, v54);
      TTRAccountsListsPresenterCapability.canMove(_:into:atUnadjustedIndex:containerIsInEditMode:)();

      sub_1000079B4(v87, &unk_100771B40, &unk_10062FB70);
      (*(v55 + 8))(v85, v54);
      (*(v49 + 8))(v50, v106);
    }

    else
    {

      (*(v55 + 8))(v85, v54);
      (*(v49 + 8))(v50, v106);
      sub_1000079B4(v84, &qword_10076BD88, &unk_10062FF30);
    }
  }

  else
  {
    if (v40 == enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
    {
      (*(v36 + 8))(v39, v35);
      return;
    }

    if (v40 != enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
    {
      if (qword_100767460 != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      sub_100003E30(v74, qword_10078D290);
      v75 = sub_100008E04(_swiftEmptyArrayStorage);
      v76 = sub_100008E04(_swiftEmptyArrayStorage);
      v77 = "Unknown drop destination";
      v78 = 24;
      goto LABEL_34;
    }
  }
}

void sub_100563AFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v2)
  {
    v3 = v2;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();
  }

  else
  {
    __break(1u);
  }
}

double sub_100563B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_100058000(&unk_10078D430, &qword_100631760);
  sub_10000E188(&qword_100783258, &unk_10078D430, &qword_100631760, &protocol conformance descriptor for TTRICollectionViewCollapsedStatesPresenterCapability<A>);
  sub_100058000(&unk_10076B8A0, &unk_100634090);
  sub_10000E188(&qword_10078D4F0, &unk_10076B8A0, &unk_100634090, &protocol conformance descriptor for Set<A>);
  dispatch thunk of TTRICollectionViewItemCollapsedStates.expand<A>(_:)();

  return result;
}

uint64_t sub_100563C84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&unk_10078D4E0, &qword_1006468D0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_100563D24(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for TTRIAccountsListsSelection(0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([v2 isViewLoaded])
  {
    if (a2)
    {
      v9 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v9 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        v10 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
        v11 = *&v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController];
        if (!v11)
        {
          __break(1u);
          goto LABEL_25;
        }

        if ([v11 isActive])
        {
          v12 = 1;
          if (static REMFeatureFlags.isSolariumEnabled.getter())
          {
LABEL_9:
            v13 = [objc_opt_self() currentDevice];
            v14 = [v13 userInterfaceIdiom];

            v15 = v14 == 1;
            goto LABEL_16;
          }
        }

        else
        {
          v17 = *&v2[v10];
          if (!v17)
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          v12 = [v17 isBeingPresented];
          if (static REMFeatureFlags.isSolariumEnabled.getter())
          {
            goto LABEL_9;
          }
        }

        v15 = 1;
LABEL_16:
        if (!(v15 | ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0) | v12 & 1))
        {
          v18 = *&v2[v10];
          if (!v18)
          {
LABEL_28:
            __break(1u);
            return;
          }

          [v2 presentViewController:v18 animated:1 completion:0];
        }

        v19 = *&v2[v10];
        if (v19)
        {
          v20 = [v19 searchBar];
          v21 = String._bridgeToObjectiveC()();
          [v20 setText:v21];

          v22 = *&v2[v10];
          if (v22)
          {
            v23 = [v22 searchBar];
            v24 = [v23 text];

            if (v24)
            {

              sub_100058000(&qword_10076B7B8, &qword_10062FB98);
              v25 = swift_allocBox();
              sub_10055A0F4(v26);
              *v8 = v25;
              swift_storeEnumTagMultiPayload();
              sub_10055DF60(v8, 4, 0);
              sub_10056B948(v8, type metadata accessor for TTRIAccountsListsSelection);
            }

            return;
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }
  }

  else
  {
    v16 = &v2[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_pendingSearchTerm];
    *v16 = a1;
    *(v16 + 1) = a2;
  }
}

uint64_t sub_100563FFC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.List.pinState.getter();
  v11 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v12 = type metadata accessor for TTRAccountsListsViewModel.List();
    (*(*(v12 - 8) + 16))(v6, a1, v12);
    v13 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
    v14 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v14 - 8) + 104))(v6, v13, v14);
  }

  else
  {
    sub_100058000(&unk_10076BAA0, &unk_10062FD90);
    v15 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10062D400;
    v19 = type metadata accessor for TTRAccountsListsViewModel.List();
    (*(*(v19 - 8) + 16))(v18 + v17, a1, v19);
    (*(v16 + 104))(v18 + v17, enum case for TTRAccountsListsViewModel.Item.list(_:), v15);
    *v6 = v18;
  }

  swift_storeEnumTagMultiPayload();
  sub_10055DF60(v6, 0, a2 & 1);
  return sub_10056B948(v6, type metadata accessor for TTRIAccountsListsSelection);
}

void sub_100564304(uint64_t a1)
{
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v2);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.List.pinState.getter();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == enum case for TTRAccountsListsViewModel.List.PinState.supported(_:))
  {
    (*(v6 + 96))(v8, v5);
    if (*v8)
    {
      v10 = type metadata accessor for TTRAccountsListsViewModel.List();
      (*(*(v10 - 8) + 16))(v4, a1, v10);
      v11 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
      v12 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v12 - 8) + 104))(v4, v11, v12);
LABEL_6:
      swift_storeEnumTagMultiPayload();
      sub_10055DF60(v4, 0, 0);
      sub_10056B948(v4, type metadata accessor for TTRIAccountsListsSelection);
      return;
    }

LABEL_5:
    sub_100058000(&unk_10076BAA0, &unk_10062FD90);
    v13 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10062D400;
    v17 = type metadata accessor for TTRAccountsListsViewModel.List();
    (*(*(v17 - 8) + 16))(v16 + v15, a1, v17);
    (*(v14 + 104))(v16 + v15, enum case for TTRAccountsListsViewModel.Item.customSmartList(_:), v13);
    *v4 = v16;
    goto LABEL_6;
  }

  if (v9 == enum case for TTRAccountsListsViewModel.List.PinState.notSupported(_:))
  {
    goto LABEL_5;
  }

  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003E30(v18, qword_10078D290);
  v19 = sub_100008E04(_swiftEmptyArrayStorage);
  v20 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown pin state", 17, 2uLL, v19, v20);
  __break(1u);
}

void sub_1005646B8(uint64_t a1)
{
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource);
  if (v9)
  {
    v10 = v9;
    dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.lastAppliedTreeBacking.getter();

    if (v14)
    {
    }

    else
    {
      type metadata accessor for TTRAccountsListsViewModel();
      swift_allocObject();
      TTRAccountsListsViewModel.init()();
    }

    TTRAccountsListsViewModel.hashtagsItem.getter();

    v11 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
    sub_1000079B4(v8, &unk_100771B40, &unk_10062FB70);
    if (v12 != 1)
    {
      v13 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v13 - 8) + 16))(v5, a1, v13);
      swift_storeEnumTagMultiPayload();
      sub_10055DF60(v5, 40, 0);
      sub_10056B948(v5, type metadata accessor for TTRIAccountsListsSelection);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1005648D4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = String._bridgeToObjectiveC()();
  v15 = sub_100564B58;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1001762CC;
  v14 = &unk_10072EA30;
  v5 = _Block_copy(&v11);

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:1 handler:v5];
  _Block_release(v5);

  v8 = String._bridgeToObjectiveC()();
  v15 = sub_100564BF8;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1001762CC;
  v14 = &unk_10072EA58;
  v9 = _Block_copy(&v11);

  v10 = [v6 actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v3 addAction:v10];
  [v3 addAction:v7];
  [v0 presentViewController:v3 animated:1 completion:0];
}

double sub_100564B58()
{
  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_10078D290);
  v1 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("User tapped OK at migration fail prompt.", 40, 2, v1);

  return result;
}

uint64_t sub_100564BF8()
{
  v0 = sub_100058000(&unk_100775660, &qword_10062F6B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = [objc_opt_self() defaultWorkspace];
    if (v8)
    {
      v9 = v8;
      LSApplicationWorkspace.open(universalLink:)();
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_100564D9C(uint64_t a1)
{
  v1 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v1);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController;
  v7 = *(Strong + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController);
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = [v7 searchBar];
  v9 = [v8 isFirstResponder];

  v10 = *&v5[v6];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v11 = [v10 searchBar];
  v12 = [v11 text];

  if (v12)
  {

    sub_100058000(&qword_10076B7B8, &qword_10062FB98);
    v13 = swift_allocBox();
    sub_10055A0F4(v14);
    *v3 = v13;
    swift_storeEnumTagMultiPayload();
    if (v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = 4;
    }

    sub_10055DF60(v3, v15, 0);

    sub_10056B948(v3, type metadata accessor for TTRIAccountsListsSelection);
  }

  else
  {
  }
}

void sub_100564F48(uint64_t a1, UITableViewScrollPosition a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v8 - 8);
  v10 = &v21[-v9];
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *&v3[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_diffableDataSource];
  if (!v15)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v16 = v15;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  (*(v5 + 8))(v7, v4);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000079B4(v10, &unk_100771B10, qword_10062E540);
    return;
  }

  (*(v12 + 32))(v14, v10, v11);
  v17 = UICollectionViewScrollPosition.init(tableViewScrollPosition:)(v23);
  v18 = [v3 collectionView];
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v19 scrollToItemAtIndexPath:isa atScrollPosition:v17 animated:v22 & 1];

  (*(v12 + 8))(v14, v11);
}

uint64_t sub_100565214(uint64_t a1, int a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100058000(&unk_10076BAA0, &unk_10062FD90);
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10062D400;
  v11 = type metadata accessor for TTRAccountsListsViewModel.Group();
  (*(*(v11 - 8) + 16))(v10 + v9, a1, v11);
  (*(v8 + 104))(v10 + v9, enum case for TTRAccountsListsViewModel.Item.group(_:), v7);
  *v6 = v10;
  swift_storeEnumTagMultiPayload();
  sub_10055DF60(v6, 0, a2);
  return sub_10056B948(v6, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_1005653E0(uint64_t a1, int a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  v8 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
  v9 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  swift_storeEnumTagMultiPayload();
  sub_10055DF60(v6, 0, a2);
  return sub_10056B948(v6, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_100565524(uint64_t a1)
{
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_10055DF60(v4, 0, 0);
  return sub_10056B948(v4, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_100565624(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  swift_storeEnumTagMultiPayload();
  sub_10055DF60(v5, 16, 0);
  return sub_10056B948(v5, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_100565714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return TTRIHashtagWrappingCollectionViewDelegate.hashtagWrappingCollectionViewRequestAddTag(_:)(a1, ObjectType, a3);
}

uint64_t sub_100565764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return TTRIHashtagWrappingCollectionViewDelegate.hashtagWrappingCollectionView(_:layoutResultDidChange:)(a1, a2, ObjectType, a4);
}

uint64_t sub_1005657BC(int a1, id a2)
{
  v2 = [a2 items];
  sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for TTRIAccountsListsPresenter(0);
  v4 = sub_1004493C0(v3);

  return v4 & 1;
}

double sub_100565894(int a1, id a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 items];
  sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10043B48C(v7, a3, a4);

  return result;
}

void sub_1005659B0(void *a1)
{
  if ([a1 isBeingDismissed])
  {
    v2 = 1;
  }

  else
  {
    _s9Reminders20TTRISearchControllerCMa_0();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v2 = *(v3 + OBJC_IVAR____TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController_ttri_isBeingDismissed);
    }

    else
    {
      v2 = 0;
    }
  }

  if ([a1 isActive] && (v2 & 1) == 0)
  {

    sub_100565A58(0);
  }
}

void sub_100565A58(char a1)
{
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v3);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter);
  v7 = *(v6 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v7 == 2)
  {
    if (!sub_100444328(v6))
    {
LABEL_3:
      v8 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController);
      if (v8)
      {
        v9 = [v8 searchBar];
        v10 = [v9 text];

        if (v10)
        {

          sub_100058000(&qword_10076B7B8, &qword_10062FB98);
          v11 = swift_allocBox();
          sub_10055A0F4(v12);
          *v5 = v11;
          swift_storeEnumTagMultiPayload();
          if (a1)
          {
            v13 = 4;
          }

          else
          {
            v13 = 0;
          }

          sub_10055DF60(v5, v13, 0);
          sub_10056B948(v5, type metadata accessor for TTRIAccountsListsSelection);
        }

        return;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController);
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchController);
  if (!v15)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v16 = v14;
  v17 = [v15 searchBar];
  v18 = [v17 text];

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  sub_1005065C4(v19, v21, a1 & 1);
}

void sub_100565CF4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter);
  v4 = *(v3 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v4 == 2)
  {
    if (!sub_100444328(v3))
    {
      return;
    }
  }

  else if ((v4 & 1) == 0)
  {
    return;
  }

  v5 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchResultContainerViewController);
  if (v5)
  {
    v6 = v5;
    v7 = [a1 searchBar];
    v8 = [v7 text];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    sub_100505C14(v9, v11, 2);
  }

  else
  {
    __break(1u);
  }
}

void sub_100565EDC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100058000(&qword_10076B7B8, &qword_10062FB98);
  __chkstk_darwin(v3 - 8);
  v34 = &v33 - v4;
  v5 = type metadata accessor for TTRIAccountsListsSelection(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v33 - v12);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  __chkstk_darwin(v20);
  v22 = (&v33 - v21);
  _s9Reminders20TTRISearchControllerCMa_0();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    *(v23 + OBJC_IVAR____TtC9RemindersP33_40DF08D19C7958FE077E6BA029A791CA20TTRISearchController_ttri_isBeingDismissed) = 1;
  }

  sub_100019008(0, 1);
  v24 = *(*(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter) + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v24 == 2)
  {
    if (sub_100444328(*(v1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presenter)))
    {
      return;
    }
  }

  else if (v24)
  {
    return;
  }

  sub_10055A0F4(v22);
  v33 = *(v6 + 48);
  if (v33(v22, 1, v5) == 1 || (EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_10056B948(v22, type metadata accessor for TTRIAccountsListsSelection), EnumCaseMultiPayload >= 3))
  {
    v26 = OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_searchSelection;
    swift_beginAccess();
    sub_10000794C(v2 + v26, v16, &unk_10076B7C0, &unk_10062FBA0);
    v27 = v33;
    if (v33(v16, 1, v5) == 1)
    {
      v28 = v16;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_10056B948(v16, type metadata accessor for TTRIAccountsListsSelection);
        goto LABEL_16;
      }

      v29 = swift_projectBox();
      v30 = v34;
      sub_10000794C(v29, v34, &qword_10076B7B8, &qword_10062FB98);
      v31 = v30;
      v27 = v33;
      sub_100016588(v31, v19, &unk_10076B7C0, &unk_10062FBA0);

      sub_100016588(v19, v13, &unk_10076B7C0, &unk_10062FBA0);
      if (v27(v13, 1, v5) != 1)
      {
LABEL_19:
        v32 = v35;
        sub_10056B878(v13, v35, type metadata accessor for TTRIAccountsListsSelection);
        sub_10055DF60(v32, 0, 0);
        sub_10056B948(v32, type metadata accessor for TTRIAccountsListsSelection);
        return;
      }

      v28 = v13;
    }

    sub_1000079B4(v28, &unk_10076B7C0, &unk_10062FBA0);
LABEL_16:
    sub_100016120(v10);
    if (v27(v10, 1, v5) == 1)
    {
      sub_1000079B4(v10, &unk_10076B7C0, &unk_10062FBA0);
      return;
    }

    v13 = v10;
    goto LABEL_19;
  }
}

uint64_t sub_1005664F0()
{
  v0 = sub_100058000(&unk_10078D440, &unk_10062FBB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10048B088(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v14 = &unk_100771B40;
    v15 = &unk_10062FB70;
    v16 = v9;
LABEL_5:
    sub_1000079B4(v16, v14, v15);
    return 0;
  }

  (*(v11 + 32))(v13, v9, v10);
  TTRAccountsListsViewModel.Item.recentlyDeletedList.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v14 = &unk_10078D440;
    v15 = &unk_10062FBB0;
    v16 = v2;
    goto LABEL_5;
  }

  (*(v4 + 32))(v6, v2, v3);
  v18 = TTRAccountsListsViewModel.RecentlyDeletedList.accountID.getter();
  v19 = TTRAccountsListsViewModel.RecentlyDeletedList.count.getter();
  sub_100431434(v18, v19);

  (*(v4 + 8))(v6, v3);
  (*(v11 + 8))(v13, v10);
  return 1;
}

void sub_1005668D8(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability))
  {

    TTRICollectionViewPresentationTreeManagementViewCapability.reload()();

    sub_100015960();
    sub_10055D1DC(0);
    sub_1000165F0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10056694C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1005669BC(uint64_t a1)
{
  v27 = a1;
  v26 = type metadata accessor for TTRAccountsListsViewModel.List();
  v1 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v27, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    TTRAccountsListsViewModel.SmartList.type.getter();
    v17 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
    v18 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v18 - 8) + 104))(v6, v17, v18);
    swift_storeEnumTagMultiPayload();
    sub_10055DF60(v6, 2, 0);
    sub_10056B948(v6, type metadata accessor for TTRIAccountsListsSelection);
    (*(v8 + 8))(v10, v7);
  }

  else if (v16 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v12 + 96))(v15, v11);
    v19 = v26;
    (*(v1 + 32))(v3, v15, v26);
    (*(v1 + 16))(v6, v3, v19);
    v20 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
    v21 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v21 - 8) + 104))(v6, v20, v21);
    swift_storeEnumTagMultiPayload();
    sub_10055DF60(v6, 2, 0);
    sub_10056B948(v6, type metadata accessor for TTRIAccountsListsSelection);
    (*(v1 + 8))(v3, v19);
  }

  else
  {
    if (qword_100767460 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_10078D290);
    v23 = sub_100008E04(_swiftEmptyArrayStorage);
    v24 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown pinned list type", 24, 2uLL, v23, v24);
    __break(1u);
  }
}

id sub_100566E80(uint64_t a1, void *a2)
{
  v4 = sub_100058000(&qword_10076BB30, &qword_10062FDC0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v13 - v6;
  v8 = [a2 items];
  sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10043B8B4(v9, a1, v7);

  v10 = sub_100058000(&qword_10076BB38, &qword_10063F300);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 3;
  }

  sub_1000079B4(v7, &qword_10076BB30, &qword_10062FDC0);
  return [objc_allocWithZone(UIDropProposal) initWithDropOperation:v11];
}

double sub_100567000(uint64_t a1, id a2)
{
  v3 = [a2 items];
  sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_1004B1A10(v4))
  {
    sub_10043C130(v4, a1);
  }

  else
  {
    sub_10043C10C(v4, a1);
  }

  return result;
}

void sub_1005670C0(void (*a1)(void))
{
  v3 = [v1 contentScrollView];
  if (v3)
  {
    v7 = v3;
    a1();
  }

  else
  {
    if (qword_100767460 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_10078D290);
    v7 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v7, v5, "ppt_execute(_ scrollTest: @escaping (UIScrollView) failed because contentScrollView is nil", v6, 2u);
    }
  }
}