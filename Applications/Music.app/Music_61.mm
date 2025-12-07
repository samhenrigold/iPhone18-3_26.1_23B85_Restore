void sub_1006C3D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_101180278, &unk_100EBA5B0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v31 = *(*(v5 + 56) + 16 * v23);
      Hasher.init(_seed:)();
      String.hash(into:)();

      v15 = Hasher._finalize()();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v16) >> 6;
        while (++v18 != v26 || (v25 & 1) == 0)
        {
          v27 = v18 == v26;
          if (v18 == v26)
          {
            v18 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v18);
          if (v28 != -1)
          {
            v19 = __clz(__rbit64(~v28)) + (v18 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v24;
      *(*(v7 + 56) + 16 * v19) = v31;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1006C4054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&unk_1011804D0, &qword_100ED58D0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      v24 = NSObject._rawHashValue(seed:)(*(v7 + 40));
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1006C42BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  _s16ActionButtonViewV5ModelVMa(0);
  __chkstk_darwin();
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin();
  v56 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v49 - v8;
  v9 = type metadata accessor for SidebarActivityView.Activity(0);
  v57 = *(v9 - 8);
  v58 = v9;
  __chkstk_darwin();
  v62 = (v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v60 = v49 - v11;
  v12 = *v2;
  sub_10010FC20(&unk_10118CF50, &unk_100EBA770);
  v59 = v4;
  v13 = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v52 = v6;
    v53 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v13 + 64;
    v22 = v60;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v57 + 72);
      v29 = *(v12 + 48) + v28 * v27;
      if (v59)
      {
        sub_1006CCB48(v29, v22, type metadata accessor for SidebarActivityView.Activity);
        v61 = *(*(v12 + 56) + 8 * v27);
      }

      else
      {
        sub_1006CCAE0(v29, v22, type metadata accessor for SidebarActivityView.Activity);
        v61 = *(*(v12 + 56) + 8 * v27);
      }

      Hasher.init(_seed:)();
      sub_1006CCAE0(v22, v62, type metadata accessor for SidebarActivityView.Activity);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v31 = *v62;
        if (EnumCaseMultiPayload == 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = 2;
        }

        Hasher._combine(_:)(v32);
        NSObject.hash(into:)();
      }

      else
      {
        v33 = v55;
        sub_1006CCB48(v62, v55, type metadata accessor for LibraryImport.ViewModel);
        Hasher._combine(_:)(0);
        sub_1006CCAE0(v33, v56, type metadata accessor for LibraryImport.ViewModel);
        v34 = swift_getEnumCaseMultiPayload();
        if (v34)
        {
          if (v34 == 1)
          {
            v35 = v52;
            sub_1006CCB48(v56, v52, _s16ActionButtonViewV5ModelVMa);
            Hasher._combine(_:)(1uLL);
            sub_10062CB80(v63);
            sub_1006CB5E8(v35, _s16ActionButtonViewV5ModelVMa);
          }

          else
          {
            Hasher._combine(_:)(2uLL);
          }
        }

        else
        {
          v36 = *(v56 + 8);
          v49[1] = *v56;
          v37 = *(v56 + 24);
          v49[2] = *(v56 + 16);
          v50 = v37;
          v38 = *(v56 + 32);
          Hasher._combine(_:)(0);
          if (v36)
          {
            Hasher._combine(_:)(1u);
            String.hash(into:)();
          }

          else
          {
            Hasher._combine(_:)(0);
          }

          v51 = v36;
          if (v50)
          {
            Hasher._combine(_:)(1u);
            String.hash(into:)();
          }

          else
          {
            Hasher._combine(_:)(0);
          }

          if (v38 == 0.0)
          {
            v39 = 0.0;
          }

          else
          {
            v39 = v38;
          }

          Hasher._combine(_:)(*&v39);
        }

        sub_1006CB5E8(v55, type metadata accessor for LibraryImport.ViewModel);
      }

      v40 = Hasher._finalize()();
      v41 = -1 << *(v14 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      v22 = v60;
      if (((-1 << v42) & ~*(v21 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v21 + 8 * v43);
          if (v47 != -1)
          {
            v23 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_56:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v42) & ~*(v21 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      sub_1006CCB48(v22, *(v14 + 48) + v28 * v23, type metadata accessor for SidebarActivityView.Activity);
      *(*(v14 + 56) + 8 * v23) = v61;
      ++*(v14 + 16);
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v59 & 1) == 0)
    {

      v3 = v53;
      goto LABEL_54;
    }

    v48 = 1 << *(v12 + 32);
    v3 = v53;
    if (v48 >= 64)
    {
      bzero((v12 + 64), ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v48;
    }

    *(v12 + 16) = 0;
  }

LABEL_54:
  *v3 = v14;
}

void sub_1006C4968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10010FC20(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v34 = v4;
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
      }

      v25 = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v6 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1006C4BD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_101180430, &qword_100EBA6E8);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1006C4E74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_101180558, &qword_100EBA7A0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v20 = *(*(v5 + 48) + v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1006C5104(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011803B8, &qword_100EBA670);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1006C53B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1006BE710(a2);
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
      sub_1006BFC14(v14, a3 & 1);
      v9 = sub_1006BE710(a2);
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
      sub_1006C7CE0();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_1006C5518(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001AD48(a2, a3, sub_10000F930);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1006BFFAC(v16, a4 & 1);
      v11 = sub_10001AD48(a2, a3, sub_10000F930);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1006C7E3C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + v11) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_1006C56AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10001AD48(a3, a4, sub_10000F930);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1006C024C(v18, a5 & 1);
      v13 = sub_10001AD48(a3, a4, sub_10000F930);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1006C7FA4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

void sub_1006C585C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  v9 = sub_1006BE85C(a2 & 1);
  v11 = *(v7 + 16);
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
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1006C050C(v14, a3 & 1);
      v9 = sub_1006BE85C(v8);
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
      sub_1006C811C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = v8;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

void sub_1006C59A4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001AD48(a2, a3, sub_10000F930);
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
      sub_1006C8278();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1006C07E8(v16, a4 & 1);
    v11 = sub_10001AD48(a2, a3, sub_10000F930);
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
    v22 = (v21[7] + 32 * v11);
    sub_10000959C(v22);

    sub_100016270(a1, v22);
  }

  else
  {
    sub_1006C77C0(v11, a2, a3, a1, v21);
  }
}

void sub_1006C5B1C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1006BE548(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1006C4968(v13, a3 & 1, &qword_101180590, &qword_100EBA7D8);
      v8 = sub_1006BE548(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100009F78(0, &qword_101192200, MPIdentifierSet_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1006CA6F4(&qword_101180590, &qword_100EBA7D8);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  v21 = a2;
}

void sub_1006C5CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1006BE598(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1006C0AB4(v20, a6 & 1);
      v15 = sub_1006BE598(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1006C8430();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 32 * v15);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_1006C5E68(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001AD48(a2, a3, sub_10000F930);
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
      sub_1006C89B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1006C1424(v16, a4 & 1);
    v11 = sub_10001AD48(a2, a3, sub_10000F930);
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
    v22 = (v21[7] + 32 * v11);
    sub_10000959C(v22);

    sub_100016270(a1, v22);
  }

  else
  {
    sub_1006C77C0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1006C5FE0(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1006BE7F4(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1006C8B54();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1006C16DC(v18, a5 & 1);
    v13 = sub_1006BE7F4(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v13;
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    *v24 = a1;
    *(v24 + 1) = HIBYTE(a1) & 1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3;

    return sub_100020438(v25, v26);
  }

  else
  {

    return sub_1006C78E4(v13, a4, a1 & 0x1FF, a2, a3, v23);
  }
}

void sub_1006C616C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10001AD48(a2, a3, sub_10000F930);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1006C1C54(v20, a4 & 1, a5, a6);
      v15 = sub_10001AD48(a2, a3, sub_10000F930);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1006C8E88(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_1006C6334(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1006BEAC4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1006C4968(v13, a3 & 1, &qword_10119EB88, &unk_100EDDA50);
      v8 = sub_1006BEAC4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100009F78(0, &qword_101181F70, UITab_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1006CA6F4(&qword_10119EB88, &unk_100EDDA50);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  v21 = a2;
}

void sub_1006C64D4(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001AD48(a2, a3, sub_10000F930);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1006C1EF4(v16, a4 & 1);
      v11 = sub_10001AD48(a2, a3, sub_10000F930);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1006C8FE8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + v11) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_1006C6668(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10001AD48(a3, a4, sub_10000F930);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1006C2194(v18, a5 & 1);
      v13 = sub_10001AD48(a3, a4, sub_10000F930);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1006C9150();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    *v24 = a1;
    *(v24 + 8) = a2 & 1;
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = v23[7] + 16 * v13;
  *v26 = a1;
  *(v26 + 8) = a2 & 1;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

void sub_1006C6828(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10001AD48(a2, a3, sub_10000F930);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1006C1C54(v20, a4 & 1, a5, a6);
      v15 = sub_10001AD48(a2, a3, sub_10000F930);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1006C8E88(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_1006C6A04(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v25 = a4;
  v26 = a5;
  v6 = v5;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1006BE9F0(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1006C92DC(v25, v26);
      goto LABEL_7;
    }

    sub_1006C2454(v19, a3 & 1, v25, v26);
    v23 = sub_1006BE9F0(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      sub_1006C7A0C(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

void sub_1006C6BF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10001AD48(a2, a3, sub_10000F930);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1006C2BB0(v20, a4 & 1, a5, a6);
      v15 = sub_10001AD48(a2, a3, sub_10000F930);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1006C97D4(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v28;
}

_OWORD *sub_1006C6DA4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1006BE7F4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1006C992C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1006C2E48(v14, a3 & 1);
    v9 = sub_1006BE7F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    sub_10000959C(v20);

    return sub_100016270(a1, v20);
  }

  else
  {

    return sub_1006C7AC4(v9, a2, a1, v19);
  }
}

uint64_t sub_1006C6ED0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1006BE7F4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
      return sub_10006B010(a1, v17 + *(*(v18 - 8) + 72) * v10, &unk_1011A4B90, &unk_100ED2800);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1006C9AA8();
    goto LABEL_7;
  }

  sub_1006C30DC(v13, a3 & 1);
  v20 = sub_1006BE7F4(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1006C7B2C(v10, a2, a1, v16);
}

_OWORD *sub_1006C702C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1006BE91C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1006C9CBC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1006C3404(v13, a3 & 1);
    v8 = sub_1006BE91C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10000959C(v19);

    return sub_100016270(a1, v19);
  }

  else
  {
    sub_1006C7BCC(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1006C716C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10001AD48(a2, a3, sub_10000F930);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1006C9E3C();
      goto LABEL_7;
    }

    sub_1006C36D4(v15, a4 & 1);
    v21 = sub_10001AD48(a2, a3, sub_10000F930);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for Cache.Entry(0) - 8) + 72) * v12;

    sub_1006CCBB0(a1, v20);
    return;
  }

LABEL_13:
  sub_1006C7C34(v12, a2, a3, a1, v18);
}

void sub_1006C72F8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1006BEBD0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1006C4968(v13, a3 & 1, &unk_101180390, &qword_100EDD9A0);
      v8 = sub_1006BEBD0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100009F78(0, &qword_10118DF60, UITabGroup_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1006CA6F4(&unk_101180390, &qword_100EDD9A0);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  v21 = a2;
}

void sub_1006C7498(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001AD48(a2, a3, sub_10000F930);
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
      sub_1006C4BD0(v16, a4 & 1);
      v11 = sub_10001AD48(a2, a3, sub_10000F930);
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
      sub_1006CA848();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_1006C7638(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1006BE7F4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1006C4E74(v16, a4 & 1);
      v11 = sub_1006BE7F4(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1006CA9B4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + v11) = a3;
    v23 = (v21[7] + 16 * v11);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
}

_OWORD *sub_1006C77C0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100016270(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1006C782C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for EditorialVideoArtworkFlavor();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

unint64_t sub_1006C78E4(unint64_t result, char a2, __int16 a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 1) = HIBYTE(a3) & 1;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_1006C793C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100016270(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1006C79B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
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

uint64_t sub_1006C7A0C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for IndexPath();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

_OWORD *sub_1006C7AC4(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_100016270(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1006C7B2C(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  result = sub_10040DFB8(a3, v7 + *(*(v8 - 8) + 72) * a1);
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

_OWORD *sub_1006C7BCC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100016270(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1006C7C34(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Cache.Entry(0);
  result = sub_1006CCB48(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Cache.Entry);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_1006C7CE0()
{
  v1 = v0;
  sub_10010FC20(&qword_101180488, &qword_100EBA730);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006C7E3C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011804B8, &qword_100EBA760);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006C7FA4()
{
  v1 = v0;
  sub_10010FC20(&qword_1011801D0, &unk_100EDDA70);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006C811C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011805C8, &qword_100EBA810);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006C8278()
{
  v1 = v0;
  sub_10010FC20(&qword_101180210, &qword_100EDD9F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000DD18(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100016270(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1006C8430()
{
  v1 = v0;
  sub_10010FC20(&qword_1011801E8, &qword_100EBA530);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v21;
        v23[3] = v20;
        *(*(v4 + 56) + 8 * v17) = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006C85B8()
{
  v1 = v0;
  sub_10010FC20(&qword_1011804E0, &qword_100EBA788);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006C8730()
{
  v1 = v0;
  v33 = type metadata accessor for EditorialVideoArtworkFlavor();
  v35 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101180568, &qword_100EBA7B0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1006C89B0()
{
  v1 = v0;
  sub_10010FC20(&unk_101180220, &unk_100F10E60);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000DD18(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100016270(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1006C8B54()
{
  v1 = v0;
  sub_10010FC20(&qword_101180470, &qword_100EBA718);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 1);
        v21 = *(v18 + 8);
        v22 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v23 = *(v4 + 56) + 24 * v17;
        *v23 = v19;
        *(v23 + 1) = v20;
        *(v23 + 8) = v21;
        *(v23 + 16) = v22;
        sub_100030444(v21, v22);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006C8CD0()
{
  v1 = v0;
  sub_10010FC20(&qword_1011801C0, &qword_100EDD960);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1000160F8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000DD18(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_100016270(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006C8E88(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10010FC20(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void sub_1006C8FE8()
{
  v1 = v0;
  sub_10010FC20(&qword_101180268, &qword_100EBA5A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006C9150()
{
  v1 = v0;
  sub_10010FC20(&qword_101180478, &qword_100EBA720);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LOBYTE(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v20;
        v23[1] = v19;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006C92DC(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for IndexPath();
  v37 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

void sub_1006C9554()
{
  v1 = v0;
  v35 = type metadata accessor for DisplayRepresentation();
  v37 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011805C0, &qword_100EDDA80);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1006C97D4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10010FC20(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void sub_1006C992C()
{
  v1 = v0;
  sub_10010FC20(&qword_101180290, &qword_100EBA5C0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        sub_10000DD18(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        sub_100016270(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006C9AA8()
{
  v1 = v0;
  v23 = *(sub_10010FC20(&unk_1011A4B90, &unk_100ED2800) - 8);
  __chkstk_darwin();
  v3 = &v22 - v2;
  sub_10010FC20(&qword_10119EB70, &unk_100EDD978);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v22 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + v19);
        v21 = *(v23 + 72) * v19;
        sub_10003272C(*(v4 + 56) + v21, v3);
        *(*(v6 + 48) + v19) = v20;
        sub_10040DFB8(v3, *(v6 + 56) + v21);
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

        v1 = v22;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1006C9CBC()
{
  v1 = v0;
  sub_10010FC20(&qword_101180418, &unk_100EBA6D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_10000DD18(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100016270(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006C9E3C()
{
  v1 = v0;
  v30 = *(type metadata accessor for Cache.Entry(0) - 8);
  __chkstk_darwin();
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101180578, &qword_100EBA7C0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v28 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = *(v3 + 64);
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
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = 16 * v19;
        v21 = (*(v3 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v29;
        v25 = *(v30 + 72) * v19;
        sub_1006CCAE0(*(v3 + 56) + v25, v29, type metadata accessor for Cache.Entry);
        v26 = v31;
        v27 = (*(v31 + 48) + v20);
        *v27 = v22;
        v27[1] = v23;
        sub_1006CCB48(v24, *(v26 + 56) + v25, type metadata accessor for Cache.Entry);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v28;
        v5 = v31;
        goto LABEL_18;
      }

      v18 = *(v7 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1006CA0A8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10010FC20(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void sub_1006CA208()
{
  v1 = v0;
  sub_10010FC20(&qword_101180278, &unk_100EBA5B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1006CA358()
{
  v1 = v0;
  sub_10010FC20(&unk_1011804D0, &qword_100ED58D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006CA4B8()
{
  v1 = v0;
  v24 = *(type metadata accessor for SidebarActivityView.Activity(0) - 8);
  __chkstk_darwin();
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CF50, &unk_100EBA770);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v23 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = *(v24 + 72) * v19;
        sub_1006CCAE0(*(v4 + 48) + v20, v3, type metadata accessor for SidebarActivityView.Activity);
        v21 = *(*(v4 + 56) + 8 * v19);
        sub_1006CCB48(v3, *(v6 + 48) + v20, type metadata accessor for SidebarActivityView.Activity);
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v21;
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

        v1 = v23;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1006CA6F4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10010FC20(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void sub_1006CA848()
{
  v1 = v0;
  sub_10010FC20(&qword_101180430, &qword_100EBA6E8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006CA9B4()
{
  v1 = v0;
  sub_10010FC20(&qword_101180558, &qword_100EBA7A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1006CAB2C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011803B8, &qword_100EBA670);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void (*sub_1006CAC94(void (*result)(id *a1), unint64_t a2, unint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007E90FC(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_1006CAD14(void (*result)(id *a1), unint64_t a2, unint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007E914C(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_1006CAD94(void (*result)(id *a1), unint64_t a2, unint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007E91C0(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_1006CAE14(void (*result)(id *a1), unint64_t a2, unint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100062D50(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_1006CAE94(void (*result)(id *a1), unint64_t a2, unint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007E9388(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CAF14;
  }

  __break(1u);
  return result;
}

void (*sub_1006CAF1C(void (*result)(id *a1), unint64_t a2, unint64_t a3, __n128 a4))(id *a1)
{
  v4 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_1007E90E8(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v5 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v4 = v5;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1006CAF9C(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007E976C(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1006CB01C;
  }

  __break(1u);
  return result;
}

Swift::Int sub_1006CB024(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006CB15C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a4;
  v23 = sub_10010FC20(&qword_10119EB78, &qword_100EDDA18);
  v7 = *(v23 - 8);
  __chkstk_darwin();
  v9 = v22 - v8;
  v10 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryViewModel;
  v11 = type metadata accessor for LibraryImport.ViewModel(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a2 + v10, 1, 1, v11);
  v12(a2 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliViewModel, 1, 1, v11);
  v12(a2 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipViewModel, 1, 1, v11);
  v13 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliObserver;
  if (qword_10117F630 != -1)
  {
    swift_once();
  }

  *(a2 + v13) = qword_101218B28;
  v14 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliViewModelObserver;
  *(a2 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliViewModelObserver) = 0;
  *(a2 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryStatus) = 4294967288;
  v15 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryStatusObserver;

  *(a2 + v15) = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  *(a2 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipProvider) = 0;
  *(a2 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipObserver) = 0;
  v24 = 0;
  swift_unknownObjectWeakInit();
  v24 = a3;
  v25 = _swiftEmptyDictionarySingleton;
  v16 = swift_unknownObjectWeakAssign();
  sub_1005C277C(v16, a2 + 16);
  v17 = *(**(a2 + v15) + 216);

  v17(v18, &off_1010B2008);

  swift_beginAccess();

  sub_10010FC20(&qword_10118CA88, &unk_100EDDA20);
  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_1006CCA7C();
  v19 = v23;
  v20 = Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v9, v19);
  *(a2 + v14) = v20;

  return a2;
}

uint64_t sub_1006CB4AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&unk_1011A4B90, &unk_100ED2800) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_1006BCEA8(a1, v9, v10, v11, v1 + v7, v1 + v8);
}

uint64_t sub_1006CB5E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1006CB648()
{
  v1 = v0;
  v2 = type metadata accessor for UIView.Corner.Radius();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v7 = v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = v116 - v9;
  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_91;
  }

  v12 = v11;
  v13 = [v11 window];

  v119 = v5;
  if (v13)
  {
    v14 = [v13 windowScene];

    if (!v14 || (v15 = [v14 activationState], v14, v15))
    {
      v13 = 0;
      goto LABEL_6;
    }

    v44 = [v1 view];
    if (v44)
    {
      v45 = v44;
      [v44 bounds];
      v47 = v46;
      v49 = v48;

      v17 = 0;
      v13 = v47;
      v16 = v49;
      goto LABEL_7;
    }

LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

LABEL_6:
  v16 = 0;
  v17 = 1;
LABEL_7:
  v117 = v2;
  v18 = objc_allocWithZone(type metadata accessor for NowPlayingViewController(0));
  v19 = sub_1005CD81C(v13, v16, v17);
  v20 = OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController;
  v21 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
  v118 = v3;
  if (v21 && (v22 = [v21 artworkView]) != 0)
  {
    v23 = v22;
    v24 = *&v22[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView];
    v25 = Artwork.View.currentImage.getter();
  }

  else
  {
    v25 = 0;
  }

  v26 = *&v19[OBJC_IVAR____TtC5Music24NowPlayingViewController_initialArtworkImage];
  *&v19[OBJC_IVAR____TtC5Music24NowPlayingViewController_initialArtworkImage] = v25;
  v27 = v25;

  sub_1005C3E98();
  v28 = *&v1[v20];
  if (v28 && (v29 = [v28 artworkView]) != 0)
  {
    v30 = *&v29[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData];
    v31 = v29;
  }

  else
  {
    v30 = 0;
  }

  v32 = *&v19[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData];
  *&v19[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData] = v30;

  sub_1005C86CC(v32);

  v33 = *&v1[v20];
  if (v33)
  {
    v34 = *(v33 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager);
  }

  else
  {
    v34 = 0;
  }

  *&v19[OBJC_IVAR____TtC5Music24NowPlayingViewController_motionArtworkManager] = v34;

  sub_1005C7C64();

  v35 = *&v1[v20];
  if (v35)
  {
    v36 = *(v35 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying);
    v37 = v36;
  }

  else
  {
    v36 = 0;
  }

  v38 = *&v19[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
  *&v19[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying] = v36;
  v39 = v36;
  sub_1005C40E8(v38);

  v40 = *&v1[v20];
  if (v40)
  {
    v41 = [v40 artworkView];
    if (v41)
    {
      v42 = v41;
      v43 = *&v41[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData];
      if (!v43)
      {

        return;
      }

      if (UIAccessibilityPrefersCrossFadeTransitions())
      {
        goto LABEL_88;
      }

      v116[2] = v43;
      LOBYTE(aBlock) = 11;
      v50 = sub_100025CE0();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v50) & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&aBlock);

        v67 = v121;
        if (v121 == 255 || (sub_10004ADFC(aBlock, v121), (v67 & 1) == 0))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(&aBlock);

          v68 = v121;
          if (v121 != 255)
          {
            sub_10004ADFC(aBlock, v121);
            if ((v68 & 1) == 0)
            {
              v69 = *&v1[v20];
              if (v69)
              {
                v70 = [v69 artworkView];
                if (v70)
                {
                  v71 = v70;
                  if (*&v70[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData])
                  {
                    swift_getKeyPath();
                    swift_getKeyPath();

                    static Published.subscript.getter(&aBlock);

                    v72 = v121;
                    if (v121 != 255)
                    {
                      sub_10004ADFC(aBlock, v121);
                      if ((v72 & 1) == 0)
                      {
                        sub_10065F284();
                        sub_10065D24C();
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v73 = *&v19[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
        if (v73)
        {
          v74 = *(v73 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode);
          if (v74 != 3 && v74)
          {
            goto LABEL_88;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(&aBlock);

          v75 = v121;
          if (v121 != 255)
          {
            sub_10004ADFC(aBlock, v121);
            if (v75)
            {
              sub_10065FB58();
              v76 = [v42 traitCollection];
              [v76 displayCornerRadius];
              v78 = v77;

              sub_10004CF20(*&v42[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode], [v42 traitCollection], v7);
              v79 = type metadata accessor for UIView.Corner();
              v80 = *(v79 - 8);
              if ((*(v80 + 48))(v7, 1, v79) == 1)
              {
                sub_1000095E8(v7, &qword_101183A90, &unk_100EBE340);
                v81 = 0;
              }

              else
              {
                v90 = v119;
                UIView.Corner.radius.getter();
                (*(v80 + 8))(v7, v79);
                [v42 bounds];
                UIView.Corner.Radius.value(in:)();
                v81 = v91;
                (*(v118 + 8))(v90, v117);
              }

              [*&v42[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] setClipsToBounds:1];
              v92 = objc_opt_self();
              v93 = swift_allocObject();
              *(v93 + 16) = v42;
              *(v93 + 24) = 1;
              *(v93 + 32) = v78;
              *(v93 + 40) = v81;
              v124 = sub_1005EB1E8;
              v125 = v93;
              aBlock = _NSConcreteStackBlock;
              v121 = 1107296256;
              v94 = &unk_1010BAE20;
              goto LABEL_87;
            }
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(&aBlock);

          v82 = v121;
          if (v121 == 255)
          {
            goto LABEL_88;
          }

          sub_10004ADFC(aBlock, v121);
          if (v82)
          {
            goto LABEL_88;
          }

          v83 = *&v1[v20];
          if (!v83)
          {
            goto LABEL_88;
          }

          v84 = [v83 artworkView];
          if (!v84)
          {
            goto LABEL_88;
          }

          v86 = v84;
          sub_10065ECCC(v85);
          sub_10065EEBC();
          v87 = objc_opt_self();
          v88 = swift_allocObject();
          *(v88 + 16) = v86;
          v124 = sub_1005EAB14;
          v125 = v88;
          aBlock = _NSConcreteStackBlock;
          v121 = 1107296256;
          v89 = &unk_1010BADD0;
LABEL_83:
          v122 = sub_10002BC98;
          v123 = v89;
          v110 = _Block_copy(&aBlock);
          v111 = v86;

          [v87 animateWithDuration:v110 animations:0.2];
          _Block_release(v110);

LABEL_88:

          return;
        }

        goto LABEL_93;
      }

      v42[OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground] = v19[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground];
      if ((sub_1002752B8() & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&aBlock);

        v51 = v121;
        if (v121 != 255)
        {
          sub_10004ADFC(aBlock, v121);
          if ((v51 & 1) == 0)
          {
            v52 = *&v1[v20];
            if (v52)
            {
              v53 = [v52 artworkView];
              if (v53)
              {
                v54 = v53;
                if (*&v53[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData])
                {
                  swift_getKeyPath();
                  v116[1] = swift_getKeyPath();

                  static Published.subscript.getter(&aBlock);

                  v55 = v121;
                  if (v121 != 255)
                  {
                    sub_10004ADFC(aBlock, v121);
                    if ((v55 & 1) == 0)
                    {
                      sub_10065F284();
                      sub_10065D24C();
                    }
                  }
                }
              }
            }
          }
        }
      }

      v56 = *&v19[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
      if (v56)
      {
        v57 = *(v56 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode);
        if (v57 != 3 && v57)
        {
          goto LABEL_88;
        }

        if ((sub_1002752B8() & 1) == 0 || (v58 = [v1 traitCollection], v59 = objc_msgSend(v58, "horizontalSizeClass"), v58, v59 != 1))
        {
LABEL_77:
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(&aBlock);

          v103 = v121;
          if (v121 == 255)
          {
            goto LABEL_88;
          }

          sub_10004ADFC(aBlock, v121);
          if (v103)
          {
            goto LABEL_88;
          }

          v104 = [v1 traitCollection];
          v105 = [v104 horizontalSizeClass];

          if (v105 != 1)
          {
            goto LABEL_88;
          }

          v106 = *&v1[v20];
          if (!v106)
          {
            goto LABEL_88;
          }

          v107 = [v106 artworkView];
          if (!v107)
          {
            goto LABEL_88;
          }

          v86 = v107;
          sub_10065ECCC(v108);
          sub_10065EEBC();
          v87 = objc_opt_self();
          v109 = swift_allocObject();
          *(v109 + 16) = v86;
          v124 = sub_1005EBDDC;
          v125 = v109;
          aBlock = _NSConcreteStackBlock;
          v121 = 1107296256;
          v89 = &unk_1010BAE70;
          goto LABEL_83;
        }

        v60 = [v1 view];
        if (v60)
        {
          v61 = v60;
          v62 = [v60 window];

          if (v62)
          {
            [v62 frame];
            v64 = v63;
            v66 = v65;
          }

          else
          {
            v64 = 0.0;
            v66 = 0.0;
          }

          v95 = [v1 traitCollection];
          v96 = sub_1005E7D18(v95, v64, v66);

          if (v96)
          {
            sub_10065FB58();
            v97 = [v42 traitCollection];
            [v97 displayCornerRadius];
            v99 = v98;

            sub_10004CF20(*&v42[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode], [v42 traitCollection], v10);
            v100 = type metadata accessor for UIView.Corner();
            v101 = *(v100 - 8);
            if ((*(v101 + 48))(v10, 1, v100) == 1)
            {
              sub_1000095E8(v10, &qword_101183A90, &unk_100EBE340);
              v102 = 0;
            }

            else
            {
              v112 = v119;
              UIView.Corner.radius.getter();
              (*(v101 + 8))(v10, v100);
              [v42 bounds];
              UIView.Corner.Radius.value(in:)();
              v102 = v113;
              (*(v118 + 8))(v112, v117);
            }

            [*&v42[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] setClipsToBounds:1];
            v92 = objc_opt_self();
            v114 = swift_allocObject();
            *(v114 + 16) = v42;
            *(v114 + 24) = 1;
            *(v114 + 32) = v99;
            *(v114 + 40) = v102;
            v124 = sub_1005EBE9C;
            v125 = v114;
            aBlock = _NSConcreteStackBlock;
            v121 = 1107296256;
            v94 = &unk_1010BAEC0;
LABEL_87:
            v122 = sub_10002BC98;
            v123 = v94;
            v115 = _Block_copy(&aBlock);
            v42 = v42;

            [v92 animateWithDuration:4 delay:v115 options:0 animations:0.35 completion:0.0];
            _Block_release(v115);
            goto LABEL_88;
          }

          goto LABEL_77;
        }

LABEL_94:
        __break(1u);
        return;
      }

LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }
  }
}

void *sub_1006CC604()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      sub_10010FC20(&qword_101192018, &qword_100ECF1E8);
      result = swift_allocObject();
      *(result + 1) = xmmword_100EBC6B0;
      result[4] = v2;
      result[5] = &off_1010A3F68;
      return result;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1006CC6C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006CC720()
{

  return swift_deallocObject();
}

uint64_t sub_1006CC768()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_1006BDA78(v2);
}

void sub_1006CC804()
{
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_barDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_sidebarDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_appearanceState) = 0x80;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController____lazy_storage___libraryImportObserver) = 0;
  v1 = OBJC_IVAR____TtC5Music16TabBarController_libraryImportViewModel;
  v2 = type metadata accessor for LibraryImport.ViewModel(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_libraryImportViewModelsToListenFor) = &off_10109C1B8;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_accountButtonCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_sidebarAccountButton) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_sidebarActivityView) = 0;
  v3 = (v0 + OBJC_IVAR____TtC5Music16TabBarController_onMusicTabsChanged);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC5Music16TabBarController_onSelectedMusicTabChanged);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC5Music16TabBarController_stackAuthorities;
  *(v0 + v5) = sub_10010DA58(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_observers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController__pendingTabIdentifiers) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_bindings) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_forceReloadTabViewControllers) = 0;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_canRestoreLastSelectedTab) = 1;
  *(v0 + OBJC_IVAR____TtC5Music16TabBarController_tabSelectionTimeout) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1006CC9C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC5Music16TabBarController_accountButtonCoordinator);
    v5 = Strong;

    if (v4)
    {

      if (v4 == a1)
      {
        swift_beginAccess();
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;
          sub_100032128();
        }
      }
    }
  }
}

unint64_t sub_1006CCA7C()
{
  result = qword_10119EB80;
  if (!qword_10119EB80)
  {
    sub_1001109D0(&qword_10119EB78, &qword_100EDDA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119EB80);
  }

  return result;
}

uint64_t sub_1006CCAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006CCB48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006CCBB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Cache.Entry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1006CCC9C(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for Playlist.EditableComponents();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin();
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  __chkstk_darwin();
  v68 = &v62 - v5;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v62 - v6;
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v12 = &v62 - v11;
  __chkstk_darwin();
  v14 = &v62 - v13;
  v15 = type metadata accessor for PlaylistEditingViewController(0);
  v75.receiver = v2;
  v75.super_class = v15;
  objc_msgSendSuper2(&v75, "viewDidLoad");
  v16 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
  v17 = *(v9 + 16);
  v71 = v8;
  v67 = v17;
  v17(v14, &v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v8);
  result = [v2 view];
  if (result)
  {
    v19 = result;
    v64 = v16;
    v65 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = [objc_opt_self() systemBackgroundColor];
    [v19 setBackgroundColor:v20];

    v21 = [v2 navigationController];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 presentationController];

      if (v23)
      {
        [v23 setDelegate:v2];
      }
    }

    v73[3] = sub_10010FC20(&qword_10119EC88, &qword_100EDDAF8);
    v24 = sub_10001C8B8(v73);
    sub_1006D7488(v24);
    v74[3] = sub_10010FC20(qword_10119ECA0, &qword_100EDDB00);
    v25 = sub_10001C8B8(v74);
    sub_1006D79B0(v25);
    swift_arrayDestroy();
    static TaskPriority.userInitiated.getter();
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v7, 0, 1, v26);
    v66 = v14;
    v27 = v14;
    v28 = v71;
    v29 = v67;
    v67(v12, v27, v71);
    v30 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    (*(v9 + 32))(v31 + v30, v12, v28);
    *(v31 + ((v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
    v32 = v2;
    sub_10035EB10(0, 0, v7, &unk_100EDE2D0, v31);

    sub_1000095E8(v7, &unk_101181520, &qword_100EBCC60);
    v33 = [v32 navigationItem];
    v34 = sub_1006D20F4();
    [v33 setLeftBarButtonItem:v34];

    v35 = [v32 navigationItem];
    v36 = sub_1006D2118();
    [v35 setRightBarButtonItem:v36];

    v37 = v65;
    v29(v65, &v2[v64], v28);
    v38 = v68;
    Playlist.editableComponents.getter();
    v39 = *(v9 + 8);
    v39(v37, v28);
    v41 = v69;
    v40 = v70;
    if ((*(v69 + 48))(v38, 1, v70) == 1)
    {
      sub_1000095E8(v38, &unk_10118D240, &unk_100EC8F50);
    }

    else
    {
      v42 = v63;
      static Playlist.EditableComponents.tracklist.getter();
      sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
      v43 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v44 = *(v41 + 8);
      v44(v42, v40);
      v44(v38, v40);
      if (v43)
      {
        v45 = sub_1006D251C();
        [(objc_class *)v45 setEnabled:0];

        v46 = sub_1006D2B28();
        [(objc_class *)v46 setEnabled:0];

        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_100EBE270;
        v48 = *&v32[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___deleteToolBarButtonItem];
        *(v47 + 32) = v48;
        v49 = objc_opt_self();
        v50 = v48;
        *(v47 + 40) = [v49 flexibleSpaceItem];
        v51 = *&v32[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___addToolBarButtonItem];
        *(v47 + 48) = v51;
        v72 = v47;
        v52 = v51;
        v53 = [v32 traitCollection];
        v54 = [v53 horizontalSizeClass];

        if (v54 != 1 || (v55 = [v32 traitCollection], v56 = objc_msgSend(v55, "userInterfaceIdiom"), v55, v56 == 6))
        {
          v57 = [v49 fixedSpaceItem];
          sub_1003C063C(0, 0, v57);

          v58 = [v49 fixedSpaceItem];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v32 setToolbarItems:isa];

        v60 = [v32 navigationController];
        [v60 setToolbarHidden:0 animated:0];
      }
    }

    v61 = sub_1006DF074();
    return (v39)(v66, v71, v61);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006CD550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v5[4] = swift_task_alloc();
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  v5[5] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  v5[6] = swift_task_alloc();
  v6 = type metadata accessor for Playlist();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_10010FC20(&unk_10119F040, &qword_100ECF3F0);
  v5[10] = v7;
  v8 = *(v7 - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v5[15] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011921D8, &qword_100ECF3F8);
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_1006CD7D4, 0, 0);
}

uint64_t sub_1006CD7D4()
{
  v1 = v0[15];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[2];
  type metadata accessor for Playlist.Entry();
  MusicLibraryRequest.init()();
  MusicLibraryRequest.ignoreExplicitContentRestrictions.setter();
  swift_getKeyPath();
  v5 = *(v3 + 16);
  v0[19] = v5;
  v0[20] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_1006E1788(&qword_101186EC0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  MusicLibraryRequest<>.filter<A>(matching:equalTo:)();

  sub_1000095E8(v1, &unk_1011814D0, &qword_100EC12A0);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1006CD98C;
  v7 = v0[16];
  v8 = v0[14];

  return MusicLibraryRequest.response()(v8, v7);
}

uint64_t sub_1006CD98C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1006CE050;
  }

  else
  {
    v2 = sub_1006CDAA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_1006CDAA0()
{
  v1 = v0[19];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[2];
  type metadata accessor for MusicLibraryPlaylistEditViewModel();
  v1(v2, v6, v4);
  MusicLibraryResponse.items.getter();
  v7 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  v8 = type metadata accessor for SocialProfile();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  sub_100020674(&unk_10119F050, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  v0[23] = MusicLibraryPlaylistEditViewModel.__allocating_init<A>(_:entries:author:library:)();
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v10 = result;
    [result cloudAddToPlaylistBehavior];

    dispatch thunk of MusicLibraryPlaylistEditViewModel.addInsertedEntriesToLibrary.setter();
    v12 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing());
    v11 = swift_task_alloc();
    v0[24] = v11;
    *v11 = v0;
    v11[1] = sub_1006CDCE8;

    return v12();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006CDCE8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1006CE264;
  }

  else
  {
    v2 = sub_1006CDDFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006CDDFC()
{
  v1 = v0[23];
  v2 = v0[17];
  v17 = v0[16];
  v18 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[10];
  v7 = v0[4];
  v15 = v3;
  v16 = v7;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v4, v3, v6);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v10;
  *(v12 + 3) = &protocol witness table for MainActor;
  *(v12 + 4) = v9;
  *(v12 + 5) = v1;
  (*(v5 + 32))(&v12[v11], v4, v6);

  sub_1001F4CB8(0, 0, v16, &unk_100EDE318, v12);

  (*(v5 + 8))(v15, v6);
  (*(v2 + 8))(v18, v17);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1006CE050()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to load entries and setup edit controller with error=%@", v4, 0xCu);
    sub_1000095E8(v5, &unk_101183D70, &unk_100EC6540);
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006CE264()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];

  (*(v3 + 8))(v1, v2);
  (*(v0[17] + 8))(v0[18], v0[16]);
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101219770);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to load entries and setup edit controller with error=%@", v7, 0xCu);
    sub_1000095E8(v8, &unk_101183D70, &unk_100EC6540);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006CE4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_10119F060, &qword_100EDE328);
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v9 = sub_10010FC20(&unk_10119F040, &qword_100ECF3F0);
  v6[19] = v9;
  v10 = *(v9 - 8);
  v6[20] = v10;
  v6[21] = *(v10 + 64);
  v6[22] = swift_task_alloc();
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  v6[23] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_10119F068, &qword_100EDE330);
  v6[24] = v11;
  v6[25] = *(v11 - 8);
  v6[26] = swift_task_alloc();
  v12 = sub_10010FC20(&qword_10119F070, &unk_100EDE338);
  v6[27] = v12;
  v6[28] = *(v12 - 8);
  v6[29] = swift_task_alloc();
  v13 = type metadata accessor for Playlist.EditableComponents();
  v6[30] = v13;
  v6[31] = *(v13 - 8);
  v6[32] = swift_task_alloc();
  v14 = type metadata accessor for Playlist();
  v6[33] = v14;
  v6[34] = *(v14 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  v6[37] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[38] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006CE880, v16, v15);
}

uint64_t sub_1006CE880()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[36];
    v4 = v0[37];
    v5 = v0[33];
    v6 = v0[34];
    v7 = v0[30];
    v8 = v0[31];
    v9 = *(v6 + 16);
    v52 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
    v9(v3, Strong + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v5);
    Playlist.editableComponents.getter();
    v50 = *(v6 + 8);
    v50(v3, v5);
    v10 = (*(v8 + 48))(v4, 1, v7);
    v11 = v0[37];
    if (v10 == 1)
    {
      sub_1000095E8(v0[37], &unk_10118D240, &unk_100EC8F50);
    }

    else
    {
      v13 = v0[31];
      v12 = v0[32];
      v14 = v0[30];
      static Playlist.EditableComponents.tracklist.getter();
      sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
      v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v49 = v9;
      v16 = *(v13 + 8);
      v16(v12, v14);
      v16(v11, v14);
      if (v15)
      {
        v47 = v0[28];
        v48 = v0[29];
        v17 = v0[26];
        v18 = v0[24];
        v19 = v0[23];
        v45 = v0[21];
        v46 = v0[27];
        v39 = v0[25];
        v41 = v0[20];
        v43 = v0[19];
        v44 = v0[22];
        v42 = v0[12];
        dispatch thunk of MusicLibraryPlaylistEditViewModel.$entries.getter();
        sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
        v20 = static OS_dispatch_queue.main.getter();
        v0[9] = v20;
        v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
        sub_100020674(&qword_10119F080, &qword_10119F068, &qword_100EDE330, &protocol conformance descriptor for Published<A>.Publisher);
        sub_1000206BC();
        Publisher.receive<A>(on:options:)();
        sub_1000095E8(v19, &qword_101182140, &unk_100EBD2A0);

        v9 = v49;
        (*(v39 + 8))(v17, v18);
        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        (*(v41 + 16))(v44, v42, v43);
        v22 = (*(v41 + 80) + 16) & ~*(v41 + 80);
        v23 = swift_allocObject();
        (*(v41 + 32))(v23 + v22, v44, v43);
        *(v23 + ((v45 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v40;
        sub_100020674(&qword_10119F088, &qword_10119F070, &unk_100EDE338, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        v24 = Publisher<>.sink(receiveValue:)();

        (*(v47 + 8))(v48, v46);
        *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editControllerEntriesSubscription] = v24;
      }
    }

    v25 = v0[35];
    v26 = v0[33];
    *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController] = v0[11];

    [v2 setEditing:1 animated:1];
    v27 = sub_1006D1794();
    [v27 reloadData];

    v9(v25, &v2[v52], v26);
    v28 = sub_1006CF48C();
    v50(v25, v26);
    LOBYTE(v25) = sub_100031064(1u, v28);

    if (v25)
    {
      v29 = v0[23];
      v30 = v0[18];
      v53 = v0[17];
      v31 = v0[15];
      v51 = v0[16];
      v33 = v0[13];
      v32 = v0[14];
      sub_1006D2BA8();
      swift_beginAccess();
      sub_10010FC20(&qword_101184258, &qword_100EC3610);
      Published.projectedValue.getter();
      swift_endAccess();

      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v34 = static OS_dispatch_queue.main.getter();
      v0[8] = v34;
      v35 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v35 - 8) + 56))(v29, 1, 1, v35);
      sub_100020674(&qword_101184270, &qword_101184218, &qword_100EDE320, &protocol conformance descriptor for Published<A>.Publisher);
      sub_1000206BC();
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v29, &qword_101182140, &unk_100EBD2A0);

      (*(v32 + 8))(v31, v33);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100020674(&qword_10119F078, &qword_10119F060, &qword_100EDE328, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v36 = Publisher<>.sink(receiveValue:)();

      (*(v53 + 8))(v30, v51);
      *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataTitleSubscription] = v36;
    }

    else
    {
    }
  }

  v37 = v0[1];

  return v37();
}

void sub_1006CF02C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  sub_10010FC20(&qword_101184230, &unk_100EDE0D0);
  __chkstk_darwin();
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = (&v24 - v5);
  v6 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = *a1;
  v28 = *a1;
  type metadata accessor for Playlist.Entry();

  sub_10010FC20(&qword_10119F090, &qword_100EE4C40);
  sub_100020674(&qword_10119F098, &qword_10119F090, &qword_100EE4C40, &protocol conformance descriptor for [A]);
  MusicItemCollection.init<A>(_:)();
  sub_10010FC20(&unk_10119F040, &qword_100ECF3F0);
  MusicLibraryResponse.items.getter();
  sub_1006E2DEC();
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v11, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_hasTracklistChanges] = (v13 & 1) == 0;
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    sub_1006D2BA8();

    v18 = v25;
    *v25 = v12;
    v19 = type metadata accessor for PlaylistCovers.Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v18, v26, &qword_101184230, &unk_100EDE0D0);

    static Published.subscript.setter();
    sub_1000095E8(v18, &qword_101184230, &unk_100EDE0D0);
  }

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_101219770);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = (v13 & 1) == 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "🆕 Entries changed, hasTracklistChanges=%{BOOL}d", v23, 8u);
  }
}

void *sub_1006CF48C()
{
  v1 = type metadata accessor for Playlist.Variant();
  v48 = *(v1 - 8);
  __chkstk_darwin();
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&unk_1011A4670, &qword_100EBF808);
  __chkstk_darwin();
  v5 = &v43 - v4;
  sub_10010FC20(&unk_10119EF50, &unk_100EDDF70);
  __chkstk_darwin();
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v49 = &v43 - v7;
  __chkstk_darwin();
  v47 = &v43 - v8;
  sub_10010FC20(&qword_101183AD0, &qword_100EBE4D8);
  __chkstk_darwin();
  v10 = (&v43 - v9);
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v12 = &v43 - v11;
  v13 = type metadata accessor for Playlist.EditableComponents();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  __chkstk_darwin();
  v18 = &v43 - v17;
  v46 = v0;
  Playlist.editableComponents.getter();
  if ((*(v14 + 48))(v18, 1, v13) == 1)
  {
    sub_1000095E8(v18, &unk_10118D240, &unk_100EC8F50);
    return &_swiftEmptySetSingleton;
  }

  v43 = v5;
  static Playlist.EditableComponents.metadata.getter();
  sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
  v19 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v20 = *(v14 + 8);
  v20(v16, v13);
  v20(v18, v13);
  if ((v19 & 1) == 0)
  {
    return &_swiftEmptySetSingleton;
  }

  v51 = sub_10010E580(&off_10109C1E0);
  if (qword_10117F278 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  v21 = type metadata accessor for UserProfile();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) != 1)
  {
    v25 = v1;
    UserProfile.socialProfile.getter();
    (*(v22 + 8))(v10, v21);
    v26 = type metadata accessor for SocialProfile();
    if ((*(*(v26 - 8) + 48))(v12, 1, v26) == 1)
    {
      goto LABEL_10;
    }

    sub_1000095E8(v12, &qword_101186E00, &qword_100EC31E0);
    static ApplicationCapabilities.shared.getter(v52);
    v30 = v53;

    sub_100014984(v52);
    v31 = sub_10048BBDC(3, v30);

    if ((v31 & 1) == 0)
    {
      return v51;
    }

    v32 = v47;
    Playlist.variant.getter();
    v34 = v48;
    v33 = v49;
    (*(v48 + 104))(v49, enum case for Playlist.Variant.smart(_:), v1);
    (*(v34 + 56))(v33, 0, 1, v1);
    v35 = *(v3 + 48);
    v36 = v43;
    sub_1000089F8(v32, v43, &unk_10119EF50, &unk_100EDDF70);
    sub_1000089F8(v33, v36 + v35, &unk_10119EF50, &unk_100EDDF70);
    v37 = *(v34 + 48);
    if (v37(v36, 1, v25) == 1)
    {
      sub_1000095E8(v33, &unk_10119EF50, &unk_100EDDF70);
      sub_1000095E8(v32, &unk_10119EF50, &unk_100EDDF70);
      if (v37(v36 + v35, 1, v25) == 1)
      {
        v27 = &unk_10119EF50;
        v28 = &unk_100EDDF70;
        v29 = v36;
        goto LABEL_11;
      }
    }

    else
    {
      v38 = v45;
      sub_1000089F8(v36, v45, &unk_10119EF50, &unk_100EDDF70);
      if (v37(v36 + v35, 1, v25) != 1)
      {
        v39 = v36 + v35;
        v40 = v44;
        (*(v34 + 32))(v44, v39, v25);
        sub_1006E1788(&unk_1011A4680, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        v42 = *(v34 + 8);
        v42(v40, v25);
        sub_1000095E8(v49, &unk_10119EF50, &unk_100EDDF70);
        sub_1000095E8(v32, &unk_10119EF50, &unk_100EDDF70);
        v42(v38, v25);
        sub_1000095E8(v36, &unk_10119EF50, &unk_100EDDF70);
        if (v41)
        {
          return v51;
        }

        goto LABEL_20;
      }

      sub_1000095E8(v49, &unk_10119EF50, &unk_100EDDF70);
      sub_1000095E8(v32, &unk_10119EF50, &unk_100EDDF70);
      (*(v34 + 8))(v38, v25);
    }

    sub_1000095E8(v36, &unk_1011A4670, &qword_100EBF808);
LABEL_20:
    sub_1003B37A0(&v50, 3);
    return v51;
  }

  sub_1000095E8(v10, &qword_101183AD0, &qword_100EBE4D8);
  v23 = type metadata accessor for SocialProfile();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
LABEL_10:
  v27 = &qword_101186E00;
  v28 = &qword_100EC31E0;
  v29 = v12;
LABEL_11:
  sub_1000095E8(v29, v27, v28);
  return v51;
}

void sub_1006CFD6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1006D2118();

    v5 = String.trim()();

    v6 = (v5._object >> 56) & 0xF;
    if ((v5._object & 0x2000000000000000) == 0)
    {
      v6 = v5._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    [(objc_class *)v4 setEnabled:v6 != 0];
  }
}

void sub_1006CFE60(char a1, __n128 a2)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for PlaylistEditingViewController(0);
  objc_msgSendSuper2(&v8, "viewIsAppearing:", a1 & 1);
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 window];

    if (v6)
    {
      sub_10010FC20(&unk_101182D80, "ʫ\n");
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100EBC6B0;
      *(v7 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
      *(v7 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for Window();
      UIView.registerForTraitChanges<A>(_:handler:)();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_1006CFFA4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_1006D2BA8();

    v10 = [a1 traitCollection];
    [v10 horizontalSizeClass];

    UserInterfaceSizeClass.init(_:)();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v7, v5, &unk_101184290, &qword_100EC0E60);
    static Published.subscript.setter();
    return sub_1000095E8(v7, &unk_101184290, &qword_100EC0E60);
  }

  return result;
}

void sub_1006D0184(__n128 a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for PlaylistEditingViewController(0);
  objc_msgSendSuper2(&v15, "viewWillLayoutSubviews");
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 window];

    if (v4 && (v5 = [v4 windowScene], v4, v5))
    {
      v6 = [v5 effectiveGeometry];

      v7 = [v6 coordinateSpace];
      [v7 bounds];
      v9 = v8;
      v11 = v10;
      swift_unknownObjectRelease();
      v12 = 0;
      v13 = v9;
      v14 = v11;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v12 = 1;
    }

    sub_1006DEEF8(v13, v14, v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1006D03A4(int a1, char a2, __n128 a3)
{
  v4 = v3;
  v7 = type metadata accessor for Playlist.EditableComponents();
  v57 = *(v7 - 8);
  __chkstk_darwin();
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Playlist();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v50 - v12;
  __chkstk_darwin();
  v15 = &v50 - v14;
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  __chkstk_darwin();
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v50 - v17;
  __chkstk_darwin();
  v19 = &v50 - v18;
  v20 = type metadata accessor for PlaylistEditingViewController(0);
  v58.receiver = v4;
  v58.super_class = v20;
  objc_msgSendSuper2(&v58, "setEditing:animated:", a1 & 1, a2 & 1);
  v21 = sub_1006D1794();
  v56 = v10;
  if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(v10 + 16))(v15, &v4[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v9);
  Playlist.editableComponents.getter();
  (*(v10 + 8))(v15, v9);
  if ((*(v57 + 48))(v19, 1, v7) == 1)
  {
    sub_1000095E8(v19, &unk_10118D240, &unk_100EC8F50);
LABEL_4:
    v22 = 0;
    goto LABEL_6;
  }

  v50 = v9;
  v23 = v53;
  static Playlist.EditableComponents.tracklist.getter();
  sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
  v22 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v51 = a1;
  v24 = *(v57 + 8);
  v25 = v23;
  v9 = v50;
  v24(v25, v7);
  v24(v19, v7);
  LOBYTE(a1) = v51;
LABEL_6:
  v26 = v54;
  [v21 setEditing:v22 & 1];

  v27 = sub_1006D2B28();
  if ((a1 & 1) == 0)
  {
LABEL_9:
    v29 = 0;
    goto LABEL_11;
  }

  v28 = v56;
  (*(v56 + 16))(v13, &v4[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v9);
  Playlist.editableComponents.getter();
  (*(v28 + 8))(v13, v9);
  if ((*(v57 + 48))(v26, 1, v7) == 1)
  {
    sub_1000095E8(v26, &unk_10118D240, &unk_100EC8F50);
    goto LABEL_9;
  }

  v30 = v9;
  v31 = v53;
  static Playlist.EditableComponents.tracklist.getter();
  sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
  v29 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v32 = *(v57 + 8);
  v33 = v31;
  v9 = v30;
  v32(v33, v7);
  v32(v26, v7);
LABEL_11:
  [(objc_class *)v27 setEnabled:v29 & 1];

  v34 = [*&v4[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView] indexPathsForSelectedItems];
  v35 = v56;
  if (v34)
  {
    v36 = v34;
    type metadata accessor for IndexPath();
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = *(v37 + 16);

    v39 = v38 != 0;
  }

  else
  {
    v39 = 0;
  }

  v40 = v55;
  v41 = sub_1006D251C();
  if (a1)
  {
    v42 = v52;
    (*(v35 + 16))(v52, &v4[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v9);
    Playlist.editableComponents.getter();
    (*(v35 + 8))(v42, v9);
    if ((*(v57 + 48))(v40, 1, v7) == 1)
    {
      sub_1000095E8(v40, &unk_10118D240, &unk_100EC8F50);
    }

    else
    {
      v43 = v53;
      static Playlist.EditableComponents.tracklist.getter();
      sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
      v44 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v45 = *(v57 + 8);
      v45(v43, v7);
      v45(v40, v7);
      if (v44)
      {
        goto LABEL_19;
      }
    }
  }

  v39 = 0;
LABEL_19:
  [(objc_class *)v41 setEnabled:v39];

  v46 = sub_1006D20F4();
  [(objc_class *)v46 setEnabled:a1 & 1];

  if (a1)
  {
    v47 = sub_1006D2118();
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v47 = static UIBarButtonItem.loading.getter();
  }

  v48 = v47;
  v49 = [v4 navigationItem];
  [v49 setRightBarButtonItem:v48 animated:1];
}

uint64_t sub_1006D0BA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10010FC20(&qword_10119EC88, &qword_100EDDAF8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v15 - v8;
  v10 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v11 = *v10 == a2 && v10[1] == a3;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_1006D7488(v9);
    sub_10010FC20(&qword_10119EFC8, &qword_100EDE058);
    v12 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
    (*(v7 + 8))(v9, v6);
    return v12;
  }

  else
  {
    strcpy(v15, "Unknown kind=");
    v15[7] = -4864;
    v14._countAndFlagsBits = a2;
    v14._object = a3;
    String.append(_:)(v14);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1006D0EA8(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v5 = &v17 - v4;
  v6 = sub_10010FC20(qword_10119ECA0, &qword_100EDDB00);
  v20 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = type metadata accessor for Playlist.Entry();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  if (*(v2 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController))
  {

    v13 = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

    v14 = IndexPath.item.getter();
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *(v13 + 16))
    {
      v15 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14;
      v17 = a1;
      v18 = v6;
      v16 = *(v10 + 16);
      v16(v12, v15, v9);

      sub_1006D79B0(v8);
      v16(v5, v12, v9);
      (*(v10 + 56))(v5, 0, 1, v9);
      sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
      UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1000095E8(v5, &qword_101191570, &qword_100ECE0B0);
      (*(v20 + 8))(v8, v18);
      (*(v10 + 8))(v12, v9);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1006D1414(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

id sub_1006D1794()
{
  v1 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView;
  v2 = *&v0[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView];
LABEL_6:
    v21 = v2;
    return v3;
  }

  v4 = sub_1006D19A4();
  v5 = [objc_allocWithZone(UICollectionView) initWithFrame:v4 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setDelegate:v0];
  [v7 setDataSource:v0];
  result = [v0 view];
  if (result)
  {
    v10 = result;
    [result frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v7 setFrame:{v12, v14, v16, v18}];
    [v7 setAutoresizingMask:18];

    v3 = v7;
    [v3 setKeyboardDismissMode:1];
    [v3 setAllowsMultipleSelectionDuringEditing:1];
    result = [v0 view];
    if (result)
    {
      v19 = result;
      [result addSubview:v3];

      [v0 setContentScrollView:v3 forEdge:1];
      v20 = *&v0[v1];
      *&v0[v1] = v3;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1006D19A4()
{
  v1 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___mainLayout;
  v2 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___mainLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___mainLayout);
  }

  else
  {
    v4 = sub_1006D1A08(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1006D1A08(uint64_t a1)
{
  v1 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension:1.0];
  v4 = [v2 estimatedDimension:300.0];
  v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

  v6 = v5;
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v6 elementKind:v7 alignment:1];

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6C0;
  *(v9 + 32) = v8;
  sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
  v10 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setBoundarySupplementaryItems:isa];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  v14 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v18[4] = sub_1006E2AFC;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1005A63A8;
  v18[3] = &unk_1010BB538;
  v15 = _Block_copy(v18);

  v16 = [v14 initWithSectionProvider:v15 configuration:v1];

  _Block_release(v15);

  return v16;
}

void *sub_1006D1CD4(__n128 a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v37 = a3;
  v6 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for UICollectionLayoutListConfiguration();
  v14 = *(v38 - 8);
  __chkstk_darwin();
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a4 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v10);
  UICollectionLayoutListConfiguration.init(appearance:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = sub_1006D1794();

    [v19 directionalLayoutMargins];
    v21 = v20;

    v22 = v21 + v21;
  }

  else
  {
    v22 = 0.0;
  }

  (*(v7 + 104))(v9, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v6);
  v23 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  v23(v40, 0);
  v24 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  v25 = UIListSeparatorConfiguration.bottomSeparatorInsets.modify();
  *(v26 + 24) = v22;
  v25(v39, 0);
  v24(v40, 0);
  sub_100009F78(0, &qword_101191398, NSCollectionLayoutSection_ptr);
  v27 = v37;
  v28 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (!v29 || (v30 = v29, v31 = [v29 presentingViewController], v30, !v31) || (v32 = objc_msgSend(v31, "traitCollection"), v31, !v32))
  {
    v32 = [v27 traitCollection];
  }

  v33 = [v32 horizontalSizeClass];
  v34 = 0.0;
  if (v33 != 1)
  {
    v34 = Int.seconds.getter(25);
  }

  [v28 setContentInsets:{0.0, v34, 0.0, v34}];

  (*(v14 + 8))(v16, v38);
  return v28;
}

objc_class *sub_1006D213C(uint64_t *a1, uint64_t a2, UIBarButtonSystemItem a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v3;
    v13.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13.is_nil = 0;
    v9.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(a3, v13, v14).super.super.isa;
    v10 = *(v3 + v4);
    *(v8 + v4) = v9;
    v6 = v9.super.super.isa;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

double sub_1006D225C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a2;
  sub_1001F4F78(0, 0, v4, &unk_100EDE2C0, v7);

  return result;
}

uint64_t sub_1006D2380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1006D2418, v6, v5);
}

uint64_t sub_1006D2418()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1001EF8A0;

    return sub_1006DC594();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

void sub_1006D2540(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1006D1794();
    v5 = [v4 indexPathsForSelectedItems];

    if (v5)
    {
      type metadata accessor for IndexPath();
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = *(v6 + 16);
    }

    else
    {
      v7 = 0;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8._countAndFlagsBits = 0x206574656C6544;
    v8._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
    aBlock = v7;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v9._countAndFlagsBits = 0x297328676E6F7320;
    v9._object = 0xE90000000000003FLL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0xD000000000000020;
    v10._object = 0x8000000100E55590;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
    aBlock = v7;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v11._object = 0x8000000100E555C0;
    v11._countAndFlagsBits = 0xD00000000000001BLL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v12 = String._bridgeToObjectiveC()();

    v13 = String._bridgeToObjectiveC()();

    v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v16 = String._bridgeToObjectiveC()();

    v27 = sub_1006E2990;
    v28 = v15;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10027D328;
    v26 = &unk_1010BB498;
    v17 = _Block_copy(&aBlock);

    v18 = objc_opt_self();
    v19 = [v18 actionWithTitle:v16 style:2 handler:v17];
    _Block_release(v17);

    [v14 addAction:v19];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v20 = String._bridgeToObjectiveC()();

    v27 = UIScreen.Dimensions.size.getter;
    v28 = 0;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10027D328;
    v26 = &unk_1010BB4C0;
    v21 = _Block_copy(&aBlock);

    v22 = [v18 actionWithTitle:v20 style:1 handler:v21];
    _Block_release(v21);

    [v14 addAction:v22];
    [v3 presentViewController:v14 animated:1 completion:0];
  }
}

void sub_1006D2B4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

id sub_1006D2BA8()
{
  v1 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___metadataViewModel;
  if (*&v0[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___metadataViewModel])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___metadataViewModel];
  }

  else
  {
    v2 = sub_1006D2C10(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

id sub_1006D2C10(char *a1)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v81 = &v81 - v2;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v82 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v81 - v4;
  sub_10010FC20(&qword_101184230, &unk_100EDE0D0);
  __chkstk_darwin();
  v85 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = (&v81 - v6);
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v87 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v94 = &v81 - v8;
  v9 = type metadata accessor for Playlist();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v93 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v81 - v12;
  __chkstk_darwin();
  v89 = &v81 - v13;
  __chkstk_darwin();
  v15 = &v81 - v14;
  __chkstk_darwin();
  v17 = &v81 - v16;
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v88 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v81 - v19;
  _s8MetadataO5ModelCMa(0);
  swift_allocObject();
  v98 = sub_1004F627C();
  v99 = a1;
  v20 = *(v10 + 16);
  v95 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
  v96 = v20;
  v21 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
  v20(v17, &a1[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v9);
  Playlist.artworkViewModel.getter(v94);
  v22 = *(v10 + 8);
  v97 = v10 + 8;
  v22(v17, v9);
  v91 = v22;
  v20(v15, &a1[v21], v9);
  v23 = v87;
  Playlist.variant.getter();
  v22(v15, v9);
  v24 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v24 - 8) + 56))(v23, 0, 11, v24);
  v25 = Corner.medium.unsafeMutableAddressor();
  v26 = *v25;
  v27 = v25[1];
  LOBYTE(a1) = *(v25 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v102);
  v28 = v86;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v94, v23, 0x3FF0000000000000, 0, v102, v26, v27, a1, v86);
  v29 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v28, v88, &unk_10119F000, &qword_100EC31D0);

  static Published.subscript.setter();
  sub_1000095E8(v28, &unk_10119F000, &qword_100EC31D0);
  v30 = v99;
  v31 = v95;
  v92 = v10 + 16;
  v96(v17, &v99[v95], v9);
  v32 = Playlist.name.getter();
  v34 = v33;
  v94 = v17;
  v35 = v17;
  v36 = v91;
  v91(v35, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v32;
  v101 = v34;

  static Published.subscript.setter();
  v37 = &v30[v31];
  v38 = v89;
  v39 = v96;
  v96(v89, v37, v9);
  v40 = Playlist.standardDescription.getter();
  v42 = v41;
  v36(v38, v9);
  if (v42)
  {
    v43 = v40;
  }

  else
  {
    v43 = 0;
  }

  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v43;
  v101 = v44;

  static Published.subscript.setter();
  v45 = v99;
  v46 = v90;
  v39(v90, &v99[v31], v9);
  v47 = Playlist.isVisible.getter();
  v36(v46, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v100) = v47 & 1;

  static Published.subscript.setter();
  v48 = v95;
  v49 = v93;
  v39(v93, &v45[v95], v9);
  v50 = Playlist.curatorName.getter();
  v52 = v51;
  v93 = v9;
  v36(v49, v9);
  if (!v52)
  {
    v54 = v93;
    v53 = v94;
    v39(v94, &v99[v48], v93);
    v50 = sub_10034E2C4();
    v52 = v55;
    v36(v53, v54);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v50;
  v101 = v52;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v100) = 1;

  static Published.subscript.setter();
  v56 = v99;
  v58 = v93;
  v57 = v94;
  v39(v94, &v99[v48], v93);
  v59 = sub_1006CF48C();
  v36(v57, v58);
  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v59;

  result = static Published.subscript.setter();
  if (!*&v56[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController])
  {
    __break(1u);
    goto LABEL_17;
  }

  v61 = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

  v62 = v84;
  *v84 = v61;
  v63 = type metadata accessor for PlaylistCovers.Source(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v62, v85, &qword_101184230, &unk_100EDE0D0);

  static Published.subscript.setter();
  sub_1000095E8(v62, &qword_101184230, &unk_100EDE0D0);
  result = [v99 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v64 = result;
  v65 = [result window];

  if (v65)
  {
    v66 = [v65 traitCollection];
    [v66 horizontalSizeClass];

    v67 = v83;
    UserInterfaceSizeClass.init(_:)();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v67, v82, &unk_101184290, &qword_100EC0E60);

    static Published.subscript.setter();

    sub_1000095E8(v67, &unk_101184290, &qword_100EC0E60);
  }

  v68 = v94;
  v69 = v93;
  v96(v94, &v99[v95], v93);
  v70 = sub_1006CF48C();
  v91(v68, v69);
  LOBYTE(v68) = sub_100031064(0, v70);

  if (v68)
  {
    v71 = v99;
    v72 = [v99 traitCollection];
    [v72 displayScale];
    v74 = v73;

    v75 = type metadata accessor for TaskPriority();
    v76 = v81;
    (*(*(v75 - 8) + 56))(v81, 1, 1, v75);
    type metadata accessor for MainActor();
    v77 = v98;

    v78 = v71;
    v79 = static MainActor.shared.getter();
    v80 = swift_allocObject();
    v80[2] = v79;
    v80[3] = &protocol witness table for MainActor;
    v80[4] = v78;
    v80[5] = v77;
    v80[6] = v74;
    sub_1001F4CB8(0, 0, v76, &unk_100EDE250, v80);
  }

  return v98;
}

uint64_t sub_1006D38D0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 1632) = a1;
  *(v6 + 1624) = a6;
  *(v6 + 1616) = a5;
  sub_10010FC20(&unk_101195200, &qword_100EBFA50);
  *(v6 + 1640) = swift_task_alloc();
  *(v6 + 1648) = swift_task_alloc();
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  *(v6 + 1656) = swift_task_alloc();
  *(v6 + 1664) = swift_task_alloc();
  *(v6 + 1672) = sub_10010FC20(&unk_101191420, &unk_100EC9120);
  *(v6 + 1680) = swift_task_alloc();
  v7 = type metadata accessor for Artwork();
  *(v6 + 1688) = v7;
  *(v6 + 1696) = *(v7 - 8);
  *(v6 + 1704) = swift_task_alloc();
  *(v6 + 1712) = swift_task_alloc();
  *(v6 + 1720) = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  *(v6 + 1728) = swift_task_alloc();
  *(v6 + 1736) = swift_task_alloc();
  *(v6 + 1744) = swift_task_alloc();
  *(v6 + 1752) = swift_task_alloc();
  *(v6 + 1760) = swift_task_alloc();
  v8 = type metadata accessor for CoverArtworkRecipe.ExpressionID();
  *(v6 + 1768) = v8;
  *(v6 + 1776) = *(v8 - 8);
  *(v6 + 1784) = swift_task_alloc();
  sub_10010FC20(&unk_10119F010, &unk_100EDE2A0);
  *(v6 + 1792) = swift_task_alloc();
  v9 = type metadata accessor for Playlist();
  *(v6 + 1800) = v9;
  *(v6 + 1808) = *(v9 - 8);
  *(v6 + 1816) = swift_task_alloc();
  *(v6 + 1824) = swift_task_alloc();
  *(v6 + 1832) = swift_task_alloc();
  v10 = type metadata accessor for CoverArtworkRecipe();
  *(v6 + 1840) = v10;
  *(v6 + 1848) = *(v10 - 8);
  *(v6 + 1856) = swift_task_alloc();
  *(v6 + 1864) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 1872) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 1880) = v12;
  *(v6 + 1888) = v11;

  return _swift_task_switch(sub_1006D3C84, v12, v11);
}

uint64_t sub_1006D3C84()
{
  v103 = v0;
  v1 = *(v0 + 1848);
  v2 = *(v0 + 1840);
  v3 = *(v0 + 1832);
  v4 = *(v0 + 1808);
  v5 = *(v0 + 1800);
  v6 = *(v0 + 1792);
  v7 = *(v0 + 1616);
  v96 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
  v97 = *(v4 + 16);
  v97(v3, v7 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v5);
  Playlist.coverArtworkRecipe.getter();
  v99 = *(v4 + 8);
  v99(v3, v5);
  if ((*(v1 + 48))(v6, 1, v2) == 1)
  {
    sub_1000095E8(*(v0 + 1792), &unk_10119F010, &unk_100EDE2A0);
    goto LABEL_9;
  }

  (*(*(v0 + 1848) + 32))(*(v0 + 1864), *(v0 + 1792), *(v0 + 1840));
  sub_1006D6018(v0 + 1512);
  if (!*(v0 + 1520))
  {
    (*(*(v0 + 1848) + 8))(*(v0 + 1864), *(v0 + 1840));
LABEL_9:
    v26 = *(v0 + 1824);
    v27 = *(v0 + 1816);
    v28 = *(v0 + 1800);
    v29 = *(v0 + 1752);
    v93 = *(v0 + 1696);
    v95 = *(v0 + 1688);
    v97(v26, v7 + v96, v28);
    Playlist.tracksTiledArtwork.getter();
    v99(v26, v28);
    v97(v27, v7 + v96, v28);
    Playlist.artwork.getter();
    v99(v27, v28);
    v30 = *(v93 + 48);
    *(v0 + 1936) = v30;
    *(v0 + 1944) = (v93 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v30(v29, 1, v95) == 1)
    {
      sub_1000095E8(*(v0 + 1752), &unk_101188920, &qword_100EBCC50);
LABEL_24:
      v70 = *(v0 + 1936);
      v71 = *(v0 + 1728);
      v72 = *(v0 + 1688);
      sub_1000089F8(*(v0 + 1760), v71, &unk_101188920, &qword_100EBCC50);
      if (v70(v71, 1, v72) == 1)
      {
        v73 = *(v0 + 1728);

        sub_1000095E8(v73, &unk_101188920, &qword_100EBCC50);
        if (qword_10117FE30 != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        sub_1000060E4(v74, qword_101219770);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        v77 = os_log_type_enabled(v75, v76);
        v78 = *(v0 + 1760);
        if (v77)
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&_mh_execute_header, v75, v76, "🖼️ Placeholder", v79, 2u);
        }

        sub_1000095E8(v78, &unk_101188920, &qword_100EBCC50);

        v80 = *(v0 + 8);

        return v80();
      }

      (*(*(v0 + 1696) + 32))(*(v0 + 1704), *(v0 + 1728), *(v0 + 1688));
      v46 = sub_1006D56D0;
      goto LABEL_33;
    }

    v31 = *(v0 + 1744);
    v32 = *(v0 + 1720);
    v33 = *(v0 + 1696);
    v34 = *(v0 + 1688);
    v35 = *(v0 + 1680);
    v36 = *(v0 + 1672);
    v98 = *(v33 + 32);
    v100 = *(v0 + 1760);
    v98(v32, *(v0 + 1752), v34);
    (*(v33 + 16))(v31, v32, v34);
    (*(v33 + 56))(v31, 0, 1, v34);
    v37 = *(v36 + 48);
    sub_1000089F8(v31, v35, &unk_101188920, &qword_100EBCC50);
    sub_1000089F8(v100, v35 + v37, &unk_101188920, &qword_100EBCC50);
    if (v30(v35, 1, v34) == 1)
    {
      v38 = *(v0 + 1688);
      sub_1000095E8(*(v0 + 1744), &unk_101188920, &qword_100EBCC50);
      if (v30(v35 + v37, 1, v38) == 1)
      {
        v39 = *(v0 + 1696);
        sub_1000095E8(*(v0 + 1680), &unk_101188920, &qword_100EBCC50);
        (*(v39 + 8))(*(v0 + 1720), *(v0 + 1688));
        goto LABEL_24;
      }
    }

    else
    {
      v40 = *(v0 + 1688);
      sub_1000089F8(*(v0 + 1680), *(v0 + 1736), &unk_101188920, &qword_100EBCC50);
      v41 = v30(v35 + v37, 1, v40);
      v42 = *(v0 + 1744);
      v43 = *(v0 + 1736);
      if (v41 != 1)
      {
        v65 = *(v0 + 1712);
        v66 = *(v0 + 1696);
        v67 = *(v0 + 1688);
        v101 = *(v0 + 1680);
        v98(v65, v35 + v37, v67);
        sub_1006E1788(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        v68 = dispatch thunk of static Equatable.== infix(_:_:)();
        v69 = *(v66 + 8);
        v69(v65, v67);
        sub_1000095E8(v42, &unk_101188920, &qword_100EBCC50);
        v69(v43, v67);
        sub_1000095E8(v101, &unk_101188920, &qword_100EBCC50);
        if (v68)
        {
          v69(*(v0 + 1720), *(v0 + 1688));
          goto LABEL_24;
        }

LABEL_17:
        v46 = sub_1006D4CC0;
LABEL_33:

        return _swift_task_switch(v46, 0, 0);
      }

      v44 = *(v0 + 1696);
      v45 = *(v0 + 1688);
      sub_1000095E8(*(v0 + 1744), &unk_101188920, &qword_100EBCC50);
      (*(v44 + 8))(v43, v45);
    }

    sub_1000095E8(*(v0 + 1680), &unk_101191420, &unk_100EC9120);
    goto LABEL_17;
  }

  v90 = *(v0 + 1520);
  v88 = *(v0 + 1528);
  v89 = *(v0 + 1536);
  v91 = *(v0 + 1544);
  v92 = *(v0 + 1552);
  v94 = *(v0 + 1560);
  v87 = *(v0 + 1512);
  v8 = *(v0 + 1544);
  *(v0 + 1568) = *(v0 + 1528);
  *(v0 + 1584) = v8;
  *(v0 + 1600) = *(v0 + 1560);
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 1864);
  v10 = *(v0 + 1856);
  v11 = *(v0 + 1848);
  v12 = *(v0 + 1840);
  v13 = type metadata accessor for Logger();
  sub_1000060E4(v13, qword_101219770);
  (*(v11 + 16))(v10, v9, v12);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 1856);
  v18 = *(v0 + 1848);
  v86 = *(v0 + 1840);
  if (v16)
  {
    v19 = *(v0 + 1784);
    v85 = v15;
    v20 = *(v0 + 1776);
    v81 = *(v0 + 1768);
    v82 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v102 = v84;
    *v82 = 136315138;
    v83 = v14;
    CoverArtworkRecipe.expressionID.getter();
    sub_1006E1788(&unk_10119F030, &type metadata accessor for CoverArtworkRecipe.ExpressionID, &protocol conformance descriptor for CoverArtworkRecipe.ExpressionID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v20 + 8))(v19, v81);
    v24 = *(v18 + 8);
    v24(v17, v86);
    v25 = sub_1000105AC(v21, v23, &v102);

    *(v82 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v83, v85, "🖼️ recipe=%s", v82, 0xCu);
    sub_10000959C(v84);
  }

  else
  {

    v24 = *(v18 + 8);
    v24(v17, v86);
  }

  *(v0 + 1896) = v24;
  v47 = *(v0 + 1824);
  v48 = *(v0 + 1800);
  sub_10010FC20(&unk_10119F020, &qword_100ECF100);
  v49 = swift_allocObject();
  *(v0 + 1904) = v49;
  *(v49 + 16) = xmmword_100EBC6B0;
  *(v49 + 32) = v87;
  *(v49 + 40) = v90;
  v50 = *(v0 + 1584);
  *(v49 + 48) = *(v0 + 1568);
  *(v49 + 64) = v50;
  *(v49 + 80) = *(v0 + 1600);
  v97(v47, v7 + v96, v48);
  v51 = v90;
  v52 = v88;
  v53 = v89;
  v54 = v91;
  v55 = v92;
  v56 = v94;
  v57 = Playlist.name.getter();
  v59 = v58;
  *(v0 + 1912) = v58;
  v99(v47, v48);
  v60 = PlaylistCovers.Specs.coverSize.unsafeMutableAddressor();
  v61 = *v60;
  v62 = v60[1];
  v63 = swift_task_alloc();
  *(v0 + 1920) = v63;
  *v63 = v0;
  v63[1] = sub_1006D484C;

  return static PlaylistCovers.carouselItems(from:playlistTitle:size:)(v49, v57, v59, v61, v62);
}

uint64_t sub_1006D484C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1904);
  *(*v1 + 1928) = a1;

  swift_setDeallocating();
  sub_100501490(v3 + 32);
  swift_deallocClassInstance();

  v4 = *(v2 + 1888);
  v5 = *(v2 + 1880);

  return _swift_task_switch(sub_1006D49CC, v5, v4);
}

uint64_t sub_1006D49CC()
{
  v1 = (v0 + 832);
  v2 = *(v0 + 1928);

  if (*(v2 + 16))
  {
    v3 = *(v0 + 1928);
    *(v0 + 1104) = *(v3 + 32);
    v4 = *(v3 + 80);
    v5 = *(v3 + 96);
    v6 = *(v3 + 64);
    *(v0 + 1120) = *(v3 + 48);
    *(v0 + 1168) = v5;
    *(v0 + 1152) = v4;
    *(v0 + 1136) = v6;
    v8 = *(v3 + 128);
    v7 = *(v3 + 144);
    v9 = *(v3 + 160);
    *(v0 + 1184) = *(v3 + 112);
    *(v0 + 1232) = v9;
    *(v0 + 1216) = v7;
    *(v0 + 1200) = v8;
    memmove((v0 + 968), (v3 + 32), 0x88uLL);
    UIScreen.Dimensions.size.getter();
    sub_100500E4C(v0 + 1104, v0 + 1240);

    v10 = *(v0 + 1080);
    *(v0 + 928) = *(v0 + 1064);
    *(v0 + 944) = v10;
    *(v0 + 960) = *(v0 + 1096);
    v11 = *(v0 + 1016);
    *(v0 + 864) = *(v0 + 1000);
    *(v0 + 880) = v11;
    v12 = *(v0 + 1048);
    *(v0 + 896) = *(v0 + 1032);
    *(v0 + 912) = v12;
    v13 = *(v0 + 984);
    *v1 = *(v0 + 968);
    *(v0 + 848) = v13;
  }

  else
  {

    sub_100501134(v0 + 832);
  }

  v14 = *(v0 + 1896);
  v15 = *(v0 + 1864);
  v16 = *(v0 + 1840);
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = *(v0 + 896);
  *(v0 + 1456) = *(v0 + 912);
  v18 = *(v0 + 944);
  *(v0 + 1472) = *(v0 + 928);
  *(v0 + 1488) = v18;
  v19 = *v1;
  *(v0 + 1392) = *(v0 + 848);
  v20 = *(v0 + 880);
  *(v0 + 1408) = *(v0 + 864);
  *(v0 + 1424) = v20;
  *(v0 + 1440) = v17;
  *(v0 + 1504) = *(v0 + 960);
  *(v0 + 1376) = v19;

  static Published.subscript.setter();
  sub_1000095E8(v0 + 1512, &qword_1011935A8, &qword_100EDE2B0);
  v14(v15, v16);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1006D4CC0()
{
  if (qword_10117F8B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1664);
  v2 = *(v0 + 1648);
  v3 = xmmword_101219030;
  v4 = 1.0 / *(v0 + 1632);
  v5 = type metadata accessor for Artwork.CropStyle();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = type metadata accessor for Artwork.ImageFormat();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_task_alloc();
  *(v0 + 1952) = v7;
  *v7 = v0;
  v7[1] = sub_1006D4E54;
  v8 = *(v0 + 1664);
  v9 = *(v0 + 1648);
  v11.n128_u64[0] = v3 >> 64;
  v10.n128_u64[0] = v3;
  v12.n128_f64[0] = v4;

  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v8, v9, 0, 0, v10, v11, v12);
}

uint64_t sub_1006D4E54(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 1960) = a1;

  v5 = *(v3 + 1664);
  v6 = *(v3 + 1648);
  if (v1)
  {

    sub_1000095E8(v6, &unk_101195200, &qword_100EBFA50);
    sub_1000095E8(v5, &unk_101184060, &qword_100EBDF50);
    v7 = sub_1006D5020;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    sub_1000095E8(v6, &unk_101195200, &qword_100EBFA50);
    sub_1000095E8(v5, &unk_101184060, &qword_100EBDF50);
    v9 = *(v4 + 1888);
    v8 = *(v4 + 1880);
    v7 = sub_1006D5370;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1006D503C()
{
  (*(v0[212] + 8))(v0[215], v0[211]);
  v1 = v0[242];
  v2 = v0[216];
  v3 = v0[211];
  sub_1000089F8(v0[220], v2, &unk_101188920, &qword_100EBCC50);
  if (v1(v2, 1, v3) == 1)
  {
    v4 = v0[216];

    sub_1000095E8(v4, &unk_101188920, &qword_100EBCC50);
    if (qword_10117FE30 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_101219770);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[220];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "🖼️ Placeholder", v10, 2u);
    }

    sub_1000095E8(v9, &unk_101188920, &qword_100EBCC50);

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v0[212] + 32))(v0[213], v0[216], v0[211]);

    return _swift_task_switch(sub_1006D56D0, 0, 0);
  }
}

uint64_t sub_1006D5370()
{

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "🖼️ User upload", v4, 2u);
  }

  v5 = *(v0 + 1960);
  v18 = *(v0 + 1760);
  v6 = *(v0 + 1720);
  v7 = *(v0 + 1696);
  v8 = *(v0 + 1688);
  v9 = *(v0 + 1616);

  v10 = *(v9 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_currentUserUploadImage);
  *(v9 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_currentUserUploadImage) = v5;
  v11 = v5;

  static PlaylistCovers.CarouselItem.picker.getter((v0 + 560));
  UIScreen.Dimensions.size.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = *(v0 + 672);
  *(v0 + 792) = *(v0 + 656);
  *(v0 + 808) = v12;
  *(v0 + 824) = *(v0 + 688);
  v13 = *(v0 + 608);
  *(v0 + 728) = *(v0 + 592);
  *(v0 + 744) = v13;
  v14 = *(v0 + 640);
  *(v0 + 760) = *(v0 + 624);
  *(v0 + 776) = v14;
  v15 = *(v0 + 576);
  *(v0 + 696) = *(v0 + 560);
  *(v0 + 712) = v15;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1608) = v5;

  static Published.subscript.setter();

  (*(v7 + 8))(v6, v8);
  sub_1000095E8(v18, &unk_101188920, &qword_100EBCC50);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1006D56D0()
{
  if (qword_10117F8B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1656);
  v2 = *(v0 + 1640);
  v3 = xmmword_101219030;
  v4 = 1.0 / *(v0 + 1632);
  v5 = type metadata accessor for Artwork.CropStyle();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = type metadata accessor for Artwork.ImageFormat();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_task_alloc();
  *(v0 + 1968) = v7;
  *v7 = v0;
  v7[1] = sub_1006D5864;
  v8 = *(v0 + 1656);
  v9 = *(v0 + 1640);
  v11.n128_u64[0] = v3 >> 64;
  v10.n128_u64[0] = v3;
  v12.n128_f64[0] = v4;

  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v8, v9, 0, 0, v10, v11, v12);
}

uint64_t sub_1006D5864(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 1976) = a1;

  v5 = *(v3 + 1656);
  v6 = *(v3 + 1640);
  if (v1)
  {

    sub_1000095E8(v6, &unk_101195200, &qword_100EBFA50);
    sub_1000095E8(v5, &unk_101184060, &qword_100EBDF50);
    v7 = sub_1006D5A30;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    sub_1000095E8(v6, &unk_101195200, &qword_100EBFA50);
    sub_1000095E8(v5, &unk_101184060, &qword_100EBDF50);
    v9 = *(v4 + 1888);
    v8 = *(v4 + 1880);
    v7 = sub_1006D5CC0;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1006D5A4C()
{
  v1 = v0[213];
  v2 = v0[212];
  v3 = v0[211];

  (*(v2 + 8))(v1, v3);
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101219770);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[220];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "🖼️ Placeholder", v9, 2u);
  }

  sub_1000095E8(v8, &unk_101188920, &qword_100EBCC50);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006D5CC0()
{

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "🖼️ tracksTiledArtwork", v4, 2u);
  }

  v5 = *(v0 + 1976);
  v6 = *(v0 + 1760);
  v7 = *(v0 + 1704);
  v8 = *(v0 + 1696);
  v9 = *(v0 + 1688);

  static PlaylistCovers.CarouselItem.tracksTiled(image:)(v5, v0 + 16);
  v10 = *(v0 + 80);
  *(v0 + 232) = *(v0 + 96);
  v11 = *(v0 + 128);
  *(v0 + 248) = *(v0 + 112);
  *(v0 + 264) = v11;
  v12 = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  v13 = *(v0 + 64);
  *(v0 + 184) = *(v0 + 48);
  *(v0 + 200) = v13;
  *(v0 + 216) = v10;
  *(v0 + 280) = *(v0 + 144);
  *(v0 + 152) = v12;
  UIScreen.Dimensions.size.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = *(v0 + 232);
  v15 = *(v0 + 264);
  *(v0 + 384) = *(v0 + 248);
  *(v0 + 400) = v15;
  *(v0 + 416) = *(v0 + 280);
  v16 = *(v0 + 168);
  v17 = *(v0 + 200);
  *(v0 + 320) = *(v0 + 184);
  *(v0 + 336) = v17;
  *(v0 + 352) = *(v0 + 216);
  *(v0 + 368) = v14;
  *(v0 + 288) = *(v0 + 152);
  *(v0 + 304) = v16;

  sub_100500E4C(v0 + 16, v0 + 424);
  static Published.subscript.setter();

  sub_100500EA8(v0 + 16);
  (*(v8 + 8))(v7, v9);
  sub_1000095E8(v6, &unk_101188920, &qword_100EBCC50);

  v18 = *(v0 + 8);

  return v18();
}

void sub_1006D6018(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CoverArtworkRecipe.ExpressionID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CoverArtworkRecipe.version.getter() == 3157553 && v6 == 0xE300000000000000)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v19 = 0;
      v9 = 0uLL;
      goto LABEL_13;
    }
  }

  v8 = CoverArtworkRecipe.backgroundColor.getter();
  v9 = 0uLL;
  if (!v8)
  {
    v19 = 0;
LABEL_13:
    v20 = 0uLL;
    v21 = 0uLL;
    goto LABEL_18;
  }

  v10 = v8;
  v11 = CoverArtworkRecipe.primaryColor.getter();
  if (v11)
  {
    v12 = v11;
    v13 = CoverArtworkRecipe.secondaryColor.getter();
    if (v13)
    {
      v14 = v13;
      v15 = CoverArtworkRecipe.tertiaryColor.getter();
      if (v15)
      {
        v16 = v15;
        CoverArtworkRecipe.expressionID.getter();
        v17 = CoverArtworkRecipe.ExpressionID.rawValue.getter();
        (*(v3 + 8))(v5, v2);
        v18 = _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(v17);
        if (v18 != 8)
        {
          v43 = v18;
          [objc_allocWithZone(UIColor) initWithCGColor:v10];
          [objc_allocWithZone(UIColor) initWithCGColor:v12];
          [objc_allocWithZone(UIColor) initWithCGColor:v14];
          [objc_allocWithZone(UIColor) initWithCGColor:v16];
          UIScreen.Dimensions.size.getter();
          v23 = v22;
          v41 = v24;
          v42 = v22;
          v25 = v24;
          v27 = v26;
          v40 = v26;
          v29 = v28;
          v30 = PlaylistCovers.Specs.coverSize.unsafeMutableAddressor();
          v31 = *v30;
          v32 = v30[1];
          sub_100009F78(0, &qword_1011951F0, UIGraphicsImageRendererFormat_ptr);
          v33 = [swift_getObjCClassFromMetadata() preferredFormat];
          v34 = v27;
          v35 = v43;
          v36 = PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(v23, v25, v34, v29, v33, v43, v31, v32);
          v38 = v37;

          PlaylistCovers.Cover.Representation.init(expression:backgroundImage:recipeColors:textColor:)(v35, v36, v42, v41, v40, v29, v38, &v44);
          v19 = v44;
          v9 = v45;
          v20 = v46;
          v21 = v47;
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v19 = 0;
  v20 = 0uLL;
  v21 = 0uLL;
  v9 = 0uLL;
LABEL_18:
  *a1 = v19;
  *(a1 + 8) = v9;
  *(a1 + 24) = v20;
  *(a1 + 40) = v21;
}

void sub_1006D6360()
{
  type metadata accessor for Playlist();
  v2 = __chkstk_darwin();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerDataSource;
  if (*(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerDataSource))
  {
    goto LABEL_7;
  }

  (*(v1 + 16))(v4, v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v2);
  v6 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_dataSource);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController);
  if (v8)
  {
    type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource(0);
    swift_allocObject();

    v9 = sub_1006E2408(v4, v7, v8);

    *(v0 + v5) = v9;

LABEL_7:

    return;
  }

  __break(1u);
}

id sub_1006D64F0()
{
  v1 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerHostingView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerHostingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerHostingView);
  }

  else
  {
    v4 = v0;
    sub_1006D6360();
    type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource(0);
    sub_1006E1788(&unk_10119EF00, type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource, &unk_100EDDC38);
    ObservedObject.init(wrappedValue:)();
    v5 = objc_allocWithZone(sub_10010FC20(&unk_10119EFF0, &unk_100EDE0C0));
    v6 = _UIHostingView.init(rootView:)();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1006D65D8()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v31 - v6;
  __chkstk_darwin();
  v9 = &v31 - v8;
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v31 - v11;
  v13 = [v1 isEditing];
  if (v13)
  {
    v32 = v5;
    v14 = *(v3 + 16);
    v34 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
    v35 = v14;
    v36 = v3 + 16;
    v14(v12, &v1[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v2);
    v15 = Playlist.name.getter();
    v17 = v16;
    v33 = *(v3 + 8);
    v33(v12, v2);
    sub_1006D2BA8();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v37);

    if (v15 == v37 && v17 == v38)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v35(v9, &v1[v34], v2);
    v20 = Playlist.standardDescription.getter();
    v22 = v21;
    v33(v9, v2);
    if (v22)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v37);

    if (v23 == v37 && v24 == v38)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
LABEL_23:
        LOBYTE(v13) = 1;
        return v13 & 1;
      }
    }

    v35(v7, &v1[v34], v2);
    v26 = Playlist.isVisible.getter();
    v33(v7, v2);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v37);

    LOBYTE(v13) = 1;
    if (v26 != 2 && ((v37 ^ v26) & 1) == 0)
    {
      v27 = v32;
      v35(v32, &v1[v34], v2);
      v28 = sub_1006CF48C();
      v33(v27, v2);
      v29 = sub_100031064(0, v28);

      if (v29)
      {
        LOBYTE(v13) = sub_1006D6A4C();
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }
  }

  return v13 & 1;
}

uint64_t sub_1006D6A4C()
{
  sub_1006D2BA8();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v51);

  v114 = v57;
  v115 = v58;
  v116 = v59;
  v110 = v53;
  v111 = v54;
  v113 = v56;
  v112 = v55;
  v109 = v52;
  v108 = v51;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v51);

  v117[6] = v57;
  v117[7] = v58;
  v118 = v59;
  v117[2] = v53;
  v117[3] = v54;
  v117[5] = v56;
  v117[4] = v55;
  v117[1] = v52;
  v117[0] = v51;
  v125 = v57;
  v126 = v58;
  v127 = v59;
  v121 = v53;
  v122 = v54;
  v123 = v55;
  v124 = v56;
  v119 = v51;
  v120 = v52;
  if (sub_1000D8FCC(&v119) == 1)
  {
    sub_100502390(&v100);
  }

  else
  {
    v55 = v123;
    v56 = v124;
    v57 = v125;
    v58 = v126;
    v51 = v119;
    v52 = v120;
    v53 = v121;
    v54 = v122;
    UIScreen.Dimensions.size.getter();
    sub_100501164(&v119, &v83);
    v104 = v55;
    v105 = v56;
    v106 = v57;
    v107 = v58;
    v100 = v51;
    v101 = v52;
    v102 = v53;
    v103 = v54;
  }

  v89 = v114;
  v90 = v115;
  v91 = v116;
  v85 = v110;
  v86 = v111;
  v88 = v113;
  v87 = v112;
  v83 = v108;
  v84 = v109;
  if (sub_1000D8FCC(&v83) == 1)
  {
    sub_100502390(&v75);
  }

  else
  {
    v55 = v87;
    v56 = v88;
    v57 = v89;
    v58 = v90;
    v51 = v83;
    v52 = v84;
    v53 = v85;
    v54 = v86;
    UIScreen.Dimensions.size.getter();
    sub_100501164(&v83, &v75);
    v79 = v55;
    v80 = v56;
    v81 = v57;
    v82 = v58;
    v75 = v51;
    v76 = v52;
    v77 = v53;
    v78 = v54;
  }

  v55 = v104;
  v56 = v105;
  v57 = v106;
  v58 = v107;
  v51 = v100;
  v52 = v101;
  v53 = v102;
  v54 = v103;
  v61 = v77;
  v62 = v78;
  v59 = v75;
  v60 = v76;
  v65 = v81;
  v66 = v82;
  v63 = v79;
  v64 = v80;
  v69 = v102;
  v70 = v103;
  v67 = v100;
  v68 = v101;
  v73 = v106;
  v74 = v107;
  v71 = v104;
  v72 = v105;
  if (sub_1000D8FCC(&v67) != 1)
  {
    v47 = v71;
    v48 = v72;
    v49 = v73;
    v50 = v74;
    v43 = v67;
    v44 = v68;
    v45 = v69;
    v46 = v70;
    if (sub_1005024E0(&v43) == 1)
    {
      v39 = v79;
      v40 = v80;
      v41 = v81;
      v42 = v82;
      v35 = v75;
      v36 = v76;
      v37 = v77;
      v38 = v78;
      if (sub_1000D8FCC(&v35) != 1)
      {
        v31 = v39;
        v32 = v40;
        v33 = v41;
        v34 = v42;
        v27 = v35;
        v28 = v36;
        v29 = v37;
        v30 = v38;
        if (sub_1005024E0(&v27) == 1)
        {
          v2 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_currentUserUploadImage);
          swift_getKeyPath();
          swift_getKeyPath();
          v3 = v2;

          static Published.subscript.getter(&v96);

          v4 = v96;
          if (v2)
          {
            if (v96)
            {
              sub_100009F78(0, &qword_101183B40, UIImage_ptr);
              v5 = static NSObject.== infix(_:_:)();
              sub_1000095E8(v117, &qword_1011842B0, &qword_100EBFE30);
              sub_1000095E8(&v108, &qword_1011842B0, &qword_100EBFE30);
              sub_1000095E8(&v51, &unk_10119EFE0, &qword_100ED0D00);

              v1 = v5 ^ 1;
              return v1 & 1;
            }

            sub_1000095E8(v117, &qword_1011842B0, &qword_100EBFE30);
            sub_1000095E8(&v108, &qword_1011842B0, &qword_100EBFE30);
            sub_1000095E8(&v51, &unk_10119EFE0, &qword_100ED0D00);
          }

          else
          {
            sub_1000095E8(v117, &qword_1011842B0, &qword_100EBFE30);
            sub_1000095E8(&v108, &qword_1011842B0, &qword_100EBFE30);
            sub_1000095E8(&v51, &unk_10119EFE0, &qword_100ED0D00);
            if (!v4)
            {
              v1 = 0;
              return v1 & 1;
            }
          }

LABEL_18:
          v1 = 1;
          return v1 & 1;
        }
      }
    }

    else
    {
      v39 = v79;
      v40 = v80;
      v41 = v81;
      v42 = v82;
      v35 = v75;
      v36 = v76;
      v37 = v77;
      v38 = v78;
      if (sub_1000D8FCC(&v35) != 1)
      {
        v31 = v39;
        v32 = v40;
        v33 = v41;
        v34 = v42;
        v27 = v35;
        v28 = v36;
        v29 = v37;
        v30 = v38;
        if (sub_1005024E0(&v27) != 1)
        {
          v7 = *(&v44 + 1);
          v8 = v45;
          v9 = *(&v28 + 1);
          v10 = v29;
          v11 = v30;
          v12 = v31;
          v24 = v47;
          v22 = *(&v45 + 1);
          v23 = v46;
          v25 = *(&v31 + 1);
          v26 = *(&v47 + 1);
          v21 = v31;
          if (v45)
          {
            if (v29)
            {
              LOBYTE(v96) = BYTE8(v28);
              v97 = v29;
              v98 = v30;
              v99 = v31;
              v92[0] = BYTE8(v44);
              v93 = v45;
              v94 = v46;
              v95 = v47;
              v19 = *(&v29 + 1);
              v20 = v30;
              v13 = *(&v45 + 1);
              v14 = v46;
              v16 = v45;
              v17 = *(&v44 + 1);
              v15 = v29;
              sub_1001F43A0(*(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1));
              sub_1001F43A0(v9, v15, *(&v10 + 1), v20, *(&v11 + 1), v12, v25);
              sub_1001F43A0(v7, v16, v13, v14, *(&v14 + 1), v24, v26);
              sub_1001F43A0(v9, v15, v19, v20, *(&v20 + 1), v12, v25);
              v18 = static PlaylistCovers.Cover.Representation.== infix(_:_:)(v92, &v96);
              sub_1001F4464(v9, v15, v19, v20, *(&v20 + 1), v12, v25);
              sub_1001F4464(v17, v16, v22, v23, *(&v23 + 1), v24, v26);
              sub_1000095E8(v117, &qword_1011842B0, &qword_100EBFE30);
              sub_1000095E8(&v108, &qword_1011842B0, &qword_100EBFE30);
              sub_1000095E8(&v51, &unk_10119EFE0, &qword_100ED0D00);
              sub_1001F4464(v9, v15, v19, v20, *(&v20 + 1), v21, v25);
              sub_1001F4464(v17, v16, v22, v23, *(&v23 + 1), v24, v26);
              v1 = v18 ^ 1;
              return v1 & 1;
            }

            sub_1001F43A0(*(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1));
            sub_1001F43A0(v9, 0, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1));
            sub_1000095E8(v117, &qword_1011842B0, &qword_100EBFE30);
            sub_1000095E8(&v108, &qword_1011842B0, &qword_100EBFE30);
            sub_1000095E8(&v51, &unk_10119EFE0, &qword_100ED0D00);
          }

          else
          {
            sub_1001F43A0(*(&v44 + 1), 0, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1));
            sub_1001F43A0(v9, v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1));
            sub_1000095E8(v117, &qword_1011842B0, &qword_100EBFE30);
            sub_1000095E8(&v108, &qword_1011842B0, &qword_100EBFE30);
            sub_1000095E8(&v51, &unk_10119EFE0, &qword_100ED0D00);
            if (!v10)
            {
              sub_1001F4464(v7, 0, v22, v23, *(&v23 + 1), v24, v26);
              v1 = 0;
              return v1 & 1;
            }
          }

          sub_1001F4464(v7, v8, v22, v23, *(&v23 + 1), v24, v26);
          sub_1001F4464(v9, v10, *(&v10 + 1), v11, *(&v11 + 1), v21, v25);
          goto LABEL_18;
        }
      }
    }

    sub_1000095E8(v117, &qword_1011842B0, &qword_100EBFE30);
    sub_1000095E8(&v108, &qword_1011842B0, &qword_100EBFE30);
    sub_1000095E8(&v51, &unk_10119EFE0, &qword_100ED0D00);
    goto LABEL_18;
  }

  sub_1000095E8(v117, &qword_1011842B0, &qword_100EBFE30);
  sub_1000095E8(&v108, &qword_1011842B0, &qword_100EBFE30);
  v47 = v79;
  v48 = v80;
  v49 = v81;
  v50 = v82;
  v43 = v75;
  v44 = v76;
  v45 = v77;
  v46 = v78;
  v1 = sub_1000D8FCC(&v43) != 1;
  sub_1000095E8(&v51, &unk_10119EFE0, &qword_100ED0D00);
  return v1 & 1;
}

uint64_t sub_1006D7488@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_10119EFC0, &qword_100EDE050);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_10119EFC0, &qword_100EDE050);
  v8 = sub_10010FC20(&qword_10119EC88, &qword_100EDDAF8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_10119EFC0, &qword_100EDE050);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10010FC20(&qword_10119EFC8, &qword_100EDE058);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_10119EFC0, &qword_100EDE050);
  return swift_endAccess();
}

void sub_1006D7704(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = _s8MetadataO4ViewVMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10119EFD0, &qword_100EDE060);
  __chkstk_darwin();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v19 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataView;
    swift_beginAccess();
    sub_1000089F8(&v15[v16], v13, &qword_10119EFD0, &qword_100EDE060);
    if ((*(v7 + 48))(v13, 1, v6) == 1)
    {
      sub_1000095E8(v13, &qword_10119EFD0, &qword_100EDE060);
      sub_1006D2BA8();
      sub_1004F43FC(v9);
      sub_1006E1C24(v9, v11);
      (*(v7 + 56))(v11, 0, 1, v6);
      swift_beginAccess();
      sub_10006B010(v11, &v15[v16], &qword_10119EFD0, &qword_100EDE060);
      swift_endAccess();
      sub_1006DFD34(v9, v15);
      sub_1006E2FFC(v9, _s8MetadataO4ViewVMa);
      v17 = *&v15[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataHeaderView];
      *&v15[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataHeaderView] = a1;
      v18 = a1;
    }

    else
    {

      sub_1000095E8(v13, &qword_10119EFD0, &qword_100EDE060);
    }
  }
}

uint64_t sub_1006D79B0@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_10119EF98, &unk_100EDE000);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___cellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_10119EF98, &unk_100EDE000);
  v8 = sub_10010FC20(qword_10119ECA0, &qword_100EDDB00);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_10119EF98, &unk_100EDE000);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for Playlist.Entry();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_10119EF98, &unk_100EDE000);
  return swift_endAccess();
}

double sub_1006D7C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  __chkstk_darwin();
  v37 = v30 - v6;
  v38 = type metadata accessor for UICellAccessory.ReorderOptions();
  v36 = *(v38 - 8);
  __chkstk_darwin();
  v35 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin();
  v31 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICellAccessory.DisplayedState();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_10119EFA0, &qword_100EDE010);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = v30 - v16;
  v41 = a3;
  type metadata accessor for PlaylistEditingViewController.Cell(0);
  sub_1006E1788(&qword_10119EFA8, type metadata accessor for PlaylistEditingViewController.Cell, "14\x1B");
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.vertical.getter();
  v42[3] = v14;
  v42[4] = sub_100020674(&unk_10119EFB0, &qword_10119EFA0, &qword_100EDE010, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v42);
  UIHostingConfiguration.margins(_:_:)();
  (*(v15 + 8))(v17, v14);
  v40 = a1;
  UICollectionViewCell.contentConfiguration.setter();
  sub_10010FC20(&unk_101184740, &qword_100ED5D60);
  v30[1] = *(*(type metadata accessor for UICellAccessory() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_100EBDC20;
  v18 = enum case for UICellAccessory.DisplayedState.whenEditing(_:);
  v32 = v11;
  v19 = *(v11 + 104);
  v20 = v10;
  v19(v13, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v10);
  if (qword_10117F290 != -1)
  {
    swift_once();
  }

  v21 = v34;
  v22 = sub_1000060E4(v34, qword_101218718);
  v23 = v33;
  v24 = v31;
  (*(v33 + 16))(v31, v22, v21);
  static UICellAccessory.multiselect(displayed:options:)();
  (*(v23 + 8))(v24, v21);
  v25 = *(v32 + 8);
  v25(v13, v20);
  v19(v13, v18, v20);
  v26 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  v27 = v35;
  UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
  static UICellAccessory.reorder(displayed:options:)();
  (*(v36 + 8))(v27, v38);
  v25(v13, v20);
  UICollectionViewListCell.accessories.setter();
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  UICollectionViewCell.configurationUpdateHandler.setter();

  return result;
}

uint64_t sub_1006D8258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Playlist.Entry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *(type metadata accessor for PlaylistEditingViewController.Cell(0) + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);

  return swift_storeEnumTagMultiPayload();
}

void *sub_1006D8304(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v6 = v28 - v5;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v28 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    static UIBackgroundConfiguration.listCell()();
    v15 = type metadata accessor for UICellConfigurationState();
    v28[3] = v15;
    v28[4] = &protocol witness table for UICellConfigurationState;
    v16 = sub_10001C8B8(v28);
    (*(*(v15 - 8) + 16))(v16, a2, v15);
    UIBackgroundConfiguration.updated(for:)();
    v17 = *(v8 + 8);
    v17(v10, v7);
    sub_10000959C(v28);
    v18 = [v14 traitCollection];
    v19 = [v18 userInterfaceIdiom];

    if (v19 == 6)
    {
      v20 = sub_1006D1794();
      [v20 directionalLayoutMargins];
      MinX = v21;
    }

    else
    {
      [a1 frame];
      MinX = CGRectGetMinX(v29);
    }

    v23 = UIBackgroundConfiguration.backgroundInsets.modify();
    *(v24 + 8) = *(v24 + 8) - MinX;
    v23(v28, 0);
    v25 = UIBackgroundConfiguration.backgroundInsets.modify();
    *(v26 + 24) = *(v26 + 24) - MinX;
    v25(v28, 0);
    v27 = [objc_opt_self() clearColor];
    UIBackgroundConfiguration.backgroundColor.setter();
    (*(v8 + 16))(v6, v12, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    UICollectionViewCell.backgroundConfiguration.setter();

    return (v17)(v12, v7);
  }

  return result;
}

uint64_t sub_1006D864C@<X0>(uint64_t a1@<X8>)
{
  v144 = a1;
  v143 = sub_10010FC20(&qword_10119F150, &qword_100EDE3A0);
  __chkstk_darwin();
  v120 = (&v117 - v2);
  v139 = sub_10010FC20(&qword_10119F158, &qword_100EDE3A8);
  __chkstk_darwin();
  v142 = &v117 - v3;
  sub_10010FC20(&qword_10119F160, &qword_100EDE3B0);
  __chkstk_darwin();
  v119 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = (&v117 - v5);
  v140 = sub_10010FC20(&qword_10119F168, &qword_100EDE3B8);
  __chkstk_darwin();
  v138 = (&v117 - v6);
  sub_10010FC20(&unk_10119F170, &unk_100EDE3C0);
  __chkstk_darwin();
  v141 = &v117 - v7;
  v137 = type metadata accessor for DynamicTypeSize();
  v136 = *(v137 - 8);
  __chkstk_darwin();
  v135 = (&v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v130 = &v117 - v9;
  v133 = type metadata accessor for Text.Suffix();
  v132 = *(v133 - 8);
  __chkstk_darwin();
  v131 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10010FC20(&unk_10119F180, &unk_100EDE3D0);
  __chkstk_darwin();
  v147 = &v117 - v11;
  v127 = type metadata accessor for ArtworkImage.ReusePolicy();
  v125 = *(v127 - 8);
  __chkstk_darwin();
  v123 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v14 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v16 = &v117 - v15;
  v17 = type metadata accessor for Playlist.Entry.InternalItem();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_1011A1400, &unk_100ECAD80);
  v122 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v117 - v22;
  v124 = sub_10010FC20(&unk_10119F190, &qword_100EC1520);
  v126 = *(v124 - 8);
  __chkstk_darwin();
  v25 = &v117 - v24;
  v26 = sub_10010FC20(&qword_101193608, &qword_100ED0EC8) - 8;
  __chkstk_darwin();
  v121 = &v117 - v27;
  v129 = sub_10010FC20(&qword_10119F1A0, &qword_100EDE3E0);
  __chkstk_darwin();
  v128 = &v117 - v28;
  sub_10010FC20(&qword_10119F1A8, &qword_100EDE3E8);
  __chkstk_darwin();
  v146 = &v117 - v29;
  v145 = v1;
  Playlist.Entry.internalItem.getter();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v17, &protocol witness table for Playlist.Entry.InternalItem, v16);
  (*(v18 + 8))(v20, v17);
  v30 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v30 - 8) + 56))(v14, 1, 11, v30);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0x4048000000000000, 0, 0x4048000000000000, 0, 0, 1, 2, &v155);
  v31 = v125;
  v32 = v123;
  v33 = v127;
  (*(v125 + 104))(v123, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v127);
  v34 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v16, v14, &v155, v32, v23);
  (*(v31 + 8))(v32, v33, v34);
  sub_1006E2FFC(v14, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v16, &unk_10118A5E0, &unk_100EBCD90);
  v35 = Corner.small.unsafeMutableAddressor();
  v36 = *v35;
  v37 = v35[1];
  LOBYTE(v31) = *(v35 + 16);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.corner(_:)(v36, v37, v31, v21, OpaqueTypeConformance2);
  (*(v122 + 8))(v23, v21);
  v39 = Border.artwork.unsafeMutableAddressor();
  v40 = *v39;
  v41 = *(v39 + 1);
  v42 = *v35;
  v43 = v35[1];
  LOBYTE(v35) = *(v35 + 16);
  LOBYTE(v31) = *(v39 + 16);

  *&v156 = v21;
  *(&v156 + 1) = OpaqueTypeConformance2;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v121;
  v46 = v124;
  View.border(_:corner:)(v40, v31, v42, v43, v35, v124, v44, v41);

  (*(v126 + 8))(v25, v46);
  v47 = v45 + *(v26 + 44);
  *v47 = 0x3FF0000000000000;
  *(v47 + 8) = 0;
  v48 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCallout];
  [v48 lineHeight];

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v49 = v128;
  sub_10003D17C(v45, v128, &qword_101193608, &qword_100ED0EC8);
  v50 = (v49 + *(v129 + 36));
  v51 = v161;
  v50[4] = v160;
  v50[5] = v51;
  v50[6] = v162;
  v52 = v157;
  *v50 = v156;
  v50[1] = v52;
  v53 = v159;
  v50[2] = v158;
  v50[3] = v53;
  sub_1006E305C();
  View.accessibilityHidden(_:)();
  sub_1000095E8(v49, &qword_10119F1A0, &qword_100EDE3E0);
  v148 = Playlist.Entry.title.getter();
  v149 = v54;
  sub_100009838();
  v55 = Text.init<A>(_:)();
  v57 = v56;
  v148 = v55;
  v149 = v56;
  LOBYTE(v43) = v58 & 1;
  v150 = v58 & 1;
  v151 = v59;
  v60 = v130;
  Playlist.Entry.contentRating.getter();
  v61 = TextBadge.init(for:isPlayable:)(v60, 1);
  v62 = TextBadge.view.getter(v61);
  v64 = v63;
  LOBYTE(v45) = v65;
  v66 = v131;
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v62, v64, v45 & 1);

  v67 = v147;
  View.textSuffix(_:)();
  (*(v132 + 8))(v66, v133);
  sub_10011895C(v55, v57, v43);

  LODWORD(v62) = static HierarchicalShapeStyle.primary.getter();
  *(v67 + *(sub_10010FC20(&qword_101198B50, &qword_100EDE3F0) + 36)) = v62;
  v68 = static Font.callout.getter();
  KeyPath = swift_getKeyPath();
  v70 = (v67 + *(v134 + 36));
  *v70 = KeyPath;
  v70[1] = v68;
  v148 = Playlist.Entry.artistName.getter();
  v149 = v71;
  v72 = Text.init<A>(_:)();
  v74 = v73;
  LOBYTE(v66) = v75;
  LODWORD(v148) = static HierarchicalShapeStyle.secondary.getter();
  v76 = Text.foregroundStyle<A>(_:)();
  v78 = v77;
  LOBYTE(v67) = v79;
  sub_10011895C(v72, v74, v66 & 1);

  static Font.footnote.getter();
  v132 = Text.font(_:)();
  v133 = v80;
  v82 = v81;
  v134 = v83;

  sub_10011895C(v76, v78, v67 & 1);

  type metadata accessor for PlaylistEditingViewController.Cell(0);
  v84 = v135;
  sub_10056CABC(v135);
  LOBYTE(v74) = DynamicTypeSize.isAccessibilitySize.getter();
  v85 = *(v136 + 8);
  v86 = v137;
  v85(v84, v137);
  if (v74)
  {
    v87 = 2;
  }

  else
  {
    v87 = 1;
  }

  v88 = swift_getKeyPath();
  sub_10056CABC(v84);
  v89 = DynamicTypeSize.isAccessibilitySize.getter();
  v85(v84, v86);
  if (v89)
  {
    v90 = static HorizontalAlignment.leading.getter();
    v91 = v138;
    *v138 = v90;
    v91[1] = 0;
    *(v91 + 16) = 0;
    v92 = v91;
    v93 = *(sub_10010FC20(&qword_10119F1D8, &qword_100EDE460) + 44);
    v136 = v88;
    v94 = v92 + v93;
    v95 = v82 & 1;
    v96 = v132;
    v97 = v133;
    sub_10021D0C0(v132, v133, v95);
    v98 = v134;

    v99 = static VerticalAlignment.center.getter();
    v100 = v118;
    *v118 = v99;
    *(v100 + 8) = 0;
    *(v100 + 16) = 1;
    v101 = sub_10010FC20(&qword_10119F1E0, &qword_100EDE468);
    sub_1006D9A34(v146, v147, v100 + *(v101 + 44));
    v102 = v119;
    sub_1000089F8(v100, v119, &qword_10119F160, &qword_100EDE3B0);
    sub_1000089F8(v102, v94, &qword_10119F160, &qword_100EDE3B0);
    v103 = v94 + *(sub_10010FC20(&qword_10119F1E8, &qword_100EDE470) + 48);
    *v103 = v96;
    *(v103 + 8) = v97;
    *(v103 + 16) = v95;
    v104 = v136;
    *(v103 + 24) = v98;
    *(v103 + 32) = v104;
    *(v103 + 40) = v87;
    *(v103 + 48) = 0;
    sub_10021D0C0(v96, v97, v95);

    sub_10021D0C0(v96, v97, v95);

    sub_1000095E8(v100, &qword_10119F160, &qword_100EDE3B0);
    sub_10011895C(v96, v97, v95);

    sub_1000095E8(v102, &qword_10119F160, &qword_100EDE3B0);
    sub_10011895C(v96, v97, v95);

    v105 = v138;
    sub_1000089F8(v138, v142, &qword_10119F168, &qword_100EDE3B8);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10119F1C8, &qword_10119F168, &qword_100EDE3B8, &protocol conformance descriptor for VStack<A>);
    sub_100020674(&qword_10119F1D0, &qword_10119F150, &qword_100EDE3A0, &protocol conformance descriptor for HStack<A>);
    v106 = v141;
    _ConditionalContent<>.init(storage:)();
    sub_10011895C(v96, v97, v95);

    v107 = v105;
    v108 = &qword_10119F168;
    v109 = &qword_100EDE3B8;
  }

  else
  {
    v110 = v132;
    v148 = v132;
    v111 = v133;
    v149 = v133;
    v112 = v82 & 1;
    v150 = v112;
    v151 = v134;
    v152 = v88;
    v153 = v87;
    v154 = 0;

    sub_10021D0C0(v110, v111, v112);

    v113 = static VerticalAlignment.center.getter();
    v114 = v120;
    *v120 = v113;
    *(v114 + 8) = 0;
    *(v114 + 16) = 1;
    v115 = sub_10010FC20(&qword_10119F1C0, &qword_100EDE458);
    sub_1006D9D84(v146, v147, &v148, v114 + *(v115 + 44));
    sub_10011895C(v110, v111, v112);

    sub_1000089F8(v114, v142, &qword_10119F150, &qword_100EDE3A0);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10119F1C8, &qword_10119F168, &qword_100EDE3B8, &protocol conformance descriptor for VStack<A>);
    sub_100020674(&qword_10119F1D0, &qword_10119F150, &qword_100EDE3A0, &protocol conformance descriptor for HStack<A>);
    v106 = v141;
    _ConditionalContent<>.init(storage:)();
    sub_10011895C(v110, v111, v112);

    v107 = v114;
    v108 = &qword_10119F150;
    v109 = &qword_100EDE3A0;
  }

  sub_1000095E8(v107, v108, v109);
  sub_10003D17C(v106, v144, &unk_10119F170, &unk_100EDE3C0);
  sub_1000095E8(v147, &unk_10119F180, &unk_100EDE3D0);
  return sub_1000095E8(v146, &qword_10119F1A8, &qword_100EDE3E8);
}