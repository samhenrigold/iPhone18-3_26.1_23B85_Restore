uint64_t sub_10014CE9C(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for Locale();
  v54 = *(v59 - 8);
  v4 = __chkstk_darwin(v59);
  v55 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = v49 - v6;
  v7 = sub_100007224(&qword_10083BDE8, &qword_1006DA2B8);
  v8 = __chkstk_darwin(v7 - 8);
  result = __chkstk_darwin(v8);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = v49 - v10;
  v12 = 0;
  v50 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v49[0] = v14;
  v49[1] = v54 + 16;
  v56 = v11;
  v57 = (v54 + 32);
  v51 = (v54 + 8);
  while (v18)
  {
    v58 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_17:
    v26 = v50;
    v27 = v54;
    (*(v54 + 16))(v52, *(v50 + 48) + *(v54 + 72) * v20, v59);
    v28 = (*(v26 + 56) + 16 * v20);
    v30 = *v28;
    v29 = v28[1];
    v31 = sub_100007224(&qword_10083BDF0, &qword_1006DA2C0);
    v32 = (v56 + *(v31 + 48));
    v23 = v56;
    (*(v27 + 32))();
    *v32 = v30;
    v32[1] = v29;
    (*(*(v31 - 8) + 56))(v23, 0, 1, v31);

LABEL_18:
    v33 = v53;
    sub_1000B1FC8(v23, v53, &qword_10083BDE8, &qword_1006DA2B8);
    v34 = sub_100007224(&qword_10083BDF0, &qword_1006DA2C0);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = (v33 + *(v34 + 48));
    v38 = v55;
    v39 = v59;
    (*v57)(v55, v33, v59);
    v40 = *v37;
    v41 = v37[1];
    v42 = sub_10003ACF8(v38);
    v44 = v43;
    (*v51)(v38, v39);
    if ((v44 & 1) == 0)
    {

      return 0;
    }

    v45 = (*(a2 + 56) + 16 * v42);
    if (*v45 == v40 && v45[1] == v41)
    {

      v18 = v58;
    }

    else
    {
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v18 = v58;
      if ((v47 & 1) == 0)
      {
        return v36;
      }
    }
  }

  if (v19 <= v12 + 1)
  {
    v21 = v12 + 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = v21 - 1;
  v23 = v56;
  while (1)
  {
    v24 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v48 = sub_100007224(&qword_10083BDF0, &qword_1006DA2C0);
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v58 = 0;
      v12 = v22;
      goto LABEL_18;
    }

    v25 = *(v49[0] + 8 * v24);
    ++v12;
    if (v25)
    {
      v58 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v12 = v24;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10014D35C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v32 = result;
  while (v8)
  {
    v12 = __clz(__rbit64(v8));
    v34 = (v8 - 1) & v8;
LABEL_14:
    v15 = 16 * (v12 | (v4 << 6));
    v16 = (*(v3 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(v3 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];

    v22 = sub_10003ADCC(v17, v18);
    v24 = v23;

    if ((v24 & 1) == 0 || (v25 = *(v2 + 56) + 16 * v22, v26 = *v25, v27 = *(*v25 + 16), v27 != *(v20 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v27)
    {
      v28 = v26 == v20;
    }

    else
    {
      v28 = 1;
    }

    if (!v28)
    {
      v29 = (v26 + 40);
      v30 = (v20 + 40);
      while (v27)
      {
        result = *(v29 - 1);
        if (result != *(v30 - 1) || *v29 != *v30)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v29 += 2;
        v30 += 2;
        if (!--v27)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    v11 = sub_10014D57C(v10, v21);

    result = 0;
    v3 = v32;
    v2 = a2;
    v8 = v34;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v34 = (v14 - 1) & v14;
      goto LABEL_14;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_10014D57C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Region();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v57 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = v50 - v8;
  v9 = sub_100007224(&qword_10083BDF8, &qword_1006DA2C8);
  v10 = __chkstk_darwin(v9 - 8);
  result = __chkstk_darwin(v10);
  v14 = v50 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v55 = v13;
  v15 = 0;
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v50[1] = v5 + 16;
  v51 = v5;
  v59 = v50 - v12;
  v60 = (v5 + 32);
  v53 = (v5 + 8);
  v54 = a2;
  v52 = a1;
  while (v19)
  {
    v58 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v15 << 6);
LABEL_17:
    v26 = v56;
    (*(v5 + 16))(v56, *(a1 + 48) + *(v5 + 72) * v21, v4);
    v27 = *(*(a1 + 56) + 8 * v21);
    v28 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
    v29 = *(v28 + 48);
    v30 = v55;
    (*(v5 + 32))(v55, v26, v4);
    *(v30 + v29) = v27;
    (*(*(v28 - 8) + 56))(v30, 0, 1, v28);

    v14 = v59;
LABEL_18:
    sub_1000B1FC8(v30, v14, &qword_10083BDF8, &qword_1006DA2C8);
    v31 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
    v32 = 1;
    if ((*(*(v31 - 8) + 48))(v14, 1, v31) == 1)
    {
      return v32;
    }

    v33 = *(v31 + 48);
    v34 = v57;
    (*v60)(v57, v14, v4);
    v35 = *&v14[v33];
    v36 = v54;
    v37 = sub_10003ADF8(v34);
    LOBYTE(v33) = v38;
    result = (*v53)(v34, v4);
    if ((v33 & 1) == 0 || (v39 = *(*(v36 + 56) + 8 * v37), v40 = *(v39 + 16), v40 != *(v35 + 16)))
    {
LABEL_36:

      return 0;
    }

    v41 = v4;
    v42 = v51;
    v43 = v52;
    if (v40)
    {
      v44 = v39 == v35;
    }

    else
    {
      v44 = 1;
    }

    if (!v44)
    {
      v45 = (v39 + 40);
      v46 = (v35 + 40);
      while (v40)
      {
        result = *(v45 - 1);
        if (result != *(v46 - 1) || *v45 != *v46)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v45 += 2;
        v46 += 2;
        if (!--v40)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_6:

    a1 = v43;
    v4 = v41;
    v5 = v42;
    v19 = v58;
    v14 = v59;
  }

  if (v20 <= v15 + 1)
  {
    v22 = v15 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v48 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
      v49 = v55;
      (*(*(v48 - 8) + 56))(v55, 1, 1, v48);
      v58 = 0;
      v15 = v23;
      v30 = v49;
      goto LABEL_18;
    }

    v25 = *(v16 + 8 * v24);
    ++v15;
    if (v25)
    {
      v58 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v15 = v24;
      goto LABEL_17;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10014DA5C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);

    sub_10003ADCC(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v19 = sub_10014DBC4(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10014DBC4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = sub_10003ADCC(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10014DCF8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10014DEB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10014DF40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v9 = *(i - 3);
      v8 = *(i - 2);
      v11 = *(i - 1);
      v10 = *i;
      v12 = *(v4 - 2);
      v13 = *v4;
      v68 = *(v4 - 1);
      v69 = *(v4 - 3);
      v14 = v8 >> 62;
      v15 = v12 >> 62;
      if (v8 >> 62 == 3)
      {
        break;
      }

      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v26 = *(v9 + 16);
          v25 = *(v9 + 24);
          v23 = __OFSUB__(v25, v26);
          v17 = v25 - v26;
          if (v23)
          {
            goto LABEL_120;
          }

          goto LABEL_30;
        }

        v17 = 0;
        if (v15 <= 1)
        {
          goto LABEL_31;
        }
      }

      else if (v14)
      {
        LODWORD(v17) = HIDWORD(v9) - v9;
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_119;
        }

        v17 = v17;
        if (v15 <= 1)
        {
LABEL_31:
          if (v15)
          {
            LODWORD(v24) = HIDWORD(v69) - v69;
            if (__OFSUB__(HIDWORD(v69), v69))
            {
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
LABEL_119:
              __break(1u);
LABEL_120:
              __break(1u);
LABEL_121:
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
LABEL_125:
              __break(1u);
LABEL_126:
              __break(1u);
LABEL_127:
              __break(1u);
LABEL_128:
              __break(1u);
LABEL_129:
              __break(1u);
LABEL_130:
              __break(1u);
            }

            v24 = v24;
          }

          else
          {
            v24 = BYTE6(v12);
          }

          goto LABEL_37;
        }
      }

      else
      {
        v17 = BYTE6(v8);
        if (v15 <= 1)
        {
          goto LABEL_31;
        }
      }

LABEL_24:
      if (v15 != 2)
      {
        if (v17)
        {
          return 0;
        }

LABEL_42:
        sub_10000B8B8(v9, v8);
        sub_10000B8B8(v11, v10);
        v19 = v69;
        v20 = v12;
LABEL_43:
        sub_10000B8B8(v19, v20);
        sub_10000B8B8(v68, v13);
        goto LABEL_64;
      }

      v22 = *(v69 + 16);
      v21 = *(v69 + 24);
      v23 = __OFSUB__(v21, v22);
      v24 = v21 - v22;
      if (v23)
      {
        goto LABEL_116;
      }

LABEL_37:
      if (v17 != v24)
      {
        return 0;
      }

      if (v17 < 1)
      {
        goto LABEL_42;
      }

      if (v14 > 1)
      {
        v64 = v3;
        if (v14 == 2)
        {
          v28 = *(v4 - 2);
          v29 = *v4;
          v30 = *(v9 + 16);
          v57 = *(v9 + 24);
          v58 = *(i - 3);
          sub_10000B8B8(v9, v8);
          v61 = v11;
          sub_10000B8B8(v11, v10);
          v31 = v28;
          sub_10000B8B8(v69, v28);
          v66 = v29;
          sub_10000B8B8(v68, v29);
          v32 = __DataStorage._bytes.getter();
          if (v32)
          {
            v33 = __DataStorage._offset.getter();
            if (__OFSUB__(v30, v33))
            {
              goto LABEL_127;
            }

            v32 += v30 - v33;
          }

          v3 = v64;
          if (__OFSUB__(v57, v30))
          {
            goto LABEL_124;
          }

          __DataStorage._length.getter();
          v12 = v31;
          sub_1000C2B5C(v32, v69, v31, v71);
          v34 = v71[0];
          v9 = v58;
          v11 = v61;
          goto LABEL_60;
        }

        memset(v71, 0, 14);
        sub_10000B8B8(v9, v8);
        sub_10000B8B8(v11, v10);
        sub_10000B8B8(v69, v12);
        sub_10000B8B8(v68, v13);
        v27 = v69;
      }

      else
      {
        if (v14)
        {
          v66 = *v4;
          v35 = *(i - 3);
          if (v35 >> 32 < v9)
          {
            goto LABEL_123;
          }

          v59 = *(i - 3);
          sub_10000B8B8(v35, v8);
          v62 = v11;
          sub_10000B8B8(v11, v10);
          sub_10000B8B8(v69, v12);
          sub_10000B8B8(v68, v66);
          v36 = __DataStorage._bytes.getter();
          if (v36)
          {
            v37 = __DataStorage._offset.getter();
            if (__OFSUB__(v9, v37))
            {
              goto LABEL_128;
            }

            v36 += v9 - v37;
          }

          v9 = v59;
          __DataStorage._length.getter();
          sub_1000C2B5C(v36, v69, v12, v71);
          v34 = v71[0];
          v11 = v62;
LABEL_60:
          v13 = v66;
          if ((v34 & 1) == 0)
          {
            goto LABEL_113;
          }

          goto LABEL_64;
        }

        v71[0] = *(i - 3);
        LOWORD(v71[1]) = v8;
        BYTE2(v71[1]) = BYTE2(v8);
        BYTE3(v71[1]) = BYTE3(v8);
        BYTE4(v71[1]) = BYTE4(v8);
        BYTE5(v71[1]) = BYTE5(v8);
        v64 = v3;
        sub_10000B8B8(v9, v8);
        sub_10000B8B8(v11, v10);
        sub_10000B8B8(v69, v12);
        sub_10000B8B8(v68, v13);
        v27 = v69;
      }

      v3 = v64;
      sub_1000C2B5C(v71, v27, v12, &v70);
      if (!v70)
      {
        goto LABEL_113;
      }

LABEL_64:
      v38 = v10 >> 62;
      v39 = v13 >> 62;
      if (v10 >> 62 == 3)
      {
        v40 = 0;
        if (!v11 && v10 == 0xC000000000000000 && v13 >> 62 == 3)
        {
          v40 = 0;
          if (!v68 && v13 == 0xC000000000000000)
          {
            sub_10000B90C(v69, v12);
            sub_10000B90C(0, 0xC000000000000000);
            sub_10000B90C(v9, v8);
            v6 = 0;
            v7 = 0xC000000000000000;
            goto LABEL_7;
          }
        }

LABEL_80:
        if (v39 <= 1)
        {
          goto LABEL_81;
        }

        goto LABEL_74;
      }

      if (v38 > 1)
      {
        if (v38 == 2)
        {
          v45 = *(v11 + 16);
          v44 = *(v11 + 24);
          v23 = __OFSUB__(v44, v45);
          v40 = v44 - v45;
          if (v23)
          {
            goto LABEL_122;
          }

          goto LABEL_80;
        }

        v40 = 0;
        if (v39 <= 1)
        {
          goto LABEL_81;
        }
      }

      else if (v38)
      {
        LODWORD(v40) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_121;
        }

        v40 = v40;
        if (v39 <= 1)
        {
LABEL_81:
          if (v39)
          {
            LODWORD(v43) = HIDWORD(v68) - v68;
            if (__OFSUB__(HIDWORD(v68), v68))
            {
              goto LABEL_118;
            }

            v43 = v43;
          }

          else
          {
            v43 = BYTE6(v13);
          }

          goto LABEL_85;
        }
      }

      else
      {
        v40 = BYTE6(v10);
        if (v39 <= 1)
        {
          goto LABEL_81;
        }
      }

LABEL_74:
      if (v39 != 2)
      {
        if (v40)
        {
          goto LABEL_113;
        }

LABEL_6:
        sub_10000B90C(v69, v12);
        sub_10000B90C(v68, v13);
        sub_10000B90C(v9, v8);
        v6 = v11;
        v7 = v10;
LABEL_7:
        sub_10000B90C(v6, v7);
        goto LABEL_8;
      }

      v42 = *(v68 + 16);
      v41 = *(v68 + 24);
      v23 = __OFSUB__(v41, v42);
      v43 = v41 - v42;
      if (v23)
      {
        goto LABEL_117;
      }

LABEL_85:
      if (v40 != v43)
      {
LABEL_113:
        sub_10000B90C(v69, v12);
        sub_10000B90C(v68, v13);
        sub_10000B90C(v9, v8);
        sub_10000B90C(v11, v10);
        return 0;
      }

      if (v40 < 1)
      {
        goto LABEL_6;
      }

      if (v38 > 1)
      {
        if (v38 != 2)
        {
          memset(v71, 0, 14);
LABEL_106:
          sub_1000C2B5C(v71, v68, v13, &v70);
          sub_10000B90C(v69, v12);
          sub_10000B90C(v68, v13);
          sub_10000B90C(v9, v8);
          sub_10000B90C(v11, v10);
          if (!v70)
          {
            return 0;
          }

          goto LABEL_8;
        }

        v67 = v13;
        v60 = v9;
        v63 = v11;
        v46 = *(v11 + 16);
        v47 = *(v11 + 24);
        v48 = __DataStorage._bytes.getter();
        if (v48)
        {
          v49 = __DataStorage._offset.getter();
          if (__OFSUB__(v46, v49))
          {
            goto LABEL_129;
          }

          v48 += v46 - v49;
        }

        if (__OFSUB__(v47, v46))
        {
          goto LABEL_126;
        }

        __DataStorage._length.getter();
        sub_1000C2B5C(v48, v68, v67, v71);
        sub_10000B90C(v69, v12);
        sub_10000B90C(v68, v67);
        v50 = v60;
        v51 = v8;
      }

      else
      {
        if (!v38)
        {
          v71[0] = v11;
          LOWORD(v71[1]) = v10;
          BYTE2(v71[1]) = BYTE2(v10);
          BYTE3(v71[1]) = BYTE3(v10);
          BYTE4(v71[1]) = BYTE4(v10);
          BYTE5(v71[1]) = BYTE5(v10);
          goto LABEL_106;
        }

        v65 = v3;
        v63 = v11;
        if (v11 >> 32 < v11)
        {
          goto LABEL_125;
        }

        v52 = __DataStorage._bytes.getter();
        if (v52)
        {
          v53 = v52;
          v54 = __DataStorage._offset.getter();
          if (__OFSUB__(v11, v54))
          {
            goto LABEL_130;
          }

          v55 = v11 - v54 + v53;
        }

        else
        {
          v55 = 0;
        }

        __DataStorage._length.getter();
        v3 = v65;
        sub_1000C2B5C(v55, v68, v13, v71);
        sub_10000B90C(v69, v12);
        sub_10000B90C(v68, v13);
        v50 = v9;
        v51 = v8;
      }

      sub_10000B90C(v50, v51);
      sub_10000B90C(v63, v10);
      if ((v71[0] & 1) == 0)
      {
        return 0;
      }

LABEL_8:
      v4 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v9)
    {
      v16 = 0;
    }

    else
    {
      v16 = v8 == 0xC000000000000000;
    }

    v17 = 0;
    v18 = v16 && v12 >> 62 == 3;
    if (v18 && !v69 && v12 == 0xC000000000000000)
    {
      sub_10000B8B8(0, 0xC000000000000000);
      sub_10000B8B8(v11, v10);
      v19 = 0;
      v20 = 0xC000000000000000;
      goto LABEL_43;
    }

LABEL_30:
    if (v15 <= 1)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  return 1;
}

uint64_t sub_10014E830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_10015D610(&qword_10083BCB0, &type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet, &protocol conformance descriptor for ISO18013ReaderRequest.AlternativeDataElementsSet);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10014EA44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_10000B8B8(v7, v6);
          sub_10000B8B8(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          __DataStorage._length.getter();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_10000B8B8(v7, v6);
        sub_10000B8B8(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_10000B8B8(v7, v6);
          sub_10000B8B8(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          __DataStorage._length.getter();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_1000C2B5C(v24, v25, v26, v33);
          sub_10000B90C(v9, v8);
          sub_10000B90C(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_10000B8B8(v7, v6);
        sub_10000B8B8(v9, v8);
      }

      sub_1000C2B5C(v33, v9, v8, &v32);
      sub_10000B90C(v9, v8);
      sub_10000B90C(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_10014EE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10003ADCC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10016EE08();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo(0);
    v19 = *(v12 - 8);
    sub_10000BA4C(v11 + *(v19 + 72) * v8, a3);
    sub_100150538(v8, v10, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_10014EFBC(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_10003B028(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10014F68C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10016F09C();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_10001F000(v4, v7);

  v9 = sub_10003B028(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10014F68C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

double sub_10014F108@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10003AF10(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10016F358();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_10001F358((*(v9 + 56) + 40 * v7), a2);
    sub_10014FB2C(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_10014F1EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10003ADCC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10016F394();
      v10 = v12;
    }

    sub_10001F358((*(v10 + 56) + 40 * v8), a3);
    sub_10014FE50(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10014F298(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10003ADCC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10016F53C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_10015000C(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_10014F348@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10003ADCC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10016F6B4();
      v10 = v12;
    }

    sub_10001F348((*(v10 + 56) + 32 * v8), a3);
    sub_1001501BC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10014F42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_10003ADCC(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = a3(0);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    sub_100150538(v14, v16, a4);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = a3(0);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

double sub_10014F5C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10003ADCC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001725F4();
      v10 = v15;
    }

    v11 = (*(v10 + 56) + 96 * v8);
    v12 = v11[3];
    a3[2] = v11[2];
    a3[3] = v12;
    a3[4] = v11[4];
    *(a3 + 73) = *(v11 + 73);
    v13 = v11[1];
    *a3 = *v11;
    a3[1] = v13;
    sub_100150F58(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *(a3 + 73) = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_10014F68C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

Swift::Int sub_10014F818(Swift::Int result, uint64_t a2)
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

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10014FB2C(int64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for DIPError.PropertyKey();
  v4 = *(v42 - 8);
  result = __chkstk_darwin(v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      sub_10015D610(&qword_1008346E8, &type metadata accessor for DIPError.PropertyKey, &protocol conformance descriptor for DIPError.PropertyKey);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (a1 != v10 || v29 >= v30 + 40)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_10014FE50(uint64_t result, uint64_t a2)
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
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

uint64_t sub_10015000C(uint64_t result, uint64_t a2)
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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

uint64_t sub_1001501BC(uint64_t result, uint64_t a2)
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

uint64_t sub_100150370(uint64_t result, uint64_t a2)
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

unint64_t sub_100150538(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10015072C(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPSignpost.Config();
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
      sub_10015D610(&qword_100834878, &type metadata accessor for DIPSignpost.Config, &protocol conformance descriptor for DIPSignpost.Config);
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
          v27 = *(*(type metadata accessor for DIPSignpost() - 8) + 72);
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

unint64_t sub_100150A70(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_100007224(&qword_1008335C0, &qword_1006DA7B0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

Swift::Int sub_100150D08(Swift::Int result, uint64_t a2)
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

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_100150F58(char *result, uint64_t a2)
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
        result = (v14 + 96 * v3);
        v15 = (v14 + 96 * v6);
        if (96 * v3 < (96 * v6) || result >= v15 + 96 || v3 != v6)
        {
          result = memmove(result, v15, 0x60uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100151120(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100155918(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100151270(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  sub_100224E74(a2);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v31 = ~v6;
    v8 = 0x4F495349564F5250;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      v33 = v7;
      if (v9 > 4)
      {
        if (*(*(v4 + 48) + v7) <= 6u)
        {
          if (v9 == 5)
          {
            v14 = 0x544154535F544553;
            v15 = 0xE900000000000045;
          }

          else
          {
            v14 = 0xD000000000000014;
            v15 = 0x80000001006F89F0;
          }
        }

        else if (v9 == 7)
        {
          v14 = 0x5F4F545F444E4553;
          v15 = 0xED0000454D4F4942;
        }

        else if (v9 == 8)
        {
          v14 = 0xD000000000000011;
          v15 = 0x80000001006F8A20;
        }

        else
        {
          v14 = 0x49505F45524F5453;
          v15 = 0xEF4E454B4F545F49;
        }
      }

      else
      {
        v10 = 0xE90000000000004CLL;
        if (v9 == 3)
        {
          v11 = 0x4145485F464C4553;
        }

        else
        {
          v11 = 0x5F59414C50534944;
        }

        if (v9 != 3)
        {
          v10 = 0xEF4547415353454DLL;
        }

        if (v9 == 2)
        {
          v11 = 0x5F45545543455845;
          v10 = 0xEA00000000004657;
        }

        v12 = *(*(v4 + 48) + v7) ? v8 : 0x524F465F54494157;
        v13 = *(*(v4 + 48) + v7) ? 0xEF4D49414C435F4ELL : 0xEF4554414450555FLL;
        v14 = *(*(v4 + 48) + v7) <= 1u ? v12 : v11;
        v15 = *(*(v4 + 48) + v7) <= 1u ? v13 : v10;
      }

      v16 = 0x49505F45524F5453;
      if (a2 == 8)
      {
        v16 = 0xD000000000000011;
      }

      v17 = 0xEF4E454B4F545F49;
      if (a2 == 8)
      {
        v17 = 0x80000001006F8A20;
      }

      if (a2 == 7)
      {
        v16 = 0x5F4F545F444E4553;
        v17 = 0xED0000454D4F4942;
      }

      v18 = 0xD000000000000014;
      if (a2 == 5)
      {
        v18 = 0x544154535F544553;
      }

      v19 = 0x80000001006F89F0;
      if (a2 == 5)
      {
        v19 = 0xE900000000000045;
      }

      if (a2 <= 6u)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = 0xE90000000000004CLL;
      if (a2 == 3)
      {
        v21 = 0x4145485F464C4553;
      }

      else
      {
        v21 = 0x5F59414C50534944;
      }

      if (a2 != 3)
      {
        v20 = 0xEF4547415353454DLL;
      }

      if (a2 == 2)
      {
        v21 = 0x5F45545543455845;
        v20 = 0xEA00000000004657;
      }

      if (a2)
      {
        v22 = v8;
      }

      else
      {
        v22 = 0x524F465F54494157;
      }

      if (a2)
      {
        v23 = 0xEF4D49414C435F4ELL;
      }

      else
      {
        v23 = 0xEF4554414450555FLL;
      }

      if (a2 <= 1u)
      {
        v21 = v22;
        v20 = v23;
      }

      v24 = a2 <= 4u ? v21 : v16;
      v25 = a2 <= 4u ? v20 : v17;
      if (v14 == v24 && v15 == v25)
      {
        break;
      }

      v26 = v8;
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_72;
      }

      v7 = (v33 + 1) & v31;
      v8 = v26;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

LABEL_72:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v33);
  }

  else
  {
LABEL_70:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v29;
    sub_100155A98(a2, v7, isUniquelyReferenced_nonNull_native);
    *v29 = v34;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001516C4(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  sub_1002828E4(a2);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v28 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 > 4)
      {
        if (*(*(v4 + 48) + v7) <= 6u)
        {
          if (v8 == 5)
          {
            v12 = 0xD000000000000010;
            v13 = 0x80000001006FA460;
          }

          else
          {
            v12 = 0xD000000000000012;
            v13 = 0x80000001006FA480;
          }
        }

        else if (v8 == 7)
        {
          v13 = 0xE700000000000000;
          v12 = 0x7972746E756F63;
        }

        else if (v8 == 8)
        {
          v12 = 0x6E69747465537861;
          v13 = 0xEA00000000007367;
        }

        else
        {
          v13 = 0xE400000000000000;
          v12 = 1701736302;
        }
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 1701011826;
        }

        else
        {
          v9 = 0x656E6F546E696B73;
        }

        if (v8 == 3)
        {
          v10 = 0xE400000000000000;
        }

        else
        {
          v10 = 0xE800000000000000;
        }

        if (v8 == 2)
        {
          v9 = 0x6574617473;
          v10 = 0xE500000000000000;
        }

        v11 = *(*(v4 + 48) + v7) ? 7890291 : 6645601;
        v12 = *(*(v4 + 48) + v7) <= 1u ? v11 : v9;
        v13 = *(*(v4 + 48) + v7) <= 1u ? 0xE300000000000000 : v10;
      }

      v14 = 0x6E69747465537861;
      if (a2 != 8)
      {
        v14 = 1701736302;
      }

      v15 = 0xEA00000000007367;
      if (a2 != 8)
      {
        v15 = 0xE400000000000000;
      }

      if (a2 == 7)
      {
        v14 = 0x7972746E756F63;
        v15 = 0xE700000000000000;
      }

      v16 = 0xD000000000000012;
      if (a2 == 5)
      {
        v16 = 0xD000000000000010;
      }

      v17 = 0x80000001006FA480;
      if (a2 == 5)
      {
        v17 = 0x80000001006FA460;
      }

      if (a2 <= 6u)
      {
        v14 = v16;
        v15 = v17;
      }

      if (a2 == 3)
      {
        v18 = 1701011826;
      }

      else
      {
        v18 = 0x656E6F546E696B73;
      }

      if (a2 == 3)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      if (a2 == 2)
      {
        v18 = 0x6574617473;
        v19 = 0xE500000000000000;
      }

      if (a2)
      {
        v20 = 7890291;
      }

      else
      {
        v20 = 6645601;
      }

      if (a2 <= 1u)
      {
        v18 = v20;
        v19 = 0xE300000000000000;
      }

      v21 = a2 <= 4u ? v18 : v14;
      v22 = a2 <= 4u ? v19 : v15;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_68;
      }

      v7 = (v7 + 1) & v28;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

LABEL_68:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_66:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_100155F20(a2, v7, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100151A58(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *v4;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  sub_1003D4B28(v56, a4);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v54 = ~v10;
    if (a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = a3 == 0xC000000000000000;
    }

    v13 = !v12;
    v53 = v13;
    v14 = a3 >> 62;
    v15 = __OFSUB__(HIDWORD(a2), a2);
    v51 = v15;
    v49 = a2;
    v50 = HIDWORD(a2) - a2;
    v52 = BYTE6(a3);
    v46 = a3;
    v47 = a4;
    while (1)
    {
      v16 = (*(v8 + 48) + 24 * v11);
      v18 = *v16;
      v17 = v16[1];
      v19 = v16[2];
      v20 = v17 >> 62;
      if (v17 >> 62 == 3)
      {
        break;
      }

      if (v20 > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_36;
        }

        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        v29 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v29)
        {
          goto LABEL_70;
        }

        if (v14 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v20)
      {
        LODWORD(v26) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_69;
        }

        v26 = v26;
        if (v14 <= 1)
        {
LABEL_33:
          v30 = v52;
          if (v14)
          {
            v30 = v50;
            if (v51)
            {
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v26 = BYTE6(v17);
        if (v14 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v14 != 2)
      {
        if (v26)
        {
          goto LABEL_13;
        }

LABEL_45:
        v24 = v18;
        v25 = v17;
LABEL_46:
        sub_10000B8B8(v24, v25);

        goto LABEL_47;
      }

      v32 = *(a2 + 16);
      v31 = *(a2 + 24);
      v29 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v29)
      {
        goto LABEL_68;
      }

LABEL_39:
      if (v26 != v30)
      {
        goto LABEL_13;
      }

      if (v26 < 1)
      {
        goto LABEL_45;
      }

      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v35 = *(v18 + 16);
          v34 = *(v18 + 24);
          sub_10000B8B8(v18, v17);

          v36 = __DataStorage._bytes.getter();
          if (v36)
          {
            v37 = __DataStorage._offset.getter();
            if (__OFSUB__(v35, v37))
            {
              goto LABEL_73;
            }

            v36 += v35 - v37;
          }

          if (__OFSUB__(v34, v35))
          {
            goto LABEL_72;
          }

LABEL_62:
          __DataStorage._length.getter();
          a3 = v46;
          sub_1000C2B5C(v36, v49, v46, v56);
          a2 = v49;
          a4 = v47;
          if ((v56[0] & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_47;
        }

        *(v56 + 6) = 0;
        *&v56[0] = 0;
        sub_10000B8B8(v18, v17);
      }

      else
      {
        if (v20)
        {
          if (v18 >> 32 < v18)
          {
            goto LABEL_71;
          }

          sub_10000B8B8(v18, v17);

          v36 = __DataStorage._bytes.getter();
          if (v36)
          {
            v38 = __DataStorage._offset.getter();
            if (__OFSUB__(v18, v38))
            {
              goto LABEL_74;
            }

            v36 += v18 - v38;
          }

          goto LABEL_62;
        }

        *&v56[0] = v18;
        WORD4(v56[0]) = v17;
        BYTE10(v56[0]) = BYTE2(v17);
        BYTE11(v56[0]) = BYTE3(v17);
        BYTE12(v56[0]) = BYTE4(v17);
        BYTE13(v56[0]) = BYTE5(v17);
        sub_10000B8B8(v18, v17);
      }

      sub_1000C2B5C(v56, a2, a3, &v55);
      a2 = v49;
      if (!v55)
      {
LABEL_12:
        sub_10000B90C(v18, v17);

        goto LABEL_13;
      }

LABEL_47:
      v33 = sub_10014DCF8(v19, a4);
      sub_10000B90C(v18, v17);

      if (v33)
      {
        sub_10000B90C(a2, a3);

        v40 = (*(v8 + 48) + 24 * v11);
        v41 = *v40;
        v42 = v40[1];
        v43 = v40[2];
        *a1 = *v40;
        a1[1] = v42;
        a1[2] = v43;
        sub_10000B8B8(v41, v42);

        return 0;
      }

LABEL_13:
      v11 = (v11 + 1) & v54;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = v17 == 0xC000000000000000;
    }

    v23 = !v21 || v14 < 3;
    if (((v23 | v53) & 1) == 0)
    {
      v24 = 0;
      v25 = 0xC000000000000000;
      goto LABEL_46;
    }

LABEL_36:
    v26 = 0;
    if (v14 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_67:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v56[0] = *v45;
  sub_10000B8B8(a2, a3);

  sub_100156300(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
  *v45 = *&v56[0];
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  return 1;
}

uint64_t sub_100151FC4(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_100153508(v15, result + 1, a4, a5, a6);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_1001542DC(v28 + 1, a4, a5);
        }

        v29 = v16;
        sub_100155894(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_100156868(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_100152228(_OWORD *a1, uint64_t *a2)
{
  v55 = a1;
  v4 = type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v67 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v52 - v8;
  v10 = *a2;
  v75 = *a2;
  v74 = *(a2 + 1);
  v11 = a2[4];
  v57 = a2[3];
  v56 = v11;
  v53 = v2;
  v12 = *v2;
  Hasher.init(_seed:)();
  v54 = a2;
  sub_1003CF3B8(v73);
  v13 = Hasher._finalize()();
  v14 = v12 + 56;
  v15 = -1 << *(v12 + 32);
  v16 = v13 & ~v15;
  if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_24:
    v40 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = *v40;
    sub_10000BBC4(&v75, v73, &qword_10083BCA8, &qword_1006DA1E8);
    sub_10004D7A0(&v74, v73);

    v42 = v54;
    sub_1001569EC(v54, v16, isUniquelyReferenced_nonNull_native);
    *v40 = v72;
    v43 = *(v42 + 1);
    v44 = v55;
    *v55 = *v42;
    v44[1] = v43;
    *(v44 + 4) = v42[4];
    return 1;
  }

  v17 = ~v15;
  v18 = *(v10 + 16);
  v69 = v10;
  v70 = v18;
  v66 = v5 + 16;
  v68 = v5;
  v19 = (v5 + 8);
  v60 = v12;
  v59 = v12 + 56;
  v58 = v17;
  while (1)
  {
    v21 = (*(v12 + 48) + 40 * v16);
    v71 = *v21;
    if (*(v71 + 16) != v70)
    {
      goto LABEL_4;
    }

    v22 = v21[2];
    v61 = v21[1];
    v23 = v21[3];
    v24 = v21[4];
    v64 = v22;
    v65 = v16;
    v63 = v23;
    v62 = v24;
    if (v70)
    {
      break;
    }

LABEL_15:
    v16 = v65;
    v39 = v61 == v74 && v64 == *(&v74 + 1);
    v12 = v60;
    if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_10014EA44(v63, v57))
    {
      v20 = sub_10014DA5C(v62, v56);

      v14 = v59;
      v17 = v58;
      if (v20)
      {
        sub_10000BE18(&v75, &qword_10083BCA8, &qword_1006DA1E8);
        sub_10004D860(&v74);

        v45 = (*(v12 + 48) + 40 * v16);
        v46 = *v45;
        v47 = v45[1];
        v48 = v45[2];
        v49 = v45[3];
        v50 = v45[4];
        v51 = v55;
        *v55 = v46;
        v51[1] = v47;
        v51[2] = v48;
        v51[3] = v49;
        v51[4] = v50;

        return 0;
      }
    }

    else
    {

LABEL_23:
      v14 = v59;
      v17 = v58;
    }

LABEL_4:
    v16 = (v16 + 1) & v17;
    if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v25 = *(v68 + 80);
  v26 = v71;

  if (v26 == v69)
  {
    goto LABEL_15;
  }

  v28 = 0;
  v29 = (v25 + 32) & ~v25;
  v30 = v71 + v29;
  v31 = v69 + v29;
  while (v28 < *(v71 + 16))
  {
    v32 = *(v68 + 72) * v28;
    v33 = *(v68 + 16);
    result = v33(v9, v30 + v32, v4);
    if (v28 >= *(v69 + 16))
    {
      goto LABEL_27;
    }

    v34 = v9;
    v35 = v67;
    v33(v67, v31 + v32, v4);
    sub_10015D610(&qword_10083BCB0, &type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet, &protocol conformance descriptor for ISO18013ReaderRequest.AlternativeDataElementsSet);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v37 = *v19;
    v38 = v35;
    v9 = v34;
    (*v19)(v38, v4);
    result = (v37)(v34, v4);
    if ((v36 & 1) == 0)
    {

      v16 = v65;
      v12 = v60;
      goto LABEL_23;
    }

    if (v70 == ++v28)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100152808(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MobileDocumentElement();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10015D610(&qword_10083BCC8, &type metadata accessor for MobileDocumentElement, &protocol conformance descriptor for MobileDocumentElement);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10015D610(&qword_10083BCD0, &type metadata accessor for MobileDocumentElement, &protocol conformance descriptor for MobileDocumentElement);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100156F44(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100152AE8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MobileDocumentType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10015D610(&qword_100834750, &type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10015D610(&qword_100834758, &type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10015720C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100152DC8(uint64_t a1, uint64_t *a2)
{
  v50 = *v2;
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v54 = a2[10];
  v53 = *(a2 + 88);
  v64 = a2[1];
  v65 = *a2;
  String.hash(into:)();
  v61 = v4;
  Hasher._combine(_:)(v4);
  v59 = v6;
  v60 = v5;
  String.hash(into:)();
  v57 = v8;
  v58 = v7;
  String.hash(into:)();
  v55 = v11;
  v56 = v9;
  String.hash(into:)();
  v52 = v10;
  String.hash(into:)();
  v48 = a2;
  v12 = a2[12];
  Hasher._combine(_:)(v53 & 1);
  v51 = v12;
  Hasher._combine(_:)(v12);
  v13 = Hasher._finalize()();
  v14 = -1 << *(v50 + 32);
  v15 = v13 & ~v14;
  if ((*(v50 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v62 = ~v14;
    v63 = *(v50 + 48);
    while (1)
    {
      v16 = v63 + 104 * v15;
      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v19 = *(v16 + 32);
      v20 = *(v16 + 40);
      v22 = *(v16 + 48);
      v21 = *(v16 + 56);
      v24 = *(v16 + 64);
      v23 = *(v16 + 72);
      v25 = *(v16 + 80);
      v67 = *(v16 + 88);
      v66 = *(v16 + 96);
      v26 = *v16 == v65 && *(v16 + 8) == v64;
      if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v18 == v61)
      {
        v27 = v17 == v60 && v19 == v59;
        if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v28 = v20 == v58 && v22 == v57;
          if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v29 = v21 == v56 && v24 == v55;
            if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v30 = v23 == v52 && v25 == v54;
              if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v67 ^ v53) & 1) == 0 && v66 == v51)
              {
                break;
              }
            }
          }
        }
      }

      v15 = (v15 + 1) & v62;
      if (((*(v50 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    sub_10015D1D4(v48);
    v31 = *(v50 + 48) + 104 * v15;
    v32 = *(v31 + 48);
    v33 = *(v31 + 64);
    v34 = *(v31 + 80);
    v70 = *(v31 + 96);
    v69[4] = v33;
    v69[5] = v34;
    v69[3] = v32;
    v35 = *v31;
    v36 = *(v31 + 16);
    v69[2] = *(v31 + 32);
    v69[0] = v35;
    v69[1] = v36;
    v37 = *(v31 + 16);
    *a1 = *v31;
    *(a1 + 16) = v37;
    v38 = *(v31 + 32);
    v39 = *(v31 + 48);
    v40 = *(v31 + 64);
    v41 = *(v31 + 80);
    *(a1 + 96) = *(v31 + 96);
    *(a1 + 64) = v40;
    *(a1 + 80) = v41;
    *(a1 + 32) = v38;
    *(a1 + 48) = v39;
    sub_10015D178(v69, v68);
    return 0;
  }

  else
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = *v47;
    sub_10015D178(v48, v69);
    sub_1001574D4(v48, v15, isUniquelyReferenced_nonNull_native);
    *v47 = v68[0];
    v44 = *(v48 + 5);
    *(a1 + 64) = *(v48 + 4);
    *(a1 + 80) = v44;
    *(a1 + 96) = v48[12];
    v45 = *(v48 + 1);
    *a1 = *v48;
    *(a1 + 16) = v45;
    v46 = *(v48 + 3);
    result = 1;
    *(a1 + 32) = *(v48 + 2);
    *(a1 + 48) = v46;
  }

  return result;
}

uint64_t sub_100153148(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100157828(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100153228(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CocoaError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10015D610(&qword_10083BC88, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10015D610(&qword_10083BC90, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100157948(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

Swift::Int sub_100153508(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    sub_100007224(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v21 = v8;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_1001542DC(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = NSObject._rawHashValue(seed:)(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v8;
}

Swift::Int sub_100153700(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007224(&qword_10083BC70, &unk_1006E0140);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100153960(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007224(&qword_10083BD30, &qword_1006DA248);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100153D4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007224(&qword_10083BD20, &qword_1006DA238);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1001540C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007224(&qword_10083BCE0, &qword_1006DA200);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    for (i = result + 56; v10; ++*(v5 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = (*(v3 + 48) + 24 * (v12 | (v6 << 6)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      Hasher.init(_seed:)();
      Data.hash(into:)();
      sub_1003D4B28(v22, v18);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v19 = (*(v5 + 48) + 24 * result);
      *v19 = v16;
      v19[1] = v17;
      v19[2] = v18;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      bzero((v3 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v20;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1001542DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100007224(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

Swift::Int sub_1001544FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007224(&qword_10083BCB8, &qword_1006DA1F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = result;
    v6 = 0;
    v7 = (v3 + 56);
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
    v39 = v3;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v40 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 40 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[3];
      v43 = v18[2];
      v44 = v18[1];
      v41 = v18[4];
      Hasher.init(_seed:)();
      v42 = v19;
      v21 = *(v19 + 16);
      Hasher._combine(_:)(v21);
      if (v21)
      {
        v22 = *(type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet() - 8);
        v23 = v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v24 = *(v22 + 72);
        sub_10015D610(&qword_10083BCC0, &type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet, &protocol conformance descriptor for ISO18013ReaderRequest.AlternativeDataElementsSet);
        do
        {
          dispatch thunk of Hashable.hash(into:)();
          v23 += v24;
          --v21;
        }

        while (v21);
      }

      String.hash(into:)();
      v25 = *(v20 + 16);
      Hasher._combine(_:)(v25);
      if (v25)
      {
        v26 = (v20 + 40);
        do
        {
          v27 = *(v26 - 1);
          v28 = *v26;
          sub_10000B8B8(v27, *v26);
          Data.hash(into:)();
          sub_10000B90C(v27, v28);
          v26 += 2;
          --v25;
        }

        while (v25);
      }

      sub_10015B46C(v45, v41);
      result = Hasher._finalize()();
      v5 = v38;
      v29 = -1 << *(v38 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v12 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v3 = v39;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v12 + 8 * v31);
          if (v35 != -1)
          {
            v13 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v30) & ~*(v12 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v3 = v39;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v38 + 48) + 40 * v13);
      *v14 = v42;
      v14[1] = v44;
      v14[2] = v43;
      v14[3] = v20;
      v14[4] = v41;
      ++*(v38 + 16);
      v10 = v40;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      bzero(v7, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v36;
    }

    v2 = v37;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1001548CC(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for MobileDocumentElement();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100007224(&qword_10083BCD8, &qword_1006DA1F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_10015D610(&qword_10083BCC8, &type metadata accessor for MobileDocumentElement, &protocol conformance descriptor for MobileDocumentElement);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100154C28(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for MobileDocumentType();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100007224(&qword_10083BCA0, &qword_1006DA1E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_10015D610(&qword_100834750, &type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_100154F84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007224(&qword_10083BD18, &qword_1006DA230);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v38 = (v3 + 56);
    v39 = v3;
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
    v36 = v1;
    v37 = (v7 + 63) >> 6;
    v10 = v4 + 56;
    v40 = v4;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v41 = (v9 - 1) & v9;
LABEL_15:
      v17 = *(v3 + 48) + 104 * (v13 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v22 = *(v17 + 32);
      v21 = *(v17 + 40);
      v24 = *(v17 + 48);
      v23 = *(v17 + 56);
      v25 = *(v17 + 64);
      v42 = *(v17 + 80);
      v43 = *(v17 + 72);
      v44 = *(v17 + 88);
      *v47 = *(v17 + 89);
      *&v47[3] = *(v17 + 92);
      v45 = *(v17 + 96);
      v46 = *(v17 + 24);
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._combine(_:)(v20);
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v44 & 1);
      Hasher._combine(_:)(v45);
      result = Hasher._finalize()();
      v5 = v40;
      v26 = -1 << *(v40 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v10 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v10 + 8 * v28);
          if (v32 != -1)
          {
            v11 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v27) & ~*(v10 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v40 + 48) + 104 * v11;
      *v12 = v18;
      *(v12 + 8) = v19;
      *(v12 + 16) = v20;
      *(v12 + 24) = v46;
      *(v12 + 32) = v22;
      *(v12 + 40) = v21;
      *(v12 + 48) = v24;
      *(v12 + 56) = v23;
      *(v12 + 64) = v25;
      *(v12 + 72) = v43;
      *(v12 + 80) = v42;
      *(v12 + 88) = v44;
      *(v12 + 89) = *v47;
      *(v12 + 92) = *&v47[3];
      *(v12 + 96) = v45;
      ++*(v40 + 16);
      v3 = v39;
      v9 = v41;
    }

    v14 = v6;
    result = v38;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v37)
      {
        break;
      }

      v16 = v38[v6];
      ++v14;
      if (v16)
      {
        v13 = __clz(__rbit64(v16));
        v41 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      v34 = v5;
      bzero(v38, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v5 = v34;
    }

    else
    {
      *v38 = -1 << v33;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  v35 = v5;

  *v2 = v35;
  return result;
}

uint64_t sub_100155314(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007224(&qword_10083BD08, &qword_1006DA220);
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = static Hasher._hash(seed:_:)();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

uint64_t sub_100155538(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for CocoaError.Code();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100007224(&qword_10083BC98, &qword_1006DA1D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_10015D610(&qword_10083BC88, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_100155894(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

Swift::Int sub_100155918(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100153700(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100157C10();
      goto LABEL_16;
    }

    sub_1001587F8(v8 + 1);
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

Swift::Int sub_100155A98(Swift::Int result, unint64_t a2, char a3)
{
  v34 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_76;
  }

  if (a3)
  {
    sub_100153960(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_100157D6C(&qword_10083BD30, &qword_1006DA248);
      goto LABEL_76;
    }

    sub_100158A30(v5 + 1);
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  sub_100224E74(v34);
  String.hash(into:)();

  result = Hasher._finalize()();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v33 = ~v8;
    v9 = 0xEF4D49414C435F4ELL;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 4)
      {
        if (*(*(v7 + 48) + a2) <= 6u)
        {
          if (v10 == 5)
          {
            v15 = 0x544154535F544553;
            v16 = 0xE900000000000045;
          }

          else
          {
            v15 = 0xD000000000000014;
            v16 = 0x80000001006F89F0;
          }
        }

        else if (v10 == 7)
        {
          v15 = 0x5F4F545F444E4553;
          v16 = 0xED0000454D4F4942;
        }

        else if (v10 == 8)
        {
          v15 = 0xD000000000000011;
          v16 = 0x80000001006F8A20;
        }

        else
        {
          v15 = 0x49505F45524F5453;
          v16 = 0xEF4E454B4F545F49;
        }
      }

      else
      {
        v11 = 0xE90000000000004CLL;
        if (v10 == 3)
        {
          v12 = 0x4145485F464C4553;
        }

        else
        {
          v12 = 0x5F59414C50534944;
        }

        if (v10 != 3)
        {
          v11 = 0xEF4547415353454DLL;
        }

        if (v10 == 2)
        {
          v12 = 0x5F45545543455845;
          v11 = 0xEA00000000004657;
        }

        v13 = *(*(v7 + 48) + a2) ? 0x4F495349564F5250 : 0x524F465F54494157;
        v14 = *(*(v7 + 48) + a2) ? v9 : 0xEF4554414450555FLL;
        v15 = *(*(v7 + 48) + a2) <= 1u ? v13 : v12;
        v16 = *(*(v7 + 48) + a2) <= 1u ? v14 : v11;
      }

      v17 = 0x49505F45524F5453;
      if (v34 == 8)
      {
        v17 = 0xD000000000000011;
      }

      v18 = 0xEF4E454B4F545F49;
      if (v34 == 8)
      {
        v18 = 0x80000001006F8A20;
      }

      if (v34 == 7)
      {
        v17 = 0x5F4F545F444E4553;
        v18 = 0xED0000454D4F4942;
      }

      v19 = 0xD000000000000014;
      if (v34 == 5)
      {
        v19 = 0x544154535F544553;
      }

      v20 = 0x80000001006F89F0;
      if (v34 == 5)
      {
        v20 = 0xE900000000000045;
      }

      if (v34 <= 6u)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = 0xE90000000000004CLL;
      if (v34 == 3)
      {
        v22 = 0x4145485F464C4553;
      }

      else
      {
        v22 = 0x5F59414C50534944;
      }

      if (v34 != 3)
      {
        v21 = 0xEF4547415353454DLL;
      }

      if (v34 == 2)
      {
        v22 = 0x5F45545543455845;
        v21 = 0xEA00000000004657;
      }

      if (v34)
      {
        v23 = 0x4F495349564F5250;
      }

      else
      {
        v23 = 0x524F465F54494157;
      }

      v24 = v9;
      if (!v34)
      {
        v9 = 0xEF4554414450555FLL;
      }

      if (v34 <= 1u)
      {
        v22 = v23;
        v21 = v9;
      }

      v25 = v34 <= 4u ? v22 : v17;
      v26 = v34 <= 4u ? v21 : v18;
      if (v15 == v25 && v16 == v26)
      {
        goto LABEL_79;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_80;
      }

      a2 = (a2 + 1) & v33;
      v9 = v24;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_76:
  v28 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v28 + 48) + a2) = v34;
  v29 = *(v28 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v28 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_79:

LABEL_80:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100155F20(Swift::Int result, unint64_t a2, char a3)
{
  v35 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_72;
  }

  if (a3)
  {
    sub_100153D4C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_100157D6C(&qword_10083BD20, &qword_1006DA238);
      goto LABEL_72;
    }

    sub_100158DEC(v5 + 1);
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  sub_1002828E4(v35);
  String.hash(into:)();

  result = Hasher._finalize()();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v8;
    v9 = 0x656E6F546E696B73;
    v10 = 0x6574617473;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 4)
      {
        if (*(*(v7 + 48) + a2) <= 6u)
        {
          if (v11 == 5)
          {
            v15 = 0xD000000000000010;
            v16 = 0x80000001006FA460;
          }

          else
          {
            v15 = 0xD000000000000012;
            v16 = 0x80000001006FA480;
          }
        }

        else if (v11 == 7)
        {
          v16 = 0xE700000000000000;
          v15 = 0x7972746E756F63;
        }

        else if (v11 == 8)
        {
          v15 = 0x6E69747465537861;
          v16 = 0xEA00000000007367;
        }

        else
        {
          v16 = 0xE400000000000000;
          v15 = 1701736302;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 1701011826;
        }

        else
        {
          v12 = v9;
        }

        if (v11 == 3)
        {
          v13 = 0xE400000000000000;
        }

        else
        {
          v13 = 0xE800000000000000;
        }

        if (v11 == 2)
        {
          v12 = v10;
          v13 = 0xE500000000000000;
        }

        v14 = *(*(v7 + 48) + a2) ? 7890291 : 6645601;
        v15 = *(*(v7 + 48) + a2) <= 1u ? v14 : v12;
        v16 = *(*(v7 + 48) + a2) <= 1u ? 0xE300000000000000 : v13;
      }

      v17 = 0x6E69747465537861;
      if (v35 != 8)
      {
        v17 = 1701736302;
      }

      v18 = 0xEA00000000007367;
      if (v35 != 8)
      {
        v18 = 0xE400000000000000;
      }

      if (v35 == 7)
      {
        v17 = 0x7972746E756F63;
        v18 = 0xE700000000000000;
      }

      v19 = 0xD000000000000012;
      if (v35 == 5)
      {
        v19 = 0xD000000000000010;
        v20 = 0x80000001006FA460;
      }

      else
      {
        v20 = 0x80000001006FA480;
      }

      if (v35 <= 6u)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v9;
      if (v35 == 3)
      {
        v22 = 1701011826;
      }

      else
      {
        v22 = v9;
      }

      if (v35 == 3)
      {
        v23 = 0xE400000000000000;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      v24 = v10;
      if (v35 == 2)
      {
        v22 = v10;
        v23 = 0xE500000000000000;
      }

      if (v35)
      {
        v25 = 7890291;
      }

      else
      {
        v25 = 6645601;
      }

      if (v35 <= 1u)
      {
        v22 = v25;
        v23 = 0xE300000000000000;
      }

      v26 = v35 <= 4u ? v22 : v17;
      v27 = v35 <= 4u ? v23 : v18;
      if (v15 == v26 && v16 == v27)
      {
        goto LABEL_75;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_76;
      }

      a2 = (a2 + 1) & v34;
      v9 = v21;
      v10 = v24;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_72:
  v29 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + a2) = v35;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v29 + 16) = v32;
    return result;
  }

  __break(1u);
LABEL_75:

LABEL_76:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100156300(Swift::Int result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_73;
  }

  if (a5)
  {
    sub_1001540C8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_100157E9C();
      goto LABEL_73;
    }

    sub_100159138(v10 + 1);
  }

  v12 = *v5;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  sub_1003D4B28(v56, a3);
  result = Hasher._finalize()();
  v13 = -1 << *(v12 + 32);
  a4 = result & ~v13;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v54 = ~v13;
    if (v9)
    {
      v14 = 0;
    }

    else
    {
      v14 = a2 == 0xC000000000000000;
    }

    v15 = !v14;
    v53 = v15;
    v16 = a2 >> 62;
    v17 = __OFSUB__(HIDWORD(v9), v9);
    v49 = v17;
    v47 = a3;
    v48 = HIDWORD(v9) - v9;
    v52 = BYTE6(a2);
    v46 = a2;
    v50 = v9;
    while (1)
    {
      v21 = (*(v12 + 48) + 24 * a4);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = v23 >> 62;
      if (v23 >> 62 == 3)
      {
        break;
      }

      if (v25 > 1)
      {
        if (v25 != 2)
        {
          goto LABEL_45;
        }

        v31 = *(v22 + 16);
        v30 = *(v22 + 24);
        v32 = __OFSUB__(v30, v31);
        v29 = v30 - v31;
        if (v32)
        {
          goto LABEL_79;
        }

        if (v16 <= 1)
        {
          goto LABEL_42;
        }
      }

      else if (v25)
      {
        LODWORD(v29) = HIDWORD(v22) - v22;
        if (__OFSUB__(HIDWORD(v22), v22))
        {
          goto LABEL_78;
        }

        v29 = v29;
        if (v16 <= 1)
        {
LABEL_42:
          v33 = v52;
          if (v16)
          {
            v33 = v48;
            if (v49)
            {
              goto LABEL_76;
            }
          }

          goto LABEL_48;
        }
      }

      else
      {
        v29 = BYTE6(v23);
        if (v16 <= 1)
        {
          goto LABEL_42;
        }
      }

LABEL_46:
      if (v16 != 2)
      {
        if (v29)
        {
          goto LABEL_22;
        }

LABEL_54:
        v18 = v22;
        v19 = v23;
LABEL_20:
        sub_10000B8B8(v18, v19);

        goto LABEL_21;
      }

      v35 = *(v9 + 16);
      v34 = *(v9 + 24);
      v32 = __OFSUB__(v34, v35);
      v33 = v34 - v35;
      if (v32)
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_48:
      if (v29 != v33)
      {
        goto LABEL_22;
      }

      if (v29 < 1)
      {
        goto LABEL_54;
      }

      if (v25 > 1)
      {
        if (v25 != 2)
        {
          *(v56 + 6) = 0;
          *&v56[0] = 0;
          sub_10000B8B8(v22, v23);

LABEL_71:
          sub_1000C2B5C(v56, v9, a2, &v55);
          v9 = v50;
          if (!v55)
          {
LABEL_72:
            sub_10000B90C(v22, v23);

            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v36 = *(v22 + 16);
        v37 = *(v22 + 24);
        sub_10000B8B8(v22, v23);

        v38 = __DataStorage._bytes.getter();
        if (v38)
        {
          v39 = __DataStorage._offset.getter();
          if (__OFSUB__(v36, v39))
          {
            goto LABEL_82;
          }

          v38 += v36 - v39;
        }

        if (__OFSUB__(v37, v36))
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (!v25)
        {
          *&v56[0] = v22;
          WORD4(v56[0]) = v23;
          BYTE10(v56[0]) = BYTE2(v23);
          BYTE11(v56[0]) = BYTE3(v23);
          BYTE12(v56[0]) = BYTE4(v23);
          BYTE13(v56[0]) = BYTE5(v23);
          sub_10000B8B8(v22, v23);

          goto LABEL_71;
        }

        if (v22 >> 32 < v22)
        {
          goto LABEL_80;
        }

        sub_10000B8B8(v22, v23);

        v38 = __DataStorage._bytes.getter();
        if (v38)
        {
          v40 = __DataStorage._offset.getter();
          if (__OFSUB__(v22, v40))
          {
            goto LABEL_83;
          }

          v38 += v22 - v40;
        }
      }

      __DataStorage._length.getter();
      v41 = v38;
      a2 = v46;
      sub_1000C2B5C(v41, v50, v46, v56);
      v9 = v50;
      a3 = v47;
      if ((v56[0] & 1) == 0)
      {
        goto LABEL_72;
      }

LABEL_21:
      v20 = sub_10014DCF8(v24, a3);
      sub_10000B90C(v22, v23);

      if (v20)
      {
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_22:
      a4 = (a4 + 1) & v54;
      if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    if (v22)
    {
      v26 = 0;
    }

    else
    {
      v26 = v23 == 0xC000000000000000;
    }

    v28 = !v26 || v16 < 3;
    if (((v28 | v53) & 1) == 0)
    {
      v18 = 0;
      v19 = 0xC000000000000000;
      goto LABEL_20;
    }

LABEL_45:
    v29 = 0;
    if (v16 <= 1)
    {
      goto LABEL_42;
    }

    goto LABEL_46;
  }

LABEL_73:
  v42 = *v51;
  *(*v51 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v43 = (*(v42 + 48) + 24 * a4);
  *v43 = v9;
  v43[1] = a2;
  v43[2] = a3;
  v44 = *(v42 + 16);
  v32 = __OFADD__(v44, 1);
  v45 = v44 + 1;
  if (v32)
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

  *(v42 + 16) = v45;
  return result;
}

void sub_100156868(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_1001542DC(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_10015800C(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_100159320(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_1001569EC(void *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet();
  v63 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v62 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = &v47 - v11;
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v49 = a1;
  v48 = v3;
  if (v14 <= v13 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001544FC(v13 + 1);
    }

    else
    {
      if (v14 > v13)
      {
        result = sub_10015814C();
        goto LABEL_31;
      }

      sub_10015952C(v13 + 1);
    }

    v15 = *v3;
    Hasher.init(_seed:)();
    sub_1003CF3B8(v67);
    result = Hasher._finalize()();
    v16 = v15 + 56;
    v17 = -1 << *(v15 + 32);
    a2 = result & ~v17;
    if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v18 = ~v17;
      v19 = *a1;
      v55 = a1[1];
      v54 = a1[2];
      v50 = a1[3];
      v47 = a1[4];
      v64 = v19;
      v65 = *(v19 + 16);
      v61 = v63 + 16;
      v20 = (v63 + 8);
      v53 = v15;
      v52 = v15 + 56;
      v51 = v18;
      do
      {
        v22 = (*(v15 + 48) + 40 * a2);
        v66 = *v22;
        if (*(v66 + 16) == v65)
        {
          v23 = v22[2];
          v56 = v22[1];
          v57 = v23;
          v24 = v22[3];
          v25 = v22[4];
          v58 = a2;
          v59 = v25;
          v60 = v24;
          if (v65)
          {
            v26 = *(v63 + 80);
            v27 = v66;

            if (v27 != v64)
            {
              v28 = 0;
              v29 = (v26 + 32) & ~v26;
              v30 = v66 + v29;
              v31 = v64 + v29;
              while (v28 < *(v66 + 16))
              {
                v32 = *(v63 + 72) * v28;
                v33 = *(v63 + 16);
                v33(v12, v30 + v32, v7);
                if (v28 >= *(v64 + 16))
                {
                  goto LABEL_34;
                }

                v34 = v12;
                v35 = v62;
                v33(v62, v31 + v32, v7);
                sub_10015D610(&qword_10083BCB0, &type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet, &protocol conformance descriptor for ISO18013ReaderRequest.AlternativeDataElementsSet);
                v36 = dispatch thunk of static Equatable.== infix(_:_:)();
                v37 = *v20;
                v38 = v35;
                v12 = v34;
                (*v20)(v38, v7);
                v37(v34, v7);
                if ((v36 & 1) == 0)
                {

                  a2 = v58;
                  v15 = v53;
                  goto LABEL_30;
                }

                if (v65 == ++v28)
                {
                  goto LABEL_22;
                }
              }

              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }
          }

          else
          {
          }

LABEL_22:
          a2 = v58;
          v39 = v56 == v55 && v57 == v54;
          v15 = v53;
          if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_10014EA44(v60, v50))
          {
            v21 = sub_10014DA5C(v59, v47);

            v16 = v52;
            v18 = v51;
            if (v21)
            {
              goto LABEL_36;
            }
          }

          else
          {

LABEL_30:
            v16 = v52;
            v18 = v51;
          }
        }

        a2 = (a2 + 1) & v18;
      }

      while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_31:
  v40 = *v48;
  *(v40 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v41 = *(v40 + 48) + 40 * a2;
  v42 = v49;
  v43 = v49[1];
  *v41 = *v49;
  *(v41 + 16) = v43;
  *(v41 + 32) = *(v42 + 4);
  v44 = *(v40 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v40 + 16) = v46;
  }

  return result;
}

uint64_t sub_100156F44(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for MobileDocumentElement();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001548CC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1001585C0(&type metadata accessor for MobileDocumentElement, &qword_10083BCD8, &qword_1006DA1F8);
      goto LABEL_12;
    }

    sub_100159920(v10 + 1);
  }

  v12 = *v3;
  sub_10015D610(&qword_10083BCC8, &type metadata accessor for MobileDocumentElement, &protocol conformance descriptor for MobileDocumentElement);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10015D610(&qword_10083BCD0, &type metadata accessor for MobileDocumentElement, &protocol conformance descriptor for MobileDocumentElement);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10015720C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for MobileDocumentType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100154C28(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1001585C0(&type metadata accessor for MobileDocumentType, &qword_10083BCA0, &qword_1006DA1E0);
      goto LABEL_12;
    }

    sub_100159C3C(v10 + 1);
  }

  v12 = *v3;
  sub_10015D610(&qword_100834750, &type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10015D610(&qword_100834758, &type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1001574D4(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v44 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (a3)
  {
    sub_100154F84(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1001582DC();
      goto LABEL_40;
    }

    sub_100159F58(v6 + 1);
  }

  v60 = *v3;
  Hasher.init(_seed:)();
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  v12 = *(v5 + 48);
  v13 = *(v5 + 56);
  v15 = *(v5 + 64);
  v14 = *(v5 + 72);
  v46 = *(v5 + 80);
  v45 = *(v5 + 88);
  v57 = *(v5 + 8);
  v58 = *v5;
  String.hash(into:)();
  v53 = v8;
  Hasher._combine(_:)(v8);
  v51 = v10;
  v52 = v9;
  String.hash(into:)();
  v49 = v12;
  v50 = v11;
  String.hash(into:)();
  v47 = v15;
  v48 = v13;
  String.hash(into:)();
  v42 = v14;
  String.hash(into:)();
  v16 = *(v5 + 96);
  Hasher._combine(_:)(v45 & 1);
  v41 = v16;
  Hasher._combine(_:)(v16);
  result = Hasher._finalize()();
  v17 = -1 << *(v60 + 32);
  a2 = result & ~v17;
  v56 = v60 + 56;
  if ((*(v60 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v55 = ~v17;
    v54 = *(v60 + 48);
    while (1)
    {
      v18 = v54 + 104 * a2;
      result = *v18;
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v21 = *(v18 + 32);
      v22 = *(v18 + 40);
      v23 = *(v18 + 48);
      v24 = *(v18 + 56);
      v26 = *(v18 + 64);
      v25 = *(v18 + 72);
      v27 = *(v18 + 80);
      v61 = *(v18 + 88);
      v59 = *(v18 + 96);
      v28 = *v18 == v58 && *(v18 + 8) == v57;
      if (v28 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v20 == v53)
        {
          v29 = v19 == v52 && v21 == v51;
          if (v29 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
            v30 = v22 == v50 && v23 == v49;
            if (v30 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {
              v31 = v24 == v48 && v26 == v47;
              if (v31 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
              {
                v32 = v25 == v42 && v27 == v46;
                if (v32 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
                {
                  if (((v61 ^ v45) & 1) == 0 && v59 == v41)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      a2 = (a2 + 1) & v55;
      if (((*(v56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_40:
  v33 = *v43;
  *(*v43 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v34 = *(v33 + 48) + 104 * a2;
  v35 = *(v44 + 16);
  *v34 = *v44;
  *(v34 + 16) = v35;
  *(v34 + 96) = *(v44 + 96);
  v36 = *(v44 + 80);
  *(v34 + 64) = *(v44 + 64);
  *(v34 + 80) = v36;
  v37 = *(v44 + 48);
  *(v34 + 32) = *(v44 + 32);
  *(v34 + 48) = v37;
  v38 = *(v33 + 16);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v40;
  }

  return result;
}

uint64_t sub_100157828(uint64_t result, unint64_t a2, char a3)
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
    sub_100155314(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100158480();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10015A29C(v5 + 1);
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

uint64_t sub_100157948(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for CocoaError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100155538(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1001585C0(&type metadata accessor for CocoaError.Code, &qword_10083BC98, &qword_1006DA1D8);
      goto LABEL_12;
    }

    sub_10015A48C(v10 + 1);
  }

  v12 = *v3;
  sub_10015D610(&qword_10083BC88, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10015D610(&qword_10083BC90, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100157C10()
{
  v1 = v0;
  sub_100007224(&qword_10083BC70, &unk_1006E0140);
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

void *sub_100157D6C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100007224(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_100157E9C()
{
  v1 = v0;
  sub_100007224(&qword_10083BCE0, &qword_1006DA200);
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
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v20;
        v22[2] = v21;
        sub_10000B8B8(v19, v20);
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

id sub_10015800C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100007224(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

void *sub_10015814C()
{
  v1 = v0;
  sub_100007224(&qword_10083BCB8, &qword_1006DA1F0);
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
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = (*(v4 + 48) + v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        v23[4] = v22;
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

void *sub_1001582DC()
{
  v1 = v0;
  sub_100007224(&qword_10083BD18, &qword_1006DA230);
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
    for (i = (v9 + 63) >> 6; v11; result = sub_10015D178(v24, v23))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 104 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[3];
      v19 = v17[4];
      v20 = v17[5];
      v25 = *(v17 + 12);
      v24[4] = v19;
      v24[5] = v20;
      v24[3] = v18;
      v22 = v17[1];
      v21 = v17[2];
      v24[0] = *v17;
      v24[1] = v22;
      v24[2] = v21;
      memmove((*(v4 + 48) + v16), v17, 0x68uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_100158480()
{
  v1 = v0;
  sub_100007224(&qword_10083BD08, &qword_1006DA220);
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

void *sub_1001585C0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_100007224(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

Swift::Int sub_1001587F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007224(&qword_10083BC70, &unk_1006E0140);
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

Swift::Int sub_100158A30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007224(&qword_10083BD30, &qword_1006DA248);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_100158DEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007224(&qword_10083BD20, &qword_1006DA238);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_100159138(uint64_t a1)
{
  v2 = *v1;
  sub_100007224(&qword_10083BCE0, &qword_1006DA200);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  v20 = v2;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = (*(v20 + 48) + 24 * (v11 | (v5 << 6)));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      Hasher.init(_seed:)();
      sub_10000B8B8(v15, v16);

      Data.hash(into:)();
      sub_1003D4B28(v21, v17);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(v4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v18 = (*(v4 + 48) + 24 * result);
      *v18 = v15;
      v18[1] = v16;
      v18[2] = v17;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_14;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v19 = v4;
  }

  return result;
}

Swift::Int sub_100159320(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100007224(a2, a3);
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

Swift::Int sub_10015952C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007224(&qword_10083BCB8, &qword_1006DA1F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
    v38 = v1;
    v39 = (v8 + 63) >> 6;
    v11 = result + 56;
    v40 = v3 + 56;
    v41 = v3;
    v42 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v43 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 40 * (v15 | (v6 << 6)));
      v19 = *v18;
      v44 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      v22 = v18[4];
      Hasher.init(_seed:)();
      v23 = *(v19 + 16);
      Hasher._combine(_:)(v23);
      v45 = v19;
      v46 = v20;
      if (v23)
      {
        v24 = *(type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet() - 8);
        v25 = v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v26 = *(v24 + 72);
        sub_10015D610(&qword_10083BCC0, &type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet, &protocol conformance descriptor for ISO18013ReaderRequest.AlternativeDataElementsSet);

        do
        {
          dispatch thunk of Hashable.hash(into:)();
          v25 += v26;
          --v23;
        }

        while (v23);
      }

      else
      {
      }

      String.hash(into:)();
      v27 = *(v21 + 16);
      Hasher._combine(_:)(v27);
      if (v27)
      {
        v28 = (v21 + 40);
        do
        {
          v29 = *(v28 - 1);
          v30 = *v28;
          sub_10000B8B8(v29, *v28);
          Data.hash(into:)();
          sub_10000B90C(v29, v30);
          v28 += 2;
          --v27;
        }

        while (v27);
      }

      sub_10015B46C(v47, v22);
      result = Hasher._finalize()();
      v5 = v42;
      v31 = -1 << *(v42 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v11 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v13 = v45;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v11 + 8 * v33);
          if (v37 != -1)
          {
            v12 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_36;
      }

      v12 = __clz(__rbit64((-1 << v32) & ~*(v11 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v13 = v45;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v14 = (*(v42 + 48) + 40 * v12);
      *v14 = v13;
      v14[1] = v44;
      v14[2] = v46;
      v14[3] = v21;
      v14[4] = v22;
      ++*(v42 + 16);
      v7 = v40;
      v3 = v41;
      v10 = v43;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v39)
      {

        v2 = v38;
        goto LABEL_34;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {

LABEL_34:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100159920(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for MobileDocumentElement();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100007224(&qword_10083BCD8, &qword_1006DA1F8);
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
      sub_10015D610(&qword_10083BCC8, &type metadata accessor for MobileDocumentElement, &protocol conformance descriptor for MobileDocumentElement);
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

uint64_t sub_100159C3C(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for MobileDocumentType();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100007224(&qword_10083BCA0, &qword_1006DA1E0);
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
      sub_10015D610(&qword_100834750, &type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
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

Swift::Int sub_100159F58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007224(&qword_10083BD18, &qword_1006DA230);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v37 = v2;
    v38 = v3 + 56;
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
    v39 = v10;
    v40 = result;
    v41 = v3;
    while (v9)
    {
      v19 = __clz(__rbit64(v9));
      v42 = (v9 - 1) & v9;
LABEL_15:
      v22 = *(v3 + 48) + 104 * (v19 | (v6 << 6));
      v24 = *v22;
      v23 = *(v22 + 16);
      v47 = *(v22 + 32);
      v25 = *(v22 + 48);
      v26 = *(v22 + 64);
      v27 = *(v22 + 80);
      v51 = *(v22 + 96);
      v49 = v26;
      v50 = v27;
      v48 = v25;
      v45 = v24;
      v46 = v23;
      Hasher.init(_seed:)();
      v28 = v46;
      v43 = BYTE8(v50);
      sub_10015D178(&v45, v44);
      String.hash(into:)();
      Hasher._combine(_:)(v28);
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      v29 = v51;
      Hasher._combine(_:)(v43);
      Hasher._combine(_:)(v29);
      result = Hasher._finalize()();
      v5 = v40;
      v30 = -1 << *(v40 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v11 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v3 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v11 + 8 * v32);
          if (v36 != -1)
          {
            v12 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v31) & ~*(v11 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v3 = v41;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v40 + 48) + 104 * v12;
      v14 = v47;
      v15 = v45;
      *(v13 + 16) = v46;
      *(v13 + 32) = v14;
      v16 = v48;
      v17 = v49;
      v18 = v50;
      *(v13 + 96) = v51;
      *(v13 + 64) = v17;
      *(v13 + 80) = v18;
      *(v13 + 48) = v16;
      *v13 = v15;
      ++*(v40 + 16);
      v10 = v39;
      v9 = v42;
    }

    v20 = v6;
    while (1)
    {
      v6 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v37;
        goto LABEL_26;
      }

      v21 = *(v38 + 8 * v6);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
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

uint64_t sub_10015A29C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007224(&qword_10083BD08, &qword_1006DA220);
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

uint64_t sub_10015A48C(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for CocoaError.Code();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100007224(&qword_10083BC98, &qword_1006DA1D8);
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
      sub_10015D610(&qword_10083BC88, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
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

void sub_10015A7A8(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v65 = type metadata accessor for IdentityIntentToStore();
  v3 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for IdentityElement();
  v5 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_10083AD08, &qword_1006D8FD0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = *(a2 + 64);
  v48 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v47 = (v14 + 63) >> 6;
  v51 = v5 + 16;
  v50 = v3 + 16;
  v61 = (v5 + 32);
  v17 = (v3 + 32);
  v54 = v5;
  v55 = v3;
  v57 = (v3 + 8);
  v58 = (v5 + 8);
  v56 = a2;

  v18 = 0;
  v19 = 0;
  v53 = v10;
  v52 = v12;
  v49 = (v3 + 32);
  if (v16)
  {
    while (1)
    {
      v60 = v18;
      v20 = v19;
LABEL_13:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v56;
      v26 = v54;
      v27 = v62;
      v28 = v63;
      (*(v54 + 16))(v62, *(v56 + 48) + *(v54 + 72) * v24, v63);
      v29 = v55;
      v30 = v64;
      v31 = v65;
      (*(v55 + 16))(v64, *(v25 + 56) + *(v55 + 72) * v24, v65);
      v32 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
      v33 = *(v32 + 48);
      v34 = *(v26 + 32);
      v10 = v53;
      v34(v53, v27, v28);
      v35 = *(v29 + 32);
      v17 = v49;
      v35(&v10[v33], v30, v31);
      (*(*(v32 - 8) + 56))(v10, 0, 1, v32);
      v22 = v20;
      v12 = v52;
      v18 = v60;
LABEL_14:
      sub_1000B1FC8(v10, v12, &qword_10083AD08, &qword_1006D8FD0);
      v36 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
      if ((*(*(v36 - 8) + 48))(v12, 1, v36) == 1)
      {
        break;
      }

      v37 = *(v36 + 48);
      v38 = v62;
      v39 = v63;
      (*v61)(v62, v12, v63);
      v40 = &v12[v37];
      v42 = v64;
      v41 = v65;
      (*v17)(v64, v40, v65);
      v43 = *(v59 + 48);
      v68 = *(v59 + 32);
      v69 = v43;
      v70 = *(v59 + 64);
      v44 = *(v59 + 16);
      v66 = *v59;
      v67 = v44;
      sub_10015D610(&qword_1008347A8, &type metadata accessor for IdentityElement, &protocol conformance descriptor for IdentityElement);
      dispatch thunk of Hashable.hash(into:)();
      (*v58)(v38, v39);
      sub_10015D610(&qword_10083BCF8, &type metadata accessor for IdentityIntentToStore, &protocol conformance descriptor for IdentityIntentToStore);
      dispatch thunk of Hashable.hash(into:)();
      (*v57)(v42, v41);
      v18 ^= Hasher._finalize()();
      v19 = v22;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(v18);
  }

  else
  {
LABEL_5:
    if (v47 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v47;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v47)
      {
        v45 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
        (*(*(v45 - 8) + 56))(v10, 1, 1, v45);
        v16 = 0;
        goto LABEL_14;
      }

      v16 = *(v48 + 8 * v20);
      ++v19;
      if (v16)
      {
        v60 = v18;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_10015ADA8(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  while (v5)
  {
    v19 = v7;
LABEL_11:
    v10 = (*(a2 + 56) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v11 = *v10;
    v12 = v10[1];
    v13 = *(a1 + 48);
    v20[2] = *(a1 + 32);
    v20[3] = v13;
    v21 = *(a1 + 64);
    v14 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v14;

    String.hash(into:)();

    Hasher._combine(_:)(*(v11 + 16));
    v15 = *(v11 + 16);
    if (v15)
    {
      v16 = v11 + 40;
      do
      {

        String.hash(into:)();

        v16 += 16;
        --v15;
      }

      while (v15);
    }

    v5 &= v5 - 1;

    sub_10015AF7C(v20, v12);
    swift_bridgeObjectRelease_n();

    v7 = Hasher._finalize()() ^ v19;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v19 = v7;
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10015AF7C(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v51 = type metadata accessor for Locale.Region();
  v3 = *(v51 - 8);
  v4 = __chkstk_darwin(v51);
  v47 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = v40 - v6;
  v7 = sub_100007224(&qword_10083BDF8, &qword_1006DA2C8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = v40 - v11;
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v40[1] = v3 + 16;
  v50 = (v3 + 32);
  v43 = v3;
  v44 = a2;
  v46 = (v3 + 8);

  v17 = 0;
  v18 = 0;
  v41 = v10;
  for (i = a2 + 64; ; v12 = i)
  {
    v52 = v17;
    if (!v15)
    {
      break;
    }

    v19 = v18;
LABEL_15:
    v23 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v24 = v23 | (v19 << 6);
    v26 = v43;
    v25 = v44;
    (*(v43 + 16))(v42, *(v44 + 48) + *(v43 + 72) * v24, v51);
    v27 = *(*(v25 + 56) + 8 * v24);
    v28 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
    v29 = *(v28 + 48);
    v10 = v41;
    (*(v26 + 32))();
    *&v10[v29] = v27;
    (*(*(v28 - 8) + 56))(v10, 0, 1, v28);

    v22 = v49;
LABEL_16:
    sub_1000B1FC8(v10, v22, &qword_10083BDF8, &qword_1006DA2C8);
    v30 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
    if ((*(*(v30 - 8) + 48))(v22, 1, v30) == 1)
    {

      Hasher._combine(_:)(v52);
      return;
    }

    v31 = *(v30 + 48);
    v32 = v51;
    v33 = v47;
    (*v50)(v47, v22, v51);
    v34 = *(v22 + v31);
    v35 = *(v48 + 48);
    v55 = *(v48 + 32);
    v56 = v35;
    v57 = *(v48 + 64);
    v36 = *(v48 + 16);
    v53 = *v48;
    v54 = v36;
    sub_10015D610(&qword_100834778, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
    dispatch thunk of Hashable.hash(into:)();
    (*v46)(v33, v32);
    Hasher._combine(_:)(*(v34 + 16));
    v37 = *(v34 + 16);
    if (v37)
    {
      v38 = v34 + 40;
      do
      {

        String.hash(into:)();

        v38 += 16;
        --v37;
      }

      while (v37);
    }

    v17 = Hasher._finalize()() ^ v52;
  }

  if (v16 <= v18 + 1)
  {
    v20 = v18 + 1;
  }

  else
  {
    v20 = v16;
  }

  v21 = v20 - 1;
  v22 = v49;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      v39 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
      (*(*(v39 - 8) + 56))(v10, 1, 1, v39);
      v15 = 0;
      v18 = v21;
      goto LABEL_16;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
}