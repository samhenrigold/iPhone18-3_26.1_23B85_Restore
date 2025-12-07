uint64_t sub_1000BD640(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000BD6CC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000BD6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100095B4C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000C22D4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1000C0560(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1000BD898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100095B4C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000C2630();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
    v20 = *(v13 - 8);
    sub_1000C54DC(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ARCameraSource.Tracker.TrackState);
    sub_1000C08B0(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_1000BDA48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v51 = type metadata accessor for Corners();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RaycastAccuracy(0);
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = __chkstk_darwin(v7);
  v56 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  v12 = *v2;
  sub_1000033A8(&unk_1001D9C70, &qword_100177550);
  v54 = v4;
  v13 = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v46 = v2;
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
    v48 = (v5 + 32);
    v47 = (v5 + 8);
    v21 = v13 + 64;
    v49 = v12;
    v57 = v11;
    while (1)
    {
      if (!v19)
      {
        v24 = v15;
        while (1)
        {
          v15 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v15 >= v20)
          {
            break;
          }

          v25 = v16[v15];
          ++v24;
          if (v25)
          {
            v23 = __clz(__rbit64(v25));
            v19 = (v25 - 1) & v25;
            goto LABEL_15;
          }
        }

        if ((v54 & 1) == 0)
        {

          v3 = v46;
          goto LABEL_45;
        }

        v45 = 1 << *(v12 + 32);
        v3 = v46;
        if (v45 >= 64)
        {
          bzero(v16, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v16 = -1 << v45;
        }

        *(v12 + 16) = 0;
        break;
      }

      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v52 + 72);
      v28 = *(v12 + 48) + v27 * v26;
      v29 = v57;
      if (v54)
      {
        sub_1000C54DC(v28, v57, type metadata accessor for RaycastAccuracy);
      }

      else
      {
        sub_1000C5474(v28, v57, type metadata accessor for RaycastAccuracy);
      }

      v55 = *(*(v12 + 56) + 8 * v26);
      Hasher.init(_seed:)();
      sub_1000C5474(v29, v56, type metadata accessor for RaycastAccuracy);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v34 = v50;
          v33 = v51;
          (*v48)(v50, v56, v51);
          v35 = 3;
LABEL_27:
          Hasher._combine(_:)(v35);
          sub_1000C55A8(&qword_1001D7FB0, &type metadata accessor for Corners, &protocol conformance descriptor for Corners);
          dispatch thunk of Hashable.hash(into:)();
          v36 = v33;
          v12 = v49;
          (*v47)(v34, v36);
          goto LABEL_29;
        }

        Hasher._combine(_:)(0);
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v34 = v50;
          v33 = v51;
          (*v48)(v50, v56, v51);
          v35 = 2;
          goto LABEL_27;
        }

        v31 = *v56;
        Hasher._combine(_:)(1uLL);
        if (v31 == 0.0)
        {
          v32 = 0.0;
        }

        else
        {
          v32 = v31;
        }

        Hasher._combine(_:)(*&v32);
      }

LABEL_29:
      v37 = Hasher._finalize()();
      v38 = -1 << *(v14 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v21 + 8 * v40);
          if (v44 != -1)
          {
            v22 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_47:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_1000C54DC(v57, *(v14 + 48) + v27 * v22, type metadata accessor for RaycastAccuracy);
      *(*(v14 + 56) + 8 * v22) = v55;
      ++*(v14 + 16);
    }
  }

LABEL_45:
  *v3 = v14;
}

void sub_1000BDFCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000033A8(&qword_1001D8368, &qword_100177558);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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
        goto LABEL_33;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_1000BE24C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
  v5 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000033A8(&unk_1001D9C30, &unk_1001789E8);
  v48 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_1000C55A8(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
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

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1000BE6FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000033A8(&unk_1001D9C60, &qword_100178A10);
  v44 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
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
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1000C54DC(v27 + v28 * v24, v48, type metadata accessor for ARCameraSource.Tracker.TrackState);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1000C5474(v29 + v28 * v24, v48, type metadata accessor for ARCameraSource.Tracker.TrackState);
      }

      sub_1000C55A8(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_1000C54DC(v48, *(v12 + 56) + v28 * v20, type metadata accessor for ARCameraSource.Tracker.TrackState);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
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

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1000BEB9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000033A8(&unk_1001D80A0, &qword_100178A00);
  v38 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = *v2;
  sub_1000033A8(&qword_1001D9C58, &qword_100178A08);
  v39 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v2;
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
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v38 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v39)
      {
        sub_1000C5404(v25, v7);
      }

      else
      {
        sub_1000C5394(v25, v7);
        v26 = v23;
      }

      v27 = NSObject._rawHashValue(seed:)(*(v10 + 40));
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      sub_1000C5404(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1000BEEB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = type metadata accessor for CVTrackedDetection.Prediction();
  v5 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000033A8(&qword_1001D9C40, &unk_1001775A0);
  v48 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_1000C55A8(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
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

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1000BF358(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000033A8(&unk_1001D9C48, &qword_1001789F8);
  v44 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v48 = v8;
    v40 = v2;
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
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v47 = *(v43 + 72);
      v26 = v25 + v47 * v24;
      if (v44)
      {
        (*v45)(v48, v26, v5);
        v27 = (*(v9 + 56) + 16 * v24);
        v46 = *v27;
        v28 = v27[1];
      }

      else
      {
        (*v41)(v48, v26, v5);
        v29 = *(v9 + 56) + 16 * v24;
        v28 = *(v29 + 8);
        v46 = *v29;
      }

      sub_1000C55A8(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v11 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v45)((*(v11 + 48) + v47 * v19), v48, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      *v20 = v46;
      v20[1] = v28;
      ++*(v11 + 16);
      v9 = v42;
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

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1000BF754(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000033A8(&qword_1001D9C00, &qword_1001789C8);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
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
      v22 = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_33;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1000BF9B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000033A8(&qword_1001D9C08, &unk_1001789D0);
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Color.hash(into:)();
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
      *(*(v7 + 48) + 8 * v15) = v20;
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

void sub_1000BFC44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000033A8(&qword_1001D9C28, &qword_1001789E0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
        swift_unknownObjectRetain();
      }

      v22 = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1000BFEB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000033A8(&qword_1001D9CA0, &qword_100178A30);
  v37 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 20);
      if ((v37 & 1) == 0)
      {
      }

      v27 = static Hasher._hash(seed:_:)();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(v16 + 20) = v26;
      ++*(v7 + 16);
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

    if (v37)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1000C0184(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for CVDetection.DetectionType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_1000033A8(a3, a4);
  v44 = v8;
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v48 = v12;
    v40 = v4;
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
    v41 = (v10 + 16);
    v42 = v13;
    v43 = v10;
    v45 = (v10 + 32);
    v22 = v14 + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      sub_1000C55A8(&qword_1001D8388, &type metadata accessor for CVDetection.DetectionType, &protocol conformance descriptor for CVDetection.DetectionType);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v45)((*(v15 + 48) + v47 * v23), v48, v9);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v13 = v42;
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

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

unint64_t sub_1000C0560(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1000C55A8(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_1000033A8(&unk_1001D8190, &qword_1001771E0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000C08B0(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1000C55A8(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for ARCameraSource.Tracker.TrackState(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000C0BF4(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v7);
      result = static Hasher._hash(seed:_:)();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v4);
          if (v4 != v7 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v4);
          v18 = (v16 + 8 * v7);
          if (v4 != v7 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000C0D64(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100095B4C(a2);
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
      sub_1000C22D4();
      goto LABEL_7;
    }

    sub_1000BE24C(v17, a3 & 1);
    v28 = sub_100095B4C(a2);
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
      return sub_1000C1984(v14, v11, a1, v20);
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
  v22 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1000C0F74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100095B4C(a2);
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
      sub_1000C2630();
      goto LABEL_7;
    }

    sub_1000BE6FC(v17, a3 & 1);
    v24 = sub_100095B4C(a2);
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
      return sub_1000C1A84(v14, v11, a1, v20);
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
  v22 = v21 + *(*(type metadata accessor for ARCameraSource.Tracker.TrackState(0) - 8) + 72) * v14;

  return sub_1000C5544(a1, v22);
}

uint64_t sub_1000C115C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100095B4C(a2);
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
      sub_1000C2B6C();
      goto LABEL_7;
    }

    sub_1000BEEB0(v17, a3 & 1);
    v28 = sub_100095B4C(a2);
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
      return sub_1000C1B74(v14, v11, a1, v20);
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
  v22 = type metadata accessor for CVTrackedDetection.Prediction();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_1000C1360(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100096048(a2);
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
    sub_1000C3158();
    result = v17;
    goto LABEL_8;
  }

  sub_1000BF754(v14, a3 & 1);
  result = sub_100096048(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
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

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000C1484(uint64_t a1, char a2, __n128 a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10009608C(a1);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a2 & 1) == 0)
  {
    if (v15 < v13 || (a2 & 1) != 0)
    {
      sub_1000BF9B8(v13, a2 & 1);
      v8 = sub_10009608C(a1);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1000C32A4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 16 * v8) = a3;
    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a1;
  *(v18[7] + 16 * v8) = a3;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;
}

unint64_t sub_1000C15D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100096048(a2);
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
      sub_1000BFC44(v14, a3 & 1);
      result = sub_100096048(a2);
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
      sub_1000C3404();
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

  return swift_unknownObjectRelease();
}

void sub_1000C1724(uint64_t a1, unint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000960F8(a5);
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
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      v21 = v13;
      sub_1000C3560();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1000BFEB4(v18, a3 & 1);
    v13 = sub_1000960F8(a5);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v13;
    *v24 = a1;
    *(v24 + 8) = a4;
    *(v24 + 16) = a2;
    *(v24 + 20) = BYTE4(a2) & 1;
  }

  else
  {

    sub_1000C1C68(v13, a1, a2 | ((HIDWORD(a2) & 1) << 32), v23, a5, a4);
  }
}

uint64_t sub_1000C188C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for RaycastAccuracy(0);
  result = sub_1000C54DC(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for RaycastAccuracy);
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

unint64_t sub_1000C1940(unint64_t result, char a2, uint64_t a3, void *a4)
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

uint64_t sub_1000C1984(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
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

uint64_t sub_1000C1A84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  result = sub_1000C54DC(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ARCameraSource.Tracker.TrackState);
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

uint64_t sub_1000C1B74(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for CVTrackedDetection.Prediction();
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

unint64_t sub_1000C1C68(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a5;
  v6 = a4[7] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a6;
  *(v6 + 16) = a3;
  *(v6 + 20) = BYTE4(a3) & 1;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

void sub_1000C1CC4()
{
  v1 = v0;
  v33 = type metadata accessor for CVDetection.DetectionType();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&unk_1001D9C80, &qword_100178A18);
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

void sub_1000C1F44()
{
  v1 = v0;
  v2 = type metadata accessor for RaycastAccuracy(0);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&unk_1001D9C70, &qword_100177550);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
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
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_1000C5474(*(v4 + 48) + v21, v27, type metadata accessor for RaycastAccuracy);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        sub_1000C54DC(v20, *(v29 + 48) + v21, type metadata accessor for RaycastAccuracy);
        *(*(v23 + 56) + 8 * v19) = v22;
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

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
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

void sub_1000C2188()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D8368, &qword_100177558);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
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

void sub_1000C22D4()
{
  v1 = v0;
  v41 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - v2;
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&unk_1001D9C30, &unk_1001789E8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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

void sub_1000C2630()
{
  v1 = v0;
  v2 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v38 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v40 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&unk_1001D9C60, &qword_100178A10);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_1000C5474(v26 + v28, v37, type metadata accessor for ARCameraSource.Tracker.TrackState);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        sub_1000C54DC(v29, *(v18 + 56) + v28, type metadata accessor for ARCameraSource.Tracker.TrackState);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
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
}

void sub_1000C2954()
{
  v1 = v0;
  v2 = sub_1000033A8(&unk_1001D80A0, &qword_100178A00);
  v25 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  sub_1000033A8(&qword_1001D9C58, &qword_100178A08);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v24 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
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
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v25 + 72) * v20;
        sub_1000C5394(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_1000C5404(v4, *(v7 + 56) + v22);
        v23 = v21;
      }

      while (v15);
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

        v1 = v24;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }
}

void sub_1000C2B6C()
{
  v1 = v0;
  v41 = type metadata accessor for CVTrackedDetection.Prediction();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&qword_1001D9C40, &unk_1001775A0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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

void sub_1000C2EC0()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&unk_1001D9C48, &qword_1001789F8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
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
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    v15 = v5;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v37;
        v21 = *(v37 + 72) * v19;
        v23 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v21, v35);
        v19 *= 16;
        v24 = *(v3 + 56) + v19;
        v25 = *v24;
        v26 = *(v24 + 8);
        (*(v20 + 32))(*(v15 + 48) + v21, v23, v22);
        v27 = (*(v15 + 56) + v19);
        *v27 = v25;
        v27[1] = v26;
        v28 = v25;
        v3 = v33;
        v13 = v38;
      }

      while (v38);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v18 = *(v7 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
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

void sub_1000C3158()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D9C00, &qword_1001789C8);
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
}

void sub_1000C32A4()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D9C08, &unk_1001789D0);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void sub_1000C3404()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D9C28, &qword_1001789E0);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        swift_unknownObjectRetain();
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

void sub_1000C3560()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D9CA0, &qword_100178A30);
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
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        LOBYTE(v18) = *(v18 + 20);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        *(v22 + 20) = v18;
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

unint64_t sub_1000C3748(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  type metadata accessor for DeviceType(0);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = &v10[a3];
      v15 = (v9 + 32 + 8 * a2);
      if (result != v15 || result >= v15 + 8 * v14)
      {
        result = memmove(result, v15, 8 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v10 = a4;
    result = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1000C3828(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

void sub_1000C38C4(uint64_t a1, uint64_t a2)
{
  if (a1 > 0xFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (((a2 | a1) & 0x8000000000000000) == 0)
  {
    if (a2 <= 0xFFFFFFFFLL)
    {
      FPSupport_EnsureCAImageQueue();
      goto LABEL_8;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  __break(1u);
  goto LABEL_7;
}

void sub_1000C3DBC(uint64_t a1)
{
  ReleasedImageInfo = CAImageQueueGetReleasedImageInfo();
  if (!ReleasedImageInfo || !a1)
  {
    return;
  }

  v3 = *ReleasedImageInfo;
  v4 = *(ReleasedImageInfo + 8);
  v5 = *(ReleasedImageInfo + 56);
  v6 = *(**(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_cleaning) + 136);

  v8 = atomic_load(v6(v7));

  if (v8)
  {
    goto LABEL_4;
  }

  if (!v3)
  {
    static LoggingSignposter.previewLayerCollectUndisplayed.getter();
    LoggingSignposter.emitEvent(_:shouldLog:)();
LABEL_4:

    return;
  }

  if (*(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_targetFrameInterval) + 0.001 < v5)
  {
    static LoggingSignposter.previewLayerLongPreviewFrame.getter();
    LoggingSignposter.emitEvent(_:shouldLog:)();
  }

  v9 = OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes;
  v10 = *(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1000953CC(0, *(v10 + 2) + 1, 1, v10);
    *(a1 + v9) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1000953CC((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  *&v10[8 * v13 + 32] = v4;
  *(a1 + v9) = v10;
  v14 = sub_1000B7E3C(v26);
  v16 = v15;
  v18 = v17;
  (v14)(v26, 0);
  if (v16 || v18)
  {
    v19 = *(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerStateMutexQueue);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = 1;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1000C4F50;
    *(v21 + 24) = v20;
    v26[4] = sub_1000C5638;
    v26[5] = v21;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 1107296256;
    v26[2] = sub_100071D78;
    v26[3] = &unk_1001C3928;
    v22 = _Block_copy(v26);

    dispatch_sync(v19, v22);
    _Block_release(v22);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
      return;
    }

    v23 = *(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewFrameDisplayedCallback);
    if (v23)
    {
      v24 = *(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewFrameDisplayedCallback + 8);

      v23(v25);
      sub_100005640(v23, v24);
    }
  }
}

unint64_t sub_1000C4108(unint64_t result, uint64_t a2, uint64_t a3)
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

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
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

unint64_t sub_1000C41B0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1000953CC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1000C4108(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1000C4270(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, __IOSurface *a6)
{
  v81 = a5;
  v82 = a6;
  v80 = a1;
  v10 = type metadata accessor for CameraImage();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000033A8(&unk_1001D9BE8, &unk_1001789B8);
  v78 = *(v14 - 8);
  v79 = v14;
  __chkstk_darwin(v14);
  v77 = &v66 - v15;
  v16 = type metadata accessor for CameraSourceFrameMetadata();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a4 == 1 || a4 == 3 && a2 == 2 && !a3)
    {
      v75 = v6;
      v76 = Strong;
      dispatch thunk of CameraSourceFrame.metadata.getter();
      v21 = CameraSourceFrameMetadata.isHighResolutionStill.getter();
      v22 = *(v17 + 8);
      v74 = v19;
      v73 = v22;
      v72 = v17 + 8;
      v22(v19, v16);
      if (v21)
      {

        return;
      }

      dispatch thunk of CameraSourceFrame.cameraImage.getter();
      if ((*(v11 + 88))(v13, v10) != enum case for CameraImage.pixelBuffer(_:))
      {

        (*(v11 + 8))(v13, v10);
        return;
      }

      (*(v11 + 96))(v13, v10);
      (*(v78 + 32))(v77, v13, v79);
      SendableTransfer.wrappedValue.getter();
      v23 = aBlock;
      v24 = v75;
      v25 = v75 + OBJC_IVAR____TtC6Tamale12PreviewLayer_queueWrapper;
      swift_beginAccess();
      v26 = v74;
      if (*v25)
      {
        goto LABEL_16;
      }

      Width = CVPixelBufferGetWidth(v23);
      v70 = v23;
      Height = CVPixelBufferGetHeight(v23);
      sub_1000C38C4(Width, Height);
      v30 = v29;
      v32 = v31;
      swift_beginAccess();
      if (*v25)
      {
        sub_1000C4EE0(*v25);
      }

      *v25 = v30;
      *(v25 + 8) = v32;
      swift_endAccess();
      v33 = *(v24 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerStateMutexQueue);
      v34 = swift_allocObject();
      *(v34 + 16) = v24;
      *(v34 + 24) = 1;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_1000C5634;
      *(v35 + 24) = v34;
      v88 = sub_1000C5638;
      v89 = v35;
      aBlock = _NSConcreteStackBlock;
      v85 = 1107296256;
      v86 = sub_100071D78;
      v87 = &unk_1001C37C0;
      v36 = _Block_copy(&aBlock);

      dispatch_sync(v33, v36);
      _Block_release(v36);
      LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

      v23 = v70;
      if (v33)
      {
        __break(1u);
      }

      else
      {
LABEL_16:
        v38 = sub_1000B7E3C(&aBlock);
        v71 = v39;
        if (!v39 && !v37)
        {
          (v38)(&aBlock, 0);

          (*(v78 + 8))(v77, v79);
          return;
        }

        (v38)(&aBlock, 0);
        v40 = *(v24 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerStateMutexQueue);
        OS_dispatch_queue.sync<A>(execute:)();
        if (aBlock == 1)
        {
          v70 = v40;
          sub_10005BBC4(0, &qword_1001D6B40, OS_dispatch_queue_ptr);
          v41 = static OS_dispatch_queue.main.getter();
          v42 = swift_allocObject();
          v43 = v71;
          *(v42 + 16) = v76;
          *(v42 + 24) = v43;
          v44 = swift_allocObject();
          *(v44 + 16) = sub_1000C4F38;
          *(v44 + 24) = v42;
          v69 = v42;
          v88 = sub_1000C5638;
          v89 = v44;
          aBlock = _NSConcreteStackBlock;
          v85 = 1107296256;
          v86 = sub_100071D78;
          v87 = &unk_1001C3838;
          v45 = _Block_copy(&aBlock);
          v46 = v76;

          dispatch_sync(v41, v45);

          _Block_release(v45);
          LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

          if (v41)
          {
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v47 = swift_allocObject();
          *(v47 + 16) = v24;
          *(v47 + 24) = 0;
          v48 = swift_allocObject();
          *(v48 + 16) = sub_1000C5634;
          *(v48 + 24) = v47;
          v88 = sub_1000C5638;
          v89 = v48;
          aBlock = _NSConcreteStackBlock;
          v85 = 1107296256;
          v86 = sub_100071D78;
          v87 = &unk_1001C38B0;
          v49 = _Block_copy(&aBlock);

          dispatch_sync(v70, v49);
          _Block_release(v49);
          LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

          if (v49)
          {
LABEL_42:
            __break(1u);
            return;
          }

          v50 = sub_1000C4F38;
        }

        else
        {
          v50 = 0;
          v69 = 0;
        }

        IOSurface = CVPixelBufferGetIOSurface(v23);
        if (!IOSurface)
        {
          (*(v78 + 8))(v77, v79);

          v64 = v50;
          v65 = v69;
LABEL_36:
          sub_100005640(v64, v65);
          return;
        }

        v67 = v50;
        v68 = v16;
        v52 = IOSurface;
        BaseAddress = IOSurfaceGetBaseAddress(v52);
        v54 = OBJC_IVAR____TtC6Tamale12PreviewLayer_bufferIdentifiers;
        swift_beginAccess();
        v55 = *(v24 + v54);
        if (!*(v55 + 16) || (sub_100096048(BaseAddress), (v56 & 1) == 0))
        {
          static LoggingSignposter.previewLayerImageQueueRegisterSurface.getter();
          v70 = v23;
          default argument 2 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
          LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
          v57 = CAImageQueueRegisterIOSurfaceBuffer();
          sub_100006AAC(&aBlock, v87);
          v23 = v70;
          dispatch thunk of LoggingSignposter.Interval.end()();
          sub_100006B44(&aBlock);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = *(v24 + v54);
          *(v24 + v54) = 0x8000000000000000;
          sub_1000C1360(v57, BaseAddress, isUniquelyReferenced_nonNull_native);
          v55 = v83;
          *(v24 + v54) = v83;
          swift_endAccess();
        }

        v82 = v52;
        if (*(v55 + 16))
        {
          sub_100096048(BaseAddress);
          if (v59)
          {
            v60 = CACurrentMediaTime();
            sub_1000B96F4(v60);
            static LoggingSignposter.previewLayerImageQueueEnqueue.getter();
            LoggingSignposter.emitEvent(_:shouldLog:)();
            dispatch thunk of CameraSourceFrame.metadata.getter();
            sub_1000B9C44();
            v73(v26, v68);
            CAImageQueueInsertImageWithRotation();
            static LoggingSignposter.previewLayerImageQueueCollect.getter();
            default argument 2 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
            LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
            v61 = CAImageQueueCollect();
            sub_100006AAC(&aBlock, v87);
            dispatch thunk of LoggingSignposter.Interval.end()();
            if (v61 > 1)
            {
              (*(v78 + 8))(v77, v79);

              v62 = v69;
              v63 = v67;
            }

            else
            {
              static LoggingSignposter.previewLayerConsumeUnconsumed.getter();
              LoggingSignposter.emitEvent(_:shouldLog:)();
              v62 = v69;
              v63 = v67;
              CAImageQueueConsumeUnconsumedInRange();

              (*(v78 + 8))(v77, v79);
            }

            sub_100006B44(&aBlock);
            v64 = v63;
            v65 = v62;
            goto LABEL_36;
          }

          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }
}

void sub_1000C4EE0(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sub_1000C4F00()
{

  return swift_deallocObject();
}

uint64_t sub_1000C4F5C()
{

  return swift_deallocObject();
}

uint64_t sub_1000C4FA0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C4FD8()
{
  v1 = *(v0 + 16);
  v2 = sub_1000033A8(&unk_1001D9BE8, &unk_1001789B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);

  if (*(v0 + 64) >= 5uLL)
  {
  }

  v8 = (v4 + 97) & ~v4;
  v9 = sub_1000616E4(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  (*(v3 + 8))(v0 + v8, v2, v9);
  (*(v6 + 8))(v0 + ((v8 + v5 + v7) & ~v7), v1);

  return swift_deallocObject();
}

uint64_t sub_1000C5164()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(sub_1000033A8(&unk_1001D9BE8, &unk_1001789B8) - 8);
  v4 = (*(v3 + 80) + 97) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  return sub_1000BAA24(*(v0 + 32), *(v0 + 40), *(v0 + 48), (v0 + 56), v0 + v4, v0 + v5, *(v0 + ((*(*(v1 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)), v1, v2);
}

uint64_t sub_1000C532C(uint64_t a1)
{
  v2 = sub_1000033A8(&unk_1001D9590, &qword_1001771F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C5394(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&unk_1001D80A0, &qword_100178A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&unk_1001D80A0, &qword_100178A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C54DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C5544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C55A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1000C5798(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SubjectLiftViewDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000C5800()
{
  swift_getKeyPath();
  sub_1000C5E60(&qword_1001D9EC0, type metadata accessor for SubjectLiftAnalysisViewModel, &unk_100178AFC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000C58A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C5E60(&qword_1001D9EC0, type metadata accessor for SubjectLiftAnalysisViewModel, &unk_100178AFC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

double sub_1000C5950(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000C5E60(&qword_1001D9EC0, type metadata accessor for SubjectLiftAnalysisViewModel, &unk_100178AFC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_1000C5A1C()
{
  *(v0 + 16) = [objc_allocWithZone(UIView) init];
  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for SubjectLiftViewDelegate()) init];
  *(v0 + 32) = [objc_allocWithZone(VKCImageAnalysisInteraction) init];
  *(v0 + 40) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  [*(v0 + 32) setWantsAutomaticContentsRectCalculation:0];
  [*(v0 + 32) setDelegate:*(v0 + 24)];
  [*(v0 + 16) addInteraction:*(v0 + 32)];
  return v0;
}

uint64_t sub_1000C5AD4()
{

  v1 = OBJC_IVAR____TtC6Tamale28SubjectLiftAnalysisViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C5BB8(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000C5C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000C5CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000C5D8C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000C5E60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000C5EA8()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

Swift::Int sub_1000C5EE4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if (a3 <= 1u)
  {
    if (a3)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
    v7 = a1;
    goto LABEL_8;
  }

  if (a3 != 2)
  {
    if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 1;
    }

LABEL_8:
    Hasher._combine(_:)(v7);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(5uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000C5FE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 <= 1)
  {
    if (*(v1 + 16))
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
    v6 = v2;
    goto LABEL_10;
  }

  v5 = v1[1];
  if (v3 != 2)
  {
    if (v2 | v5)
    {
      if (v2 ^ 1 | v5)
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 1;
    }

LABEL_10:
    Hasher._combine(_:)(v6);
    return;
  }

  Hasher._combine(_:)(5uLL);

  String.hash(into:)();
}

Swift::Int sub_1000C60A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3 <= 1)
  {
    if (v3)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
    v5 = v1;
    goto LABEL_8;
  }

  if (v3 != 2)
  {
    if (v1 | v2)
    {
      if (v1 ^ 1 | v2)
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 1;
    }

LABEL_8:
    Hasher._combine(_:)(v5);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(5uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000C6178@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C6624(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000C61B0()
{
  v1 = 0x6E2820796D6C6162;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x2820797473616F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000C635C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1000C6378(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000C63C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000C6404(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1000C6434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D9F60;
  if (!qword_1001D9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9F60);
  }

  return result;
}

unint64_t sub_1000C6488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D9F68;
  if (!qword_1001D9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9F68);
  }

  return result;
}

unint64_t sub_1000C64E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D9F70;
  if (!qword_1001D9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9F70);
  }

  return result;
}

uint64_t sub_1000C6538(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 == 1)
      {
        return a4 == a1;
      }
    }

    else if (!a6)
    {
      return a4 == a1;
    }

    return 0;
  }

  if (a3 != 2)
  {
    if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 3 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 2)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_1000C6624(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1000C6634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D9F78;
  if (!qword_1001D9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9F78);
  }

  return result;
}

unint64_t sub_1000C66A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D9F80;
  if (!qword_1001D9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9F80);
  }

  return result;
}

void *sub_1000C6704()
{
  v1 = type metadata accessor for Text.Layout.Line();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Text.Layout();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000033A8(&qword_1001DA1A0, &qword_100179440);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v18[-1] - v11;
  v19 = _swiftEmptyArrayStorage;
  (*(v6 + 16))(v8, v0, v5);
  sub_1000CB3D8(&qword_1001DA1A8, &type metadata accessor for Text.Layout, &protocol conformance descriptor for Text.Layout);
  dispatch thunk of Sequence.makeIterator()();
  v13 = *(v10 + 44);
  sub_1000CB3D8(&qword_1001DA1B0, &type metadata accessor for Text.Layout, &protocol conformance descriptor for Text.Layout);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v12[v13] != v18[0])
  {
    v14 = (v2 + 16);
    do
    {
      v15 = dispatch thunk of Collection.subscript.read();
      (*v14)(v4);
      v15(v18, 0);
      dispatch thunk of Collection.formIndex(after:)();
      sub_1000EB94C(v4);
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v12[v13] != v18[0]);
  }

  sub_10001370C(v12, &qword_1001DA1A0, &qword_100179440);
  return v19;
}

uint64_t sub_1000C69FC(uint64_t a1)
{
  v74 = a1;
  v1 = sub_1000033A8(&qword_1001DA138, &qword_100179288);
  __chkstk_darwin(v1);
  v71 = &v54 - v2;
  v3 = sub_1000033A8(&qword_1001DA148, &qword_1001792C0);
  v4 = __chkstk_darwin(v3 - 8);
  v70 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v69 = &v54 - v7;
  __chkstk_darwin(v6);
  v9 = &v54 - v8;
  v55 = type metadata accessor for Text.CustomAttributes();
  v67 = *(v55 - 8);
  __chkstk_darwin(v55);
  v77 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for AttributedString.Runs.Index();
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for AttributedString.Runs.Run();
  v66 = *(v79 - 8);
  v12 = __chkstk_darwin(v79);
  v78 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v68 = &v54 - v14;
  v15 = type metadata accessor for AttributedString.Runs();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AttributedSubstring();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000033A8(&qword_1001DA150, &qword_1001792C8);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = &v54 - v25;
  v27 = sub_100013608(&qword_1001DA158, &qword_1001DA138, &qword_100179288, &protocol conformance descriptor for Range<A>);
  v72 = v1;
  v65 = v27;
  AttributedString.subscript.getter();
  AttributedSubstring.runs.getter();
  (*(v20 + 8))(v22, v19);
  (*(v16 + 16))(v26, v18, v15);
  v28 = *(v24 + 44);
  v29 = v15;
  v30 = sub_1000CB3D8(&qword_1001DA160, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  v74 = v28;
  dispatch thunk of Collection.startIndex.getter();
  v31 = v18;
  v32 = v55;
  (*(v16 + 8))(v31, v29);
  ++v73;
  v63 = (v66 + 16);
  v62 = (v66 + 32);
  v61 = (v67 + 48);
  v56 = (v67 + 32);
  v60 = (v67 + 16);
  v59 = (v67 + 56);
  v58 = (v67 + 8);
  v57 = (v66 + 8);
  v66 = v26;
  v67 = v29;
  v64 = v30;
  while (1)
  {
    v43 = v75;
    dispatch thunk of Collection.endIndex.getter();
    sub_1000CB3D8(&qword_1001DA168, &type metadata accessor for AttributedString.Runs.Index, &protocol conformance descriptor for AttributedString.Runs.Index);
    v44 = v76;
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v73)(v43, v44);
    if (v45)
    {
      break;
    }

    v46 = dispatch thunk of Collection.subscript.read();
    v47 = v68;
    v48 = v79;
    (*v63)(v68);
    v46(v80, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v49 = (*v62)(v78, v47, v48);
    sub_1000CB0CC(v49, v50, v51);
    AttributedString.Runs.Run.subscript.getter();
    v52 = *v61;
    if ((*v61)(v9, 1, v32) == 1)
    {
      Text.CustomAttributes.init()();
      v33 = v52(v9, 1, v32);
      if (v33 != 1)
      {
        v33 = sub_10001370C(v9, &qword_1001DA148, &qword_1001792C0);
      }
    }

    else
    {
      v33 = (*v56)(v77, v9, v32);
    }

    sub_1000CB120(v33, v34, v35);
    v36 = v77;
    Text.CustomAttributes.add<A>(_:)();
    v37 = v9;
    v38 = v71;
    v39 = v78;
    AttributedString.Runs.Run.range.getter();
    v40 = v69;
    (*v60)(v69, v36, v32);
    (*v59)(v40, 0, 1, v32);
    v41 = AttributedString.subscript.modify();
    sub_1000CB174(v40, v70);
    AttributedSubstring.subscript.setter();
    sub_10001370C(v40, &qword_1001DA148, &qword_1001792C0);
    v41(v80, 0);
    v42 = v38;
    v9 = v37;
    sub_10001370C(v42, &qword_1001DA138, &qword_100179288);
    (*v58)(v36, v32);
    (*v57)(v39, v79);
    v26 = v66;
  }

  return sub_10001370C(v26, &qword_1001DA150, &qword_1001792C8);
}

uint64_t sub_1000C72F8@<X0>(uint64_t *a3@<X8>)
{
  v56 = a3;
  v3 = sub_1000033A8(&qword_1001DA128, &qword_100179278);
  __chkstk_darwin(v3 - 8);
  v5 = &v55 - v4;
  v6 = sub_1000033A8(&qword_1001DA130, &qword_100179280);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - v7;
  v66 = sub_1000033A8(&qword_1001DA138, &qword_100179288);
  v9 = *(v66 - 8);
  __chkstk_darwin(v66);
  v61 = &v55 - v10;
  v11 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for AttributedString();
  v58 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v55 - v15;

  v17 = String.tokensWithSpaces()();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v57 = v17;
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = type metadata accessor for Locale();
    v20 = *(v19 - 8);
    v21 = *(v20 + 56);
    v64 = v20 + 56;
    v65 = v21;
    v63 = (v9 + 48);
    v59 = (v58 + 8);
    v60 = v19;
    v22 = (v57 + 40);
    do
    {
      v26 = *v22;
      v67 = *(v22 - 1);
      v68 = v26;
      v65(v5, 1, 1, v19);
      v27 = sub_1000CB3D8(&qword_1001DA140, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
      sub_10002EC9C(v27, v28, v29);

      AttributedStringProtocol.range<A>(of:options:locale:)();
      sub_10001370C(v5, &qword_1001DA128, &qword_100179278);

      if ((*v63)(v8, 1, v66) == 1)
      {
        v23 = v8;
        v24 = &qword_1001DA130;
        v25 = &qword_100179280;
      }

      else
      {
        v30 = v61;
        sub_1000CB05C(v8, v61);
        sub_1000C69FC(v30);
        v31 = v8;
        v32 = v5;
        v33 = v12;
        v34 = v62;
        AttributedString.init(stringLiteral:)();
        AttributedString.insert<A>(_:at:)();
        v35 = v34;
        v12 = v33;
        v5 = v32;
        v8 = v31;
        v19 = v60;
        (*v59)(v35, v12);
        v23 = v30;
        v24 = &qword_1001DA138;
        v25 = &qword_100179288;
      }

      sub_10001370C(v23, v24, v25);
      v22 += 2;
      --v18;
    }

    while (v18);
  }

  v36 = v58;
  (*(v58 + 16))(v62, v16, v12);
  v37 = Text.init(_:)();
  v39 = v38;
  v41 = v40;
  (*(v36 + 8))(v16, v12);
  static Font.largeTitle.getter();
  v42 = Text.font(_:)();
  v44 = v43;
  v46 = v45;

  sub_100020D44(v37, v39, v41 & 1);

  static Font.Weight.bold.getter();
  v47 = Text.fontWeight(_:)();
  v49 = v48;
  LOBYTE(v39) = v50;
  v52 = v51;
  sub_100020D44(v42, v44, v46 & 1);

  result = swift_getKeyPath();
  v54 = v56;
  *v56 = v47;
  v54[1] = v49;
  *(v54 + 16) = v39 & 1;
  v54[3] = v52;
  v54[4] = result;
  *(v54 + 40) = 1;
  return result;
}

uint64_t sub_1000C7890@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for LocalizedStringResource();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OnboardingMastheadView(0);
  v9 = (v8 - 8);
  v40 = *(v8 - 8);
  v10 = *(v40 + 64);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000033A8(&qword_1001DA028, &qword_100179108);
  v13 = *(v12 - 8);
  v44 = v12;
  v45 = v13;
  __chkstk_darwin(v12);
  v41 = &v37 - v14;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v15 = (v1 + v9[8]);
  v16 = *v15;
  v17 = v15[1];
  v64[0] = v16;
  v64[1] = v17;
  sub_1000033A8(&qword_1001D4888, &qword_1001718C0);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v38 = static Alignment.center.getter();
  v39 = v18;
  static Color.white.getter();
  v19 = v1 + v9[9];
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v64[0]) = v20;
  v64[1] = v21;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  v22 = Color.opacity(_:)();

  v23 = static Alignment.center.getter();
  v25 = v24;
  sub_1000C7E98(v2, v52);
  *&v53[0] = v23;
  *(&v53[0] + 1) = v25;
  v53[1] = *v52;
  v53[2] = *&v52[16];
  v53[3] = *&v52[32];
  v53[4] = *&v52[48];
  v61 = *&v52[16];
  v62 = *&v52[32];
  v63 = *&v52[48];
  v59 = v53[0];
  v60 = *v52;
  v54[0] = v23;
  v54[1] = v25;
  v55 = *v52;
  v56 = *&v52[16];
  v57 = *&v52[32];
  v58 = *&v52[48];
  sub_1000CA18C(v53, v64);
  sub_10001370C(v54, &qword_1001DA030, &qword_100179110);
  sub_1000CA1FC(v2, v11);
  v26 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v27 = swift_allocObject();
  sub_1000CA264(v11, v27 + v26);
  *v52 = &off_1001BEEC8;
  *&v52[8] = 0x403C000000000000;
  *&v52[80] = v65[4];
  *&v52[96] = v65[5];
  *&v52[16] = v65[0];
  *&v52[32] = v65[1];
  *&v52[64] = v65[3];
  *&v52[48] = v65[2];
  *&v52[160] = v65[9];
  *&v52[144] = v65[8];
  *&v52[112] = v65[6];
  *&v52[128] = v65[7];
  *&v52[176] = v22;
  *&v52[184] = v38;
  *&v52[264] = v63;
  *&v52[248] = v62;
  *&v52[232] = v61;
  *&v52[216] = v60;
  *&v52[200] = v59;
  *&v52[192] = v39;
  *&v52[280] = 0x3FD999999999999ALL;
  *&v52[288] = 0x3FF3333333333333;
  *&v52[296] = sub_1000CA2C8;
  *&v52[304] = v27;
  *&v52[312] = 0;
  *&v52[320] = 0;
  static AccessibilityChildBehavior.combine.getter();
  v28 = sub_1000033A8(&qword_1001DA038, &qword_100179118);
  v29 = sub_1000CA2E0();
  v30 = v41;
  View.accessibilityElement(children:)();
  (*(v42 + 8))(v7, v43);
  memcpy(v64, v52, sizeof(v64));
  sub_10001370C(v64, &qword_1001DA038, &qword_100179118);
  (*(v47 + 16))(v46, v2 + v9[10], v48);
  *v52 = String.init(localized:)();
  *&v52[8] = v31;
  v50 = v28;
  v51 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10002EC9C(OpaqueTypeConformance2, v33, v34);
  v35 = v44;
  View.accessibilityLabel<A>(_:)();

  return (*(v45 + 8))(v30, v35);
}

uint64_t sub_1000C7E98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for OnboardingMastheadView(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 20);
  v29 = a1;
  v11 = (a1 + v10);
  v12 = *v11;
  v13 = *(v11 + 1);
  v31 = v12;
  v32 = v13;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  result = 0;
  v20 = 0;
  v21 = 0;
  if (v30 == 1)
  {
    v22 = v29;
    (*(v7 + 16))(v9, v29 + *(v4 + 32), v6);
    v14 = String.init(localized:)();
    v15 = v23;
    sub_1000CA758(v14, v23, v24);
    v16 = AnyTransition.init<A>(_:)();
    v25 = v28;
    sub_1000CA1FC(v22, v28);
    v26 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v18 = swift_allocObject();
    sub_1000CA264(v25, v18 + v26);
    result = static Alignment.center.getter();
    v17 = sub_1000CA7AC;
    v21 = 256;
  }

  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v21;
  a2[4] = v17;
  a2[5] = v18;
  a2[6] = result;
  a2[7] = v20;
  return result;
}

uint64_t sub_1000C80F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v39 = a3;
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v40 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OnboardingMastheadView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ContentSizeCategory();
  v12 = *(v38 - 8);
  __chkstk_darwin(v38);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = static Color.clear.getter();
  v36 = a2;
  v37 = v15;
  v42 = v15;
  sub_100054378(v14);
  sub_1000CA1FC(a2, v11);
  v35 = *(v5 + 16);
  v30 = v7;
  v31 = v4;
  v16 = v4;
  v35(v7, v41, v4);
  v17 = *(v9 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = *(v5 + 80);
  v20 = (v10 + v19 + v18) & ~v19;
  v33 = v17 | v19;
  v34 = v18;
  v21 = swift_allocObject();
  sub_1000CA264(v11, v21 + v18);
  v32 = *(v5 + 32);
  v32(v21 + v20, v7, v16);
  sub_1000CB3D8(&qword_1001DA0C8, &type metadata accessor for ContentSizeCategory, &protocol conformance descriptor for ContentSizeCategory);
  v22 = v38;
  v23 = v39;
  View.onChange<A>(of:initial:_:)();

  (*(v12 + 8))(v14, v22);

  sub_1000CA1FC(v36, v11);
  v24 = v30;
  v25 = v31;
  v35(v30, v41, v31);
  v26 = swift_allocObject();
  sub_1000CA264(v11, v26 + v34);
  v32(v26 + v20, v24, v25);
  result = sub_1000033A8(&qword_1001DA0D0, &qword_100179160);
  v28 = (v23 + *(result + 36));
  *v28 = sub_1000CAA54;
  v28[1] = v26;
  v28[2] = 0;
  v28[3] = 0;
  return result;
}

uint64_t sub_1000C84B4(uint64_t a1)
{
  GeometryProxy.size.getter();
  type metadata accessor for OnboardingMastheadView(0);
  sub_1000033A8(&qword_1001D4888, &qword_1001718C0);
  return State.wrappedValue.setter();
}

double sub_1000C8534(uint64_t a1)
{
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OnboardingMastheadView(0);
  v7 = v6 - 8;
  v28 = *(v6 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for DispatchTime();
  v30 = v9;
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  GeometryProxy.size.getter();
  v16 = (a1 + *(v7 + 32));
  v17 = *v16;
  v18 = v16[1];
  aBlock = v17;
  v37 = v18;
  v42 = v19;
  sub_1000033A8(&qword_1001D4888, &qword_1001718C0);
  State.wrappedValue.setter();
  sub_100014FBC();
  v20 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v29 = *(v10 + 8);
  v29(v13, v9);
  sub_1000CA1FC(a1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_1000CA264(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v40 = sub_1000CACCC;
  v41 = v22;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_1000B5F04;
  v39 = &unk_1001C3F20;
  v23 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_1000CB3D8(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  v24 = v31;
  v25 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v35 + 8))(v24, v25);
  (*(v33 + 8))(v5, v34);
  v29(v15, v30);

  return result;
}

double sub_1000C89E0(uint64_t a1, __n128 a2)
{
  static Animation.linear(duration:)();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_1000C8A54(uint64_t a1)
{
  type metadata accessor for OnboardingMastheadView(0);
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  return State.wrappedValue.setter();
}

double sub_1000C8AD0(uint64_t a1)
{
  v30 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OnboardingMastheadView(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for DispatchTime();
  v29 = v6;
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014FBC();
  (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v28 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v16, v13);
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v7 + 8);
  v17(v10, v6);
  sub_1000CA1FC(v30, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v19 = swift_allocObject();
  sub_1000CA264(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  aBlock[4] = sub_1000CA70C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C3E58;
  v20 = _Block_copy(aBlock);
  v21 = v31;
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_1000CB3D8(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  v23 = v32;
  v22 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v28;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v36 + 8))(v23, v22);
  (*(v34 + 8))(v21, v35);
  v17(v12, v29);

  return result;
}

double sub_1000C8FEC(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

double sub_1000C9058(uint64_t a1)
{
  type metadata accessor for OnboardingMastheadView(0);

  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  State.wrappedValue.setter();

  return result;
}

uint64_t sub_1000C9114@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  *a1 = swift_getKeyPath();
  sub_1000033A8(&qword_1001D6228, qword_100179080);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for OnboardingMastheadView(0);
  v9 = a1 + v8[5];
  LOBYTE(v17) = 0;
  State.init(wrappedValue:)();
  v10 = v19;
  *v9 = v18;
  *(v9 + 1) = v10;
  v11 = (a1 + v8[6]);
  v17 = 0;
  State.init(wrappedValue:)();
  v12 = v19;
  *v11 = v18;
  v11[1] = v12;
  v13 = a1 + v8[7];
  LOBYTE(v17) = 0;
  State.init(wrappedValue:)();
  v14 = v19;
  *v13 = v18;
  *(v13 + 1) = v14;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

double sub_1000C942C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t *a6)
{
  v10 = type metadata accessor for Text.Layout.Run();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C6704();
  v15 = v14[2];
  if (v15)
  {
    v16 = 0;
    v17 = a2 - a4;
    v18 = *a6;
    v21 = *(v11 + 16);
    v19 = v11 + 16;
    v20 = v21;
    v22 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v29 = v14;
    v23 = v14 + v22;
    v24 = *(v19 + 56);
    do
    {
      v20(v13, v23, v10);
      v25 = a1 - v17 * v16;
      if (v25 > a2)
      {
        v25 = a2;
      }

      if (v25 < 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v25;
      }

      ++v16;
      v30 = v18;

      sub_1000C9618(v13, &v30, v26, v27, a2);

      (*(v19 - 8))(v13, v10);
      v23 += v24;
    }

    while (v15 != v16);
  }

  return result;
}

uint64_t sub_1000C9618(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v21 = a2;
  v24 = a1;
  v7 = type metadata accessor for GraphicsContext.Filter();
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Spring();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UnitCurve();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UnitCurve.easeIn.getter();
  UnitCurve.value(at:)(a3 / a5);
  v17 = *(v14 + 8);
  v17(v16, v13);
  type metadata accessor for Text.Layout.Run();
  sub_1000CB3D8(&qword_1001DA198, &type metadata accessor for Text.Layout.Run, &protocol conformance descriptor for Text.Layout.Run);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  dispatch thunk of Collection.distance(from:to:)();
  static UnitCurve.easeIn.getter();
  UnitCurve.value(at:)(1.0 - a3 / a5);
  v17(v16, v13);
  Spring.init(response:dampingRatio:)();
  v26 = 0;
  v27 = 0x4040000000000000;
  v25 = 0;
  Spring.value<A>(fromValue:toValue:initialVelocity:time:)();
  (*(v10 + 8))(v12, v20);
  GraphicsContext.translateBy(x:y:)();
  static GraphicsContext.Filter.blur(radius:options:)();
  GraphicsContext.addFilter(_:options:)();
  (*(v22 + 8))(v9, v23);
  GraphicsContext.opacity.setter();
  return GraphicsContext.draw(_:options:)();
}

double sub_1000C99EC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_1000C99F8(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_1000C9A04(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1000C9A30;
}

double sub_1000C9A30(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t sub_1000C9A44(void *a1, double a2)
{
  result = Transaction.disablesAnimations.getter();
  if ((result & 1) == 0)
  {
    static Animation.linear(duration:)();
    return Transaction.animation.setter();
  }

  return result;
}

uint64_t sub_1000C9A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = sub_1000033A8(&qword_1001DA110, &qword_100179268);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  result = sub_1000033A8(&qword_1001DA0F0, &qword_100179260);
  v14 = (a2 + *(result + 36));
  *v14 = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  return result;
}

void sub_1000C9B38(uint64_t a1, uint64_t a2)
{
  TransitionPhase.isIdentity.getter();
  *(swift_allocObject() + 16) = 0x4014000000000000;
  sub_1000033A8(&qword_1001DA0E8, &qword_100179258);
  sub_1000033A8(&qword_1001DA0F0, &qword_100179260);
  sub_100013608(&qword_1001DA0F8, &qword_1001DA0E8, &qword_100179258, &protocol conformance descriptor for PlaceholderContentView<A>);
  sub_1000CAF70();
  View.transaction<A>(_:body:)();
}

uint64_t sub_1000C9CE4(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.sizeCategory.setter();
}

uint64_t type metadata accessor for OnboardingMastheadView(uint64_t a1)
{
  result = qword_1001D9FE0;
  if (!qword_1001D9FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C9E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D8E48, &unk_100178180);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = type metadata accessor for LocalizedStringResource();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000C9F64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000033A8(&qword_1001D8E48, &unk_100178180);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = type metadata accessor for LocalizedStringResource();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000CA098(uint64_t a1)
{
  sub_1000A5444(319);
  if (v1 <= 0x3F)
  {
    sub_100023B6C(319, &qword_1001D44A0, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_100023B6C(319, &qword_1001D4800, &type metadata for CGFloat);
      if (v3 <= 0x3F)
      {
        type metadata accessor for LocalizedStringResource();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000CA18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DA030, &qword_100179110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CA1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingMastheadView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CA264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingMastheadView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000CA2E0()
{
  result = qword_1001DA040;
  if (!qword_1001DA040)
  {
    sub_10001276C(&qword_1001DA038, &qword_100179118);
    sub_1000CA36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA040);
  }

  return result;
}

unint64_t sub_1000CA36C()
{
  result = qword_1001DA048;
  if (!qword_1001DA048)
  {
    sub_10001276C(&qword_1001DA050, &qword_100179120);
    sub_1000CA3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA048);
  }

  return result;
}

unint64_t sub_1000CA3F8()
{
  result = qword_1001DA058;
  if (!qword_1001DA058)
  {
    sub_10001276C(&qword_1001DA060, &qword_100179128);
    sub_1000CA484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA058);
  }

  return result;
}

unint64_t sub_1000CA484()
{
  result = qword_1001DA068;
  if (!qword_1001DA068)
  {
    sub_10001276C(&qword_1001DA070, &qword_100179130);
    sub_1000CA53C();
    sub_100013608(&qword_1001DA0B8, &qword_1001DA030, &qword_100179110, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA068);
  }

  return result;
}

unint64_t sub_1000CA53C()
{
  result = qword_1001DA078;
  if (!qword_1001DA078)
  {
    sub_10001276C(&qword_1001DA080, &qword_100179138);
    sub_1000CA5F4();
    sub_100013608(&qword_1001DA0A8, &qword_1001DA0B0, &unk_100179150, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA078);
  }

  return result;
}

unint64_t sub_1000CA5F4()
{
  result = qword_1001DA088;
  if (!qword_1001DA088)
  {
    sub_10001276C(&qword_1001DA090, &qword_100179140);
    sub_1000CA680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA088);
  }

  return result;
}

unint64_t sub_1000CA680()
{
  result = qword_1001DA098;
  if (!qword_1001DA098)
  {
    v1 = sub_10001276C(&qword_1001DA0A0, &qword_100179148);
    sub_1000B719C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA098);
  }

  return result;
}

double sub_1000CA724(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1000CA758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001DA0C0;
  if (!qword_1001DA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA0C0);
  }

  return result;
}

uint64_t sub_1000CA7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OnboardingMastheadView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000C80F8(a1, v6, a2);
}

uint64_t sub_1000CA848()
{
  v1 = type metadata accessor for OnboardingMastheadView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  sub_1000033A8(&qword_1001D6228, qword_100179080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ContentSizeCategory();
    (*(*(v7 - 8) + 8))(v0 + v2, v7);
  }

  else
  {
  }

  v8 = *(v1 + 32);
  v9 = type metadata accessor for LocalizedStringResource();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1000CAA6C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for OnboardingMastheadView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

uint64_t sub_1000CAB4C()
{
  v1 = type metadata accessor for OnboardingMastheadView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1000033A8(&qword_1001D6228, qword_100179080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for ContentSizeCategory();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 32);
  v5 = type metadata accessor for LocalizedStringResource();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1000CACE4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OnboardingMastheadView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000CAD84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CADCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000CAE1C()
{
  result = qword_1001DA0D8;
  if (!qword_1001DA0D8)
  {
    sub_10001276C(&qword_1001DA0E0, qword_1001791B8);
    sub_10001276C(&qword_1001DA038, &qword_100179118);
    sub_1000CA2E0();
    swift_getOpaqueTypeConformance2();
    sub_1000CB3D8(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA0D8);
  }

  return result;
}

unint64_t sub_1000CAF70()
{
  result = qword_1001DA100;
  if (!qword_1001DA100)
  {
    sub_10001276C(&qword_1001DA0F0, &qword_100179260);
    sub_100013608(&qword_1001DA108, &qword_1001DA110, &qword_100179268, &protocol conformance descriptor for PlaceholderContentView<A>);
    sub_100013608(&qword_1001DA118, &qword_1001DA120, &qword_100179270, &protocol conformance descriptor for _TextRendererViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA100);
  }

  return result;
}

uint64_t sub_1000CB05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DA138, &qword_100179288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000CB0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001DA170;
  if (!qword_1001DA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA170);
  }

  return result;
}

unint64_t sub_1000CB120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001DA178;
  if (!qword_1001DA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA178);
  }

  return result;
}

uint64_t sub_1000CB174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DA148, &qword_1001792C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CB204()
{
  sub_10001276C(&qword_1001DA0E8, &qword_100179258);
  sub_10001276C(&qword_1001DA0F0, &qword_100179260);
  sub_100013608(&qword_1001DA0F8, &qword_1001DA0E8, &qword_100179258, &protocol conformance descriptor for PlaceholderContentView<A>);
  sub_1000CAF70();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000CB2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001DA180;
  if (!qword_1001DA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA180);
  }

  return result;
}

unint64_t sub_1000CB32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001DA188;
  if (!qword_1001DA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA188);
  }

  return result;
}

unint64_t sub_1000CB384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001DA190;
  if (!qword_1001DA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA190);
  }

  return result;
}

uint64_t sub_1000CB3D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000CB44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000033A8(&qword_1001DA1B8, &unk_100179450);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000CB51C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000033A8(&qword_1001DA1B8, &unk_100179450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for OnboardingOverlay(uint64_t a1)
{
  result = qword_1001DA218;
  if (!qword_1001DA218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CB618(uint64_t a1)
{
  sub_1000CB750(319, &qword_1001DA228, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10001B610();
    if (v2 <= 0x3F)
    {
      sub_1000CB750(319, &qword_1001D4800, &type metadata for CGFloat, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_1000CB750(319, &qword_1001D44A0, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_1000CB7A0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000CB750(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000CB7A0()
{
  if (!qword_1001DA230)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_1001DA230);
    }
  }
}

uint64_t sub_1000CB814@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isSmartDialog.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000CB86C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = type metadata accessor for ScrollBounceBehavior();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000033A8(&qword_1001DA278, &qword_1001794C8);
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = v28 - v4;
  v33 = sub_1000033A8(&qword_1001DA280, &qword_1001794D0);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = v28 - v6;
  v29 = sub_1000033A8(&qword_1001DA288, &qword_1001794D8);
  __chkstk_darwin(v29);
  v9 = v28 - v8;
  v31 = sub_1000033A8(&qword_1001DA290, &qword_1001794E0);
  __chkstk_darwin(v31);
  v11 = v28 - v10;
  v32 = sub_1000033A8(&qword_1001DA298, &qword_1001794E8);
  __chkstk_darwin(v32);
  v13 = v28 - v12;
  sub_1000033A8(&qword_1001D7208, &qword_1001794F0);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v39 = v1;
  v40 = v14;
  v28[1] = v14;
  static Axis.Set.vertical.getter();
  sub_1000033A8(&qword_1001DA2A0, &qword_1001794F8);
  sub_100013608(&qword_1001DA2A8, &qword_1001DA2A0, &qword_1001794F8, &protocol conformance descriptor for ZStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollBounceBehavior.basedOnSize.getter();
  v15 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v15)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_100013608(&qword_1001DA2B0, &qword_1001DA278, &qword_1001794C8, &protocol conformance descriptor for ScrollView<A>);
  v16 = v35;
  View.scrollBounceBehavior(_:axes:)();
  (*(v36 + 8))(v3, v37);
  (*(v34 + 8))(v5, v16);
  v17 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  (*(v30 + 32))(v9, v7, v33);
  v19 = &v9[*(v29 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002091C(v9, v11, &qword_1001DA288, &qword_1001794D8);
  v20 = &v11[*(v31 + 36)];
  v21 = v46;
  *(v20 + 4) = v45;
  *(v20 + 5) = v21;
  *(v20 + 6) = v47;
  v22 = v42;
  *v20 = v41;
  *(v20 + 1) = v22;
  v23 = v44;
  *(v20 + 2) = v43;
  *(v20 + 3) = v23;
  sub_10002091C(v11, v13, &qword_1001DA290, &qword_1001794E0);
  *&v13[*(v32 + 36)] = 0;
  v24 = static SafeAreaRegions.all.getter();
  LOBYTE(KeyPath) = static Edge.Set.all.getter();

  v25 = v38;
  sub_10002091C(v13, v38, &qword_1001DA298, &qword_1001794E8);
  result = sub_1000033A8(&qword_1001DA2B8, &qword_100179530);
  v27 = v25 + *(result + 36);
  *v27 = v24;
  *(v27 + 8) = KeyPath;
  return result;
}

uint64_t sub_1000CBE5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.center.getter();
  a3[1] = v6;
  v7 = sub_1000033A8(&qword_1001DA2C0, &qword_100179538);
  return sub_1000CBEBC(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_1000CBEBC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v38 = a3;
  v37 = sub_1000033A8(&qword_1001DA2C8, &unk_100179540);
  v3 = __chkstk_darwin(v37);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = (&v34 - v6);
  v8 = sub_1000033A8(&qword_1001D50B0, &unk_100172760);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v39 = 0;
  v40 = 1;
  sub_1000033A8(&qword_1001D50B8, &qword_100179550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100170800;
  v16 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v16;
  v17 = static Axis.Set.vertical.getter();
  *(inited + 33) = v17;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v17)
  {
    Axis.Set.init(rawValue:)();
  }

  static Alignment.center.getter();
  View.containerRelativeFrame(_:alignment:)();
  *v7 = static Alignment.center.getter();
  v7[1] = v18;
  v19 = v7 + *(sub_1000033A8(&qword_1001DA2D0, &qword_100179558) + 44);
  *v19 = static HorizontalAlignment.center.getter();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = sub_1000033A8(&qword_1001DA2D8, &qword_100179560);
  sub_1000CC278(v35, v36, &v19[*(v20 + 44)]);
  LOBYTE(v19) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v21 = v7 + *(v37 + 36);
  *v21 = v19;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  v26 = *(v9 + 16);
  v26(v12, v14, v8);
  sub_1000138BC(v7, v5, &qword_1001DA2C8, &unk_100179540);
  v27 = v14;
  v28 = v12;
  v29 = v5;
  v30 = v38;
  v26(v38, v28, v8);
  v31 = &v30[*(sub_1000033A8(&qword_1001DA2E0, &qword_100179568) + 48)];
  sub_1000138BC(v29, v31, &qword_1001DA2C8, &unk_100179540);
  sub_10001370C(v7, &qword_1001DA2C8, &unk_100179540);
  v32 = *(v9 + 8);
  v32(v27, v8);
  sub_10001370C(v29, &qword_1001DA2C8, &unk_100179540);
  return (v32)(v28, v8);
}

uint64_t sub_1000CC278@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v56 = a2;
  v58 = *a2;
  v4 = type metadata accessor for Spring();
  __chkstk_darwin(v4 - 8);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmartDialogAnimationSettings();
  __chkstk_darwin(v6 - 8);
  v68 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001DA2E8, &qword_100179570);
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v59 = &v51 - v9;
  v61 = sub_1000033A8(&qword_1001DA2F0, &qword_100179578);
  __chkstk_darwin(v61);
  v60 = &v51 - v10;
  v11 = sub_1000033A8(&qword_1001DA2F8, &qword_100179580);
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = __chkstk_darwin(v11);
  v64 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v51 - v14;
  v15 = type metadata accessor for OnboardingOverlay(0);
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  v17 = __chkstk_darwin(v15);
  v53 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  v20 = type metadata accessor for OnboardingMastheadView(0);
  __chkstk_darwin(v20);
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_1000033A8(&qword_1001DA300, &qword_100179588);
  v24 = v23 - 8;
  v25 = __chkstk_darwin(v23);
  v57 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v51 - v27;
  sub_1000C9114(v22);
  sub_1000033A8(&qword_1001DA1B8, &unk_100179450);
  AccessibilityFocusState.projectedValue.getter();
  sub_1000CED8C(&qword_1001DA308, type metadata accessor for OnboardingMastheadView, &unk_1001790B8);
  v54 = v28;
  View.accessibilityFocused(_:)();

  sub_1000CE24C(v22);
  sub_1000CE2A8(a1, v19);
  v29 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v30 = swift_allocObject();
  sub_1000CE310(v19, v30 + v29);
  v31 = &v28[*(v24 + 44)];
  *v31 = sub_1000CE374;
  v31[1] = v30;
  v31[2] = 0;
  v31[3] = 0;
  Spring.init(response:dampingRatio:)();
  SmartDialogAnimationSettings.init(springAnimation:lineAnimationDelay:)();
  v71 = v56;
  sub_100013608(&qword_1001D7210, &qword_1001D7208, &qword_1001794F0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Publisher.eraseToAnyPublisher()();
  sub_1000CE2A8(a1, v19);
  v32 = swift_allocObject();
  sub_1000CE310(v19, v32 + v29);
  v33 = v53;
  sub_1000CE2A8(a1, v53);
  v34 = swift_allocObject();
  sub_1000CE310(v33, v34 + v29);
  sub_1000033A8(&qword_1001DA310, &qword_100179590);
  sub_1000033A8(&qword_1001DA318, &qword_100179598);
  sub_1000CE440();
  sub_1000CE4F8();
  v35 = v59;
  SmartDialog.init(animationSettings:animationTrigger:header:body:)();
  v36 = *(a1 + 80);
  v37 = *(a1 + 88);
  LOBYTE(v71) = v36;
  v72 = v37;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  if (v70)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  v39 = v60;
  (*(v62 + 32))(v60, v35, v63);
  *(v39 + *(v61 + 36)) = v38;
  LOBYTE(v71) = v36;
  v72 = v37;
  State.wrappedValue.getter();
  LOBYTE(v71) = v70;
  sub_1000CE5B0();

  v40 = v69;
  View.onChange<A>(of:initial:_:)();

  sub_10001370C(v39, &qword_1001DA2F0, &qword_100179578);
  v41 = v54;
  v42 = v57;
  sub_1000138BC(v54, v57, &qword_1001DA300, &qword_100179588);
  v43 = v64;
  v44 = v65;
  v45 = *(v65 + 16);
  v46 = v66;
  v45(v64, v40, v66);
  v47 = v67;
  sub_1000138BC(v42, v67, &qword_1001DA300, &qword_100179588);
  v48 = sub_1000033A8(&qword_1001DA360, &qword_1001795B8);
  v45((v47 + *(v48 + 48)), v43, v46);
  v49 = *(v44 + 8);
  v49(v69, v46);
  sub_10001370C(v41, &qword_1001DA300, &qword_100179588);
  v49(v43, v46);
  return sub_10001370C(v42, &qword_1001DA300, &qword_100179588);
}

double sub_1000CCAE8(uint64_t a1)
{
  v23 = a1;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OnboardingOverlay(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_100014FBC();
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v10 + 8);
  v24(v13, v9);
  sub_1000CE2A8(v23, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_1000CE310(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_1000CECE8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C4158;
  v18 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1000CED8C(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  v19 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v22;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v28 + 8))(v2, v19);
  (*(v26 + 8))(v5, v27);
  v24(v15, v9);

  return result;
}

double sub_1000CCF3C(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_1000CCFA8(uint64_t a1)
{
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.setter();
  type metadata accessor for OnboardingOverlay(0);
  sub_1000033A8(&qword_1001DA1B8, &unk_100179450);
  return AccessibilityFocusState.wrappedValue.setter();
}

__n128 sub_1000CD050@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000033A8(&qword_1001DA330, &qword_1001795A0);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0x4028000000000000;
  v6[16] = 0;
  v7 = sub_1000033A8(&qword_1001DA3B8, &qword_100179678);
  sub_1000CD1B0(a1, &v6[*(v7 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002091C(v6, a2, &qword_1001DA330, &qword_1001795A0);
  v8 = a2 + *(sub_1000033A8(&qword_1001DA310, &qword_100179590) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_1000CD1B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v92 = type metadata accessor for Font.Leading();
  v3 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000033A8(&qword_1001DA3C0, &unk_100179680);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v88 - v7;
  v9 = sub_1000033A8(&qword_1001DA3C8, &qword_10017A740);
  v10 = __chkstk_darwin(v9 - 8);
  v95 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v94 = &v88 - v13;
  v14 = __chkstk_darwin(v12);
  v93 = &v88 - v15;
  v16 = __chkstk_darwin(v14);
  v99 = v5;
  v100 = &v88 - v19;
  v20 = a1[1];
  v97 = v8;
  v98 = v6;
  if (v20)
  {
    *&v110 = *a1;
    *(&v110 + 1) = v20;
    sub_10002EC9C(v16, v17, v18);

    v21 = Text.init<A>(_:)();
    v23 = v22;
    v90 = v3;
    v25 = v24;
    static Font.title3.getter();
    v26 = Text.font(_:)();
    v89 = a1;
    v28 = v27;
    v30 = v29;

    sub_100020D44(v21, v23, v25 & 1);

    static Font.Weight.regular.getter();
    v31 = Text.fontWeight(_:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_100020D44(v26, v28, v30 & 1);

    KeyPath = swift_getKeyPath();
    v39 = static Color.white.getter();
    LOBYTE(v28) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v109 = v35 & 1;
    v108 = 0;
    *&v101 = v31;
    *(&v101 + 1) = v33;
    LOBYTE(v102) = v35 & 1;
    *(&v102 + 1) = v37;
    *&v103 = KeyPath;
    v3 = v90;
    BYTE8(v103) = 1;
    *&v104 = v39;
    v40 = v97;
    BYTE8(v104) = v28;
    v41 = v100;
    *&v105 = v42;
    *(&v105 + 1) = v43;
    *&v106 = v44;
    *(&v106 + 1) = v45;
    v107 = 0;
    sub_1000033A8(&qword_1001DA3D8, &qword_1001796C8);
    sub_1000CEA30();
    View.accessibilityIdentifier(_:)();
    v114 = v105;
    v115 = v106;
    v116 = v107;
    v110 = v101;
    v111 = v102;
    v112 = v103;
    v113 = v104;
    v46 = v98;
    v5 = v99;
    sub_10001370C(&v110, &qword_1001DA3D8, &qword_1001796C8);
    sub_10002091C(v40, v41, &qword_1001DA3C0, &unk_100179680);
    v47 = *(v46 + 56);
    v48 = v41;
    a1 = v89;
    v49 = v47(v48, 0, 1, v5);
  }

  else
  {
    v47 = *(v6 + 56);
    v49 = v47(v100, 1, 1, v5);
  }

  v52 = a1[3];
  if (v52)
  {
    *&v110 = a1[2];
    *(&v110 + 1) = v52;
    sub_10002EC9C(v49, v50, v51);

    v53 = Text.init<A>(_:)();
    v55 = v54;
    v57 = v56;
    static Font.subheadline.getter();
    v58 = v3;
    v59 = *(v3 + 104);
    v60 = v91;
    v61 = v92;
    v59(v91, enum case for Font.Leading.tight(_:), v92);
    Font.leading(_:)();

    (*(v58 + 8))(v60, v61);
    v62 = Text.font(_:)();
    v64 = v63;
    LOBYTE(v60) = v65;

    sub_100020D44(v53, v55, v57 & 1);

    static Font.Weight.medium.getter();
    v66 = Text.fontWeight(_:)();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    sub_100020D44(v62, v64, v60 & 1);

    v73 = swift_getKeyPath();
    static Color.white.getter();
    v74 = Color.opacity(_:)();

    LOBYTE(v64) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v109 = v70 & 1;
    v108 = 0;
    *&v101 = v66;
    *(&v101 + 1) = v68;
    LOBYTE(v102) = v70 & 1;
    *(&v102 + 1) = v72;
    *&v103 = v73;
    BYTE8(v103) = 1;
    *&v104 = v74;
    BYTE8(v104) = v64;
    *&v105 = v75;
    *(&v105 + 1) = v76;
    *&v106 = v77;
    *(&v106 + 1) = v78;
    v107 = 0;
    sub_1000033A8(&qword_1001DA3D8, &qword_1001796C8);
    sub_1000CEA30();
    v79 = v97;
    View.accessibilityIdentifier(_:)();
    v114 = v105;
    v115 = v106;
    v116 = v107;
    v110 = v101;
    v111 = v102;
    v112 = v103;
    v113 = v104;
    sub_10001370C(&v110, &qword_1001DA3D8, &qword_1001796C8);
    v80 = v79;
    v81 = v93;
    sub_10002091C(v80, v93, &qword_1001DA3C0, &unk_100179680);
    (*(v98 + 56))(v81, 0, 1, v99);
  }

  else
  {
    v81 = v93;
    v47(v93, 1, 1, v5);
  }

  v82 = v100;
  v83 = v94;
  sub_1000CE9B8(v100, v94);
  v84 = v95;
  sub_1000CE9B8(v81, v95);
  v85 = v96;
  sub_1000CE9B8(v83, v96);
  v86 = sub_1000033A8(&qword_1001DA3D0, &qword_100179690);
  sub_1000CE9B8(v84, v85 + *(v86 + 48));
  sub_10001370C(v81, &qword_1001DA3C8, &qword_10017A740);
  sub_10001370C(v82, &qword_1001DA3C8, &qword_10017A740);
  sub_10001370C(v84, &qword_1001DA3C8, &qword_10017A740);
  return sub_10001370C(v83, &qword_1001DA3C8, &qword_10017A740);
}

__n128 sub_1000CD948@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_1000033A8(&qword_1001DA348, &unk_1001795A8);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_1000033A8(&qword_1001DA368, &unk_1001795C0);
  sub_1000CDAA4(&v5[*(v6 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002091C(v5, a2, &qword_1001DA348, &unk_1001795A8);
  v7 = a2 + *(sub_1000033A8(&qword_1001DA318, &qword_100179598) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_1000CDAA4@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for OpacityTransition();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = __chkstk_darwin(v3);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v38 - v6;
  v7 = sub_1000033A8(&qword_1001D50F8, &qword_1001727A8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v38 = sub_1000033A8(&qword_1001DA370, &qword_1001795D0);
  v11 = *(v38 - 8);
  __chkstk_darwin(v38);
  v13 = &v38 - v12;
  v45 = sub_1000033A8(&qword_1001DA378, &qword_1001795D8);
  __chkstk_darwin(v45);
  v15 = &v38 - v14;
  v16 = sub_1000033A8(&qword_1001DA380, &unk_1001795E0);
  v17 = __chkstk_darwin(v16 - 8);
  v44 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v39 = &v38 - v19;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v42 = v56;
  v43 = v54;
  v41 = v58;
  v40 = v59;
  v62 = 1;
  v61 = v55;
  v60 = v57;

  sub_1000033A8(&qword_1001D5190, &unk_100172880);
  sub_100035D10();
  Button.init(action:label:)();
  v20 = sub_100013608(&qword_1001D51B0, &qword_1001D50F8, &qword_1001727A8, &protocol conformance descriptor for Button<A>);
  v23 = sub_100035DC8(v20, v21, v22);
  View.buttonStyle<A>(_:)();
  (*(v8 + 8))(v10, v7);
  v50 = v7;
  v51 = &type metadata for OnboardingProminentButtonStyle;
  v52 = v20;
  v53 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v38;
  View.smartDialogAnimatable()();
  (*(v11 + 8))(v13, v24);
  KeyPath = swift_getKeyPath();
  v26 = &v15[*(sub_1000033A8(&qword_1001DA388, &qword_100179628) + 36)];
  *v26 = KeyPath;
  v26[8] = 0;
  LODWORD(KeyPath) = static HierarchicalShapeStyle.primary.getter();
  *&v15[*(sub_1000033A8(&qword_1001DA390, &unk_100179630) + 36)] = KeyPath;
  v27 = v46;
  OpacityTransition.init()();
  v28 = v48;
  v29 = v49;
  (*(v48 + 16))(v47, v27, v49);
  sub_1000CED8C(&qword_1001D4E70, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v30 = v29;
  v31 = AnyTransition.init<A>(_:)();
  (*(v28 + 8))(v27, v30);
  *&v15[*(v45 + 36)] = v31;
  sub_1000CE6C0();
  v32 = v39;
  View.accessibilityIdentifier(_:)();
  sub_10001370C(v15, &qword_1001DA378, &qword_1001795D8);
  LOBYTE(v31) = v62;
  LOBYTE(v30) = v61;
  LOBYTE(v28) = v60;
  v33 = v44;
  sub_1000138BC(v32, v44, &qword_1001DA380, &unk_1001795E0);
  *a2 = 0;
  *(a2 + 8) = v31;
  v34 = v42;
  *(a2 + 16) = v43;
  *(a2 + 24) = v30;
  *(a2 + 32) = v34;
  *(a2 + 40) = v28;
  v35 = v40;
  *(a2 + 48) = v41;
  *(a2 + 56) = v35;
  v36 = sub_1000033A8(&qword_1001DA3B0, &qword_100179640);
  sub_1000138BC(v33, a2 + *(v36 + 48), &qword_1001DA380, &unk_1001795E0);
  sub_10001370C(v32, &qword_1001DA380, &unk_1001795E0);
  return sub_10001370C(v33, &qword_1001DA380, &unk_1001795E0);
}

uint64_t sub_1000CE0E8@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title3.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_100020D44(v2, v4, v6 & 1);

  static Font.Weight.semibold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_100020D44(v7, v9, v11 & 1);

  result = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1000CE24C(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingMastheadView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CE2A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingOverlay(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CE310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingOverlay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CE3BC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OnboardingOverlay(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000CE440()
{
  result = qword_1001DA320;
  if (!qword_1001DA320)
  {
    sub_10001276C(&qword_1001DA310, &qword_100179590);
    sub_100013608(&qword_1001DA328, &qword_1001DA330, &qword_1001795A0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA320);
  }

  return result;
}

unint64_t sub_1000CE4F8()
{
  result = qword_1001DA338;
  if (!qword_1001DA338)
  {
    sub_10001276C(&qword_1001DA318, &qword_100179598);
    sub_100013608(&qword_1001DA340, &qword_1001DA348, &unk_1001795A8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA338);
  }

  return result;
}

unint64_t sub_1000CE5B0()
{
  result = qword_1001DA350;
  if (!qword_1001DA350)
  {
    sub_10001276C(&qword_1001DA2F0, &qword_100179578);
    sub_100013608(&qword_1001DA358, &qword_1001DA2E8, &qword_100179570, &protocol conformance descriptor for SmartDialog<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA350);
  }

  return result;
}

uint64_t sub_1000CE668@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isSmartDialog.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000CE6C0()
{
  result = qword_1001DA398;
  if (!qword_1001DA398)
  {
    sub_10001276C(&qword_1001DA378, &qword_1001795D8);
    sub_1000CE778();
    sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8, &qword_100176850, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA398);
  }

  return result;
}

unint64_t sub_1000CE778()
{
  result = qword_1001DA3A0;
  if (!qword_1001DA3A0)
  {
    sub_10001276C(&qword_1001DA390, &unk_100179630);
    sub_1000CE830();
    sub_100013608(&qword_1001D5170, &qword_1001D5178, &qword_100172870, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA3A0);
  }

  return result;
}

unint64_t sub_1000CE830()
{
  result = qword_1001DA3A8;
  if (!qword_1001DA3A8)
  {
    sub_10001276C(&qword_1001DA388, &qword_100179628);
    sub_10001276C(&qword_1001DA370, &qword_1001795D0);
    sub_10001276C(&qword_1001D50F8, &qword_1001727A8);
    v3 = sub_100013608(&qword_1001D51B0, &qword_1001D50F8, &qword_1001727A8, &protocol conformance descriptor for Button<A>);
    sub_100035DC8(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D7268, &qword_1001D7198, &unk_100176830, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA3A8);
  }

  return result;
}

uint64_t sub_1000CE9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DA3C8, &qword_10017A740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000CEA30()
{
  result = qword_1001DA3E0;
  if (!qword_1001DA3E0)
  {
    sub_10001276C(&qword_1001DA3D8, &qword_1001796C8);
    sub_1000CEABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA3E0);
  }

  return result;
}

unint64_t sub_1000CEABC()
{
  result = qword_1001DA3E8;
  if (!qword_1001DA3E8)
  {
    sub_10001276C(&qword_1001DA3F0, &qword_1001796D0);
    sub_10002ED44();
    sub_100013608(&qword_1001D3E68, &qword_1001D3E70, &qword_100177A70, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA3E8);
  }

  return result;
}

uint64_t sub_1000CEB74()
{
  v1 = (type metadata accessor for OnboardingOverlay(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[12];
  v4 = type metadata accessor for AccessibilityTechnologies();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  sub_1000033A8(&qword_1001DA1B8, &unk_100179450);

  return swift_deallocObject();
}

uint64_t sub_1000CED00(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OnboardingOverlay(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_1000CED74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000CED8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000CEDF4()
{
  result = qword_1001DA3F8;
  if (!qword_1001DA3F8)
  {
    sub_10001276C(&qword_1001DA2B8, &qword_100179530);
    sub_1000CEE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA3F8);
  }

  return result;
}

unint64_t sub_1000CEE80()
{
  result = qword_1001DA400;
  if (!qword_1001DA400)
  {
    sub_10001276C(&qword_1001DA298, &qword_1001794E8);
    v3 = sub_1000CEF0C();
    sub_1000CF0C0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA400);
  }

  return result;
}

unint64_t sub_1000CEF0C()
{
  result = qword_1001DA408;
  if (!qword_1001DA408)
  {
    sub_10001276C(&qword_1001DA290, &qword_1001794E0);
    sub_1000CEF98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA408);
  }

  return result;
}

unint64_t sub_1000CEF98()
{
  result = qword_1001DA410;
  if (!qword_1001DA410)
  {
    sub_10001276C(&qword_1001DA288, &qword_1001794D8);
    sub_10001276C(&qword_1001DA278, &qword_1001794C8);
    sub_100013608(&qword_1001DA2B0, &qword_1001DA278, &qword_1001794C8, &protocol conformance descriptor for ScrollView<A>);
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D46D0, &qword_1001D46D8, &unk_10017B710, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA410);
  }

  return result;
}

unint64_t sub_1000CF0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001DA418;
  if (!qword_1001DA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA418);
  }

  return result;
}

uint64_t sub_1000CF120(uint64_t a1, uint64_t a2)
{
  v2[37] = a1;
  v2[38] = a2;
  v3 = swift_task_alloc();
  v2[39] = v3;
  *v3 = v2;
  v3[1] = sub_1000CF1B0;

  return sub_1000CF8F4();
}

uint64_t sub_1000CF1B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1000CF2E4, 0, 0);
  }
}

uint64_t sub_1000CF2E4()
{
  v1 = v0[40];
  v3 = v0[37];
  v2 = v0[38];
  v4 = swift_allocObject();
  v0[41] = v4;
  *(v4 + 16) = 0;
  v5 = [objc_opt_self() sharedPhotoLibrary];
  v0[42] = v5;
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v4;
  v0[32] = sub_1000D04C0;
  v0[33] = v6;
  v0[28] = _NSConcreteStackBlock;
  v0[29] = 1107296256;
  v0[30] = sub_1000B5F04;
  v0[31] = &unk_1001C41D0;
  v7 = _Block_copy(v0 + 28);
  v0[43] = v7;

  v8 = v1;

  v0[2] = v0;
  v0[3] = sub_1000CF4FC;
  v9 = swift_continuation_init();
  v0[27] = sub_1000033A8(&qword_1001DA430, &qword_1001796E8);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_1000D014C;
  v0[23] = &unk_1001C41F8;
  v0[24] = v9;
  [v5 performChanges:v7 completionHandler:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000CF4FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_1000CF800;
  }

  else
  {
    v2 = sub_1000CF60C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CF60C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);

  _Block_release(v1);
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {
    v3 = *(v0 + 320);
    sub_1000033A8(&unk_1001D6B30, &unk_100175C30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100171DA0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v5;
    *(inited + 48) = 0xD00000000000003FLL;
    *(inited + 56) = 0x800000010016E230;
    sub_100097328(inited);
    swift_setDeallocating();
    sub_1000D04E4(inited + 32);
    v6 = objc_allocWithZone(NSError);
    v7 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 initWithDomain:v7 code:2 userInfo:isa];

    swift_willThrow();
  }

  else
  {
    v10 = *(v0 + 320);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000CF800(uint64_t a1)
{
  v2 = v1[43];
  v3 = v1[42];
  v4 = v1[40];
  swift_willThrow();

  _Block_release(v2);

  v5 = v1[1];

  return v5();
}

id sub_1000CF894()
{
  v0 = objc_opt_self();
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v4 = [v0 creationRequestForAssetFromVideoAtFileURL:v2];

  return v4;
}

uint64_t sub_1000CF910(uint64_t a1)
{
  if (sub_1000D02C8())
  {
    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = swift_allocObject();
    v1[37] = v4;
    *(v4 + 16) = 0;
    v5 = [objc_opt_self() sharedPhotoLibrary];
    v1[38] = v5;
    v1[32] = sub_1000D0584;
    v1[33] = v4;
    v1[28] = _NSConcreteStackBlock;
    v1[29] = 1107296256;
    v1[30] = sub_1000B5F04;
    v1[31] = &unk_1001C4248;
    v6 = _Block_copy(v1 + 28);
    v1[39] = v6;

    v1[2] = v1;
    v1[3] = sub_1000CFB34;
    v7 = swift_continuation_init();
    v1[27] = sub_1000033A8(&qword_1001DA430, &qword_1001796E8);
    v1[20] = _NSConcreteStackBlock;
    v1[21] = 1107296256;
    v1[22] = sub_1000D014C;
    v1[23] = &unk_1001C4270;
    v1[24] = v7;
    [v5 performChanges:v6 completionHandler:v1 + 20];

    return _swift_continuation_await(v1 + 2);
  }
}

uint64_t sub_1000CFB34()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_1000CFF40;
  }

  else
  {
    v2 = sub_1000CFC44;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1000CFC44()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);

  _Block_release(v1);
  sub_1000033A8(&qword_1001D6310, &qword_1001775B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100171DA0;
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = [v4 localIdentifier];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(v3 + 32) = v7;
    *(v3 + 40) = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v5 fetchAssetCollectionsWithLocalIdentifiers:isa options:0];

    v12 = [v11 firstObject];
    if (v12)
    {
      v13 = v12;

      v14 = *(v0 + 8);

      v14(v13);
    }

    else
    {
      sub_1000033A8(&unk_1001D6B30, &unk_100175C30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100171DA0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v16;
      *(inited + 48) = 0xD00000000000002BLL;
      *(inited + 56) = 0x800000010016E270;
      sub_100097328(inited);
      swift_setDeallocating();
      sub_1000D04E4(inited + 32);
      v17 = objc_allocWithZone(NSError);
      v18 = String._bridgeToObjectiveC()();
      v19 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v17 initWithDomain:v18 code:1 userInfo:v19];

      swift_willThrow();

      v20 = *(v0 + 8);

      v20();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000CFF40(uint64_t a1)
{
  v2 = v1[39];
  v3 = v1[38];
  swift_willThrow();

  _Block_release(v2);

  v4 = v1[1];

  return v4();
}

void sub_1000CFFCC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1();
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 placeholderForCreatedAsset];
  if (!v8)
  {
    v9 = v7;
LABEL_9:

LABEL_10:
    swift_beginAccess();
    *(a4 + 16) = 1;
    return;
  }

  v9 = v8;
  v10 = [objc_opt_self() changeRequestForAssetCollection:a3];
  if (!v10)
  {

    goto LABEL_9;
  }

  v11 = v10;
  sub_1000033A8(&qword_1001D5248, &qword_100172968);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100176B10;
  *(v12 + 32) = v9;
  sub_10005BBC4(0, &qword_1001DA438, PHObjectPlaceholder_ptr);
  v13 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 addAssets:isa];
}

uint64_t sub_1000D014C(uint64_t a1, int a2, void *a3)
{
  v5 = sub_100006AAC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return _swift_continuation_throwingResume(v5);
  }

  if (!a3)
  {
    __break(1u);
    return _swift_continuation_throwingResume(v5);
  }

  sub_1000033A8(&qword_1001D57D0, &qword_100173700);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return _swift_continuation_throwingResumeWithError(v6, v7);
}

void sub_1000D0204(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 creationRequestForAssetCollectionWithTitle:v3];

  v5 = [v4 placeholderForCreatedAssetCollection];
  swift_beginAccess();
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
}

id sub_1000D02C8()
{
  v0 = [objc_allocWithZone(PHFetchOptions) init];
  sub_10005BBC4(0, &qword_1001DA420, NSPredicate_ptr);
  sub_1000033A8(&qword_1001D58A0, &qword_1001771C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100171DA0;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_1000D0414(v1, v2, v3);
  *(v1 + 32) = 0xD00000000000001ALL;
  *(v1 + 40) = 0x800000010016E210;
  v4 = NSPredicate.init(format:_:)();
  [v0 setPredicate:v4];

  v5 = [objc_opt_self() fetchAssetCollectionsWithType:1 subtype:0x7FFFFFFFFFFFFFFFLL options:v0];
  v6 = [v5 firstObject];

  return v6;
}

unint64_t sub_1000D0414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001DA428;
  if (!qword_1001DA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA428);
  }

  return result;
}

uint64_t sub_1000D0478()
{

  return swift_deallocObject();
}

double sub_1000D04CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000D04E4(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D8230, &qword_1001772B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D054C()
{

  return swift_deallocObject();
}

const char *sub_1000D05D8()
{
  v1 = "DeveloperMode";
  if (*v0 != 1)
  {
    v1 = "RecordingOnly";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "AFMPlus";
  }
}

unint64_t sub_1000D0630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001DA440;
  if (!qword_1001DA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA440);
  }

  return result;
}

unint64_t sub_1000D0698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001DA448;
  if (!qword_1001DA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA448);
  }

  return result;
}

uint64_t sub_1000D06FC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v7[3] = &type metadata for TamaleFeatureFlagsKey;
  v7[4] = sub_1000D0630(a1, a2, a3);
  LOBYTE(v7[0]) = v4;
  v5 = isFeatureEnabled(_:)();
  result = sub_100006B44(v7);
  *a3 = v5 & 1;
  return result;
}

Swift::Int ActionBarSortOrder.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_1000D07E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.hash(into:)();
  String.hash(into:)();
  v11 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
  type metadata accessor for ActionAnalytics.ActionType();
  sub_1000D5690(&qword_1001DA450, &type metadata accessor for ActionAnalytics.ActionType, &protocol conformance descriptor for ActionAnalytics.ActionType);
  dispatch thunk of Hashable.hash(into:)();
  v12 = *(v1 + v11[10]);
  if (v12)
  {
    Hasher._combine(_:)(1u);
    v13 = v12;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v11[18]));
  v14 = *(v2 + v11[19]);
  if (v14)
  {
    Hasher._combine(_:)(1u);
    sub_1000D3F94(a1, v14);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v11[12]));
  sub_1000D4784(v2 + v11[14], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10001370C(v6, &qword_1001D44B0, &qword_100178660);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1000D5690(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000D0ADC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionPin.Pill.localizedTitle.getter();
  String.hash(into:)();

  ActionPin.Pill.glyphName.getter();
  String.hash(into:)();

  v11 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
  type metadata accessor for ActionAnalytics.ActionType();
  sub_1000D5690(&qword_1001DA450, &type metadata accessor for ActionAnalytics.ActionType, &protocol conformance descriptor for ActionAnalytics.ActionType);
  dispatch thunk of Hashable.hash(into:)();
  v12 = *(v1 + v11[10]);
  if (v12)
  {
    Hasher._combine(_:)(1u);
    v13 = v12;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v11[18]));
  v14 = *(v2 + v11[19]);
  if (v14)
  {
    Hasher._combine(_:)(1u);
    sub_1000D3F94(a1, v14);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v11[12]));
  sub_1000D4784(v2 + v11[14], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10001370C(v6, &qword_1001D44B0, &qword_100178660);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1000D5690(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t ActionBarItemWrapper.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  (*(v13 + 16))(v14, v13);
  String.hash(into:)();

  (*(v13 + 24))(v14, v13);
  String.hash(into:)();

  type metadata accessor for ActionAnalytics.ActionType();
  sub_1000D5690(&qword_1001DA450, &type metadata accessor for ActionAnalytics.ActionType, &protocol conformance descriptor for ActionAnalytics.ActionType);
  dispatch thunk of Hashable.hash(into:)();
  v15 = *(v2 + *(a2 + 40));
  if (v15)
  {
    Hasher._combine(_:)(1u);
    v16 = v15;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v3 + *(a2 + 72)));
  v17 = *(v3 + *(a2 + 76));
  if (v17)
  {
    Hasher._combine(_:)(1u);
    sub_1000D3F94(a1, v17);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v3 + *(a2 + 48)));
  sub_1000D4784(v3 + *(a2 + 56), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10001370C(v8, &qword_1001D44B0, &qword_100178660);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1000D5690(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000D1184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_1000033A8(&qword_1001DA458, &qword_1001797D8);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  type metadata accessor for ActionPin.Pill();
  sub_1000D5690(qword_1001DA470, &type metadata accessor for ActionPin.Pill, &protocol conformance descriptor for ActionPin.Pill);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  v26 = v7;
  v27 = v5;
  v28 = v4;
  v14 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
  type metadata accessor for ActionAnalytics.ActionType();
  sub_1000D5690(&qword_1001DA460, &type metadata accessor for ActionAnalytics.ActionType, &protocol conformance descriptor for ActionAnalytics.ActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v31 == v29 && v32 == v30)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (*(a1 + v14[12]) == *(a2 + v14[12]) && *(a1 + v14[18]) == *(a2 + v14[18]))
  {
    v18 = v14[14];
    v19 = *(v11 + 48);
    sub_1000D4784(a1 + v18, v13);
    sub_1000D4784(a2 + v18, &v13[v19]);
    v21 = v27;
    v20 = v28;
    v22 = *(v27 + 48);
    if (v22(v13, 1, v28) == 1)
    {
      if (v22(&v13[v19], 1, v20) == 1)
      {
        sub_10001370C(v13, &qword_1001D44B0, &qword_100178660);
        v16 = 1;
        return v16 & 1;
      }
    }

    else
    {
      sub_1000D4784(v13, v10);
      if (v22(&v13[v19], 1, v20) != 1)
      {
        v23 = v26;
        (*(v21 + 32))(v26, &v13[v19], v20);
        sub_1000D5690(&qword_1001D80D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *(v21 + 8);
        v24(v23, v20);
        v24(v10, v20);
        sub_10001370C(v13, &qword_1001D44B0, &qword_100178660);
        return v16 & 1;
      }

      (*(v21 + 8))(v10, v20);
    }

    sub_10001370C(v13, &qword_1001DA458, &qword_1001797D8);
    v16 = 0;
    return v16 & 1;
  }

LABEL_8:
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1000D1600(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_1000033A8(&qword_1001DA458, &qword_1001797D8);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = a1[2];
  v13 = a1[3];
  v15 = a2[2];
  v14 = a2[3];
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v12 != v15 || v13 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  v28 = v4;
  v16 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
  type metadata accessor for ActionAnalytics.ActionType();
  sub_1000D5690(&qword_1001DA460, &type metadata accessor for ActionAnalytics.ActionType, &protocol conformance descriptor for ActionAnalytics.ActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v33 == v31 && v34 == v32)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (*(a1 + v16[12]) == *(a2 + v16[12]) && *(a1 + v16[18]) == *(a2 + v16[18]))
  {
    v20 = v16[14];
    v21 = *(v9 + 48);
    sub_1000D4784(a1 + v20, v11);
    sub_1000D4784(a2 + v20, &v11[v21]);
    v22 = v30;
    v23 = *(v30 + 48);
    v24 = v28;
    if (v23(v11, 1, v28) == 1)
    {
      if (v23(&v11[v21], 1, v24) == 1)
      {
        sub_10001370C(v11, &qword_1001D44B0, &qword_100178660);
        v18 = 1;
        return v18 & 1;
      }
    }

    else
    {
      sub_1000D4784(v11, v8);
      if (v23(&v11[v21], 1, v24) != 1)
      {
        v25 = v29;
        (*(v22 + 32))(v29, &v11[v21], v24);
        sub_1000D5690(&qword_1001D80D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        v26 = *(v22 + 8);
        v26(v25, v24);
        v26(v8, v24);
        sub_10001370C(v11, &qword_1001D44B0, &qword_100178660);
        return v18 & 1;
      }

      (*(v22 + 8))(v8, v24);
    }

    sub_10001370C(v11, &qword_1001DA458, &qword_1001797D8);
    v18 = 0;
    return v18 & 1;
  }

LABEL_12:
  v18 = 0;
  return v18 & 1;
}

uint64_t static ActionBarItemWrapper.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_1000033A8(&qword_1001DA458, &qword_1001797D8);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  v31 = v11;
  v32 = v9;
  v33 = v8;
  v19 = type metadata accessor for ActionBarItemWrapper(0, a3, a4, v18);
  type metadata accessor for ActionAnalytics.ActionType();
  sub_1000D5690(&qword_1001DA460, &type metadata accessor for ActionAnalytics.ActionType, &protocol conformance descriptor for ActionAnalytics.ActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v36 == v34 && v37 == v35)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (*(a1 + v19[12]) == *(a2 + v19[12]) && *(a1 + v19[18]) == *(a2 + v19[18]))
  {
    v23 = v19[14];
    v24 = *(v15 + 48);
    sub_1000D4784(a1 + v23, v17);
    sub_1000D4784(a2 + v23, &v17[v24]);
    v26 = v32;
    v25 = v33;
    v27 = *(v32 + 48);
    if (v27(v17, 1, v33) == 1)
    {
      if (v27(&v17[v24], 1, v25) == 1)
      {
        sub_10001370C(v17, &qword_1001D44B0, &qword_100178660);
        v21 = 1;
        return v21 & 1;
      }
    }

    else
    {
      sub_1000D4784(v17, v14);
      if (v27(&v17[v24], 1, v25) != 1)
      {
        v28 = v31;
        (*(v26 + 32))(v31, &v17[v24], v25);
        sub_1000D5690(&qword_1001D80D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = *(v26 + 8);
        v29(v28, v25);
        v29(v14, v25);
        sub_10001370C(v17, &qword_1001D44B0, &qword_100178660);
        return v21 & 1;
      }

      (*(v26 + 8))(v14, v25);
    }

    sub_10001370C(v17, &qword_1001DA458, &qword_1001797D8);
    v21 = 0;
    return v21 & 1;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

Swift::Int ActionBarItemWrapper.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  ActionBarItemWrapper.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000D1F20(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  ActionBarItemWrapper.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t sub_1000D1F64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ActionBarItem(0);
  __chkstk_darwin(v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002091C(v12, v6, &qword_1001DA600, &qword_100179BB0);
    Hasher._combine(_:)(1uLL);
    sub_1000D07E4(a1);
    v13 = v6;
    v14 = &qword_1001DA600;
    v15 = &qword_100179BB0;
  }

  else
  {
    sub_10002091C(v12, v9, &qword_1001DA608, &qword_100179BB8);
    Hasher._combine(_:)(0);
    sub_1000D0ADC(a1);
    v13 = v9;
    v14 = &qword_1001DA608;
    v15 = &qword_100179BB8;
  }

  return sub_10001370C(v13, v14, v15);
}

Swift::Int sub_1000D2130()
{
  v1 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-1] - v2;
  v4 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-1] - v5;
  v7 = type metadata accessor for ActionBarItem(0);
  __chkstk_darwin(v7);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1000D56E4(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = &qword_100179BB0;
    sub_10002091C(v9, v3, &qword_1001DA600, &qword_100179BB0);
    Hasher._combine(_:)(1uLL);
    sub_1000D07E4(v15);
    v11 = v3;
    v12 = &qword_1001DA600;
  }

  else
  {
    v10 = &qword_100179BB8;
    sub_10002091C(v9, v6, &qword_1001DA608, &qword_100179BB8);
    Hasher._combine(_:)(0);
    sub_1000D0ADC(v15);
    v11 = v6;
    v12 = &qword_1001DA608;
  }

  sub_10001370C(v11, v12, v10);
  return Hasher._finalize()();
}

uint64_t sub_1000D2310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for ActionAnalytics.ActionType();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *sub_1000D2384(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  v3 = v2;
  return v2;
}

uint64_t sub_1000D23E4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

uint64_t sub_1000D241C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

uint64_t sub_1000D2454(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v3 = *v2;
  sub_100005630(*v2, v2[1]);
  return v3;
}

uint64_t sub_1000D24A4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1000D24D4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000D2504(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

Swift::Int sub_1000D25B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17[-1] - v4;
  v6 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v17[-1] - v8;
  __chkstk_darwin(v7);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1000D56E4(v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002091C(v11, v5, &qword_1001DA600, &qword_100179BB0);
    Hasher._combine(_:)(1uLL);
    sub_1000D07E4(v17);
    v12 = v5;
    v13 = &qword_1001DA600;
    v14 = &qword_100179BB0;
  }

  else
  {
    sub_10002091C(v11, v9, &qword_1001DA608, &qword_100179BB8);
    Hasher._combine(_:)(0);
    sub_1000D0ADC(v17);
    v12 = v9;
    v13 = &qword_1001DA608;
    v14 = &qword_100179BB8;
  }

  sub_10001370C(v12, v13, v14);
  return Hasher._finalize()();
}

unint64_t *sub_1000D2794@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

Swift::Int sub_1000D27AC@<X0>(Swift::Int *a1@<X8>)
{
  result = sub_1000D2130();
  *a1 = result;
  return result;
}

uint64_t sub_1000D27D4()
{
  v1 = type metadata accessor for ActionBarItem(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v5 = &qword_100179BB0;
    v14 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v6 = &qword_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v5 = &qword_100179BB8;
    v14 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v6 = &qword_1001DA618;
  }

  v15 = sub_1000D57AC(v6, v4, v5);
  v8 = sub_1000D5748(&v13, v7);
  sub_10002091C(v3, v8, v4, v5);
  sub_10002AAA4(&v13, v16);
  v9 = v17;
  v10 = v18;
  sub_100006AAC(v16, v17);
  v11 = (*(*(v10 + 8) + 16))(v9);
  sub_100006B44(v16);
  return v11;
}

uint64_t sub_1000D2940()
{
  v1 = type metadata accessor for ActionBarItem(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v5 = &qword_100179BB0;
    v14 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v6 = &qword_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v5 = &qword_100179BB8;
    v14 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v6 = &qword_1001DA618;
  }

  v15 = sub_1000D57AC(v6, v4, v5);
  v8 = sub_1000D5748(&v13, v7);
  sub_10002091C(v3, v8, v4, v5);
  sub_10002AAA4(&v13, v16);
  v9 = v17;
  v10 = v18;
  sub_100006AAC(v16, v17);
  v11 = (*(*(v10 + 8) + 24))(v9);
  sub_100006B44(v16);
  return v11;
}

uint64_t sub_1000D2AAC()
{
  v1 = type metadata accessor for ActionBarItem(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v5 = &qword_100179BB0;
    v14 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v6 = &qword_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v5 = &qword_100179BB8;
    v14 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v6 = &qword_1001DA618;
  }

  v15 = sub_1000D57AC(v6, v4, v5);
  v8 = sub_1000D5748(&v13, v7);
  sub_10002091C(v3, v8, v4, v5);
  sub_10002AAA4(&v13, v16);
  v9 = v17;
  v10 = v18;
  sub_100006AAC(v16, v17);
  v11 = (*(v10 + 40))(v9, v10);
  sub_100006B44(v16);
  return v11;
}

uint64_t sub_1000D2C10()
{
  v1 = v0;
  v2 = type metadata accessor for ActionBarItem(0);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = &qword_1001DA600;
    v6 = &qword_100179BB0;
    v14 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v7 = &qword_1001DA610;
  }

  else
  {
    v5 = &qword_1001DA608;
    v6 = &qword_100179BB8;
    v14 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v7 = &qword_1001DA618;
  }

  v15 = sub_1000D57AC(v7, v5, v6);
  v9 = sub_1000D5748(&v13, v8);
  sub_10002091C(v4, v9, v5, v6);
  sub_10002AAA4(&v13, v16);
  v10 = v17;
  v11 = v18;
  sub_100006AAC(v16, v17);
  (*(v11 + 16))(v10, v11);
  return sub_100006B44(v16);
}

uint64_t sub_1000D2D78()
{
  v1 = type metadata accessor for ActionBarItem(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v5 = &qword_100179BB0;
    v14 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v6 = &qword_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v5 = &qword_100179BB8;
    v14 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v6 = &qword_1001DA618;
  }

  v15 = sub_1000D57AC(v6, v4, v5);
  v8 = sub_1000D5748(&v13, v7);
  sub_10002091C(v3, v8, v4, v5);
  sub_10002AAA4(&v13, v16);
  v9 = v17;
  v10 = v18;
  sub_100006AAC(v16, v17);
  v11 = (*(v10 + 24))(v9, v10);
  sub_100006B44(v16);
  return v11;
}

uint64_t sub_1000D2EDC()
{
  v1 = type metadata accessor for ActionBarItem(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v5 = &qword_100179BB0;
    v14 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v6 = &qword_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v5 = &qword_100179BB8;
    v14 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v6 = &qword_1001DA618;
  }

  v15 = sub_1000D57AC(v6, v4, v5);
  v8 = sub_1000D5748(&v13, v7);
  sub_10002091C(v3, v8, v4, v5);
  sub_10002AAA4(&v13, v16);
  v9 = v17;
  v10 = v18;
  sub_100006AAC(v16, v17);
  v11 = (*(v10 + 32))(v9, v10);
  sub_100006B44(v16);
  return v11;
}

uint64_t sub_1000D3040()
{
  v1 = type metadata accessor for ActionBarItem(0);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v5 = &qword_100179BB0;
    v13 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v6 = &qword_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v5 = &qword_100179BB8;
    v13 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v6 = &qword_1001DA618;
  }

  v14 = sub_1000D57AC(v6, v4, v5);
  v8 = sub_1000D5748(&v12, v7);
  sub_10002091C(v3, v8, v4, v5);
  sub_10002AAA4(&v12, v15);
  v9 = v16;
  v10 = v17;
  sub_100006AAC(v15, v16);
  LOBYTE(v9) = (*(v10 + 64))(v9, v10);
  sub_100006B44(v15);
  return v9 & 1;
}

uint64_t sub_1000D31A4()
{
  v1 = type metadata accessor for ActionBarItem(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v5 = &qword_100179BB0;
    v14 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v6 = &qword_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v5 = &qword_100179BB8;
    v14 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v6 = &qword_1001DA618;
  }

  v15 = sub_1000D57AC(v6, v4, v5);
  v8 = sub_1000D5748(&v13, v7);
  sub_10002091C(v3, v8, v4, v5);
  sub_10002AAA4(&v13, v16);
  v9 = v17;
  v10 = v18;
  sub_100006AAC(v16, v17);
  v11 = (*(v10 + 72))(v9, v10);
  sub_100006B44(v16);
  return v11;
}

uint64_t sub_1000D3310()
{
  v1 = type metadata accessor for ActionBarItem(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v5 = &qword_100179BB0;
    v14 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v6 = &qword_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v5 = &qword_100179BB8;
    v14 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v6 = &qword_1001DA618;
  }

  v15 = sub_1000D57AC(v6, v4, v5);
  v8 = sub_1000D5748(&v13, v7);
  sub_10002091C(v3, v8, v4, v5);
  sub_10002AAA4(&v13, v16);
  v9 = v17;
  v10 = v18;
  sub_100006AAC(v16, v17);
  v11 = (*(v10 + 80))(v9, v10);
  sub_100006B44(v16);
  return v11;
}

uint64_t sub_1000D347C()
{
  v1 = type metadata accessor for ActionBarItem(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v5 = &qword_100179BB0;
    v14 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v6 = &qword_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v5 = &qword_100179BB8;
    v14 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v6 = &qword_1001DA618;
  }

  v15 = sub_1000D57AC(v6, v4, v5);
  v8 = sub_1000D5748(&v13, v7);
  sub_10002091C(v3, v8, v4, v5);
  sub_10002AAA4(&v13, v16);
  v9 = v17;
  v10 = v18;
  sub_100006AAC(v16, v17);
  v11 = (*(v10 + 88))(v9, v10);
  sub_100006B44(v16);
  return v11;
}

uint64_t sub_1000D35E8()
{
  v1 = type metadata accessor for ActionBarItem(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v5 = &qword_100179BB0;
    v14 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v6 = &qword_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v5 = &qword_100179BB8;
    v14 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v6 = &qword_1001DA618;
  }

  v15 = sub_1000D57AC(v6, v4, v5);
  v8 = sub_1000D5748(&v13, v7);
  sub_10002091C(v3, v8, v4, v5);
  sub_10002AAA4(&v13, v16);
  v9 = v17;
  v10 = v18;
  sub_100006AAC(v16, v17);
  v11 = (*(v10 + 96))(v9, v10);
  sub_100006B44(v16);
  return v11;
}

uint64_t sub_1000D374C(uint64_t a1)
{
  v2 = __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v2, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = &qword_1001DA600;
    v6 = &qword_100179BB0;
    v14 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v7 = &qword_1001DA610;
  }

  else
  {
    v5 = &qword_1001DA608;
    v6 = &qword_100179BB8;
    v14 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v7 = &qword_1001DA618;
  }

  v15 = sub_1000D57AC(v7, v5, v6);
  v9 = sub_1000D5748(&v13, v8);
  sub_10002091C(v4, v9, v5, v6);
  sub_10002AAA4(&v13, v16);
  v10 = v17;
  v11 = v18;
  sub_100006AAC(v16, v17);
  (*(v11 + 16))(v10, v11);
  return sub_100006B44(v16);
}

uint64_t sub_1000D38A8(uint64_t a1)
{
  v2 = __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v2, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = &qword_1001DA600;
    v6 = &qword_100179BB0;
    v15 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v7 = &qword_1001DA610;
  }

  else
  {
    v5 = &qword_1001DA608;
    v6 = &qword_100179BB8;
    v15 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v7 = &qword_1001DA618;
  }

  v16 = sub_1000D57AC(v7, v5, v6);
  v9 = sub_1000D5748(&v14, v8);
  sub_10002091C(v4, v9, v5, v6);
  sub_10002AAA4(&v14, v17);
  v10 = v18;
  v11 = v19;
  sub_100006AAC(v17, v18);
  v12 = (*(v11 + 24))(v10, v11);
  sub_100006B44(v17);
  return v12;
}

uint64_t sub_1000D3A04(uint64_t a1)
{
  v2 = __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v2, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = &qword_1001DA600;
    v6 = &qword_100179BB0;
    v15 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v7 = &qword_1001DA610;
  }

  else
  {
    v5 = &qword_1001DA608;
    v6 = &qword_100179BB8;
    v15 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v7 = &qword_1001DA618;
  }

  v16 = sub_1000D57AC(v7, v5, v6);
  v9 = sub_1000D5748(&v14, v8);
  sub_10002091C(v4, v9, v5, v6);
  sub_10002AAA4(&v14, v17);
  v10 = v18;
  v11 = v19;
  sub_100006AAC(v17, v18);
  v12 = (*(v11 + 32))(v10, v11);
  sub_100006B44(v17);
  return v12;
}

uint64_t sub_1000D3B60(uint64_t a1)
{
  v2 = __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v2, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = &qword_1001DA600;
    v6 = &qword_100179BB0;
    v15 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v7 = &qword_1001DA610;
  }

  else
  {
    v5 = &qword_1001DA608;
    v6 = &qword_100179BB8;
    v15 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v7 = &qword_1001DA618;
  }

  v16 = sub_1000D57AC(v7, v5, v6);
  v9 = sub_1000D5748(&v14, v8);
  sub_10002091C(v4, v9, v5, v6);
  sub_10002AAA4(&v14, v17);
  v10 = v18;
  v11 = v19;
  sub_100006AAC(v17, v18);
  v12 = (*(v11 + 40))(v10, v11);
  sub_100006B44(v17);
  return v12;
}

uint64_t sub_1000D3CBC(uint64_t a1)
{
  v2 = __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v2, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = &qword_1001DA600;
    v6 = &qword_100179BB0;
    v14 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v7 = &qword_1001DA610;
  }

  else
  {
    v5 = &qword_1001DA608;
    v6 = &qword_100179BB8;
    v14 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v7 = &qword_1001DA618;
  }

  v15 = sub_1000D57AC(v7, v5, v6);
  v9 = sub_1000D5748(&v13, v8);
  sub_10002091C(v4, v9, v5, v6);
  sub_10002AAA4(&v13, v16);
  v10 = v17;
  v11 = v18;
  sub_100006AAC(v16, v17);
  (*(v11 + 56))(v10, v11);
  return sub_100006B44(v16);
}

uint64_t sub_1000D3E1C(uint64_t a1)
{
  v2 = __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v2, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = &qword_1001DA600;
    v6 = &qword_100179BB0;
    v15 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
    v7 = &qword_1001DA610;
  }

  else
  {
    v5 = &qword_1001DA608;
    v6 = &qword_100179BB8;
    v15 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
    v7 = &qword_1001DA618;
  }

  v16 = sub_1000D57AC(v7, v5, v6);
  v9 = sub_1000D5748(&v14, v8);
  sub_10002091C(v4, v9, v5, v6);
  sub_10002AAA4(&v14, v17);
  v10 = v18;
  v11 = v19;
  sub_100006AAC(v17, v18);
  v12 = (*(v11 + 72))(v10, v11);
  sub_100006B44(v17);
  return v12;
}

void sub_1000D3F94(uint64_t a1, uint64_t a2)
{
  v54 = sub_1000033A8(&qword_1001DA600, &qword_100179BB0);
  __chkstk_darwin(v54);
  v5 = &v41 - v4;
  v6 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  v7 = __chkstk_darwin(v6 - 8);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = type metadata accessor for UUID();
  v51 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v41 = &v41 - v14;
  v53 = sub_1000033A8(&qword_1001DA608, &qword_100179BB8);
  __chkstk_darwin(v53);
  v16 = &v41 - v15;
  v52 = type metadata accessor for ActionBarItem(0);
  v49 = *(v52 - 8);
  v17 = __chkstk_darwin(v52);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  v22 = *(a2 + 16);
  Hasher._combine(_:)(v22);
  if (v22)
  {
    v23 = a2 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v49 = *(v49 + 72);
    v50 = (v51 + 48);
    v43 = (v51 + 8);
    v44 = (v51 + 32);
    v51 = v19;
    v45 = v10;
    v46 = v11;
    v48 = v21;
    do
    {
      sub_1000D56E4(v23, v21);
      sub_1000D56E4(v21, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = v47;
        sub_10002091C(v19, v5, &qword_1001DA600, &qword_100179BB0);
        Hasher._combine(_:)(1uLL);
        String.hash(into:)();
        String.hash(into:)();
        v25 = v54;
        type metadata accessor for ActionAnalytics.ActionType();
        sub_1000D5690(&qword_1001DA450, &type metadata accessor for ActionAnalytics.ActionType, &protocol conformance descriptor for ActionAnalytics.ActionType);
        dispatch thunk of Hashable.hash(into:)();
        v26 = *&v5[*(v25 + 40)];
        if (v26)
        {
          Hasher._combine(_:)(1u);
          v27 = v26;
          NSObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v31 = v54;
        Hasher._combine(_:)(v5[*(v54 + 72)]);
        v32 = *&v5[*(v31 + 76)];
        v21 = v48;
        if (v32)
        {
          Hasher._combine(_:)(1u);
          sub_1000D3F94(a1, v32);
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v10 = v45;
        v35 = v54;
        Hasher._combine(_:)(v5[*(v54 + 48)]);
        sub_1000D4784(&v5[*(v35 + 56)], v24);
        v36 = v24;
        v37 = v24;
        v11 = v46;
        if ((*v50)(v36, 1, v46) == 1)
        {
          sub_1000D5B0C(v21);
          sub_10001370C(v37, &qword_1001D44B0, &qword_100178660);
        }

        else
        {
          v38 = v42;
          (*v44)(v42, v37, v11);
          sub_1000D5690(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          dispatch thunk of Hashable.hash(into:)();
          (*v43)(v38, v11);
          sub_1000D5B0C(v21);
        }

        v19 = v51;
        sub_10001370C(v5, &qword_1001DA600, &qword_100179BB0);
      }

      else
      {
        sub_10002091C(v19, v16, &qword_1001DA608, &qword_100179BB8);
        Hasher._combine(_:)(0);
        ActionPin.Pill.localizedTitle.getter();
        String.hash(into:)();

        ActionPin.Pill.glyphName.getter();
        String.hash(into:)();

        v28 = v53;
        type metadata accessor for ActionAnalytics.ActionType();
        sub_1000D5690(&qword_1001DA450, &type metadata accessor for ActionAnalytics.ActionType, &protocol conformance descriptor for ActionAnalytics.ActionType);
        dispatch thunk of Hashable.hash(into:)();
        v29 = *&v16[*(v28 + 40)];
        if (v29)
        {
          Hasher._combine(_:)(1u);
          v30 = v29;
          NSObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v33 = v53;
        Hasher._combine(_:)(v16[*(v53 + 72)]);
        v34 = *&v16[*(v33 + 76)];
        v21 = v48;
        if (v34)
        {
          Hasher._combine(_:)(1u);
          sub_1000D3F94(a1, v34);
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v39 = v53;
        Hasher._combine(_:)(v16[*(v53 + 48)]);
        sub_1000D4784(&v16[*(v39 + 56)], v10);
        if ((*v50)(v10, 1, v11) == 1)
        {
          sub_10001370C(v10, &qword_1001D44B0, &qword_100178660);
        }

        else
        {
          v40 = v41;
          (*v44)(v41, v10, v11);
          sub_1000D5690(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          dispatch thunk of Hashable.hash(into:)();
          (*v43)(v40, v11);
        }

        v19 = v51;
        sub_10001370C(v16, &qword_1001DA608, &qword_100179BB8);
        sub_1000D5B0C(v21);
      }

      v23 += v49;
      --v22;
    }

    while (v22);
  }
}

uint64_t sub_1000D4784(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D4810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001DA468;
  if (!qword_1001DA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA468);
  }

  return result;
}

uint64_t sub_1000D4864(uint64_t a1)
{
  result = sub_1000D5690(qword_1001DA470, &type metadata accessor for ActionPin.Pill, &protocol conformance descriptor for ActionPin.Pill);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D48D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D4914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1000D4968(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActionAnalytics.ActionType();
    if (v2 <= 0x3F)
    {
      sub_1000D51F8(319, &qword_1001DA4F8, sub_1000A0B60);
      if (v3 <= 0x3F)
      {
        type metadata accessor for RenderingMode(319);
        if (v4 <= 0x3F)
        {
          sub_1000D51F8(319, &qword_1001DA500, &type metadata accessor for UUID);
          if (v5 <= 0x3F)
          {
            sub_10001B610();
            if (v6 <= 0x3F)
            {
              sub_1000D524C(319, &qword_1001D8EC0, &qword_1001D8338, &qword_100177510);
              if (v7 <= 0x3F)
              {
                sub_1000D524C(319, &qword_1001DA508, &qword_1001DA510, qword_100179990);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000D4B00(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v38 = type metadata accessor for ActionAnalytics.ActionType();
  v8 = *(v38 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for UUID() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v10 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = *(v8 + 80);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (!v13)
  {
    ++v18;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v6 + 64) + v16;
  v20 = *(v8 + 64) + 7;
  v21 = v17 + 10;
  v22 = v18 + 7;
  if (v15 < a2)
  {
    v23 = ((((((v22 + ((v21 + ((((v20 + (v19 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
    if ((v23 & 0xFFFFFFF8) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = a2 - v15 + 1;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *(a1 + v23);
        if (*(a1 + v23))
        {
          goto LABEL_30;
        }
      }

      else
      {
        v27 = *(a1 + v23);
        if (v27)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v26)
    {
      v27 = *(a1 + v23);
      if (*(a1 + v23))
      {
LABEL_30:
        v28 = v27 - 1;
        if ((v23 & 0xFFFFFFF8) != 0)
        {
          v28 = 0;
          v29 = *a1;
        }

        else
        {
          v29 = 0;
        }

        return v15 + (v29 | v28) + 1;
      }
    }
  }

  if (v7 == v15)
  {
    v30 = *(v6 + 48);
    v31 = a1;
    v32 = v7;
    v33 = v5;

    return v30(v31, v32, v33);
  }

  v31 = ((a1 + v19) & ~v16);
  if (v9 == v15)
  {
    v30 = *(v8 + 48);
    v32 = v9;
    v33 = v38;

    return v30(v31, v32, v33);
  }

  v35 = (v21 + ((((v31 + v20) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v17;
  if (v14 == v15)
  {
    if (v13 >= 2)
    {
      v37 = (*(v12 + 48))(v35);
      if (v37 >= 2)
      {
        return v37 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v36 = *((v22 + v35) & 0xFFFFFFFFFFFFFFF8);
  if (v36 >= 0xFFFFFFFF)
  {
    LODWORD(v36) = -1;
  }

  return (v36 + 1);
}