uint64_t sub_100726080(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100706B30(&qword_100CB3448, &qword_1009ACFA8);
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        sub_100715738(v30, *(&v30 + 1));
      }

      result = sub_100937658();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1007262F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry(0);
  v35 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100706B30(&qword_100CB3430, &qword_1009ACF90);
  v36 = v4;
  result = sub_100937418();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
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
      v22 = *(*(v7 + 48) + 4 * v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_100729904(v24, v37, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
      }

      else
      {
        sub_100729A00(v24, v37, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
      }

      sub_100937668();
      sub_100937698(v22);
      result = sub_1009376C8();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 4 * v17) = v22;
      result = sub_100729904(v37, *(v9 + 56) + v23 * v17, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
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

LABEL_34:
  *v3 = v9;
  return result;
}

void sub_100726654(int64_t a1, uint64_t a2)
{
  v38 = sub_1009360A8();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1009370D8();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_100729AD8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = sub_100936AC8();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

unint64_t sub_100726974(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1009370D8() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 4 * v6);
      sub_100937668();
      sub_100937698(v9);
      result = sub_1009376C8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 4 * v3);
      v13 = (v11 + 4 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
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

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

id sub_100726B44(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100725138(a2);
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
      sub_10072552C(v13, a3 & 1);
      v8 = sub_100725138(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100014170(0, &unk_100CBA300, NSNumber_ptr);
        result = sub_1009375D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1007273E4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

uint64_t sub_100726CC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1009360A8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100725034(a2);
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
      sub_1007276C4();
      goto LABEL_7;
    }

    sub_100725A14(v17, a3 & 1);
    v22 = sub_100725034(a2);
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
      return sub_100727284(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1009375D8();
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

  return swift_unknownObjectRelease();
}

unint64_t sub_100726E8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1007250CC(a2);
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
      sub_100725DF0(v14, a3 & 1);
      result = sub_1007250CC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for IDSGroupSessionClientDataKey(0);
        result = sub_1009375D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100727944();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
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

unint64_t sub_100726FD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10072517C(a3);
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
      sub_100726080(v16, a4 & 1);
      result = sub_10072517C(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1009375D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100727AA0();
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

  return sub_1007156D8(v23, v24);
}

uint64_t sub_100727138(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1007250CC(a2);
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
      sub_100727C08();
      goto LABEL_7;
    }

    sub_1007262F8(v13, a3 & 1);
    v20 = sub_1007250CC(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for IDSGroupSessionClientDataKey(0);
    result = sub_1009375D8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry(0) - 8) + 72) * v10;

    return sub_10072A85C(a1, v18);
  }

LABEL_13:

  return sub_10072733C(v10, a2, a1, v16);
}

uint64_t sub_100727284(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1009360A8();
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

uint64_t sub_10072733C(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry(0);
  result = sub_100729904(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
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

void sub_1007273E4()
{
  v1 = v0;
  sub_100706B30(&qword_100CB34F0, &qword_1009AD018);
  v2 = *v0;
  v3 = sub_100937408();
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

void *sub_100727548()
{
  v1 = v0;
  sub_100706B30(&qword_100CB34F8, &qword_1009AD020);
  v2 = *v0;
  v3 = sub_100937408();
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
        v20 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v20;
        v19 = v18;
        result = sub_100715738(v20, *(&v20 + 1));
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

char *sub_1007276C4()
{
  v1 = v0;
  v33 = sub_1009360A8();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB34D8, &qword_1009AD010);
  v3 = *v0;
  v4 = sub_100937408();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
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
        result = swift_unknownObjectRetain();
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

  return result;
}

void sub_100727944()
{
  v1 = v0;
  sub_100706B30(&qword_100CB3458, &qword_1009ACFB8);
  v2 = *v0;
  v3 = sub_100937408();
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
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
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

void *sub_100727AA0()
{
  v1 = v0;
  sub_100706B30(&qword_100CB3448, &qword_1009ACFA8);
  v2 = *v0;
  v3 = sub_100937408();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_100715738(v18, *(&v18 + 1));
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

void *sub_100727C08()
{
  v1 = v0;
  v2 = type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB3430, &qword_1009ACF90);
  v5 = *v0;
  v6 = sub_100937408();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
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
        v21 = *(*(v5 + 48) + 4 * v20);
        v22 = *(v24 + 72) * v20;
        sub_100729A00(*(v5 + 56) + v22, v4, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
        *(*(v7 + 48) + 4 * v20) = v21;
        result = sub_100729904(v4, *(v7 + 56) + v22, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
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

        v1 = v23;
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

  return result;
}

uint64_t sub_100727E3C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_100937268();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1009373F8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100727F64(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = *v2;
  sub_100729AD8(&unk_100CB3660, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, "!4");
  v9 = sub_100936AC8();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_100729A00(*(v8 + 48) + v13 * v11, v7, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      sub_100729AD8(&unk_100CB34C0, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, &unk_1009B3328);
      v14 = sub_100936B18();
      sub_10072996C(v7, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_10072996C(a2, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    sub_100729A00(*(v8 + 48) + v13 * v11, v21, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100729A00(a2, v7, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    v22 = *v15;
    sub_100728554(v7, v11, isUniquelyReferenced_nonNull_native);
    v17 = v21;
    *v15 = v22;
    sub_100729904(a2, v17, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    return 1;
  }
}

uint64_t sub_10072821C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100706B30(&unk_100CB9CD0, &unk_1009AD000);
  result = sub_100937208();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_100729904(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      sub_100729AD8(&unk_100CB3660, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, "!4");
      result = sub_100936AC8();
      v21 = -1 << *(v8 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_100729904(v5, *(v8 + 48) + v16 * v20, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_100728554(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v24 = v8;
  v25 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10072821C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100728800();
      goto LABEL_12;
    }

    sub_100728A0C(v11 + 1);
  }

  v13 = *v3;
  sub_100729AD8(&unk_100CB3660, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, "!4");
  v14 = sub_100936AC8();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 72);
    do
    {
      sub_100729A00(*(v13 + 48) + v17 * a2, v10, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      sub_100729AD8(&unk_100CB34C0, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, &unk_1009B3328);
      v18 = sub_100936B18();
      sub_10072996C(v10, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100729904(a1, *(v19 + 48) + *(v24 + 72) * a2, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1009375C8();
  __break(1u);
  return result;
}

void *sub_100728800()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&unk_100CB9CD0, &unk_1009AD000);
  v6 = *v0;
  v7 = sub_1009371F8();
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
        sub_100729A00(*(v6 + 48) + v21, v5, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        result = sub_100729904(v5, *(v8 + 48) + v21, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
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

uint64_t sub_100728A0C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100706B30(&unk_100CB9CD0, &unk_1009AD000);
  result = sub_100937208();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_100729A00(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      sub_100729AD8(&unk_100CB3660, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, "!4");
      result = sub_100936AC8();
      v20 = -1 << *(v8 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100729904(v5, *(v8 + 48) + v15 * v19, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v8;
  }

  return result;
}

unint64_t sub_100728D14(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB3508, &unk_1009AD030);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100706B30(&qword_100CB34D8, &qword_1009AD010);
    v7 = sub_100937438();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012D50(v9, v5, &qword_100CB3508, &unk_1009AD030);
      result = sub_100725034(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1009360A8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100728EFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100706B30(&qword_100CB3458, &qword_1009ACFB8);
  v3 = sub_100937438();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1007250CC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_1007250CC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10072900C(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB3500, &qword_1009AD028);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100706B30(&qword_100CB3430, &qword_1009ACF90);
    v7 = sub_100937438();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100012D50(v9, v5, &qword_100CB3500, &qword_1009AD028);
      v11 = *v5;
      result = sub_1007250CC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 4 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry(0);
      result = sub_100729904(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100729284(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1007292D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB34F0, &qword_1009AD018);
    v3 = sub_100937438();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_100725138(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1007293CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB34F8, &qword_1009AD020);
    v3 = sub_100937438();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_100715738(v5, v6);
      result = sub_100725138(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1007294D0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100706B30(&qword_100CB3448, &qword_1009ACFA8);
  v3 = sub_100937438();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  result = sub_10072517C(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return _swiftEmptyDictionarySingleton;
  }

  v9 = a1 + 9;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = (v3[7] + 16 * result);
    *v10 = v4;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_100715738(v4, v6);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_10072517C(v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_1007295DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v32[3] = a11;
  v32[4] = a12;
  v16 = sub_100014250(v32);
  (*(*(a11 - 8) + 32))(v16, a7, a11);
  v17 = type metadata accessor for IDSDSessionKeyValueDelivery(0);
  v18 = objc_allocWithZone(v17);
  sub_1007C9A6C(12);
  v19 = &v18[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_participantProvider];
  *&v18[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_participantProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_state;
  swift_unknownObjectWeakInit();
  v29 = sub_100728D14(&_swiftEmptyArrayStorage);
  v30 = sub_100728EFC(&_swiftEmptyArrayStorage);
  v31 = sub_10072900C(&_swiftEmptyArrayStorage);
  sub_100706B30(&unk_100CB3240, &unk_1009ACC10);
  v21 = swift_allocObject();
  *(v21 + 48) = 0;
  sub_10072924C(v28, v21 + 16);
  *&v18[v20] = v21;
  v22 = &v18[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_groupID];
  *v22 = a2;
  *(v22 + 1) = a3;
  swift_unknownObjectWeakInit();
  sub_100729834(v28, &v18[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_weakMetricsCollector]);
  swift_beginAccess();
  *(v19 + 1) = a6;
  swift_unknownObjectWeakAssign();
  sub_100022B2C(v32, &v18[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_identityProvider]);
  *&v18[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_pushTokensForCapabilityProvider] = a8;
  sub_100022B2C(a9, &v18[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_cryptoHandler]);
  v23 = *&v18[v20];
  swift_unknownObjectRetain();

  os_unfair_lock_lock(v23 + 12);
  sub_10072A994(&v23[4]);
  os_unfair_lock_unlock(v23 + 12);

  v27.receiver = v18;
  v27.super_class = v17;
  v24 = objc_msgSendSuper2(&v27, "init");
  sub_100012970(a9);
  sub_100012970(v32);
  return v24;
}

uint64_t sub_100729904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10072996C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007299E8(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1007156CC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100729A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100729AD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100729B20(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1009373F8())
    {
LABEL_3:
      sub_100706B30(&unk_100CB34B0, &qword_1009ACFF8);
      v3 = sub_100937228();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1009373F8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_100937268();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_100937028(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_100937038();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_100937028(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_100937038();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

id sub_100729DEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_groupID);
  v7 = *(a2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_groupID + 8);
  v8 = *((swift_isaMask & *a2) + 0x108);

  v8(v9);
  v11 = v10;
  v12 = *(a2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_identityController);
  sub_100022B2C(a2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_cryptoHandler, v29);
  v28[3] = type metadata accessor for IDSGroupEncryptionIdentityController(0);
  v28[4] = &off_100BE96E8;
  v28[0] = v12;
  v13 = type metadata accessor for IDSDSessionKeyValueDelivery(0);
  v14 = objc_allocWithZone(v13);
  v15 = v12;
  sub_1007C9A6C(12);
  v16 = &v14[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_participantProvider];
  *&v14[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_participantProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_state;
  swift_unknownObjectWeakInit();
  v25 = sub_100728D14(&_swiftEmptyArrayStorage);
  v26 = sub_100728EFC(&_swiftEmptyArrayStorage);
  v27 = sub_10072900C(&_swiftEmptyArrayStorage);
  sub_100706B30(&unk_100CB3240, &unk_1009ACC10);
  v18 = swift_allocObject();
  *(v18 + 48) = 0;
  sub_10072924C(v24, v18 + 16);
  *&v14[v17] = v18;
  v19 = &v14[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_groupID];
  *v19 = v6;
  *(v19 + 1) = v7;
  swift_unknownObjectWeakInit();
  sub_100729834(v24, &v14[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_weakMetricsCollector]);
  swift_beginAccess();
  *(v16 + 1) = v11;
  swift_unknownObjectWeakAssign();
  sub_100022B2C(v28, &v14[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_identityProvider]);
  *&v14[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_pushTokensForCapabilityProvider] = a4;
  sub_100022B2C(v29, &v14[OBJC_IVAR____TtC17identityservicesd27IDSDSessionKeyValueDelivery_cryptoHandler]);
  v20 = *&v14[v17];
  swift_unknownObjectRetain();

  os_unfair_lock_lock(v20 + 12);
  sub_10072A994(&v20[4]);
  os_unfair_lock_unlock(v20 + 12);

  v23.receiver = v14;
  v23.super_class = v13;
  v21 = objc_msgSendSuper2(&v23, "init");
  swift_unknownObjectRelease();
  sub_100012970(v29);
  sub_100012970(v28);
  return v21;
}

void sub_10072A0C8(uint64_t a1)
{
  type metadata accessor for IDSGroupSessionClientDataEncryption(319);
  if (v1 <= 0x3F)
  {
    sub_10072A3B0(319, &qword_100CBA280, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1009360A8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10072A1C8(uint64_t a1)
{
  result = sub_1009364D8();
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

uint64_t sub_10072A298(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10072A2E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10072A330(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10072A350(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void sub_10072A3B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10072A448()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100724920;

  return sub_100723E04(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10072A520()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10072A990;

  return sub_100724750(v2, v3, v4);
}

uint64_t sub_10072A5E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10072A620(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10072A990;

  return sub_100724838(a1, v4, v5, v6);
}

uint64_t sub_10072A6EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10072A990;

  return sub_100724D10(a1, v4);
}

uint64_t sub_10072A7A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100724920;

  return sub_100724D10(a1, v4);
}

uint64_t sub_10072A85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSDSessionKeyValueDeliveryLocalEntry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10072A8C0()
{
  result = qword_100CB3470;
  if (!qword_100CB3470)
  {
    sub_100014170(255, &unk_100CBA300, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3470);
  }

  return result;
}

void sub_10072A9FC(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*sub_10072AA64(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10072AB04;
}

void sub_10072AB04(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_10072ABEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v25 = sub_100936F78();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100936F38();
  __chkstk_darwin(v10);
  v11 = sub_100936528();
  __chkstk_darwin(v11 - 8);
  v24 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_q;
  v12 = sub_100014170(0, &qword_100CB3510, OS_dispatch_queue_ptr);
  v23[0] = "@NSString16@NSString24";
  v23[1] = v12;
  sub_100936508();
  v32 = &_swiftEmptyArrayStorage;
  sub_100014A90(&qword_100CB2AB8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100706B30(&unk_100CB3520, &qword_1009AD040);
  sub_10071499C(&qword_100CB2AC0, &unk_100CB3520, &qword_1009AD040);
  sub_1009370B8();
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  *&v5[v24] = sub_100936F98();
  *&v5[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1007C9A6C(2);
  *&v5[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_handlers] = &_swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_desired] = &_swiftEmptySetSingleton;
  *&v5[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlySent] = &_swiftEmptySetSingleton;
  *&v5[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlyAcked] = &_swiftEmptySetSingleton;
  v13 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_lock;
  sub_100706B30(&unk_100CB3540, &qword_1009B31F0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&v5[v13] = v14;
  *&v5[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_setGenerationCount] = 0;
  *&v5[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_sendGenerationCount] = 0;
  v15 = v26;
  sub_100022B2C(v26, &v6[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_cryptoHandler]);
  v16 = &v6[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_service];
  v17 = v28;
  *v16 = v27;
  v16[1] = v17;
  v18 = &v6[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_sessionID];
  v19 = v30;
  *v18 = v29;
  v18[1] = v19;
  v20 = type metadata accessor for IDSGroupQUICMaterialExchangeController(0);
  v31.receiver = v6;
  v31.super_class = v20;
  v21 = objc_msgSendSuper2(&v31, "init");
  sub_100012970(v15);
  return v21;
}

uint64_t type metadata accessor for IDSGroupQUICMaterialExchangeController(uint64_t a1)
{
  result = qword_100CC0118;
  if (!qword_100CC0118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10072AFD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_10072FFE8();
  os_unfair_lock_unlock(v1 + 4);

  return (*((swift_isaMask & *v0) + 0x188))(v2);
}

void sub_10072B0A4()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_desired;
  *&v1[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_desired] = *(v0 + 24);

  v3 = *&v1[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_setGenerationCount];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *&v1[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_setGenerationCount] = v5;

    v6 = v1;
    v7 = sub_1009364B8();
    v8 = sub_100936F18();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_10001273C(0xD000000000000017, 0x8000000100AFF8D0, &v11);
      *(v9 + 12) = 2048;
      *(v9 + 14) = *(*&v1[v2] + 16);

      _os_log_impl(&_mh_execute_header, v7, v8, "%s: desired: %ld", v9, 0x16u);
      sub_100012970(v10);
    }

    else
    {
    }
  }
}

uint64_t sub_10072B21C()
{
  v1 = sub_1009364F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100936528();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_q];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100730010;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000154AC;
  aBlock[3] = &unk_100BE6D68;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_100936508();
  v14 = &_swiftEmptyArrayStorage;
  sub_100014A90(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100706B30(&unk_100CB3550, &qword_1009AC360);
  sub_10071499C(&qword_100CB4AB0, &unk_100CB3550, &qword_1009AC360);
  sub_1009370B8();
  sub_100936F88();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_10072B520()
{
  v112 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v114 = *(v112 - 8);
  __chkstk_darwin(v112);
  *&v113 = &v104 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v111 = &v104 - v3;
  __chkstk_darwin(v4);
  v116 = &v104 - v5;
  __chkstk_darwin(v6);
  v115 = &v104 - v7;
  v8 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_lock;
  v9 = *&v0[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_lock];

  os_unfair_lock_lock(v9 + 4);

  v10 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_l;
  v11 = v0;
  v120 = v0;
  v121 = v10;
  v12 = sub_1009364B8();
  v13 = sub_100936F18();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_10001273C(0xD00000000000001FLL, 0x8000000100AFF840, aBlock);
    *(v14 + 12) = 2048;
    *(v14 + 14) = *(*&v11[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_desired] + 16);
    *(v14 + 22) = 2048;
    *(v14 + 24) = *(*&v11[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlySent] + 16);

    _os_log_impl(&_mh_execute_header, v12, v13, "%s: checking if we have materials to send (desired: %ld, currentlySent: %ld)", v14, 0x20u);
    sub_100012970(v15);
  }

  else
  {
  }

  v106 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_desired;
  v16 = *&v11[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_desired];
  v17 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlySent;
  if (*(*&v11[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlySent] + 16) <= *(v16 + 16) >> 3)
  {
    aBlock[0] = *&v11[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_desired];

    sub_100730164(v20);

    v19 = aBlock[0];
  }

  else
  {

    v19 = sub_10073054C(v18, v16);
  }

  v21 = v120;
  if (v19[2])
  {

    v22 = sub_1009364B8();
    v23 = sub_100936F18();
    v24 = os_log_type_enabled(v22, v23);
    v25 = &off_1009AB000;
    v104 = v8;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_10001273C(0xD00000000000001FLL, 0x8000000100AFF840, aBlock);
      *(v26 + 12) = 2048;
      *(v26 + 14) = v19[2];

      _os_log_impl(&_mh_execute_header, v22, v23, "%s: %ld materials to send", v26, 0x16u);
      sub_100012970(v27);
    }

    else
    {
    }

    v118 = (*((swift_isaMask & *v11) + 0x198))(v19);
    v105 = v30;
    v31 = sub_1009364B8();
    v32 = sub_100936EE8();
    v33 = os_log_type_enabled(v31, v32);
    v117 = v19;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      v119 = 0x8000000100AFF840;
      *(v34 + 4) = sub_10001273C(0xD00000000000001FLL, 0x8000000100AFF840, aBlock);
      _os_log_impl(&_mh_execute_header, v31, v32, "%s: previously sent", v34, 0xCu);
      sub_100012970(v35);
    }

    else
    {

      v119 = 0x8000000100AFF840;
    }

    v107 = v17;
    v36 = *&v11[v17];
    v37 = v36 + 56;
    v38 = 1 << *(v36 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v36 + 56);
    v41 = (v38 + 63) >> 6;

    v42 = 0;
    *&v43 = 136315394;
    v110 = v43;
    v44 = v116;
    v108 = v36;
    if (v40)
    {
      goto LABEL_22;
    }

LABEL_23:
    while (1)
    {
      v45 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v45 >= v41)
      {

        v55 = *&v11[v106];
        v56 = v105;
        if (*(v105 + 16) <= *(v55 + 16) >> 3)
        {
          aBlock[0] = *&v11[v106];

          sub_100730164(v56);
          v57 = aBlock[0];
        }

        else
        {

          v57 = sub_10073054C(v56, v55);
        }

        v58 = v118;
        v59 = v107;
        *&v11[v107] = v57;
        v115 = v57;

        v60 = v11;

        v31 = sub_1009364B8();
        LOBYTE(v37) = sub_100936F18();
        v61 = os_log_type_enabled(v31, v37);
        v116 = v60;
        if (!v61)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_37;
        }

        v36 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock[0] = v25;
        *v36 = 136315906;
        *(v36 + 4) = sub_10001273C(0xD00000000000001FLL, v119, aBlock);
        *(v36 + 12) = 2048;
        *(v36 + 14) = *(*&v11[v59] + 16);

        *(v36 + 22) = 2048;
        if (!(v58 >> 62))
        {
          v62 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_35;
        }

        goto LABEL_64;
      }

      v40 = *(v37 + 8 * v45);
      ++v42;
      if (v40)
      {
        while (1)
        {
          v46 = __clz(__rbit64(v40));
          v40 &= v40 - 1;
          v47 = v115;
          sub_100733354(*(v36 + 48) + v114[9] * (v46 | (v45 << 6)), v115, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
          sub_1007322E0(v47, v44, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
          v31 = &v120[v121];
          v25 = sub_1009364B8();
          v48 = sub_100936EE8();
          if (os_log_type_enabled(v25, v48))
          {
            v49 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            aBlock[0] = v109;
            *v49 = v110;
            *(v49 + 4) = sub_10001273C(0xD00000000000001FLL, v119, aBlock);
            *(v49 + 12) = 2080;
            sub_100014A90(&qword_100CB3560, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, &unk_1009B3300);
            v50 = sub_100937548();
            v51 = v11;
            v53 = v52;
            sub_100732580(v116, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
            v54 = sub_10001273C(v50, v53, aBlock);
            v11 = v51;
            v44 = v116;

            *(v49 + 14) = v54;
            _os_log_impl(&_mh_execute_header, v25, v48, "%s    %s", v49, 0x16u);
            v31 = v109;
            swift_arrayDestroy();

            v36 = v108;

            v42 = v45;
            if (!v40)
            {
              goto LABEL_23;
            }
          }

          else
          {

            sub_100732580(v44, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
            v42 = v45;
            if (!v40)
            {
              goto LABEL_23;
            }
          }

LABEL_22:
          v45 = v42;
        }
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_64:
      v62 = sub_1009373F8();
LABEL_35:
      v63 = v105;
      *(v36 + 24) = v62;

      *(v36 + 32) = 2048;
      v64 = *(v63 + 16);

      *(v36 + 34) = v64;

      _os_log_impl(&_mh_execute_header, v31, v37, "%s: set currentlySent to %ld materials (%ld succeeded wrapping, %ld failed)", v36, 0x2Au);
      sub_100012970(v25);

LABEL_37:
      v31 = sub_1009364B8();
      v36 = sub_100936EE8();
      v65 = os_log_type_enabled(v31, v36);
      v66 = v107;
      if (v65)
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        aBlock[0] = v68;
        *v67 = 136315138;
        *(v67 + 4) = sub_10001273C(0xD00000000000001FLL, v119, aBlock);
        _os_log_impl(&_mh_execute_header, v31, v36, "%s: newly sent", v67, 0xCu);
        sub_100012970(v68);
      }

      v69 = v113;
      v70 = *&v11[v66];
      v71 = v70 + 56;
      v72 = 1 << *(v70 + 32);
      v73 = -1;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      v74 = v73 & *(v70 + 56);
      v37 = (v72 + 63) >> 6;

      v75 = 0;
      v109 = v70;
      if (v74)
      {
        while (2)
        {
          v76 = v75;
LABEL_48:
          v77 = __clz(__rbit64(v74));
          v74 &= v74 - 1;
          v78 = v111;
          sub_100733354(*(v70 + 48) + v114[9] * (v77 | (v76 << 6)), v111, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
          sub_1007322E0(v78, v69, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
          v31 = &v120[v121];
          v36 = sub_1009364B8();
          v11 = sub_100936EE8();
          if (os_log_type_enabled(v36, v11))
          {
            v25 = swift_slowAlloc();
            aBlock[0] = swift_slowAlloc();
            *v25 = v110;
            *(v25 + 1) = sub_10001273C(0xD00000000000001FLL, v119, aBlock);
            *(v25 + 6) = 2080;
            sub_100014A90(&qword_100CB3560, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, &unk_1009B3300);
            v79 = sub_100937548();
            v81 = v80;
            sub_100732580(v113, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
            v31 = sub_10001273C(v79, v81, aBlock);
            v69 = v113;

            *(v25 + 14) = v31;
            _os_log_impl(&_mh_execute_header, v36, v11, "%s    %s", v25, 0x16u);
            swift_arrayDestroy();
            v70 = v109;

            v75 = v76;
            if (v74)
            {
              continue;
            }
          }

          else
          {

            sub_100732580(v69, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
            v75 = v76;
            if (v74)
            {
              continue;
            }
          }

          break;
        }
      }

      while (1)
      {
        v76 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          goto LABEL_62;
        }

        if (v76 >= v37)
        {
          break;
        }

        v74 = *(v71 + 8 * v76);
        ++v75;
        if (v74)
        {
          goto LABEL_48;
        }
      }

      v82 = v116;
      v83 = *&v116[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_sendGenerationCount];
      v84 = v83 + 1;
      if (!__OFADD__(v83, 1))
      {
        *&v116[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_sendGenerationCount] = v84;
        v85 = *&v120[v104];

        os_unfair_lock_unlock(v85 + 4);

        v86 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_handlers;
        swift_beginAccess();
        v87 = *(v82 + v86);
        v88 = *(v87 + 16);
        if (v88)
        {
          v89 = v87 + 32;
          v114 = v123;
          v112 = v87;

          *&v90 = 136315138;
          v113 = v90;
          v92 = v116;
          v91 = v117;
          v93 = v115;
          do
          {
            sub_100732B84(v89, v124);
            v94 = sub_1009364B8();
            v95 = sub_100936F18();
            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              aBlock[0] = v97;
              *v96 = v113;
              *(v96 + 4) = sub_10001273C(0xD00000000000001FLL, v119, aBlock);
              _os_log_impl(&_mh_execute_header, v94, v95, "%s: sending to handler", v96, 0xCu);
              sub_100012970(v97);
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v99 = Strong;
              sub_100014170(0, &qword_100CB3658, IDSQRProtoMaterial_ptr);
              isa = sub_100936CD8().super.isa;
              v101 = swift_allocObject();
              v101[2] = v92;
              v101[3] = v84;
              v101[4] = v91;
              v101[5] = v93;
              v123[2] = sub_100733348;
              v123[3] = v101;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              v123[0] = sub_10072D1C8;
              v123[1] = &unk_100BE6E88;
              v102 = _Block_copy(aBlock);
              v103 = v92;

              [v99 qrMaterialExchangePutMaterial:isa completionHandler:v102];
              _Block_release(v102);
              swift_unknownObjectRelease();
            }

            sub_100732BBC(v124);
            v89 += 8;
            --v88;
          }

          while (v88);
        }
      }
    }
  }

  v28 = *&v21[v8];

  os_unfair_lock_unlock(v28 + 4);
}

void sub_10072C574(char a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1009364F8();
  v85 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100936528();
  v84 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet(0);
  v88 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v86 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v15;
  __chkstk_darwin(v16);
  v92 = &v70 - v17;
  v97 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v94 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v70 - v20;
  __chkstk_darwin(v22);
  v96 = &v70 - v23;
  __chkstk_darwin(v24);
  v93 = &v70 - v25;
  v26 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_lock;
  v27 = *&a2[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_lock];

  os_unfair_lock_lock(v27 + 4);

  if (*&a2[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_sendGenerationCount] != a3)
  {
LABEL_30:
    v69 = *&a2[v26];

    os_unfair_lock_unlock(v69 + 4);

    return;
  }

  if ((a1 & 1) == 0)
  {
    v59 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlySent;
    v60 = *&a2[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlySent];
    if (*(a4 + 16) <= *(v60 + 16) >> 3)
    {
      aBlock[0] = *&a2[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlySent];

      sub_100730164(a4);
      v61 = aBlock[0];
    }

    else
    {

      v61 = sub_10073054C(a4, v60);
    }

    *&a2[v59] = v61;

    goto LABEL_30;
  }

  v71 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_sendGenerationCount;
  v77 = v12;
  v78 = v10;
  v72 = a5;
  v28 = a4 + 56;
  v29 = 1 << *(a4 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(a4 + 56);
  v91 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlyAcked;
  v76 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_q;
  v32 = (v29 + 63) >> 6;
  v75 = v100;
  v74 = (v85 + 8);
  v73 = (v84 + 8);

  v33 = 0;
  v82 = v26;
  v35 = v95;
  v34 = v96;
  v85 = a4 + 56;
  v84 = v32;
  v81 = a2;
  v83 = a4;
  if (v31)
  {
    while (1)
    {
      v36 = v33;
LABEL_11:
      v37 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v38 = v93;
      v39 = *(v94 + 72);
      sub_100733354(*(a4 + 48) + v39 * (v37 | (v36 << 6)), v93, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      sub_1007322E0(v38, v34, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      v40 = v34;
      v41 = *&a2[v91];
      if (!*(v41 + 16))
      {
        goto LABEL_17;
      }

      sub_100014A90(&unk_100CB3660, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, "!4");

      v42 = sub_100936AC8();
      v43 = -1 << *(v41 + 32);
      v44 = v42 & ~v43;
      if (((*(v41 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
      {
        break;
      }

      v45 = ~v43;
      while (1)
      {
        sub_100733354(*(v41 + 48) + v44 * v39, v21, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        sub_100014A90(&unk_100CB34C0, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, &unk_1009B3328);
        v46 = sub_100936B18();
        sub_100732580(v21, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        if (v46)
        {
          break;
        }

        v44 = (v44 + 1) & v45;
        if (((*(v41 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v34 = v96;
      sub_100732580(v96, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      v33 = v36;
      a2 = v81;
      a4 = v83;
      v26 = v82;
      v35 = v95;
LABEL_21:
      v28 = v85;
      v32 = v84;
      if (!v31)
      {
        goto LABEL_8;
      }
    }

LABEL_16:

    a2 = v81;
    a4 = v83;
    v26 = v82;
    v35 = v95;
    v40 = v96;
LABEL_17:
    sub_100733354(v40, v35, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    if (swift_getEnumCaseMultiPayload())
    {
      v34 = v40;
      sub_100732580(v40, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      sub_100732580(v35, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    }

    else
    {
      v47 = v92;
      sub_1007322E0(v35, v92, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
      v79 = *&a2[v76];
      v80 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet;
      v48 = v86;
      sub_100733354(v47, v86, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
      v49 = (*(v88 + 80) + 24) & ~*(v88 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = a2;
      sub_1007322E0(v48, v50 + v49, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
      v100[2] = sub_1007333BC;
      v100[3] = v50;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v100[0] = sub_1000154AC;
      v100[1] = &unk_100BE6ED8;
      v51 = _Block_copy(aBlock);
      v52 = a2;
      v53 = v89;
      sub_100936508();
      v98 = &_swiftEmptyArrayStorage;
      sub_100014A90(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100706B30(&unk_100CB3550, &qword_1009AC360);
      sub_10071499C(&qword_100CB4AB0, &unk_100CB3550, &qword_1009AC360);
      v54 = v77;
      v55 = v78;
      v34 = v96;
      sub_1009370B8();
      sub_100936F88();
      v56 = v51;
      v26 = v82;
      _Block_release(v56);
      v57 = v55;
      v35 = v95;
      (*v74)(v54, v57);
      v58 = v53;
      a4 = v83;
      (*v73)(v58, v90);
      sub_100732580(v92, v80);
      sub_100732580(v34, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    }

    v33 = v36;
    goto LABEL_21;
  }

  while (1)
  {
LABEL_8:
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v36 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v36);
    ++v33;
    if (v31)
    {
      goto LABEL_11;
    }
  }

  *&a2[v91] = v72;

  v62 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlySent;
  v63 = *&a2[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlySent];

  sub_10072CFD0(a4, v63);
  *&a2[v62] = v64;

  v65 = *&a2[v71];
  v66 = __OFADD__(v65, 1);
  v67 = v65 + 1;
  if (!v66)
  {
    *&a2[v71] = v67;
    v68 = *&a2[v26];

    os_unfair_lock_unlock(v68 + 4);

    return;
  }

LABEL_34:
  __break(1u);
}

void sub_10072CFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v20[0] = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  __chkstk_darwin(v10);
  v12 = v20 - v11;
  v13 = 0;
  v20[1] = a2;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_100733354(*(a1 + 48) + *(v20[0] + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    sub_1007322E0(v12, v6, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    sub_100727F64(v9, v6);
    sub_100732580(v9, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return;
    }

    v16 = *(a1 + 56 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10072D1C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_10072D21C(uint64_t a1)
{
  v2 = type metadata accessor for IDSGroupEncryptionMaterialData(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v58 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v57 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v56 = &v46 - v9;
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  __chkstk_darwin(v13);
  v60 = &v46 - v14;
  v63 = &_swiftEmptySetSingleton;
  v62 = &_swiftEmptyArrayStorage;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a1 + 56);
  v54 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_cryptoHandler;
  v19 = (v16 + 63) >> 6;

  v20 = 0;
LABEL_5:
  v21 = v20;
  if (!v18)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v20 = v21;
LABEL_10:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = v60;
    sub_100733354(*(a1 + 48) + *(v6 + 72) * (v22 | (v20 << 6)), v60, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    sub_1007322E0(v23, v12, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    v24 = [objc_allocWithZone(IDSQRProtoMaterial) init];
    v25 = v12;
    if (v24)
    {
      break;
    }

    sub_100732580(v12, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    v21 = v20;
    if (!v18)
    {
LABEL_7:
      while (1)
      {
        v20 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v20 >= v19)
        {

          return;
        }

        v18 = *(v15 + 8 * v20);
        ++v21;
        if (v18)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_33;
    }
  }

  v26 = v24;
  v52 = v3;
  v46 = a1;
  [v24 setReceiverParticipantId:sub_1007BE608()];
  v55 = v25;
  v27 = sub_1007BE124((v59 + v54));
  v28 = 0;
  v61 = &_swiftEmptyArrayStorage;
  v30 = (v27 + 7);
  v29 = v27[7];
  v50 = v6;
  v51 = v27;
  v31 = 1 << *(v27 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & v29;
  v34 = (v31 + 63) >> 6;
  v47 = &_swiftEmptyArrayStorage;
  v48 = v34;
  v49 = (v27 + 7);
  if (!v33)
  {
    goto LABEL_18;
  }

  do
  {
    v35 = v28;
LABEL_21:
    v36 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v37 = v58;
    sub_100733354(v51[6] + *(v52 + 72) * (v36 | (v35 << 6)), v58, type metadata accessor for IDSGroupEncryptionMaterialData);
    v38 = sub_10072D9E8();
    sub_100732580(v37, type metadata accessor for IDSGroupEncryptionMaterialData);
    if (v38)
    {
      v41 = v38;
      sub_100936CC8();
      v6 = v50;
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100936D18();
      }

      sub_100936D38();

      v47 = v61;
      v28 = v35;
    }

    else
    {
      v53 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer;
      v39 = v57;
      sub_100733354(v55, v57, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      v40 = v56;
      sub_100727F64(v56, v39);
      sub_100732580(v40, v53);
      v28 = v35;
      v6 = v50;
    }

    v34 = v48;
    v30 = v49;
  }

  while (v33);
LABEL_18:
  while (1)
  {
    v35 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v35 >= v34)
    {

      sub_10072D7EC(v47);

      v42 = objc_allocWithZone(NSMutableArray);
      isa = sub_100936CD8().super.isa;

      v44 = [v42 initWithArray:isa];

      [v26 setMaterialInfos:v44];
      v45 = v26;
      sub_100936CC8();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100936D18();
      }

      sub_100936D38();

      v12 = v55;
      sub_100732580(v55, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      a1 = v46;
      v3 = v52;
      goto LABEL_5;
    }

    v33 = *&v30[8 * v35];
    ++v28;
    if (v33)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  __break(1u);
}

char *sub_10072D7EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1009373F8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100732750(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100937268();
        sub_100014170(0, &unk_100CB3690, IDSQRProtoMaterialInfo_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100732750((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100308C74(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100014170(0, &unk_100CB3690, IDSQRProtoMaterialInfo_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100732750((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100308C74(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_10072D9E8()
{
  v1 = v0;
  v2 = sub_1009360A8();
  v67 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v63 - v6;
  v8 = sub_100936B78();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1007BE4F4())
  {
    v66 = v2;
    v12 = *(v0 + OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_sessionID);
    v13 = *(v1 + OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_sessionID + 8);
    sub_100936B68();
    v65 = v12;
    v14 = sub_100936B48();
    v16 = v15;
    (*(v9 + 8))(v11, v8);
    if (v16 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      v70 = v14;
      v71 = v16;
      v27 = sub_10081B928();
      v29 = v28;
      sub_100935EC8();
      sub_1007156D8(v27, v29);
      v30 = *(v1 + OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_cryptoHandler + 32);
      sub_1000226D4((v1 + OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_cryptoHandler), *(v1 + OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_cryptoHandler + 24));
      v31 = v71;
      v32 = *(v30 + 64);
      v64 = v70;
      v33 = v32();
      v35 = v34;
      if (v36)
      {
        swift_errorRetain();
        v37 = sub_1009364B8();
        v38 = sub_100936EF8();
        sub_1007156CC(v33, v35, 1);
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v68 = v41;
          *v39 = 136315394;
          *(v39 + 4) = sub_10001273C(0xD000000000000035, 0x8000000100AFF890, &v68);
          *(v39 + 12) = 2112;
          swift_errorRetain();
          v42 = _swift_stdlib_bridgeErrorToNSError();
          *(v39 + 14) = v42;
          *v40 = v42;
          _os_log_impl(&_mh_execute_header, v37, v38, "%s: error signing: %@", v39, 0x16u);
          sub_100013814(v40, &qword_100CB36B0, &unk_1009AD140);

          sub_100012970(v41);

          sub_1007156CC(v33, v35, 1);
        }

        else
        {

          sub_1007156CC(v33, v35, 1);
        }

        sub_1007156D8(v64, v31);
        return 0;
      }

      else
      {
        v17 = [objc_allocWithZone(IDSQRProtoMaterialInfo) init];
        if (v17)
        {
          sub_10081BA9C(v7);
          v68 = sub_100936088();
          v69 = v43;
          v44 = sub_10072E1C8(&v68, &v70);
          v46 = v45;
          v47.super.isa = sub_100935E78().super.isa;
          v64 = v33;
          isa = v47.super.isa;
          sub_1007156D8(v44, v46);
          [v17 setMaterialId:isa];

          [v17 setMaterialType:sub_10081BCD8()];
          sub_100706B30(&unk_100CB36A0, &qword_1009AC7B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1009AC7A0;
          v68 = 0x64616F6C796170;
          v69 = 0xE700000000000000;
          sub_1009371E8();
          v50 = sub_10081B928();
          *(inited + 96) = &type metadata for Data;
          *(inited + 72) = v50;
          *(inited + 80) = v51;
          v68 = 0x496E6F6973736573;
          v69 = 0xE900000000000044;
          sub_1009371E8();
          *(inited + 168) = &type metadata for String;
          *(inited + 144) = v65;
          *(inited + 152) = v13;
          v68 = 0x727574616E676973;
          v69 = 0xE900000000000065;

          sub_1009371E8();
          *(inited + 240) = &type metadata for Data;
          v52 = v64;
          *(inited + 216) = v64;
          *(inited + 224) = v35;
          v53 = v52;
          sub_100715738(v52, v35);
          sub_100719CE8(inited);
          swift_setDeallocating();
          sub_100706B30(&qword_100CB2E90, &qword_1009AC7B8);
          swift_arrayDestroy();
          v54 = sub_100936A58().super.isa;

          v55 = JWEncodeDictionary();

          if (v55)
          {
            v56 = sub_100935EA8();
            v58 = v57;

            v55 = sub_100935E78().super.isa;
            sub_1007156D8(v56, v58);
          }

          v59 = v66;
          [v17 setMaterialContent:v55];

          [v17 setShortMaterialIdLength:sub_10081BBC8()];
          sub_1007156CC(v53, v35, 0);
          (*(v67 + 8))(v7, v59);
          v60 = v70;
          v61 = v71;
        }

        else
        {
          sub_1007156CC(v33, v35, 0);
          v60 = v64;
          v61 = v31;
        }

        sub_1007156D8(v60, v61);
      }
    }
  }

  else
  {
    v17 = [objc_allocWithZone(IDSQRProtoMaterialInfo) init];
    if (v17)
    {
      sub_10081BA9C(v4);
      v70 = sub_100936088();
      v71 = v18;
      v19 = sub_10072E1C8(&v70, &v72);
      v21 = v20;
      v22 = sub_100935E78().super.isa;
      sub_1007156D8(v19, v21);
      [v17 setMaterialId:v22];

      [v17 setMaterialType:sub_10081BCD8()];
      v23 = sub_10081B928();
      v25 = v24;
      v26 = sub_100935E78().super.isa;
      sub_1007156D8(v23, v25);
      [v17 setMaterialContent:v26];

      (*(v67 + 8))(v4, v2);
    }
  }

  return v17;
}

uint64_t sub_10072E1C8(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1000226D4(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_100717A28(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_100717AE0(v3, v4);
    }

    else
    {
      v6 = sub_100717B5C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_100012970(v8);
  return v6;
}

void *sub_10072E284()
{
  v28 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet(0);
  __chkstk_darwin(v28);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  if (!(&_swiftEmptyArrayStorage >> 62))
  {
    goto LABEL_2;
  }

LABEL_17:
  if (!sub_1009373F8())
  {
LABEL_2:
    v9 = &_swiftEmptySetSingleton;
    goto LABEL_3;
  }

  sub_100732894(&_swiftEmptyArrayStorage);
LABEL_3:
  v31 = v9;
  v25 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_lock;
  v10 = *(v0 + OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_lock);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(v0 + OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlyAcked);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 56);
  v26 = v0;
  v27 = v2 + 8;
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v0 = v29;
  while (v14)
  {
    v19 = v16;
LABEL_13:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    sub_100733354(*(v11 + 48) + *(v0 + 72) * (v20 | (v19 << 6)), v8, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    sub_1007322E0(v8, v5, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    if (swift_getEnumCaseMultiPayload())
    {
      v17 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer;
      v18 = v5;
    }

    else
    {
      sub_1007322E0(v5, v2, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
      sub_100732348(&v30, *&v27[*(v28 + 24)]);
      v0 = v29;

      v17 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet;
      v18 = v2;
    }

    sub_100732580(v18, v17);
    v16 = v19;
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v19 >= v15)
    {
      break;
    }

    v14 = *(v11 + 56 + 8 * v19);
    ++v16;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  v21 = v31;
  v22 = *(v26 + v25);

  os_unfair_lock_unlock(v22 + 4);

  return v21;
}

uint64_t sub_10072E5B4(void *a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_handlers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    v7 = 0;
    while (v7 < *(v4 + 16))
    {
      sub_100732B84(v6, v13);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100732BBC(v13);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
        }
      }

      ++v7;
      v6 += 8;
      if (v5 == v7)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  a1 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v3) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = sub_100730034(0, a1[2] + 1, 1, a1);
    *(v1 + v3) = a1;
  }

  v12 = a1[2];
  v11 = a1[3];
  if (v12 >= v11 >> 1)
  {
    a1 = sub_100730034((v11 > 1), v12 + 1, 1, a1);
  }

  a1[2] = v12 + 1;
  sub_100732BEC(v14, &a1[v12 + 4]);
  *(v1 + v3) = a1;
  return swift_endAccess();
}

uint64_t sub_10072E7A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_handlers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v4 = sub_100732CD0((v1 + v3), a1);
  result = swift_unknownObjectRelease();
  v6 = *(*(v1 + v3) + 16);
  if (v6 < v4)
  {
    __break(1u);
  }

  else
  {
    sub_100732F54(v4, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10072E924()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_100733200(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

void sub_10072EA24(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v144 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v146 = *(v144 - 8);
  __chkstk_darwin(v144);
  v135 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v138 = &v131 - v10;
  __chkstk_darwin(v11);
  v13 = &v131 - v12;
  __chkstk_darwin(v14);
  v139 = &v131 - v15;
  __chkstk_darwin(v16);
  v142 = (&v131 - v17);
  __chkstk_darwin(v18);
  v140 = &v131 - v19;
  v132 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_lock;
  v20 = *&v4[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_lock];

  os_unfair_lock_lock(v20 + 4);

  v148 = a1;
  v21 = sub_1009364B8();
  v22 = sub_100936F18();

  v23 = os_log_type_enabled(v21, v22);
  v136 = v13;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v149[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_10001273C(a2, a3, v149);
    _os_log_impl(&_mh_execute_header, v21, v22, "%sQUICMaterialExchangeController", v24, 0xCu);
    sub_100012970(v25);
  }

  v26 = v4;
  v27 = sub_1009364B8();
  v28 = sub_100936F18();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v149[0] = swift_slowAlloc();
    *v29 = 136315394;
    *(v29 + 4) = sub_10001273C(a2, a3, v149);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_10001273C(*&v26[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_service], *&v26[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_service + 8], v149);
    _os_log_impl(&_mh_execute_header, v27, v28, "%s    service=%s", v29, 0x16u);
    swift_arrayDestroy();
  }

  v30 = v26;
  v31 = sub_1009364B8();
  v32 = sub_100936F18();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = a3;
    v35 = swift_slowAlloc();
    v149[0] = v35;
    *v33 = 136315394;
    *(v33 + 4) = sub_10001273C(a2, v34, v149);
    *(v33 + 12) = 2048;
    *(v33 + 14) = *&v30[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_setGenerationCount];

    _os_log_impl(&_mh_execute_header, v31, v32, "%s    setGenerationCount=%ld", v33, 0x16u);
    sub_100012970(v35);
    a3 = v34;
  }

  else
  {
  }

  v36 = v30;
  v37 = sub_1009364B8();
  v38 = sub_100936F18();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v149[0] = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_10001273C(a2, a3, v149);
    *(v39 + 12) = 2048;
    *(v39 + 14) = *&v36[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_sendGenerationCount];

    _os_log_impl(&_mh_execute_header, v37, v38, "%s    sendGenerationCount=%ld", v39, 0x16u);
    sub_100012970(v40);
  }

  else
  {
  }

  v41 = sub_1009364B8();
  v42 = sub_100936F18();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v149[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_10001273C(a2, a3, v149);
    _os_log_impl(&_mh_execute_header, v41, v42, "%s    ", v43, 0xCu);
    sub_100012970(v44);
  }

  v45 = sub_1009364B8();
  v46 = sub_100936F18();

  v47 = os_log_type_enabled(v45, v46);
  v133 = v4;
  v145 = a2;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v149[0] = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_10001273C(a2, a3, v149);
    _os_log_impl(&_mh_execute_header, v45, v46, "%s    Desired Materials:", v48, 0xCu);
    sub_100012970(v49);
  }

  v137 = v36;
  v134 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_desired;
  v50 = *&v36[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_desired];
  v53 = *(v50 + 56);
  v52 = v50 + 56;
  v51 = v53;
  v54 = 1 << *(*&v36[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_desired] + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & v51;
  v57 = (v54 + 63) >> 6;
  v141 = *&v36[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_desired];

  v58 = 0;
  *&v59 = 136315394;
  v143 = v59;
  v147 = a3;
  v60 = v142;
  if (v56)
  {
    goto LABEL_20;
  }

  while (1)
  {
LABEL_21:
    v61 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v61 >= v57)
    {
      break;
    }

    v56 = *(v52 + 8 * v61);
    ++v58;
    if (v56)
    {
      while (1)
      {
        v62 = __clz(__rbit64(v56));
        v56 &= v56 - 1;
        v63 = v140;
        sub_100733354(*(v141 + 48) + *(v146 + 72) * (v62 | (v61 << 6)), v140, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        sub_100733354(v63, v60, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);

        v64 = sub_1009364B8();
        v65 = sub_100936F18();
        v66 = a3;
        v67 = v65;
        v68 = v66;

        sub_100732580(v63, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        if (os_log_type_enabled(v64, v67))
        {
          v69 = swift_slowAlloc();
          v149[0] = swift_slowAlloc();
          *v69 = v143;
          *(v69 + 4) = sub_10001273C(v145, v147, v149);
          *(v69 + 12) = 2080;
          sub_100014A90(&qword_100CB3560, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, &unk_1009B3300);
          v70 = sub_100937548();
          v72 = v71;
          sub_100732580(v142, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
          v73 = sub_10001273C(v70, v72, v149);
          v60 = v142;

          *(v69 + 14) = v73;
          _os_log_impl(&_mh_execute_header, v64, v67, "%s        %s", v69, 0x16u);
          swift_arrayDestroy();

          a3 = v147;

          v58 = v61;
          if (!v56)
          {
            goto LABEL_21;
          }
        }

        else
        {

          sub_100732580(v60, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
          v58 = v61;
          a3 = v68;
          if (!v56)
          {
            goto LABEL_21;
          }
        }

LABEL_20:
        v61 = v58;
      }
    }
  }

  v74 = sub_1009364B8();
  v75 = sub_100936F18();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v149[0] = v77;
    *v76 = 136315138;
    *(v76 + 4) = sub_10001273C(v145, a3, v149);
    _os_log_impl(&_mh_execute_header, v74, v75, "%s    ", v76, 0xCu);
    sub_100012970(v77);
  }

  v79 = v136;
  v78 = v137;

  v80 = sub_1009364B8();
  v81 = sub_100936F18();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v149[0] = v83;
    *v82 = 136315138;
    *(v82 + 4) = sub_10001273C(v145, a3, v149);
    _os_log_impl(&_mh_execute_header, v80, v81, "%s    Sent Materials:", v82, 0xCu);
    sub_100012970(v83);
  }

  v140 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlySent;
  v84 = *&v78[OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlySent];
  v85 = v84 + 56;
  v86 = 1 << *(v84 + 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = v87 & *(v84 + 56);
  v89 = (v86 + 63) >> 6;
  v142 = v84;

  v90 = 0;
  while (v88)
  {
    v91 = v90;
LABEL_42:
    v93 = __clz(__rbit64(v88));
    v88 &= v88 - 1;
    v94 = v139;
    sub_100733354(v142[6] + *(v146 + 72) * (v93 | (v91 << 6)), v139, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    sub_100733354(v94, v79, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);

    v95 = sub_1009364B8();
    v96 = v79;
    v97 = sub_100936F18();

    sub_100732580(v94, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    if (os_log_type_enabled(v95, v97))
    {
      v98 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v149[0] = v141;
      *v98 = v143;
      *(v98 + 4) = sub_10001273C(v145, v147, v149);
      *(v98 + 12) = 2080;
      sub_100014A90(&qword_100CB3560, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, &unk_1009B3300);
      v99 = sub_100937548();
      v101 = v100;
      sub_100732580(v96, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      v102 = sub_10001273C(v99, v101, v149);

      *(v98 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v95, v97, "%s        %s", v98, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100732580(v96, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    }

    v90 = v91;
    v79 = v96;
  }

  v92 = v147;
  while (1)
  {
    v91 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      break;
    }

    if (v91 >= v89)
    {

      v103 = sub_1009364B8();
      v104 = sub_100936F18();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v149[0] = v106;
        *v105 = 136315138;
        *(v105 + 4) = sub_10001273C(v145, v92, v149);
        _os_log_impl(&_mh_execute_header, v103, v104, "%s    Delta:", v105, 0xCu);
        sub_100012970(v106);
      }

      v107 = v135;
      v108 = *&v137[v134];
      if (*(*&v137[v140] + 16) <= *(v108 + 16) >> 3)
      {
        v149[0] = *&v137[v134];

        sub_100730164(v111);

        v110 = v149[0];
      }

      else
      {

        v110 = sub_10073054C(v109, v108);
      }

      v112 = 0;
      v113 = v110 + 56;
      v114 = 1 << v110[32];
      v115 = -1;
      if (v114 < 64)
      {
        v115 = ~(-1 << v114);
      }

      v116 = v115 & *(v110 + 7);
      v117 = (v114 + 63) >> 6;
      v142 = v110;
      if (v116)
      {
        goto LABEL_54;
      }

LABEL_55:
      v119 = v147;
      while (1)
      {
        v118 = v112 + 1;
        if (__OFADD__(v112, 1))
        {
          goto LABEL_65;
        }

        if (v118 >= v117)
        {

          v130 = *&v133[v132];

          os_unfair_lock_unlock(v130 + 4);

          return;
        }

        v116 = *&v113[8 * v118];
        ++v112;
        if (v116)
        {
          while (1)
          {
            v120 = __clz(__rbit64(v116));
            v116 &= v116 - 1;
            v121 = v138;
            sub_100733354(*(v110 + 6) + *(v146 + 72) * (v120 | (v118 << 6)), v138, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
            sub_100733354(v121, v107, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);

            v122 = sub_1009364B8();
            v123 = v107;
            v124 = sub_100936F18();

            sub_100732580(v121, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
            if (os_log_type_enabled(v122, v124))
            {
              v125 = swift_slowAlloc();
              v149[0] = swift_slowAlloc();
              *v125 = v143;
              *(v125 + 4) = sub_10001273C(v145, v119, v149);
              *(v125 + 12) = 2080;
              sub_100014A90(&qword_100CB3560, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, &unk_1009B3300);
              LODWORD(v141) = v124;
              v107 = v123;
              v126 = sub_100937548();
              v128 = v127;
              sub_100732580(v107, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
              v129 = sub_10001273C(v126, v128, v149);

              *(v125 + 14) = v129;
              _os_log_impl(&_mh_execute_header, v122, v141, "%s        %s", v125, 0x16u);
              swift_arrayDestroy();

              v112 = v118;
              v110 = v142;
              if (!v116)
              {
                goto LABEL_55;
              }
            }

            else
            {

              sub_100732580(v123, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
              v112 = v118;
              v107 = v123;
              v110 = v142;
              if (!v116)
              {
                goto LABEL_55;
              }
            }

LABEL_54:
            v118 = v112;
            v119 = v147;
          }
        }
      }
    }

    v88 = *(v85 + 8 * v91);
    ++v90;
    if (v88)
    {
      goto LABEL_42;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

id sub_10072FC14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSGroupQUICMaterialExchangeController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100730034(void *result, int64_t a2, char a3, void *a4)
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
    sub_100706B30(&qword_100CB3678, &qword_1009AD128);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
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

void sub_100730164(uint64_t a1)
{
  v3 = sub_100706B30(&qword_100CB3670, &qword_1009AD120);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_100733354(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      sub_100730F54(v9, v5);
      sub_100732580(v9, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      sub_100013814(v5, &qword_100CB3670, &qword_1009AD120);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

Swift::Int sub_10073035C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100706B30(&unk_100CB3680, &unk_1009AD130);
    v2 = sub_100937218();
    v15 = v2;
    sub_100937118();
    if (sub_100937198())
    {
      sub_100014170(0, &qword_100CB34A0, IDSPushToken_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1007311EC(v9 + 1);
        }

        v2 = v15;
        result = sub_100937028(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_100937198());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void *sub_10073054C(unint64_t a1, uint64_t a2)
{
  v5 = sub_100706B30(&qword_100CB3670, &qword_1009AD120);
  __chkstk_darwin(v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v66 - v9;
  v11 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  __chkstk_darwin(v11);
  v85 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v66 - v14;
  __chkstk_darwin(v16);
  v80 = (&v66 - v18);
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v71 = (63 - v21) >> 6;
  v78 = (v17 + 56);
  v68 = v17;
  v77 = (v17 + 48);
  v82 = a2;
  v83 = (a2 + 56);

  v25 = 0;
  v74 = a1 + 56;
  v75 = a1;
  for (i = v10; ; v10 = i)
  {
    v26 = v23;
    v27 = v25;
    if (v23)
    {
LABEL_15:
      v2 = (v26 - 1) & v26;
      sub_100733354(*(a1 + 48) + v68[9] * (__clz(__rbit64(v26)) | (v27 << 6)), v10, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      v31 = 0;
      v29 = v27;
    }

    else
    {
      v28 = v71 <= v25 + 1 ? v25 + 1 : v71;
      v29 = v28 - 1;
      v30 = v25;
      while (1)
      {
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_57;
        }

        if (v27 >= v71)
        {
          break;
        }

        v26 = *(v20 + 8 * v27);
        ++v30;
        if (v26)
        {
          goto LABEL_15;
        }
      }

      v2 = 0;
      v31 = 1;
    }

    v73 = *v78;
    v73(v10, v31, 1, v11);
    v86 = a1;
    v87 = v20;
    v88 = v79;
    v89 = v29;
    v90 = v2;
    v72 = *v77;
    v32 = v72(v10, 1, v11);
    v27 = v82;
    if (v32 == 1)
    {
      sub_100013814(v10, &qword_100CB3670, &qword_1009AD120);
      v59 = a1;
      goto LABEL_52;
    }

    sub_1007322E0(v10, v80, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    v70 = sub_100014A90(&unk_100CB3660, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, "!4");
    v33 = sub_100936AC8();
    v34 = -1 << *(v27 + 32);
    v10 = v33 & ~v34;
    a1 = v10 >> 6;
    v20 = 1 << v10;
    if (((1 << v10) & v83[v10 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_100732580(v80, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    v25 = v29;
    v23 = v2;
    v20 = v74;
    a1 = v75;
  }

  v76 = ~v34;
  v35 = *(v27 + 48);
  v84 = v68[9];
  sub_100733354(v35 + v84 * v10, v15, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
  v81 = sub_100014A90(&unk_100CB34C0, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, &unk_1009B3328);
  while (1)
  {
    v36 = sub_100936B18();
    sub_100732580(v15, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    if (v36)
    {
      break;
    }

    v10 = (v10 + 1) & v76;
    a1 = v10 >> 6;
    v20 = 1 << v10;
    if (((1 << v10) & v83[v10 >> 6]) == 0)
    {
      goto LABEL_6;
    }

    sub_100733354(*(v27 + 48) + v84 * v10, v15, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
  }

  v37 = sub_100732580(v80, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
  v38 = *(v27 + 32);
  i = ((1 << v38) + 63) >> 6;
  v24 = 8 * i;
  v39 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v68 = &v66;
    __chkstk_darwin(v37);
    v41 = &v66 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v41, v83, v40);
    v42 = *&v41[8 * a1] & ~v20;
    v43 = *(v27 + 16);
    v80 = v41;
    *&v41[8 * a1] = v42;
    v44 = v43 - 1;
    a1 = v74;
    v45 = v75;
    v46 = v71;
LABEL_25:
    v76 = v44;
    while (v2)
    {
      v47 = v29;
LABEL_37:
      v50 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      sub_100733354(*(v45 + 48) + (v50 | (v47 << 6)) * v84, v39, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      v51 = 0;
LABEL_38:
      v73(v39, v51, 1, v11);
      v86 = v45;
      v87 = a1;
      v88 = v79;
      v89 = v29;
      v90 = v2;
      if (v72(v39, 1, v11) == 1)
      {
        sub_100013814(v39, &qword_100CB3670, &qword_1009AD120);
        v27 = sub_100731990(v80, i, v76, v27);
        goto LABEL_51;
      }

      sub_1007322E0(v39, v85, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      v52 = sub_100936AC8();
      v53 = -1 << *(v27 + 32);
      v10 = v52 & ~v53;
      v54 = v10 >> 6;
      v20 = 1 << v10;
      if (((1 << v10) & v83[v10 >> 6]) != 0)
      {
        sub_100733354(*(v82 + 48) + v10 * v84, v15, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        v55 = sub_100936B18();
        sub_100732580(v15, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v10 = (v10 + 1) & v56;
            v54 = v10 >> 6;
            v20 = 1 << v10;
            if (((1 << v10) & v83[v10 >> 6]) == 0)
            {
              goto LABEL_26;
            }

            sub_100733354(*(v82 + 48) + v10 * v84, v15, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
            v57 = sub_100936B18();
            sub_100732580(v15, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
          }

          while ((v57 & 1) == 0);
        }

        sub_100732580(v85, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        v58 = v80[v54];
        v80[v54] = v58 & ~v20;
        v27 = v82;
        a1 = v74;
        v45 = v75;
        v39 = v69;
        v46 = v71;
        if ((v58 & v20) != 0)
        {
          v44 = v76 - 1;
          if (__OFSUB__(v76, 1))
          {
            __break(1u);
          }

          if (v76 == 1)
          {

            v27 = &_swiftEmptySetSingleton;
            goto LABEL_51;
          }

          goto LABEL_25;
        }
      }

      else
      {
LABEL_26:
        sub_100732580(v85, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        v27 = v82;
        a1 = v74;
        v45 = v75;
        v39 = v69;
        v46 = v71;
      }
    }

    if (v46 <= v29 + 1)
    {
      v48 = v29 + 1;
    }

    else
    {
      v48 = v46;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v47 >= v46)
      {
        v2 = 0;
        v51 = 1;
        v29 = v49;
        goto LABEL_38;
      }

      v2 = *(a1 + 8 * v47);
      ++v29;
      if (v2)
      {
        v29 = v47;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v61 = v24;

    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v39 = v69;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v83, v62);
  sub_100731498(v63, i, v27, v10, &v86);
  v65 = v64;

  v27 = v65;
LABEL_51:
  v59 = v86;
LABEL_52:
  sub_100308C6C(v59);
  return v27;
}

uint64_t sub_100730F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100014A90(&unk_100CB3660, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, "!4");
  v26 = a1;
  v10 = sub_100936AC8();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v23 = v2;
    v24 = v6;
    v25 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_100733354(*(v9 + 48) + v14 * v12, v8, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      sub_100014A90(&unk_100CB34C0, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, &unk_1009B3328);
      v15 = sub_100936B18();
      sub_100732580(v8, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v25;
        goto LABEL_10;
      }
    }

    v17 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v27 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100728800();
      v19 = v27;
    }

    v20 = *(v19 + 48) + v14 * v12;
    a2 = v25;
    sub_1007322E0(v20, v25, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    sub_100731FF0(v12);
    v16 = 0;
    *v17 = v27;
LABEL_10:
    v6 = v24;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_1007311EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100706B30(&unk_100CB3680, &unk_1009AD130);
  result = sub_100937208();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_100937028(*(v5 + 40));
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_100731414(uint64_t a1, void *a2)
{
  sub_100937028(a2[5]);
  result = sub_1009370F8();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100731498(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v45 = a2;
  v9 = sub_100706B30(&qword_100CB3670, &qword_1009AD120);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v54 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  __chkstk_darwin(v54);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v56 = &v45 - v15;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v47 = a1;
  v48 = v11;
  *(a1 + v17) = v18;
  v19 = v16 - 1;
  v51 = (v20 + 56);
  v52 = v20;
  v49 = a5;
  v50 = (v20 + 48);
  v55 = a3;
  v53 = a3 + 56;
  while (2)
  {
    v46 = v19;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v31 = 1;
              goto LABEL_14;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_28;
        }

        v26 = a5[3];
LABEL_13:
        v30 = (v25 - 1) & v25;
        sub_100733354(*(v21 + 48) + *(v52 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        v31 = 0;
        v29 = v26;
LABEL_14:
        v32 = v54;
        (*v51)(v11, v31, 1, v54);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v50)(v11, 1, v32) == 1)
        {
          sub_100013814(v11, &qword_100CB3670, &qword_1009AD120);
          v44 = v55;

          sub_100731990(v47, v45, v46, v44);
          return;
        }

        sub_1007322E0(v11, v56, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        v33 = v55;
        sub_100014A90(&unk_100CB3660, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, "!4");
        v34 = sub_100936AC8();
        v35 = -1 << *(v33 + 32);
        v36 = v34 & ~v35;
        v37 = v36 >> 6;
        v38 = 1 << v36;
        if (((1 << v36) & *(v53 + 8 * (v36 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_100732580(v56, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        v11 = v48;
        a5 = v49;
      }

      v39 = *(v52 + 72);
      sub_100733354(*(v55 + 48) + v39 * v36, v13, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      sub_100014A90(&unk_100CB34C0, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, &unk_1009B3328);
      v40 = sub_100936B18();
      sub_100732580(v13, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      if ((v40 & 1) == 0)
      {
        v41 = ~v35;
        do
        {
          v36 = (v36 + 1) & v41;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v53 + 8 * (v36 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          sub_100733354(*(v55 + 48) + v39 * v36, v13, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
          v42 = sub_100936B18();
          sub_100732580(v13, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        }

        while ((v42 & 1) == 0);
      }

      a5 = v49;
      sub_100732580(v56, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      v11 = v48;
      v43 = v47[v37];
      v47[v37] = v43 & ~v38;
    }

    while ((v43 & v38) == 0);
    v19 = v46 - 1;
    if (__OFSUB__(v46, 1))
    {
LABEL_28:
      __break(1u);
      return;
    }

    if (v46 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_100731990(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100706B30(&unk_100CB9CD0, &unk_1009AD000);
  result = sub_100937228();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_100733354(v19 + v20 * (v16 | (v14 << 6)), v10, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    sub_100014A90(&unk_100CB3660, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, "!4");
    result = sub_100936AC8();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_1007322E0(v10, *(v11 + 48) + v24 * v20, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
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

id sub_100731C8C()
{
  v1 = v0;
  sub_100706B30(&unk_100CB3680, &unk_1009AD130);
  v2 = *v0;
  v3 = sub_1009371F8();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

uint64_t sub_100731DDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100706B30(&unk_100CB3680, &unk_1009AD130);
  result = sub_100937208();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_100937028(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
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

void sub_100731FF0(int64_t a1)
{
  v28 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) == 0)
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    goto LABEL_24;
  }

  v10 = ~v8;

  v11 = sub_1009370D8();
  if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
  {
    goto LABEL_22;
  }

  v29 = v6;
  v12 = (v11 + 1) & v10;
  v13 = *(v3 + 72);
  v14 = v10;
  v27 = v7;
  do
  {
    v15 = v13;
    v16 = v13 * v9;
    sub_100733354(*(v29 + 48) + v13 * v9, v5, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    v17 = v14;
    sub_100014A90(&unk_100CB3660, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer, "!4");
    v18 = sub_100936AC8();
    sub_100732580(v5, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    v19 = v18 & v17;
    v14 = v17;
    if (a1 >= v12)
    {
      if (v19 < v12 || a1 < v19)
      {
LABEL_4:
        v13 = v15;
        goto LABEL_5;
      }
    }

    else if (v19 < v12 && a1 < v19)
    {
      goto LABEL_4;
    }

    v13 = v15;
    v22 = v15 * a1;
    if (v15 * a1 < v16 || *(v29 + 48) + v15 * a1 >= (*(v29 + 48) + v16 + v15))
    {
      swift_arrayInitWithTakeFrontToBack();
      a1 = v9;
    }

    else
    {
      a1 = v9;
      if (v22 != v16)
      {
        swift_arrayInitWithTakeBackToFront();
        a1 = v9;
      }
    }

LABEL_5:
    v9 = (v9 + 1) & v14;
    v7 = v27;
  }

  while (((*(v27 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  v6 = v29;
LABEL_22:

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
LABEL_24:
  v23 = *(v6 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v25;
    ++*(v6 + 36);
  }
}

uint64_t sub_1007322E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100732348(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_100937168();

    if (v9)
    {

      sub_100014170(0, &qword_100CB34A0, IDSPushToken_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_100937158();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10073035C(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1007311EC(v20 + 1);
    }

    v18 = v8;
    sub_100731414(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100014170(0, &qword_100CB34A0, IDSPushToken_ptr);
  v11 = sub_100937028(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1007325E0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100937038();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100732580(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1007325E0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1007311EC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100731C8C();
      goto LABEL_12;
    }

    sub_100731DDC(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_100937028(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100014170(0, &qword_100CB34A0, IDSPushToken_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_100937038();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1009375C8();
  __break(1u);
}

char *sub_100732750(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100732770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100732770(char *result, int64_t a2, char a3, char *a4)
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
    sub_100706B30(&qword_100CB2DC0, &qword_1009AC720);
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
    v10 = &_swiftEmptyArrayStorage;
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

void sub_100732894(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1009373F8())
    {
LABEL_3:
      sub_100706B30(&unk_100CB3680, &unk_1009AD130);
      v3 = sub_100937228();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1009373F8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_100937268();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_100937028(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100014170(0, &qword_100CB34A0, IDSPushToken_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_100937038();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_100937028(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100014170(0, &qword_100CB34A0, IDSPushToken_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_100937038();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100732C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = a1 + 32; ; i += 8)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_unknownObjectRelease();
      if (v7 == a2)
      {
        break;
      }
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      break;
    }

    swift_unknownObjectRelease();
    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_100732CD0(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_100732C24(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return v5[2];
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = v5 + 2;
    v10 = v5[2];
    if (v9 == v10)
    {
      return v8;
    }

    v12 = 8 * result + 40;
    while (v9 < v10)
    {
      sub_100732B84(v5 + v12, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v14 = Strong, swift_unknownObjectRelease(), v14 == a2) || !swift_unknownObjectWeakLoadStrong())
      {
        result = sub_100732BBC(v17);
      }

      else
      {
        swift_unknownObjectRelease();
        result = sub_100732BBC(v17);
        if (v9 != v8)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          v15 = *v11;
          if (v8 >= *v11)
          {
            goto LABEL_25;
          }

          result = sub_100732B84(&v5[v8 + 4], v17);
          if (v9 >= v15)
          {
            goto LABEL_26;
          }

          sub_100732B84(v5 + v12, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_100732880(v5);
          }

          result = sub_1007334D4(v16, &v5[v8 + 4]);
          if (v9 >= v5[2])
          {
            goto LABEL_27;
          }

          result = sub_1007334D4(v17, v5 + v12);
          *a1 = v5;
        }

        ++v8;
      }

      ++v9;
      v11 = v5 + 2;
      v10 = v5[2];
      v12 += 8;
      if (v9 == v10)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100732E78(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 8 * a3;
  v12 = v7 + 32 + 8 * a2;
  if (result < v12 || result >= v12 + 8 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_100732F54(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
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
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100730034(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_100732E78(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_100733014@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_desired;
  v5 = *((swift_isaMask & *v3) + 0x198);

  v7 = v5(v6);

  v8 = v3;
  v9 = sub_1009364B8();
  v10 = sub_100936F18();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_10001273C(0xD000000000000019, 0x8000000100AFF870, &v14);
    *(v11 + 12) = 2048;
    *(v11 + 14) = *(*(v3 + v4) + 16);

    _os_log_impl(&_mh_execute_header, v9, v10, "%s: desired: %ld", v11, 0x16u);
    sub_100012970(v12);
  }

  else
  {
  }

  *(v8 + OBJC_IVAR____TtC17identityservicesd38IDSGroupQUICMaterialExchangeController_currentlySent) = *(v3 + v4);

  *a1 = v7;
  return result;
}

void *sub_100733200@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_10073324C(uint64_t a1)
{
  result = sub_1009364D8();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100733354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1007333BC()
{
  v1 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (*((swift_isaMask & **(v0 + 16)) + 0xB8))();
  if (v3)
  {
    v5 = v4;
    v7 = v3;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v0 + ((v2 + 24) & ~v2), *(v0 + ((v2 + 24) & ~v2) + *(v1 + 28)), ObjectType, v5);
  }
}

uint64_t sub_1007335D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_100012D50(v4 + v8, a4, a2, a3);
}

uint64_t sub_100733658(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_10073545C(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1007337C4()
{
  v1 = OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_desiresCache;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100733808(char a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_desiresCache;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1007338B8(uint64_t a1)
{
  v3 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100706B30(&qword_100CB36C0, &qword_1009AD188);
  __chkstk_darwin(v6);
  v56 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v11 = sub_100706B30(&qword_100CB36B8, &qword_1009AD180);
  __chkstk_darwin(v11 - 8);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = &v45 - v14;
  __chkstk_darwin(v15);
  v55 = &v45 - v16;
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  __chkstk_darwin(v20);
  v22 = &v45 - v21;
  __chkstk_darwin(v23);
  v25 = &v45 - v24;
  v52 = a1;
  sub_100748684(a1, &v45 - v24, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  v50 = *(v4 + 56);
  v26 = v50(v25, 0, 1, v3);
  v27 = *(*v1 + 112);
  v53 = v1;
  v27(v26);
  v51 = v6;
  v28 = *(v6 + 48);
  sub_100012D50(v25, v10, &qword_100CB36B8, &qword_1009AD180);
  sub_100012D50(v22, &v10[v28], &qword_100CB36B8, &qword_1009AD180);
  v29 = *(v4 + 48);
  if (v29(v10, 1, v3) == 1)
  {
    sub_100013814(v22, &qword_100CB36B8, &qword_1009AD180);
    sub_100013814(v25, &qword_100CB36B8, &qword_1009AD180);
    if (v29(&v10[v28], 1, v3) == 1)
    {
      v30 = v10;
LABEL_10:
      sub_100013814(v30, &qword_100CB36B8, &qword_1009AD180);
LABEL_15:
      v37 = 1;
      return v37 & 1;
    }

    goto LABEL_6;
  }

  sub_100012D50(v10, v19, &qword_100CB36B8, &qword_1009AD180);
  if (v29(&v10[v28], 1, v3) == 1)
  {
    sub_100013814(v22, &qword_100CB36B8, &qword_1009AD180);
    sub_100013814(v25, &qword_100CB36B8, &qword_1009AD180);
    sub_100748754(v19, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
LABEL_6:
    sub_100013814(v10, &qword_100CB36C0, &qword_1009AD188);
    goto LABEL_7;
  }

  v46 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet;
  v38 = &v10[v28];
  v39 = v49;
  sub_1007486EC(v38, v49, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  sub_1007477CC(&qword_100CB36C8, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet, &unk_1009BDF54);
  v47 = sub_100936B18();
  v40 = v39;
  v41 = v46;
  sub_100748754(v40, v46);
  sub_100013814(v22, &qword_100CB36B8, &qword_1009AD180);
  sub_100013814(v25, &qword_100CB36B8, &qword_1009AD180);
  sub_100748754(v19, v41);
  sub_100013814(v10, &qword_100CB36B8, &qword_1009AD180);
  if (v47)
  {
    goto LABEL_15;
  }

LABEL_7:
  v31 = v55;
  sub_100748684(v52, v55, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  v32 = v50(v31, 0, 1, v3);
  v33 = v54;
  (*(*v53 + 136))(v32);
  v34 = *(v51 + 48);
  v35 = v56;
  sub_100012D50(v31, v56, &qword_100CB36B8, &qword_1009AD180);
  sub_100012D50(v33, v35 + v34, &qword_100CB36B8, &qword_1009AD180);
  if (v29(v35, 1, v3) == 1)
  {
    sub_100013814(v33, &qword_100CB36B8, &qword_1009AD180);
    sub_100013814(v31, &qword_100CB36B8, &qword_1009AD180);
    if (v29((v35 + v34), 1, v3) == 1)
    {
      v30 = v35;
      goto LABEL_10;
    }
  }

  else
  {
    v36 = v48;
    sub_100012D50(v35, v48, &qword_100CB36B8, &qword_1009AD180);
    if (v29((v35 + v34), 1, v3) != 1)
    {
      v42 = v35 + v34;
      v43 = v49;
      sub_1007486EC(v42, v49, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
      sub_1007477CC(&qword_100CB36C8, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet, &unk_1009BDF54);
      v37 = sub_100936B18();
      sub_100748754(v43, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
      sub_100013814(v33, &qword_100CB36B8, &qword_1009AD180);
      sub_100013814(v31, &qword_100CB36B8, &qword_1009AD180);
      sub_100748754(v36, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
      sub_100013814(v35, &qword_100CB36B8, &qword_1009AD180);
      return v37 & 1;
    }

    sub_100013814(v33, &qword_100CB36B8, &qword_1009AD180);
    sub_100013814(v31, &qword_100CB36B8, &qword_1009AD180);
    sub_100748754(v36, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  }

  sub_100013814(v35, &qword_100CB36C0, &qword_1009AD188);
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_100734064(uint64_t a1)
{
  v3 = sub_100706B30(&qword_100CB36B8, &qword_1009AD180);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  sub_100748684(a1, &v8 - v4, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  v6 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  return (*(*v1 + 144))(v5);
}

uint64_t sub_100734164(uint64_t a1)
{
  v3 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100706B30(&qword_100CB36C0, &qword_1009AD188);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = sub_100706B30(&qword_100CB36B8, &qword_1009AD180);
  __chkstk_darwin(v10 - 8);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v37 = &v32 - v13;
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v32 - v19;
  v21 = *(*v1 + 136);
  v36 = v1;
  v21(v18);
  v35 = a1;
  sub_100748684(a1, v16, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  v33 = *(v4 + 56);
  v33(v16, 0, 1, v3);
  v22 = *(v7 + 56);
  sub_100012D50(v20, v9, &qword_100CB36B8, &qword_1009AD180);
  sub_100012D50(v16, &v9[v22], &qword_100CB36B8, &qword_1009AD180);
  v23 = *(v4 + 48);
  if (v23(v9, 1, v3) != 1)
  {
    sub_100012D50(v9, v37, &qword_100CB36B8, &qword_1009AD180);
    if (v23(&v9[v22], 1, v3) != 1)
    {
      v25 = &v9[v22];
      v26 = v32;
      sub_1007486EC(v25, v32, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
      sub_1007477CC(&qword_100CB36C8, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet, &unk_1009BDF54);
      v27 = v37;
      v28 = sub_100936B18();
      sub_100748754(v26, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
      sub_100013814(v16, &qword_100CB36B8, &qword_1009AD180);
      sub_100013814(v20, &qword_100CB36B8, &qword_1009AD180);
      sub_100748754(v27, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
      result = sub_100013814(v9, &qword_100CB36B8, &qword_1009AD180);
      if ((v28 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_100013814(v16, &qword_100CB36B8, &qword_1009AD180);
    sub_100013814(v20, &qword_100CB36B8, &qword_1009AD180);
    sub_100748754(v37, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    return sub_100013814(v9, &qword_100CB36C0, &qword_1009AD188);
  }

  sub_100013814(v16, &qword_100CB36B8, &qword_1009AD180);
  sub_100013814(v20, &qword_100CB36B8, &qword_1009AD180);
  if (v23(&v9[v22], 1, v3) != 1)
  {
    return sub_100013814(v9, &qword_100CB36C0, &qword_1009AD188);
  }

  sub_100013814(v9, &qword_100CB36B8, &qword_1009AD180);
LABEL_8:
  v30 = v33;
  v29 = v34;
  v33(v34, 1, 1, v3);
  v31 = v36;
  (*(*v36 + 144))(v29);
  sub_100748684(v35, v29, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  v30(v29, 0, 1, v3);
  return (*(*v31 + 120))(v29);
}

uint64_t sub_100734694()
{
  v1 = sub_100706B30(&qword_100CB36B8, &qword_1009AD180);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  (*(*v0 + 144))(v3);
  v5(v3, 1, 1, v4);
  (*(*v0 + 120))(v3);
  return (*(*v0 + 192))(1);
}

uint64_t sub_1007347E8()
{
  sub_100013814(v0 + OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_sentKeyMaterial, &qword_100CB36B8, &qword_1009AD180);
  sub_100013814(v0 + OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_sendingKeyMaterial, &qword_100CB36B8, &qword_1009AD180);
  sub_100013814(v0 + OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_desiredKeyMaterial, &qword_100CB36B8, &qword_1009AD180);

  return swift_deallocClassInstance();
}

uint64_t sub_1007348A4()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_sentKeyMaterial;
  v2 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_sendingKeyMaterial, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_desiredKeyMaterial, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_desiresCache) = 1;
  return v0;
}

uint64_t sub_1007349E4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_100734AB4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_100734B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_100734BA4(a1, a2, a3);
  return v6;
}

void *sub_100734BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for IDSGroupPushMaterialExchangeParticipantKeyMaterialState(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_sentKeyMaterial;
  v6 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v4 + v5, 1, 1, v6);
  v7(v4 + OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_sendingKeyMaterial, 1, 1, v6);
  v7(v4 + OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_desiredKeyMaterial, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_desiresCache) = 1;
  v3[5] = v4;
  v8 = swift_allocObject();
  v7(v8 + OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_sentKeyMaterial, 1, 1, v6);
  v7(v8 + OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_sendingKeyMaterial, 1, 1, v6);
  v7(v8 + OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_desiredKeyMaterial, 1, 1, v6);
  *(v8 + OBJC_IVAR____TtC17identityservicesd55IDSGroupPushMaterialExchangeParticipantKeyMaterialState_desiresCache) = 1;
  v3[6] = v8;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_100734D4C()
{
  v1 = v0;
  sub_100937248(77);
  v11._countAndFlagsBits = 0xD000000000000021;
  v11._object = 0x8000000100AFF8F0;
  sub_100936C08(v11);
  v2 = [v0[3] description];
  v3 = sub_100936B38();
  v5 = v4;

  v12._countAndFlagsBits = v3;
  v12._object = v5;
  sub_100936C08(v12);

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  sub_100936C08(v13);
  v6 = [v1[2] description];
  v7 = sub_100936B38();
  v9 = v8;

  v14._countAndFlagsBits = v7;
  v14._object = v9;
  sub_100936C08(v14);

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  sub_100936C08(v15);
  v16._countAndFlagsBits = sub_100937548();
  sub_100936C08(v16);

  v17._object = 0x8000000100AFF920;
  v17._countAndFlagsBits = 0xD000000000000010;
  sub_100936C08(v17);
  (*(*v1 + 15))();
  type metadata accessor for IDSGroupPushMaterialExchangeParticipantKeyMaterialState(0);
  v18._countAndFlagsBits = sub_100936B88();
  sub_100936C08(v18);

  v19._countAndFlagsBits = 0x6D6B73202020200ALL;
  v19._object = 0xEF203A6574617453;
  sub_100936C08(v19);
  (*(*v1 + 18))();
  v20._countAndFlagsBits = sub_100936B88();
  sub_100936C08(v20);

  v21._countAndFlagsBits = 62;
  v21._object = 0xE100000000000000;
  sub_100936C08(v21);
  return 0;
}

uint64_t sub_100734F9C(uint64_t a1)
{
  v3 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100706B30(&qword_100CB36B8, &qword_1009AD180);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  v11 = (*(*v1 + 120))(v8);
  (*(*v11 + 112))(v11);

  if ((*(v4 + 48))(v10, 1, v3))
  {
    sub_100013814(v10, &qword_100CB36B8, &qword_1009AD180);
    v12 = 0;
  }

  else
  {
    sub_100748684(v10, v6, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    sub_100013814(v10, &qword_100CB36B8, &qword_1009AD180);
    v13 = *(v6 + 1);

    sub_100748754(v6, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    v12 = sub_10073519C(a1, v13);
  }

  return v12 & 1;
}

uint64_t sub_10073519C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1007477CC(&qword_100CB2D80, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD448), v7 = sub_100936AC8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    v11 = *(v4 + 72);
    do
    {
      sub_100748684(*(a2 + 48) + v11 * v9, v6, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_1007477CC(&qword_100CB2D88, type metadata accessor for IDSGroupEncryptionKeyMaterialContent, &unk_1009AD488);
      v12 = sub_100936B18();
      sub_100748754(v6, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_100735390()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10073545C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100706B30(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100735524(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC17identityservicesd34IDSGroupPushMaterialExchangeMember_sentPublicIdentity;
  v4 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet(0);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1007355B0()
{
  sub_100013814(v0 + OBJC_IVAR____TtC17identityservicesd34IDSGroupPushMaterialExchangeMember_sentPublicIdentity, &qword_100CB36D0, &unk_1009AD190);

  return swift_deallocClassInstance();
}

void sub_100735638(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*sub_1007356A0(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10072AB04;
}

uint64_t sub_100735830(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_cachedKeyPropagationProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10073589C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_cachedKeyPropagationProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10071E170;
}

id sub_10073593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = objc_allocWithZone(v8);
  sub_1007C9A6C(2);
  *&v14[OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_participantsById;
  *&v14[v15] = sub_1007469C8(&_swiftEmptyArrayStorage);
  v16 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_membersByURI;
  *&v14[v16] = sub_100746AD0(&_swiftEmptyArrayStorage);
  v17 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_desiredPublicIdentity;
  v18 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet(0);
  (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock;
  sub_100706B30(&unk_100CB3540, &qword_1009B31F0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *&v14[v19] = v20;
  v21 = &v14[OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_cachedKeyPropagationProvider];
  *&v14[OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_cachedKeyPropagationProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = &v14[OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_groupID];
  *v22 = a1;
  *(v22 + 1) = a2;
  v23 = &v14[OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_sessionID];
  *v23 = a3;
  *(v23 + 1) = a4;
  *&v14[OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_pushHandler] = a7;
  sub_100022B2C(a8, &v14[OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_cryptoHandler]);
  swift_beginAccess();
  *(v21 + 1) = a6;
  swift_unknownObjectWeakAssign();
  v28.receiver = v14;
  v28.super_class = v8;
  swift_unknownObjectRetain();
  v24 = objc_msgSendSuper2(&v28, "init");
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100012970(a8);
  return v24;
}

uint64_t sub_100735B48(uint64_t a1)
{
  v76 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock;
  v3 = *(v1 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock);

  os_unfair_lock_lock(v3 + 4);

  v4 = sub_1007362D8(a1);
  v5 = sub_100746E48(v4);

  v6 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_membersByURI;
  swift_beginAccess();
  v81 = v1;

  sub_100736B2C(v7);
  v9 = v8;

  v10 = sub_100736D54(v9, v5);
  v77 = sub_100736D54(v5, v9);

  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_100937118();
    sub_100014170(0, &qword_100CBA2E0, IDSURI_ptr);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0, IDSURI_ptr);
    sub_100936E58();
    v10 = v83;
    v11 = v84;
    v12 = v85;
    v13 = v86;
    v14 = v87;
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(v10 + 32);
    v11 = v10 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v10 + 56);
  }

  v18 = (v12 + 64) >> 6;
  v79 = v10;
  while (v10 < 0)
  {
    v24 = sub_100937198();
    if (!v24)
    {
      goto LABEL_36;
    }

    v82 = v24;
    sub_100014170(0, &qword_100CBA2E0, IDSURI_ptr);
    swift_dynamicCast();
    v23 = v88;
    v21 = v13;
    v22 = v14;
    if (!v88)
    {
      goto LABEL_36;
    }

LABEL_19:
    type metadata accessor for IDSGroupPushMaterialExchangeMember(0);
    v25 = swift_allocObject();
    v26 = OBJC_IVAR____TtC17identityservicesd34IDSGroupPushMaterialExchangeMember_sentPublicIdentity;
    v27 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet(0);
    (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
    *(v25 + 16) = v23;
    swift_beginAccess();
    v28 = *(v81 + v6);
    if ((v28 & 0xC000000000000001) != 0)
    {
      if (v28 < 0)
      {
        v29 = *(v81 + v6);
      }

      else
      {
        v29 = v28 & 0xFFFFFFFFFFFFFF8;
      }

      v30 = v23;
      v31 = sub_100937378();
      if (__OFADD__(v31, 1))
      {
        goto LABEL_69;
      }

      *(v81 + v6) = sub_10074275C(v29, v31 + 1);
    }

    else
    {
      v32 = v23;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v81 + v6);
    v82 = v34;
    *(v81 + v6) = 0x8000000000000000;
    v35 = sub_1007417B0(v23);
    v37 = v34[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      goto LABEL_68;
    }

    v41 = v36;
    if (v34[3] < v40)
    {
      sub_100742990(v40, isUniquelyReferenced_nonNull_native);
      v35 = sub_1007417B0(v23);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_72;
      }

LABEL_31:
      v43 = v34;
      if (v41)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_31;
    }

    v46 = v35;
    sub_100743614();
    v35 = v46;
    v43 = v34;
    if (v41)
    {
LABEL_8:
      *(v43[7] + 8 * v35) = v25;

      goto LABEL_9;
    }

LABEL_32:
    v43[(v35 >> 6) + 8] |= 1 << v35;
    *(v43[6] + 8 * v35) = v23;
    *(v43[7] + 8 * v35) = v25;
    v44 = v43[2];
    v39 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v39)
    {
      goto LABEL_70;
    }

    v43[2] = v45;
LABEL_9:
    *(v81 + v6) = v43;
    swift_endAccess();

    v13 = v21;
    v14 = v22;
    v10 = v79;
  }

  v19 = v13;
  v20 = v14;
  v21 = v13;
  if (v14)
  {
LABEL_15:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v10 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v21 >= v18)
    {
      break;
    }

    v20 = *(v11 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_15;
    }
  }

LABEL_36:
  sub_100308C6C(v10);
  v47 = v77;
  if ((v77 & 0xC000000000000001) != 0)
  {
    sub_100937118();
    sub_100014170(0, &qword_100CBA2E0, IDSURI_ptr);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0, IDSURI_ptr);
    sub_100936E58();
    v47 = v88;
    v48 = v89;
    v49 = v90;
    v50 = v91;
    v51 = v92;
  }

  else
  {
    v50 = 0;
    v52 = -1 << *(v77 + 32);
    v48 = (v77 + 56);
    v49 = ~v52;
    v53 = -v52;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    else
    {
      v54 = -1;
    }

    v51 = v54 & *(v77 + 56);
  }

  v78 = v47;
  v55 = (v49 + 64) >> 6;
  v56 = v81;
  while (2)
  {
    if (v47 < 0)
    {
      if (!sub_100937198() || (sub_100014170(0, &qword_100CBA2E0, IDSURI_ptr), swift_dynamicCast(), v60 = v82, v59 = v51, !v82))
      {
LABEL_65:
        sub_100308C6C(v47);
        v74 = *(v56 + v76);

        os_unfair_lock_unlock(v74 + 4);
      }

LABEL_55:
      v80 = v59;
      swift_beginAccess();
      v61 = *(v56 + v6);
      if ((v61 & 0xC000000000000001) != 0)
      {
        if (v61 < 0)
        {
          v62 = *(v56 + v6);
        }

        else
        {
          v62 = v61 & 0xFFFFFFFFFFFFFF8;
        }

        v63 = v60;
        if (!sub_1009373A8())
        {
          goto LABEL_45;
        }

        swift_unknownObjectRelease();

        v64 = sub_100937378();
        v65 = sub_10074275C(v62, v64);

        v66 = sub_1007417B0(v63);
        v68 = v67;

        if ((v68 & 1) == 0)
        {
          goto LABEL_71;
        }

        sub_100743134(v66, v65);

        *(v81 + v6) = v65;
        v56 = v81;
      }

      else
      {
        v63 = v60;
        v69 = sub_1007417B0(v63);
        if ((v70 & 1) == 0)
        {
          goto LABEL_45;
        }

        v71 = v69;
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v73 = *(v56 + v6);
        if ((v72 & 1) == 0)
        {
          sub_100743614();
        }

        sub_100743134(v71, v73);
        *(v56 + v6) = v73;
      }

LABEL_45:

      swift_endAccess();
      v47 = v78;
      v51 = v80;
      continue;
    }

    break;
  }

  v57 = v50;
  v58 = v51;
  if (v51)
  {
LABEL_51:
    v59 = (v58 - 1) & v58;
    v60 = *(*(v47 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v58)))));
    if (!v60)
    {
      goto LABEL_65;
    }

    goto LABEL_55;
  }

  while (1)
  {
    v50 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v50 >= v55)
    {
      goto LABEL_65;
    }

    v58 = v48[v50];
    ++v57;
    if (v58)
    {
      goto LABEL_51;
    }
  }

LABEL_67:
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
  sub_100014170(0, &qword_100CBA2E0, IDSURI_ptr);
  result = sub_1009375D8();
  __break(1u);
  return result;
}

void *sub_1007362D8(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_100937158();
    result = &_swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v29 = &_swiftEmptyArrayStorage;
    sub_1009372B8();
    result = sub_100937108();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v29 = &_swiftEmptyArrayStorage;
  sub_1009372B8();
  result = sub_1009370C8();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_100745D74(v26, v27, v28, a1);
    v13 = v12;
    v14 = *&v12[OBJC_IVAR____TtC17identityservicesd34IDSGroupEncryptionControllerMember_uri];

    sub_100937298();
    sub_1009372C8();
    sub_1009372D8();
    result = sub_1009372A8();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_100937128())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_100706B30(&qword_100CB3A80, &unk_1009AD420);
      v7 = sub_100936E48();
      sub_1009371B8();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1000152C8(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = (1 << *(a1 + 32));
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = (__clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1000152C8(v10, v9, 0);
            v15 = (__clz(__rbit64(v22)) + v19);
            goto LABEL_27;
          }
        }

        result = sub_1000152C8(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_1007365F0(uint64_t a1)
{
  v1 = a1;
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_100937378();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = &_swiftEmptyArrayStorage;
    sub_10071DE64(0, v2 & ~(v2 >> 63), 0);
    v30 = &_swiftEmptyArrayStorage;
    if (v29)
    {
      v3 = sub_100937308();
    }

    else
    {
      v3 = sub_1009370C8();
      v4 = *(v1 + 36);
    }

    v32 = v3;
    v33 = v4;
    v34 = v29 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v27 = v2;
      v28 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

        v13 = v32;
        v14 = v33;
        v15 = v34;
        sub_100745BE4(v32, v33, v34, v1);
        v17 = v16;
        v18 = [v16 prefixedURI];
        v19 = sub_100936B38();
        v21 = v20;

        v22 = v30;
        v35 = v30;
        v24 = v30[2];
        v23 = v30[3];
        if (v24 >= v23 >> 1)
        {
          sub_10071DE64((v23 > 1), v24 + 1, 1);
          v22 = v35;
        }

        v22[2] = v24 + 1;
        v25 = &v22[2 * v24];
        v25[4] = v19;
        v25[5] = v21;
        v30 = v22;
        if (v29)
        {
          v1 = v28;
          if (!v15)
          {
            goto LABEL_26;
          }

          if (sub_100937348())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          v12 = v5 + 1;
          sub_100706B30(&qword_100CB3A60, &qword_1009AD400);
          v26 = sub_100936A98();
          sub_1009373D8();
          v26(v31, 0);
        }

        else
        {
          v1 = v28;
          sub_100745A80(v13, v14, v15, v28);
          v7 = v6;
          v9 = v8;
          v11 = v10;
          sub_1000152C8(v13, v14, v15);
          v32 = v7;
          v33 = v9;
          v34 = v11 & 1;
          v2 = v27;
          v12 = v5 + 1;
        }

        ++v5;
        if (v12 == v2)
        {
          sub_1000152C8(v32, v33, v34);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void *sub_1007368AC(uint64_t a1)
{
  v1 = a1;
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_100937378();
    result = &_swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v28 = &_swiftEmptyArrayStorage;
    sub_1009372B8();
    result = sub_100937308();
    v25 = result;
    v26 = v4;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v28 = &_swiftEmptyArrayStorage;
  sub_1009372B8();
  result = sub_1009370C8();
  v5 = *(v1 + 36);
  v25 = result;
  v26 = v5;
  v27 = 0;
LABEL_7:
  v6 = 0;
  v22 = v2;
  while (v6 < v2)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v14 = v25;
    v15 = v26;
    v16 = v27;
    sub_1007467F0(v24, v25, v26, v27, v1);
    v18 = v17;
    v19 = v1;
    v20 = *(v24[0] + 16);

    sub_100937298();
    sub_1009372C8();
    sub_1009372D8();
    result = sub_1009372A8();
    if (v23)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      if (sub_100937348())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v22;
      sub_100706B30(&qword_100CB3A60, &qword_1009AD400);
      v21 = sub_100936A98();
      sub_1009373D8();
      result = v21(v24, 0);
    }

    else
    {
      sub_100745A80(v14, v15, v16, v1);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      result = sub_1000152C8(v14, v15, v16);
      v25 = v8;
      v26 = v10;
      v27 = v12 & 1;
      v1 = v19;
      v2 = v22;
    }

    ++v6;
    if (v13 == v2)
    {
      sub_1000152C8(v25, v26, v27);
      return v28;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_100736B2C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_100937378();
  }

  sub_100014170(0, &qword_100CBA2E0, IDSURI_ptr);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0, IDSURI_ptr);
  v17[1] = sub_100936E38();
  if (v2)
  {
    v3 = sub_100937318();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v1 = v3 | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v4 = v1 + 64;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 64);
  }

  v10 = 0;
  v11 = (v5 + 64) >> 6;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!sub_1009373C8() || (swift_dynamicCast(), (v16 = v17[0]) == 0))
    {
LABEL_20:
      sub_100308C6C(v1);
      return;
    }

LABEL_10:
    sub_100741A18(v17, v16, &qword_100CBA2E0, IDSURI_ptr, &qword_100CB3A78, &qword_1009B0C80);
  }

  v12 = v10;
  v13 = v6;
  v14 = v10;
  if (v6)
  {
LABEL_16:
    v15 = *(*(v1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v15)
    {
      goto LABEL_20;
    }

    v16 = v15;
    v6 = (v13 - 1) & v13;
    v10 = v14;
    goto LABEL_10;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_20;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *sub_100736D54(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_100937158();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_100741C8C(a1, a2);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_100937158() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_100937158();
  v2 = sub_100741EC4(v5, v6, &qword_100CB3A78, &qword_1009B0C80, &qword_100CBA2E0, IDSURI_ptr);
LABEL_10:

  return sub_1007420C4(a1, v2);
}

uint64_t sub_100736E68()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_10072FFE8();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_100736EE8(char *a1)
{
  v186 = sub_1009364F8();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v184 = &v174 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_100936528();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v181 = &v174 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v179 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v180 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v187 = &v174 - v7;
  v178 = v8;
  __chkstk_darwin(v9);
  v190 = &v174 - v10;
  v11 = sub_100706B30(&qword_100CB36D0, &unk_1009AD190);
  __chkstk_darwin(v11 - 8);
  v198 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v202 = &v174 - v14;
  __chkstk_darwin(v15);
  v205 = &v174 - v16;
  v208 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet(0);
  v17 = *(v208 - 8);
  v201 = v17;
  __chkstk_darwin(v208);
  v200 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v203 = &v174 - v20;
  v21 = sub_100706B30(&qword_100CB36B8, &qword_1009AD180);
  __chkstk_darwin(v21 - 8);
  v196 = &v174 - v22;
  v210 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet(0);
  v23 = *(v210 - 8);
  __chkstk_darwin(v210);
  v193 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v195 = &v174 - v26;
  __chkstk_darwin(v27);
  v211 = &v174 - v28;
  p_isa = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  v214 = *(p_isa - 1);
  __chkstk_darwin(p_isa);
  v31 = &v174 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v213 = &v174 - v33;
  v34 = a1 + 56;
  v35 = 1 << a1[32];
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(a1 + 7);
  v38 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock;
  v199 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_l;
  v39 = (v35 + 63) >> 6;
  v204 = (v17 + 56);
  v197 = "ata:desiredMaterial:)";
  v194 = (v23 + 56);

  v42 = 0;
  *&v43 = 136315394;
  v189 = v43;
  *&v43 = 136315650;
  v188 = v43;
  v209 = v38;
  v207 = a1;
  v206 = p_isa;
LABEL_5:
  if (v37)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v44 >= v39)
    {
      break;
    }

    v37 = *&v34[8 * v44];
    ++v42;
    if (v37)
    {
      v42 = v44;
LABEL_10:
      v45 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v17 = v213;
      sub_100748684(*(a1 + 6) + *(v214 + 72) * (v45 | (v42 << 6)), v213, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      sub_1007486EC(v17, v31, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v17 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet;
          v50 = v203;
          sub_1007486EC(v31, v203, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
          v51 = v212;
          v52 = v31;
          v53 = *(&v38->isa + v212);

          os_unfair_lock_lock(v53 + 4);

          v54 = v205;
          sub_100748684(v50, v205, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
          (*v204)(v54, 0, 1, v208);
          v55 = v54;
          v31 = v52;
          p_isa = v206;
          (*((swift_isaMask & v51->isa) + 0xF8))(v55);
          v56 = *(&v38->isa + v51);

          os_unfair_lock_unlock(v56 + 4);
          v57 = v50;
          a1 = v207;
          sub_100748754(v57, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
        }

        else
        {
LABEL_4:
          v40 = sub_100748754(v31, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
        }
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_4;
        }

        v47 = v211;
        sub_1007486EC(v31, v211, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
        v48 = v47 + *(v210 + 24);
        if (*v48)
        {
          v49 = [*v48 prefixedURI];
          if (!v49)
          {
            sub_100936B38();
            v49 = sub_100936B28();
            v38 = v209;
          }
        }

        else
        {
          v49 = 0;
        }

        v58 = sub_1006BBCF0(v49);

        if (!v58)
        {
          goto LABEL_86;
        }

        v59 = [objc_allocWithZone(IDSURI) initWithPrefixedURI:v58];

        if (v59)
        {
          v192 = v31;
          v60 = v211;
          v61 = *(v211 + *(v210 + 28));
          v62 = *(v48 + 8);
          v63 = v212;
          v64 = *((swift_isaMask & v212->isa) + 0x190);
          v191 = v59;
          v17 = v64(v62, v59, v61);
          v65 = *(&v38->isa + v63);

          os_unfair_lock_lock(v65 + 4);

          v66 = (*((swift_isaMask & v63->isa) + 0x160))(v60, v17);
          if (v66)
          {
            v177 = v66;
            v67 = v195;
            sub_100748684(v60, v195, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);

            v68 = sub_1009364B8();
            v69 = sub_100936F18();

            v70 = os_log_type_enabled(v68, v69);
            v176 = v17;
            if (v70)
            {
              v71 = v17;
              v72 = swift_slowAlloc();
              v175 = v69;
              v73 = v72;
              aBlock[0] = swift_slowAlloc();
              *v73 = v188;
              *(v73 + 4) = sub_10001273C(0xD000000000000017, v197 | 0x8000000000000000, aBlock);
              *(v73 + 12) = 2080;
              sub_1007477CC(&qword_100CB36E0, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet, &unk_1009BDEEC);
              v174 = v68;
              v74 = sub_100937548();
              v76 = v75;
              sub_100748754(v67, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
              v77 = sub_10001273C(v74, v76, aBlock);

              *(v73 + 14) = v77;
              *(v73 + 22) = 2080;
              v78 = *(*v71 + 176);

              v80 = v78(v79);
              v82 = v81;

              v83 = sub_10001273C(v80, v82, aBlock);

              *(v73 + 24) = v83;
              v84 = v174;
              _os_log_impl(&_mh_execute_header, v174, v175, "%s: send keyMaterial:%s toParticipant:%s)", v73, 0x20u);
              swift_arrayDestroy();

              v38 = v209;
            }

            else
            {

              sub_100748754(v67, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
            }

            v31 = v192;
            v17 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet;
            v96 = v211;
            v97 = v196;
            sub_100748684(v211, v196, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
            (*v194)(v97, 0, 1, v210);
            (*(*v177 + 168))(v97);
            v98 = *(&v38->isa + v212);

            os_unfair_lock_unlock(v98 + 4);

            v40 = sub_100748754(v96, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
            a1 = v207;
            p_isa = v206;
          }

          else
          {
            v95 = *(&v38->isa + v63);

            os_unfair_lock_unlock(v95 + 4);

            v40 = sub_100748754(v60, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
            a1 = v207;
            p_isa = v206;
            v31 = v192;
          }
        }

        else
        {
          v17 = v193;
          sub_100748684(v211, v193, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          v85 = sub_1009364B8();
          v86 = sub_100936F18();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v192 = swift_slowAlloc();
            aBlock[0] = v192;
            *v87 = v189;
            *(v87 + 4) = sub_10001273C(0xD000000000000017, v197 | 0x8000000000000000, aBlock);
            *(v87 + 12) = 2080;
            v217 = *(v17 + *(v210 + 24));
            v88 = v217;
            sub_100706B30(&qword_100CB36D8, &unk_1009AD1A0);
            v89 = sub_100936B88();
            v90 = v17;
            v91 = v89;
            v92 = v86;
            v94 = v93;
            sub_100748754(v90, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
            v17 = sub_10001273C(v91, v94, aBlock);

            *(v87 + 14) = v17;
            _os_log_impl(&_mh_execute_header, v85, v92, "%s: could not get IDSURI from %s", v87, 0x16u);
            swift_arrayDestroy();

            p_isa = v206;
            v38 = v209;
          }

          else
          {

            sub_100748754(v17, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          }

          a1 = v207;
          v40 = sub_100748754(v211, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
        }
      }

      goto LABEL_5;
    }
  }

  v99 = *(&v38->isa + v212);
  v38 = v212;

  os_unfair_lock_lock(v99 + 4);

  v100 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_participantsById;
  swift_beginAccess();
  v17 = *(&v38->isa + v100);
  p_isa = (v17 + 64);
  v101 = 1 << *(v17 + 32);
  v102 = -1;
  if (v101 < 64)
  {
    v102 = ~(-1 << v101);
  }

  v103 = v102 & *(v17 + 64);
  v104 = (v101 + 63) >> 6;

  a1 = 0;
  if (v103)
  {
    while (1)
    {
      v105 = a1;
LABEL_38:
      v39 = *(*(v17 + 56) + ((v105 << 9) | (8 * __clz(__rbit64(v103)))));
      v103 &= v103 - 1;
      v42 = *((swift_isaMask & v38->isa) + 0x178);

      (v42)(v106);

      if (!v103)
      {
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
LABEL_34:
    v105 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_80;
    }

    if (v105 >= v104)
    {
      break;
    }

    v103 = p_isa[v105];
    ++a1;
    if (v103)
    {
      a1 = v105;
      goto LABEL_38;
    }
  }

  v107 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_membersByURI;
  swift_beginAccess();
  v214 = v107;
  __chkstk_darwin(*(&v38->isa + v107));
  *(&v174 - 2) = v38;

  v109 = sub_100747E94(v108, sub_100747814);
  v17 = sub_1007368AC(v109);

  v111 = *((swift_isaMask & v38->isa) + 0xF0);
  v112 = v202;
  v111(v110);
  v113 = v112;
  v114 = *(v201 + 48);
  v115 = v208;
  if (v114(v113, 1, v208) == 1)
  {

    v116 = v113;
    goto LABEL_44;
  }

  a1 = v200;
  v117 = sub_1007486EC(v113, v200, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
  v118 = v198;
  v111(v117);
  if (!v114(v118, 1, v115))
  {
    v120 = v203;
    sub_100748684(v118, v203, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    sub_100013814(v118, &qword_100CB36D0, &unk_1009AD190);
    v121 = v120 + *(v115 + 20);
    v122 = v187;
    sub_1007486EC(v121, v187, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v123 = v122;
    v39 = v190;
    sub_1007486EC(v123, v190, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v40 = sub_10089CD2C();
    p_isa = &v209->isa;
    if (v41 >> 60 == 15)
    {
LABEL_83:

      sub_100748754(v39, type metadata accessor for IDSGroupEncryptionPublicIdentity);
      v170 = a1;
      goto LABEL_84;
    }

    v42 = v17 >> 62;
    if (!(v17 >> 62))
    {
      v124 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v124 >= 1)
      {
        goto LABEL_49;
      }

LABEL_82:
      sub_10001C370(v40, v41);
      goto LABEL_83;
    }

LABEL_81:
    v171 = v40;
    v172 = v41;
    v173 = sub_1009373F8();
    v41 = v172;
    v124 = v173;
    v40 = v171;
    if (v124 >= 1)
    {
LABEL_49:
      v125 = v40;
      v126 = v41;

      v127 = sub_1009364B8();
      v128 = sub_100936F18();

      v129 = os_log_type_enabled(v127, v128);
      v213 = v126;
      v210 = v42;
      v211 = v125;
      if (v129)
      {
        v130 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v130 = v189;
        *(v130 + 4) = sub_10001273C(0xD000000000000017, v197 | 0x8000000000000000, aBlock);
        *(v130 + 12) = 2080;
        sub_100014170(0, &qword_100CBA2E0, IDSURI_ptr);
        v131 = sub_100936CF8();
        v133 = sub_10001273C(v131, v132, aBlock);

        *(v130 + 14) = v133;
        _os_log_impl(&_mh_execute_header, v127, v128, "%s: Sending PreKey to %s", v130, 0x16u);
        swift_arrayDestroy();
      }

      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10071DE64(0, v124, 0);
      v134 = 0;
      v135 = aBlock[0];
      v136 = v17 & 0xC000000000000001;
      do
      {
        if (v136)
        {
          v137 = sub_100937268();
        }

        else
        {
          v137 = *(v17 + 8 * v134 + 32);
        }

        v138 = v137;
        v139 = [v137 prefixedURI];
        v140 = sub_100936B38();
        v142 = v141;

        aBlock[0] = v135;
        v144 = *(v135 + 16);
        v143 = *(v135 + 24);
        if (v144 >= v143 >> 1)
        {
          sub_10071DE64((v143 > 1), v144 + 1, 1);
          v135 = aBlock[0];
        }

        ++v134;
        *(v135 + 16) = v144 + 1;
        v145 = v135 + 16 * v144;
        *(v145 + 32) = v140;
        *(v145 + 40) = v142;
      }

      while (v124 != v134);
      sub_100747820(v135);

      isa = sub_100936E08().super.isa;

      v206 = [objc_opt_self() destinationWithStrings:isa];

      v207 = im_primary_queue();
      if (v207)
      {
        v147 = v180;
        sub_100748684(v190, v180, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        v148 = (*(v179 + 80) + 40) & ~*(v179 + 80);
        v149 = (v178 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
        v150 = swift_allocObject();
        v151 = v211;
        v150[2] = v38;
        v150[3] = v151;
        v152 = v213;
        v150[4] = v213;
        sub_1007486EC(v147, v150 + v148, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        v153 = v206;
        *(v150 + v149) = v206;
        aBlock[4] = sub_10074812C;
        aBlock[5] = v150;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000154AC;
        aBlock[3] = &unk_100BE6F28;
        v154 = _Block_copy(aBlock);
        v155 = v38;
        sub_1007483B0(v151, v152);
        v206 = v153;
        v156 = v181;
        sub_100936508();
        v215 = &_swiftEmptyArrayStorage;
        sub_1007477CC(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100706B30(&unk_100CB3550, &qword_1009AC360);
        sub_1007483C4();
        v157 = v184;
        v158 = v186;
        sub_1009370B8();
        v159 = v207;
        sub_100936F88();
        _Block_release(v154);

        (*(v185 + 8))(v157, v158);
        (*(v182 + 8))(v156, v183);

        if (v210)
        {
          v160 = sub_1009373F8();
          p_isa = &v209->isa;
          if (!v160)
          {
LABEL_78:

            sub_10001C370(v211, v213);

            sub_100748754(v190, type metadata accessor for IDSGroupEncryptionPublicIdentity);
            v170 = v200;
LABEL_84:
            sub_100748754(v170, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
            goto LABEL_45;
          }
        }

        else
        {
          v160 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          p_isa = &v209->isa;
          if (!v160)
          {
            goto LABEL_78;
          }
        }

        if (v160 >= 1)
        {
          v161 = 0;
          while (1)
          {
            v162 = v136 ? sub_100937268() : *(v17 + 8 * v161 + 32);
            v163 = v162;
            v164 = *(&v38->isa + v214);
            if ((v164 & 0xC000000000000001) != 0)
            {
              break;
            }

            if (*(v164 + 16))
            {

              v167 = sub_1007417B0(v163);
              if (v168)
              {
                v166 = *(*(v164 + 56) + 8 * v167);

                if (v166)
                {
                  goto LABEL_77;
                }
              }

              else
              {
              }
            }

LABEL_66:
            ++v161;

            if (v160 == v161)
            {
              goto LABEL_78;
            }
          }

          p_isa = &v209->isa;
          v165 = sub_1009373A8();

          if (!v165)
          {
            goto LABEL_66;
          }

          v215 = v165;
          type metadata accessor for IDSGroupPushMaterialExchangeMember(0);
          swift_dynamicCast();
          v166 = aBlock[0];
          if (!aBlock[0])
          {
            goto LABEL_66;
          }

LABEL_77:
          v169 = v205;
          sub_100748684(v200, v205, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
          (*v204)(v169, 0, 1, v208);
          (*(*v166 + 104))(v169);

          goto LABEL_66;
        }

        __break(1u);
LABEL_86:
        __break(1u);
      }

      __break(1u);
      return;
    }

    goto LABEL_82;
  }

  sub_100748754(a1, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);

  v116 = v118;
LABEL_44:
  sub_100013814(v116, &qword_100CB36D0, &unk_1009AD190);
  p_isa = &v209->isa;
LABEL_45:
  v119 = *(p_isa + v38);

  os_unfair_lock_unlock(v119 + 4);
}

uint64_t sub_100738938(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100706B30(&qword_100CB3718, qword_1009AD1F0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = sub_100706B30(&qword_100CB36D0, &unk_1009AD190);
  __chkstk_darwin(v11 - 8);
  v29 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v28 - v18;
  v20 = (*(*a1 + 96))(v17);
  (*((swift_isaMask & *a2) + 0xF0))(v20);
  v21 = *(v8 + 56);
  sub_100012D50(v19, v10, &qword_100CB36D0, &unk_1009AD190);
  sub_100012D50(v15, &v10[v21], &qword_100CB36D0, &unk_1009AD190);
  v22 = *(v5 + 48);
  if (v22(v10, 1, v4) != 1)
  {
    v24 = v29;
    sub_100012D50(v10, v29, &qword_100CB36D0, &unk_1009AD190);
    if (v22(&v10[v21], 1, v4) != 1)
    {
      v25 = v28;
      sub_1007486EC(&v10[v21], v28, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
      sub_1007477CC(&qword_100CB2EB8, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet, &unk_1009AC844);
      v26 = sub_100936B18();
      sub_100748754(v25, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
      sub_100013814(v15, &qword_100CB36D0, &unk_1009AD190);
      sub_100013814(v19, &qword_100CB36D0, &unk_1009AD190);
      sub_100748754(v24, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
      sub_100013814(v10, &qword_100CB36D0, &unk_1009AD190);
      v23 = v26 ^ 1;
      return v23 & 1;
    }

    sub_100013814(v15, &qword_100CB36D0, &unk_1009AD190);
    sub_100013814(v19, &qword_100CB36D0, &unk_1009AD190);
    sub_100748754(v24, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    goto LABEL_6;
  }

  sub_100013814(v15, &qword_100CB36D0, &unk_1009AD190);
  sub_100013814(v19, &qword_100CB36D0, &unk_1009AD190);
  if (v22(&v10[v21], 1, v4) != 1)
  {
LABEL_6:
    sub_100013814(v10, &qword_100CB3718, qword_1009AD1F0);
    v23 = 1;
    return v23 & 1;
  }

  sub_100013814(v10, &qword_100CB36D0, &unk_1009AD190);
  v23 = 0;
  return v23 & 1;
}

void sub_100738D8C(void *a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  v80 = a1;
  v81 = a2;
  v6 = sub_1009364F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100936528();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10089CD2C();
  if (v14 >> 60 == 15)
  {
    v81 = sub_1009364B8();
    v15 = sub_100936F18();
    if (os_log_type_enabled(v81, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v84 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10001273C(0xD000000000000031, 0x8000000100AFF940, &v84);
      _os_log_impl(&_mh_execute_header, v81, v15, "%s: cannot send keyRecoveryRequest because we could not get public identity data", v16, 0xCu);
      sub_100012970(v17);
    }

    else
    {
      v67 = v81;
    }
  }

  else
  {
    v18 = v13;
    v19 = v14;
    v73 = v11;
    v74 = v9;
    v75 = v10;
    v76 = v7;
    v77 = v6;
    v20 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v21 = sub_10089CA40(*(a3 + *(v20 + 32)));
    sub_100706B30(&unk_100CBB120, &unk_1009AD1B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1009AD150;
    *(inited + 32) = sub_100936B38();
    *(inited + 40) = v23;
    v78 = v4;
    v24 = *&v4[OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_groupID];
    v25 = *&v4[OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_groupID + 8];
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v24;
    *(inited + 56) = v25;
    *(inited + 80) = sub_100936B38();
    *(inited + 88) = v26;
    v27 = v80;
    v28 = *v80;
    v29 = v80[1];
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = v28;
    *(inited + 104) = v29;
    *(inited + 128) = sub_100936B38();
    *(inited + 136) = v30;
    *(inited + 168) = &type metadata for Data;
    *(inited + 144) = v18;
    *(inited + 152) = v19;
    *(inited + 176) = sub_100936B38();
    *(inited + 184) = v31;
    *(inited + 216) = &type metadata for Int;
    *(inited + 192) = v21;

    sub_1007483B0(v18, v19);
    v32 = sub_100746D18(inited);
    swift_setDeallocating();
    sub_100706B30(&qword_100CB36E8, &unk_1009B64F0);
    swift_arrayDestroy();
    v33 = type metadata accessor for IDSGroupEncryptionControllerParticipantKeyRecoveryRequest(0);
    if (*(v27 + *(v33 + 28)) == 1)
    {
      v34 = sub_100936B38();
      v36 = v35;
      v86 = &type metadata for Bool;
      LOBYTE(v84) = 1;
      sub_100308C74(&v84, v83);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v32;
      sub_10074340C(v83, v34, v36, isUniquelyReferenced_nonNull_native);

      v32 = v82;
    }

    if (*(v27 + *(v33 + 32)) == 1)
    {
      v38 = sub_100936B38();
      v40 = v39;
      v86 = &type metadata for Bool;
      LOBYTE(v84) = 1;
      sub_100308C74(&v84, v83);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v32;
      sub_10074340C(v83, v38, v40, v41);

      v32 = v82;
    }

    v42 = v81;
    v43 = sub_100936B28();
    v44 = sub_1006BBCF0(v43);

    v45 = [*(&v42->isa + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken) rawToken];
    v46 = sub_100935EA8();
    v48 = v47;

    isa = sub_100935E78().super.isa;
    sub_1007156D8(v46, v48);
    v50 = _IDSCopyIDForTokenWithURI();

    if (v50)
    {
      v81 = v19;
      v51 = sub_100936B38();
      v53 = v52;

      sub_100706B30(&unk_100CBABF0, &unk_1009ACC00);
      v54 = swift_initStackObject();
      *(v54 + 16) = xmmword_1009AC700;
      *(v54 + 32) = v51;
      *(v54 + 40) = v53;

      sub_100747A44(v54);
      swift_setDeallocating();
      sub_100748428(v54 + 32);
      v55 = sub_100936E08().super.isa;

      v56 = [objc_opt_self() destinationWithStrings:v55];

      v57 = im_primary_queue();
      v58 = v78;
      if (v57)
      {
        v59 = v57;

        v60 = swift_allocObject();
        v60[2] = v58;
        v60[3] = v32;
        v60[4] = v56;
        v87 = sub_10074847C;
        v88 = v60;
        *&v84 = _NSConcreteStackBlock;
        *(&v84 + 1) = 1107296256;
        v85 = sub_1000154AC;
        v86 = &unk_100BE6F78;
        v61 = _Block_copy(&v84);
        v62 = v58;
        v63 = v56;
        v64 = v79;
        sub_100936508();
        *&v83[0] = &_swiftEmptyArrayStorage;
        sub_1007477CC(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100706B30(&unk_100CB3550, &qword_1009AC360);
        sub_1007483C4();
        v65 = v74;
        v66 = v77;
        sub_1009370B8();
        sub_100936F88();
        _Block_release(v61);

        sub_10001C370(v18, v81);
        (*(v76 + 8))(v65, v66);
        (*(v73 + 8))(v64, v75);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      v68 = sub_1009364B8();
      v69 = sub_100936EF8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *&v84 = v71;
        *v70 = 136315138;
        *(v70 + 4) = sub_10001273C(0xD000000000000031, 0x8000000100AFF940, &v84);
        _os_log_impl(&_mh_execute_header, v68, v69, "%s: cannot send keyRecoveryRequest because we could not get destination ID", v70, 0xCu);
        sub_100012970(v71);
      }

      sub_10001C370(v18, v19);
    }
  }
}

uint64_t sub_100739690(uint64_t a1, uint64_t *a2)
{
  if (BYTE4(a1))
  {
    v2 = sub_1009364B8();
    v3 = sub_100936EF8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v4 = 136315394;
      *(v4 + 4) = sub_10001273C(0xD00000000000001BLL, 0x8000000100AFF980, &v10);
      *(v4 + 12) = 2080;
      v5 = sub_100936B88();
      v7 = sub_10001273C(v5, v6, &v10);

      *(v4 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v2, v3, "%s: unknown kind %s", v4, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }

  else
  {
    v9 = *a2;
    if (a1)
    {
      return (*(v9 + 144))();
    }

    else
    {
      return (*(v9 + 120))();
    }
  }
}

uint64_t sub_100739850(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock;
  v7 = *(v3 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_lock);

  os_unfair_lock_lock(v7 + 4);

  v8 = objc_allocWithZone(IDSURI);
  v9 = sub_100936B28();
  v10 = [v8 initWithPrefixedURI:v9];

  if (v10)
  {
    v11 = sub_10073E6B8(*(a1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken), v10, *(a1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID));
    v12 = (*((swift_isaMask & *v3) + 0x168))(a2 & 0xFFFFFFFFFFLL, v11);
    if (v12)
    {
      (*(*v12 + 232))(v12);
    }

    else
    {
    }
  }

  v13 = *(v3 + v6);

  os_unfair_lock_unlock(v13 + 4);
}

void sub_1007399FC(void *a1)
{
  v2 = sub_1009364F8();
  v402 = *(v2 - 8);
  v403 = v2;
  __chkstk_darwin(v2);
  v400 = &v389 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v401 = sub_100936528();
  v399 = *(v401 - 8);
  __chkstk_darwin(v401);
  v398 = &v389 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v432 = *(v436 - 8);
  __chkstk_darwin(v436);
  v423 = &v389 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v409 = &v389 - v7;
  __chkstk_darwin(v8);
  v428 = &v389 - v9;
  __chkstk_darwin(v10);
  v418 = &v389 - v11;
  __chkstk_darwin(v12);
  v431 = &v389 - v13;
  __chkstk_darwin(v14);
  v435 = &v389 - v15;
  __chkstk_darwin(v16);
  v391 = &v389 - v17;
  __chkstk_darwin(v18);
  v421 = &v389 - v19;
  __chkstk_darwin(v20);
  v411 = &v389 - v21;
  __chkstk_darwin(v22);
  v390 = &v389 - v23;
  __chkstk_darwin(v24);
  v392 = &v389 - v25;
  __chkstk_darwin(v26);
  v410 = &v389 - v27;
  v28 = sub_100706B30(&qword_100CB2AA0, &unk_1009B37D0);
  __chkstk_darwin(v28 - 8);
  v407 = &v389 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v427 = &v389 - v31;
  __chkstk_darwin(v32);
  v434 = &v389 - v33;
  __chkstk_darwin(v34);
  v406 = &v389 - v35;
  __chkstk_darwin(v36);
  v429 = &v389 - v37;
  v440 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet(0);
  *&v430 = *(v440 - 8);
  __chkstk_darwin(v440);
  v393 = &v389 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v444 = &v389 - v40;
  __chkstk_darwin(v41);
  v413 = (&v389 - v42);
  __chkstk_darwin(v43);
  v412 = &v389 - v44;
  __chkstk_darwin(v45);
  v405 = &v389 - v46;
  __chkstk_darwin(v47);
  v404 = &v389 - v48;
  __chkstk_darwin(v49);
  v422 = &v389 - v50;
  v51 = sub_100706B30(&qword_100CB36B8, &qword_1009AD180);
  v394 = *(v51 - 8);
  __chkstk_darwin(v51 - 8);
  v397 = &v389 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v396 = &v389 - v54;
  __chkstk_darwin(v55);
  v414 = &v389 - v56;
  __chkstk_darwin(v57);
  v415 = &v389 - v58;
  __chkstk_darwin(v59);
  v408 = &v389 - v60;
  __chkstk_darwin(v61);
  v443 = &v389 - v62;
  __chkstk_darwin(v63);
  *&v417 = &v389 - v64;
  __chkstk_darwin(v65);
  v425 = &v389 - v66;
  __chkstk_darwin(v67);
  v424 = &v389 - v68;
  __chkstk_darwin(v69);
  v416 = (&v389 - v70);
  __chkstk_darwin(v71);
  v438 = &v389 - v72;
  __chkstk_darwin(v73);
  v75 = &v389 - v74;
  __chkstk_darwin(v76);
  v78 = &v389 - v77;
  v395 = v79;
  v81 = __chkstk_darwin(v80);
  v83 = &v389 - v82;
  v84 = *(*a1 + 120);
  v419 = *a1 + 120;
  v420 = v84;
  v85 = v84(v81);
  v86 = *(*a1 + 144);
  v437 = a1;
  v87 = v86();
  v88 = *(*v85 + 160);
  v439 = v83;
  v89 = v88();
  v90 = *(*v87 + 160);
  v433 = v78;
  v91 = v440;
  v92 = v90(v89);
  v426 = v85;
  (v88)(v92);
  v93 = (v430 + 48);
  v441 = *(v430 + 48);
  if (v441(v75, 1, v91))
  {
    v94 = sub_100013814(v75, &qword_100CB36B8, &qword_1009AD180);
    v95 = &_swiftEmptySetSingleton;
  }

  else
  {
    v96 = v422;
    sub_100748684(v75, v422, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    sub_100013814(v75, &qword_100CB36B8, &qword_1009AD180);
    v95 = *(v96 + 8);

    v94 = sub_100748754(v96, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  }

  v456 = v95;
  v97 = v438;
  v90(v94);
  v98 = v97;
  v99 = v97;
  v100 = v441;
  v101 = v441(v99, 1, v91);
  v102 = v433;
  if (v101)
  {
    sub_100013814(v98, &qword_100CB36B8, &qword_1009AD180);
    v103 = &_swiftEmptySetSingleton;
  }

  else
  {
    v104 = v422;
    sub_100748684(v98, v422, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    sub_100013814(v98, &qword_100CB36B8, &qword_1009AD180);
    v103 = *(v104 + 8);

    v105 = v104;
    v100 = v441;
    sub_100748754(v105, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  }

  v106 = v439;
  v107 = v426;
  v455 = v103;
  v108 = v416;
  sub_100012D50(v439, v416, &qword_100CB36B8, &qword_1009AD180);
  v109 = v100(v108, 1, v440);
  v422 = v87;
  v438 = v103;
  if (v109 == 1)
  {
    sub_100013814(v106, &qword_100CB36B8, &qword_1009AD180);

    sub_100013814(v108, &qword_100CB36B8, &qword_1009AD180);
    v110 = v442;
    v111 = v421;
LABEL_11:
    v114 = v440;
    (*(v430 + 56))(v106, 1, 1, v440);
    v456 = &_swiftEmptySetSingleton;
    v95 = &_swiftEmptySetSingleton;
    goto LABEL_13;
  }

  v112 = v404;
  sub_1007486EC(v108, v404, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  v113 = (*(*v107 + 208))(v112);
  v111 = v421;
  if (v113)
  {
    sub_100748754(v112, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    sub_100013814(v106, &qword_100CB36B8, &qword_1009AD180);

    v110 = v442;
    goto LABEL_11;
  }

  (*(*v107 + 216))(v112);
  sub_100748754(v112, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  v110 = v442;
  v114 = v440;
LABEL_13:
  v115 = v424;
  sub_100012D50(v102, v424, &qword_100CB36B8, &qword_1009AD180);
  v116 = v441(v115, 1, v114);
  v445 = v93;
  if (v116 == 1)
  {
    sub_100013814(v102, &qword_100CB36B8, &qword_1009AD180);

    sub_100013814(v115, &qword_100CB36B8, &qword_1009AD180);
LABEL_17:
    v119 = v440;
    (*(v430 + 56))(v102, 1, 1, v440);
    v455 = &_swiftEmptySetSingleton;
    v438 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  v117 = v405;
  sub_1007486EC(v115, v405, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  v118 = v422;
  if ((*(*v422 + 208))(v117))
  {
    sub_100748754(v117, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    sub_100013814(v102, &qword_100CB36B8, &qword_1009AD180);

    goto LABEL_17;
  }

  (*(*v118 + 216))(v117);
  sub_100748754(v117, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  v119 = v440;
LABEL_19:
  sub_100706B30(&qword_100CB36F0, &qword_1009AD1C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1009AD160;
  *(inited + 32) = sub_100936B38();
  *(inited + 40) = v121;
  v122 = *(v110 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_groupID);
  v123 = *(v110 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_groupID + 8);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v122;
  *(inited + 56) = v123;
  *(inited + 80) = sub_100936B38();
  *(inited + 88) = v124;
  v125 = *(v110 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_sessionID);
  v126 = *(v110 + OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_sessionID + 8);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v125;
  *(inited + 104) = v126;

  v127 = sub_100746BE8(inited);
  swift_setDeallocating();
  sub_100706B30(&qword_100CB36F8, &unk_1009AD1C8);
  swift_arrayDestroy();
  v128 = v429;
  sub_10073D080(v95, v429);
  v129 = v439;
  v130 = v425;
  sub_100012D50(v439, v425, &qword_100CB36B8, &qword_1009AD180);
  v131 = v441(v130, 1, v119);
  v132 = v119;
  v424 = v127;
  if (v131 == 1)
  {
    sub_100013814(v130, &qword_100CB36B8, &qword_1009AD180);
    LODWORD(v425) = 0;
    v133 = v427;
    v134 = v437;
    v135 = v435;
  }

  else
  {
    v136 = v412;
    sub_1007486EC(v130, v412, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    v137 = v406;
    sub_100012D50(v128, v406, &qword_100CB2AA0, &unk_1009B37D0);
    v138 = (*(v432 + 48))(v137, 1, v436);
    v135 = v435;
    if (v138 == 1)
    {
      sub_100748754(v136, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
      sub_100013814(v137, &qword_100CB2AA0, &unk_1009B37D0);
      LODWORD(v425) = 0;
      v133 = v427;
      v134 = v437;
    }

    else
    {
      v139 = v410;
      sub_1007486EC(v137, v410, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v140 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_l;
      v141 = v392;
      sub_100748684(v139, v392, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v142 = v437;

      v143 = sub_1009364B8();
      v144 = sub_100936F18();

      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        *&v446 = swift_slowAlloc();
        *v145 = 136315650;
        *(v145 + 4) = sub_10001273C(0xD00000000000002ELL, 0x8000000100AFF9A0, &v446);
        *&v430 = v140;
        *(v145 + 12) = 2080;
        v146 = (*(*v142 + 176))();
        v148 = sub_10001273C(v146, v147, &v446);

        *(v145 + 14) = v148;
        *(v145 + 22) = 2080;
        sub_1009360A8();
        sub_1007477CC(&qword_100CB2DA8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v149 = sub_100937548();
        v151 = v150;
        sub_100748754(v141, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v152 = sub_10001273C(v149, v151, &v446);

        *(v145 + 24) = v152;
        _os_log_impl(&_mh_execute_header, v143, v144, "%s: participant: %s should include MKI %s", v145, 0x20u);
        swift_arrayDestroy();
        v136 = v412;

        v139 = v410;
      }

      else
      {

        sub_100748754(v141, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      }

      v153 = v434;
      sub_100743C1C(v139, v434);
      sub_100013814(v153, &qword_100CB2AA0, &unk_1009B37D0);
      v132 = v440;
      v154 = sub_10073DD94(v139, v136 + *(v440 + 24));
      v102 = v433;
      if (v154)
      {
        v155 = v154;
        v156 = v390;
        sub_100748684(v139, v390, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v157 = v437;

        v158 = v157;
        v159 = sub_1009364B8();
        v160 = sub_100936F18();

        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          *&v446 = swift_slowAlloc();
          *v161 = 136315906;
          *(v161 + 4) = sub_10001273C(0xD00000000000002ELL, 0x8000000100AFF9A0, &v446);
          *(v161 + 12) = 2080;
          v162 = (*(*v158 + 176))();
          v164 = sub_10001273C(v162, v163, &v446);

          *(v161 + 14) = v164;
          *(v161 + 22) = 2080;
          sub_1009360A8();
          sub_1007477CC(&qword_100CB2DA8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v165 = sub_100937548();
          v167 = v166;
          sub_100748754(v156, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v168 = sub_10001273C(v165, v167, &v446);

          *(v161 + 24) = v168;
          *(v161 + 32) = 2080;
          sub_100706B30(&qword_100CB3700, &qword_1009AD1D8);
          v169 = sub_100936A88();
          v171 = sub_10001273C(v169, v170, &v446);

          *(v161 + 34) = v171;
          _os_log_impl(&_mh_execute_header, v159, v160, "%s: participant: %s, MKI: %s dict: %s", v161, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          sub_100748754(v156, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        }

        v172 = sub_100936B38();
        v174 = v173;
        v448 = sub_100706B30(&qword_100CB3710, &qword_1009AD1E8);
        *&v446 = v155;
        sub_100308C74(&v446, &v452);
        v175 = v424;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v454[0] = v175;
        v177 = sub_100729284(&v452, v453);
        v178 = __chkstk_darwin(v177);
        v180 = (&v389 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v181 + 16))(v180, v178);
        sub_1007463F0(*v180, v172, v174, isUniquelyReferenced_nonNull_native, v454, &qword_100CB3710, &qword_1009AD1E8);
        sub_100012970(&v452);

        v424 = v454[0];
        sub_100748754(v410, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        sub_100748754(v412, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
        LODWORD(v425) = 1;
        v133 = v427;
        v134 = v437;
        v129 = v439;
        v132 = v440;
        v102 = v433;
        v135 = v435;
      }

      else
      {
        sub_100748754(v139, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        sub_100748754(v136, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
        LODWORD(v425) = 0;
        v133 = v427;
        v134 = v437;
        v129 = v439;
      }

      v111 = v421;
    }
  }

  sub_10073D080(v438, v133);
  v182 = v417;
  sub_100012D50(v102, v417, &qword_100CB36B8, &qword_1009AD180);
  if (v441(v182, 1, v132) == 1)
  {
    v183 = &qword_100CB36B8;
    v184 = &qword_1009AD180;
LABEL_37:
    v186 = sub_100013814(v182, v183, v184);
    goto LABEL_38;
  }

  v185 = v413;
  sub_1007486EC(v182, v413, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  v182 = v407;
  sub_100012D50(v133, v407, &qword_100CB2AA0, &unk_1009B37D0);
  if ((*(v432 + 48))(v182, 1, v436) == 1)
  {
    sub_100748754(v185, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    v183 = &qword_100CB2AA0;
    v184 = &unk_1009B37D0;
    goto LABEL_37;
  }

  v224 = v411;
  sub_1007486EC(v182, v411, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  v225 = v134;
  v226 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_l;
  sub_100748684(v224, v111, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);

  v227 = sub_1009364B8();
  v228 = sub_100936F18();

  if (os_log_type_enabled(v227, v228))
  {
    v229 = swift_slowAlloc();
    *&v446 = swift_slowAlloc();
    *v229 = 136315650;
    *(v229 + 4) = sub_10001273C(0xD00000000000002ELL, 0x8000000100AFF9A0, &v446);
    v438 = v226;
    *(v229 + 12) = 2080;
    v230 = (*(*v225 + 176))();
    v232 = sub_10001273C(v230, v231, &v446);

    *(v229 + 14) = v232;
    *(v229 + 22) = 2080;
    sub_1009360A8();
    sub_1007477CC(&qword_100CB2DA8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v233 = sub_100937548();
    v235 = v234;
    sub_100748754(v111, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v236 = sub_10001273C(v233, v235, &v446);

    *(v229 + 24) = v236;
    _os_log_impl(&_mh_execute_header, v227, v228, "%s: participant: %s should include SKI %s", v229, 0x20u);
    swift_arrayDestroy();

    v224 = v411;
  }

  else
  {

    sub_100748754(v111, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
  }

  v237 = v434;
  sub_100743C1C(v224, v434);
  sub_100013814(v237, &qword_100CB2AA0, &unk_1009B37D0);
  v132 = v440;
  v238 = v413;
  v239 = sub_10073E200(v224, v413 + *(v440 + 24));
  if (v239)
  {
    v240 = v239;
    v241 = v391;
    sub_100748684(v224, v391, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v242 = v437;

    v243 = v242;
    v244 = sub_1009364B8();
    v245 = sub_100936F18();

    if (os_log_type_enabled(v244, v245))
    {
      v246 = swift_slowAlloc();
      *&v446 = swift_slowAlloc();
      *v246 = 136315906;
      *(v246 + 4) = sub_10001273C(0xD00000000000002ELL, 0x8000000100AFF9A0, &v446);
      *(v246 + 12) = 2080;
      v247 = (*(*v243 + 176))();
      v249 = sub_10001273C(v247, v248, &v446);

      *(v246 + 14) = v249;
      *(v246 + 22) = 2080;
      sub_1009360A8();
      sub_1007477CC(&qword_100CB2DA8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v250 = sub_100937548();
      v252 = v251;
      sub_100748754(v241, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v253 = sub_10001273C(v250, v252, &v446);

      *(v246 + 24) = v253;
      *(v246 + 32) = 2080;
      sub_100706B30(&qword_100CB3700, &qword_1009AD1D8);
      v254 = sub_100936A88();
      v256 = sub_10001273C(v254, v255, &v446);

      *(v246 + 34) = v256;
      _os_log_impl(&_mh_execute_header, v244, v245, "%s: participant: %s, SKI: %s dict: %s", v246, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_100748754(v241, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    }

    v379 = sub_100936B38();
    v381 = v380;
    v448 = sub_100706B30(&qword_100CB3710, &qword_1009AD1E8);
    *&v446 = v240;
    sub_100308C74(&v446, &v452);
    v382 = v424;
    v383 = swift_isUniquelyReferenced_nonNull_native();
    v454[0] = v382;
    v384 = sub_100729284(&v452, v453);
    v385 = __chkstk_darwin(v384);
    v387 = (&v389 - ((v386 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v388 + 16))(v387, v385);
    sub_1007463F0(*v387, v379, v381, v383, v454, &qword_100CB3710, &qword_1009AD1E8);
    sub_100012970(&v452);

    v424 = v454[0];
    sub_100748754(v411, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v186 = sub_100748754(v413, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    LODWORD(v425) = 1;
    v134 = v437;
    v129 = v439;
    v132 = v440;
    v135 = v435;
  }

  else
  {
    sub_100748754(v224, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v186 = sub_100748754(v238, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    v134 = v437;
    v129 = v439;
  }

LABEL_38:
  v188 = v456;
  v189 = v441;
  if (v456[2])
  {
    *&v430 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_l;
    v421 = "state(forKind:participant:)";
    v438 = &_swiftEmptyArrayStorage;
    *&v187 = 136315650;
    v417 = v187;
    v190 = v443;
    do
    {
      sub_100012D50(v129, v190, &qword_100CB36B8, &qword_1009AD180);
      if (v189(v190, 1, v132) == 1)
      {
        v186 = sub_100013814(v190, &qword_100CB36B8, &qword_1009AD180);
      }

      else
      {
        sub_1007486EC(v190, v444, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
        v191 = 0;
        v192 = 1 << *(v188 + 32);
        v193 = (v192 + 63) >> 6;
        v194 = 56;
        while (1)
        {
          v195 = *(v188 + v194);
          if (v195)
          {
            break;
          }

          v191 -= 64;
          v194 += 8;
          if (!--v193)
          {
            goto LABEL_48;
          }
        }

        v196 = __clz(__rbit64(v195));
        if (v196 - v192 == v191)
        {
LABEL_48:
          v186 = sub_100748754(v444, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          goto LABEL_41;
        }

        sub_100745F74(v196 - v191, *(v188 + 36), v188, v135);
        v197 = v135;
        v198 = v431;
        sub_100748684(v197, v431, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);

        v199 = sub_1009364B8();
        v200 = sub_100936F18();

        if (os_log_type_enabled(v199, v200))
        {
          v201 = swift_slowAlloc();
          *&v446 = swift_slowAlloc();
          *v201 = v417;
          *(v201 + 4) = sub_10001273C(0xD00000000000002ELL, v421 | 0x8000000000000000, &v446);
          *(v201 + 12) = 2080;
          v202 = (*(*v134 + 176))();
          v204 = sub_10001273C(v202, v203, &v446);

          *(v201 + 14) = v204;
          *(v201 + 22) = 2080;
          sub_1009360A8();
          sub_1007477CC(&qword_100CB2DA8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v205 = sub_100937548();
          v207 = v206;
          sub_100748754(v198, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v208 = sub_10001273C(v205, v207, &v446);
          v134 = v437;

          *(v201 + 24) = v208;
          _os_log_impl(&_mh_execute_header, v199, v200, "%s: participant: %s should include local additional MKI %s", v201, 0x20u);
          swift_arrayDestroy();

          v129 = v439;
        }

        else
        {

          sub_100748754(v198, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        }

        v209 = v434;
        v135 = v435;
        sub_100743C1C(v435, v434);
        sub_100013814(v209, &qword_100CB2AA0, &unk_1009B37D0);
        v132 = v440;
        v210 = v444;
        v211 = sub_10073DD94(v135, &v444[*(v440 + 24)]);
        if (v211)
        {
          v212 = v211;
          v213 = v438;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v213 = sub_10074167C(0, *(v213 + 2) + 1, 1, v213);
          }

          v215 = *(v213 + 2);
          v214 = *(v213 + 3);
          v438 = v213;
          if (v215 >= v214 >> 1)
          {
            v438 = sub_10074167C((v214 > 1), v215 + 1, 1, v438);
          }

          sub_100748754(v135, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v186 = sub_100748754(v444, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          v216 = v438;
          *(v438 + 2) = v215 + 1;
          *&v216[8 * v215 + 32] = v212;
          v129 = v439;
          v189 = v441;
        }

        else
        {
          sub_100748754(v135, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v186 = sub_100748754(v210, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          v189 = v441;
        }
      }

LABEL_41:
      v188 = v456;
      v190 = v443;
    }

    while (v456[2]);
  }

  else
  {
    v438 = &_swiftEmptyArrayStorage;
  }

  v217 = (v420)(v186);
  v218 = (*(*v217 + 184))(v217);

  if ((v218 & 1) != 0 && (*(v432 + 48))(v429, 1, v436) != 1)
  {
    if ((*((swift_isaMask & *v442) + 0x120))())
    {
      v221 = v219;
      ObjectType = swift_getObjectType();
      v223 = (*(v221 + 8))(v134[2], ObjectType, v221);
      swift_unknownObjectRelease();
    }

    else
    {
      v223 = &_swiftEmptySetSingleton;
    }

    v257 = v423;
    v258 = 0;
    v259 = v223 + 56;
    v260 = 1 << v223[32];
    v261 = -1;
    if (v260 < 64)
    {
      v261 = ~(-1 << v260);
    }

    v262 = v261 & *(v223 + 7);
    v443 = OBJC_IVAR____TtC17identityservicesd38IDSGroupPushMaterialExchangeController_l;
    v263 = (v260 + 63) >> 6;
    v431 = "state(forKind:participant:)";
    *&v220 = 136315650;
    v430 = v220;
    v444 = v223;
    v435 = v263;
    v421 = (v223 + 56);
LABEL_74:
    v264 = v258;
    while (v262)
    {
      v258 = v264;
LABEL_81:
      v265 = __clz(__rbit64(v262));
      v262 &= v262 - 1;
      v266 = v418;
      sub_100748684(*(v223 + 6) + *(v432 + 72) * (v265 | (v258 << 6)), v418, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v267 = v266;
      v268 = v428;
      sub_1007486EC(v267, v428, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v269 = v268 + *(v436 + 52);
      if ((*(v269 + 8) & 1) != 0 || *v269 != v134[4])
      {
        sub_100748684(v268, v257, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);

        v285 = sub_1009364B8();
        v286 = sub_100936F18();

        if (os_log_type_enabled(v285, v286))
        {
          v287 = swift_slowAlloc();
          v434 = swift_slowAlloc();
          *&v446 = v434;
          *v287 = v430;
          *(v287 + 4) = sub_10001273C(0xD00000000000002ELL, v431 | 0x8000000000000000, &v446);
          *(v287 + 12) = 2080;
          v288 = (*(*v134 + 176))();
          v290 = sub_10001273C(v288, v289, &v446);

          *(v287 + 14) = v290;
          *(v287 + 22) = 2080;
          sub_1009360A8();
          sub_1007477CC(&qword_100CB2DA8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v291 = sub_100937548();
          v293 = v292;
          sub_100748754(v423, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v294 = sub_10001273C(v291, v293, &v446);
          v134 = v437;

          *(v287 + 24) = v294;
          _os_log_impl(&_mh_execute_header, v285, v286, "%s: participant: %s should include cached MKI %s", v287, 0x20u);
          swift_arrayDestroy();

          v295 = v408;

          v296 = v440;
        }

        else
        {

          sub_100748754(v257, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v296 = v440;
          v295 = v408;
        }

        sub_100012D50(v439, v295, &qword_100CB36B8, &qword_1009AD180);
        if (v441(v295, 1, v296) == 1)
        {
          sub_100748754(v428, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          sub_100013814(v295, &qword_100CB36B8, &qword_1009AD180);
        }

        else
        {
          v297 = v393;
          sub_1007486EC(v295, v393, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          v298 = v297 + *(v296 + 24);
          v299 = v428;
          v300 = sub_10073DD94(v428, v298);
          if (v300)
          {
            v301 = v300;
            v302 = swift_isUniquelyReferenced_nonNull_native();
            v223 = v444;
            v259 = v421;
            if ((v302 & 1) == 0)
            {
              v438 = sub_10074167C(0, *(v438 + 2) + 1, 1, v438);
            }

            v303 = v393;
            v263 = v435;
            v305 = *(v438 + 2);
            v304 = *(v438 + 3);
            if (v305 >= v304 >> 1)
            {
              v438 = sub_10074167C((v304 > 1), v305 + 1, 1, v438);
              v303 = v393;
            }

            sub_100748754(v303, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
            sub_100748754(v428, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            v306 = v438;
            *(v438 + 2) = v305 + 1;
            *&v306[8 * v305 + 32] = v301;
            v134 = v437;
            v257 = v423;
            goto LABEL_74;
          }

          sub_100748754(v297, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
          sub_100748754(v299, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        }

        v264 = v258;
        v263 = v435;
        v223 = v444;
        v257 = v423;
        v259 = v421;
      }

      else
      {
        v270 = v257;
        v271 = v268;
        v272 = v409;
        sub_100748684(v271, v409, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);

        v273 = sub_1009364B8();
        v274 = sub_100936F18();

        LODWORD(v434) = v274;
        if (os_log_type_enabled(v273, v274))
        {
          v275 = swift_slowAlloc();
          *&v417 = swift_slowAlloc();
          *&v446 = v417;
          *v275 = v430;
          *(v275 + 4) = sub_10001273C(0xD00000000000002ELL, v431 | 0x8000000000000000, &v446);
          *(v275 + 12) = 2080;
          v276 = *(*v134 + 176);
          v416 = v273;
          v277 = v276();
          v279 = sub_10001273C(v277, v278, &v446);

          *(v275 + 14) = v279;
          *(v275 + 22) = 2080;
          sub_1009360A8();
          sub_1007477CC(&qword_100CB2DA8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v280 = sub_100937548();
          v282 = v281;
          v413 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent;
          sub_100748754(v272, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v283 = sub_10001273C(v280, v282, &v446);
          v223 = v444;

          *(v275 + 24) = v283;
          v134 = v437;
          v284 = v416;
          _os_log_impl(&_mh_execute_header, v416, v434, "%s: participant: %s should not include its own MKI %s", v275, 0x20u);
          swift_arrayDestroy();

          v257 = v423;

          sub_100748754(v428, v413);
          v264 = v258;
          v263 = v435;
        }

        else
        {

          sub_100748754(v272, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          sub_100748754(v428, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v264 = v258;
          v263 = v435;
          v257 = v270;
          v223 = v444;
        }
      }
    }

    while (1)
    {
      v258 = v264 + 1;
      if (__OFADD__(v264, 1))
      {
        break;
      }

      if (v258 >= v263)
      {

        v308 = (v420)(v307);
        (*(*v308 + 192))(0);

        goto LABEL_99;
      }

      v262 = *&v259[8 * v258];
      ++v264;
      if (v262)
      {
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_117;
  }

LABEL_99:
  v309 = v438;
  v310 = v424;
  if (*(v438 + 2))
  {
    v311 = sub_100936B38();
    v313 = v312;
    v448 = sub_100706B30(&qword_100CB3708, &qword_1009AD1E0);
    *&v446 = v309;
    sub_100308C74(&v446, &v452);

    v314 = swift_isUniquelyReferenced_nonNull_native();
    v454[0] = v310;
    v315 = sub_100729284(&v452, v453);
    v316 = __chkstk_darwin(v315);
    v318 = (&v389 - ((v317 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v319 + 16))(v318, v316);
    sub_1007463F0(*v318, v311, v313, v314, v454, &qword_100CB3708, &qword_1009AD1E0);
    sub_100012970(&v452);

    v310 = v454[0];
    LODWORD(v425) = 1;
  }

  v320 = sub_100936B38();
  v322 = v321;
  swift_beginAccess();

  sub_1007365F0(v323);
  v325 = v324;

  v448 = sub_100706B30(&qword_100CBA460, &unk_1009ACB90);
  *&v446 = v325;
  sub_100308C74(&v446, &v452);
  LOBYTE(v325) = swift_isUniquelyReferenced_nonNull_native();
  v451 = v310;
  v326 = sub_100729284(&v452, v453);
  v327 = __chkstk_darwin(v326);
  v329 = (&v389 - ((v328 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v330 + 16))(v329, v327);
  sub_1007463F0(*v329, v320, v322, v325, &v451, &qword_100CBA460, &unk_1009ACB90);
  sub_100012970(&v452);

  v331 = v451;
  v332 = sub_1009364B8();
  v333 = sub_100936F18();
  if (os_log_type_enabled(v332, v333))
  {
    v334 = swift_slowAlloc();
    *&v446 = swift_slowAlloc();
    *v334 = 136315394;
    *(v334 + 4) = sub_10001273C(0xD00000000000002ELL, 0x8000000100AFF9A0, &v446);
    *(v334 + 12) = 2080;

    sub_100706B30(&qword_100CB3700, &qword_1009AD1D8);
    v335 = sub_100936A88();
    v336 = v331;
    v338 = v337;

    v339 = sub_10001273C(v335, v338, &v446);
    v331 = v336;

    *(v334 + 14) = v339;
    _os_log_impl(&_mh_execute_header, v332, v333, "%s: message: %s", v334, 0x16u);
    swift_arrayDestroy();
  }

  v340 = v437;
  v341 = v433;
  if (!v425)
  {

    v375 = sub_1009364B8();
    v376 = sub_100936F18();
    if (os_log_type_enabled(v375, v376))
    {
      v377 = swift_slowAlloc();
      v378 = swift_slowAlloc();
      *&v446 = v378;
      *v377 = 136315138;
      *(v377 + 4) = sub_10001273C(0xD00000000000002ELL, 0x8000000100AFF9A0, &v446);
      _os_log_impl(&_mh_execute_header, v375, v376, "%s: do not need to send as there is no data to send", v377, 0xCu);
      sub_100012970(v378);
    }

    sub_100013814(v427, &qword_100CB2AA0, &unk_1009B37D0);
    sub_100013814(v341, &qword_100CB36B8, &qword_1009AD180);
    sub_100013814(v439, &qword_100CB36B8, &qword_1009AD180);
    goto LABEL_112;
  }

  sub_100706B30(&unk_100CBABF0, &unk_1009ACC00);
  v342 = swift_initStackObject();
  *(v342 + 16) = xmmword_1009AC700;
  v343 = [v340[2] rawToken];
  v344 = sub_100935EA8();
  v346 = v345;

  v347.super.isa = sub_100935E78().super.isa;
  sub_1007156D8(v344, v346);
  v348 = [v340[3] prefixedURI];
  if (!v348)
  {
    sub_100936B38();
    v348 = sub_100936B28();
  }

  v349 = _IDSCopyIDForTokenWithURI();

  v350 = v415;
  if (!v349)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v351 = sub_100936B38();
  v353 = v352;

  *(v342 + 32) = v351;
  *(v342 + 40) = v353;
  sub_100747A44(v342);
  swift_setDeallocating();
  sub_100748428(v342 + 32);
  isa = sub_100936E08().super.isa;

  v445 = [objc_opt_self() destinationWithStrings:isa];

  sub_100012D50(v439, v350, &qword_100CB36B8, &qword_1009AD180);
  v355 = v414;
  sub_100012D50(v341, v414, &qword_100CB36B8, &qword_1009AD180);

  v443 = im_primary_queue();
  v444 = v331;
  if (v443)
  {

    v356 = v396;
    sub_100012D50(v350, v396, &qword_100CB36B8, &qword_1009AD180);
    v357 = v397;
    sub_100012D50(v355, v397, &qword_100CB36B8, &qword_1009AD180);
    v358 = *(v394 + 80);
    v359 = (v358 + 40) & ~v358;
    v360 = (v395 + 7 + v359) & 0xFFFFFFFFFFFFFFF8;
    v361 = (v360 + 15) & 0xFFFFFFFFFFFFFFF8;
    v362 = (v358 + v361 + 8) & ~v358;
    v363 = (v395 + 7 + v362) & 0xFFFFFFFFFFFFFFF8;
    v364 = swift_allocObject();
    v365 = v442;
    v367 = v444;
    v366 = v445;
    v364[2] = v442;
    v364[3] = v367;
    v364[4] = v366;
    sub_10074854C(v356, v364 + v359);
    *(v364 + v360) = v426;
    *(v364 + v361) = v437;
    sub_10074854C(v357, v364 + v362);
    *(v364 + v363) = v422;
    v449 = sub_1007485BC;
    v450 = v364;
    *&v446 = _NSConcreteStackBlock;
    *(&v446 + 1) = 1107296256;
    v447 = sub_1000154AC;
    v448 = &unk_100BE6FC8;
    v368 = _Block_copy(&v446);

    v369 = v365;
    v370 = v445;

    v371 = v398;
    sub_100936508();
    *&v452 = &_swiftEmptyArrayStorage;
    sub_1007477CC(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550, &qword_1009AC360);
    sub_1007483C4();
    v372 = v400;
    v373 = v403;
    sub_1009370B8();
    v374 = v443;
    sub_100936F88();
    _Block_release(v368);

    (*(v402 + 8))(v372, v373);
    (*(v399 + 8))(v371, v401);
    sub_100013814(v414, &qword_100CB36B8, &qword_1009AD180);
    sub_100013814(v415, &qword_100CB36B8, &qword_1009AD180);
    sub_100013814(v427, &qword_100CB2AA0, &unk_1009B37D0);
    sub_100013814(v433, &qword_100CB36B8, &qword_1009AD180);
    sub_100013814(v439, &qword_100CB36B8, &qword_1009AD180);

LABEL_112:
    sub_100013814(v429, &qword_100CB2AA0, &unk_1009B37D0);

    return;
  }

LABEL_118:
  __break(1u);
}