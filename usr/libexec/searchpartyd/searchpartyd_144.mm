uint64_t sub_100FF6B70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for BeaconScanner.AISLookupState(0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - v9;
  v10 = *v2;
  sub_1000BC4D4(&qword_1016C3018, &unk_1013F7828);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_100029184(v27 + v28 * v24, v47, type metadata accessor for BeaconScanner.AISLookupState);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_100022ABC(v29 + v28 * v24, v47, type metadata accessor for BeaconScanner.AISLookupState);
      }

      sub_1000041A4(&unk_1016C3020, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_100029184(v47, *(v12 + 56) + v28 * v20, type metadata accessor for BeaconScanner.AISLookupState);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_100FF7014(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v57 = sub_1000BC4D4(a3, a4);
  v11 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v45 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v58 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  sub_1000BC4D4(a5, a6);
  v52 = v10;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v16 + 16))
  {
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v14;
    v24 = v22 & *(v16 + 64);
    v25 = (v21 + 63) >> 6;
    v48 = (v23 + 16);
    v49 = v23;
    v46 = v6;
    v47 = v11 + 16;
    v50 = v16;
    v51 = v11;
    v53 = (v11 + 32);
    v54 = (v23 + 32);
    v26 = result + 64;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v31 = v28 | (v19 << 6);
      v32 = *(v16 + 48);
      v55 = *(v23 + 72);
      v33 = v32 + v55 * v31;
      if (v52)
      {
        (*v54)(v58, v33, v13);
        v34 = *(v16 + 56);
        v35 = *(v51 + 72);
        (*(v51 + 32))(v56, v34 + v35 * v31, v57);
      }

      else
      {
        (*v48)(v58, v33, v13);
        v36 = *(v16 + 56);
        v35 = *(v51 + 72);
        (*(v51 + 16))(v56, v36 + v35 * v31, v57);
      }

      sub_100004084(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v26 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v26 + 8 * v39);
          if (v43 != -1)
          {
            v27 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v38) & ~*(v26 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v54)((*(v18 + 48) + v55 * v27), v58, v13);
      result = (*v53)(*(v18 + 56) + v35 * v27, v56, v57);
      ++*(v18 + 16);
      v23 = v49;
      v16 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v25)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v44 = 1 << *(v16 + 32);
    v9 = v46;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
  return result;
}

Swift::Int sub_100FF74B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000BC4D4(&qword_1016C2FB0, &qword_1013F77D0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
        sub_100017D5C(v31, *(&v31 + 1));
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
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

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100FF7730(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000BC4D4(&qword_1016C2FA8, &qword_1013F77C8);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
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
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      sub_100004084(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
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

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_100FF7B1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1000BC4D4(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
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
    v16 = result + 64;
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

      result = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
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
        return result;
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

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
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

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

Swift::Int sub_100FF7D7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1000BC4D4(a3, a4);
  v39 = v7;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v37 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(*(v8 + 48) + 8 * v23);
      v25 = *(v8 + 56) + 16 * v23;
      v26 = *v25;
      v27 = *(v25 + 8);
      if ((v39 & 1) == 0)
      {
        v28 = v24;
        a5(v26, v27);
      }

      result = NSObject._rawHashValue(seed:)(*(v10 + 40));
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      v19 = *(v10 + 56) + 16 * v18;
      *v19 = v26;
      *(v19 + 8) = v27;
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v8 + 32);
    v6 = v37;
    if (v36 >= 64)
    {
      bzero((v8 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

Swift::Int sub_100FF8010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000BC4D4(&qword_1016C2D58, &qword_1013F7648);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v4;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = *(v5 + 48) + v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = (*(v5 + 56) + v22);
      v27 = *v26;
      v38 = v26[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v25);
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v38;
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
        goto LABEL_33;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_100FF82DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_1000BC4D4(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_100004084(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

Swift::Int sub_100FF86B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v51 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  v45 = *(v8 - 8);
  v46 = v8;
  __chkstk_darwin(v8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1000BC4D4(&qword_1016C2DC8, &unk_1013F76A8);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v50 = v10;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v41[0] = v2;
    v41[1] = v6 + 16;
    v42 = v6;
    v43 = v5;
    v48 = (v6 + 32);
    v20 = result + 64;
    v21 = v11;
    v44 = v11;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v21 + 48);
      v49 = *(v45 + 72);
      v28 = v27 + v49 * v26;
      v29 = v50;
      if (v47)
      {
        sub_100029184(v28, v50, type metadata accessor for ShareAttemptTracker.AttemptKey);
        v30 = *(v21 + 56);
        v31 = *(v42 + 72);
        (*(v42 + 32))(v51, v30 + v31 * v26, v5);
      }

      else
      {
        sub_100022ABC(v28, v50, type metadata accessor for ShareAttemptTracker.AttemptKey);
        v32 = *(v21 + 56);
        v31 = *(v42 + 72);
        (*(v42 + 16))(v51, v32 + v31 * v26, v5);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(dword_1013F7D50[*v29]);
      type metadata accessor for UUID();
      sub_100004084(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v13 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v5 = v43;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v5 = v43;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_100029184(v50, *(v13 + 48) + v49 * v22, type metadata accessor for ShareAttemptTracker.AttemptKey);
      result = (*v48)(*(v13 + 56) + v31 * v22, v51, v5);
      ++*(v13 + 16);
      v21 = v44;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41[0];
      goto LABEL_35;
    }

    v40 = 1 << *(v21 + 32);
    v3 = v41[0];
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v44 + 16) = 0;
  }

LABEL_35:
  *v3 = v13;
  return result;
}

Swift::Int sub_100FF8BA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1000BC4D4(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
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
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_100FF8E44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000BC4D4(&unk_1016C2D80, &unk_1013F7670);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 24 * v20);
      v35 = *v21;
      v22 = *(v21 + 1);
      v23 = *(v21 + 2);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v35);
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v35;
      *(v16 + 8) = v22;
      *(v16 + 16) = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100FF914C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v57 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v50 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v56 = &v46 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  sub_1000BC4D4(a4, a5);
  v51 = v10;
  v17 = v16;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v19 = result;
  if (*(v16 + 16))
  {
    v55 = v13;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v46 = v6;
    v47 = (v14 + 16);
    v48 = v16;
    v49 = v14;
    v53 = (v14 + 32);
    v26 = result + 64;
    v27 = v52;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v32 = v29 | (v20 << 6);
      v33 = *(v17 + 48);
      v54 = *(v49 + 72);
      v34 = v33 + v54 * v32;
      if (v51)
      {
        (*v53)(v27, v34, v55);
        v35 = *(v17 + 56);
        v36 = *(v50 + 72);
        sub_100029184(v35 + v36 * v32, v56, v57);
      }

      else
      {
        (*v47)(v27, v34, v55);
        v37 = *(v17 + 56);
        v36 = *(v50 + 72);
        sub_100022ABC(v37 + v36 * v32, v56, v57);
      }

      sub_100004084(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v38 = -1 << *(v19 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v26 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v27 = v52;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v26 + 8 * v40);
          if (v44 != -1)
          {
            v28 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v39) & ~*(v26 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v27 = v52;
LABEL_7:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      (*v53)((*(v19 + 48) + v54 * v28), v27, v55);
      result = sub_100029184(v56, *(v19 + 56) + v36 * v28, v57);
      ++*(v19 + 16);
      v17 = v48;
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v25)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v45 = 1 << *(v17 + 32);
    v9 = v46;
    if (v45 >= 64)
    {
      bzero(v21, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v45;
    }

    *(v17 + 16) = 0;
  }

LABEL_34:
  *v9 = v19;
  return result;
}

Swift::Int sub_100FF95C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for BeaconKeyManager.FileKey(0);
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  sub_1000BC4D4(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = v12;
  v15 = result;
  if (*(v12 + 16))
  {
    v39 = v7;
    v40 = v12;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v41 + 72);
      v29 = *(v14 + 48) + v28 * v27;
      if (v43)
      {
        sub_100029184(v29, v11, type metadata accessor for BeaconKeyManager.FileKey);
        v44 = *(*(v14 + 56) + 8 * v27);
      }

      else
      {
        sub_100022ABC(v29, v11, type metadata accessor for BeaconKeyManager.FileKey);
        v44 = *(*(v14 + 56) + 8 * v27);
      }

      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100004084(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v14 = v40;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v14 = v40;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_100029184(v11, *(v15 + 48) + v28 * v23, type metadata accessor for BeaconKeyManager.FileKey);
      *(*(v15 + 56) + 8 * v23) = v44;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v14 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_100FF99E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_1000BC4D4(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_100004084(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_100FF9DC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_1000BC4D4(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_100004084(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_100FFA1A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000BC4D4(&qword_1016C2D60, &qword_1013F7650);
  v41 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v46 = v8;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v9;
    v40 = v6;
    v42 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v45 = *(v40 + 72);
      v26 = v25 + v45 * v24;
      if (v41)
      {
        (*v42)(v46, v26, v5);
        v27 = (*(v9 + 56) + 16 * v24);
        v44 = *v27;
        v43 = *(v27 + 1);
      }

      else
      {
        (*v38)(v46, v26, v5);
        v28 = (*(v9 + 56) + 16 * v24);
        v44 = *v28;
        v43 = *(v28 + 1);
      }

      sub_100004084(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v11 + 48) + v45 * v19, v46, v5);
      v20 = *(v11 + 56) + 16 * v19;
      *v20 = v44;
      *(v20 + 8) = v43;
      ++*(v11 + 16);
      v9 = v39;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100FFA5B4(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1[1];
  *&v30 = *a1;
  *(&v30 + 1) = v7;
  v8 = a1[3];
  v31 = a1[2];
  v32 = v8;
  v9 = *(a1 + 32);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_1000210EC(a2);
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
      sub_101004CC4();
      goto LABEL_9;
    }

    sub_100FE5D90(v19, a3 & 1);
    v22 = sub_1000210EC(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = v32;
  v25 = *v4;
  if (v20)
  {
    v26 = v25[7] + 40 * v16;
    v27 = *(&v30 + 1);
    *v26 = v30;
    *(v26 + 8) = v27;
    *(v26 + 16) = v31;
    *(v26 + 24) = v24;
    *(v26 + 32) = v9;
  }

  else
  {
    (*(v11 + 16))(v13, a2, v10);
    v33 = v30;
    v34 = v31;
    v35 = v24;
    v36 = v9;
    return sub_1010030B8(v16, v13, &v33, v25);
  }
}

uint64_t sub_100FFA7D4(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100771E30(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for MultipartAccessoryPairingInfo(0);
      return sub_100039158(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for MultipartAccessoryPairingInfo);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1010058A8(type metadata accessor for MultipartAccessoryPairingInfo, &unk_1016C3080, &qword_1013F7878, type metadata accessor for MultipartAccessoryPairingInfo);
    goto LABEL_7;
  }

  sub_100FE7218(v15, a4 & 1, type metadata accessor for MultipartAccessoryPairingInfo, &unk_1016C3080, &qword_1013F7878, type metadata accessor for MultipartAccessoryPairingInfo);
  v22 = sub_100771E30(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1010032D8(v12, a2, a3, a1, v18, type metadata accessor for MultipartAccessoryPairingInfo, type metadata accessor for MultipartAccessoryPairingInfo);

  return sub_100017D5C(a2, a3);
}

uint64_t sub_100FFA9DC(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100771E30(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
      return sub_10002311C(a1, v19 + *(*(v20 - 8) + 72) * v12, &qword_1016A40D0, &unk_10138BE70);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1010052E8();
    goto LABEL_7;
  }

  sub_100FE68E4(v15, a4 & 1);
  v22 = sub_100771E30(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1010031A0(v12, a2, a3, a1, v18);

  return sub_100017D5C(a2, a3);
}

_OWORD *sub_100FFAB54(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100771E5C(a2);
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
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_101005550();
      goto LABEL_7;
    }

    sub_100FE6C64(v13, a3 & 1);
    v19 = sub_100771E5C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100476DEC(a2, v21);
      return sub_10100325C(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100007BAC(v17);

  return sub_10004D07C(a1, v17);
}

void sub_100FFACA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100771D58(a3, a4);
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
      sub_100FE6F1C(v18, a5 & 1);
      v13 = sub_100771D58(a3, a4);
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
      sub_1010056F4();
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

uint64_t sub_100FFAE28(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100771E30(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
      return sub_100039158(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for OwnedBeaconGroup.PairingState);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1010058A8(type metadata accessor for OwnedBeaconGroup.PairingState, &qword_1016A24B0, &qword_1013C5460, type metadata accessor for OwnedBeaconGroup.PairingState);
    goto LABEL_7;
  }

  sub_100FE7218(v15, a4 & 1, type metadata accessor for OwnedBeaconGroup.PairingState, &qword_1016A24B0, &qword_1013C5460, type metadata accessor for OwnedBeaconGroup.PairingState);
  v22 = sub_100771E30(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1010032D8(v12, a2, a3, a1, v18, type metadata accessor for OwnedBeaconGroup.PairingState, type metadata accessor for OwnedBeaconGroup.PairingState);

  return sub_100017D5C(a2, a3);
}

uint64_t sub_100FFB030(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100771F0C(a2);
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
      v18 = type metadata accessor for BookmarkMetaData(0);
      return sub_100039158(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for BookmarkMetaData);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_101005B0C();
    goto LABEL_7;
  }

  sub_100FE7AB0(v13, a3 & 1);
  v20 = sub_100771F0C(a2);
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

  return sub_101003384(v10, a2, a1, v16);
}

uint64_t sub_100FFB184(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1000210EC(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_101005D44();
      goto LABEL_9;
    }

    sub_100FE80C8(v16, a3 & 1);
    v19 = sub_1000210EC(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return sub_10100342C(v13, v10, a1, v21);
  }
}

void sub_100FFB368(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100771D58(a2, a3);
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
      sub_101008230(&unk_1016B1490, &unk_1013C5310, sub_1001E6224);
      v11 = v19;
      goto LABEL_8;
    }

    sub_100FECAD0(v16, a4 & 1, &unk_1016B1490, &unk_1013C5310, sub_1001E6224);
    v11 = sub_100771D58(a2, a3);
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
    sub_100007BAC(v22);

    sub_10004D07C(a1, v22);
  }

  else
  {
    sub_101003508(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100FFB504(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100771F94(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_101006034();
      goto LABEL_7;
    }

    sub_100FE853C(v17, a3 & 1);
    v23 = sub_100771F94(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_101003574(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  sub_100007BAC(v21);

  return sub_10004D07C(a1, v21);
}

id sub_100FFB704(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100771FF8(a2);
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
      sub_100FF7B1C(v13, a3 & 1, &unk_1016C2D40, &unk_1013F7630);
      v8 = sub_100771FF8(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10100E6B4(&unk_1016C2D40, &unk_1013F7630);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
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

  return a2;
}

id sub_100FFB8A0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_100771FF8(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *v4;
    if (v13)
    {
LABEL_8:
      v16 = v15[7];
      v17 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
      return sub_100039158(a1, v16 + *(*(v17 - 8) + 72) * v9, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_10100CBE0(type metadata accessor for CloudKitChangeSet.TombstoneInfo, &qword_1016C2D50, &qword_1013F7640, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
    goto LABEL_7;
  }

  sub_100FF58A0(v12, a3 & 1, type metadata accessor for CloudKitChangeSet.TombstoneInfo, &qword_1016C2D50, &qword_1013F7640, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
  v19 = sub_100771FF8(a2);
  if ((v13 & 1) != (v20 & 1))
  {
LABEL_15:
    sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v19;
  v15 = *v4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_101003634(v9, a2, a1, v15);

  return a2;
}

unint64_t sub_100FFBA7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100772048(a2);
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
      sub_100FE8918(v14, a3 & 1);
      result = sub_100772048(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10100C628(&qword_1016C2C10, &qword_1013C5320);
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_100FFBBDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100771D58(a2, a3);
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
      sub_100FE943C(v16, a4 & 1);
      v11 = sub_100771D58(a2, a3);
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
      sub_101006870();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_100FFBD80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100771D58(a2, a3);
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
      sub_100FF8BA4(v20, a4 & 1, a5, a6);
      v15 = sub_100771D58(a2, a3);
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
      sub_10100F134(a5, a6);
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

_OWORD *sub_100FFBF20(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1007721E4(a2);
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
      sub_101006E68();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100FEA228(v13, a3 & 1);
    v8 = sub_1007721E4(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
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
    sub_100007BAC(v19);

    return sub_10004D07C(a1, v19);
  }

  else
  {
    sub_101003810(v8, a2, a1, v18);

    return a2;
  }
}

void sub_100FFC070(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100771D58(a2, a3);
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
      sub_100FEA4A0(v16, a4 & 1);
      v11 = sub_100771D58(a2, a3);
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
      sub_101006FE8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    sub_100766C5C(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = (v21[7] + 48 * v11);
  v25 = *a1;
  v26 = a1[1];
  *(v24 + 26) = *(a1 + 26);
  *v24 = v25;
  v24[1] = v26;
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

uint64_t sub_100FFC228(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1000210EC(a2);
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
      sub_10100EB94(v26, v27);
      goto LABEL_7;
    }

    sub_100FF82DC(v19, a3 & 1, v26, v27);
    v24 = sub_1000210EC(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_101003D64(v16, v13, a1, v22);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
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

void sub_100FFC418(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100771D58(a3, a4);
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
      sub_100FEAC8C(v18, a5 & 1);
      v13 = sub_100771D58(a3, a4);
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
      sub_101007320();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    v26 = *(v24 + 8);
    *(v24 + 8) = a2;

    sub_101010148(v25, v26);
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v23[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = v23[7] + 16 * v13;
  *v28 = a1;
  *(v28 + 8) = a2;
  v29 = v23[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v30;
}

uint64_t sub_100FFC5AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100771D14(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1010074AC();
      goto LABEL_7;
    }

    sub_100FEAF5C(v13, a3 & 1);
    v24 = sub_100771D14(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for Date();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_101003878(v10, a2, a1, v16);
}

uint64_t sub_100FFC714(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MACAddress();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1007723C0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10100F9B4(&type metadata accessor for MACAddress, &qword_1016C3258, &unk_1013F7A60);
      goto LABEL_7;
    }

    sub_100FEB3B0(v17, a3 & 1);
    v22 = sub_1007723C0(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_101004998(v14, v11, a1, v20, &type metadata accessor for MACAddress);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_100FFC918(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
      return sub_100039158(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_101007778(type metadata accessor for SoundPlaybackManager.PlaybackCoordinator, &qword_1016C31B8, &qword_1013F79D0, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    goto LABEL_7;
  }

  sub_100FF914C(v17, a3 & 1, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator, &qword_1016C31B8, &qword_1013F79D0, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v24 = sub_1000210EC(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_101003E1C(v14, v11, a1, v20, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
}

uint64_t sub_100FFCB98(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v24 = a4;
  v25 = a5;
  v6 = v5;
  v9 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1000210EC(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *v6;
    if (v20)
    {
LABEL_8:
      *(v22[7] + v16) = v9;
      return result;
    }

    goto LABEL_11;
  }

  if (v21 >= result && (a3 & 1) == 0)
  {
    result = sub_101007AA4(v24, v25);
    goto LABEL_7;
  }

  sub_100FEB7A0(result, a3 & 1, v24, v25);
  result = sub_1000210EC(a2);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = result;
  v22 = *v6;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v11 + 16))(v13, a2, v10);
  return sub_101003924(v16, v13, v9, v22);
}

_OWORD *sub_100FFCD44(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100777014();
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
      sub_101007D8C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100FEBBB0(v13, a3 & 1);
    v8 = sub_100777014();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CBConnectionEventMatchingOption(0);
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
    sub_100007BAC(v19);

    return sub_10004D07C(a1, v19);
  }

  else
  {
    sub_101003810(v8, a2, a1, v18);

    return a2;
  }
}

int64_t sub_100FFCE84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v8 = type metadata accessor for MACAddress();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1007723C0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = v7;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_101007F0C();
    goto LABEL_7;
  }

  sub_100FEBE80(result, a3 & 1);
  result = sub_1007723C0(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1010039DC(v14, v11, v7, v20);
}

uint64_t sub_100FFD034(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1000210EC(a2);
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
      sub_10100F9B4(&type metadata accessor for UUID, v26, v27);
      goto LABEL_7;
    }

    sub_100FF9DC4(v19, a3 & 1, v26, v27);
    v24 = sub_1000210EC(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_101004998(v16, v13, a1, v22, &type metadata accessor for UUID);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
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

uint64_t sub_100FFD238(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MACAddress();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1007723C0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10100CE4C(&type metadata accessor for Date, &type metadata accessor for MACAddress, &qword_1016ADDF8, &qword_1013C5530);
      goto LABEL_7;
    }

    sub_100FEC240(v17, a3 & 1);
    v28 = sub_1007723C0(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10100436C(v14, v11, a1, v20, &type metadata accessor for MACAddress, &type metadata accessor for Date);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

int64_t sub_100FFD49C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MACAddress();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1007723C0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_101009920(&type metadata accessor for MACAddress, &unk_1016C3240, &qword_1013C5520);
    goto LABEL_7;
  }

  sub_100FEC6E8(result, a3 & 1);
  result = sub_1007723C0(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_101003F10(v14, v11, a1, v20, &type metadata accessor for MACAddress);
}

uint64_t sub_100FFD694(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10100CE4C(&type metadata accessor for Date, &type metadata accessor for UUID, &qword_1016ADD80, &unk_1013C5490);
      goto LABEL_7;
    }

    sub_100FECDD0(v17, a3 & 1, &type metadata accessor for Date, &qword_1016ADD80, &unk_1013C5490);
    v28 = sub_1000210EC(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10100436C(v14, v11, a1, v20, &type metadata accessor for UUID, &type metadata accessor for Date);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_100FFD91C(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v43 = *a1;
  v44 = *(a1 + 8);
  v7 = a1[3];
  v45 = a1[2];
  v46 = v7;
  v8 = a1[5];
  v47 = a1[4];
  v48 = v8;
  v9 = a1[7];
  v49 = a1[6];
  v50 = v9;
  v10 = *(a1 + 64);
  v11 = *(a1 + 65);
  v51 = a1[9];
  v12 = a1[11];
  v52 = a1[10];
  LOBYTE(v9) = *(a1 + 96);
  v42 = v10;
  v71 = v10;
  v41 = v11;
  v70 = v11;
  v69 = v9;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  v19 = sub_1000210EC(a2);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 >= v22 && (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v24 >= v22 && (a3 & 1) == 0)
  {
    sub_101008444();
    goto LABEL_9;
  }

  sub_100FED274(v22, a3 & 1);
  v25 = sub_1000210EC(a2);
  if ((v23 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v25;
LABEL_9:
  v27 = v52;
  v28 = v51;
  if (v23)
  {
    v29 = *(*v4 + 56) + 104 * v19;
    v31 = *(v29 + 16);
    v30 = *(v29 + 32);
    v53[0] = *v29;
    v53[1] = v31;
    v53[2] = v30;
    v33 = *(v29 + 64);
    v32 = *(v29 + 80);
    v34 = *(v29 + 48);
    v54 = *(v29 + 96);
    v53[4] = v33;
    v53[5] = v32;
    v53[3] = v34;
    *v29 = v43;
    *(v29 + 8) = v44;
    v35 = v46;
    *(v29 + 16) = v45;
    *(v29 + 24) = v35;
    v36 = v48;
    *(v29 + 32) = v47;
    *(v29 + 40) = v36;
    v37 = v50;
    *(v29 + 48) = v49;
    *(v29 + 56) = v37;
    *(v29 + 64) = v42;
    *(v29 + 65) = v41;
    *(v29 + 72) = v28;
    *(v29 + 80) = v27;
    *(v29 + 88) = v12;
    *(v29 + 96) = v69;
    return sub_10000B3A8(v53, &unk_1016AA4C0, &unk_1013BD0B0);
  }

  else
  {
    v39 = *v4;
    (*(v14 + 16))(v16, a2, v13);
    v55 = v43;
    v56 = v44;
    v57 = v45;
    v58 = v46;
    v59 = v47;
    v60 = v48;
    v61 = v49;
    v62 = v50;
    v63 = v71;
    v64 = v70;
    v65 = v28;
    v66 = v27;
    v67 = v12;
    v68 = v69;
    return sub_101003A94(v19, v16, &v55, v39);
  }
}

uint64_t sub_100FFDCF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_100772524(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_10100C10C(type metadata accessor for OwnedBeaconRecord, &qword_1016ADDD8, &qword_1013C5508, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_7;
    }

    sub_100FED8B8(v16, a3 & 1);
    v21 = sub_100772524(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100022ABC(a2, v10, type metadata accessor for OwnedBeaconRecord);
      return sub_101003BD8(v13, v10, a1, v19);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_100FFDEE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v6 = v5;
  v32 = a3;
  v31 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1000210EC(a4);
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
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_1010087D0();
      goto LABEL_9;
    }

    sub_100FEDC3C(v19, a5 & 1);
    v22 = sub_1000210EC(a4);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = v32;
  v25 = *v6;
  if (v20)
  {
    v26 = v25[7] + 24 * v16;
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    *v26 = v31;
    *(v26 + 8) = a2;
    *(v26 + 16) = v24 & 1;

    return sub_1001E61D8(v27, v28, v29);
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    return sub_101003C8C(v16, v13, v31, a2, v24 & 1, v25);
  }
}

id sub_100FFE0D8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1007725DC(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_100FEE684(v15, a4 & 1);
      v10 = sub_1007725DC(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_100008BB8(0, &qword_1016A9118, IDSService_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_101008E60();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = (v20[7] + 16 * v10);
  *v23 = a1;
  v23[1] = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  return a3;
}

unint64_t sub_100FFE25C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_101008FD0();
      goto LABEL_7;
    }

    sub_100FEE908(v17, a3 & 1);
    v24 = sub_1000210EC(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_101003D64(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;

  return sub_1001E61B8(v22);
}

void sub_100FFE428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_100772110(a3, a4, a5);
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
      sub_100FEECE4(v20, a6 & 1);
      v15 = sub_100772110(a3, a4, a5);
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
      sub_101009250();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 16 * v15);
    v27 = *v26;
    v28 = v26[1];
    *v26 = a1;
    v26[1] = a2;

    sub_100016590(v27, v28);
    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v29 = v25[6] + 24 * v15;
  *v29 = a3;
  *(v29 + 8) = a4;
  *(v29 + 16) = a5;
  v30 = (v25[7] + 16 * v15);
  *v30 = a1;
  v30[1] = a2;
  v31 = v25[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v32;
}

unint64_t sub_100FFE5CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100777018();
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
      sub_100FEF360(v14, a3 & 1);
      result = sub_100777018();
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for SPBTRSSIChannel(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_101009678();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_100FFE718(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1007721A4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1010097D4();
    result = v17;
    goto LABEL_8;
  }

  sub_100FEF5F0(v14, a3 & 1);
  result = sub_1007721A4(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100FFE858(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_101009920(&type metadata accessor for UUID, &qword_1016C2C80, &unk_1013C5480);
    goto LABEL_7;
  }

  sub_100FEF858(result, a3 & 1);
  result = sub_1000210EC(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_101003F10(v14, v11, a1, v20, &type metadata accessor for UUID);
}

uint64_t sub_100FFEA2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for DeviceEvent(0);
      return sub_100039158(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for DeviceEvent);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_101007778(type metadata accessor for DeviceEvent, &qword_1016C30F8, &qword_1013F7918, type metadata accessor for DeviceEvent);
    goto LABEL_7;
  }

  sub_100FF914C(v17, a3 & 1, type metadata accessor for DeviceEvent, &qword_1016C30F8, &qword_1013F7918, type metadata accessor for DeviceEvent);
  v24 = sub_1000210EC(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_101003E1C(v14, v11, a1, v20, type metadata accessor for DeviceEvent, type metadata accessor for DeviceEvent);
}

uint64_t sub_100FFEC98(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_10100A144();
    goto LABEL_7;
  }

  sub_100FF05B4(result, a3 & 1);
  result = sub_1000210EC(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_101003924(v14, v11, a1 & 1, v20);
}

void sub_100FFEE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100771D58(a3, a4);
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
      sub_100FF0974(v18, a5 & 1);
      v13 = sub_100771D58(a3, a4);
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
      sub_10100A3B4();
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

void sub_100FFEFE8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a4;
  v28 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1000210EC(a2);
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
      sub_10100F718(v27, v28);
      goto LABEL_7;
    }

    sub_100FF99E8(v19, a3 & 1, v27, v28);
    v25 = sub_1000210EC(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      sub_101004998(v16, v13, a1, v22, &type metadata accessor for UUID);
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
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t sub_100FFF224(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v34 = a6;
  v35 = a7;
  v36 = a4;
  v37 = a5;
  v8 = v7;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_1000210EC(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      sub_10100DF44(v36, v37, v34, v35);
      goto LABEL_7;
    }

    sub_100FF7014(v21, a3 & 1, v36, v37, v34, v35);
    v32 = sub_1000210EC(a2);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return sub_1010046F4(v18, v15, a1, v24, v36, v37);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = v24[7];
  v26 = sub_1000BC4D4(v36, v37);
  v27 = *(v26 - 8);
  v28 = *(v27 + 40);
  v29 = v26;
  v30 = v25 + *(v27 + 72) * v18;

  return v28(v30, a1, v29);
}

unint64_t sub_100FFF448(uint64_t a1, uint64_t a2, Swift::UInt64 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100772824(a3);
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
      sub_100FF0C2C(v16, a4 & 1);
      result = sub_100772824(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10100A5A8();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v25 = (v21[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v21[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v21[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  v23 = *v22;
  v24 = v22[1];
  *v22 = a1;
  v22[1] = a2;

  return sub_100016590(v23, v24);
}

id sub_100FFF5A8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100777014();
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
      sub_100FF0EC0(v13, a3 & 1);
      v8 = sub_100777014();
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for SPBeaconTaskName(0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10100A710();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
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

  return a2;
}

uint64_t sub_100FFF724(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10100A870();
      goto LABEL_7;
    }

    sub_100FF1184(v17, a3 & 1);
    v22 = sub_1000210EC(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_101003F10(v14, v11, a1, v20, &type metadata accessor for UUID);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_100FFF904(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10100AAF0();
      goto LABEL_7;
    }

    sub_100FF1560(v17, a3 & 1);
    v23 = sub_1000210EC(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_101003FCC(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 72 * v14;

  return sub_101012C04(a1, v21);
}

uint64_t sub_100FFFAD4(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1[1];
  *&v39 = *a1;
  *(&v39 + 1) = v7;
  v8 = a1[3];
  v40 = a1[2];
  v41 = v8;
  v9 = *(a1 + 32);
  v10 = a1[6];
  v42 = a1[5];
  v43 = v10;
  v11 = a1[8];
  v44 = a1[7];
  v45 = v11;
  v12 = a1[9];
  v38 = v9;
  v56 = v9;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  v19 = sub_1000210EC(a2);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 >= v22 && (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v24 >= v22 && (a3 & 1) == 0)
  {
    sub_10100ADE4();
    goto LABEL_9;
  }

  sub_100FF1AA4(v22, a3 & 1);
  v25 = sub_1000210EC(a2);
  if ((v23 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v25;
LABEL_9:
  v27 = v45;
  if (v23)
  {
    v28 = *(*v4 + 56) + 80 * v19;
    v46[0] = *v28;
    v29 = *(v28 + 64);
    v31 = *(v28 + 16);
    v30 = *(v28 + 32);
    v46[3] = *(v28 + 48);
    v46[4] = v29;
    v46[1] = v31;
    v46[2] = v30;
    v32 = *(&v39 + 1);
    *v28 = v39;
    *(v28 + 8) = v32;
    v33 = v41;
    *(v28 + 16) = v40;
    *(v28 + 24) = v33;
    *(v28 + 32) = v38;
    v34 = v43;
    *(v28 + 40) = v42;
    *(v28 + 48) = v34;
    *(v28 + 56) = v44;
    *(v28 + 64) = v27;
    *(v28 + 72) = v12;
    return sub_10000B3A8(v46, &qword_1016C3180, &qword_1013F79A8);
  }

  else
  {
    v36 = *v4;
    (*(v14 + 16))(v16, a2, v13);
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v50 = v56;
    v51 = v42;
    v52 = v43;
    v53 = v44;
    v54 = v27;
    v55 = v12;
    return sub_1010040A0(v19, v16, &v47, v36);
  }
}

uint64_t sub_100FFFDD0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
      return sub_100039158(a1, v21 + *(*(MyServiceDevice - 8) + 72) * v14, type metadata accessor for FindMyServiceDevice);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_101007778(type metadata accessor for FindMyServiceDevice, &qword_1016C31B0, &qword_1013F79C8, type metadata accessor for FindMyServiceDevice);
    goto LABEL_7;
  }

  sub_100FF914C(v17, a3 & 1, type metadata accessor for FindMyServiceDevice, &qword_1016C31B0, &qword_1013F79C8, type metadata accessor for FindMyServiceDevice);
  v24 = sub_1000210EC(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_101003E1C(v14, v11, a1, v20, type metadata accessor for FindMyServiceDevice, type metadata accessor for FindMyServiceDevice);
}

uint64_t sub_1010000C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for BeaconState(0);
      return sub_100039158(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for BeaconState);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_101007778(type metadata accessor for BeaconState, &qword_1016C3290, &qword_1013C55C8, type metadata accessor for BeaconState);
    goto LABEL_7;
  }

  sub_100FF914C(v17, a3 & 1, type metadata accessor for BeaconState, &qword_1016C3290, &qword_1013C55C8, type metadata accessor for BeaconState);
  v24 = sub_1000210EC(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_101003E1C(v14, v11, a1, v20, type metadata accessor for BeaconState, type metadata accessor for BeaconState);
}

void sub_101000330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_100772110(a3, a4, a5);
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
      sub_100FF34B8(v20, a6 & 1);
      v15 = sub_100772110(a3, a4, a5);
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
      sub_10100BA90();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 16 * v15);
    *v26 = a1;
    v26[1] = a2;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = v25[6] + 24 * v15;
  *v27 = a3;
  *(v27 + 8) = a4;
  *(v27 + 16) = a5;
  v28 = (v25[7] + 16 * v15);
  *v28 = a1;
  v28[1] = a2;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

void sub_1010004D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1000210EC(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_10100B804();
      goto LABEL_9;
    }

    sub_100FF30CC(v18, a4 & 1);
    v21 = sub_1000210EC(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = v24[7] + 16 * v15;
    v26 = *v25;
    *v25 = v28;
    *(v25 + 8) = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    sub_1010041B4(v15, v12, v23, a2, v24);
  }
}

void sub_1010006B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ManagedCBPeripheralManager.KeyType(0);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1007729CC(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_10100BC18();
      goto LABEL_7;
    }

    sub_100FF3790(v16, a3 & 1);
    v22 = sub_1007729CC(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100022ABC(a2, v10, type metadata accessor for ManagedCBPeripheralManager.KeyType);
      sub_1010048EC(v13, v10, a1, v19, type metadata accessor for ManagedCBPeripheralManager.KeyType, type metadata accessor for ManagedCBPeripheralManager.KeyType);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = *(v20 + 8 * v13);
  *(v20 + 8 * v13) = a1;
}

unint64_t sub_101000870(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100777018();
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
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_10100C4B8();
    result = v17;
    goto LABEL_8;
  }

  sub_100FF4B3C(v14, a3 & 1);
  result = sub_100777018();
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for ShutdownReason(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return _objc_release_x1();
}

uint64_t sub_1010009CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for BeaconNamingRecord(0);
      return sub_100039158(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for BeaconNamingRecord);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_101007778(type metadata accessor for BeaconNamingRecord, &unk_1016C2C90, &qword_1013F7598, type metadata accessor for BeaconNamingRecord);
    goto LABEL_7;
  }

  sub_100FF914C(v17, a3 & 1, type metadata accessor for BeaconNamingRecord, &unk_1016C2C90, &qword_1013F7598, type metadata accessor for BeaconNamingRecord);
  v24 = sub_1000210EC(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_101003E1C(v14, v11, a1, v20, type metadata accessor for BeaconNamingRecord, type metadata accessor for BeaconNamingRecord);
}

uint64_t sub_101000C38(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for BeaconProductInfoRecord(0);
      return sub_100039158(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for BeaconProductInfoRecord);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_101007778(type metadata accessor for BeaconProductInfoRecord, &unk_1016C3120, &unk_1013F7940, type metadata accessor for BeaconProductInfoRecord);
    goto LABEL_7;
  }

  sub_100FF914C(v17, a3 & 1, type metadata accessor for BeaconProductInfoRecord, &unk_1016C3120, &unk_1013F7940, type metadata accessor for BeaconProductInfoRecord);
  v24 = sub_1000210EC(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_101003E1C(v14, v11, a1, v20, type metadata accessor for BeaconProductInfoRecord, type metadata accessor for BeaconProductInfoRecord);
}

uint64_t sub_101000EDC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10100CE4C(&type metadata accessor for Device, &type metadata accessor for UUID, &qword_1016ADDA0, &qword_1013C54B8);
      goto LABEL_7;
    }

    sub_100FECDD0(v17, a3 & 1, &type metadata accessor for Device, &qword_1016ADDA0, &qword_1013C54B8);
    v28 = sub_1000210EC(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10100436C(v14, v11, a1, v20, &type metadata accessor for UUID, &type metadata accessor for Device);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for Device();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1010011B4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(unint64_t, _BYTE *), uint64_t (*a7)(uint64_t, void *))
{
  v31 = a7;
  v32 = a4;
  v33 = a5;
  v9 = v7;
  v30 = type metadata accessor for UUID();
  v13 = *(v30 - 8);
  __chkstk_darwin(v30);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_1000210EC(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      sub_10100D218(v32, v33, a6);
      goto LABEL_7;
    }

    sub_100FF5BBC(v21, a3 & 1, v32, v33, a6);
    v28 = sub_1000210EC(a2);
    if ((v22 & 1) == (v29 & 1))
    {
      v18 = v28;
      v24 = *v9;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v30);
      return sub_10100446C(v18, v15, a1, v24, a6);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v9;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = (v24[7] + 40 * v18);
  sub_100007BAC(v25);
  v26 = v31;

  return v26(a1, v25);
}

uint64_t sub_1010013E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v30 = a1;
  v9 = type metadata accessor for MACAddress();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1007723C0(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_10100D4D8(&type metadata accessor for MACAddress, &unk_1016C3090, &qword_1013C5470);
      goto LABEL_9;
    }

    sub_100FF5FB8(v18, a4 & 1);
    v21 = sub_1007723C0(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v30;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    v26 = *v25;
    v27 = v25[1];
    *v25 = v30;
    v25[1] = a2;

    return sub_100016590(v26, v27);
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_101004538(v15, v12, v23, a2, v24);
  }
}

unint64_t sub_1010015E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100771C58(a3);
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
      sub_100FF63A0(v16, a4 & 1);
      result = sub_100771C58(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10100D768();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_101001740(char a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100771E30(a2, a3);
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
      sub_100FF6614(v16, a4 & 1);
      result = sub_100771E30(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10100D8CC();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1;
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

  return sub_100017D5C(a2, a3);
}

void sub_1010018BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100771D58(a3, a4);
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
      sub_100FF68B4(v18, a5 & 1);
      v13 = sub_100771D58(a3, a4);
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
      sub_10100DA48();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    sub_100016590(v25, v26);
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v23[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v23[7] + 16 * v13);
  *v28 = a1;
  v28[1] = a2;
  v29 = v23[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v30;
}

uint64_t sub_101001A58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for SafeLocation(0);
      return sub_100039158(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for SafeLocation);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_101007778(type metadata accessor for SafeLocation, &qword_1016ADD58, &qword_1013C5440, type metadata accessor for SafeLocation);
    goto LABEL_7;
  }

  sub_100FF914C(v17, a3 & 1, type metadata accessor for SafeLocation, &qword_1016ADD58, &qword_1013C5440, type metadata accessor for SafeLocation);
  v24 = sub_1000210EC(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_101003E1C(v14, v11, a1, v20, type metadata accessor for SafeLocation, type metadata accessor for SafeLocation);
}

uint64_t sub_101001CC4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = *v3;
  v14 = sub_100772CAC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for BeaconScanner.AISLookupState(0);
      return sub_100039158(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for BeaconScanner.AISLookupState);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_10100DBF4();
    goto LABEL_7;
  }

  sub_100FF6B70(v17, a3 & 1);
  v24 = sub_100772CAC(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1010045F8(v14, v11, a1, v20);
}

uint64_t sub_101001EEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1000210EC(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_10100E434();
      goto LABEL_9;
    }

    sub_100FF7730(v18, a4 & 1);
    v21 = sub_1000210EC(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1010041B4(v15, v12, v23, a2, v24);
  }
}

id sub_1010020C8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100772D8C(a2);
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
      sub_100FF7B1C(v13, a3 & 1, &qword_1016C2F00, &qword_1013E4BD8);
      v8 = sub_100772D8C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10100E6B4(&qword_1016C2F00, &qword_1013E4BD8);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
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

  return a2;
}

id sub_101002264(uint64_t a1, char a2, void *a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t))
{
  v12 = v8;
  v16 = *v8;
  v17 = sub_100771FF8(a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_100FF7D7C(v22, a4 & 1, a5, a6, a7);
      v17 = sub_100771FF8(a3);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_10100E804(a5, a6, a7);
      v17 = v25;
    }
  }

  v27 = *v12;
  if (v23)
  {
    v28 = v27[7] + 16 * v17;
    v29 = *v28;
    v30 = *(v28 + 8);
    *v28 = a1;
    *(v28 + 8) = a2 & 1;

    return a8(v29, v30);
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  *(v27[6] + 8 * v17) = a3;
  v32 = v27[7] + 16 * v17;
  *v32 = a1;
  *(v32 + 8) = a2 & 1;
  v33 = v27[2];
  v21 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v34;

  return a3;
}

unint64_t sub_101002440(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_100771C94(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a5 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a5 & 1) == 0)
  {
    v21 = result;
    sub_10100E980();
    result = v21;
    goto LABEL_8;
  }

  sub_100FF8010(v18, a5 & 1);
  result = sub_100771C94(a3, a4);
  if ((v19 & 1) == (v22 & 1))
  {
LABEL_8:
    v23 = *v6;
    if (v19)
    {
      v24 = (v23[7] + 16 * result);
      *v24 = a1;
      v24[1] = a2;
      return result;
    }

    v23[(result >> 6) + 8] |= 1 << result;
    v25 = v23[6] + 16 * result;
    *v25 = a3;
    *(v25 + 8) = a4;
    v26 = (v23[7] + 16 * result);
    *v26 = a1;
    v26[1] = a2;
    v27 = v23[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v23[2] = v28;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1010025A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo(0);
      return sub_100039158(a1, v21 + *(*(updated - 8) + 72) * v14, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_101007778(type metadata accessor for AccessoryFirmwareUpdateStateInfo, &qword_1016C2DE0, &qword_1013F76C0, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
    goto LABEL_7;
  }

  sub_100FF914C(v17, a3 & 1, type metadata accessor for AccessoryFirmwareUpdateStateInfo, &qword_1016C2DE0, &qword_1013F76C0, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  v24 = sub_1000210EC(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_101003E1C(v14, v11, a1, v20, type metadata accessor for AccessoryFirmwareUpdateStateInfo, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
}

uint64_t sub_101002810(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000210EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo(0);
      return sub_100039158(a1, v21 + *(*(updated - 8) + 72) * v14, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_101007778(type metadata accessor for AccessoryFirmwareUpdateCommandInfo, &qword_1016C2DE8, &qword_1013F76C8, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
    goto LABEL_7;
  }

  sub_100FF914C(v17, a3 & 1, type metadata accessor for AccessoryFirmwareUpdateCommandInfo, &qword_1016C2DE8, &qword_1013F76C8, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
  v24 = sub_1000210EC(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_101003E1C(v14, v11, a1, v20, type metadata accessor for AccessoryFirmwareUpdateCommandInfo, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
}

uint64_t sub_101002A7C(uint64_t a1, char *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_100772DDC(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_10100EE0C();
      goto LABEL_7;
    }

    sub_100FF86B8(v16, a3 & 1);
    v27 = sub_100772DDC(a2);
    if ((v17 & 1) == (v28 & 1))
    {
      v13 = v27;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100022ABC(a2, v10, type metadata accessor for ShareAttemptTracker.AttemptKey);
      return sub_1010047FC(v13, v10, a1, v19);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 40);
  v24 = v21;
  v25 = v20 + *(v22 + 72) * v13;

  return v23(v25, a1, v24);
}

uint64_t sub_101002CA8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a5;
  v7 = v5;
  v11 = type metadata accessor for BeaconKeyManager.FileKey(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_100772AE4(a2);
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
      sub_10100F488(type metadata accessor for BeaconKeyManager.FileKey, a4, v27, type metadata accessor for BeaconKeyManager.FileKey);
      goto LABEL_7;
    }

    sub_100FF95C0(v19, a3 & 1, a4, v27);
    v24 = sub_100772AE4(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100022ABC(a2, v13, type metadata accessor for BeaconKeyManager.FileKey);
      return sub_1010048EC(v16, v13, a1, v22, type metadata accessor for BeaconKeyManager.FileKey, type metadata accessor for BeaconKeyManager.FileKey);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v7;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t sub_101002ED4(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1000210EC(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_10100FC30();
      goto LABEL_9;
    }

    sub_100FFA1A0(v18, a4 & 1);
    v21 = sub_1000210EC(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = v24[7] + 16 * v15;
    *v25 = v28 & 1;
    *(v25 + 8) = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_101004A54(v15, v12, v23 & 1, a2, v24);
  }
}

uint64_t sub_1010030B8(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v17 = *a3;
  v7 = *(a3 + 2);
  v8 = *(a3 + 3);
  v9 = *(a3 + 32);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a4[7] + 40 * a1;
  *v13 = v17;
  *(v13 + 16) = v7;
  *(v13 + 24) = v8;
  *(v13 + 32) = v9;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_1010031A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  result = sub_1000D2AD8(a4, v9 + *(*(v10 - 8) + 72) * a1, &qword_1016A40D0, &unk_10138BE70);
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

_OWORD *sub_10100325C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10004D07C(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1010032D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_100029184(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
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

uint64_t sub_101003384(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for BookmarkMetaData(0);
  result = sub_100029184(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for BookmarkMetaData);
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

uint64_t sub_10100342C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

_OWORD *sub_101003508(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10004D07C(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_101003574(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CodingUserInfoKey();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_10004D07C(a3, (a4[7] + 32 * a1));
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

uint64_t sub_101003634(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  result = sub_100029184(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
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

unint64_t sub_1010036DC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_101003724(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for BeaconIdentifier(0);
  sub_100029184(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for BeaconIdentifier);
  v10 = a4[7];
  v11 = type metadata accessor for ObservedAdvertisement(0);
  result = sub_100029184(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ObservedAdvertisement);
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

_OWORD *sub_101003810(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10004D07C(a3, (a4[7] + 32 * a1));
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

uint64_t sub_101003878(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Date();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
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

uint64_t sub_101003924(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

uint64_t sub_1010039DC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for MACAddress();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

uint64_t sub_101003A94(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = a3[7];
  v24 = a3[6];
  v11 = *(a3 + 64);
  v12 = *(a3 + 65);
  v23 = *(a3 + 9);
  v22 = a3[11];
  v25 = *(a3 + 96);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a4[6];
  v14 = type metadata accessor for UUID();
  v20 = *(a3 + 2);
  v21 = *(a3 + 1);
  result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a2, v14);
  v16 = a4[7] + 104 * a1;
  *v16 = v8;
  *(v16 + 8) = v9;
  *(v16 + 16) = v21;
  *(v16 + 32) = v20;
  *(v16 + 48) = v24;
  *(v16 + 56) = v10;
  *(v16 + 64) = v11;
  *(v16 + 65) = v12;
  *(v16 + 72) = v23;
  *(v16 + 88) = v22;
  *(v16 + 96) = v25;
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t sub_101003BD8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  result = sub_100029184(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for OwnedBeaconRecord);
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

uint64_t sub_101003C8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = type metadata accessor for UUID();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = a6[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5 & 1;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_101003D64(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
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

uint64_t sub_101003E1C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_100029184(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t sub_101003F10(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
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

uint64_t sub_101003FCC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 72 * a1;
  *(v11 + 64) = *(a3 + 64);
  v12 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v12;
  v13 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v13;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_1010040A0(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v21 = *a3;
  v8 = *(a3 + 2);
  v9 = *(a3 + 3);
  v10 = *(a3 + 32);
  v11 = *(a3 + 9);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for UUID();
  v19 = *(a3 + 56);
  v20 = *(a3 + 40);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = a4[7] + 80 * a1;
  *v15 = v21;
  *(v15 + 16) = v8;
  *(v15 + 24) = v9;
  *(v15 + 32) = v10;
  *(v15 + 40) = v20;
  *(v15 + 56) = v19;
  *(v15 + 72) = v11;
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

uint64_t sub_1010041B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_101004274(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = sub_1000BC4D4(a5, a6);
  result = sub_1000D2AD8(a3, v14 + *(*(v15 - 8) + 72) * a1, a5, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t sub_10100436C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
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

uint64_t sub_10100446C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = a5(a3, a4[7] + 40 * a1);
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

uint64_t sub_101004538(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for MACAddress();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1010045F8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for BeaconScanner.AISLookupState(0);
  result = sub_100029184(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for BeaconScanner.AISLookupState);
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

uint64_t sub_1010046F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = sub_1000BC4D4(a5, a6);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t sub_1010047FC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  sub_100029184(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ShareAttemptTracker.AttemptKey);
  v10 = a4[7];
  v11 = type metadata accessor for Date();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
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

uint64_t sub_1010048EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_100029184(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_101004998(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
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

uint64_t sub_101004A54(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

id sub_101004B18()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016B6E50, &qword_1013DB4C8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

  return result;
}

char *sub_101004CC4()
{
  v1 = v0;
  v38 = type metadata accessor for UUID();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C31F8, &qword_1013F7A10);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v39 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v40 + 32;
    v35 = v40 + 16;
    v36 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v44 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v40;
        v20 = *(v40 + 72) * v18;
        v21 = v37;
        v22 = v38;
        (*(v40 + 16))(v37, *(v3 + 48) + v20, v38);
        v23 = 40 * v18;
        v24 = *(v3 + 56) + 40 * v18;
        v25 = *(v24 + 8);
        v41 = *v24;
        v43 = v25;
        v26 = *(v24 + 16);
        v27 = *(v24 + 24);
        v42 = *(v24 + 32);
        v28 = v39;
        (*(v19 + 32))(*(v39 + 48) + v20, v21, v22);
        v29 = *(v28 + 56) + v23;
        v30 = v43;
        *v29 = v41;
        *(v29 + 8) = v30;
        *(v29 + 16) = v26;
        *(v29 + 24) = v27;
        *(v29 + 32) = v42;
        v3 = v36;

        v13 = v44;
      }

      while (v44);
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

        v1 = v32;
        v5 = v39;
        goto LABEL_18;
      }

      v17 = *(v33 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v44 = (v17 - 1) & v17;
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

  return result;
}

void *sub_101004F8C()
{
  v1 = v0;
  sub_1000BC4D4(&unk_1016C3280, &qword_1013F7A88);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

void sub_1010050E8()
{
  v1 = v0;
  sub_1000BC4D4(&unk_1016C2C30, &qword_1013C5330);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 48 * v17;
        sub_1010100EC(*(v2 + 56) + 48 * v17, &v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = *&v29[9];
        v26 = *v29;
        *v24 = v28;
        v24[1] = v26;
        *(v24 + 25) = v25;
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

        v1 = v27;
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

void *sub_1010052E8()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v31 = &v29 - v3;
  sub_1000BC4D4(&qword_10169F690, &unk_1013F7880);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v30 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v34 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v31;
        v26 = *(v32 + 72) * v20;
        sub_1000D2A70(*(v4 + 56) + v26, v31, &qword_1016A40D0, &unk_10138BE70);
        v27 = v33;
        v28 = (*(v33 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1000D2AD8(v25, *(v27 + 56) + v26, &qword_1016A40D0, &unk_10138BE70);
        result = sub_100017D5C(v23, v24);
        v15 = v34;
      }

      while (v34);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v30;
        v6 = v33;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v34 = (v19 - 1) & v19;
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

  return result;
}

void *sub_101005550()
{
  v1 = v0;
  sub_1000BC4D4(&unk_1016C3040, &qword_1013B6518);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        sub_100476DEC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100013894(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10004D07C(v22, (*(v4 + 56) + v17));
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

  return result;
}

void sub_1010056F4()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016ADCB8, &qword_1013C5350);
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

void *sub_1010058A8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v38 = a4;
  v7 = v4;
  v8 = a1(0);
  v37 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v36 = &v35 - v9;
  sub_1000BC4D4(a2, a3);
  v10 = *v4;
  v11 = static _DictionaryStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v35 = v7;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v39 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = (*(v10 + 48) + 16 * v25);
        v28 = *v27;
        v29 = v27[1];
        v30 = v36;
        v31 = *(v37 + 72) * v25;
        v32 = v38;
        sub_100022ABC(*(v10 + 56) + v31, v36, v38);
        v33 = v39;
        v34 = (*(v39 + 48) + v26);
        *v34 = v28;
        v34[1] = v29;
        sub_100029184(v30, *(v33 + 56) + v31, v32);
        result = sub_100017D5C(v28, v29);
        v20 = v40;
      }

      while (v40);
    }

    v23 = v16;
    v12 = v39;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v35;
        goto LABEL_21;
      }

      v24 = *(v10 + 64 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v40 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void *sub_101005B0C()
{
  v1 = v0;
  v2 = type metadata accessor for BookmarkMetaData(0);
  v27 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016ADD88, &qword_1013C54A0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_100022ABC(*(v4 + 56) + v23, v26, type metadata accessor for BookmarkMetaData);
        v24 = v28;
        *(*(v28 + 48) + v20) = v21;
        result = sub_100029184(v22, *(v24 + 56) + v23, type metadata accessor for BookmarkMetaData);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

  return result;
}

char *sub_101005D44()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v38 = *(v34 - 8);
  v2 = __chkstk_darwin(v34);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v35 = &v30 - v4;
  sub_1000BC4D4(&qword_1016C2CA8, &qword_1013F75B0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        result = (v28)(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_101006034()
{
  v1 = v0;
  v26 = type metadata accessor for CodingUserInfoKey();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C32A0, &qword_1013F7AA8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_100013894(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_10004D07C(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
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

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

  return result;
}

void sub_101006344()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016ADC78, &qword_1013C52D0);
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

void sub_1010064AC()
{
  v1 = v0;
  v2 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v33 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016ADD68, &unk_1013C5450);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_100022ABC(v21 + v27, v32, type metadata accessor for MultipartAccessoryPairingInfo);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_100029184(v26, *(v28 + 56) + v27, type metadata accessor for MultipartAccessoryPairingInfo);

        v14 = v35;
      }

      while (v35);
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

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

void *sub_10100670C()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016ADE20, &qword_1013C5560);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        result = swift_errorRetain();
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

  return result;
}

void *sub_101006870()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C3070, &qword_1013F7868);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

void *sub_101006A1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
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
        v20 = *(*(v4 + 56) + 16 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 16 * v19) = v20;
        result = sub_100017D5C(v20, *(&v20 + 1));
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

  return result;
}

char *sub_101006B74()
{
  v1 = v0;
  v2 = type metadata accessor for ObservedAdvertisement(0);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BeaconIdentifier(0);
  v30 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C3268, &qword_1013F7A70);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_100022ABC(*(v6 + 48) + v23, v29, type metadata accessor for BeaconIdentifier);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_100022ABC(*(v6 + 56) + v25, v31, type metadata accessor for ObservedAdvertisement);
        v26 = v33;
        sub_100029184(v22, *(v33 + 48) + v23, type metadata accessor for BeaconIdentifier);
        result = sub_100029184(v24, *(v26 + 56) + v25, type metadata accessor for ObservedAdvertisement);
        v16 = v34;
      }

      while (v34);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_101006E68()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C2C08, &unk_1013F7538);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        sub_100013894(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10004D07C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

  return result;
}

void sub_101006FE8()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016ADCE0, &unk_1013C5380);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 48 * v17;
        sub_101010158(*(v2 + 56) + 48 * v17, &v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = *&v29[10];
        v26 = *v29;
        *v24 = v28;
        v24[1] = v26;
        *(v24 + 26) = v25;
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

        v1 = v27;
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

void *sub_1010071C0()
{
  v1 = v0;
  sub_1000BC4D4(&unk_1016C3140, &unk_1013F7960);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

  return result;
}