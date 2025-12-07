uint64_t sub_100046DE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000BA158, &qword_1000832A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = static Hasher._hash(seed:bytes:count:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100047010(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100045AB8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100048928();
      goto LABEL_16;
    }

    sub_1000494D8(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100047190(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v33 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_100045D18(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100048A84();
      goto LABEL_24;
    }

    sub_100049710(v6 + 1);
  }

  v8 = *(v5 + 32);
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v36 = v12;
  v37 = v11;
  String.hash(into:)();
  v14 = *(v5 + 33);
  v35 = v8;
  Hasher._combine(_:)(v8 & 1);
  v34 = v14;
  Hasher._combine(_:)(v14);
  result = Hasher._finalize()();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a2 = result & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    while (1)
    {
      v19 = v18 + 40 * a2;
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *(v19 + 33);
      v24 = *v19 == v9 && *(v19 + 8) == v10;
      if (v24 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v25 = v20 == v37 && v21 == v36;
        if (v25 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          if (((v22 ^ v35) & 1) == 0 && v23 == v34)
          {
            break;
          }
        }
      }

      a2 = (a2 + 1) & v17;
      if (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_24:
  v26 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = *(v26 + 48) + 40 * a2;
  v28 = *(v33 + 16);
  *v27 = *v33;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(v33 + 32);
  v29 = *(v26 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v31;
  }

  return result;
}

Swift::Int sub_1000473B4(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v65 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_94;
  }

  if (a3)
  {
    sub_100045FD4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100048C04();
      goto LABEL_94;
    }

    sub_1000499CC(v6 + 1);
  }

  v63 = *v3;
  Hasher.init(_seed:)();
  v8 = *v5;
  v9 = *(v5 + 8);
  String.hash(into:)();
  v11 = *(v5 + 16);
  v10 = *(v5 + 24);
  v12 = v10 >> 60;
  if (v10 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v66 = *(v5 + 32);
  Hasher._combine(_:)(v66);
  result = Hasher._finalize()();
  v13 = v63;
  v14 = -1 << *(v63 + 32);
  a2 = result & ~v14;
  if ((*(v63 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v68 = v11;
    v69 = ~v14;
    if (v11)
    {
      v15 = 0;
    }

    else
    {
      v15 = v10 == 0xC000000000000000;
    }

    v16 = !v15;
    v62 = v16;
    v17 = v10 >> 62;
    v18 = __OFSUB__(HIDWORD(v11), v11);
    v61 = v18;
    v60 = HIDWORD(v11) - v11;
    v67 = v8;
    while (1)
    {
      v21 = *(v13 + 48) + 40 * a2;
      v22 = *(v21 + 16);
      v23 = *(v21 + 24);
      v24 = *(v21 + 32);
      if (*v21 != v8 || *(v21 + 8) != v9)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if (v23 >> 60 == 15)
      {
        if (v12 <= 0xE)
        {
          goto LABEL_22;
        }

        sub_10001C9B8(v22, v23);
        sub_10001C9B8(v68, v10);
LABEL_33:
        v26 = v22;
        v27 = v23;
        goto LABEL_34;
      }

      if (v12 > 0xE)
      {
LABEL_22:
        sub_10001C9B8(v22, v23);
        sub_10001C9B8(v68, v10);
        sub_10001CA20(v22, v23);
        v19 = v68;
        v8 = v67;
        v20 = v10;
LABEL_23:
        result = sub_10001CA20(v19, v20);
        goto LABEL_24;
      }

      v28 = v23 >> 62;
      if (v23 >> 62 == 3)
      {
        break;
      }

      v32 = v10 >> 62;
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          goto LABEL_60;
        }

        v35 = *(v22 + 16);
        v34 = *(v22 + 24);
        v36 = __OFSUB__(v34, v35);
        v33 = v34 - v35;
        if (v36)
        {
          goto LABEL_100;
        }

        if (v17 <= 1)
        {
          goto LABEL_57;
        }
      }

      else if (v28)
      {
        LODWORD(v33) = HIDWORD(v22) - v22;
        if (__OFSUB__(HIDWORD(v22), v22))
        {
          goto LABEL_99;
        }

        v33 = v33;
        if (v17 <= 1)
        {
LABEL_57:
          v37 = BYTE6(v10);
          if (v32)
          {
            v37 = v60;
            if (v61)
            {
              goto LABEL_97;
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        v33 = BYTE6(v23);
        if (v17 <= 1)
        {
          goto LABEL_57;
        }
      }

LABEL_61:
      if (v32 != 2)
      {
        if (v33)
        {
LABEL_69:
          sub_10001C9B8(v22, v23);
          sub_10001C9B8(v68, v10);
          v8 = v67;
          sub_10001CA20(v68, v10);
          v19 = v22;
          v20 = v23;
          goto LABEL_23;
        }

LABEL_70:

        sub_10001C9B8(v22, v23);
        sub_10001C9B8(v22, v23);
        sub_10001C9B8(v68, v10);
        v8 = v67;
        v12 = v10 >> 60;
        sub_10001CA20(v68, v10);
        sub_10001CA20(v22, v23);

        goto LABEL_33;
      }

      v39 = *(v68 + 16);
      v38 = *(v68 + 24);
      v36 = __OFSUB__(v38, v39);
      v37 = v38 - v39;
      if (v36)
      {
        goto LABEL_98;
      }

LABEL_63:
      if (v33 != v37)
      {
        goto LABEL_69;
      }

      if (v33 < 1)
      {
        goto LABEL_70;
      }

      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *&v71[6] = 0;
          *v71 = 0;

          sub_10001C9B8(v22, v23);
          sub_10001C9B8(v22, v23);
          v40 = v10;
          v41 = v68;
          sub_10001C9B8(v68, v10);
          goto LABEL_83;
        }

        v57 = *(v22 + 24);
        v59 = *(v22 + 16);

        sub_10001C9B8(v22, v23);
        sub_10001C9B8(v22, v23);
        sub_10001C9B8(v68, v10);
        v42 = __DataStorage._bytes.getter();
        if (v42)
        {
          v43 = v42;
          v44 = __DataStorage._offset.getter();
          v45 = v59;
          if (__OFSUB__(v59, v44))
          {
            goto LABEL_103;
          }

          v56 = v59 - v44 + v43;
        }

        else
        {
          v56 = 0;
          v45 = v59;
        }

        if (__OFSUB__(v57, v45))
        {
          goto LABEL_102;
        }

        __DataStorage._length.getter();
        v50 = v56;
      }

      else
      {
        if (!v28)
        {
          *v71 = v22;
          *&v71[8] = v23;
          v71[10] = BYTE2(v23);
          v71[11] = BYTE3(v23);
          v71[12] = BYTE4(v23);
          v71[13] = BYTE5(v23);

          sub_10001C9B8(v22, v23);
          sub_10001C9B8(v22, v23);
          v40 = v10;
          v41 = v68;
          sub_10001C9B8(v68, v10);
LABEL_83:
          sub_100043B30(v71, v41, v40, &v70);
          sub_10001CA20(v68, v40);
          v49 = v70;
          goto LABEL_90;
        }

        if (v22 >> 32 < v22)
        {
          goto LABEL_101;
        }

        sub_10001C9B8(v22, v23);
        sub_10001C9B8(v22, v23);
        sub_10001C9B8(v68, v10);
        v46 = __DataStorage._bytes.getter();
        if (v46)
        {
          v58 = v46;
          v47 = __DataStorage._offset.getter();
          if (__OFSUB__(v22, v47))
          {
            goto LABEL_104;
          }

          v48 = v22 - v47 + v58;
        }

        else
        {
          v48 = 0;
        }

        __DataStorage._length.getter();
        v50 = v48;
      }

      sub_100043B30(v50, v68, v10, v71);
      sub_10001CA20(v68, v10);
      v49 = v71[0];
LABEL_90:
      sub_10001CA20(v22, v23);

      result = sub_10001CA20(v22, v23);
      v12 = v10 >> 60;
      if (v49)
      {
        v13 = v63;
        if (v24 == v66)
        {
LABEL_105:
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      else
      {
        v13 = v63;
      }

LABEL_24:
      a2 = (a2 + 1) & v69;
      if (((*(v63 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    if (v22)
    {
      v29 = 0;
    }

    else
    {
      v29 = v23 == 0xC000000000000000;
    }

    v31 = !v29 || v10 >> 62 != 3;
    if (((v31 | v62) & 1) == 0)
    {

      sub_10001C9B8(0, 0xC000000000000000);
      sub_10001C9B8(0, 0xC000000000000000);
      sub_10001C9B8(0, 0xC000000000000000);
      sub_10001CA20(0, 0xC000000000000000);
      sub_10001CA20(0, 0xC000000000000000);

      v26 = 0;
      v27 = 0xC000000000000000;
LABEL_34:
      result = sub_10001CA20(v26, v27);
      if (v24 == v66)
      {
        goto LABEL_105;
      }

      goto LABEL_24;
    }

    v32 = v10 >> 62;
LABEL_60:
    v33 = 0;
    if (v32 <= 1)
    {
      goto LABEL_57;
    }

    goto LABEL_61;
  }

LABEL_94:
  v51 = *v64;
  *(*v64 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v52 = *(v51 + 48) + 40 * a2;
  v53 = *(v65 + 16);
  *v52 = *v65;
  *(v52 + 16) = v53;
  *(v52 + 32) = *(v65 + 32);
  v54 = *(v51 + 16);
  v36 = __OFADD__(v54, 1);
  v55 = v54 + 1;
  if (v36)
  {
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
  }

  *(v51 + 16) = v55;
  return result;
}

uint64_t sub_100047B68(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.Encoding();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*v4 + 16);
  v16 = *(*v4 + 24);
  v35 = a1;
  if (v16 > v15 && (a3 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    v34 = v8;
    sub_1000462CC(v15 + 1);
    goto LABEL_8;
  }

  if (v16 > v15)
  {
    sub_100048D88();
LABEL_17:
    v29 = *v4;
    *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    result = sub_10004C47C(v35, *(v29 + 48) + *(v36 + 72) * a2);
    v31 = *(v29 + 16);
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v32)
    {
      *(v29 + 16) = v33;
      return result;
    }

    __break(1u);
    goto LABEL_20;
  }

  v34 = v8;
  sub_100049C7C(v15 + 1);
LABEL_8:
  v17 = *v4;
  Hasher.init(_seed:)();
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  static String.Encoding.utf8.getter();
  v20 = String.data(using:allowLossyConversion:)();
  v22 = v21;
  (*(v12 + 8))(v14, v11);
  if (v22 >> 60 != 15)
  {
    Data.hash(into:)();
    sub_10001CA20(v20, v22);
    v23 = Hasher._finalize()();
    v24 = -1 << *(v17 + 32);
    a2 = v23 & ~v24;
    if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v25 = ~v24;
      v26 = *(v36 + 72);
      while (1)
      {
        sub_100043A70(*(v17 + 48) + v26 * a2, v10);
        if (*(v10 + 1) == v18 && *(v10 + 2) == v19)
        {
          goto LABEL_21;
        }

        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100043AD4(v10);
        if (v28)
        {
          goto LABEL_22;
        }

        a2 = (a2 + 1) & v25;
        if (((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  sub_100043AD4(v10);
LABEL_22:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100047E70(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000466B0(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_100048F6C();
        goto LABEL_73;
      }

      sub_10004A030(v7 + 1);
    }

    v9 = *v3;
    Hasher.init(_seed:)();
    sub_10002C1E4();
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v10 = v9 + 56;
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v61 = ~v11;
      v58 = v3;
      v59 = v9;
      v60 = v9 + 56;
      while (1)
      {
        sub_100030BD0(*(v9 + 48) + 56 * a2, v64);
        v12 = v65;
        v13 = v66;
        sub_100005A3C(v64, v65);
        v14 = (*(v13 + 24))(v12, v13);
        v16 = v15;
        v18 = *(v6 + 24);
        v17 = *(v6 + 32);
        sub_100005A3C(v6, v18);
        v19 = (*(v17 + 24))(v18, v17);
        v21 = v16 >> 62;
        v22 = v20 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_39;
          }

          v30 = *(v14 + 16);
          v29 = *(v14 + 24);
          v31 = __OFSUB__(v29, v30);
          v28 = v29 - v30;
          if (v31)
          {
            goto LABEL_78;
          }

          if (v22 <= 1)
          {
            goto LABEL_36;
          }
        }

        else if (v21)
        {
          LODWORD(v28) = HIDWORD(v14) - v14;
          if (__OFSUB__(HIDWORD(v14), v14))
          {
            goto LABEL_79;
          }

          v28 = v28;
          if (v22 <= 1)
          {
LABEL_36:
            if (v22)
            {
              if (__OFSUB__(HIDWORD(v19), v19))
              {
                goto LABEL_76;
              }

              if (v28 != HIDWORD(v19) - v19)
              {
                goto LABEL_11;
              }
            }

            else if (v28 != BYTE6(v20))
            {
              goto LABEL_11;
            }

            goto LABEL_46;
          }
        }

        else
        {
          v28 = BYTE6(v16);
          if (v22 <= 1)
          {
            goto LABEL_36;
          }
        }

LABEL_40:
        if (v22 != 2)
        {
          if (v28)
          {
            goto LABEL_11;
          }

LABEL_51:
          sub_100005A80(v19, v20);
          v26 = v14;
          v27 = v16;
LABEL_52:
          sub_100005A80(v26, v27);
          goto LABEL_53;
        }

        v33 = *(v19 + 16);
        v32 = *(v19 + 24);
        v31 = __OFSUB__(v32, v33);
        v34 = v32 - v33;
        if (v31)
        {
          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        if (v28 != v34)
        {
LABEL_11:
          sub_100005A80(v19, v20);
          sub_100005A80(v14, v16);
LABEL_12:
          result = sub_100030C2C(v64);
          goto LABEL_13;
        }

LABEL_46:
        if (v28 < 1)
        {
          goto LABEL_51;
        }

        if (v21 > 1)
        {
          v40 = v19;
          v41 = v20;
          if (v21 == 2)
          {
            v42 = *(v14 + 16);
            v43 = *(v14 + 24);
            v44 = __DataStorage._bytes.getter();
            if (v44)
            {
              v45 = __DataStorage._offset.getter();
              if (__OFSUB__(v42, v45))
              {
                goto LABEL_82;
              }

              v44 += v42 - v45;
            }

            if (__OFSUB__(v43, v42))
            {
              goto LABEL_81;
            }

            __DataStorage._length.getter();
            sub_100043B30(v44, v40, v41, v63);
            sub_100005A80(v14, v16);
            sub_100005A80(v40, v41);
            v46 = v63[0];
            v4 = v58;
          }

          else
          {
            memset(v63, 0, 14);
            sub_100043B30(v63, v19, v20, &v62);
            sub_100005A80(v14, v16);
            sub_100005A80(v40, v41);
            v46 = v62;
          }
        }

        else
        {
          if (!v21)
          {
            v63[0] = v14;
            LOWORD(v63[1]) = v16;
            BYTE2(v63[1]) = BYTE2(v16);
            BYTE3(v63[1]) = BYTE3(v16);
            BYTE4(v63[1]) = BYTE4(v16);
            BYTE5(v63[1]) = BYTE5(v16);
            v35 = v19;
            v36 = v20;
            sub_100043B30(v63, v19, v20, &v62);
            v10 = v60;
            sub_100005A80(v14, v16);
            sub_100005A80(v35, v36);
            if ((v62 & 1) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_53;
          }

          if (v14 >> 32 < v14)
          {
            goto LABEL_80;
          }

          v47 = v19;
          v48 = v20;
          v49 = __DataStorage._bytes.getter();
          if (v49)
          {
            v50 = __DataStorage._offset.getter();
            if (__OFSUB__(v14, v50))
            {
              goto LABEL_83;
            }

            v49 += v14 - v50;
          }

          v4 = v58;
          __DataStorage._length.getter();
          sub_100043B30(v49, v47, v48, v63);
          sub_100005A80(v14, v16);
          sub_100005A80(v47, v48);
          v46 = v63[0];
        }

        v9 = v59;
        v10 = v60;
        if ((v46 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_53:
        if (v67 != *(v6 + 40))
        {
          goto LABEL_12;
        }

        sub_10003EB28();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v38 = Dictionary._bridgeToObjectiveC()().super.isa;
        v39 = static NSObject.== infix(_:_:)();

        result = sub_100030C2C(v64);
        if (v39)
        {
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_13:
        a2 = (a2 + 1) & v61;
        if (((*(v10 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      if (v14)
      {
        v23 = 0;
      }

      else
      {
        v23 = v16 == 0xC000000000000000;
      }

      if (v23 && v20 >> 62 == 3 && !v19 && v20 == 0xC000000000000000)
      {
        sub_100005A80(0, 0xC000000000000000);
        v26 = 0;
        v27 = 0xC000000000000000;
        goto LABEL_52;
      }

LABEL_39:
      v28 = 0;
      if (v22 <= 1)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }
  }

LABEL_73:
  v51 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v52 = *(v51 + 48) + 56 * a2;
  v53 = *v6;
  v54 = *(v6 + 16);
  v55 = *(v6 + 32);
  *(v52 + 48) = *(v6 + 48);
  *(v52 + 16) = v54;
  *(v52 + 32) = v55;
  *v52 = v53;
  v56 = *(v51 + 16);
  v31 = __OFADD__(v56, 1);
  v57 = v56 + 1;
  if (v31)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }

  *(v51 + 16) = v57;
  return result;
}

uint64_t sub_100048500(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100046944(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1000490EC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10004A288(v5 + 1);
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100048620(Swift::Int result, Swift::Int a2, Swift::Int a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_100046B68(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_10004922C();
      goto LABEL_18;
    }

    sub_10004A478(v10 + 1);
  }

  v12 = *v5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  result = Hasher._finalize()();
  v13 = -1 << *(v12 + 32);
  a4 = result & ~v13;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v17 = (*(v12 + 48) + 24 * a4);
      v18 = v17[2];
      v19 = *v17 == v9 && v17[1] == a2;
      if (v19 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        sub_10003EB28();

        v15 = v18;
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          goto LABEL_21;
        }
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v20 = *v25;
  *(*v25 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = (*(v20 + 48) + 24 * a4);
  *v21 = v9;
  v21[1] = a2;
  v21[2] = a3;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_21:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100048804(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100046DE8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100049398();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10004A6D8(v5 + 1);
  }

  v8 = *v3;
  result = static Hasher._hash(seed:bytes:count:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100048928()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B93F8, &unk_100083270);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100048A84()
{
  v1 = v0;
  sub_100003F6C(&qword_1000BA148, &unk_100083290);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        LOBYTE(v18) = *(v18 + 33);
        v24 = *(v4 + 48) + v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        *(v24 + 33) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100048C04()
{
  v1 = v0;
  sub_100003F6C(&qword_1000BA168, &qword_1000832C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LODWORD(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;

        result = sub_10001C9B8(v21, v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100048D88()
{
  v1 = v0;
  v2 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003F6C(&qword_1000BA118, &qword_100083258);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_100043A70(*(v6 + 48) + v21, v5);
        result = sub_10004C47C(v5, *(v8 + 48) + v21);
      }

      while (v16);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100048F6C()
{
  v1 = v0;
  sub_100003F6C(&qword_1000BA100, &qword_100083248);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 56 * (v14 | (v8 << 6));
        result = sub_100030BD0(*(v2 + 48) + v17, v22);
        v18 = *(v4 + 48) + v17;
        v19 = v23;
        v20 = v22[2];
        v21 = v22[1];
        *v18 = v22[0];
        *(v18 + 16) = v21;
        *(v18 + 32) = v20;
        *(v18 + 48) = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1000490EC()
{
  v1 = v0;
  sub_100003F6C(&qword_1000BA128, &qword_100083268);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_10004922C()
{
  v1 = v0;
  sub_100003F6C(&qword_1000BA160, &unk_1000832B0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;

        result = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100049398()
{
  v1 = v0;
  sub_100003F6C(&qword_1000BA158, &qword_1000832A8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

Swift::Int sub_1000494D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000B93F8, &unk_100083270);
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

Swift::Int sub_100049710(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000BA148, &unk_100083290);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v1;
    v34 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v35 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = *(v18 + 32);
      v24 = *(v18 + 33);
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v5 = v35;
      v25 = -1 << *(v35 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v35 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      v10 = v36;
      *(v14 + 16) = v22;
      *(v14 + 24) = v21;
      *(v14 + 32) = v23;
      *(v14 + 33) = v24;
      ++*(v35 + 16);
      v3 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        v32 = v5;

        v2 = v33;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v32 = result;

LABEL_26:
    *v2 = v32;
  }

  return result;
}

Swift::Int sub_1000499CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000BA168, &qword_1000832C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v32 = *(v18 + 32);
      Hasher.init(_seed:)();

      sub_10001C9B8(v21, v22);
      String.hash(into:)();
      if (v22 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Data.hash(into:)();
      }

      Hasher._combine(_:)(v32);
      result = Hasher._finalize()();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v32;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_100049C7C(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for String.Encoding();
  v3 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_100003F6C(&qword_1000BA118, &qword_100083258);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v1;
    v37 = v8;
    v11 = 0;
    v12 = v8 + 56;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v38 = (v3 + 8);
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v42 = (v15 - 1) & v15;
LABEL_15:
      v22 = *(v8 + 48);
      v23 = *(v39 + 72);
      sub_100043A70(v22 + v23 * (v19 | (v11 << 6)), v7);
      Hasher.init(_seed:)();
      v24 = v7;
      v25 = v40;
      static String.Encoding.utf8.getter();
      v26 = String.data(using:allowLossyConversion:)();
      v28 = v27;
      result = (*v38)(v25, v41);
      if (v28 >> 60 == 15)
      {
        goto LABEL_30;
      }

      Data.hash(into:)();
      sub_10001CA20(v26, v28);
      result = Hasher._finalize()();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      v7 = v24;
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

        goto LABEL_29;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_10004C47C(v24, *(v10 + 48) + v18 * v23);
      ++*(v10 + 16);
      v8 = v37;
      v15 = v42;
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

        v2 = v36;
        goto LABEL_27;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

Swift::Int sub_10004A030(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000BA100, &qword_100083248);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_100030BD0(*(v3 + 48) + 56 * (v17 | (v6 << 6)), v27);
      Hasher.init(_seed:)();
      sub_10002C1E4();
      dispatch thunk of Hashable.hash(into:)();
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
      v13 = *(v5 + 48) + 56 * v12;
      v14 = v27[0];
      v15 = v27[1];
      v16 = v27[2];
      *(v13 + 48) = v28;
      *(v13 + 16) = v15;
      *(v13 + 32) = v16;
      *v13 = v14;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
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

uint64_t sub_10004A288(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000BA128, &qword_100083268);
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

Swift::Int sub_10004A478(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000BA160, &unk_1000832B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      Hasher.init(_seed:)();

      v22 = v21;
      String.hash(into:)();
      NSObject.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 24 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v22;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_10004A6D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003F6C(&qword_1000BA158, &qword_1000832A8);
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
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      result = static Hasher._hash(seed:bytes:count:)();
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
      *(*(v5 + 48) + 4 * v12) = v16;
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

char *sub_10004A8CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AA1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004A8EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AB28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004A90C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AC44(a1, a2, a3, *v3, &qword_1000BA178, &qword_1000832D0, &type metadata for AEAManagedConfigurationRestrictions.Application);
  *v3 = result;
  return result;
}

char *sub_10004A944(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AC44(a1, a2, a3, *v3, &qword_1000BA170, &qword_1000832C8, &type metadata for AEASpringBoardHomeScreenConfiguration.Item);
  *v3 = result;
  return result;
}

void *sub_10004A97C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AD50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004A99C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AF28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004A9BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004B038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004A9DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004B184(a1, a2, a3, *v3, &qword_1000BA180, &qword_1000832D8, &qword_1000BA188, &qword_1000832E0);
  *v3 = result;
  return result;
}

char *sub_10004AA1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000B80D8, &unk_100081EE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004AB28(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000B9F40, &unk_100083190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004AC44(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_100003F6C(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10004AD50(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003F6C(&qword_1000B9388, &unk_100082010);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URL() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10004AF28(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000BA150, &qword_1000832A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004B038(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000BA110, &qword_100083250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004B184(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100003F6C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003F6C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

Swift::Int sub_10004B2D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100003F6C(&qword_1000B93F8, &unk_100083270);
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

Swift::Int sub_10004B4F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100003F6C(&qword_1000BA100, &qword_100083248);
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
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
LABEL_16:
    sub_100030BD0(*(a4 + 48) + 56 * (v13 | (v11 << 6)), v29);
    Hasher.init(_seed:)();
    sub_10002C1E4();
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 56 * v19;
    v25 = v29[0];
    v26 = v29[1];
    v27 = v29[2];
    *(v24 + 48) = v30;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    *v24 = v25;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
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
      goto LABEL_28;
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

Swift::Int sub_10004B748(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100003F6C(&qword_1000BA160, &unk_1000832B0);
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
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v32 = (v10 - 1) & v10;
LABEL_17:
    v16 = (*(v4 + 48) + 24 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    Hasher.init(_seed:)();

    v20 = v19;
    String.hash(into:)();
    NSObject.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << v9[32];
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 6) + 24 * v24);
    *v29 = v17;
    v29[1] = v18;
    v29[2] = v20;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    v10 = v32;
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
      v32 = (v15 - 1) & v15;
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

Swift::Int sub_10004B9A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = type metadata accessor for String.Encoding();
  v8 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v41 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100003F6C(&qword_1000BA118, &qword_100083258);
  result = static _SetStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v39 = a1;
  v40 = (v8 + 8);
  v17 = result + 56;
  v38 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v21 = *(a4 + 48);
    v22 = *(v41 + 72);
    sub_100043A70(v21 + v22 * (v18 | (v16 << 6)), v12);
    Hasher.init(_seed:)();
    v23 = v13;
    v24 = v12;
    v25 = v42;
    static String.Encoding.utf8.getter();
    v26 = String.data(using:allowLossyConversion:)();
    v28 = v27;
    result = (*v40)(v25, v43);
    if (v28 >> 60 == 15)
    {
      goto LABEL_34;
    }

    Data.hash(into:)();
    sub_10001CA20(v26, v28);
    result = Hasher._finalize()();
    v29 = -1 << *(v23 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    v12 = v24;
    v13 = v23;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a1 = v39;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_32;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a1 = v39;
LABEL_27:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = sub_10004C47C(v24, *(v13 + 48) + v32 * v22);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_33;
    }

    a4 = v38;
    v15 = v44;
    if (!a3)
    {
LABEL_29:

      return v13;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      goto LABEL_29;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v44 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void *sub_10004BD54(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10004BF58(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_10004BDE4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v22 = a4;
  v19 = result;
  v20 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    sub_100030BD0(*(a3 + 48) + 56 * v15, v21);
    v16 = v22(v21);
    result = sub_100030C2C(v21);
    if (v4)
    {
      return result;
    }

    if (v16)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_10004B4F8(v19, a2, v20, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10004BF58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v29 = *(v6 - 8);
  result = __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    sub_100043A70(*(v31 + 48) + *(v29 + 72) * v21, v9);
    v22 = v30(v9);
    result = sub_100043AD4(v9);
    if (v4)
    {
      return result;
    }

    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;

        return sub_10004B9A0(v27, v26, v28, v24);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C148(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100044308(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10004C1E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10004C4E0();
  result = Set.init(minimumCapacity:)();
  v12 = result;
  if (v2)
  {
    v4 = (a1 + 65);
    do
    {
      v5 = *(v4 - 33);
      v6 = *(v4 - 25);
      v7 = *(v4 - 17);
      v8 = *(v4 - 9);
      v9 = *(v4 - 1);
      v10 = *v4;
      v4 += 40;
      v13[0] = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      v14 = v9;
      v15 = v10;

      sub_100044458(v11, v13);

      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_10004C298(uint64_t a1)
{
  v2 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_10004C534(&qword_1000B8838, &unk_10008146C);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_100043A70(v11, v6);
      sub_100044E58(v8, v6);
      sub_100043AD4(v8);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_10004C3EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10002C1E4();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_100030BD0(v4, v5);
      sub_100045154(v6, v5);
      sub_100030C2C(v6);
      v4 += 56;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10004C47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004C4E0()
{
  result = qword_1000BA140;
  if (!qword_1000BA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA140);
  }

  return result;
}

uint64_t sub_10004C534(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AEAParticipant.AuxiliaryProcess(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10004C578(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = &_swiftEmptySetSingleton;
  sub_100003F6C(&unk_1000BA190, &qword_1000832E8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000807D0;
  (*(v8 + 16))(v10, v5, a3);
  v12 = _getErrorEmbeddedNSError<A>(_:)();
  if (v12)
  {
    v13 = v12;
    (*(v8 + 8))(v10, a3);
    v14 = 1;
  }

  else
  {
    v13 = swift_allocError();
    (*(v8 + 32))(v15, v10, a3);
    v14 = *(v11 + 16);
  }

  *(v11 + 32) = v13;
  v28[1] = v11;
  v29 = v11 + 32;
  if (!v14)
  {
    goto LABEL_18;
  }

  v16 = 0;
  v17 = (2 * v14) | 1;
  while (1)
  {
    v18 = v17 >> 1;
    if (v16 != v17 >> 1)
    {
      break;
    }

LABEL_7:
    if (v16 == v18)
    {
      goto LABEL_18;
    }
  }

  if (v16 >= (v17 >> 1))
  {
    __break(1u);
    return;
  }

  v19 = *(v29 + 8 * v16++);
  v30 = v16;
  v31 = v17;
  swift_errorRetain();
  v20 = _convertErrorToNSError(_:)();
  v21 = v32;
  if (v32[2])
  {
    v22 = static Hasher._hash(seed:_:)();
    v23 = -1 << *(v21 + 32);
    v24 = v22 & ~v23;
    if ((*(v21 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v24))
    {
      v25 = ~v23;
      while (*(v21[6] + 8 * v24) != v20)
      {
        v24 = (v24 + 1) & v25;
        if (((*(v21 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v24) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_7;
    }
  }

LABEL_16:
  if ((a1(v19) & 1) == 0)
  {
    sub_100045710(v28, v20);
    v26 = [v20 underlyingErrors];
    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10004C8A4(v27);

    v16 = v30;
    v17 = v31;
    v18 = v31 >> 1;
    goto LABEL_7;
  }

LABEL_18:

  swift_unknownObjectRelease();
}

void *sub_10004C8A4(void *result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = ((v2 >> 1) - v3);
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = result;
  v6 = result[2];
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = v8[2];
  if ((v7 + 8 * v3 + 8 * v4) != &v8[v9 + 4])
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = v8[3];

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = (v4 + v12);
  if (v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_9:
  result = (v4 + v6);
  if (__OFADD__(v4, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v10 < result)
  {
    if ((v10 + 0x800000000000000) < 0)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v14 = (2 * v10);
    if (v14 > result)
    {
      result = v14;
    }
  }

  result = sub_10004CFA0(result);
  v16 = v1[2];
  v15 = v1[3];
  v17 = (v15 >> 1) - v16;
  if (__OFSUB__(v15 >> 1, v16))
  {
    goto LABEL_39;
  }

  v18 = v1[1] + 8 * v16 + 8 * v17;
  if ((v15 & 1) == 0)
  {
LABEL_20:
    v21 = v17;
    goto LABEL_22;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];
  if (v18 != &v19[v20 + 4])
  {

    goto LABEL_20;
  }

  v22 = v19[3];

  v23 = (v22 >> 1) - v20;
  v13 = __OFADD__(v17, v23);
  v21 = v17 + v23;
  if (v13)
  {
LABEL_46:
    __break(1u);
    return result;
  }

LABEL_22:
  v24 = v21 - v17;
  if (__OFSUB__(v21, v17))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v25 = v5[2];
  if (v25)
  {
    if (v24 >= v6)
    {
      sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_30;
      }

      result = (v17 + v6);
      if (!__OFADD__(v17, v6))
      {
        sub_10004CC10(result);
        goto LABEL_30;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v6 > 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = 0;
LABEL_30:
  if (v6 == v24)
  {

    return sub_10004CCC8(v5, v25);
  }

  else
  {
  }
}

void *sub_10004CAF4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003F6C(&unk_1000BA190, &qword_1000832E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_10004CB78(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003F6C(&qword_1000BA130, &qword_100083280);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_10004CC10(void *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v8 = result[2];
  v5 = __OFADD__(v8, v7);
  v9 = &v7[v8];
  if (v5)
  {
    goto LABEL_13;
  }

  result[2] = v9;

  v10 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_10004CCC8(void *result, unint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_45;
  }

  v6 = result[2];
  v30 = v6;
  if (v6 == a2)
  {
LABEL_33:
  }

  if (v6 <= a2)
  {
    goto LABEL_46;
  }

  v34 = result;
  v7 = a2 + 1;
  v28 = result + 4;
  v8 = result[a2 + 4];
  result = swift_errorRetain();
  v27 = v2;
  while (!__OFADD__(v5, 1))
  {
    v35 = sub_10004D134(v5, v5 + 1, *v2, v2[1], v3, v4);
    v9 = sub_10004D2F4();
    sub_10004D310(&v35, v5, 0, v9);

    v3 = v2[2];
    v4 = v2[3];
    v10 = (v4 >> 1) - v3;
    if (__OFSUB__(v4 >> 1, v3))
    {
      goto LABEL_39;
    }

    v11 = v2[1];
    v33 = v4 >> 1;
    v32 = v11;
    if ((v4 & 1) == 0)
    {
      goto LABEL_13;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
      swift_unknownObjectRelease();
      v12 = _swiftEmptyArrayStorage;
    }

    v13 = v12[2];
    if ((v11 + 8 * v3 + 8 * v10) != &v12[v13 + 4])
    {

LABEL_13:
      v14 = (v4 >> 1) - v3;
      v15 = v5 - v10;
      if (v5 < v10)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

    v16 = v3;
    v17 = v12[3];

    v18 = (v17 >> 1) - v13;
    v14 = v10 + v18;
    if (__OFADD__(v10, v18))
    {
      goto LABEL_44;
    }

    v3 = v16;
    v15 = v5 - v14;
    if (v5 < v14)
    {
LABEL_17:
      v19 = v3;
      v20 = 0;
      v29 = v5;
      v31 = v19;
      v21 = v32 + 8 * v5 + 8 * v19;
      while (1)
      {
        *(v21 + 8 * v20) = v8;
        if (v30 - v7 == v20)
        {
          v8 = 0;
          v7 = v30;
          v5 = v29 + v20 + 1;
          goto LABEL_24;
        }

        if ((v7 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v7 + v20 >= v34[2])
        {
          goto LABEL_37;
        }

        v8 = v28[v7 + v20];
        result = swift_errorRetain();
        ++v20;
        if (!(v15 + v20))
        {
          v7 += v20;
          v5 = v14;
LABEL_24:
          v2 = v27;
          v3 = v31;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      break;
    }

LABEL_25:
    v22 = __OFSUB__(v5, v10);
    v23 = v5 - v10;
    if (v22)
    {
      goto LABEL_40;
    }

    if (v23)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = _swiftEmptyArrayStorage;
      }

      v24 = result[2];
      v22 = __OFADD__(v24, v23);
      v25 = v24 + v23;
      if (v22)
      {
        goto LABEL_41;
      }

      result[2] = v25;

      v26 = v33 + v23;
      if (__OFADD__(v33, v23))
      {
        goto LABEL_42;
      }

      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      v4 = v4 & 1 | (2 * v26);
      v2[3] = v4;
    }

    if (!v8)
    {
      goto LABEL_33;
    }
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
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_10004CFA0(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 8 * v6 + 8 * v7) != &v9[v10 + 4])
  {

    goto LABEL_9;
  }

  v11 = v9[3];

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_10004CAF4(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 8 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_10004D134(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == &v11[v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_10004CAF4(v6, v25);
}

uint64_t *sub_10004D310(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v32 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 8 * a2;
  v30 = v13;
  v31 = (v18 + 8 * a3);
  result = sub_10004D5F0(v7);
  v34 = v9 + 32;
  if (result)
  {
    v19 = result;
    v29 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 8 * v20);
    v22 = &v21[8 * a2];
    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    swift_arrayDestroy();
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 8 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[8 * v32];
    if (v31 != v23 || v31 >= &v23[8 * v30])
    {
      memmove(v31, v23, 8 * v30);
    }

    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v29;
  }

  else
  {
    v20 = v4[2];
    v24 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v24 < v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v24, v20))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    swift_arrayInitWithCopy();
    result = a4(v34 + 8 * a2, a3);
    v25 = v24 + v32;
    if (__OFADD__(v24, v32))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = v4[3] >> 1;
    if (v26 < v25)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v25))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_33;
  }

  v27 = *(v9 + 16);
  v11 = __OFADD__(v20, v27);
  v28 = v20 + v27;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v28 < v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v28 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v34 - 8 * v20;
  v4[2] = v20;
  v4[3] = (2 * v28) | 1;
}

void *sub_10004D5F0(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 8 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 8 * v7) != &v9[v10 + 4])
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = v9[3];

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v15 = v8 - result - 25;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 3);
  v5 = v7 + (v15 >> 3);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = result[2];
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    sub_10004D750(v5, v4, 0);
    return v16;
  }

  return result;
}

unint64_t sub_10004D750(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10004D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t *, uint64_t))
{
  v10 = *(a1 - 8);
  __chkstk_darwin(a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13(0);
  (*(v10 + 16))(v12, v5, a1);
  return sub_10004F608(v12, v14, a1, a2, a4, a5);
}

uint64_t sub_10004D954(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[6];
  sub_100005A3C(v1 + 2, v2);
  v4 = *(v3 + 16);
  v5 = swift_unknownObjectRetain();
  v4(v9, v5, v2, v3);
  v6 = v10;
  if (v10)
  {
    v7 = v11;
    sub_100005A3C(v9, v10);
    v6 = sub_10004D850(v6, v7, type metadata accessor for AEAPolicyDeactivationRunner, type metadata accessor for AEAPolicyDeactivationRunner, sub_10004F76C);
    swift_unknownObjectRelease();
    sub_100003FB4(v9);
  }

  else
  {
    swift_unknownObjectRelease();
    sub_100019B28(v9, &qword_1000BA390, qword_100083400);
  }

  return v6;
}

uint64_t sub_10004DAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  __chkstk_darwin(v11 - 8);
  v13 = v19 - v12;
  sub_10000859C(v5 + 16, v21);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  sub_100019D8C(v21, v19, &qword_1000BA388, &qword_1000833F0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = v19[1];
  *(v16 + 32) = v19[0];
  *(v16 + 48) = v17;
  *(v16 + 64) = v20;
  *(v16 + 72) = a1;
  *(v16 + 80) = a2;
  *(v16 + 88) = a3;
  *(v16 + 96) = sub_10004F494;
  *(v16 + 104) = v14;
  swift_unknownObjectRetain_n();
  swift_retain_n();

  sub_10006F6D0(0, 0, v13, &unk_1000833F8, v16);

  swift_unknownObjectRelease_n();

  return sub_100019B28(v21, &qword_1000BA388, &qword_1000833F0);
}

uint64_t sub_10004DCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v10;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  return _swift_task_switch(sub_10004DCF8, 0, 0);
}

uint64_t sub_10004DCF8()
{
  v1 = v0[7];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005A3C(v1, v2);
  v9 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_10004DE2C;
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];

  return v9(v0 + 2, v7, v5, v6, v2, v3);
}

uint64_t sub_10004DE2C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10004E044;
  }

  else
  {
    v2 = sub_10004DF40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004DF40()
{
  v9 = v0;
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    sub_100005A3C(v0 + 2, v0[5]);
    v3 = sub_10004D850(v1, v2, type metadata accessor for AEAPolicyDeactivationRunner, type metadata accessor for AEAPolicyDeactivationRunner, sub_10004F76C);
    sub_100003FB4(v0 + 2);
  }

  else
  {
    sub_100019B28((v0 + 2), &qword_1000BA390, qword_100083400);
    v3 = 0;
  }

  v4 = v0[11];
  v7 = v3;
  v8 = 0;
  v4(&v7, &v8);
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_10004E044()
{
  v7 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v5 = 0;
  v6 = v1;
  swift_errorRetain();
  v2(&v5, &v6);

  v3 = v0[1];

  return v3();
}

void sub_10004E1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_10004E268(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  sub_100005A3C(a1 + 2, v1);
  v3 = *(v2 + 8);
  v4 = *(v3 + 8);

  v4(v1, v3);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_10004E310(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  sub_100005A3C(a1 + 2, v1);
  v3 = *(v2 + 8);
  v4 = *(v3 + 16);

  v5 = v4(v1, v3);

  return v5;
}

uint64_t sub_10004E57C(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_10004E5F8, 0, 0);
}

uint64_t sub_10004E5F8()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_100005A3C(v1 + 2, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_10004E720;

  return v6(v2, v3);
}

uint64_t sub_10004E720()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_10004E8B0;
  }

  else
  {
    v2 = sub_10004E834;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004E834()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004E8B0()
{
  v1 = *(v0 + 24);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10004E974()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E9B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001A778;

  return sub_10004E57C(v2, v3);
}

uint64_t sub_10004EA60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001A778;

  return v6();
}

uint64_t sub_10004EB4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001A778;

  return sub_10004EA60(v2, v3, v4);
}

uint64_t sub_10004EC0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000F618;

  return v7();
}

uint64_t sub_10004ECF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004ED34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001A778;

  return sub_10004EC0C(a1, v4, v5, v6);
}

uint64_t sub_10004EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100019D8C(a3, v23 - v10, &qword_1000BA380, &qword_100080750);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100019B28(v11, &qword_1000BA380, &qword_100080750);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100019B28(a3, &qword_1000BA380, &qword_100080750);

    return v21;
  }

LABEL_8:
  sub_100019B28(a3, &qword_1000BA380, &qword_100080750);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10004F0FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10004F1F4;

  return v6(a1);
}

uint64_t sub_10004F1F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004F2EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004F324(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001A778;

  return sub_10004F0FC(a1, v4);
}

uint64_t sub_10004F3DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F618;

  return sub_10004F0FC(a1, v4);
}

uint64_t sub_10004F4C4()
{
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 32));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10004F51C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000F618;

  return sub_10004DCC8(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_10004F608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t *, uint64_t))
{
  v13[3] = a3;
  v13[4] = a4;
  v10 = sub_100004F80(v13);
  (*(*(a3 - 8) + 32))(v10, a1, a3);
  a5(0);
  v11 = swift_allocObject();
  a6(v13, v11 + 16);
  return v11;
}

uint64_t sub_10004F6B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10004F6E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = _convertErrorToNSError(_:)();
  (*(v2 + 16))(v2, v3);
}

uint64_t sub_10004F770()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10004F7E4()
{
  v1 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v44 = v31 - v2;
  v3 = sub_100003F6C(&qword_1000BA4C0, &qword_100083480);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v31 - v5;
  v33 = sub_100003F6C(&qword_1000BA4C8, &qword_100083488);
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = v31 - v7;
  v34 = sub_100003F6C(&qword_1000BA4D0, &qword_100083490);
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = v31 - v9;
  v38 = sub_100003F6C(&qword_1000BA4D8, &qword_100083498);
  __chkstk_darwin(v38);
  v31[1] = v31 - v11;
  v12 = sub_100003F6C(&qword_1000BA4E0, &qword_1000834A0);
  v13 = *(v12 - 8);
  v39 = v12;
  v40 = v13;
  __chkstk_darwin(v12);
  v15 = v31 - v14;
  v43 = sub_100003F6C(&qword_1000BA4E8, &qword_1000834A8);
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v37 = v31 - v16;
  v17 = sub_100003F6C(&qword_1000BA4F0, &qword_1000834B0);
  v18 = *(v17 - 8);
  v41 = v17;
  v42 = v18;
  __chkstk_darwin(v17);
  v20 = v31 - v19;
  swift_beginAccess();
  sub_100003F6C(&qword_1000BA4F8, &qword_1000834B8);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100004EE0(&qword_1000BA500, &qword_1000BA4C0, &qword_100083480, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100053DF0();
  Publisher<>.removeDuplicates()();
  (*(v4 + 8))(v6, v3);
  sub_100003F6C(&qword_1000B9178, &qword_100081BC0);
  v32 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_100004EE0(&qword_1000BA510, &qword_1000BA4C8, &qword_100083488, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v21 = v33;
  Publisher.map<A>(_:)();
  (*(v35 + 8))(v8, v21);
  sub_100003F6C(&qword_1000BA518, &unk_1000834C0);
  v22 = v34;
  Publishers.Map.map<A>(_:)();
  (*(v36 + 8))(v10, v22);
  (*(v46 + 16))(v44, v0 + OBJC_IVAR____TtC15assessmentagent33AEAConfigurationParticipantSource_candidateProcesses, v47);
  sub_100004EE0(&qword_1000BA520, &qword_1000BA4D8, &qword_100083498, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_100004EE0(&qword_1000BA528, &qword_1000B7400, &unk_10007FA10, &protocol conformance descriptor for Published<A>.Publisher);
  Publishers.CombineLatest.init(_:_:)();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100053EAC;
  *(v24 + 24) = v23;
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  sub_100004EE0(&qword_1000BA530, &qword_1000BA4E0, &qword_1000834A0, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v25 = v37;
  v26 = v39;
  Publisher.map<A>(_:)();

  (*(v40 + 8))(v15, v26);
  sub_100004EE0(&qword_1000BA538, &qword_1000BA4E8, &qword_1000834A8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_100004EE0(&qword_1000B7410, &qword_1000B7418, &qword_100081AB0, &protocol conformance descriptor for Set<A>);
  v27 = v43;
  Publisher<>.removeDuplicates()();
  (*(v45 + 8))(v25, v27);
  sub_100004EE0(&qword_1000BA540, &qword_1000BA4F0, &qword_1000834B0, v32);
  v28 = v41;
  v29 = Publisher.eraseToAnyPublisher()();
  (*(v42 + 8))(v20, v28);
  return v29;
}

void *sub_100050030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return &_swiftEmptySetSingleton;
  }

  v5 = sub_100050784(a1, a2);

  return v5;
}

void sub_1000500B8()
{
  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC548);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Participant configuration did change", v2, 2u);
  }
}

uint64_t sub_1000501A0@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v2 = *a1;
  v62 = _swiftEmptyDictionarySingleton;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v55 = v2;
  while (v6)
  {
LABEL_11:
    v10 = __clz(__rbit64(v6)) | (v8 << 6);
    v11 = *(v2 + 56);
    v12 = *(v2 + 48) + 40 * v10;
    v13 = *(v12 + 16);
    v63 = *v12;
    v64 = v13;
    v65 = *(v12 + 32);
    v14 = v63;
    v66[0] = v13;
    v15 = (v11 + 16 * v10);
    v56 = *v15;
    v57 = v15[1];
    v16 = *(v15 + 1);
    v17 = v62;
    v18 = v62[2];

    v58 = v16;
    if (!v18)
    {
      sub_100053F24(v66, v61);

LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61[0] = v17;
      v21 = sub_100020DA8(v14, *(&v14 + 1));
      v23 = v17[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_40;
      }

      v27 = v22;
      if (v17[3] >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v30 = v21;
        sub_10006E40C();
        v21 = v30;
        v29 = v61[0];
        if ((v27 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_21:
        *(v29[7] + 8 * v21) = _swiftEmptyDictionarySingleton;
      }

      else
      {
        sub_10006D150(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_100020DA8(v14, *(&v14 + 1));
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_44;
        }

LABEL_20:
        v29 = v61[0];
        if (v27)
        {
          goto LABEL_21;
        }

LABEL_23:
        v29[(v21 >> 6) + 8] |= 1 << v21;
        *(v29[6] + 16 * v21) = v14;
        *(v29[7] + 8 * v21) = _swiftEmptyDictionarySingleton;
        v31 = v29[2];
        v25 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v25)
        {
          goto LABEL_42;
        }

        v29[2] = v32;
      }

      v62 = v29;
      goto LABEL_26;
    }

    sub_100053F24(v66, v61);

    sub_100020DA8(v14, *(&v14 + 1));
    if ((v19 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:

    v34 = sub_1000506AC(v61, v14, *(&v14 + 1));
    if (!*v33)
    {

      (v34)(v61, 0);
      goto LABEL_5;
    }

    v35 = v33;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v60 = *v35;
    v37 = v60;
    *v35 = 0x8000000000000000;
    v38 = sub_100020EB0(&v63);
    v40 = v37[2];
    v41 = (v39 & 1) == 0;
    v25 = __OFADD__(v40, v41);
    v42 = v40 + v41;
    if (v25)
    {
      goto LABEL_41;
    }

    v43 = v39;
    if (v37[3] < v42)
    {
      sub_10006CE1C(v42, v36);
      v38 = sub_100020EB0(&v63);
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_45;
      }

LABEL_32:
      v45 = v60;
      if ((v43 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (v36)
    {
      goto LABEL_32;
    }

    v47 = v38;
    sub_10006E25C();
    v38 = v47;
    v45 = v60;
    if ((v43 & 1) == 0)
    {
LABEL_35:
      v45[(v38 >> 6) + 8] |= 1 << v38;
      v48 = v45[6] + 40 * v38;
      v49 = v64;
      *v48 = v63;
      *(v48 + 16) = v49;
      *(v48 + 32) = v65;
      v50 = v45[7] + 16 * v38;
      *v50 = v56;
      *(v50 + 1) = v57;
      *(v50 + 8) = v58;
      v51 = v45[2];
      v25 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v25)
      {
        goto LABEL_43;
      }

      v45[2] = v52;

      sub_100053F24(v66, v59);
      goto LABEL_37;
    }

LABEL_33:
    v46 = v45[7] + 16 * v38;
    *v46 = v56;
    *(v46 + 1) = v57;
    *(v46 + 8) = v58;

LABEL_37:
    *v35 = v45;

    (v34)(v61, 0);
    v2 = v55;
LABEL_5:
    v6 &= v6 - 1;

    sub_100019B28(v66, &qword_1000BA548, &qword_1000834D0);
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

      *a2 = v62;
      return result;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t (*sub_100050624(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10005370C(v6, a2, a3);
  return sub_10005403C;
}

uint64_t (*sub_1000506AC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1000537B8(v6, a2, a3);
  return sub_100050734;
}

void sub_100050738(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100050784(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = type metadata accessor for AEAParticipant.Process(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  for (i = _swiftEmptyArrayStorage; v9; *(v18 + 2) = v19)
  {
LABEL_10:
    while (1)
    {
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_100004FE4(*(a2 + 48) + *(v4 + 72) * (v15 | (v12 << 6)), v6);
      sub_1000509D8(v6, v23, &v24);
      sub_100053D44(v6);
      if (*(&v25 + 1))
      {
        break;
      }

      result = sub_100019B28(&v24, &qword_1000BBFF0, &qword_100081B30);
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = v27;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100072970(0, *(i + 2) + 1, 1, i);
      i = result;
    }

    v17 = *(i + 2);
    v16 = *(i + 3);
    if (v17 >= v16 >> 1)
    {
      result = sub_100072970((v16 > 1), v17 + 1, 1, i);
      i = result;
    }

    *(i + 2) = v17 + 1;
    v18 = &i[56 * v17];
    v19 = v28;
    v20 = v29;
    v21 = v30;
    *(v18 + 10) = v31;
    *(v18 + 3) = v20;
    *(v18 + 4) = v21;
  }

LABEL_6:
  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      v22 = sub_10004C3EC(i);

      return v22;
    }

    v9 = *(a2 + 56 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000509D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = result, v42 = *(result + 16), v43 = *(result + 8), result = sub_100020DA8(v43, v42), (v6 & 1) != 0))
  {
    v7 = 0;
    v8 = *(*(a2 + 56) + 8 * result);
    v9 = 1 << *(v8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v8 + 64);
    v12 = (v9 + 63) >> 6;
    v44 = v5;
    while (v11)
    {
      v13 = v7;
LABEL_12:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      if (*(*(v8 + 48) + 40 * (v14 | (v13 << 6)) + 32) == 1)
      {
        v15 = *(v5 + *(type metadata accessor for AEAParticipant.Process(0) + 24));

        if ((v15 & 1) == 0)
        {
          v16 = sub_100052DC4(v8);

          v8 = v16;
        }

LABEL_17:
        v39 = a3;
        v17 = *(v8 + 16);
        if (v17)
        {
          v18 = sub_10004CB78(*(v8 + 16), 0);
          v19 = sub_10007373C(&v46, (v18 + 4), v17, v8);
          v20 = v46;

          sub_100019F14(v20);
          if (v19 != v17)
          {
            __break(1u);
            goto LABEL_20;
          }
        }

        else
        {
LABEL_20:
          v18 = _swiftEmptyArrayStorage;
        }

        *&v46 = v18;
        sub_100052170(&v46);

        v21 = v46;
        v40 = *(v46 + 16);
        if (v40)
        {
          v22 = 0;
          v23 = 0;
          v41 = v46;
          do
          {
            if (v23 >= *(v21 + 16))
            {
              goto LABEL_45;
            }

            v24 = v21 + v22;
            v25 = *(v21 + v22 + 32);
            v26 = *(v21 + v22 + 40);
            v28 = *(v21 + v22 + 48);
            v27 = *(v21 + v22 + 56);
            v29 = *(v21 + v22 + 80);
            v30 = *(v21 + v22 + 73);
            v31 = *(v21 + v22 + 72);
            v45 = *(v24 + 64);
            v32 = type metadata accessor for AEAParticipant.Process(0);
            *(&v47 + 1) = v32;
            *&v48 = sub_100053FF0(&qword_1000B7428, type metadata accessor for AEAParticipant.Process, &unk_100081228);
            v33 = sub_100004F80(&v46);
            sub_100004FE4(v44, v33);
            BYTE8(v48) = v31;
            BYTE9(v48) = v30;
            v49 = v29;
            if ((v45 & 1) == 0)
            {
              goto LABEL_41;
            }

            if (v25 == v43 && v26 == v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              if (!v27)
              {
LABEL_41:

LABEL_43:

                v38 = v47;
                *v39 = v46;
                *(v39 + 16) = v38;
                *(v39 + 32) = v48;
                *(v39 + 48) = v49;
                return result;
              }

              v34 = v44 + *(v32 + 24);
              v35 = *(v34 + 16);
              if (v35)
              {
                if (v28 == *(v34 + 8) && v27 == v35)
                {

                  goto LABEL_43;
                }

                v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v21 = v41;
                if (v37)
                {
                  goto LABEL_43;
                }
              }

              else
              {

                v21 = v41;
              }

              sub_100030C2C(&v46);
            }

            else
            {

              sub_100030C2C(&v46);

              v21 = v41;
            }

            ++v23;
            v22 += 56;
          }

          while (v40 != v23);
        }

        *(v39 + 48) = 0;
        *(v39 + 16) = 0u;
        *(v39 + 32) = 0u;
        *v39 = 0u;
        return result;
      }
    }

    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v12)
      {

        goto LABEL_17;
      }

      v11 = *(v8 + 64 + 8 * v13);
      ++v7;
      if (v11)
      {
        v7 = v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);

    __break(1u);
  }

  else
  {
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_100050E0C()
{
  v1 = OBJC_IVAR____TtC15assessmentagent33AEAConfigurationParticipantSource_candidateProcesses;
  v2 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15assessmentagent33AEAConfigurationParticipantSource__configurationsByApplicationDescriptor;
  v4 = sub_100003F6C(&qword_1000BA4F8, &qword_1000834B8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAConfigurationParticipantSource(uint64_t a1)
{
  result = qword_1000BA3D0;
  if (!qword_1000BA3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100050F54(uint64_t a1)
{
  sub_100051074(319, &qword_1000B7358, &unk_1000B7360, &unk_100081AA0, &type metadata accessor for Published.Publisher);
  if (v1 <= 0x3F)
  {
    sub_100051074(319, &unk_1000BA3E0, &qword_1000B9178, &qword_100081BC0, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100051074(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100004B50(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000510FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000512AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10005145C(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_100053FF0(&qword_1000B88A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_10005177C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();
      sub_10001C9CC(v13, v14);
      Data.hash(into:)();
      v15 = Hasher._finalize()();
      result = sub_100005A80(v13, v14);
      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 56 * v3;
        v22 = (v20 + 56 * v6);
        if (v3 != v6 || v21 >= v22 + 56)
        {
          v9 = *v22;
          v10 = v22[1];
          v11 = v22[2];
          *(v21 + 48) = *(v22 + 6);
          *(v21 + 16) = v10;
          *(v21 + 32) = v11;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10005194C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100051AFC(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_100053FF0(&qword_1000B88A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

_OWORD *sub_100051E1C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100010B20(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_100051E88(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100010B20(a3, (a4[7] + 32 * a1));
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

unint64_t sub_100051F04(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
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

unint64_t sub_100051F4C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_100051F94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_100052054(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1000520B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

Swift::Int sub_100052170(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100053D30(v2);
  }

  v3 = v2[2];
  v29[0] = (v2 + 4);
  v29[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if ((*(v12 + 56) != 1 || *v12 != 0) && (!v12[6] || *(v12 - 1) != 0))
          {
            break;
          }

          v13 = v12 - 4;
          v14 = *(v12 + 3);
          v15 = *(v12 + 5);
          v16 = *(v12 + 7);
          v28 = v12[9];
          v26 = v15;
          v27 = v16;
          v25 = v14;
          v17 = *(v12 - 1);
          *(v12 + 3) = *(v12 - 2);
          *(v12 + 5) = v17;
          *(v12 + 7) = *v12;
          v12[9] = v12[2];
          v18 = v28;
          v19 = v27;
          v20 = v25;
          v13[1] = v26;
          *v12 = v19;
          v12[2] = v18;
          *v13 = v20;
          v12 -= 7;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 7;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_100003F6C(&qword_1000BA138, &qword_100083288);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v25 = v7 + 4;
    *(&v25 + 1) = v6;
    sub_100052324(&v25, v24, v29, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100052324(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_116:
    v102 = *v102;
    if (!v102)
    {
      goto LABEL_154;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_118;
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v5)
    {
      ++v7;
      goto LABEL_38;
    }

    v11 = *a3 + 56 * v10;
    v12 = *(v11 + 32);
    v13 = *a3 + 56 * v7;
    if (v12 == 1 && *(v13 + 32) == 0)
    {
      v17 = 1;
    }

    else
    {
      v15 = *(v13 + 24);
      if (*(v11 + 24))
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
    }

    v7 += 2;
    if (v9 + 2 < v5)
    {
      v10 = v5 - 1;
      v18 = (*a3 + 56 * v9 + 144);
      do
      {
        v19 = v12;
        LOBYTE(v12) = *v18;
        if ((v19 & 1) == 0 && *v18)
        {
          if ((v17 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else if (*(v18 - 1))
        {
          if (((v17 ^ (*(v18 - 8) != 0)) & 1) == 0)
          {
            v10 = v7 - 1;
            if ((v17 & 1) == 0)
            {
              goto LABEL_38;
            }

LABEL_30:
            if (v7 >= v9)
            {
              if (v9 <= v10)
              {
                v20 = 56 * v7 - 56;
                v21 = 56 * v9;
                v22 = v7;
                v23 = v9;
                do
                {
                  if (v23 != --v22)
                  {
                    v24 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_151;
                    }

                    v25 = (v24 + v21);
                    v26 = *(v24 + v21 + 48);
                    v27 = (v24 + v20);
                    v29 = v25[1];
                    v28 = v25[2];
                    v30 = *v25;
                    v32 = v27[1];
                    v31 = v27[2];
                    v33 = *v27;
                    *(v25 + 6) = *(v27 + 6);
                    v25[1] = v32;
                    v25[2] = v31;
                    *v25 = v33;
                    *v27 = v30;
                    v27[1] = v29;
                    v27[2] = v28;
                    *(v27 + 6) = v26;
                  }

                  ++v23;
                  v20 -= 56;
                  v21 += 56;
                }

                while (v23 < v22);
                v5 = a3[1];
              }

              goto LABEL_38;
            }

LABEL_147:
            __break(1u);
LABEL_148:
            result = sub_100052CAC(v8);
            v8 = result;
LABEL_118:
            v94 = v8 + 16;
            v95 = *(v8 + 2);
            if (v95 >= 2)
            {
              while (*a3)
              {
                v96 = &v8[16 * v95];
                v97 = *v96;
                v98 = &v94[2 * v95];
                v99 = v98[1];
                sub_100052978((*a3 + 56 * *v96), (*a3 + 56 * *v98), *a3 + 56 * v99, v102);
                if (v4)
                {
                }

                if (v99 < v97)
                {
                  goto LABEL_140;
                }

                if (v95 - 2 >= *v94)
                {
                  goto LABEL_141;
                }

                *v96 = v97;
                *(v96 + 1) = v99;
                v100 = *v94 - v95;
                if (*v94 < v95)
                {
                  goto LABEL_142;
                }

                v95 = *v94 - 1;
                result = memmove(v98, v98 + 2, 16 * v100);
                *v94 = v95;
                if (v95 <= 1)
                {
                }
              }

              goto LABEL_152;
            }
          }
        }

        else if (v17)
        {
          v10 = v7 - 1;
          goto LABEL_30;
        }

        v18 += 56;
        ++v7;
      }

      while (v5 != v7);
      v7 = v5;
    }

    if (v17)
    {
      goto LABEL_30;
    }

LABEL_38:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_144;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_145;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_63:
    if (v7 < v9)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100052CC0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v48 = *(v8 + 2);
    v47 = *(v8 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_100052CC0((v47 > 1), v48 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v49;
    v50 = &v8[16 * v48];
    *(v50 + 4) = v9;
    *(v50 + 5) = v7;
    v51 = *v102;
    if (!*v102)
    {
      goto LABEL_153;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v8 + 4);
          v54 = *(v8 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_83:
          if (v56)
          {
            goto LABEL_131;
          }

          v69 = &v8[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_134;
          }

          v75 = &v8[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_137;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_138;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v79 = &v8[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_97:
        if (v74)
        {
          goto LABEL_133;
        }

        v82 = &v8[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_136;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_104:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
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
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*a3)
        {
          goto LABEL_150;
        }

        v91 = *&v8[16 * v90 + 32];
        v92 = *&v8[16 * v52 + 40];
        sub_100052978((*a3 + 56 * v91), (*a3 + 56 * *&v8[16 * v52 + 32]), *a3 + 56 * v92, v51);
        if (v4)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100052CAC(v8);
        }

        if (v90 >= *(v8 + 2))
        {
          goto LABEL_128;
        }

        v93 = &v8[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        result = sub_100052C20(v52);
        v49 = *(v8 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v8[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_129;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_130;
      }

      v64 = &v8[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_132;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_135;
      }

      if (v68 >= v60)
      {
        v86 = &v8[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_139;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_116;
    }
  }

  v34 = *a3;
  v35 = *a3 + 56 * v7 - 56;
  v36 = v9 - v7;
LABEL_48:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    if ((*(v38 + 88) != 1 || *(v38 + 32) != 0) && (!*(v38 + 80) || *(v38 + 24) != 0))
    {
LABEL_47:
      ++v7;
      v35 += 56;
      --v36;
      if (v7 != v5)
      {
        goto LABEL_48;
      }

      v7 = v5;
      goto LABEL_63;
    }

    if (!v34)
    {
      break;
    }

    v41 = *(v38 + 104);
    v42 = *(v38 + 88);
    v43 = *(v38 + 56);
    v44 = *(v38 + 16);
    *(v38 + 56) = *v38;
    v45 = *(v38 + 72);
    *(v38 + 72) = v44;
    *(v38 + 88) = *(v38 + 32);
    *(v38 + 104) = *(v38 + 48);
    *v38 = v43;
    *(v38 + 16) = v45;
    *(v38 + 32) = v42;
    *(v38 + 48) = v41;
    v38 -= 56;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
  return result;
}

uint64_t sub_100052978(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 56;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 56;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[56 * v11] <= a4)
    {
      memmove(a4, __dst, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
LABEL_45:
      v19 = v6;
    }

    else
    {
      do
      {
        v20 = 0;
        v21 = v12;
        while (1)
        {
          v12 = &v21[v20];
          v22 = (v5 + v20);
          v23 = (v5 + v20 - 56);
          if (v21[v20 - 24] == 1 && *(v6 - 24) == 0)
          {
            break;
          }

          if (*(v12 - 4) && *(v6 - 4) == 0)
          {
            break;
          }

          if (v22 != v12)
          {
            v26 = v12 - 56;
            v27 = *v26;
            v28 = *(v26 + 1);
            v29 = *(v26 + 2);
            *(v5 + v20 - 8) = *(v26 + 6);
            *(v5 + v20 - 40) = v28;
            *(v5 + v20 - 24) = v29;
            *v23 = v27;
          }

          v20 -= 56;
          v12 = &v21[v20];
          if (&v21[v20] <= v4)
          {
            goto LABEL_45;
          }
        }

        v19 = v6 - 56;
        if (v22 != v6)
        {
          v30 = *v19;
          v31 = *(v6 - 40);
          v32 = *(v6 - 24);
          *(v5 + v20 - 8) = *(v6 - 1);
          *(v5 + v20 - 40) = v31;
          *(v5 + v20 - 24) = v32;
          *v23 = v30;
        }

        if (v12 <= v4)
        {
          break;
        }

        v5 = v5 + v20 - 56;
        v6 -= 56;
      }

      while (v19 > v7);
      v12 = &v21[v20];
    }
  }

  else
  {
    if (a4 != __src || &__src[56 * v9] <= a4)
    {
      memmove(a4, __src, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 >= 56 && v6 < v5)
    {
      while (1)
      {
        v13 = v6[32] == 1 && v4[32] == 0;
        if (v13)
        {
          break;
        }

        if (*(v6 + 3) && *(v4 + 3) == 0)
        {
          break;
        }

        v15 = v4;
        v13 = v7 == v4;
        v4 += 56;
        if (!v13)
        {
          goto LABEL_19;
        }

LABEL_20:
        v7 += 56;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_22;
        }
      }

      v15 = v6;
      v13 = v7 == v6;
      v6 += 56;
      if (v13)
      {
        goto LABEL_20;
      }

LABEL_19:
      v16 = *v15;
      v17 = *(v15 + 1);
      v18 = *(v15 + 2);
      *(v7 + 6) = *(v15 + 6);
      *(v7 + 1) = v17;
      *(v7 + 2) = v18;
      *v7 = v16;
      goto LABEL_20;
    }

LABEL_22:
    v19 = v7;
  }

  v33 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v34 = (v33 >> 4) + (v33 >> 63);
  if (v19 != v4 || v19 >= &v4[56 * v34])
  {
    memmove(v19, v4, 56 * v34);
  }

  return 1;
}

uint64_t sub_100052C20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100052CAC(v3);
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

char *sub_100052CC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000BA4B8, &unk_100083470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t *sub_100052DC4(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100052F24(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_100053014(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_100052F24(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 48) + 40 * v10 + 32) & 1) == 0)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_100053430(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_100053430(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100053014(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100052F24(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_10005308C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = type metadata accessor for UUID();
  v8 = *(v44 - 8);
  v9 = __chkstk_darwin(v44);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = &v33 - v11;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100003F6C(&qword_1000BA550, &unk_100083520);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v35 = v8 + 16;
  v36 = result;
  v42 = v8 + 32;
  v16 = result + 64;
  v34 = a4;
  v37 = v8;
  v17 = v44;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v39 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v41 = *(v8 + 72);
    v23 = v38;
    (*(v8 + 16))(v38, v22 + v41 * v21, v17);
    v45 = *(a4[7] + 16 * v21);
    v40 = *(v8 + 32);
    v40(v43, v23, v17);
    v13 = v36;
    sub_100053FF0(&qword_1000B88A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v24 = -1 << *(v13 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v8 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v16 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v8 = v37;
LABEL_26:
    *(v16 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v40)(*(v13 + 48) + v27 * v41, v43, v44);
    *(*(v13 + 56) + 16 * v27) = v45;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v14 = v39;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v39 = (v20 - 1) & v20;
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

Swift::Int sub_100053430(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003F6C(&qword_1000B8888, &unk_1000836F0);
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
  v36 = v4;
  v37 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v38 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(v4 + 48) + 40 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v41 = *(v18 + 32);
    v23 = (v17 + 16 * v16);
    v39 = v23[1];
    v40 = *v23;
    v24 = *(v23 + 1);
    Hasher.init(_seed:)();

    String.hash(into:)();
    if (v22)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(v41);
    result = Hasher._finalize()();
    v9 = v37;
    v25 = -1 << *(v37 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v37 + 48) + 40 * v28;
    *v33 = v19;
    *(v33 + 8) = v20;
    *(v33 + 16) = v21;
    *(v33 + 24) = v22;
    *(v33 + 32) = v41;
    v34 = *(v37 + 56) + 16 * v28;
    *v34 = v40;
    *(v34 + 1) = v39;
    *(v34 + 8) = v24;
    ++*(v37 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v36;
    v10 = v38;
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
      v38 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t (*sub_10005370C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100053CC0(v7);
  v7[9] = sub_1000538C8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100054040;
}

uint64_t (*sub_1000537B8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100053CE8(v7);
  v7[9] = sub_100053A20(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100053864;
}

void sub_100053868(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_1000538C8(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100020DA8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10006DC60();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10006C498(v18, a4 & 1);
    v13 = sub_100020DA8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100054044;
}

uint64_t (*sub_100053A20(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100020DA8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10006E40C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10006D150(v18, a4 & 1);
    v13 = sub_100020DA8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100053B78;
}

void sub_100053B7C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_100053F94(*(v13 + 48) + 16 * v12);
      sub_10005194C(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_100053CC0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100054038;
}

uint64_t (*sub_100053CE8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100053D10;
}

uint64_t sub_100053D44(uint64_t a1)
{
  v2 = type metadata accessor for AEAParticipant.Process(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100053DA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1000500B8();
  *a2 = v3;
}

unint64_t sub_100053DF0()
{
  result = qword_1000BA508;
  if (!qword_1000BA508)
  {
    sub_100004B50(&qword_1000B9178, &qword_100081BC0);
    sub_100020934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA508);
  }

  return result;
}

uint64_t sub_100053E74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053EB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053EEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100053F24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BA548, &qword_1000834D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_100054048(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10005406C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 83))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000540B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 83) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 83) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100054120(uint64_t a1)
{
  v2 = a1;
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaDictionary.count.getter();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v57 = _swiftEmptyArrayStorage;
    sub_10004A9DC(0, v3 & ~(v3 >> 63), 0);
    v48 = _swiftEmptyArrayStorage;
    if (v40)
    {
      v4 = __CocoaDictionary.startIndex.getter();
    }

    else
    {
      v4 = _HashTable.startBucket.getter();
      v5 = *(v2 + 36);
    }

    v54 = v4;
    v55 = v5;
    v56 = v40 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v37 = v1;
      v38 = v3;
      v39 = v2;
      while (!__OFADD__(v6, 1))
      {
        v7 = v56;
        v41 = v54;
        v42 = v55;
        v43 = v6 + 1;
        sub_100055AE4(&v53, v54, v55, v56, v2);
        v9 = v8;
        v10 = v53;
        v11 = [v8 bundleIdentifier];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v13;
        v47 = v12;

        v14 = [v9 teamIdentifier];
        if (v14)
        {
          v15 = v14;
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v17;
          v45 = v16;
        }

        else
        {
          v44 = 0;
          v45 = 0;
        }

        v18 = [v9 requiresSignatureValidation];
        v19 = [v10 allowsNetworkAccess];
        v20 = [v10 isRequired];
        v21 = [v10 configurationInfo];
        v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = v48;
        v57 = v48;
        v25 = v48[2];
        v24 = v48[3];
        if (v25 >= v24 >> 1)
        {
          sub_10004A9DC((v24 > 1), v25 + 1, 1);
          v23 = v57;
        }

        v23[2] = v25 + 1;
        v26 = &v23[7 * v25];
        v26[4] = v47;
        v26[5] = v46;
        v26[6] = v45;
        v26[7] = v44;
        *(v26 + 64) = v18;
        v27 = *&v52[3];
        *(v26 + 65) = *v52;
        *(v26 + 17) = v27;
        *(v26 + 72) = v19;
        *(v26 + 73) = v20;
        v28 = v50;
        *(v26 + 39) = v51;
        *(v26 + 74) = v28;
        v26[10] = v22;
        v48 = v23;
        if (v40)
        {
          v2 = v39;
          if (!v7)
          {
            goto LABEL_30;
          }

          v29 = v38;
          if (__CocoaDictionary.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_100003F6C(&qword_1000BA590, &unk_100083700);
          v36 = Dictionary.Index._asCocoa.modify();
          __CocoaDictionary.formIndex(after:isUnique:)();
          v36(v49, 0);
        }

        else
        {
          v2 = v39;
          sub_100055980(v41, v42, v7, v39);
          v31 = v30;
          v33 = v32;
          v35 = v34;
          sub_100019F1C(v41, v42, v7);
          v54 = v31;
          v55 = v33;
          v56 = v35 & 1;
          v29 = v38;
        }

        if (v43 == v29)
        {
          sub_100019F1C(v54, v55, v56);
          return;
        }

        ++v6;
        if (v43 >= v29)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_1000544CC()
{
  v1 = *(v0 + 56);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 56) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v23 = *(v0 + 56);

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v23 + 48) + 40 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = (*(v23 + 56) + 16 * v12);
      v22 = *v16;
      v17 = v16[1];
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v18)
      {

        goto LABEL_18;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_18:

    v21 = 256;
    if (!v17)
    {
      v21 = 0;
    }

    return v21 | v22;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v3 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000546A8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_100003F6C(&qword_1000B91F0, &qword_100081CE8);
  __chkstk_darwin(v11 - 8);
  v13 = &v41 - v12;
  if (![a2 isEnabled])
  {
    goto LABEL_7;
  }

  v14 = [a2 configurationsByApplicationDescriptor];
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = v14;
  v43 = a5;
  v57 = a4;
  sub_100022884(0, &qword_1000B88C8, AEAssessmentApplicationDescriptor_ptr);
  sub_100022884(0, &qword_1000BA570, AEAssessmentIndividualConfiguration_ptr);
  sub_100056760();
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = [a2 mainIndividualConfiguration];
  if (!v17)
  {

    a4 = v57;
LABEL_7:
    sub_10005670C();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
LABEL_8:

    v21 = a4;
    return sub_100003FB4(v21);
  }

  v18 = v17;
  v41 = v16;
  v19 = *(a3 + 128);
  swift_beginAccess();
  sub_100019D8C(v19 + 40, v45, &qword_1000BA580, &qword_1000836E0);
  a4 = v57;
  v42 = v18;
  if (v45[3])
  {
    sub_100030BD0(v45, v44);
    sub_10005682C(v45);
    sub_10000859C(v44, &v46);
    sub_100030C2C(v44);
    sub_100008748(&v46, &v49);
  }

  else
  {
    sub_100019B28(v45, &qword_1000BA580, &qword_1000836E0);
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
    v23 = a4;
    v24 = a4[3];
    v25 = v23[4];
    sub_100005A3C(v23, v24);
    (*(v25 + 8))(a1, v24, v25);
    v26 = type metadata accessor for AEAParticipant.Process(0);
    if ((*(*(v26 - 8) + 48))(v13, 1, v26) == 1)
    {
      sub_100019B28(v13, &qword_1000B91F0, &qword_100081CE8);
      v49 = 0u;
      v50 = 0u;
      v51 = 0;
    }

    else
    {
      *(&v50 + 1) = v26;
      v51 = sub_100004F28();
      v27 = sub_100004F80(&v49);
      sub_1000567C8(v13, v27);
    }

    a4 = v57;
    v18 = v42;
    if (*(&v47 + 1))
    {
      sub_100019B28(&v46, &qword_1000BA588, &qword_1000836E8);
    }
  }

  if (!*(&v50 + 1))
  {

    sub_100019B28(&v49, &qword_1000BA588, &qword_1000836E8);
    sub_10005670C();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  sub_100008748(&v49, v52);
  v28 = [v18 allowsNetworkAccess];
  v29 = [v18 isRequired];
  v30 = [v18 configurationInfo];
  v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000859C(v52, v53);
  BYTE8(v54) = v28;
  BYTE9(v54) = v29;
  *&v55 = v31;
  sub_100054120(v41);
  v33 = v32;

  if (*(v33 + 16))
  {
    sub_100003F6C(&qword_1000B8888, &unk_1000836F0);
    v34 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v34 = _swiftEmptyDictionarySingleton;
  }

  v36 = v43;
  v45[0] = v34;

  sub_1000555F8(v37, 1, v45);
  if (!v5)
  {

    *(&v55 + 1) = v45[0];
    v56[0] = [a2 allowsAutoCorrection];
    v56[1] = [a2 allowsSmartPunctuation];
    v56[2] = [a2 allowsSpellCheck];
    v56[3] = [a2 allowsPredictiveKeyboard];
    v56[4] = [a2 allowsKeyboardShortcuts];
    v56[5] = [a2 allowsActivityContinuation];
    v56[6] = [a2 allowsDictation];
    v56[7] = [a2 allowsAccessibilityKeyboard];
    v56[8] = [a2 allowsAccessibilityLiveCaptions];
    v56[9] = [a2 allowsAccessibilityReader];
    v56[10] = [a2 allowsAccessibilitySpeech];
    v56[11] = [a2 allowsAccessibilityTypingFeedback];
    v56[12] = [a2 allowsPasswordAutoFill];
    v56[13] = [a2 allowsContinuousPathKeyboard];
    v56[14] = [a2 allowsKeyboardMathSolving];
    v56[15] = [a2 allowsMathPaperSolving];
    v56[16] = [a2 allowsScreenshots];
    v56[17] = [a2 _allowsNetworkAccess];
    v38 = [a2 _allowsContentCapture];

    sub_100003FB4(v52);
    v56[18] = v38;
    v39 = v55;
    *(v36 + 32) = v54;
    *(v36 + 48) = v39;
    *(v36 + 64) = *v56;
    *(v36 + 79) = *&v56[15];
    v40 = v53[1];
    *v36 = v53[0];
    *(v36 + 16) = v40;
    v21 = v57;
    return sub_100003FB4(v21);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}