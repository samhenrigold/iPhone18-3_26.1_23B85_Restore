uint64_t sub_100475B68(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for URL();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10028088C(&qword_10097A738, &unk_1007FD990);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1004784F0(&unk_100975170, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_100475E84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10028088C(&qword_10097A6E0, &unk_1007FD870);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1004760BC(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10028088C(&unk_100977310, &unk_1007FA1A0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1004784F0(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_1004763D8(uint64_t a1)
{
  v48 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v48);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v4 - 8);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v6 - 8);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = __chkstk_darwin(v8);
  v50 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v54 = &v45 - v11;
  v47 = v1;
  v12 = *v1;
  sub_10028088C(&unk_100977340, &unk_1007FA1C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = v12 + 56;
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v21 = result + 56;
    v22 = v50;
    v49 = v12;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = *(v12 + 48);
      v53 = *(v51 + 72);
      v28 = v54;
      sub_100478538(v27 + v53 * (v24 | (v15 << 6)), v54, type metadata accessor for SDAirDropDiscoveredEndpoint);
      Hasher.init(_seed:)();
      sub_100478538(v28, v22, type metadata accessor for SDAirDropDiscoveredEndpoint);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_10000ECA8(v22, v3, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
          Hasher._combine(_:)(2uLL);
          Data.hash(into:)();
          v33 = v3;
          v34 = v48;
          type metadata accessor for UUID();
          sub_1004784F0(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          dispatch thunk of Hashable.hash(into:)();
          if (*&v33[*(v34 + 28) + 8])
          {
            Hasher._combine(_:)(1u);
            v3 = v33;
            String.hash(into:)();
          }

          else
          {
            v3 = v33;
            Hasher._combine(_:)(0);
          }

          Hasher._combine(_:)(v3[*(v48 + 36)]);
          sub_1003DEB88(v3, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
          v22 = v50;
        }

        else
        {
          v37 = *v22;
          Hasher._combine(_:)(3uLL);
          NSObject.hash(into:)();
        }
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v30 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
          v35 = v22;
          v32 = v46;
          sub_10000ECA8(v35, v46, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
          Hasher._combine(_:)(1uLL);
          sub_10032D050(v55);
        }

        else
        {
          v30 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          v31 = v22;
          v32 = v45;
          sub_10000ECA8(v31, v45, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          Hasher._combine(_:)(0);
          sub_10032CD80(v55);
        }

        v36 = v32;
        v22 = v50;
        sub_1003DEB88(v36, v30);
      }

      v12 = v49;
      result = Hasher._finalize()();
      v38 = -1 << *(v14 + 32);
      v39 = result & ~v38;
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
            v23 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_37;
      }

      v23 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_10000ECA8(v54, *(v14 + 48) + v23 * v53, type metadata accessor for SDAirDropDiscoveredEndpoint);
      ++*(v14 + 16);
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_35;
      }

      v26 = *(v16 + 8 * v15);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_35:

    *v47 = v14;
  }

  return result;
}

Swift::Int sub_1004769B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10028088C(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_100476BC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10028088C(&unk_10097A700, &unk_1007FD890);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = static Hasher._hash(seed:_:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_100476DB8(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for CodableError();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10028088C(&qword_10097A6C0, &unk_1007FD850);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1004784F0(&qword_10097F080, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_1004770D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10028088C(&qword_10097A720, &unk_100804CB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      sub_100294008(v18, v19);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_100477310(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10028088C(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(v18);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

Swift::Int sub_10047751C(uint64_t a1)
{
  v2 = *v1;
  sub_10028088C(&qword_10097A6F8, &unk_100804C90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
LABEL_13:
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v13 = -1 << *(v4 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v13) >> 6;
        while (++v15 != v17 || (v16 & 1) == 0)
        {
          v18 = v15 == v17;
          if (v15 == v17)
          {
            v15 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v15);
          if (v19 != -1)
          {
            v11 = __clz(__rbit64(~v19)) + (v15 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v11 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v4 + 16);
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_22;
      }

      v8 = *(v2 + 56 + 8 * v12);
      ++v5;
      if (v8)
      {
        v5 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_100477714(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10028088C(&unk_10097F0E0, &unk_1007FD980);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();

      Task.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100477958(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v22 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10028088C(&qword_10097A6D0, &unk_1007FD860);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v21 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    for (i = result + 56; v12; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v22 + 72);
      sub_100478538(*(v6 + 48) + v18 * (v15 | (v9 << 6)), v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      Hasher.init(_seed:)();
      sub_10032D050(v23);
      Hasher._finalize()();
      v19 = _HashTable.nextHole(atOrAfter:)();
      *(i + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_10000ECA8(v5, *(v8 + 48) + v19 * v18, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v21;
        goto LABEL_16;
      }

      v17 = *(v6 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_100477BC0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v22 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10028088C(&qword_10097A6C8, &unk_100804C50);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v21 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    for (i = result + 56; v12; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v22 + 72);
      sub_100478538(*(v6 + 48) + v18 * (v15 | (v9 << 6)), v5, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      Hasher.init(_seed:)();
      sub_10032CD80(v23);
      Hasher._finalize()();
      v19 = _HashTable.nextHole(atOrAfter:)();
      *(i + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_10000ECA8(v5, *(v8 + 48) + v19 * v18, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v21;
        goto LABEL_16;
      }

      v17 = *(v6 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_100477E28(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10028088C(&qword_10097A728, &unk_1007FD970);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1004784F0(&qword_100975118, &type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode, &protocol conformance descriptor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_100478144(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10028088C(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v33 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = (*(v5 + 48) + 32 * (v17 | (v8 << 6)));
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      Hasher.init(_seed:)();

      String.hash(into:)();
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v21;
      v16[1] = v22;
      v16[2] = v23;
      v16[3] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v4 = v32;
        goto LABEL_26;
      }

      v19 = *(v9 + 8 * v8);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1004783A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1004783B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10047840C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100478468(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_10047849C()
{
  result = qword_10097F028;
  if (!qword_10097F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F028);
  }

  return result;
}

uint64_t sub_1004784F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100478538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s13UploadRequestVMa(uint64_t a1)
{
  result = qword_10097F168;
  if (!qword_10097F168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100478614(uint64_t a1)
{
  sub_100478710(319);
  if (v1 <= 0x3F)
  {
    sub_1002F2B90(319, &unk_100978AB0, &type metadata for Data);
    if (v2 <= 0x3F)
    {
      sub_1002F2B90(319, &qword_100975790, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_1002F2B90(319, qword_1009771F0, &type metadata for String);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100478710(uint64_t a1)
{
  if (!qword_10097F178)
  {
    type metadata accessor for SFAirDrop.TransferIdentifier();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10097F178);
    }
  }
}

uint64_t sub_100478780(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1004788C4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100479DB4(*a1);
  *a2 = result;
  return result;
}

void sub_1004788F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000004449;
  v4 = 0x726566736E617254;
  v5 = 0xEF6D796E6F647565;
  v6 = 0x73507265646E6553;
  if (v2 != 5)
  {
    v6 = 0x75507265646E6553;
    v5 = 0xEF6E656B6F546873;
  }

  v7 = 0xE400000000000000;
  v8 = 1635017028;
  if (v2 != 3)
  {
    v8 = 0x6F4364616F6C7055;
    v7 = 0xEE006574656C706DLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007365;
  v10 = 0x7479426C61746F54;
  if (v2 != 1)
  {
    v10 = 0x2D746E65746E6F43;
    v9 = 0xEC00000065707954;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100478A00()
{
  v1 = *v0;
  v2 = 0x726566736E617254;
  v3 = 0x73507265646E6553;
  if (v1 != 5)
  {
    v3 = 0x75507265646E6553;
  }

  v4 = 1635017028;
  if (v1 != 3)
  {
    v4 = 0x6F4364616F6C7055;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7479426C61746F54;
  if (v1 != 1)
  {
    v5 = 0x2D746E65746E6F43;
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

unint64_t sub_100478B08@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100479DB4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100478B30(uint64_t a1)
{
  v2 = sub_100479928();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100478B6C(uint64_t a1)
{
  v2 = sub_100479928();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100478BA8()
{
  v36 = type metadata accessor for ByteCountFormatStyle.Units();
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ByteCountFormatStyle.Style();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ByteCountFormatStyle();
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(116);
  v11._object = 0x8000000100791B10;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100479B14(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v12._countAndFlagsBits = 0x746E65746E6F4320;
  v12._object = 0xEE0020657079542DLL;
  String.append(_:)(v12);
  v13 = _s13UploadRequestVMa(0);
  String.append(_:)(*(v0 + v13[6]));
  v14._countAndFlagsBits = 0x426C61746F74202CLL;
  v14._object = 0xEE00203A73657479;
  String.append(_:)(v14);
  v38._countAndFlagsBits = *(v0 + v13[5]);
  countAndFlagsBits = v38._countAndFlagsBits;
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 23328;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v37 = countAndFlagsBits;
  (*(v4 + 104))(v6, enum case for ByteCountFormatStyle.Style.file(_:), v3);
  static ByteCountFormatStyle.Units.all.getter();
  static FormatStyle<>.byteCount(style:allowedUnits:spellsOutZero:includesActualByteCount:)();
  (*(v33 + 8))(v2, v36);
  (*(v4 + 8))(v6, v3);
  sub_1002F5340();
  sub_100479B14(&qword_10097F1C0, &type metadata accessor for ByteCountFormatStyle, &protocol conformance descriptor for ByteCountFormatStyle);
  sub_1004798D4();
  v18 = v34;
  BinaryInteger.formatted<A>(_:)();
  (*(v35 + 8))(v10, v18);
  String.append(_:)(v38);

  v19._countAndFlagsBits = 0x203A61746164202CLL;
  v19._object = 0xE800000000000000;
  String.append(_:)(v19);
  v20 = (v0 + v13[7]);
  v21 = v20[1];
  v22 = v21 >> 60;
  if (v21 >> 60 == 15)
  {
    goto LABEL_2;
  }

  v23 = *v20;
  v27 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v27 != 2)
    {
LABEL_2:
      v23 = 0;
LABEL_3:
      v38._countAndFlagsBits = v23;
      LOBYTE(v38._object) = v22 > 0xE;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v24._object = 0x8000000100791B30;
      v24._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v24);
      LOBYTE(v38._countAndFlagsBits) = *(v0 + v13[8]);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v25._countAndFlagsBits = 0x6F6475657370202CLL;
      v25._object = 0xED0000203A6D796ELL;
      String.append(_:)(v25);
      v38 = *(v0 + v13[9]);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v26._countAndFlagsBits = 0x6F5468737570202CLL;
      v26._object = 0xED0000203A6E656BLL;
      String.append(_:)(v26);
      v38 = *(v0 + v13[10]);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      return;
    }

    v30 = v23 + 16;
    v28 = *(v23 + 16);
    v29 = *(v30 + 8);
    v31 = __OFSUB__(v29, v28);
    v23 = v29 - v28;
    if (!v31)
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  else if (!v27)
  {
    v23 = BYTE6(v21);
    goto LABEL_3;
  }

  v31 = __OFSUB__(HIDWORD(v23), v23);
  LODWORD(v23) = HIDWORD(v23) - v23;
  if (!v31)
  {
    v23 = v23;
    goto LABEL_3;
  }

  __break(1u);
}

uint64_t sub_100479124(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_10097F1E8, &qword_100804D78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_10002CDC0(a1, a1[3]);
  sub_100479928();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100479B14(&qword_10097F1F0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = _s13UploadRequestVMa(0);
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 3;
    sub_1002A9924(v14, v11);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v14, v15);
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004793F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v31 = sub_10028088C(&qword_10097F1D0, &qword_100804D70);
  v7 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = &v29 - v8;
  v10 = _s13UploadRequestVMa(0);
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v32 = a1;
  sub_10002CDC0(a1, v13);
  sub_100479928();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(v32);
  }

  v14 = v7;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  LOBYTE(v33) = 0;
  sub_100479B14(&qword_10097F1E0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v15 = v31;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v12;
  sub_1004799E4(v6, v12);
  LOBYTE(v33) = 1;
  v17 = v10;
  *(v16 + v10[5]) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v33) = 2;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = (v16 + v10[6]);
  *v19 = v18;
  v19[1] = v20;
  v34 = 3;
  sub_1002F309C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v16 + v10[7]) = v33;
  LOBYTE(v33) = 4;
  *(v16 + v10[8]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v33) = 5;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = (v16 + v10[9]);
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v33) = 6;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v25;
  (*(v14 + 8))(v9, v15);
  v27 = (v16 + v17[10]);
  *v27 = v24;
  v27[1] = v26;
  sub_100479A54(v16, v30);
  sub_10000C60C(v32);
  return sub_100479AB8(v16);
}

unint64_t sub_1004798D4()
{
  result = qword_10097F1C8;
  if (!qword_10097F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F1C8);
  }

  return result;
}

unint64_t sub_100479928()
{
  result = qword_10097F1D8;
  if (!qword_10097F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F1D8);
  }

  return result;
}

uint64_t sub_10047997C(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004799E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100479A54(uint64_t a1, uint64_t a2)
{
  v4 = _s13UploadRequestVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100479AB8(uint64_t a1)
{
  v2 = _s13UploadRequestVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100479B14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SDAuthenticationTransportType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SDAuthenticationTransportType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100479CB0()
{
  result = qword_10097F1F8;
  if (!qword_10097F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F1F8);
  }

  return result;
}

unint64_t sub_100479D08()
{
  result = qword_10097F200;
  if (!qword_10097F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F200);
  }

  return result;
}

unint64_t sub_100479D60()
{
  result = qword_10097F208;
  if (!qword_10097F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F208);
  }

  return result;
}

unint64_t sub_100479DB4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7AE8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void *sub_100479E00()
{
  v1 = [*v0 devices];
  if (v1)
  {
    sub_100479FF4();
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v1 = sub_100468BC8(v2);
  }

  return v1;
}

id sub_100479EAC(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5)
{
  v6 = v5;
  isa = a4;
  if (a2)
  {
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11.super.isa = 0;
  if (a4)
  {
LABEL_3:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  v15 = 0;
  v12 = [v6 sendProtobuf:a1 toDestinations:v11.super.isa priority:a3 options:isa identifier:a5 error:&v15];

  if (v12)
  {
    return v15;
  }

  v14 = v15;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

unint64_t sub_100479FF4()
{
  result = qword_10097F0C0;
  if (!qword_10097F0C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097F0C0);
  }

  return result;
}

uint64_t sub_10047A040(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10047A0D4;

  return sub_10047A544();
}

uint64_t sub_10047A0D4()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10047A1E4, v1, 0);
}

uint64_t sub_10047A1E4()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 32) = static AirDropActor.shared;

  return _swift_task_switch(sub_10047A280, v1, 0);
}

uint64_t sub_10047A280()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = [objc_allocWithZone(type metadata accessor for SDAirDropService()) init];

  return _swift_task_switch(sub_10047A300, v1, 0);
}

uint64_t sub_10047A300()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = *(v3 + 112);
  *(v3 + 112) = v1;
  v5 = v1;

  return _swift_task_switch(sub_10047A378, v2, 0);
}

uint64_t sub_10047A378()
{
  v1 = *(v0 + 16);
  sub_10043778C();

  return _swift_task_switch(sub_10047A3E4, v1, 0);
}

uint64_t sub_10047A3E4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10047A564()
{
  v1 = v0[2];
  v2 = *(v1 + 112);
  v0[3] = v2;
  if (v2)
  {
    v3 = qword_1009735E0;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = static AirDropActor.shared;

    return _swift_task_switch(sub_10047A644, v5, 0);
  }

  else
  {
    *(v1 + 112) = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10047A644()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100437B10();

  return _swift_task_switch(sub_10047A6B0, v1, 0);
}

uint64_t sub_10047A6B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10047A718(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10047A734, a2, 0);
}

uint64_t sub_10047A734()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_10047A7C0;
  }

  else
  {
    v3 = sub_10047B700;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10047A7C0()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10047A858, v0, 0);
}

uint64_t sub_10047A858()
{
  v1 = *(v0 + 32);
  sub_100437B10();

  return _swift_task_switch(sub_10047B700, 0, 0);
}

uint64_t sub_10047A8DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10047A8F8, a2, 0);
}

uint64_t sub_10047A8F8()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  if (v1)
  {
    v2 = qword_1009735E0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = static AirDropActor.shared;
    v0[5] = static AirDropActor.shared;
    v5 = sub_10047A9E8;
  }

  else
  {
    v5 = sub_10047A9C0;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10047A9E8()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10047AA84;

  return sub_100383F24();
}

uint64_t sub_10047AA84()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10047AB94, v1, 0);
}

uint64_t sub_10047AB94()
{

  return _swift_task_switch(sub_10047B700, 0, 0);
}

uint64_t sub_10047AC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  swift_retain_n();
  sub_10028088C(&qword_100976168, &qword_1007F92F0);
  static Task<>.noThrow(priority:operation:)();

  return sub_10047B4C4(v5);
}

uint64_t sub_10047AD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10047AD3C, a2, 0);
}

uint64_t sub_10047AD3C()
{
  v1 = *(v0[3] + 112);
  v0[5] = v1;
  if (v1)
  {
    v2 = qword_1009735E0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = static AirDropActor.shared;
    v0[6] = static AirDropActor.shared;
    v5 = sub_10047AE2C;
  }

  else
  {
    v5 = sub_10047AE04;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10047AE2C()
{
  v1 = v0[5];
  v2 = *(*&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_idmsService] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[7] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_10047AF2C;
    v4 = v0[4];

    return sub_100664D94(v4);
  }

  else
  {

    return _swift_task_switch(sub_10047B704, 0, 0);
  }
}

uint64_t sub_10047AF2C()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_10047B058, v1, 0);
}

uint64_t sub_10047B058()
{

  return _swift_task_switch(sub_10047B704, 0, 0);
}

id sub_10047B318()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_10047B3E0(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10047AD1C(a1, v6, v1 + v5);
}

uint64_t sub_10047B4C4(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10047B52C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C04;

  return sub_10047A8DC(a1, v1);
}

uint64_t sub_10047B5C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C00;

  return sub_10047A718(a1, v1);
}

uint64_t sub_10047B664(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C00;

  return sub_10047A040(a1, v1);
}

uint64_t sub_10047B708(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[31] = static AirDropActor.shared;

  return _swift_task_switch(sub_10047B7A8, v3, 0);
}

uint64_t sub_10047B7A8()
{
  v1 = *(v0 + 240);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_10000EBD4(*(v0 + 232)), (v5 & 1) != 0))
  {
    sub_1002A9938(*(v3 + 56) + 40 * v4, v0 + 144);
  }

  else
  {
    *(v0 + 176) = 0;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
  }

  swift_endAccess();
  if (*(v0 + 168))
  {
    sub_1000121F8((v0 + 144), v0 + 104);
    goto LABEL_15;
  }

  v6 = *(v0 + 240);
  v7 = UUID.uuidString.getter();
  v9 = v8;
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v11 = *(v6 + v10);
  if (*(v11 + 16))
  {
    v12 = sub_100012854(v7, v9);
    v14 = v13;

    if (v14)
    {
      sub_1002D63B0(*(v11 + 56) + 48 * v12, v0 + 16);
      goto LABEL_12;
    }
  }

  else
  {
  }

  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
LABEL_12:
  swift_endAccess();
  v15 = *(v0 + 40);
  if (v15)
  {
    v16 = *(v0 + 48);
    v17 = sub_10002CDC0((v0 + 16), *(v0 + 40));
    *(v0 + 128) = v15;
    *(v0 + 136) = v16;
    v18 = sub_10002F604((v0 + 104));
    (*(*(v15 - 8) + 16))(v18, v17, v15);
    sub_10000C60C((v0 + 16));
    if (!*(v0 + 168))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_100005508(v0 + 16, &qword_100976180, &unk_1007F9300);
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  if (*(v0 + 168))
  {
LABEL_14:
    sub_100005508(v0 + 144, &qword_100977DC8, &unk_1008091C0);
  }

LABEL_15:
  if (*(v0 + 128))
  {
    sub_1000121F8((v0 + 104), v0 + 64);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    sub_10002CDC0((v0 + 64), v19);
    v24 = (*(v20 + 40) + **(v20 + 40));
    v21 = swift_task_alloc();
    *(v0 + 256) = v21;
    *v21 = v0;
    v21[1] = sub_10047BAFC;

    return v24(v19, v20);
  }

  else
  {
    sub_100005508(v0 + 104, &qword_100977DC8, &unk_1008091C0);
    v23 = *(v0 + 8);

    return v23(&_swiftEmptySetSingleton);
  }
}

uint64_t sub_10047BAFC(uint64_t a1)
{
  v2 = *(*v1 + 248);
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_10047BC14, v2, 0);
}

uint64_t sub_10047BC14()
{
  sub_10000C60C(v0 + 8);
  v1 = v0[33];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10047BC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v55 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v52 - v11;
  __chkstk_darwin(v10);
  v14 = &v52 - v13;
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_10000C4AC(v15, qword_10097F240);
  (*(v7 + 16))(v14, a1, v6);
  v53 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v56 = v12;
  v57 = v7;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v52 = a1;
    v22 = a2;
    v23 = v21;
    v62[0] = v21;
    *v20 = 136315138;
    sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v6;
    v26 = v3;
    v28 = v27;
    v29 = v14;
    v30 = v25;
    v54 = *(v7 + 8);
    v54(v29, v25);
    v31 = sub_10000C4E4(v24, v28, v62);
    v3 = v26;

    *(v20 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v17, v18, "Adding transferring endpointID: %s", v20, 0xCu);
    sub_10000C60C(v23);
    a2 = v22;
    a1 = v52;
  }

  else
  {

    v32 = v14;
    v30 = v6;
    v54 = *(v7 + 8);
    v54(v32, v6);
  }

  v33 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;
  swift_beginAccess();
  v34 = *(v3 + v33);
  if (*(v34 + 16) && (v35 = sub_10000EBD4(a1), (v36 & 1) != 0))
  {
    v52 = v3;
    sub_1002A9938(*(v34 + 56) + 40 * v35, &v58);
    sub_1000121F8(&v58, v62);
    swift_endAccess();
    sub_1002A9938(v62, &v58);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61[0] = v53;
      *v39 = 136315138;
      v40 = v59;
      v41 = v60;
      sub_10002CDC0(&v58, v59);
      v42 = v56;
      (*(v41 + 32))(v40, v41);
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      v46 = v54;
      v54(v42, v30);
      sub_10000C60C(&v58);
      v47 = sub_10000C4E4(v43, v45, v61);

      *(v39 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v37, v38, "Adding connectable to transferringConnectables: %s", v39, 0xCu);
      sub_10000C60C(v53);
    }

    else
    {

      sub_10000C60C(&v58);
      v42 = v56;
      v46 = v54;
    }

    v49 = v63;
    v50 = v64;
    sub_10002CDC0(v62, v63);
    v51 = v55;
    (*(v50 + 32))(v49, v50);
    swift_beginAccess();
    sub_10046E0A4(v42, v51);
    swift_endAccess();
    v46(v42, v30);
    sub_1002A9938(v62, a2);
    return sub_10000C60C(v62);
  }

  else
  {
    result = swift_endAccess();
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10047C214(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v2[40] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[45] = static AirDropActor.shared;

  return _swift_task_switch(sub_10047C354, v4, 0);
}

uint64_t sub_10047C354()
{
  v53 = v0;
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 304);
  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097F240);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 352);
  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v52 = v13;
    *v12 = 136315138;
    sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = v11;
    v18 = *(v10 + 8);
    v18(v9, v17);
    v19 = sub_10000C4E4(v14, v16, &v52);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Removing transferring endpointID: %s", v12, 0xCu);
    sub_10000C60C(v13);
  }

  else
  {

    v20 = v11;
    v18 = *(v10 + 8);
    v18(v9, v20);
  }

  v21 = *(v0 + 312);
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;
  swift_beginAccess();
  v23 = *(v21 + v22);
  if (*(v23 + 16) && (v24 = sub_10000EBD4(*(v0 + 304)), (v25 & 1) != 0))
  {
    sub_1002A9938(*(v23 + 56) + 40 * v24, v0 + 104);
    sub_1000121F8((v0 + 104), v0 + 64);
    swift_endAccess();
    sub_1002A9938(v0 + 64, v0 + 144);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 344);
      v50 = *(v0 + 328);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v30;
      *v29 = 136315138;
      v31 = *(v0 + 168);
      v32 = *(v0 + 176);
      sub_10002CDC0((v0 + 144), v31);
      (*(v32 + 32))(v31, v32);
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = v18;
      v18(v28, v50);
      sub_10000C60C((v0 + 144));
      v37 = sub_10000C4E4(v33, v35, &v52);

      *(v29 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v26, v27, "Removing connectable from transferringConnectables: %s", v29, 0xCu);
      sub_10000C60C(v30);
    }

    else
    {

      sub_10000C60C((v0 + 144));
      v36 = v18;
    }

    v40 = *(v0 + 344);
    v42 = *(v0 + 320);
    v41 = *(v0 + 328);
    v43 = *(v0 + 88);
    v44 = *(v0 + 96);
    sub_10002CDC0((v0 + 64), v43);
    (*(v44 + 32))(v43, v44);
    swift_beginAccess();
    sub_10036DC54(v40, v42);
    swift_endAccess();
    v36(v40, v41);
    sub_100005508(v42, &unk_100976120, &qword_1007F9260);
    v45 = *(v0 + 88);
    v46 = *(v0 + 96);
    sub_10002CDC0((v0 + 64), v45);
    (*(v46 + 32))(v45, v46);
    swift_beginAccess();
    sub_1002B10D8(0, 0, v40);
    swift_endAccess();
    v47 = *(v0 + 88);
    v48 = *(v0 + 96);
    sub_10002CDC0((v0 + 64), v47);
    v51 = (*(v48 + 40) + **(v48 + 40));
    v49 = swift_task_alloc();
    *(v0 + 368) = v49;
    *v49 = v0;
    v49[1] = sub_10047C9D4;

    return v51(v47, v48);
  }

  else
  {
    swift_endAccess();
    sub_10047E40C();

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_10047C9D4(uint64_t a1)
{
  v2 = *(*v1 + 360);
  *(*v1 + 376) = a1;

  return _swift_task_switch(sub_10047CAEC, v2, 0);
}

uint64_t sub_10047CAEC()
{
  v1 = (v0 + 64);
  v2 = *(*(v0 + 376) + 16);

  if (!v2)
  {
    v3 = *(v0 + 312);
    v4 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v5 = *(v3 + v4);
    v6 = swift_task_alloc();
    *(v6 + 16) = v1;

    v7 = sub_1004973C8(sub_1004984F8, v6, v5);

    v8 = v7 + 64;
    v9 = -1;
    v10 = -1 << v7[32];
    if (-v10 < 64)
    {
      v9 = ~(-1 << -v10);
    }

    v11 = v9 & *(v7 + 8);
    v12 = (63 - v10) >> 6;
    v25 = v7;

    v14 = 0;
    while (v11)
    {
LABEL_12:
      v16 = (*(v25 + 6) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
      v17 = *v16;
      v18 = v16[1];
      swift_beginAccess();

      v19 = sub_100012854(v17, v18);
      v21 = v20;

      if (v21)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(v3 + v4);
        *(v3 + v4) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1002CE38C();
        }

        sub_1002D6398((*(v23 + 56) + 48 * v19), (v0 + 16));
        sub_1002D4104(v19, v23);
        *(v3 + v4) = v23;
      }

      else
      {
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0u;
        *(v0 + 16) = 0u;
      }

      v11 &= v11 - 1;
      sub_100005508(v0 + 16, &qword_100976180, &unk_1007F9300);
      result = swift_endAccess();
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v15 >= v12)
      {
        break;
      }

      v11 = *&v8[8 * v15];
      ++v14;
      if (v11)
      {
        v14 = v15;
        goto LABEL_12;
      }
    }

    if (*(v25 + 2))
    {
      sub_100482808();
    }

    v1 = (v0 + 64);
  }

  sub_10000C60C(v1);
  sub_10047E40C();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10047CDB4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for SFPlatform();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_10047CF64, v6, 0);
}

uint64_t sub_10047CF64(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  static SFPlatform.macOS.getter();
  v5 = static SFPlatform.isPlatform(_:)();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v7 = v1[8];
    v6 = v1[9];
    v8 = v1[7];
    SFAirDropReceive.Transfer.state.getter();
    v9 = (*(v7 + 88))(v6, v8);
    if (v9 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
    {
      v10 = v1[9];
      (*(v1[8] + 96))(v10, v1[7]);
      v11 = sub_10028088C(&unk_10097C670, &qword_100805110);

      v12 = *(v11 + 80);
      v13 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
      v14 = type metadata accessor for SFAirDropReceive.ItemDestination();
LABEL_9:
      (*(*(v14 - 8) + 8))(v1[9]);
      SFAirDropReceive.Transfer.askRequest.getter();
      v23 = swift_task_alloc();
      v1[13] = v23;
      *v23 = v1;
      v23[1] = sub_10047D2FC;
      v24 = v1[6];

      return sub_10047D484(v24);
    }

    if (v9 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
    {
      v15 = v1[9];
      (*(v1[8] + 96))(v15, v1[7]);
      v16 = *(sub_10028088C(&unk_10097E9B0, &unk_100808D90) + 48);

      v17 = type metadata accessor for SFAirDropReceive.ItemDestination();
      (*(*(v17 - 8) + 8))(v15 + v16, v17);
LABEL_8:
      v14 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
      goto LABEL_9;
    }

    v18 = v1[8];
    v19 = v1[9];
    v20 = v1[7];
    if (v9 == enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
    {
      (*(v18 + 96))(v1[9], v20);
      v21 = *(sub_10028088C(&qword_10097A670, &unk_100804290) + 48);
      v22 = type metadata accessor for SFAirDropReceive.Failure();
      (*(*(v22 - 8) + 8))(v19 + v21, v22);
      goto LABEL_8;
    }

    (*(v18 + 8))(v1[9], v20);
  }

  v26 = v1[1];

  return v26();
}

uint64_t sub_10047D2FC()
{
  v1 = *v0;
  v2 = *v0;

  (*(v1[5] + 8))(v1[6], v1[4]);

  v3 = v2[1];

  return v3();
}

uint64_t sub_10047D484(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_10028088C(&unk_10097F330, &qword_1007F9410);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for SFPlatform();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_10047D628, v5, 0);
}

uint64_t sub_10047D628(uint64_t a1)
{
  v3 = v1[17];
  v2 = v1[18];
  v4 = v1[16];
  static SFPlatform.macOS.getter();
  v5 = static SFPlatform.isPlatform(_:)();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = v1[9];
    SFAirDropReceive.AskRequest.id.getter();
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_receivingDisplayables;
    swift_beginAccess();
    v8 = *(v6 + v7);
    if (*(v8 + 16) && (v9 = sub_100570848(v1[15]), (v10 & 1) != 0))
    {
      v11 = v9;
      v37 = v1[15];
      v38 = v1[14];
      v12 = v1[13];
      v13 = v1[10];
      v14 = v1[11];
      v36 = v1[12];
      v15 = *(v8 + 56);
      v16 = type metadata accessor for NWEndpoint();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v14, v15 + *(v17 + 72) * v11, v16);
      v18 = *(v17 + 56);
      v18(v14, 0, 1, v16);
      sub_100005508(v14, &unk_10097F330, &qword_1007F9410);
      swift_endAccess();
      (*(v12 + 8))(v37, v36);
      SFAirDropReceive.AskRequest.id.getter();
      v18(v13, 1, 1, v16);
      swift_beginAccess();
      sub_1002B0370(v13, v38);
      swift_endAccess();
      v19 = sub_100486920();
      if (v19 >> 62)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = v1[9];

      sub_10055FA90(v20);
      v22 = v21 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler;
      v23 = *(v21 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
      if (v23)
      {
        v24 = *(v22 + 8);

        sub_100486920();
        v23();
        sub_100015D04(v23, v24);
      }
    }

    else
    {
      v25 = v1[15];
      v26 = v1[12];
      v27 = v1[13];
      v28 = v1[11];
      v29 = type metadata accessor for NWEndpoint();
      (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
      sub_100005508(v28, &unk_10097F330, &qword_1007F9410);
      swift_endAccess();
      (*(v27 + 8))(v25, v26);
      if (qword_1009738C0 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_10000C4AC(v30, qword_10097F240);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "No receive displayable present, skipping remove", v33, 2u);
      }
    }
  }

  v34 = v1[1];

  return v34();
}

uint64_t sub_10047DA70(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_10028088C(&unk_10097F330, &qword_1007F9410);
  v2[23] = swift_task_alloc();
  type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[24] = swift_task_alloc();
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for SFPlatform();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v2[32] = static AirDropActor.shared;

  return _swift_task_switch(sub_10047DC64, v5, 0);
}

uint64_t sub_10047DC64(uint64_t a1)
{
  v3 = v1[30];
  v2 = v1[31];
  v4 = v1[29];
  static SFPlatform.macOS.getter();
  v5 = static SFPlatform.isPlatform(_:)();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) != 0 && (v6 = v1[22], v7 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_browseClientIDs, swift_beginAccess(), *(*(v6 + v7) + 16)))
  {
    v8 = SFAirDropReceive.AskRequest.senderID.getter();
    v10 = v9;
    v1[33] = v9;
    v11 = SFAirDropReceive.AskRequest.contactIdentifier.getter();
    v13 = v12;
    v1[34] = v12;
    v14 = swift_task_alloc();
    v1[35] = v14;
    *v14 = v1;
    v14[1] = sub_10047DE10;
    v15 = v1[25];

    return sub_1004924A4(v15, v8, v10, v11, v13);
  }

  else
  {

    v17 = v1[1];

    return v17();
  }
}

uint64_t sub_10047DE10()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_10047DF60, v1, 0);
}

uint64_t sub_10047DF60()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v3, &unk_100976120, &qword_1007F9260);
LABEL_12:
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_10097F240);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "No matching AirDropable endpoint found, adding to receiving displayables", v24, 2u);
    }

    v26 = *(v0 + 184);
    v25 = *(v0 + 192);

    SFAirDropReceive.AskRequest.id.getter();
    sub_10062F3D4(v26);
    v27 = type metadata accessor for NWEndpoint();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    swift_beginAccess();
    sub_1002B0370(v26, v25);
    swift_endAccess();
    v28 = sub_100486920();
    if (v28 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = *(v0 + 176);

    sub_10055FA90(v29);
    v31 = v30 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler;
    v32 = *(v30 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
    if (v32)
    {
      v33 = *(v31 + 8);

      sub_100486920();
      v32();
      sub_100015D04(v32, v33);
    }

    goto LABEL_20;
  }

  v4 = *(v0 + 176);
  (*(v2 + 32))(*(v0 + 224), v3, v1);
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (!*(v6 + 16) || (v7 = sub_10000EBD4(*(v0 + 224)), (v8 & 1) == 0))
  {
    v19 = *(v0 + 216);
    v18 = *(v0 + 224);
    v20 = *(v0 + 208);
    swift_endAccess();
    (*(v19 + 8))(v18, v20);
    goto LABEL_12;
  }

  sub_1002A9938(*(v6 + 56) + 40 * v7, v0 + 56);
  sub_1000121F8((v0 + 56), v0 + 16);
  swift_endAccess();
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  sub_10002CDC0((v0 + 16), v9);
  if (((*(v10 + 24))(v9, v10) & 1) == 0)
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    sub_10000C60C((v0 + 16));
    goto LABEL_12;
  }

  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_10097F240);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Connectable endpoint present, skipping receiving displayable addition", v14, 2u);
  }

  v16 = *(v0 + 216);
  v15 = *(v0 + 224);
  v17 = *(v0 + 208);

  (*(v16 + 8))(v15, v17);
  sub_10000C60C((v0 + 16));
LABEL_20:

  v34 = *(v0 + 8);

  return v34();
}

void sub_10047E40C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10047FAC0())
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_10097F240);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No AirDrop browse clients present, stopping all browsing", v9, 2u);
    }

    sub_10048223C();
    UUID.init()();
    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionID;
    swift_beginAccess();
    (*(v3 + 40))(&v1[v10], v5, v2);
    swift_endAccess();
    v11 = v1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      (*(v3 + 16))(v5, &v1[v10], v2);
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v3 + 8))(v5, v2);
      v19 = sub_10000C4E4(v16, v18, v21);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Rolled service sessionID with new ID %s", v14, 0xCu);
      sub_10000C60C(v15);
    }
  }
}

uint64_t sub_10047E734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for UUID();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v5[15] = swift_task_alloc();
  v5[16] = type metadata accessor for SDNearFieldTap(0);
  v5[17] = swift_task_alloc();
  v5[18] = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v5[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v5[20] = static AirDropActor.shared;

  return _swift_task_switch(sub_10047E8D4, v7, 0);
}

uint64_t sub_10047E8D4()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v24 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v20 = v6;
  v21 = v0[7];
  v22 = v0[19];
  v23 = v0[6];
  sub_10049779C(v0[8], v2, type metadata accessor for SDNearFieldTap);
  v7 = (v2 + v1[13]);
  v9 = *v7;
  v8 = v7[1];
  *v4 = *v7;
  v4[1] = v8;
  v10 = v1[14];
  v11 = v3[5];
  v12 = *(v5 + 16);
  v0[21] = v12;
  v0[22] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v4 + v11, v2 + v10, v6);
  v13 = (v2 + v1[6]);
  v14 = *v13;
  v15 = v13[1];
  v16 = (v4 + v3[7]);
  *v16 = v14;
  v16[1] = v15;
  *(v4 + v3[8]) = *(v2 + v1[17]) & 1;
  *(v4 + v3[9]) = *(v2 + v1[12]);
  LOBYTE(v1) = *(v2 + v1[19]);
  sub_100294008(v9, v8);

  sub_10049786C(v2, type metadata accessor for SDNearFieldTap);
  *(v4 + v3[10]) = v1;
  *(v4 + v3[6]) = v21;
  sub_100497804(v4, v22, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
  swift_storeEnumTagMultiPayload();
  v12(v24, v23, v20);
  v0[23] = type metadata accessor for SDAirDropDiscoveredNearFieldDevice(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  v0[24] = sub_100626478(v24);
  v17 = swift_task_alloc();
  v0[25] = v17;
  *v17 = v0;
  v17[1] = sub_10047EB18;
  v18 = v0[19];

  return sub_1006261A0(v18);
}

uint64_t sub_10047EB18()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_10047EC28, v1, 0);
}

uint64_t sub_10047EC28(uint64_t a1)
{
  v37 = v1;
  v3 = v1[23];
  v2 = v1[24];
  v4 = UUID.uuidString.getter();
  v6 = v5;
  v33 = v3;
  v34 = sub_100005430(&qword_10097F328, type metadata accessor for SDAirDropDiscoveredNearFieldDevice, &unk_10080DBE8);
  v35 = &off_1008EBD48;
  v31 = v2;
  swift_beginAccess();

  sub_1002AFCBC(&v31, v4, v6);
  swift_endAccess();
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v7 = v1[21];
  v8 = v1[12];
  v9 = v1[10];
  v10 = v1[6];
  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_10097F240);
  v7(v8, v10, v9);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v1[24];
  v16 = v1[19];
  v18 = v1[11];
  v17 = v1[12];
  v19 = v1[10];
  if (v14)
  {
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v20 = 136315394;
    sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v16;
    v23 = v22;
    (*(v18 + 8))(v17, v19);
    v24 = sub_10000C4E4(v21, v23, &v36);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v31 = 0;
    v32 = 0xE000000000000000;

    _StringGuts.grow(_:)(19);

    v31 = 0xD000000000000010;
    v32 = 0x8000000100791D00;
    String.append(_:)(v15[1]);
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);

    v26 = sub_10000C4E4(v31, v32, &v36);

    *(v20 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v12, v13, "Created near field endpoint for transaction %s: %s", v20, 0x16u);
    swift_arrayDestroy();

    v27 = v30;
  }

  else
  {

    (*(v18 + 8))(v17, v19);
    v27 = v16;
  }

  sub_10049786C(v27, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (v1[21])(v1[5], v1[6], v1[10]);

  v28 = v1[1];

  return v28();
}

void sub_10047F040(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = UUID.uuidString.getter();
  v12 = v11;
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v40 = v1;
  v14 = *(v1 + v13);
  if (*(v14 + 16))
  {
    v15 = sub_100012854(v10, v12);
    v17 = v16;

    if (v17)
    {
      sub_1002D63B0(*(v14 + 56) + 48 * v15, &v41);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
LABEL_6:
  swift_endAccess();
  v18 = *(&v42 + 1);
  sub_100005508(&v41, &qword_100976180, &unk_1007F9300);
  if (v18)
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_10097F240);
    (*(v4 + 16))(v9, a1, v3);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v41 = v39;
      *v22 = 136315138;
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v4 + 8))(v9, v3);
      v26 = sub_10000C4E4(v23, v25, &v41);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Removing endpoint for near field transaction: %s", v22, 0xCu);
      sub_10000C60C(v39);
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }

    v36 = UUID.uuidString.getter();
    v38 = v37;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    swift_beginAccess();
    sub_1002AFCBC(&v41, v36, v38);
    swift_endAccess();
  }

  else
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_10097F240);
    (*(v4 + 16))(v7, a1, v3);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v41 = v31;
      *v30 = 136315138;
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v4 + 8))(v7, v3);
      v35 = sub_10000C4E4(v32, v34, &v41);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Not tracking endpoint for transaction ID %s", v30, 0xCu);
      sub_10000C60C(v31);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }
}

uint64_t sub_10047F580(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2[7] = static AirDropActor.shared;
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_10047F6C8;

  return sub_10047B708(a2);
}

uint64_t sub_10047F6C8(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_10047F7E0, v2, 0);
}

void sub_10047F7E0()
{
  v1 = 0;
  v2 = v0[9];
  v3 = *(v2 + 56);
  v4 = v0[4];
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v3;
  v8 = (63 - v6) >> 6;
  if ((v5 & v3) != 0)
  {
    while (1)
    {
      v9 = v1;
LABEL_8:
      v10 = v0[5];
      v11 = v0[6];
      sub_10049779C(*(v2 + 48) + *(v4 + 72) * (__clz(__rbit64(v7)) | (v9 << 6)), v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_100497804(v11, v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v13 = v0[5];
      if (EnumCaseMultiPayload == 3)
      {
        break;
      }

      v7 &= v7 - 1;
      sub_10049786C(v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v1 = v9;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v15 = *v13;
    v16 = [*v13 iconImageData];
    if (v16)
    {
      v17 = v16;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    SFAirDrop.EndpointMetadata.init(imageData:)();

LABEL_12:

    v14 = v0[1];

    v14();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        SFAirDrop.EndpointMetadata.init(imageData:)();
        goto LABEL_12;
      }

      v7 = *(v2 + 56 + 8 * v9);
      ++v1;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10047F9F8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F240);
  v1 = sub_10000C4AC(v0, qword_10097F240);
  if (qword_1009736E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10047FAC0()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_browseClientIDs;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097F240);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Keeping browsers alive, browse client still present";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_12:

    return 0;
  }

  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
  swift_beginAccess();
  if (*(*(v0 + v7) + 16))
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_10097F240);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Keeping browsers alive, transfer ongoing";
    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_10047FD54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_10028088C(&qword_10097C690, &qword_1008012B8);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_10047FE80(uint64_t a1, uint64_t a2)
{
  sub_10028088C(&qword_10097C690, &qword_1008012B8);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_10047FEF8(void *a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = qword_1009735E0;
  v8 = v1;
  v9 = a1;
  if (v7 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v11 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = v8;
  v12[5] = v9;

  v13 = sub_1002B36AC(0, 0, v5, &unk_100805170, v12);
  v14 = type metadata accessor for SDAirDropAgentClientToken();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropAgentClientToken_agentClient] = v9;
  *&v15[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropAgentClientToken_task] = v13;
  v18.receiver = v15;
  v18.super_class = v14;
  v16 = v9;
  return objc_msgSendSuper2(&v18, "init");
}

uint64_t sub_1004800E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5[3] = static AirDropActor.shared;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1004801BC;

  return sub_1004802EC(a5);
}

uint64_t sub_1004801BC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1004802CC, v1, 0);
}

uint64_t sub_1004802EC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004803F0, v4, 0);
}

uint64_t sub_1004803F0()
{
  v45 = v0;
  if ([*(*(v0 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus) currentConsoleUser])
  {
    sub_10055EF80(*(v0 + 64));
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097F240);
    v4 = v2;
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      log = v6;
      v8 = *(v0 + 104);
      v10 = *(v0 + 80);
      v9 = *(v0 + 88);
      v11 = *(v0 + 72);
      v12 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v12 = 136315394;
      v42 = v7;
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = sub_10000C4E4(v13, v14, &v44);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionID;
      swift_beginAccess();
      v17 = *(v9 + 16);
      v17(v8, v11 + v16, v10);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v9 + 8))(v8, v10);
      v21 = sub_10000C4E4(v18, v20, &v44);

      *(v12 + 14) = v21;
      _os_log_impl(&_mh_execute_header, log, v42, "Adding AirDrop browse client %s for session %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v26 = *(v0 + 88);

      v17 = *(v26 + 16);
    }

    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v29 = *(v0 + 80);
    v30 = *(v0 + 88);
    v31 = *(v0 + 64);
    v17(v28, v31 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_id, v29);
    swift_beginAccess();
    sub_10046E0A4(v27, v28);
    swift_endAccess();
    (*(v30 + 8))(v27, v29);
    v32 = *(v31 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_applicationServiceEndpointsOnly);
    sub_100481560(*(v31 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_applicationServiceEndpointsOnly), *(v31 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_deviceFilters));
    v33 = sub_100486920();
    if (v33 >> 62)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = *(v0 + 72);

    sub_10055FA90(v34);
    v36 = v35 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler;
    v37 = *(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
    if (v37)
    {
      v38 = *(v36 + 8);

      sub_100486920();
      v37();
      sub_100015D04(v37, v38);
    }

    if (v32)
    {
      v39 = swift_task_alloc();
      *(v0 + 112) = v39;
      *v39 = v0;
      v39[1] = sub_100480988;

      return sub_1005EAAE8();
    }
  }

  else
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_10097F240);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Browse is intended for different user, ignoring", v25, 2u);
    }
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100480988()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100480B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v5[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_100480BB4, v6, 0);
}

uint64_t sub_100480BB4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropAgentClientToken_task);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100480C7C;

  return Task.result.getter(v0 + 56, v1, &type metadata for Bool, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100480C7C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100480D8C, v1, 0);
}

uint64_t sub_100480D8C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropAgentClientToken_agentClient);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100480E34;

  return sub_100480F28(v1);
}

uint64_t sub_100480E34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100480F28(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_100481058, v4, 0);
}

uint64_t sub_100481058()
{
  v27 = v0;
  if ([*(*(v0 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus) currentConsoleUser])
  {
    sub_10055F118(*(v0 + 64));
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097F240);
    v4 = v2;
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 96);
      v9 = *(v0 + 104);
      v10 = *(v0 + 88);
      v25 = *(v0 + 72);
      v11 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v11 = 136315394;
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = sub_10000C4E4(v12, v13, &v26);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      v15 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionID;
      swift_beginAccess();
      (*(v8 + 16))(v9, v25 + v15, v10);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v8 + 8))(v9, v10);
      v19 = sub_10000C4E4(v16, v18, &v26);

      *(v11 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "Removing AirDrop browse client %s for session %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    v20 = *(v0 + 80);
    v21 = *(v0 + 64);
    v22 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_id;
    swift_beginAccess();
    sub_10036DC54(v21 + v22, v20);
    swift_endAccess();
    sub_100005508(v20, &unk_100976120, &qword_1007F9260);
    sub_10047E40C();
  }

  v23 = *(v0 + 8);

  return v23();
}

void sub_100481560(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  sub_100481848();
  sub_100469844();

  if ((a1 & 1) == 0)
  {
    v9 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_idmsService);
    type metadata accessor for SFAirDropUserDefaults();
    v10 = static SFAirDropUserDefaults.shared.getter();
    v11 = SFAirDropUserDefaults.privacyImprovements.getter();

    if (v11)
    {
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
      v13 = qword_1009735E0;
      v14 = v9;
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = static AirDropActor.shared;
      v16 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v17 = swift_allocObject();
      v17[2] = v15;
      v17[3] = v16;
      v17[4] = v14;

      sub_1002B3098(0, 0, v8, &unk_100805190, v17);
    }

    sub_100481A44(a2);
    if (!*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_classroomBrowser))
    {
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v20 = static MainActor.shared.getter();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = &protocol witness table for MainActor;
      v21[4] = v19;

      sub_1002B3098(0, 0, v8, &unk_100805188, v21);
    }
  }
}

void sub_100481848()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser;
  if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser))
  {
    v2 = v0;
    if ([*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus) isAirDropAllowed])
    {
      if (qword_1009738C0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000C4AC(v3, qword_10097F240);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Starting application service browser", v6, 2u);
      }

      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      objc_allocWithZone(type metadata accessor for SDAirDropApplicationServiceBrowser());

      v9 = sub_1004A2D88(v8, sub_100498394, v7);
      v10 = *(v2 + v1);
      *(v2 + v1) = v9;

      v11 = *(v2 + v1);
      if (v11)
      {
        *(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_delegate + 8) = &off_1008E2F30;
        swift_unknownObjectWeakAssign();
        v12 = *(v2 + v1);
        if (v12)
        {
          v13 = v12;
          sub_1004A2544();
        }
      }
    }
  }
}

void sub_100481A44(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v65 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser;
  v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser);
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *&v12[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_deviceFilters];
  if (*(v13 + 16))
  {
    v14 = v12;
    if ((sub_100495F18(v13, a1) & 1) == 0)
    {
      v64 = v8;
      if (qword_1009738C0 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000C4AC(v15, qword_10097F240);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v63 = v7;
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Bonjour browse with new device filters requested", v18, 2u);
        v7 = v63;
      }

      sub_10047FAC0();
      v19 = *(v2 + v11);
      v8 = v64;
      if (v19)
      {
        v20 = v19;
        sub_1004C5400();
      }

      v14 = *(v2 + v11);
      *(v2 + v11) = 0;
    }
  }

  if (!*(v2 + v11))
  {
LABEL_13:
    v21 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus);
    if ([v21 isAirDropAllowed])
    {
      v60 = v21;
      if (qword_1009738C0 != -1)
      {
        swift_once();
      }

      v63 = v7;
      v64 = v8;
      v61 = v5;
      v22 = type metadata accessor for Logger();
      sub_10000C4AC(v22, qword_10097F240);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      v25 = os_log_type_enabled(v23, v24);
      v62 = v4;
      v58 = a1;
      if (v25)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v67 = v27;
        *v26 = 136315138;
        sub_100294244();
        v28 = Set.description.getter();
        v30 = sub_10000C4E4(v28, v29, &v67);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "Starting bonjour browser - filters %s", v26, 0xCu);
        sub_10000C60C(v27);
      }

      v31 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bleController);
      v53 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_nearbyAgent);
      v54 = v31;
      v55 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_idmsService);
      v57 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionLogger);
      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v59 = type metadata accessor for SDAirDropBonjourBrowser();
      v32 = objc_allocWithZone(v59);
      v33 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browserQueue;
      sub_1002DDC10();

      static DispatchQoS.default.getter();
      v67 = _swiftEmptyArrayStorage;
      sub_100005430(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_10028088C(&unk_10097A630, &unk_1007F5680);
      sub_1002808D4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v61 + 104))(v63, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v62);
      *&v32[v33] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browser] = 0;
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_rpClient] = 0;
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToBrowseResult] = &_swiftEmptyDictionarySingleton;
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount] = &_swiftEmptyDictionarySingleton;
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections] = &_swiftEmptyDictionarySingleton;
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToAirDropEndpoints] = &_swiftEmptyDictionarySingleton;
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_deviceFilters] = v58;
      v34 = v60;
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_deviceStatus] = v60;
      v36 = v53;
      v35 = v54;
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_nearbyAgent] = v53;
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_bleController] = v35;
      v37 = v55;
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_idmsService] = v55;
      v38 = objc_opt_self();

      v39 = v34;
      v40 = v36;
      v41 = v35;
      v42 = v37;
      v43 = [v38 defaultCenter];
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_notificationCenter] = v43;
      v44 = v56;
      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_sessionLogger] = v57;
      v45 = &v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_endpointsUpdateHandler];
      *v45 = sub_10049829C;
      v45[1] = v44;
      v67 = _swiftEmptyArrayStorage;
      sub_10028088C(&unk_10097F380, &qword_100806F10);
      swift_allocObject();

      *&v32[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesNeedingDiscovery] = CurrentValueSubject.init(_:)();
      v66.receiver = v32;
      v66.super_class = v59;
      v46 = objc_msgSendSuper2(&v66, "init");
      v47 = *&v46[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_notificationCenter];
      v48 = v46;
      [v47 addObserver:v48 selector:"wirelessBluetoothStateChangedWithNotification:" name:@"com.apple.sharingd.WirelessModeChanged" object:0];
      [v47 addObserver:v48 selector:"wirelessBluetoothStateChangedWithNotification:" name:@"com.apple.sharingd.WirelessPowerChanged" object:0];
      [v47 addObserver:v48 selector:"wirelessBluetoothStateChangedWithNotification:" name:@"com.apple.sharingd.BluetoothPowerChanged" object:0];

      v49 = *(v2 + v11);
      *(v2 + v11) = v48;

      v50 = *(v2 + v11);
      if (v50)
      {
        *(v50 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_delegate + 8) = &off_1008E2F30;
        swift_unknownObjectWeakAssign();
        v51 = *(v2 + v11);
        if (v51)
        {
          v52 = v51;
          sub_1004C4FAC();
        }
      }
    }
  }
}

uint64_t sub_10048223C()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  __chkstk_darwin(v2);
  v47 = &v42 - v4;
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  if (qword_1009738C0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097F240);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Stopping SDAirDropEndpointService", v11, 2u);
  }

  if (sub_10047FAC0())
  {
    v12 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser;
    v13 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser];
    if (v13)
    {
      v14 = v13;
      sub_1004A2B58();

      v13 = *&v1[v12];
    }

    *&v1[v12] = 0;
  }

  if (sub_10047FAC0())
  {
    v15 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser;
    v16 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser];
    if (v16)
    {
      v17 = v16;
      sub_1004C5400();

      v16 = *&v1[v15];
    }

    *&v1[v15] = 0;
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v19;

  sub_1002B3098(0, 0, v7, &unk_1007FA798, v21);

  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscoveredEndpoints;
  swift_beginAccess();
  *&v1[v22] = &_swiftEmptySetSingleton;

  v23 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  *&v1[v23] = &_swiftEmptyDictionarySingleton;

  sub_100482808();
  v24 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourDiscoveryContinuations;
  swift_beginAccess();
  v43 = v1;
  v42 = v24;
  v25 = *&v1[v24];
  v7 = (v25 + 64);
  v26 = 1 << *(v25 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v25 + 64);
  v29 = (v26 + 63) >> 6;
  v46 = v49 + 16;
  v45 = enum case for SFAirDropSend.Failure.resolveFailure(_:);
  v44 = v49 + 8;

  v30 = 0;
  if (v28)
  {
    while (1)
    {
      v31 = v30;
LABEL_20:
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v34 = v48;
      v33 = v49;
      v1 = v47;
      (*(v49 + 16))(v47, *(v25 + 56) + *(v49 + 72) * (v32 | (v31 << 6)), v48);
      v35 = type metadata accessor for SFAirDropSend.Failure();
      sub_100005430(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
      v36 = swift_allocError();
      *v37 = 1;
      (*(*(v35 - 8) + 104))(v37, v45, v35);
      v50 = v36;
      CheckedContinuation.resume(throwing:)();
      (*(v33 + 8))(v1, v34);
      if (!v28)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
LABEL_16:
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v31 >= v29)
    {
      break;
    }

    v28 = *&v7[8 * v31];
    ++v30;
    if (v28)
    {
      v30 = v31;
      goto LABEL_20;
    }
  }

  v38 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
  v39 = v43;
  swift_beginAccess();
  *&v39[v38] = &_swiftEmptySetSingleton;

  *&v39[v42] = &_swiftEmptyDictionarySingleton;

  v40 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_receivingDisplayables;
  swift_beginAccess();
  *&v39[v40] = &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100482808()
{
  v1 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v1 - 8);
  v58 = &v49 - v2;
  v57 = type metadata accessor for UUID();
  v3 = *(v57 - 8);
  v4 = __chkstk_darwin(v57);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v55 = &v49 - v7;
  __chkstk_darwin(v6);
  v64 = &v49 - v8;
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_displayableIDs;
  swift_beginAccess();
  v54 = v9;
  *(v0 + v9) = &_swiftEmptySetSingleton;

  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v11 = *(v0 + v10);
  v12 = *(v11 + 64);
  v50 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionID;
  v59 = v11;

  v60 = v0;
  v53 = v16;
  swift_beginAccess();
  v17 = 0;
  v49 = (v13 + 63) >> 6;
  v65 = (v3 + 8);
  v52 = (v3 + 16);
  v51 = (v3 + 56);
  v18 = &_swiftEmptyDictionarySingleton;
  v19 = v57;
  if (v15)
  {
    while (1)
    {
      v63 = v18;
      v20 = v17;
LABEL_9:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1002D63B0(*(v59 + 56) + 48 * (v21 | (v20 << 6)), &v71);
      v22 = v72;
      sub_10002CDC0(&v71, v72);
      v23 = v55;
      (*(*(&v22 + 1) + 32))(v22, *(&v22 + 1));
      *&v61 = UUID.uuidString.getter();
      v25 = v24;
      v62 = *v65;
      v62(v23, v19);
      v26 = *v52;
      v27 = v58;
      (*v52)(v58, v60 + v53, v19);
      (*v51)(v27, 0, 1, v19);
      v28 = v64;
      sub_10062E9D8(v27, v61, v25, v64);

      sub_100005508(v27, &unk_100976120, &qword_1007F9260);
      v29 = v56;
      v26(v56, v28, v19);
      swift_beginAccess();
      sub_10046E0A4(v23, v29);
      swift_endAccess();
      v30 = v23;
      v31 = v62;
      v62(v30, v19);
      v61 = v72;
      v32 = v72;
      v33 = sub_10002CDC0(&v71, v72);
      *&v70[3] = v61;
      v34 = sub_10002F604(v70);
      (*(*(v32 - 8) + 16))(v34, v33, v32);
      sub_10000C60C(&v71);
      sub_1000121F8(v70, v67);
      v35 = v63;
      LOBYTE(v32) = swift_isUniquelyReferenced_nonNull_native();
      v66 = v35;
      v36 = v68;
      v37 = v69;
      v38 = sub_10002F5B4(v67, v68);
      __chkstk_darwin(v38);
      v40 = &v49 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v40);
      v42 = v64;
      sub_10049791C(v40, v64, v32, &v66, v36, v37);
      v31(v42, v19);
      sub_10000C60C(v67);
      v18 = v66;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v20 >= v49)
    {
      break;
    }

    v15 = *(v50 + 8 * v20);
    ++v17;
    if (v15)
    {
      v63 = v18;
      v17 = v20;
      goto LABEL_9;
    }
  }

  v43 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;
  v15 = v60;
  swift_beginAccess();
  *(v15 + v43) = v18;

  v44 = sub_100486920();
  if (!(v44 >> 62))
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

LABEL_17:
  v45 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:

  result = sub_10055FA90(v45);
  v47 = *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
  if (v47)
  {
    v48 = *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler + 8);

    sub_100486920();
    v47();
    sub_100015D04(v47, v48);
  }

  return result;
}

uint64_t sub_100482F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_100482F28, 0, 0);
}

uint64_t sub_100482F28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_100483028;
    v3 = *(v0 + 56);

    return sub_10048313C(v3, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100483028()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

uint64_t sub_10048313C(uint64_t a1, char a2)
{
  *(v3 + 368) = a2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  *(v3 + 136) = swift_task_alloc();
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  *(v3 + 144) = v4;
  *(v3 + 152) = *(v4 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  *(v3 + 264) = static AirDropActor.shared;

  return _swift_task_switch(sub_100483330, v5, 0);
}

uint64_t sub_100483330()
{
  v137 = v0;
  if (qword_1009738C0 != -1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    *(v0 + 272) = sub_10000C4AC(v1, qword_10097F240);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v136[0] = v5;
      *v4 = 136315138;
      v6 = Array.description.getter();
      v8 = sub_10000C4E4(v6, v7, v136);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Endpoints discovered %s", v4, 0xCu);
      sub_10000C60C(v5);
    }

    v9 = *(v0 + 120);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v0 + 152);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v13 = *(v11 + 72);
      v14 = v9 + v12;
      v15 = _swiftEmptyArrayStorage;
      do
      {
        v16 = *(v0 + 256);
        v17 = *(v0 + 128);
        sub_10049779C(v14, v16, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v18 = sub_100487690(v16, v17);
        v19 = *(v0 + 256);
        if (v18)
        {
          sub_100497804(v19, *(v0 + 248), type metadata accessor for SDAirDropDiscoveredEndpoint);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v136[0] = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10028FED0(0, v15[2] + 1, 1);
            v15 = v136[0];
          }

          v22 = v15[2];
          v21 = v15[3];
          if (v22 >= v21 >> 1)
          {
            sub_10028FED0((v21 > 1), v22 + 1, 1);
            v15 = v136[0];
          }

          v23 = *(v0 + 248);
          v15[2] = v22 + 1;
          sub_100497804(v23, v15 + v12 + v22 * v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
        }

        else
        {
          sub_10049786C(v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
        }

        v14 += v13;
        --v10;
      }

      while (v10);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v24 = *(v0 + 128);
    v25 = *(v0 + 368);
    v128 = sub_100292E1C(v15);
    *(v0 + 280) = v128;

    v26 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscoveredEndpoints;
    *(v0 + 288) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscoveredEndpoints;
    swift_beginAccess();
    v27 = *(v24 + v26);
    v129 = swift_task_alloc();
    *(v129 + 16) = v25;
    v28 = *(v27 + 32);
    LODWORD(v24) = v28 & 0x3F;
    v29 = ((1 << v28) + 63) >> 6;
    v30 = 8 * v29;

    if (v24 <= 0xD)
    {
      goto LABEL_16;
    }

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_16:
    v126 = &v126;
    v127 = v29;
    v134 = *(v0 + 152);
    LODWORD(v132) = *(v0 + 368);
    __chkstk_darwin(v31);
    v130 = &v126 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v130, v30);
    v131 = 0;
    v32 = 0;
    v33 = v27 + 56;
    v34 = 1 << *(v27 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v27 + 56);
    v37 = (v34 + 63) >> 6;
    v135 = v27;
    while (v36)
    {
      v38 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
LABEL_27:
      v41 = v38 | (v32 << 6);
      v43 = *(v0 + 232);
      v42 = *(v0 + 240);
      v44 = *(v27 + 48);
      v45 = *(v134 + 72);
      v133 = v41;
      sub_10049779C(v44 + v45 * v41, v42, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10049779C(v42, v43, type metadata accessor for SDAirDropDiscoveredEndpoint);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v47 = *(v0 + 232);
      v48 = *(v0 + 240);
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_10049786C(v47, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
          sub_10049786C(v48, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v27 = v135;
        }

        else
        {
          sub_10049786C(v47, type metadata accessor for SDAirDropDiscoveredEndpoint);
          sub_10049786C(v48, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v49 = v132 == 2;
LABEL_34:
          v27 = v135;
          if (v49)
          {
LABEL_36:
            *&v130[(v133 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v133;
            if (__OFADD__(v131++, 1))
            {
              __break(1u);
LABEL_39:
              v51 = sub_1006E3B80(v130, v127, v131, v27);
              goto LABEL_40;
            }
          }
        }
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          sub_10049786C(v47, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
          sub_10049786C(v48, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v49 = v132 == 1;
          goto LABEL_34;
        }

        sub_10049786C(v47, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        sub_10049786C(v48, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v27 = v135;
        if (!v132)
        {
          goto LABEL_36;
        }
      }
    }

    v39 = v32;
    while (1)
    {
      v32 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v32 >= v37)
      {
        goto LABEL_39;
      }

      v40 = *(v33 + 8 * v32);
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v36 = (v40 - 1) & v40;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_77:
    swift_once();
  }

  v125 = swift_slowAlloc();
  v51 = sub_1004976E8(v125, v29, v27, sub_10049827C, v129, sub_1006E32EC);

LABEL_40:
  *(v0 + 296) = v51;

  *(v0 + 112) = v128;
  v52 = *(v51 + 32);
  *(v0 + 369) = v52;
  v53 = -1;
  v54 = -1 << v52;
  if (-(-1 << v52) < 64)
  {
    v53 = ~(-1 << -v54);
  }

  v55 = v53 & *(v51 + 56);

  if (v55)
  {
    v56 = 0;
    v57 = *(v0 + 296);
LABEL_47:
    *(v0 + 304) = v55;
    *(v0 + 312) = v56;
    v60 = *(v0 + 280);
    v62 = *(v0 + 216);
    v61 = *(v0 + 224);
    sub_10049779C(*(v57 + 48) + *(*(v0 + 152) + 72) * (__clz(__rbit64(v55)) | (v56 << 6)), v61, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v61, v62, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v63 = sub_100569540(v62, v60);
    v64 = *(v0 + 216);
    if (v63)
    {
      sub_10049779C(v64, *(v0 + 208), type metadata accessor for SDAirDropDiscoveredEndpoint);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      v67 = os_log_type_enabled(v65, v66);
      v68 = *(v0 + 208);
      if (v67)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v136[0] = v70;
        *v69 = 136315138;
        v71 = sub_10032DA30();
        v73 = v72;
        sub_10049786C(v68, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v74 = sub_10000C4E4(v71, v73, v136);

        *(v69 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v65, v66, "Endpoint updated %s", v69, 0xCu);
        sub_10000C60C(v70);
      }

      else
      {

        sub_10049786C(v68, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      v86 = *(v0 + 192);
      v85 = *(v0 + 200);
      sub_10049779C(*(v0 + 216), v86, type metadata accessor for SDAirDropDiscoveredEndpoint);
      swift_beginAccess();
      sub_10046DE64(v85, v86);
      swift_endAccess();
      sub_10049786C(v85, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v87 = swift_task_alloc();
      *(v0 + 320) = v87;
      *v87 = v0;
      v87[1] = sub_100484390;
      v88 = *(v0 + 216);
      v89 = *(v0 + 368);

      return sub_100487CBC(v88, v89);
    }

    else
    {
      sub_10049779C(v64, *(v0 + 184), type metadata accessor for SDAirDropDiscoveredEndpoint);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      v77 = os_log_type_enabled(v75, v76);
      v78 = *(v0 + 184);
      if (v77)
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v136[0] = v80;
        *v79 = 136315138;
        v81 = sub_10032DA30();
        v83 = v82;
        sub_10049786C(v78, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v84 = sub_10000C4E4(v81, v83, v136);

        *(v79 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v75, v76, "Endpoint disappeared %s", v79, 0xCu);
        sub_10000C60C(v80);
      }

      else
      {

        sub_10049786C(v78, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      v91 = *(v0 + 216);
      v92 = *(v0 + 136);
      swift_beginAccess();
      sub_10036E788(v91, v92);
      swift_endAccess();
      sub_100005508(v92, &qword_1009763E0, &qword_1007F95D0);
      v93 = swift_task_alloc();
      *(v0 + 328) = v93;
      *v93 = v0;
      v93[1] = sub_100484E98;
      v94 = *(v0 + 216);

      return sub_1004892AC(v94);
    }
  }

  else
  {
    v58 = 0;
    v59 = ((63 - v54) >> 6) - 1;
    v57 = *(v0 + 296);
    while (v59 != v58)
    {
      v56 = v58 + 1;
      v55 = *(v57 + 8 * v58++ + 64);
      if (v55)
      {
        goto LABEL_47;
      }
    }

    v95 = *(v0 + 112);
    *(v0 + 336) = v95;
    v96 = *(v95 + 32);
    *(v0 + 370) = v96;
    v97 = -1;
    v98 = -1 << v96;
    if (-(-1 << v96) < 64)
    {
      v97 = ~(-1 << -(-1 << v96));
    }

    v99 = v97 & *(v95 + 56);
    if (v99)
    {
      v100 = 0;
LABEL_67:
      *(v0 + 344) = v99;
      *(v0 + 352) = v100;
      v104 = *(v0 + 168);
      v103 = *(v0 + 176);
      v105 = *(v0 + 160);
      sub_10049779C(*(v95 + 48) + *(*(v0 + 152) + 72) * (__clz(__rbit64(v99)) | (v100 << 6)), v103, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_100497804(v103, v104, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10049779C(v104, v105, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      v108 = os_log_type_enabled(v106, v107);
      v109 = *(v0 + 160);
      if (v108)
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v136[0] = v111;
        *v110 = 136315138;
        v112 = sub_10032DA30();
        v114 = v113;
        sub_10049786C(v109, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v115 = sub_10000C4E4(v112, v114, v136);

        *(v110 + 4) = v115;
        _os_log_impl(&_mh_execute_header, v106, v107, "Endpoint discovered %s", v110, 0xCu);
        sub_10000C60C(v111);
      }

      else
      {

        sub_10049786C(v109, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      v117 = *(v0 + 192);
      v116 = *(v0 + 200);
      sub_10049779C(*(v0 + 168), v117, type metadata accessor for SDAirDropDiscoveredEndpoint);
      swift_beginAccess();
      sub_10046DE64(v116, v117);
      swift_endAccess();
      sub_10049786C(v116, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v118 = swift_task_alloc();
      *(v0 + 360) = v118;
      *v118 = v0;
      v118[1] = sub_100484FD4;
      v119 = *(v0 + 168);
      v120 = *(v0 + 368);

      return sub_10048AE10(v119, v120);
    }

    else
    {
      v101 = 0;
      v102 = ((63 - v98) >> 6) - 1;
      while (v102 != v101)
      {
        v100 = v101 + 1;
        v99 = *(v95 + 8 * v101++ + 64);
        if (v99)
        {
          goto LABEL_67;
        }
      }

      v121 = *(v0 + 184);
      v130 = *(v0 + 192);
      v131 = v121;
      v122 = *(v0 + 168);
      v132 = *(v0 + 176);
      v133 = v122;
      v123 = *(v0 + 136);
      v134 = *(v0 + 160);
      v135 = v123;

      sub_100482808();

      v124 = *(v0 + 8);

      return v124();
    }
  }
}

uint64_t sub_100484390()
{
  v1 = *(*v0 + 264);

  return _swift_task_switch(sub_1004844CC, v1, 0);
}

uint64_t sub_1004844CC()
{
  v70 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 136);
  sub_10036E788(v1, v2);
  sub_100005508(v2, &qword_1009763E0, &qword_1007F95D0);
  sub_10049786C(v1, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v3 = *(v0 + 312);
  v4 = (*(v0 + 304) - 1) & *(v0 + 304);
  if (v4)
  {
    v5 = *(v0 + 296);
LABEL_7:
    *(v0 + 304) = v4;
    *(v0 + 312) = v3;
    v7 = *(v0 + 280);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    sub_10049779C(*(v5 + 48) + *(*(v0 + 152) + 72) * (__clz(__rbit64(v4)) | (v3 << 6)), v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v8, v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v10 = sub_100569540(v9, v7);
    v11 = *(v0 + 216);
    if (v10)
    {
      sub_10049779C(v11, *(v0 + 208), type metadata accessor for SDAirDropDiscoveredEndpoint);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 208);
      if (v14)
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v69 = v17;
        *v16 = 136315138;
        v18 = sub_10032DA30();
        v20 = v19;
        sub_10049786C(v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v21 = sub_10000C4E4(v18, v20, &v69);

        *(v16 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v12, v13, "Endpoint updated %s", v16, 0xCu);
        sub_10000C60C(v17);
      }

      else
      {

        sub_10049786C(v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      v33 = *(v0 + 192);
      v32 = *(v0 + 200);
      sub_10049779C(*(v0 + 216), v33, type metadata accessor for SDAirDropDiscoveredEndpoint);
      swift_beginAccess();
      sub_10046DE64(v32, v33);
      swift_endAccess();
      sub_10049786C(v32, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v34 = swift_task_alloc();
      *(v0 + 320) = v34;
      *v34 = v0;
      v34[1] = sub_100484390;
      v35 = *(v0 + 216);
      v36 = *(v0 + 368);

      return sub_100487CBC(v35, v36);
    }

    else
    {
      sub_10049779C(v11, *(v0 + 184), type metadata accessor for SDAirDropDiscoveredEndpoint);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v0 + 184);
      if (v24)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v69 = v27;
        *v26 = 136315138;
        v28 = sub_10032DA30();
        v30 = v29;
        sub_10049786C(v25, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v31 = sub_10000C4E4(v28, v30, &v69);

        *(v26 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v22, v23, "Endpoint disappeared %s", v26, 0xCu);
        sub_10000C60C(v27);
      }

      else
      {

        sub_10049786C(v25, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      v38 = *(v0 + 216);
      v39 = *(v0 + 136);
      swift_beginAccess();
      sub_10036E788(v38, v39);
      swift_endAccess();
      sub_100005508(v39, &qword_1009763E0, &qword_1007F95D0);
      v40 = swift_task_alloc();
      *(v0 + 328) = v40;
      *v40 = v0;
      v40[1] = sub_100484E98;
      v41 = *(v0 + 216);

      return sub_1004892AC(v41);
    }
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
      }

      v5 = *(v0 + 296);
      if (v6 >= (((1 << *(v0 + 369)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 56);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v42 = *(v0 + 112);
    *(v0 + 336) = v42;
    v43 = *(v42 + 32);
    *(v0 + 370) = v43;
    v44 = -1;
    v45 = -1 << v43;
    if (-(-1 << v43) < 64)
    {
      v44 = ~(-1 << -(-1 << v43));
    }

    v46 = v44 & *(v42 + 56);
    if (v46)
    {
      v47 = 0;
LABEL_27:
      *(v0 + 344) = v46;
      *(v0 + 352) = v47;
      v51 = *(v0 + 168);
      v50 = *(v0 + 176);
      v52 = *(v0 + 160);
      sub_10049779C(*(v42 + 48) + *(*(v0 + 152) + 72) * (__clz(__rbit64(v46)) | (v47 << 6)), v50, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_100497804(v50, v51, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10049779C(v51, v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 160);
      if (v55)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v69 = v58;
        *v57 = 136315138;
        v59 = sub_10032DA30();
        v61 = v60;
        sub_10049786C(v56, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v62 = sub_10000C4E4(v59, v61, &v69);

        *(v57 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v53, v54, "Endpoint discovered %s", v57, 0xCu);
        sub_10000C60C(v58);
      }

      else
      {

        sub_10049786C(v56, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      v64 = *(v0 + 192);
      v63 = *(v0 + 200);
      sub_10049779C(*(v0 + 168), v64, type metadata accessor for SDAirDropDiscoveredEndpoint);
      swift_beginAccess();
      sub_10046DE64(v63, v64);
      swift_endAccess();
      sub_10049786C(v63, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v65 = swift_task_alloc();
      *(v0 + 360) = v65;
      *v65 = v0;
      v65[1] = sub_100484FD4;
      v66 = *(v0 + 168);
      v67 = *(v0 + 368);

      return sub_10048AE10(v66, v67);
    }

    else
    {
      v48 = 0;
      v49 = ((63 - v45) >> 6) - 1;
      while (v49 != v48)
      {
        v47 = v48 + 1;
        v46 = *(v42 + 8 * v48++ + 64);
        if (v46)
        {
          goto LABEL_27;
        }
      }

      sub_100482808();

      v68 = *(v0 + 8);

      return v68();
    }
  }
}

uint64_t sub_100484E98()
{
  v1 = *(*v0 + 264);

  return _swift_task_switch(sub_1004986CC, v1, 0);
}

uint64_t sub_100484FD4()
{
  v1 = *(*v0 + 264);

  return _swift_task_switch(sub_100485110, v1, 0);
}

uint64_t sub_100485110(__n128 a1)
{
  v27 = v1;
  sub_10049786C(*(v1 + 168), type metadata accessor for SDAirDropDiscoveredEndpoint);
  v2 = *(v1 + 352);
  v3 = (*(v1 + 344) - 1) & *(v1 + 344);
  if (v3)
  {
    v4 = *(v1 + 336);
LABEL_7:
    *(v1 + 344) = v3;
    *(v1 + 352) = v2;
    v7 = *(v1 + 168);
    v6 = *(v1 + 176);
    v8 = *(v1 + 160);
    sub_10049779C(*(v4 + 48) + *(*(v1 + 152) + 72) * (__clz(__rbit64(v3)) | (v2 << 6)), v6, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v6, v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049779C(v7, v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v1 + 160);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315138;
      v15 = sub_10032DA30();
      v17 = v16;
      sub_10049786C(v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v18 = sub_10000C4E4(v15, v17, &v26);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Endpoint discovered %s", v13, 0xCu);
      sub_10000C60C(v14);
    }

    else
    {

      sub_10049786C(v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v20 = *(v1 + 192);
    v19 = *(v1 + 200);
    sub_10049779C(*(v1 + 168), v20, type metadata accessor for SDAirDropDiscoveredEndpoint);
    swift_beginAccess();
    sub_10046DE64(v19, v20);
    swift_endAccess();
    sub_10049786C(v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v21 = swift_task_alloc();
    *(v1 + 360) = v21;
    *v21 = v1;
    v21[1] = sub_100484FD4;
    v22 = *(v1 + 168);
    v23 = *(v1 + 368);

    return sub_10048AE10(v22, v23);
  }

  else
  {
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
      }

      if (v5 >= (((1 << *(v1 + 370)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v1 + 336);
      v3 = *(v4 + 8 * v5 + 56);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    sub_100482808();

    v25 = *(v1 + 8);

    return v25();
  }
}

uint64_t sub_100485564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_100485588, 0, 0);
}

uint64_t sub_100485588()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_100485688;
    v3 = *(v0 + 56);

    return sub_10048313C(v3, 1);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100485688()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_1002F9710, 0, 0);
}

uint64_t sub_10048579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10048586C, v6, v5);
}

uint64_t sub_10048586C()
{

  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097F240);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting classroom browser", v4, 2u);
  }

  v5 = *(v0 + 72);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = swift_allocObject();
  v8 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = objc_allocWithZone(type metadata accessor for SDAirDropClassroomBrowser());

  v10 = sub_1002F723C(sub_1004980BC, v7);
  v11 = &off_1008E2F30;
  if (!Strong)
  {
    v11 = 0;
  }

  *&v10[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_delegate + 8] = v11;
  swift_unknownObjectWeakAssign();

  v12 = v10;
  sub_1002F733C();

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = swift_allocObject();
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = qword_1009735E0;
  v17 = v12;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 72);
  v19 = static AirDropActor.shared;
  v20 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v14;
  v21[5] = v17;
  v21[6] = &off_1008DAE70;

  sub_1002B3398(0, 0, v18, &unk_1008051A0, v21);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100485BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = a1;

  sub_1002B3398(0, 0, v8, a4, v12);
}

uint64_t sub_100485D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_100485D74, 0, 0);
}

uint64_t sub_100485D74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_100485688;
    v3 = *(v0 + 56);

    return sub_10048313C(v3, 2);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100485E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_100485F14, v7, 0);
}

uint64_t sub_100485F14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_classroomBrowser) = *(v0 + 56);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100485FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[11] = v6;
  v4[12] = v5;

  return _swift_task_switch(sub_10048609C, v6, v5);
}

uint64_t sub_10048609C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v0[14] = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_classroomBrowser;
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v2 = static AirDropActor.shared;

    return _swift_task_switch(sub_100486328, v2, 0);
  }

  else
  {

    v3 = v0[9];
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v7 = qword_1009735E0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = v0[9];
    v9 = static AirDropActor.shared;
    v10 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = v5;

    sub_1002B3398(0, 0, v8, &unk_100805148, v11);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100486328(uint64_t a1, uint64_t a2)
{
  v3 = *(v2[13] + v2[14]);
  v2[15] = v3;
  if (v3)
  {
    v4 = v2[11];
    v5 = v2[12];
    swift_unknownObjectRetain();
    v6 = sub_1004865AC;
    v7 = v4;
    v8 = v5;
  }

  else
  {
    v7 = v2[11];
    v8 = v2[12];
    v6 = sub_1004863C4;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1004863C4()
{
  v1 = v0[13];

  v2 = v0[9];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v6 = qword_1009735E0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = v0[9];
  v8 = static AirDropActor.shared;
  v9 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v9;
  v10[4] = v4;

  sub_1002B3398(0, 0, v7, &unk_100805148, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004865AC()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser;
  v4 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(v1 + v3);
    *(v1 + v3) = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v6 = v0[9];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v10 = qword_1009735E0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = v0[9];
  v12 = static AirDropActor.shared;
  v13 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v8;

  sub_1002B3398(0, 0, v11, &unk_100805148, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1004867D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_100486874, v5, 0);
}

uint64_t sub_100486874()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = (Strong + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_classroomBrowser);
    *v3 = 0;
    v3[1] = 0;
    swift_unknownObjectRelease();
  }

  **(v0 + 40) = v2 == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100486920()
{
  v1 = v0;
  v96 = type metadata accessor for UUID();
  v87 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for NWEndpoint();
  v90 = *(v98 - 8);
  v3 = __chkstk_darwin(v98);
  v89 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v94 = &v86 - v6;
  __chkstk_darwin(v5);
  v93 = (&v86 - v7);
  v97 = type metadata accessor for SFPlatform();
  v8 = *(v97 - 8);
  __chkstk_darwin(v97);
  v92 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v86 = v10;
  v11 = *(v1 + v10);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v91 = (v8 + 8);
  v17 = v11;

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  if (v15)
  {
    while (1)
    {
LABEL_10:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1002D63B0(*(v17 + 56) + 48 * (v21 | (v18 << 6)), &v100);
      v22 = v92;
      static SFPlatform.watchOS.getter();
      v23 = static SFPlatform.isPlatform(_:)();
      (*v91)(v22, v97);
      if (v23)
      {
        goto LABEL_17;
      }

      sub_1002D63B0(&v100, v99);
      sub_10028088C(&unk_10097F340, &unk_1008050C0);
      type metadata accessor for SDAirDropDiscoveredDevice(0);
      if (swift_dynamicCast() & 1) != 0 || (sub_1002D63B0(&v100, v99), type metadata accessor for SDAirDropDiscoveredPerson(0), (swift_dynamicCast()))
      {
        swift_beginAccess();

        LODWORD(v88) = sub_1004956D0(v24, v1);

        if (v88)
        {
          goto LABEL_17;
        }

LABEL_5:
        sub_10000C60C(&v100);
        if (!v15)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1002D63B0(&v100, v99);
        type metadata accessor for SDAirDropDiscoveredClassroom(0);
        if (!swift_dynamicCast())
        {
          goto LABEL_5;
        }

LABEL_17:
        sub_1002D6398(&v100, v99);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FBFC(0, v19[2] + 1, 1);
          v19 = v103;
        }

        v27 = v19[2];
        v26 = v19[3];
        if (v27 >= v26 >> 1)
        {
          sub_10028FBFC((v26 > 1), v27 + 1, 1);
          v19 = v103;
        }

        v19[2] = v27 + 1;
        sub_1002D6398(v99, &v19[6 * v27 + 4]);
        if (!v15)
        {
          goto LABEL_6;
        }
      }
    }
  }

  while (1)
  {
LABEL_6:
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v20 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v20);
    ++v18;
    if (v15)
    {
      v18 = v20;
      goto LABEL_10;
    }
  }

  *&v100 = v19;

  sub_100496058(&v100);

  v103 = _swiftEmptyArrayStorage;
  v28 = *(v100 + 16);
  v97 = v1;
  if (v28)
  {
    v88 = v100;
    v29 = v100 + 32;
    v92 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionID;
    swift_beginAccess();
    v30 = (v87 + 16);
    v31 = (v87 + 8);
    v32 = (v90 + 8);
    v91 = _swiftEmptyArrayStorage;
    v33 = v93;
    do
    {
      sub_1002D63B0(v29, &v100);
      v34 = v101;
      v35 = v102;
      sub_10002CDC0(&v100, v101);
      v36 = v94;
      (*(v35 + 8))(v34, v35);
      v37 = v95;
      v38 = v96;
      (*v30)(v95, &v92[v97], v96);
      sub_10062F040(v37, v33);
      (*v31)(v37, v38);
      v39 = *v32;
      v40 = v98;
      (*v32)(v36, v98);
      v41 = NWEndpoint.nw.getter();
      v39(v33, v40);
      sub_10000C60C(&v100);
      if (v41)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v91 = v103;
      }

      v29 += 48;
      --v28;
    }

    while (v28);

    v1 = v97;
  }

  else
  {

    v91 = _swiftEmptyArrayStorage;
  }

  v42 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_receivingDisplayables;
  swift_beginAccess();
  v94 = v42;
  v12 = *(v1 + v42);
  v95 = _swiftEmptyArrayStorage;
  v103 = _swiftEmptyArrayStorage;
  v43 = 1 << *(v12 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v12 + 64);
  v46 = (v43 + 63) >> 6;
  v96 = v90 + 16;
  swift_bridgeObjectRetain_n();
  v47 = 0;
  if (!v45)
  {
    goto LABEL_37;
  }

  do
  {
LABEL_35:
    while (1)
    {
      v48 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v49 = v90;
      v50 = v89;
      v51 = v98;
      (*(v90 + 16))(v89, *(v12 + 56) + *(v90 + 72) * (v48 | (v47 << 6)), v98);
      v52 = NWEndpoint.nw.getter();
      (*(v49 + 8))(v50, v51);
      if (v52)
      {
        break;
      }

      if (!v45)
      {
        goto LABEL_37;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v95 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v95 = v103;
  }

  while (v45);
LABEL_37:
  while (1)
  {
    v53 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v53 >= v46)
    {

      v103 = v91;
      v54 = v95;

      sub_100403554(v55);
      v12 = v103;
      if (v54 >> 62)
      {
        goto LABEL_62;
      }

      v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_47;
    }

    v45 = *(v12 + 64 + 8 * v53);
    ++v47;
    if (v45)
    {
      v47 = v53;
      goto LABEL_35;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  v56 = _CocoaArrayWrapper.endIndex.getter();
LABEL_47:
  v57 = v97;

  if (v56)
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_10000C4AC(v58, qword_10097F240);
    v59 = v57;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v103 = v63;
      *v62 = 136315138;
      type metadata accessor for SFAirDrop.TransferIdentifier();
      sub_100005430(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);

      v57 = v97;
      v64 = Dictionary.Values.description.getter();
      v66 = v65;

      v67 = sub_10000C4E4(v64, v66, &v103);

      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v60, v61, "Additional receive display endpoints %s", v62, 0xCu);
      sub_10000C60C(v63);
    }
  }

  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_10000C4AC(v68, qword_10097F240);
  v69 = v57;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v103 = v73;
    *v72 = 136315138;

    sub_10028088C(&unk_10097F340, &unk_1008050C0);
    v74 = Dictionary.description.getter();
    v76 = v75;

    v77 = sub_10000C4E4(v74, v76, &v103);

    *(v72 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v70, v71, "All unfiltered endpoints: %s", v72, 0xCu);
    sub_10000C60C(v73);
  }

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v103 = v81;
    *v80 = 136315138;
    sub_10028088C(&qword_10097C690, &qword_1008012B8);
    v82 = Array.description.getter();
    v84 = sub_10000C4E4(v82, v83, &v103);

    *(v80 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v78, v79, "Returning validated endpoints: %s", v80, 0xCu);
    sub_10000C60C(v81);
  }

  return v12;
}

uint64_t sub_100487690(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v33 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v33);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v33 - v18;
  sub_10049779C(a1, &v33 - v18, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v23 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v23 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    v23 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
LABEL_10:
    sub_10049786C(v19, v23);
    v22 = 1;
    goto LABEL_11;
  }

  sub_100497804(v19, v13, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  if ((sub_10032C7CC() & 0x4000) != 0 || (sub_10032C7CC() & 0x2000) != 0)
  {
    sub_10049786C(v13, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    v22 = 0;
  }

  else
  {
    v21 = sub_10032C7CC();
    sub_10049786C(v13, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    v22 = (*&v21 & 0x20000) == 0;
  }

LABEL_11:
  sub_10049779C(a1, v17, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      v31 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      v32 = v17;
LABEL_25:
      sub_10049786C(v32, v31);
      return v22;
    }

    sub_100497804(v17, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    v27 = *&v4[*(v33 + 28) + 8];

    sub_10049786C(v4, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    if (!v27)
    {
      return v22;
    }

LABEL_20:
    v29 = *(v34 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus);
    v30 = String._bridgeToObjectiveC()();

    v22 = [v29 contactWithContactIdentifier:v30];

    if (v22)
    {

      return 1;
    }

    return v22;
  }

  if (v24)
  {
    sub_100497804(v17, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v28 = *&v7[*(v5 + 44) + 8];

    sub_10049786C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (!v28)
    {
      return v22;
    }

    goto LABEL_20;
  }

  sub_100497804(v17, v11, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    contact_id = nw_endpoint_get_contact_id();
    swift_unknownObjectRelease();
    if (contact_id)
    {
      String.init(cString:)();
      sub_10049786C(v11, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      goto LABEL_20;
    }

    v31 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v32 = v11;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

BOOL sub_100487B58(uint64_t a1, char a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10049779C(a1, v6, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10049786C(v6, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      return 0;
    }

    else
    {
      sub_10049786C(v6, type metadata accessor for SDAirDropDiscoveredEndpoint);
      return a2 == 2;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v8 = a2 == 1;
      v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      v8 = a2 == 0;
      v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

    sub_10049786C(v6, v9);
  }

  return v8;
}

uint64_t sub_100487CBC(uint64_t a1, char a2)
{
  *(v3 + 704) = v2;
  *(v3 + 800) = a2;
  *(v3 + 696) = a1;
  *(v3 + 712) = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  *(v3 + 720) = swift_task_alloc();
  *(v3 + 728) = swift_task_alloc();
  *(v3 + 736) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  *(v3 + 744) = static AirDropActor.shared;

  return _swift_task_switch(sub_100487DAC, v4, 0);
}

id sub_100487DAC()
{
  v87 = v0;
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 736);
  v2 = *(v0 + 696);
  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_10097F240);
  sub_10049779C(v2, v1, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 736);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v84 = v9;
    *v8 = 136315138;
    v10 = sub_10032DA30();
    v12 = v11;
    sub_10049786C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v13 = sub_10000C4E4(v10, v12, &v84);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Updating discovered endpoint: %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {

    sub_10049786C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0;
  v14 = sub_10032EA74();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = *(v0 + 704);
    v19 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v20 = *(v18 + v19);
    if (!*(v20 + 16) || (v21 = sub_100012854(v16, v17), (v22 & 1) == 0))
    {
      swift_endAccess();

      goto LABEL_14;
    }

    v23 = *(v0 + 704);
    sub_1002D63B0(*(v20 + 56) + 48 * v21, v0 + 304);
    sub_1002D6398((v0 + 304), (v0 + 256));
    swift_endAccess();
    v24 = [*(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus) meCard];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 identifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (v16 == v27 && v17 == v29)
      {

LABEL_48:
        sub_10000C60C((v0 + 256));
        goto LABEL_14;
      }

      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v81)
      {
        goto LABEL_48;
      }
    }

    else
    {
    }

    v39 = *(v0 + 280);
    v40 = *(v0 + 288);
    sub_10002CDC0((v0 + 256), v39);
    v83 = (*(v40 + 48) + **(v40 + 48));
    v41 = swift_task_alloc();
    *(v0 + 752) = v41;
    *v41 = v0;
    v42 = sub_100488860;
    goto LABEL_50;
  }

LABEL_14:
  v30 = sub_10032E82C();
  if (v31)
  {
    v32 = v31;
    v33 = v30;
    v34 = *(v0 + 704);
    v35 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v36 = *(v34 + v35);
    if (*(v36 + 16))
    {
      v37 = sub_100012854(v33, v32);
      if (v38)
      {
        sub_1002D63B0(*(v36 + 56) + 48 * v37, v0 + 208);
        sub_1002D6398((v0 + 208), (v0 + 160));
        swift_endAccess();

        v39 = *(v0 + 184);
        v40 = *(v0 + 192);
        sub_10002CDC0((v0 + 160), v39);
        v83 = (*(v40 + 48) + **(v40 + 48));
        v41 = swift_task_alloc();
        *(v0 + 768) = v41;
        *v41 = v0;
        v42 = sub_100488C68;
LABEL_50:
        v41[1] = v42;
        v82 = *(v0 + 696);

        return v83(v82, v39, v40);
      }
    }

    swift_endAccess();
  }

  sub_10049779C(*(v0 + 696), *(v0 + 728), type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = *(v0 + 728);
  if (EnumCaseMultiPayload == 3)
  {
    v45 = *v44;
    *(v0 + 784) = *v44;
    result = [v45 identifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v47 = result;
    v48 = *(v0 + 704);
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v53 = *(v48 + v52);
    if (*(v53 + 16))
    {
      v54 = sub_100012854(v49, v51);
      v56 = v55;

      if (v56)
      {
        sub_1002D63B0(*(v53 + 56) + 48 * v54, v0 + 112);
        sub_1002D6398((v0 + 112), (v0 + 64));
        swift_endAccess();
        v39 = *(v0 + 88);
        v40 = *(v0 + 96);
        sub_10002CDC0((v0 + 64), v39);
        v83 = (*(v40 + 48) + **(v40 + 48));
        v41 = swift_task_alloc();
        *(v0 + 792) = v41;
        *v41 = v0;
        v42 = sub_10048907C;
        goto LABEL_50;
      }
    }

    else
    {
    }

    swift_endAccess();
  }

  else
  {
    sub_10049786C(v44, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v57 = *(v0 + 704);
  v58 = sub_10032B99C();
  v60 = v59;
  v61 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v62 = *(v57 + v61);
  if (*(v62 + 16))
  {
    v63 = sub_100012854(v58, v60);
    v65 = v64;

    if (v65)
    {
      sub_1002D63B0(*(v62 + 56) + 48 * v63, v0 + 16);
      goto LABEL_32;
    }
  }

  else
  {
  }

  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
LABEL_32:
  swift_endAccess();
  v66 = *(v0 + 40);
  sub_100005508(v0 + 16, &qword_100976180, &unk_1007F9300);
  if (v66)
  {
    v67 = sub_10032B99C();
    v69 = v68;
    sub_10032E398();
    if (!v70)
    {
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Discovered endpoint no longer has a device name, removing", v78, 2u);
      }

      v85 = 0u;
      v86 = 0u;
      v84 = 0u;
      swift_beginAccess();
      sub_1002AFCBC(&v84, v67, v69);
      swift_endAccess();
      goto LABEL_41;
    }

    v71 = *(v0 + 720);
    v72 = *(v0 + 696);

    sub_10049779C(v72, v71, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v73 = type metadata accessor for SDAirDropDiscoveredDevice(0);
    swift_allocObject();
    v74 = sub_1004A4FAC(v71);
    *(&v85 + 1) = v73;
    v75 = sub_100005430(&qword_10097F360, type metadata accessor for SDAirDropDiscoveredDevice, &unk_100805540);
    *&v86 = v75;
    *(&v86 + 1) = &off_1008E3588;
    *&v84 = v74;
    swift_beginAccess();

    sub_1002AFCBC(&v84, v67, v69);
    swift_endAccess();
    sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
    *(v0 + 352) = v74;
    *(v0 + 376) = v73;
    *(v0 + 384) = v75;
  }

  if (*(v0 + 800) == 1)
  {
    sub_10000FF90(v0 + 352, v0 + 432, &qword_100977DC8, &unk_1008091C0);
    if (!*(v0 + 456))
    {
      sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
      v79 = v0 + 432;
      goto LABEL_42;
    }

    sub_1000121F8((v0 + 432), v0 + 392);
    sub_10048CC80((v0 + 392));
    sub_10000C60C((v0 + 392));
  }

LABEL_41:
  v79 = v0 + 352;
LABEL_42:
  sub_100005508(v79, &qword_100977DC8, &unk_1008091C0);

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_100488860()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 760) = v3;
  *v3 = v2;
  v3[1] = sub_1004889BC;
  v4 = *(v1 + 696);

  return sub_10048CA0C(v1 + 256, v4);
}

uint64_t sub_1004889BC()
{
  v1 = *(*v0 + 744);

  return _swift_task_switch(sub_100488ACC, v1, 0);
}

uint64_t sub_100488ACC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = sub_10002CDC0((v0 + 256), v1);
  *(v0 + 536) = v1;
  *(v0 + 544) = v2;
  v4 = sub_10002F604((v0 + 512));
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
  v5 = *(v0 + 528);
  *(v0 + 352) = *(v0 + 512);
  *(v0 + 368) = v5;
  *(v0 + 384) = *(v0 + 544);
  sub_10000C60C((v0 + 256));
  if (*(v0 + 800) != 1)
  {
    goto LABEL_4;
  }

  sub_10000FF90(v0 + 352, v0 + 432, &qword_100977DC8, &unk_1008091C0);
  if (*(v0 + 456))
  {
    sub_1000121F8((v0 + 432), v0 + 392);
    sub_10048CC80((v0 + 392));
    sub_10000C60C((v0 + 392));
LABEL_4:
    v6 = v0 + 352;
    goto LABEL_5;
  }

  sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
  v6 = v0 + 432;
LABEL_5:
  sub_100005508(v6, &qword_100977DC8, &unk_1008091C0);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100488C68()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 776) = v3;
  *v3 = v2;
  v3[1] = sub_100488DC4;
  v4 = *(v1 + 696);

  return sub_10048CA0C(v1 + 160, v4);
}

uint64_t sub_100488DC4()
{
  v1 = *(*v0 + 744);

  return _swift_task_switch(sub_100488ED4, v1, 0);
}

uint64_t sub_100488ED4()
{
  v8 = *(v0 + 184);
  v1 = *(v0 + 184);
  v2 = sub_10002CDC0((v0 + 160), v1);
  *(v0 + 496) = v8;
  v3 = sub_10002F604((v0 + 472));
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
  v4 = *(v0 + 488);
  *(v0 + 352) = *(v0 + 472);
  *(v0 + 368) = v4;
  *(v0 + 384) = *(v0 + 504);
  sub_10000C60C((v0 + 160));
  if (*(v0 + 800) != 1)
  {
    goto LABEL_4;
  }

  sub_10000FF90(v0 + 352, v0 + 432, &qword_100977DC8, &unk_1008091C0);
  if (*(v0 + 456))
  {
    sub_1000121F8((v0 + 432), v0 + 392);
    sub_10048CC80((v0 + 392));
    sub_10000C60C((v0 + 392));
LABEL_4:
    v5 = v0 + 352;
    goto LABEL_5;
  }

  sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
  v5 = v0 + 432;
LABEL_5:
  sub_100005508(v5, &qword_100977DC8, &unk_1008091C0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10048907C()
{
  v1 = *(*v0 + 744);

  return _swift_task_switch(sub_10048918C, v1, 0);
}

uint64_t sub_10048918C()
{
  sub_10000C60C((v0 + 64));
  if (*(v0 + 800) != 1)
  {
    goto LABEL_4;
  }

  sub_10000FF90(v0 + 352, v0 + 432, &qword_100977DC8, &unk_1008091C0);
  if (*(v0 + 456))
  {
    sub_1000121F8((v0 + 432), v0 + 392);
    sub_10048CC80((v0 + 392));
    sub_10000C60C((v0 + 392));
LABEL_4:
    v1 = v0 + 352;
    goto LABEL_5;
  }

  sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
  v1 = v0 + 432;
LABEL_5:
  sub_100005508(v1, &qword_100977DC8, &unk_1008091C0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004892AC(uint64_t a1)
{
  v2[87] = v1;
  v2[86] = a1;
  v3 = type metadata accessor for UUID();
  v2[88] = v3;
  v2[89] = *(v3 - 8);
  v2[90] = swift_task_alloc();
  v2[91] = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[94] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004893E8, v4, 0);
}

id sub_1004893E8()
{
  v86 = v0;
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 744);
  v2 = *(v0 + 688);
  v3 = type metadata accessor for Logger();
  *(v0 + 760) = sub_10000C4AC(v3, qword_10097F240);
  sub_10049779C(v2, v1, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 744);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v85[0] = v9;
    *v8 = 136315138;
    v10 = sub_10032DA30();
    v12 = v11;
    sub_10049786C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v13 = sub_10000C4E4(v10, v12, v85);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing discovered endpoint: %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {

    sub_10049786C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v14 = sub_10032EA74();
  *(v0 + 768) = v14;
  *(v0 + 776) = v15;
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = *(v0 + 696);
    v19 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    *(v0 + 784) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v20 = *(v18 + v19);
    if (!*(v20 + 16) || (v21 = sub_100012854(v16, v17), (v22 & 1) == 0))
    {
      swift_endAccess();

      goto LABEL_14;
    }

    v23 = *(v0 + 696);
    sub_1002D63B0(*(v20 + 56) + 48 * v21, v0 + 352);
    sub_1002D6398((v0 + 352), (v0 + 304));
    swift_endAccess();
    v24 = [*(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus) meCard];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 identifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (v16 == v27 && v17 == v29)
      {

LABEL_41:

        sub_10000C60C((v0 + 304));
        goto LABEL_14;
      }

      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v80)
      {
        goto LABEL_41;
      }
    }

    v39 = *(v0 + 328);
    v40 = *(v0 + 336);
    sub_10002CDC0((v0 + 304), v39);
    v83 = (*(v40 + 56) + **(v40 + 56));
    v41 = swift_task_alloc();
    *(v0 + 792) = v41;
    *v41 = v0;
    v42 = sub_100489D8C;
    goto LABEL_43;
  }

LABEL_14:
  v30 = sub_10032E82C();
  *(v0 + 816) = v30;
  *(v0 + 824) = v31;
  if (v31)
  {
    v32 = v31;
    v33 = v30;
    v34 = *(v0 + 696);
    v35 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    *(v0 + 832) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v36 = *(v34 + v35);
    if (*(v36 + 16))
    {
      v37 = sub_100012854(v33, v32);
      if (v38)
      {
        sub_1002D63B0(*(v36 + 56) + 48 * v37, v0 + 256);
        sub_1002D6398((v0 + 256), (v0 + 208));
        swift_endAccess();
        v39 = *(v0 + 232);
        v40 = *(v0 + 240);
        sub_10002CDC0((v0 + 208), v39);
        v83 = (*(v40 + 56) + **(v40 + 56));
        v41 = swift_task_alloc();
        *(v0 + 840) = v41;
        *v41 = v0;
        v42 = sub_10048A2FC;
LABEL_43:
        v41[1] = v42;
        v81 = *(v0 + 688);

        return v83(v81, v39, v40);
      }
    }

    swift_endAccess();
  }

  sub_10049779C(*(v0 + 688), *(v0 + 736), type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = *(v0 + 736);
  if (EnumCaseMultiPayload == 3)
  {
    v45 = *v44;
    *(v0 + 864) = *v44;
    result = [v45 identifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v47 = result;
    v48 = *(v0 + 696);
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    *(v0 + 872) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v53 = *(v48 + v52);
    if (*(v53 + 16))
    {
      v54 = sub_100012854(v49, v51);
      v56 = v55;

      if (v56)
      {
        sub_1002D63B0(*(v53 + 56) + 48 * v54, v0 + 160);
        sub_1002D6398((v0 + 160), (v0 + 112));
        swift_endAccess();
        v39 = *(v0 + 136);
        v40 = *(v0 + 144);
        sub_10002CDC0((v0 + 112), v39);
        v83 = (*(v40 + 56) + **(v40 + 56));
        v41 = swift_task_alloc();
        *(v0 + 880) = v41;
        *v41 = v0;
        v42 = sub_10048A86C;
        goto LABEL_43;
      }
    }

    else
    {
    }

    swift_endAccess();
  }

  else
  {
    sub_10049786C(v44, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v57 = *(v0 + 696);
  v58 = sub_10032B99C();
  v60 = v59;
  v61 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v62 = *(v57 + v61);
  if (*(v62 + 16))
  {
    v63 = sub_100012854(v58, v60);
    v65 = v64;

    if (v65)
    {
      v66 = *(v0 + 720);
      v82 = *(v0 + 712);
      v84 = *(v0 + 704);
      v67 = *(v0 + 696);
      sub_1002D63B0(*(v62 + 56) + 48 * v63, v0 + 64);
      sub_1002D6398((v0 + 64), (v0 + 16));
      swift_endAccess();
      v68 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
      swift_beginAccess();
      v69 = *(v67 + v68);
      v71 = *(v0 + 40);
      v70 = *(v0 + 48);
      sub_10002CDC0((v0 + 16), v71);
      v72 = *(v70 + 32);

      v72(v71, v70);
      LOBYTE(v68) = sub_100569018(v66, v69);

      (*(v82 + 8))(v66, v84);
      if (v68)
      {
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&_mh_execute_header, v73, v74, "Skipping remove from allDiscovered endpoints because it's in a transfer", v75, 2u);
        }
      }

      else
      {
        v76 = sub_10032B99C();
        v78 = v77;
        memset(v85, 0, sizeof(v85));
        swift_beginAccess();
        sub_1002AFCBC(v85, v76, v78);
        swift_endAccess();
      }

      sub_10000C60C((v0 + 16));
      goto LABEL_37;
    }
  }

  else
  {
  }

  swift_endAccess();
LABEL_37:

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_100489D8C()
{
  v1 = *(*v0 + 752);

  return _swift_task_switch(sub_100489E9C, v1, 0);
}

uint64_t sub_100489E9C()
{
  v1 = v0[41];
  v2 = v0[42];
  sub_10002CDC0(v0 + 38, v1);
  v5 = (*(v2 + 40) + **(v2 + 40));
  v3 = swift_task_alloc();
  v0[100] = v3;
  *v3 = v0;
  v3[1] = sub_100489FC0;

  return v5(v1, v2);
}

uint64_t sub_100489FC0(uint64_t a1)
{
  v2 = *(*v1 + 752);
  *(*v1 + 808) = a1;

  return _swift_task_switch(sub_10048A0D8, v2, 0);
}

uint64_t sub_10048A0D8()
{
  v19 = v0;
  v1 = *(v0[101] + 16);

  if (v1)
  {
  }

  else
  {
    v2 = v0[90];
    v3 = v0[89];
    v4 = v0[88];
    v5 = v0[87];
    v6 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
    swift_beginAccess();
    v7 = *(v5 + v6);
    v8 = v0[41];
    v9 = v0[42];
    sub_10002CDC0(v0 + 38, v8);
    v10 = *(v9 + 32);

    v10(v8, v9);
    LOBYTE(v5) = sub_100569018(v2, v7);

    (*(v3 + 8))(v2, v4);
    if (v5)
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Skipping remove from allDiscovered endpoints because it's in a transfer", v13, 2u);
      }
    }

    else
    {
      v14 = v0[97];
      v15 = v0[96];
      memset(v18, 0, sizeof(v18));
      swift_beginAccess();
      sub_1002AFCBC(v18, v15, v14);
      swift_endAccess();
    }
  }

  sub_10000C60C(v0 + 38);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10048A2FC()
{
  v1 = *(*v0 + 752);

  return _swift_task_switch(sub_10048A40C, v1, 0);
}

uint64_t sub_10048A40C()
{
  v1 = v0[29];
  v2 = v0[30];
  sub_10002CDC0(v0 + 26, v1);
  v5 = (*(v2 + 40) + **(v2 + 40));
  v3 = swift_task_alloc();
  v0[106] = v3;
  *v3 = v0;
  v3[1] = sub_10048A530;

  return v5(v1, v2);
}

uint64_t sub_10048A530(uint64_t a1)
{
  v2 = *(*v1 + 752);
  *(*v1 + 856) = a1;

  return _swift_task_switch(sub_10048A648, v2, 0);
}

uint64_t sub_10048A648()
{
  v19 = v0;
  v1 = *(v0[107] + 16);

  if (v1)
  {
  }

  else
  {
    v2 = v0[90];
    v3 = v0[89];
    v4 = v0[88];
    v5 = v0[87];
    v6 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
    swift_beginAccess();
    v7 = *(v5 + v6);
    v8 = v0[29];
    v9 = v0[30];
    sub_10002CDC0(v0 + 26, v8);
    v10 = *(v9 + 32);

    v10(v8, v9);
    LOBYTE(v5) = sub_100569018(v2, v7);

    (*(v3 + 8))(v2, v4);
    if (v5)
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Skipping remove from allDiscovered endpoints because it's in a transfer", v13, 2u);
      }
    }

    else
    {
      v14 = v0[103];
      v15 = v0[102];
      memset(v18, 0, sizeof(v18));
      swift_beginAccess();
      sub_1002AFCBC(v18, v15, v14);
      swift_endAccess();
    }
  }

  sub_10000C60C(v0 + 26);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10048A86C()
{
  v1 = *(*v0 + 752);

  return _swift_task_switch(sub_10048A97C, v1, 0);
}

uint64_t sub_10048A97C()
{
  v1 = v0[17];
  v2 = v0[18];
  sub_10002CDC0(v0 + 14, v1);
  v5 = (*(v2 + 40) + **(v2 + 40));
  v3 = swift_task_alloc();
  v0[111] = v3;
  *v3 = v0;
  v3[1] = sub_10048AAA0;

  return v5(v1, v2);
}

uint64_t sub_10048AAA0(uint64_t a1)
{
  v2 = *(*v1 + 752);
  *(*v1 + 896) = a1;

  return _swift_task_switch(sub_10048ABB8, v2, 0);
}

id sub_10048ABB8()
{
  v24 = v0;
  v1 = *(*(v0 + 896) + 16);

  if (v1)
  {
  }

  else
  {
    v2 = *(v0 + 720);
    v3 = *(v0 + 712);
    v4 = *(v0 + 704);
    v5 = *(v0 + 696);
    v6 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
    swift_beginAccess();
    v7 = *(v5 + v6);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    sub_10002CDC0((v0 + 112), v8);
    v10 = *(v9 + 32);

    v10(v8, v9);
    LOBYTE(v5) = sub_100569018(v2, v7);

    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 864);
      if (v13)
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Skipping remove from allDiscovered endpoints because it's in a transfer", v15, 2u);
      }
    }

    else
    {
      result = [*(v0 + 864) identifier];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v17 = result;
      v18 = *(v0 + 864);
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      memset(v23, 0, sizeof(v23));
      swift_beginAccess();
      sub_1002AFCBC(v23, v19, v21);
      swift_endAccess();
    }
  }

  sub_10000C60C((v0 + 112));

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10048AE10(uint64_t a1, char a2)
{
  *(v3 + 1008) = v2;
  *(v3 + 1168) = a2;
  *(v3 + 1000) = a1;
  *(v3 + 1016) = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  *(v3 + 1024) = swift_task_alloc();
  *(v3 + 1032) = swift_task_alloc();
  *(v3 + 1040) = swift_task_alloc();
  *(v3 + 1048) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  *(v3 + 1056) = static AirDropActor.shared;

  return _swift_task_switch(sub_10048AF0C, v4, 0);
}

id sub_10048AF0C()
{
  v108 = v0;
  v1 = [*(*(v0 + 1008) + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_nearbyAgent) idSelfIdentity];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 idsDeviceID];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v7 = sub_10032E82C();
      if (v8)
      {
        if (v4 == v7 && v8 == v6)
        {

LABEL_44:
          if (qword_1009738C0 != -1)
          {
            swift_once();
          }

          v72 = *(v0 + 1048);
          v73 = *(v0 + 1000);
          v74 = type metadata accessor for Logger();
          sub_10000C4AC(v74, qword_10097F240);
          sub_10049779C(v73, v72, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.default.getter();
          v77 = os_log_type_enabled(v75, v76);
          v78 = *(v0 + 1048);
          if (v77)
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v107[0] = v80;
            *v79 = 136315138;
            v81 = sub_10032DA30();
            v83 = v82;
            sub_10049786C(v78, type metadata accessor for SDAirDropDiscoveredEndpoint);
            v84 = sub_10000C4E4(v81, v83, v107);

            *(v79 + 4) = v84;
            _os_log_impl(&_mh_execute_header, v75, v76, "Discovered endpoint is current device, ignoring %s", v79, 0xCu);
            sub_10000C60C(v80);
          }

          else
          {

            sub_10049786C(v78, type metadata accessor for SDAirDropDiscoveredEndpoint);
          }

          goto LABEL_58;
        }

        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v10)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }
    }
  }

  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 1040);
  v12 = *(v0 + 1000);
  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_10097F240);
  sub_10049779C(v12, v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 1040);
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v107[0] = v19;
    *v18 = 136315138;
    v20 = sub_10032DA30();
    v22 = v21;
    sub_10049786C(v17, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v23 = sub_10000C4E4(v20, v22, v107);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Adding discovered endpoint: %s", v18, 0xCu);
    sub_10000C60C(v19);
  }

  else
  {

    sub_10049786C(v17, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  *(v0 + 632) = 0u;
  *(v0 + 648) = 0u;
  *(v0 + 664) = 0;
  v24 = sub_10032EA74();
  *(v0 + 1064) = v24;
  *(v0 + 1072) = v25;
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    v28 = [*(*(v0 + 1008) + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus) meCard];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 identifier];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if (v26 == v31 && v27 == v33)
      {

LABEL_22:

        goto LABEL_23;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_22;
      }
    }

    v44 = *(v0 + 1008);
    v45 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    *(v0 + 1080) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v46 = *(v44 + v45);
    if (*(v46 + 16) && (v47 = sub_100012854(v26, v27), (v48 & 1) != 0))
    {
      sub_1002D63B0(*(v46 + 56) + 48 * v47, v0 + 160);
    }

    else
    {
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 160) = 0u;
    }

    v64 = *(v0 + 192);
    *(v0 + 128) = *(v0 + 176);
    *(v0 + 144) = v64;
    *(v0 + 112) = *(v0 + 160);
    if (*(v0 + 136))
    {
      sub_1002D6398((v0 + 112), (v0 + 256));
    }

    else
    {
      v95 = type metadata accessor for SDAirDropDiscoveredPerson(0);
      swift_allocObject();

      v96 = sub_100406A2C(v26, v27);
      *(v0 + 280) = v95;
      *(v0 + 288) = sub_100005430(&unk_10097F370, type metadata accessor for SDAirDropDiscoveredPerson, &unk_100801350);
      *(v0 + 296) = &off_1008DFBD0;
      *(v0 + 256) = v96;
      sub_100005508(v0 + 112, &qword_100976180, &unk_1007F9300);
    }

    swift_endAccess();
    v68 = *(v0 + 280);
    v69 = *(v0 + 288);
    sub_10002CDC0((v0 + 256), v68);
    v106 = (*(v69 + 48) + **(v69 + 48));
    v70 = swift_task_alloc();
    *(v0 + 1088) = v70;
    *v70 = v0;
    v71 = sub_10048BD24;
    goto LABEL_68;
  }

LABEL_23:
  v35 = sub_10032E82C();
  *(v0 + 1104) = v35;
  *(v0 + 1112) = v36;
  if (v36)
  {
    v37 = v36;
    v38 = v35;
    v39 = *(v0 + 1008);
    v40 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    *(v0 + 1120) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v41 = *(v39 + v40);
    if (*(v41 + 16) && (v42 = sub_100012854(v38, v37), (v43 & 1) != 0))
    {
      sub_1002D63B0(*(v41 + 56) + 48 * v42, v0 + 16);
    }

    else
    {
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 16) = 0u;
    }

    v49 = *(v0 + 48);
    *(v0 + 512) = *(v0 + 32);
    *(v0 + 528) = v49;
    *(v0 + 496) = *(v0 + 16);
    if (*(v0 + 520))
    {
      sub_1002D6398((v0 + 496), (v0 + 544));
    }

    else
    {
      v65 = *(v0 + 1032);
      sub_10049779C(*(v0 + 1000), v65, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v66 = type metadata accessor for SDAirDropDiscoveredDevice(0);
      swift_allocObject();
      v67 = sub_1004A4FAC(v65);
      *(v0 + 568) = v66;
      *(v0 + 576) = sub_100005430(&qword_10097F360, type metadata accessor for SDAirDropDiscoveredDevice, &unk_100805540);
      *(v0 + 584) = &off_1008E3588;
      *(v0 + 544) = v67;
      sub_100005508(v0 + 496, &qword_100976180, &unk_1007F9300);
    }

    swift_endAccess();
    v68 = *(v0 + 568);
    v69 = *(v0 + 576);
    sub_10002CDC0((v0 + 544), v68);
    v106 = (*(v69 + 48) + **(v69 + 48));
    v70 = swift_task_alloc();
    *(v0 + 1128) = v70;
    *v70 = v0;
    v71 = sub_10048C1E0;
    goto LABEL_68;
  }

  sub_10049779C(*(v0 + 1000), *(v0 + 1024), type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v51 = *(v0 + 1024);
  if (EnumCaseMultiPayload != 3)
  {
    sub_10049786C(v51, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10032E398();
    if (v85)
    {
      v86 = *(v0 + 1032);
      v87 = *(v0 + 1000);

      v88 = sub_10032B99C();
      v90 = v89;
      sub_10049779C(v87, v86, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v91 = type metadata accessor for SDAirDropDiscoveredDevice(0);
      swift_allocObject();
      v92 = sub_1004A4FAC(v86);
      v107[3] = v91;
      v93 = sub_100005430(&qword_10097F360, type metadata accessor for SDAirDropDiscoveredDevice, &unk_100805540);
      v107[4] = v93;
      v107[5] = &off_1008E3588;
      v107[0] = v92;
      swift_beginAccess();

      sub_1002AFCBC(v107, v88, v90);
      swift_endAccess();
      sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
      *(v0 + 632) = v92;
      *(v0 + 656) = v91;
      *(v0 + 664) = v93;
    }

    if (*(v0 + 1168) == 1)
    {
      sub_10000FF90(v0 + 632, v0 + 752, &qword_100977DC8, &unk_1008091C0);
      if (!*(v0 + 776))
      {
        sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
        v94 = v0 + 752;
        goto LABEL_54;
      }

      sub_1000121F8((v0 + 752), v0 + 792);
      sub_10048CC80((v0 + 792));
      sub_10000C60C((v0 + 792));
    }

    v94 = v0 + 632;
LABEL_54:
    sub_100005508(v94, &qword_100977DC8, &unk_1008091C0);
LABEL_58:

    v97 = *(v0 + 8);

    return v97();
  }

  v52 = *v51;
  *(v0 + 1144) = *v51;
  result = [v52 identifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_73;
  }

  v54 = result;
  v55 = *(v0 + 1008);
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v59 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  *(v0 + 1152) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v60 = *(v55 + v59);
  if (*(v60 + 16))
  {
    v61 = sub_100012854(v56, v58);
    v63 = v62;

    if (v63)
    {
      sub_1002D63B0(*(v60 + 56) + 48 * v61, v0 + 304);
      goto LABEL_63;
    }
  }

  else
  {
  }

  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 304) = 0u;
LABEL_63:
  v98 = *(v0 + 336);
  *(v0 + 368) = *(v0 + 320);
  *(v0 + 384) = v98;
  *(v0 + 352) = *(v0 + 304);
  if (!*(v0 + 376))
  {
    result = [v52 identifier];
    if (result)
    {
      v99 = result;
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = v101;

      v103 = type metadata accessor for SDAirDropDiscoveredClassroom(0);
      swift_allocObject();
      v104 = sub_10055A6CC(v100, v102);
      *(v0 + 232) = v103;
      *(v0 + 240) = sub_100005430(&qword_10097F368, type metadata accessor for SDAirDropDiscoveredClassroom, &unk_100809AD0);
      *(v0 + 248) = &off_1008E6F58;
      *(v0 + 208) = v104;
      sub_100005508(v0 + 352, &qword_100976180, &unk_1007F9300);
      goto LABEL_67;
    }

LABEL_73:
    __break(1u);
    return result;
  }

  sub_1002D6398((v0 + 352), (v0 + 208));
LABEL_67:
  swift_endAccess();
  v68 = *(v0 + 232);
  v69 = *(v0 + 240);
  sub_10002CDC0((v0 + 208), v68);
  v106 = (*(v69 + 48) + **(v69 + 48));
  v70 = swift_task_alloc();
  *(v0 + 1160) = v70;
  *v70 = v0;
  v71 = sub_10048C6B4;
LABEL_68:
  v70[1] = v71;
  v105 = *(v0 + 1000);

  return v106(v105, v68, v69);
}

uint64_t sub_10048BD24()
{
  v1 = *(*v0 + 1056);

  return _swift_task_switch(sub_10048BE34, v1, 0);
}

uint64_t sub_10048BE34()
{
  v1 = v0[134];
  v2 = v0[133];
  sub_1002D63B0((v0 + 32), (v0 + 8));
  swift_beginAccess();
  sub_1002AFCBC((v0 + 8), v2, v1);
  swift_endAccess();
  v3 = swift_task_alloc();
  v0[137] = v3;
  *v3 = v0;
  v3[1] = sub_10048BF24;
  v4 = v0[125];

  return sub_10048CA0C((v0 + 32), v4);
}

uint64_t sub_10048BF24()
{
  v1 = *(*v0 + 1056);

  return _swift_task_switch(sub_10048C034, v1, 0);
}

uint64_t sub_10048C034()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = sub_10002CDC0((v0 + 256), v1);
  *(v0 + 616) = v1;
  *(v0 + 624) = v2;
  v4 = sub_10002F604((v0 + 592));
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
  v5 = *(v0 + 608);
  *(v0 + 632) = *(v0 + 592);
  *(v0 + 648) = v5;
  *(v0 + 664) = *(v0 + 624);
  sub_10000C60C((v0 + 256));
  if (*(v0 + 1168) != 1)
  {
    goto LABEL_4;
  }

  sub_10000FF90(v0 + 632, v0 + 752, &qword_100977DC8, &unk_1008091C0);
  if (*(v0 + 776))
  {
    sub_1000121F8((v0 + 752), v0 + 792);
    sub_10048CC80((v0 + 792));
    sub_10000C60C((v0 + 792));
LABEL_4:
    v6 = v0 + 632;
    goto LABEL_5;
  }

  sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
  v6 = v0 + 752;
LABEL_5:
  sub_100005508(v6, &qword_100977DC8, &unk_1008091C0);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10048C1E0()
{
  v1 = *(*v0 + 1056);

  return _swift_task_switch(sub_10048C2F0, v1, 0);
}

uint64_t sub_10048C2F0()
{
  v1 = v0[139];
  v2 = v0[138];
  sub_1002D63B0((v0 + 68), (v0 + 56));
  swift_beginAccess();
  sub_1002AFCBC((v0 + 56), v2, v1);
  swift_endAccess();
  v3 = swift_task_alloc();
  v0[142] = v3;
  *v3 = v0;
  v3[1] = sub_10048C3E0;
  v4 = v0[125];

  return sub_10048CA0C((v0 + 68), v4);
}

uint64_t sub_10048C3E0()
{
  v1 = *(*v0 + 1056);

  return _swift_task_switch(sub_10048C4F0, v1, 0);
}

uint64_t sub_10048C4F0()
{
  v8 = *(v0 + 568);
  v1 = *(v0 + 568);
  v2 = sub_10002CDC0((v0 + 544), v1);
  *(v0 + 736) = v8;
  v3 = sub_10002F604((v0 + 712));
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
  v4 = *(v0 + 728);
  *(v0 + 632) = *(v0 + 712);
  *(v0 + 648) = v4;
  *(v0 + 664) = *(v0 + 744);
  sub_10000C60C((v0 + 544));
  if (*(v0 + 1168) != 1)
  {
    goto LABEL_4;
  }

  sub_10000FF90(v0 + 632, v0 + 752, &qword_100977DC8, &unk_1008091C0);
  if (*(v0 + 776))
  {
    sub_1000121F8((v0 + 752), v0 + 792);
    sub_10048CC80((v0 + 792));
    sub_10000C60C((v0 + 792));
LABEL_4:
    v5 = v0 + 632;
    goto LABEL_5;
  }

  sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
  v5 = v0 + 752;
LABEL_5:
  sub_100005508(v5, &qword_100977DC8, &unk_1008091C0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10048C6B4()
{
  v1 = *(*v0 + 1056);

  return _swift_task_switch(sub_10048C7C4, v1, 0);
}

id sub_10048C7C4()
{
  result = [*(v0 + 1144) identifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = *(v0 + 1144);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_1002D63B0(v0 + 208, v0 + 400);
  swift_beginAccess();
  sub_1002AFCBC(v0 + 400, v4, v6);
  swift_endAccess();
  v13 = *(v0 + 232);
  v7 = *(v0 + 232);
  v8 = sub_10002CDC0((v0 + 208), v7);
  *(v0 + 696) = v13;
  v9 = sub_10002F604((v0 + 672));
  (*(*(v7 - 8) + 16))(v9, v8, v7);

  sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
  v10 = *(v0 + 688);
  *(v0 + 632) = *(v0 + 672);
  *(v0 + 648) = v10;
  *(v0 + 664) = *(v0 + 704);
  sub_10000C60C((v0 + 208));
  if (*(v0 + 1168) == 1)
  {
    sub_10000FF90(v0 + 632, v0 + 752, &qword_100977DC8, &unk_1008091C0);
    if (!*(v0 + 776))
    {
      sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
      v11 = v0 + 752;
      goto LABEL_6;
    }

    sub_1000121F8((v0 + 752), v0 + 792);
    sub_10048CC80((v0 + 792));
    sub_10000C60C((v0 + 792));
  }

  v11 = v0 + 632;
LABEL_6:
  sub_100005508(v11, &qword_100977DC8, &unk_1008091C0);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10048CA0C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for UUID();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_10048CB08, v5, 0);
}

uint64_t sub_10048CB08()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v2[3];
  v4 = v2[4];
  sub_10002CDC0(v2, v3);
  (*(v4 + 32))(v3, v4);
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_delegateByConnectableID;
  swift_beginAccess();
  if (*(*(v1 + v5) + 16) && (sub_10000EBD4(v0[10]), (v6 & 1) != 0))
  {
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];
    v10 = v0[6];
    swift_endAccess();
    v11 = *(v8 + 8);
    swift_unknownObjectRetain();
    v11(v7, v9);
    if (sub_10048D090(v10))
    {
      sub_1003C1A14(v0[6]);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    swift_endAccess();
    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10048CC80(void *a1)
{
  v3 = sub_10028088C(&qword_1009763B8, &qword_1007F95A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - v8;
  v10 = a1[3];
  v11 = a1[4];
  sub_10002CDC0(a1, v10);
  v12 = (*(v11 + 16))(v10, v11);
  v14 = v13;
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourDiscoveryContinuations;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (!*(v16 + 16))
  {

    return swift_endAccess();
  }

  v38 = v5;
  v17 = sub_100012854(v12, v14);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    return swift_endAccess();
  }

  (*(v7 + 16))(v9, *(v16 + 56) + *(v7 + 72) * v17, v6);
  swift_endAccess();
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_10097F240);
  sub_1002A9938(a1, v41);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40 = v36;
    *v23 = 136315138;
    sub_1002A9938(v41, v39);
    sub_10028088C(&qword_10097F358, &qword_1008050E8);
    v24 = String.init<A>(describing:)();
    v37 = v7;
    v25 = v24;
    v27 = v26;
    sub_10000C60C(v41);
    v28 = sub_10000C4E4(v25, v27, &v40);

    *(v23 + 4) = v28;
    v7 = v37;
    _os_log_impl(&_mh_execute_header, v21, v22, "Bonjour discovery completed for waiting connectable: %s", v23, 0xCu);
    sub_10000C60C(v36);
  }

  else
  {

    sub_10000C60C(v41);
  }

  v30 = v38;
  v31 = a1[3];
  v32 = a1[4];
  sub_10002CDC0(a1, v31);
  v33 = (*(v32 + 16))(v31, v32);
  v35 = v34;
  (*(v7 + 56))(v30, 1, 1, v6);
  swift_beginAccess();
  sub_1002B1B98(v30, v33, v35);
  swift_endAccess();
  sub_1002A9938(a1, v41);
  CheckedContinuation.resume(returning:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10048D090(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  sub_10049779C(a1, &v30 - v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v16 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    v28 = v16;
    v29 = v13;
    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_100497804(v13, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    v15 = sub_10032C7EC();
    sub_10049786C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if (v15)
    {
      return 1;
    }

    goto LABEL_8;
  }

  sub_100497804(v13, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  v17 = v4[*(v2 + 64)];
  sub_10049786C(v4, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  if ((v17 & 1) == 0)
  {
LABEL_8:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    if ((sub_1004438B0(a1) & 1) == 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_10097F240);
    sub_10049779C(a1, v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315138;
      v24 = sub_10032DA30();
      v26 = v25;
      sub_10049786C(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v27 = sub_10000C4E4(v24, v26, &v31);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "endpoint.isConnectable is false. Treating endpoint as connectable due to delegate: %s", v22, 0xCu);
      sub_10000C60C(v23);

      swift_unknownObjectRelease();

      return 1;
    }

    swift_unknownObjectRelease();
    v28 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    v29 = v11;
LABEL_16:
    sub_10049786C(v29, v28);
  }

  return 1;
}

uint64_t sub_10048D4A0(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v2[55] = swift_task_alloc();
  v2[56] = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v2[57] = swift_task_alloc();
  v3 = type metadata accessor for SFString();
  v2[58] = v3;
  v2[59] = *(v3 - 8);
  v2[60] = swift_task_alloc();
  type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[65] = v4;
  v2[66] = *(v4 - 8);
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v2[79] = static AirDropActor.shared;

  return _swift_task_switch(sub_10048D770, v5, 0);
}

uint64_t sub_10048D770()
{
  v1 = *(v0 + 408);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_10000EBD4(*(v0 + 400)), (v5 & 1) != 0))
  {
    sub_1002A9938(*(v3 + 56) + 40 * v4, v0 + 144);
  }

  else
  {
    *(v0 + 176) = 0;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
  }

  swift_endAccess();
  if (*(v0 + 168))
  {
    sub_1000121F8((v0 + 144), v0 + 104);
    goto LABEL_15;
  }

  v6 = *(v0 + 408);
  v7 = UUID.uuidString.getter();
  v9 = v8;
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v11 = *(v6 + v10);
  if (*(v11 + 16))
  {
    v12 = sub_100012854(v7, v9);
    v14 = v13;

    if (v14)
    {
      sub_1002D63B0(*(v11 + 56) + 48 * v12, v0 + 16);
      goto LABEL_12;
    }
  }

  else
  {
  }

  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
LABEL_12:
  swift_endAccess();
  v15 = *(v0 + 40);
  if (v15)
  {
    v16 = *(v0 + 48);
    v17 = sub_10002CDC0((v0 + 16), *(v0 + 40));
    *(v0 + 128) = v15;
    *(v0 + 136) = v16;
    v18 = sub_10002F604((v0 + 104));
    (*(*(v15 - 8) + 16))(v18, v17, v15);
    sub_10000C60C((v0 + 16));
    if (!*(v0 + 168))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_100005508(v0 + 16, &qword_100976180, &unk_1007F9300);
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  if (*(v0 + 168))
  {
LABEL_14:
    sub_100005508(v0 + 144, &qword_100977DC8, &unk_1008091C0);
  }

LABEL_15:
  if (*(v0 + 128))
  {
    sub_1000121F8((v0 + 104), v0 + 64);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    sub_10002CDC0((v0 + 64), v19);
    v24 = (*(v20 + 40) + **(v20 + 40));
    v21 = swift_task_alloc();
    *(v0 + 640) = v21;
    *v21 = v0;
    v21[1] = sub_10048DBE4;

    return v24(v19, v20);
  }

  else
  {
    sub_100005508(v0 + 104, &qword_100977DC8, &unk_1008091C0);

    v23 = *(v0 + 8);

    return v23(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton);
  }
}

uint64_t sub_10048DBE4(uint64_t a1)
{
  v2 = *(*v1 + 632);
  *(*v1 + 648) = a1;

  return _swift_task_switch(sub_10048DCFC, v2, 0);
}

uint64_t sub_10048DCFC()
{
  v165 = v0;
  v1 = *(v0 + 648);
  v160 = *(v0 + 528);
  v2 = *(v0 + 472);
  v3 = *(v0 + 448);
  v4 = *(v0 + 432);
  v5 = v1 + 56;
  v6 = -1;
  v7 = -1 << *(v1 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v1 + 56);
  v9 = (63 - v7) >> 6;
  v151 = (v2 + 8);
  v152 = (v2 + 104);
  v149 = enum case for SFString.maybeContact(_:);
  *(v0 + 688) = enum case for SFString.maybeContact(_:);
  v153 = (v3 + 44);
  v154 = (v4 + 28);
  v155 = v3;
  v157 = (v0 + 456);
  v162 = v1;

  v10 = 0;
  while (1)
  {
    if (v8)
    {
      goto LABEL_13;
    }

    do
    {
      v18 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_116;
      }

      if (v18 >= v9)
      {

        v49 = swift_task_alloc();
        *(v0 + 656) = v49;
        *v49 = v0;
        v49[1] = sub_10048F0A0;

        return sub_100490B08(v0 + 264, v0 + 64);
      }

      v8 = *(v5 + 8 * v18);
      ++v10;
    }

    while (!v8);
    v10 = v18;
LABEL_13:
    v19 = *(v0 + 624);
    v20 = *(v0 + 616);
    sub_10049779C(*(v162 + 48) + *(v160 + 72) * (__clz(__rbit64(v8)) | (v10 << 6)), v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049779C(v19, v20, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = *(v0 + 616);
    if (EnumCaseMultiPayload <= 0)
    {
      break;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v50 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      }

      else
      {
        v50 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

      goto LABEL_48;
    }

    v23 = *v157;
    sub_100497804(v22, *v157, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v24 = *(v23 + *(v155 + 64));
    sub_10049786C(v23, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v24)
    {
      goto LABEL_49;
    }

LABEL_28:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v37 = Strong;
    sub_10049779C(*(v0 + 624), *(v0 + 608), type metadata accessor for SDAirDropDiscoveredEndpoint);
    v38 = swift_getEnumCaseMultiPayload();
    v39 = *(v0 + 608);
    v40 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v41 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    if (v38 > 1)
    {
      if (v38 != 2)
      {
        v44 = type metadata accessor for SDAirDropDiscoveredEndpoint;
LABEL_40:
        sub_10049786C(v39, v44);
        goto LABEL_6;
      }

      v40 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v41 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v46 = v154;
      v45 = (v0 + 440);
      goto LABEL_37;
    }

    if (v38)
    {
      v45 = (v0 + 456);
      v46 = v153;
LABEL_37:
      v47 = *v45;
      sub_100497804(v39, *v45, v41);
      v48 = (v47 + *v46);
      v11 = *v48;
      v13 = v48[1];

      sub_10049786C(v47, v40);
      if (v13)
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    }

    sub_100497804(v39, *(v0 + 504), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    result = NWEndpoint.nw.getter();
    if (!result)
    {
      goto LABEL_119;
    }

    contact_id = nw_endpoint_get_contact_id();
    swift_unknownObjectRelease();
    v43 = *(v0 + 504);
    if (!contact_id)
    {
      v44 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      v39 = *(v0 + 504);
      goto LABEL_40;
    }

    v11 = String.init(cString:)();
    v13 = v12;
    sub_10049786C(v43, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
LABEL_5:
    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
    swift_beginAccess();
    sub_1002A9938(v37 + v14, v0 + 224);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    sub_10002CDC0((v0 + 224), v15);
    v17 = (*(v16 + 104))(v11, v13, v15, v16);

    sub_10000C60C((v0 + 224));
    if (v17)
    {
      if (qword_1009738C0 == -1)
      {
        goto LABEL_111;
      }

      goto LABEL_117;
    }

LABEL_6:
    swift_unknownObjectRelease();
LABEL_7:
    v8 &= v8 - 1;
    sub_10049786C(*(v0 + 624), type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  sub_100497804(v22, *(v0 + 512), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  if ((sub_10032C7CC() & 0x4000000000) == 0 && (sub_10032C7CC() & 0x8000000000) == 0)
  {
    goto LABEL_27;
  }

  if ((sub_10032C7CC() & 0x4000000000) != 0 || (sub_10032C8C4() & 8) != 0)
  {
    v22 = *(v0 + 512);
    v50 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
LABEL_48:
    sub_10049786C(v22, v50);
LABEL_49:
    for (i = *(v0 + 624); ; i = v142)
    {
      sub_10049786C(i, type metadata accessor for SDAirDropDiscoveredEndpoint);

      v52 = 0;
      v53 = *(v0 + 648);
      v56 = *(v53 + 56);
      v55 = v53 + 56;
      v54 = v56;
      v57 = -1;
      v161 = *(v0 + 648);
      v58 = -1 << *(v161 + 32);
      if (-v58 < 64)
      {
        v57 = ~(-1 << -v58);
      }

      v59 = v57 & v54;
      v60 = (63 - v58) >> 6;
      v156 = (*(v0 + 528) + 48);
      v158 = v55;
      v159 = v60;
      if ((v57 & v54) != 0)
      {
        break;
      }

LABEL_53:
      while (1)
      {
        v61 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v61 >= v60)
        {

          sub_10000C60C((v0 + 64));

          v135 = *(v0 + 8);

          return v135(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton);
        }

        v59 = *(v55 + 8 * v61);
        ++v52;
        if (v59)
        {
          v52 = v61;
          goto LABEL_57;
        }
      }

LABEL_116:
      __break(1u);
LABEL_117:
      swift_once();
LABEL_111:
      v136 = *(v0 + 624);
      v137 = *(v0 + 600);
      v138 = type metadata accessor for Logger();
      sub_10000C4AC(v138, qword_10097F240);
      sub_10049779C(v136, v137, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.default.getter();
      v141 = os_log_type_enabled(v139, v140);
      v142 = *(v0 + 624);
      v143 = *(v0 + 600);
      if (v141)
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v164[0] = v145;
        *v144 = 136315138;
        v163 = sub_10032DA30();
        v147 = v146;
        sub_10049786C(v143, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v148 = sub_10000C4E4(v163, v147, v164);

        *(v144 + 4) = v148;
        _os_log_impl(&_mh_execute_header, v139, v140, "endpoint.isConnectable is false. Treating endpoint as connectable due to delegate: %s", v144, 0xCu);
        sub_10000C60C(v145);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        sub_10049786C(v143, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }
    }

    while (1)
    {
LABEL_57:
      v62 = *(v0 + 592);
      v63 = *(v0 + 584);
      v64 = *(v0 + 576);
      sub_10049779C(*(v161 + 48) + *(*(v0 + 528) + 72) * (__clz(__rbit64(v59)) | (v52 << 6)), v62, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_100497804(v62, v63, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10049779C(v63, v64, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v65 = swift_getEnumCaseMultiPayload();
      v66 = *(v0 + 576);
      if (v65 > 1)
      {
        if (v65 == 2)
        {
          v78 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        }

        else
        {
          v78 = type metadata accessor for SDAirDropDiscoveredEndpoint;
        }

LABEL_75:
        v81 = v78;
        goto LABEL_76;
      }

      if (v65)
      {
        v79 = *v157;
        v80 = *(v0 + 448);
        sub_100497804(v66, *v157, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        LOBYTE(v80) = *(v79 + *(v80 + 64));
        sub_10049786C(v79, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        if (v80)
        {
          goto LABEL_77;
        }
      }

      else
      {
        sub_100497804(v66, *(v0 + 496), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        if ((sub_10032C7CC() & 0x4000000000) == 0 && (sub_10032C7CC() & 0x8000000000) == 0)
        {
          goto LABEL_86;
        }

        if ((sub_10032C7CC() & 0x4000000000) != 0 || (sub_10032C8C4() & 8) != 0)
        {
          v66 = *(v0 + 496);
          v78 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          goto LABEL_75;
        }

        result = NWEndpoint.nw.getter();
        if (!result)
        {
          goto LABEL_120;
        }

        device_name = nw_endpoint_get_device_name();
        swift_unknownObjectRelease();
        if (device_name)
        {
          v68 = String.init(cString:)();
          v70 = v69;
          if ((sub_10032C7CC() & 0x4000000000) != 0)
          {
            v72 = *(v0 + 472);
            v71 = *(v0 + 480);
            v73 = *(v0 + 464);
            (*(v72 + 104))(v71, *(v0 + 688), v73);
            sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
            v74 = swift_allocObject();
            *(v74 + 16) = xmmword_1007F5670;
            *(v74 + 56) = &type metadata for String;
            *(v74 + 64) = sub_100026764();
            *(v74 + 32) = v68;
            *(v74 + 40) = v70;
            SFString.format(_:)();

            (*(v72 + 8))(v71, v73);
          }

          v75 = *(v0 + 496);
          v76._countAndFlagsBits = 4408910;
          v76._object = 0xE300000000000000;
          v77 = String.hasPrefix(_:)(v76);

          sub_10049786C(v75, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          if (v77)
          {
            goto LABEL_77;
          }
        }

        else
        {
LABEL_86:
          sub_10049786C(*(v0 + 496), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        }
      }

      v100 = swift_unknownObjectWeakLoadStrong();
      if (v100)
      {
        break;
      }

LABEL_84:
      v60 = v159;
      v59 &= v59 - 1;
      sub_10049786C(*(v0 + 584), type metadata accessor for SDAirDropDiscoveredEndpoint);
      if (!v59)
      {
        goto LABEL_53;
      }
    }

    v101 = v100;
    sub_10049779C(*(v0 + 584), *(v0 + 568), type metadata accessor for SDAirDropDiscoveredEndpoint);
    v102 = swift_getEnumCaseMultiPayload();
    v103 = *(v0 + 568);
    v104 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v105 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    if (v102 > 1)
    {
      if (v102 != 2)
      {
        v134 = type metadata accessor for SDAirDropDiscoveredEndpoint;
LABEL_105:
        sub_10049786C(v103, v134);
        goto LABEL_106;
      }

      v104 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v105 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v112 = (v0 + 440);
      v113 = (v0 + 432);
      v114 = 28;
    }

    else
    {
      if (!v102)
      {
        sub_100497804(v103, *(v0 + 488), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = NWEndpoint.nw.getter();
        if (!result)
        {
          goto LABEL_121;
        }

        v106 = nw_endpoint_get_contact_id();
        swift_unknownObjectRelease();
        v107 = v106;
        v108 = *(v0 + 488);
        if (v107)
        {
          v109 = String.init(cString:)();
          v111 = v110;
          sub_10049786C(v108, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          goto LABEL_97;
        }

        v134 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
        v103 = *(v0 + 488);
        goto LABEL_105;
      }

      v112 = (v0 + 456);
      v113 = (v0 + 448);
      v114 = 44;
    }

    v115 = *v112;
    v116 = *v113;
    sub_100497804(v103, *v112, v105);
    v117 = (v115 + *(v116 + v114));
    v109 = *v117;
    v111 = v117[1];

    sub_10049786C(v115, v104);
    if (v111)
    {
LABEL_97:
      v118 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
      swift_beginAccess();
      sub_1002A9938(v101 + v118, v0 + 184);
      v119 = *(v0 + 208);
      v120 = *(v0 + 216);
      sub_10002CDC0((v0 + 184), v119);
      v121 = (*(v120 + 104))(v109, v111, v119, v120);

      sub_10000C60C((v0 + 184));
      if (v121)
      {
        if (qword_1009738C0 != -1)
        {
          swift_once();
        }

        v122 = *(v0 + 584);
        v123 = *(v0 + 560);
        v124 = type metadata accessor for Logger();
        sub_10000C4AC(v124, qword_10097F240);
        sub_10049779C(v122, v123, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.default.getter();
        v127 = os_log_type_enabled(v125, v126);
        v128 = *(v0 + 560);
        if (v127)
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v164[0] = v130;
          *v129 = 136315138;
          v150 = sub_10032DA30();
          v132 = v131;
          sub_10049786C(v128, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v133 = sub_10000C4E4(v150, v132, v164);

          *(v129 + 4) = v133;
          _os_log_impl(&_mh_execute_header, v125, v126, "endpoint.isConnectable is false. Treating endpoint as connectable due to delegate: %s", v129, 0xCu);
          sub_10000C60C(v130);

          swift_unknownObjectRelease();
          goto LABEL_77;
        }

        swift_unknownObjectRelease();

        v81 = type metadata accessor for SDAirDropDiscoveredEndpoint;
        v66 = v128;
LABEL_76:
        sub_10049786C(v66, v81);
LABEL_77:
        v82 = *(v0 + 584);
        v83 = *(v0 + 520);
        v84 = *(v0 + 424);
        *(swift_task_alloc() + 16) = v82;
        sub_1002CC594(sub_100498518, &_swiftEmptySetSingleton, v84);

        v85 = (*v156)(v84, 1, v83);
        v86 = *(v0 + 584);
        if (v85 == 1)
        {
          v87 = *(v0 + 544);
          v88 = *(v0 + 536);
          sub_100005508(*(v0 + 424), &qword_1009763E0, &qword_1007F95D0);
          sub_10049779C(v86, v88, type metadata accessor for SDAirDropDiscoveredEndpoint);
          sub_10046DE64(v87, v88);
          v89 = (v0 + 544);
        }

        else
        {
          sub_100497804(*(v0 + 424), *(v0 + 552), type metadata accessor for SDAirDropDiscoveredEndpoint);
          v90 = sub_10032FEAC();
          v91 = sub_10032FEAC();
          v92 = *(v0 + 584);
          if (v91 >= v90)
          {
            v98 = *(v0 + 544);
            v99 = *(v0 + 536);
            sub_10049779C(*(v0 + 584), v99, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_10046DE64(v98, v99);
            v97 = v98;
          }

          else
          {
            v93 = *(v0 + 552);
            v94 = *(v0 + 544);
            v95 = *(v0 + 536);
            v96 = *(v0 + 416);
            sub_10049779C(v93, v95, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_10046DE64(v94, v95);
            sub_10049786C(v94, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_10036E788(v93, v96);
            sub_100005508(v96, &qword_1009763E0, &qword_1007F95D0);
            sub_10049779C(v92, v95, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_10046DE64(v94, v95);
            v97 = v94;
          }

          sub_10049786C(v97, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v89 = (v0 + 552);
        }

        sub_10049786C(*v89, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v55 = v158;
        goto LABEL_84;
      }
    }

LABEL_106:
    swift_unknownObjectRelease();
    goto LABEL_84;
  }

  result = NWEndpoint.nw.getter();
  if (result)
  {
    v26 = nw_endpoint_get_device_name();
    swift_unknownObjectRelease();
    if (v26)
    {
      v27 = String.init(cString:)();
      v29 = v28;
      if ((sub_10032C7CC() & 0x4000000000) != 0)
      {
        v30 = *(v0 + 480);
        v31 = *(v0 + 464);
        (*v152)(v30, v149, v31);
        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1007F5670;
        *(v32 + 56) = &type metadata for String;
        *(v32 + 64) = sub_100026764();
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
        SFString.format(_:)();

        (*v151)(v30, v31);
      }

      v33 = *(v0 + 512);
      v34._countAndFlagsBits = 4408910;
      v34._object = 0xE300000000000000;
      v35 = String.hasPrefix(_:)(v34);

      sub_10049786C(v33, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if (v35)
      {
        goto LABEL_49;
      }

      goto LABEL_28;
    }

LABEL_27:
    sub_10049786C(*(v0 + 512), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    goto LABEL_28;
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
  return result;
}