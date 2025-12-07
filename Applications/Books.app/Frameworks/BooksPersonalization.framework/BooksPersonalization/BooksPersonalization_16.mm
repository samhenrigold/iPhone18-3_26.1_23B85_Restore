uint64_t sub_11416C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_22AE98, &qword_1C30C8);
  result = sub_1B5044();
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
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
      *(*(v5 + 48) + v13) = v17;
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1143F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_229550, &unk_1BC5C0);
  result = sub_1B5044();
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
      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
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

uint64_t sub_114658(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_2B0C(a2, a3);
  result = sub_1B5044();
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
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
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
      *(*(v7 + 48) + v15) = v19;
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

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1148EC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1B4414();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_2B0C(&qword_22CD98, &unk_1C9200);
  result = sub_1B5044();
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
      sub_11C13C(&qword_229448, &type metadata accessor for FeatureKey, &protocol conformance descriptor for FeatureKey);
      result = sub_1B4744();
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

uint64_t sub_114C48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_22CD30, &unk_1C9138);
  result = sub_1B5044();
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
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
      *(*(v5 + 48) + v13) = v17;
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_114EB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_22AEC8, &qword_1C30E8);
  result = sub_1B5044();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
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
    while (1)
    {
      if (!v10)
      {
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_44;
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

        v31 = 1 << *(v3 + 32);
        if (v31 >= 64)
        {
          bzero((v3 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v31;
        }

        v2 = v32;
        *(v3 + 16) = 0;
        goto LABEL_42;
      }

      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      memcpy(__src, (*(v3 + 48) + 568 * (v14 | (v6 << 6))), sizeof(__src));
      sub_1B57F4();
      memcpy(__dst, __src, 0x231uLL);
      v17 = sub_9E6E0(__dst);
      v18 = sub_9E6EC(__dst);
      if (v17 > 2)
      {
        break;
      }

      if (v17)
      {
        v19 = *v18;
        if (v17 == 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        sub_1B5804(v20);
        sub_1B5834(v19);
      }

      else
      {
        v23 = v18;
        sub_1B5804(0);
        memcpy(v33, v23, sizeof(v33));
        SeedBook.hash(into:)(v34);
      }

LABEL_29:
      result = sub_1B5844();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = memcpy((*(v5 + 48) + 568 * v13), __src, 0x231uLL);
      ++*(v5 + 16);
    }

    if (v17 == 3)
    {
      v21 = *v18;
      v22 = 3;
    }

    else
    {
      if (v17 != 4)
      {
        sub_1B5804(5uLL);
        goto LABEL_28;
      }

      v21 = *v18;
      v22 = 4;
    }

    sub_1B5804(v22);
    sub_1B5834(v21);
LABEL_28:
    sub_1B4884();

    goto LABEL_29;
  }

LABEL_42:

  *v2 = v5;
  return result;
}

uint64_t sub_115264(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_22AE88, &qword_1C9130);
  result = sub_1B5044();
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
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
      *(*(v5 + 48) + v13) = v17;
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_115508(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_22CD80, &unk_1C91F0);
  v4 = sub_1B5044();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_1B57F4();
      sub_1B4884();

      v13 = sub_1B5844();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) != 0)
      {
        v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        do
        {
          if (++v16 == v23 && (v22 & 1) != 0)
          {
            goto LABEL_31;
          }

          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
        }

        while (v25 == -1);
        v17 = __clz(__rbit64(~v25)) + (v16 << 6);
      }

      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x1158F4);
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_115928(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_229418, &qword_1BC4B8);
  result = sub_1B5044();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
    v34 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v35 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_1B57F4();
      sub_1B5804(v20);
      sub_1B5834(v19);
      sub_1B5814(v21);
      if (v23 == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        sub_1B5814(1u);
        sub_1B5834(v22);
      }

      result = sub_1B5844();
      v5 = v34;
      v24 = -1 << *(v34 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v34 + 48) + 40 * v13;
      v10 = v35;
      *v14 = v20;
      *(v14 + 8) = v19;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v34 + 16);
      v3 = v33;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
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
        v35 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_115C0C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1132B4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_117818();
      goto LABEL_16;
    }

    sub_1183F0(v8 + 1);
  }

  v10 = *v4;
  sub_1B57F4();
  sub_1B4884();
  result = sub_1B5844();
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

      result = sub_1B5604();
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
  result = sub_1B5774();
  __break(1u);
  return result;
}

uint64_t sub_115D8C(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_113514(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_117FD0(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_118628(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_1B57F4();
  sub_1B5804(v7);
  result = sub_1B5844();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B5774();
  __break(1u);
  return result;
}

uint64_t sub_115EFC(uint64_t result, unint64_t a2, char a3)
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
    sub_11375C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_117974();
      a2 = v7;
      goto LABEL_12;
    }

    sub_118840(v5 + 1);
  }

  v8 = *v3;
  result = sub_1B57E4();
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
  result = sub_1B5774();
  __break(1u);
  return result;
}

void *sub_11601C(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, 0x231uLL);
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_113980(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_117AB4();
      goto LABEL_12;
    }

    sub_118A30(v8 + 1);
  }

  v10 = *v4;
  memcpy(v22, __src, 0x231uLL);
  sub_1B57F4();
  SeedBook.hash(into:)(v21);
  v11 = sub_1B5844();
  v12 = -1 << *(v10 + 32);
  a2 = v11 & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v10 + 48) + 568 * a2;
      memcpy(v21, v14, 0x231uLL);
      memcpy(v20, v14, 0x231uLL);
      sub_4299C(v21, v22);
      LOBYTE(v14) = _s20BooksPersonalization8SeedBookV2eeoiySbAC_ACtFZ_0(v20, __dst);
      memcpy(v22, v20, 0x231uLL);
      sub_2601C(v22);
      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(v15 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v15 + 48) + 568 * a2), __dst, 0x231uLL);
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B5774();
  __break(1u);
  return result;
}

uint64_t sub_116200(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_11416C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_117FD0(&qword_22AE98, &qword_1C30C8);
      goto LABEL_25;
    }

    sub_119104(v6 + 1);
  }

  v8 = 0x6B6F6F6265;
  v9 = *v3;
  sub_1B57F4();
  if (v5)
  {
    v8 = 0x6F6F626F69647561;
    v10 = 0xE90000000000006BLL;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  sub_1B4884();

  result = sub_1B5844();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + a2) ? 0x6F6F626F69647561 : 0x6B6F6F6265;
      v14 = *(*(v9 + 48) + a2) ? 0xE90000000000006BLL : 0xE500000000000000;
      if (v13 == v8 && v14 == v10)
      {
        goto LABEL_28;
      }

      v16 = sub_1B5604();

      if (v16)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v22 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  result = sub_1B5774();
  __break(1u);
  return result;
}

uint64_t sub_116424(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1143F8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_117C3C();
      goto LABEL_16;
    }

    sub_119360(v8 + 1);
  }

  v10 = *v4;
  sub_1B57F4();
  sub_1B4884();
  result = sub_1B5844();
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

      result = sub_1B5604();
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
  result = sub_1B5774();
  __break(1u);
  return result;
}

uint64_t sub_1165A4(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v8 = result;
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  v25 = result;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_114658(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_117FD0(a4, a5);
      goto LABEL_25;
    }

    sub_119598(v9 + 1, a4, a5);
  }

  v11 = 0x6168637275706F63;
  v12 = *v6;
  sub_1B57F4();
  if (v8)
  {
    v11 = 0xD000000000000011;
    v13 = 0x80000000001D49B0;
  }

  else
  {
    v13 = 0xEA00000000006573;
  }

  sub_1B4884();

  result = sub_1B5844();
  v14 = -1 << *(v12 + 32);
  a2 = result & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    do
    {
      v16 = *(*(v12 + 48) + a2) ? 0xD000000000000011 : 0x6168637275706F63;
      v17 = *(*(v12 + 48) + a2) ? 0x80000000001D49B0 : 0xEA00000000006573;
      if (v16 == v11 && v17 == v13)
      {
        goto LABEL_28;
      }

      v19 = sub_1B5604();

      if (v19)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v20 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v25 & 1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  result = sub_1B5774();
  __break(1u);
  return result;
}

uint64_t sub_1167D8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1B4414();
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
    sub_1148EC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_117D98();
      goto LABEL_12;
    }

    sub_1197FC(v10 + 1);
  }

  v12 = *v3;
  sub_11C13C(&qword_229448, &type metadata accessor for FeatureKey, &protocol conformance descriptor for FeatureKey);
  v13 = sub_1B4744();
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
      sub_11C13C(&qword_22CD90, &type metadata accessor for FeatureKey, &protocol conformance descriptor for FeatureKey);
      v21 = sub_1B4784();
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
  result = sub_1B5774();
  __break(1u);
  return result;
}

uint64_t sub_116A7C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_114C48(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_117FD0(&qword_22CD30, &unk_1C9138);
      goto LABEL_19;
    }

    sub_119B18(v7 + 1);
  }

  v9 = *v3;
  sub_1B57F4();
  if (v6)
  {
    v10 = 1684627824;
  }

  else
  {
    v10 = 1701147238;
  }

  sub_1B4884();

  result = sub_1B5844();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + a2) ? 1684627824 : 1701147238;
      if (v13 == v10)
      {
        goto LABEL_22;
      }

      v14 = sub_1B5604();
      result = swift_bridgeObjectRelease_n();
      if (v14)
      {
        goto LABEL_23;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v6 & 1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_22:
  swift_bridgeObjectRelease_n();
LABEL_23:
  result = sub_1B5774();
  __break(1u);
  return result;
}

void *sub_116C50(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_114EB8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_118100();
      goto LABEL_12;
    }

    sub_119D58(v8 + 1);
  }

  v10 = *v4;
  memcpy(v22, __src, 0x231uLL);
  sub_1B57F4();
  ScorableAttribute.hash(into:)(v21);
  v11 = sub_1B5844();
  v12 = -1 << *(v10 + 32);
  a2 = v11 & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v10 + 48) + 568 * a2;
      memcpy(v21, v14, 0x231uLL);
      memcpy(v20, v14, 0x231uLL);
      sub_5EE34(v21, v22);
      LOBYTE(v14) = _s20BooksPersonalization17ScorableAttributeO2eeoiySbAC_ACtFZ_0(v20);
      memcpy(v22, v20, 0x231uLL);
      sub_5EE90(v22);
      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(v15 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v15 + 48) + 568 * a2), __dst, 0x231uLL);
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B5774();
  __break(1u);
  return result;
}

uint64_t sub_116E34(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_115264(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_117FD0(&qword_22AE88, &qword_1C9130);
        goto LABEL_28;
      }

      sub_11A11C(v6 + 1);
    }

    v8 = *v3;
    sub_1B57F4();
    sub_1B4884();

    result = sub_1B5844();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v11 = 0x6F6F626F69647561;
            v12 = 0xE90000000000006BLL;
            v13 = v5;
            if (!v5)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v12 = 0xE500000000000000;
            v11 = 0x646578696DLL;
            v13 = v5;
            if (!v5)
            {
LABEL_24:
              v15 = 0xE500000000000000;
              if (v11 == 0x6B6F6F6265)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v12 = 0xE500000000000000;
          v11 = 0x6B6F6F6265;
          v13 = v5;
          if (!v5)
          {
            goto LABEL_24;
          }
        }

        if (v13 == 1)
        {
          v14 = 0x6F6F626F69647561;
        }

        else
        {
          v14 = 0x646578696DLL;
        }

        if (v13 == 1)
        {
          v15 = 0xE90000000000006BLL;
        }

        else
        {
          v15 = 0xE500000000000000;
        }

        if (v11 == v14)
        {
LABEL_25:
          if (v12 == v15)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v16 = sub_1B5604();

        if (v16)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    result = sub_1B5774();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

uint64_t sub_1170D0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_115508(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_117FD0(&qword_22CD80, &unk_1C91F0);
        goto LABEL_53;
      }

      sub_11A390(v7 + 1);
    }

    v9 = *v3;
    sub_1B57F4();
    CollectionRecommendationType.rawValue.getter();
    sub_1B4884();

    result = sub_1B5844();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xE400000000000000;
        v13 = 1802465122;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v12 = 0xE500000000000000;
            v13 = 0x736B6F6F62;
            break;
          case 2:
            v13 = 0xD000000000000010;
            v12 = 0x80000000001D4FE0;
            break;
          case 3:
            v13 = 0x417942736B6F6F62;
            v12 = 0xED0000726F687475;
            break;
          case 4:
            v13 = 0xD000000000000017;
            v12 = 0x80000000001D4740;
            break;
          case 5:
            v13 = 0x476E49736B6F6F62;
            v12 = 0xEC00000065726E65;
            break;
          case 6:
            v13 = 0xD000000000000011;
            v12 = 0x80000000001D4760;
            break;
          case 7:
            v13 = 0xD000000000000011;
            v12 = 0x80000000001D4780;
            break;
          case 8:
            v13 = 0xD000000000000013;
            v12 = 0x80000000001D47A0;
            break;
          case 9:
            v12 = 0xE600000000000000;
            v13 = 0x736569726573;
            break;
          case 0xA:
            v14 = 1954047342;
            goto LABEL_22;
          case 0xB:
            v14 = 1701998445;
LABEL_22:
            v13 = v14 | 0x65536E4900000000;
            v12 = 0xEC00000073656972;
            break;
          case 0xC:
            v13 = 0x6867696C68676968;
            v12 = 0xEA00000000007374;
            break;
          default:
            break;
        }

        v15 = 0xE400000000000000;
        v16 = 1802465122;
        switch(v6)
        {
          case 1:
            v15 = 0xE500000000000000;
            if (v13 != 0x736B6F6F62)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 2:
            v15 = 0x80000000001D4FE0;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 3:
            v15 = 0xED0000726F687475;
            if (v13 != 0x417942736B6F6F62)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 4:
            v15 = 0x80000000001D4740;
            if (v13 != 0xD000000000000017)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 5:
            v17 = 0x476E49736B6F6F62;
            v18 = 1701998181;
            goto LABEL_41;
          case 6:
            v15 = 0x80000000001D4760;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 7:
            v15 = 0x80000000001D4780;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 8:
            v15 = 0x80000000001D47A0;
            if (v13 != 0xD000000000000013)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 9:
            v15 = 0xE600000000000000;
            if (v13 != 0x736569726573)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 10:
            v16 = 0x65536E497478656ELL;
            v15 = 0xEC00000073656972;
            goto LABEL_46;
          case 11:
            v17 = 0x65536E4965726F6DLL;
            v18 = 1936025970;
LABEL_41:
            v15 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v13 != v17)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 12:
            v15 = 0xEA00000000007374;
            if (v13 != 0x6867696C68676968)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          default:
LABEL_46:
            if (v13 != v16)
            {
              goto LABEL_48;
            }

LABEL_47:
            if (v12 == v15)
            {
              goto LABEL_56;
            }

LABEL_48:
            v19 = sub_1B5604();

            if (v19)
            {
              goto LABEL_57;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_53:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v6;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_56:

LABEL_57:
    sub_1B5774();
    __break(1u);
    JUMPOUT(0x1175ACLL);
  }

  *(v20 + 16) = v23;
  return result;
}

uint64_t sub_117614(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_115928(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_118288();
      a2 = v7;
      goto LABEL_27;
    }

    sub_11A780(v5 + 1);
  }

  v8 = *v3;
  v9 = *v4;
  v10 = *(v4 + 8);
  v11 = *(v4 + 16);
  sub_1B57F4();
  sub_1B5804(v9);
  sub_1B5834(v10);
  v12 = *(v4 + 24);
  v13 = *(v4 + 32);
  sub_1B5814(v11 & 1);
  if (v13 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v12);
  }

  result = sub_1B5844();
  v14 = -1 << *(v8 + 32);
  a2 = result & ~v14;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    do
    {
      v16 = *(v8 + 48) + 40 * a2;
      v17 = *v16 == v9 && *(v16 + 8) == v10;
      if (v17 && ((*(v16 + 16) ^ v11) & 1) == 0)
      {
        if (*(v16 + 32))
        {
          if (v13)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (*(v16 + 24) == v12)
          {
            v18 = v13;
          }

          else
          {
            v18 = 1;
          }

          if ((v18 & 1) == 0)
          {
LABEL_26:
            result = sub_1B5774();
            __break(1u);
            break;
          }
        }
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v20 = *(v19 + 48) + 40 * a2;
  v21 = *(v4 + 16);
  *v20 = *v4;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(v4 + 32);
  v22 = *(v19 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v24;
  }

  return result;
}

void *sub_117818()
{
  v1 = v0;
  sub_2B0C(&qword_229260, &qword_1BC340);
  v2 = *v0;
  v3 = sub_1B5034();
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

void *sub_117974()
{
  v1 = v0;
  sub_2B0C(&qword_2292D0, &qword_1BC390);
  v2 = *v0;
  v3 = sub_1B5034();
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

void *sub_117AB4()
{
  v1 = v0;
  sub_2B0C(&qword_2293D0, &qword_1BC470);
  v2 = *v0;
  v3 = sub_1B5034();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_4299C(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 568 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x231uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x231uLL);
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

void *sub_117C3C()
{
  v1 = v0;
  sub_2B0C(&qword_229550, &unk_1BC5C0);
  v2 = *v0;
  v3 = sub_1B5034();
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

void *sub_117D98()
{
  v1 = v0;
  v2 = sub_1B4414();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B0C(&qword_22CD98, &unk_1C9200);
  v6 = *v0;
  v7 = sub_1B5034();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
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
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_117FD0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5034();
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

void *sub_118100()
{
  v1 = v0;
  sub_2B0C(&qword_22AEC8, &qword_1C30E8);
  v2 = *v0;
  v3 = sub_1B5034();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_5EE34(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 568 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x231uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x231uLL);
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

void *sub_118288()
{
  v1 = v0;
  sub_2B0C(&qword_229418, &qword_1BC4B8);
  v2 = *v0;
  v3 = sub_1B5034();
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
    for (i = (v9 + 63) >> 6; v11; *(v22 + 32) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 40 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *(v18 + 32);
      v22 = *(v4 + 48) + v17;
      *v22 = *v18;
      *(v22 + 16) = v19;
      *(v22 + 24) = v20;
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

uint64_t sub_1183F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_229260, &qword_1BC340);
  result = sub_1B5044();
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
      sub_1B57F4();

      sub_1B4884();
      result = sub_1B5844();
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

uint64_t sub_118628(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_2B0C(a2, a3);
  result = sub_1B5044();
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
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_1B57F4();
      sub_1B5804(v18);
      result = sub_1B5844();
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
      *(*(v7 + 48) + v14) = v18;
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

uint64_t sub_118840(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_2292D0, &qword_1BC390);
  result = sub_1B5044();
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
      result = sub_1B57E4();
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

uint64_t sub_118A30(uint64_t a1)
{
  v2 = *v1;
  sub_2B0C(&qword_2293D0, &qword_1BC470);
  result = sub_1B5044();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v42 = v2 + 56;
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
    v44 = v9;
    v45 = result + 56;
    v46 = result;
    v47 = v2;
    while (v8)
    {
      v11 = __clz(__rbit64(v8));
      v48 = (v8 - 1) & v8;
LABEL_15:
      v49 = v5;
      memcpy(__src, (*(v2 + 48) + 568 * (v11 | (v5 << 6))), 0x231uLL);
      sub_1B57F4();
      sub_1B5834(*&__src[0]);
      v54[2] = *(&__src[2] + 8);
      v54[3] = *(&__src[3] + 8);
      v54[4] = *(&__src[4] + 8);
      *&v54[5] = *(&__src[5] + 1);
      v54[0] = *(__src + 8);
      v54[1] = *(&__src[1] + 8);
      sub_4299C(__src, __dst);
      Book.Metadata.hash(into:)(v61);
      if (*&__src[9] >> 1 == 0xFFFFFFFFLL)
      {
        sub_1B5814(0);
      }

      else
      {
        v57 = __src[8];
        v58 = __src[9];
        v59 = *&__src[10];
        v55 = __src[6];
        v56 = __src[7];
        sub_1B5814(1u);
        v54[2] = __src[8];
        v54[3] = __src[9];
        *&v54[4] = *&__src[10];
        v54[0] = __src[6];
        v54[1] = __src[7];
        sub_42CD4(v54, __dst);
        InternalAffinitySource.hash(into:)(v61);
        __dst[2] = v57;
        __dst[3] = v58;
        *&__dst[4] = v59;
        __dst[0] = v55;
        __dst[1] = v56;
        sub_42D30(__dst);
      }

      memcpy(__dst, &__src[10] + 8, 0x179uLL);
      if (sub_42D84(__dst) == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        memcpy(v54, &__src[10] + 8, 0x179uLL);
        sub_1B5814(1u);
        BookHistory.hash(into:)();
      }

      v14 = *(&__src[34] + 1) + 64;
      v15 = 1 << *(*(&__src[34] + 1) + 32);
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v17 = v16 & *(*(&__src[34] + 1) + 64);
      v18 = (v15 + 63) >> 6;
      v52 = *(&__src[34] + 1);

      v19 = 0;
      v20 = 0;
      v50 = v18;
      for (i = v14; ; v14 = i)
      {
        if (!v17)
        {
          while (1)
          {
            v21 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v21 >= v18)
            {
              goto LABEL_50;
            }

            v17 = *(v14 + 8 * v21);
            ++v20;
            if (v17)
            {
              v20 = v21;
              goto LABEL_31;
            }
          }

          __break(1u);
          goto LABEL_64;
        }

LABEL_31:
        v22 = *(*(v52 + 56) + 8 * (__clz(__rbit64(v17)) | (v20 << 6)));

        if (!v22)
        {
          break;
        }

        v53 = v19;
        v17 &= v17 - 1;
        v54[2] = v61[2];
        v54[3] = v61[3];
        *&v54[4] = v62;
        v54[0] = v61[0];
        v54[1] = v61[1];
        sub_1B4884();

        sub_1B5804(*(v22 + 16));
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = (v22 + 80);
          do
          {
            v25 = *(v24 - 4);
            v26 = *(v24 - 3);
            v28 = *(v24 - 2);
            v27 = *(v24 - 1);
            v29 = *v24;

            sub_1B4884();
            if (v25 == 0.0)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v25;
            }

            sub_1B5834(*&v30);
            if (v26 == 0.0)
            {
              v31 = 0.0;
            }

            else
            {
              v31 = v26;
            }

            sub_1B5834(*&v31);
            if (v29 == 1)
            {
              sub_1B5814(0);
            }

            else
            {
              sub_1B5814(1u);
              if ((v28 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v32 = v28;
              }

              else
              {
                v32 = 0;
              }

              sub_1B5834(v32);
              if ((v27 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v33 = v27;
              }

              else
              {
                v33 = 0;
              }

              sub_1B5834(v33);
            }

            v24 += 7;
            --v23;
          }

          while (v23);
        }

        result = sub_1B5844();
        v19 = result ^ v53;
        v18 = v50;
      }

LABEL_50:

      v34 = LOBYTE(__src[35]);
      sub_1B5804(v19);
      if (v34 == 12)
      {
        sub_1B5814(0);
      }

      else
      {
        LOBYTE(v54[0]) = v34;
        sub_1B5814(1u);
        PositiveAffinitySource.hash(into:)(v61);
      }

      v2 = v47;
      result = sub_1B5844();
      v4 = v46;
      v35 = -1 << *(v46 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v45 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v45 + 8 * v37);
          if (v41 != -1)
          {
            v10 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_65;
      }

      v10 = __clz(__rbit64((-1 << v36) & ~*(v45 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v45 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      result = memcpy((*(v46 + 48) + 568 * v10), __src, 0x231uLL);
      ++*(v46 + 16);
      v8 = v48;
      v5 = v49;
      v9 = v44;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_62;
      }

      v13 = *(v42 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v48 = (v13 - 1) & v13;
        goto LABEL_15;
      }
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
LABEL_62:

    *v43 = v4;
  }

  return result;
}

uint64_t sub_119104(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_22AE98, &qword_1C30C8);
  result = sub_1B5044();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
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
      *(*(v5 + 48) + v12) = v16;
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

uint64_t sub_119360(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_229550, &unk_1BC5C0);
  result = sub_1B5044();
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
      sub_1B57F4();

      sub_1B4884();
      result = sub_1B5844();
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

uint64_t sub_119598(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_2B0C(a2, a3);
  result = sub_1B5044();
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
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
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
      *(*(v7 + 48) + v14) = v18;
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

uint64_t sub_1197FC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1B4414();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2B0C(&qword_22CD98, &unk_1C9200);
  v7 = sub_1B5044();
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
      sub_11C13C(&qword_229448, &type metadata accessor for FeatureKey, &protocol conformance descriptor for FeatureKey);
      result = sub_1B4744();
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

uint64_t sub_119B18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_22CD30, &unk_1C9138);
  result = sub_1B5044();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
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
      *(*(v5 + 48) + v12) = v16;
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

uint64_t sub_119D58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_22AEC8, &qword_1C30E8);
  result = sub_1B5044();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_40:
    *v2 = v5;
    return result;
  }

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
    memcpy(__src, (*(v3 + 48) + 568 * (v13 | (v6 << 6))), sizeof(__src));
    sub_1B57F4();
    memcpy(__dst, __src, 0x231uLL);
    v16 = sub_9E6E0(__dst);
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v19 = *sub_9E6EC(__dst);
        v20 = 3;
LABEL_24:
        sub_1B5804(v20);
        sub_1B5834(v19);
      }

      else
      {
        if (v16 == 4)
        {
          v19 = *sub_9E6EC(__dst);
          v20 = 4;
          goto LABEL_24;
        }

        sub_9E6EC(__dst);
        sub_1B5804(5uLL);
      }

      sub_1B4884();

      goto LABEL_29;
    }

    if (v16)
    {
      if (v16 == 1)
      {
        v17 = *sub_9E6EC(__dst);
        v18 = 1;
      }

      else
      {
        v17 = *sub_9E6EC(__dst);
        v18 = 2;
      }

      sub_1B5804(v18);
      sub_1B5834(v17);
    }

    else
    {
      v21 = sub_9E6EC(__dst);
      sub_1B5804(0);
      memcpy(v31, v21, sizeof(v31));
      memcpy(v32, __src, 0x231uLL);
      v22 = sub_9E6EC(v32);
      sub_4299C(v22, v30);
      SeedBook.hash(into:)(v33);
    }

LABEL_29:
    result = sub_1B5844();
    v23 = -1 << *(v5 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
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
        v29 = *(v11 + 8 * v25);
        if (v29 != -1)
        {
          v12 = __clz(__rbit64(~v29)) + (v25 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_42;
    }

    v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    result = memcpy((*(v5 + 48) + 568 * v12), __src, 0x231uLL);
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
      goto LABEL_40;
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
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_11A11C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_22AE88, &qword_1C9130);
  result = sub_1B5044();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
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
      *(*(v5 + 48) + v12) = v16;
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

uint64_t sub_11A390(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_22CD80, &unk_1C91F0);
  v4 = sub_1B5044();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v18 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_1B57F4();
      sub_1B4884();

      v13 = sub_1B5844();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) != 0)
      {
        v17 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        do
        {
          if (++v16 == v23 && (v22 & 1) != 0)
          {
            goto LABEL_29;
          }

          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v16);
        }

        while (v25 == -1);
        v17 = __clz(__rbit64(~v25)) + (v16 << 6);
      }

      *(v11 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x11A74CLL);
      }

      if (v6 >= v10)
      {
        break;
      }

      v20 = *(v3 + 56 + 8 * v6);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v9 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v2 = v1;
  }

  else
  {
  }

  *v2 = v5;
  return result;
}

uint64_t sub_11A780(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B0C(&qword_229418, &qword_1BC4B8);
  result = sub_1B5044();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
    v33 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_1B57F4();
      sub_1B5804(v19);
      sub_1B5834(v20);
      sub_1B5814(v21);
      if (v23 == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        sub_1B5814(1u);
        sub_1B5834(v22);
      }

      result = sub_1B5844();
      v5 = v33;
      v24 = -1 << *(v33 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v33 + 48) + 40 * v13;
      v10 = v34;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v33 + 16);
      v3 = v32;
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

        v2 = v31;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

unint64_t *sub_11AA34(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_11F6D0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_11AAD0(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v5 = type metadata accessor for SeedBasedRecommendationRequest(0);
  v31 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v27[1] = v3;
  v38 = _swiftEmptyArrayStorage;
  sub_37768(0, v8, 0);
  v9 = v38;
  v10 = a1 + 64;
  result = sub_1B4F84();
  v12 = result;
  v13 = 0;
  v35 = *(a1 + 36);
  v28 = a1 + 72;
  v29 = v8;
  v30 = a1 + 64;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    if (v35 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v34 = v13;
    v16 = *(*(a1 + 48) + v12);
    v17 = *(*(a1 + 56) + 8 * v12);

    v36[0] = v16;
    v37 = v17;
    v32(v36, v17);

    v38 = v9;
    v19 = v9[2];
    v18 = v9[3];
    if (v19 >= v18 >> 1)
    {
      sub_37768((v18 > 1), v19 + 1, 1);
      v9 = v38;
    }

    v9[2] = v19 + 1;
    result = sub_11FE3C(v7, v9 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v19, type metadata accessor for SeedBasedRecommendationRequest);
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_24;
    }

    v10 = v30;
    v20 = *(v30 + 8 * v15);
    if ((v20 & (1 << v12)) == 0)
    {
      goto LABEL_25;
    }

    if (v35 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v12 & 0x3F));
    if (v21)
    {
      v14 = __clz(__rbit64(v21)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v15 << 6;
      v23 = v15 + 1;
      v24 = (v28 + 8 * v15);
      while (v23 < (v14 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_42FF0(v12, v35, 0);
          v14 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_42FF0(v12, v35, 0);
    }

LABEL_4:
    v13 = v34 + 1;
    v12 = v14;
    if (v34 + 1 == v29)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_11ADE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666E4965726F7473 && a2 == 0xE90000000000006FLL || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D7AF0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x536465776F6C6C61 && a2 == 0xEC00000073656C61 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xEF6465776F6C6C41 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D7B10 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000020 && 0x80000000001D7B30 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000001D7B60 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000025 && 0x80000000001D7B80 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000000001D7BB0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000001D7BD0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000025 && 0x80000000001D7BF0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000025 && 0x80000000001D7C20 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xEE00656372756F53)
  {

    return 13;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_11B25C(uint64_t a1, uint64_t a2)
{
  sub_1B4844();
  sub_402F4();
  v2 = sub_1B4EF4();

  v3 = v2[2];
  if (!v3)
  {
    v5 = 0;
    v4 = 0xE000000000000000;
    goto LABEL_9;
  }

  v5 = v2[4];
  v4 = v2[5];

  v6 = v3 - 1;
  if (v3 == 1)
  {
LABEL_9:

    v7 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  sub_3747C(0, v6, 0);
  v7 = _swiftEmptyArrayStorage;
  v8 = v2 + 7;
  do
  {
    v9 = sub_1B4F04();
    v19 = v7;
    v12 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v12 >= v11 >> 1)
    {
      v18 = v9;
      v14 = v10;
      sub_3747C((v11 > 1), v12 + 1, 1);
      v10 = v14;
      v9 = v18;
      v7 = v19;
    }

    *(v7 + 2) = v12 + 1;
    v13 = &v7[16 * v12];
    *(v13 + 4) = v9;
    *(v13 + 5) = v10;
    v8 += 2;
    --v6;
  }

  while (v6);

LABEL_10:
  sub_2B0C(&qword_229258, &unk_1BCC20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BCA80;
  *(v15 + 32) = v5;
  *(v15 + 40) = v4;
  sub_5FC38(v7);
  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_42094(&qword_229000, &qword_228590, &qword_1B6590, &protocol conformance descriptor for [A]);
  v16 = sub_1B4764();

  return v16;
}

unint64_t sub_11B4A0()
{
  result = qword_22C608;
  if (!qword_22C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C608);
  }

  return result;
}

unint64_t sub_11B4F4()
{
  result = qword_22C618;
  if (!qword_22C618)
  {
    sub_1CC1C(&qword_22C610, &qword_1D3290);
    sub_7177C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C618);
  }

  return result;
}

unint64_t sub_11B578()
{
  result = qword_22C628;
  if (!qword_22C628)
  {
    sub_1CC1C(&qword_22C610, &qword_1D3290);
    sub_714F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C628);
  }

  return result;
}

unint64_t sub_11B5FC()
{
  result = qword_22C6A8;
  if (!qword_22C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C6A8);
  }

  return result;
}

unint64_t sub_11B650()
{
  result = qword_22C6B0;
  if (!qword_22C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C6B0);
  }

  return result;
}

unint64_t sub_11B6A4()
{
  result = qword_22C6B8;
  if (!qword_22C6B8)
  {
    sub_1CC1C(&qword_228F38, &qword_1BCB50);
    sub_11B728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C6B8);
  }

  return result;
}

unint64_t sub_11B728()
{
  result = qword_22C6C0;
  if (!qword_22C6C0)
  {
    sub_1CC1C(&qword_229500, &unk_1BC580);
    sub_11B7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C6C0);
  }

  return result;
}

unint64_t sub_11B7AC()
{
  result = qword_22C6C8;
  if (!qword_22C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C6C8);
  }

  return result;
}

unint64_t sub_11B800()
{
  result = qword_22C6D0;
  if (!qword_22C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C6D0);
  }

  return result;
}

unint64_t sub_11B854()
{
  result = qword_22C6D8;
  if (!qword_22C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C6D8);
  }

  return result;
}

unint64_t sub_11B8A8()
{
  result = qword_22C6E0;
  if (!qword_22C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C6E0);
  }

  return result;
}

unint64_t sub_11B8FC()
{
  result = qword_22C6E8;
  if (!qword_22C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C6E8);
  }

  return result;
}

unint64_t sub_11B950()
{
  result = qword_22C6F0;
  if (!qword_22C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C6F0);
  }

  return result;
}

unint64_t sub_11B9A4()
{
  result = qword_22C6F8;
  if (!qword_22C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C6F8);
  }

  return result;
}

unint64_t sub_11B9F8()
{
  result = qword_22C700;
  if (!qword_22C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C700);
  }

  return result;
}

unint64_t sub_11BA4C()
{
  result = qword_22C708;
  if (!qword_22C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C708);
  }

  return result;
}

unint64_t sub_11BAA0()
{
  result = qword_22C710;
  if (!qword_22C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C710);
  }

  return result;
}

unint64_t sub_11BAF4()
{
  result = qword_22C718;
  if (!qword_22C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C718);
  }

  return result;
}

unint64_t sub_11BB48()
{
  result = qword_22C720;
  if (!qword_22C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C720);
  }

  return result;
}

unint64_t sub_11BB9C()
{
  result = qword_22C728;
  if (!qword_22C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C728);
  }

  return result;
}

unint64_t sub_11BBF0()
{
  result = qword_22C738;
  if (!qword_22C738)
  {
    sub_1CC1C(&qword_22C730, &qword_1C6FB0);
    sub_11BC74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C738);
  }

  return result;
}

unint64_t sub_11BC74()
{
  result = qword_22C740;
  if (!qword_22C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C740);
  }

  return result;
}

unint64_t sub_11BCC8()
{
  result = qword_22C748;
  if (!qword_22C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C748);
  }

  return result;
}

unint64_t sub_11BD1C()
{
  result = qword_22C750;
  if (!qword_22C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C750);
  }

  return result;
}

unint64_t sub_11BD70()
{
  result = qword_22C7C8;
  if (!qword_22C7C8)
  {
    sub_1CC1C(&qword_228F38, &qword_1BCB50);
    sub_11BDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C7C8);
  }

  return result;
}

unint64_t sub_11BDF4()
{
  result = qword_22C7D0;
  if (!qword_22C7D0)
  {
    sub_1CC1C(&qword_229500, &unk_1BC580);
    sub_11BE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C7D0);
  }

  return result;
}

unint64_t sub_11BE78()
{
  result = qword_22C7D8;
  if (!qword_22C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C7D8);
  }

  return result;
}

unint64_t sub_11BECC()
{
  result = qword_22C7E0;
  if (!qword_22C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C7E0);
  }

  return result;
}

unint64_t sub_11BF20()
{
  result = qword_22C7E8;
  if (!qword_22C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C7E8);
  }

  return result;
}

unint64_t sub_11BF74()
{
  result = qword_22C7F0;
  if (!qword_22C7F0)
  {
    sub_1CC1C(&qword_22C730, &qword_1C6FB0);
    sub_11BFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C7F0);
  }

  return result;
}

unint64_t sub_11BFF8()
{
  result = qword_22C7F8;
  if (!qword_22C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C7F8);
  }

  return result;
}

unint64_t sub_11C04C()
{
  result = qword_22C808;
  if (!qword_22C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C808);
  }

  return result;
}

uint64_t sub_11C0A0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22C810, &qword_1C7038);
    sub_11C13C(a2, type metadata accessor for CollectionRecommendation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_11C13C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_11C184(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_11C1C4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_11C204()
{
  result = qword_22C850;
  if (!qword_22C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C850);
  }

  return result;
}

uint64_t sub_11C258(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22C858, &qword_1C7058);
    sub_11C13C(a2, type metadata accessor for SeedBasedRecommendationRequest, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_11C2F4()
{
  result = qword_22C870;
  if (!qword_22C870)
  {
    sub_1CC1C(&qword_22A410, &qword_1C0110);
    sub_11C13C(&qword_22C878, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_11C3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C870);
  }

  return result;
}

unint64_t sub_11C3B0()
{
  result = qword_22C880;
  if (!qword_22C880)
  {
    sub_1CC1C(&qword_229710, &unk_1D32C0);
    sub_11C434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C880);
  }

  return result;
}

unint64_t sub_11C434()
{
  result = qword_22C888;
  if (!qword_22C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C888);
  }

  return result;
}

unint64_t sub_11C488()
{
  result = qword_22C890;
  if (!qword_22C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C890);
  }

  return result;
}

unint64_t sub_11C4DC()
{
  result = qword_22C898;
  if (!qword_22C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C898);
  }

  return result;
}

unint64_t sub_11C538()
{
  result = qword_22C8B8;
  if (!qword_22C8B8)
  {
    sub_1CC1C(&qword_22A410, &qword_1C0110);
    sub_11C13C(&qword_22C8C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_11C5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C8B8);
  }

  return result;
}

unint64_t sub_11C5F4()
{
  result = qword_22C8C8;
  if (!qword_22C8C8)
  {
    sub_1CC1C(&qword_229710, &unk_1D32C0);
    sub_11C678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C8C8);
  }

  return result;
}

unint64_t sub_11C678()
{
  result = qword_22C8D0;
  if (!qword_22C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C8D0);
  }

  return result;
}

unint64_t sub_11C6CC()
{
  result = qword_22C8D8;
  if (!qword_22C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C8D8);
  }

  return result;
}

unint64_t sub_11C720()
{
  result = qword_22C8E0;
  if (!qword_22C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C8E0);
  }

  return result;
}

unint64_t sub_11C7DC()
{
  result = qword_22C900;
  if (!qword_22C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C900);
  }

  return result;
}

unint64_t sub_11C830()
{
  result = qword_22C908;
  if (!qword_22C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C908);
  }

  return result;
}

unint64_t sub_11C884()
{
  result = qword_22C910;
  if (!qword_22C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C910);
  }

  return result;
}

unint64_t sub_11C8D8()
{
  result = qword_22C918;
  if (!qword_22C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C918);
  }

  return result;
}

unint64_t sub_11C92C()
{
  result = qword_22C938;
  if (!qword_22C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C938);
  }

  return result;
}

unint64_t sub_11C984()
{
  result = qword_22C940;
  if (!qword_22C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C940);
  }

  return result;
}

unint64_t sub_11CA04()
{
  result = qword_22C948;
  if (!qword_22C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C948);
  }

  return result;
}

unint64_t sub_11CA58()
{
  result = qword_22C950;
  if (!qword_22C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C950);
  }

  return result;
}

unint64_t sub_11CAAC(uint64_t a1)
{
  result = sub_11CAD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_11CAD4()
{
  result = qword_22C958;
  if (!qword_22C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C958);
  }

  return result;
}

uint64_t sub_11CB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_11CB90()
{
  result = qword_22C960;
  if (!qword_22C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C960);
  }

  return result;
}

unint64_t sub_11CBE4()
{
  result = qword_22C968;
  if (!qword_22C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C968);
  }

  return result;
}

__n128 sub_11CC38(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 155) = *(a2 + 155);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_11CC74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 171))
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

uint64_t sub_11CCBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 170) = 0;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 171) = 1;
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

    *(result + 171) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_11CD4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_11CD94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_11CDE4(uint64_t a1)
{
  sub_11CEB4(319);
  if (v1 <= 0x3F)
  {
    sub_11CF58(319);
    if (v2 <= 0x3F)
    {
      sub_11CFE8(319);
      if (v3 <= 0x3F)
      {
        sub_11D064(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_11CEB4(uint64_t a1)
{
  if (!qword_22C9F0)
  {
    sub_1CC1C(&qword_229500, &unk_1BC580);
    sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
    v1 = sub_1B43B4();
    if (!v2)
    {
      atomic_store(v1, &qword_22C9F0);
    }
  }
}

void sub_11CF58(uint64_t a1)
{
  if (!qword_22C9F8)
  {
    sub_1CC1C(&qword_228F38, &qword_1BCB50);
    sub_1CC1C(&qword_22C730, &qword_1C6FB0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_22C9F8);
    }
  }
}

void sub_11CFE8(uint64_t a1)
{
  if (!qword_22CA00)
  {
    sub_1CC1C(&qword_228F38, &qword_1BCB50);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_22CA00);
    }
  }
}

void sub_11D064(uint64_t a1)
{
  if (!qword_22CA08)
  {
    sub_1CC1C(&qword_228F38, &qword_1BCB50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_22CA08);
    }
  }
}

uint64_t sub_11D154(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1240))
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

uint64_t sub_11D19C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1240) = 1;
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

    *(result + 1240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of CollectionRecommendationServiceType.recommend(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InternalCollectionRecommendationServiceType.recommend(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_7A038;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_11D5C0(uint64_t a1)
{
  result = sub_1B4644();
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

uint64_t getEnumTagSinglePayload for CollectionRecommendationSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 7;
  v9 = v7 - 7;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CollectionRecommendationSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_11D7CC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 7)
  {
    return v1 - 6;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_11D7E0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 6;
  }

  return result;
}

uint64_t sub_11D854(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_11D8E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_11DA9C()
{
  result = qword_22CB38;
  if (!qword_22CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CB38);
  }

  return result;
}

unint64_t sub_11DAF4()
{
  result = qword_22CB40;
  if (!qword_22CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CB40);
  }

  return result;
}

unint64_t sub_11DB4C()
{
  result = qword_22CB48;
  if (!qword_22CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CB48);
  }

  return result;
}

unint64_t sub_11DBA4()
{
  result = qword_22CB50;
  if (!qword_22CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CB50);
  }

  return result;
}

unint64_t sub_11DBFC()
{
  result = qword_22CB58;
  if (!qword_22CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CB58);
  }

  return result;
}

unint64_t sub_11DC54()
{
  result = qword_22CB60;
  if (!qword_22CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CB60);
  }

  return result;
}

unint64_t sub_11DCAC()
{
  result = qword_22CB68;
  if (!qword_22CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CB68);
  }

  return result;
}

unint64_t sub_11DD04()
{
  result = qword_22CB70;
  if (!qword_22CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CB70);
  }

  return result;
}

unint64_t sub_11DD5C()
{
  result = qword_22CB78;
  if (!qword_22CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CB78);
  }

  return result;
}

unint64_t sub_11DDB4()
{
  result = qword_22CB80;
  if (!qword_22CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CB80);
  }

  return result;
}

unint64_t sub_11DE0C()
{
  result = qword_22CB88;
  if (!qword_22CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CB88);
  }

  return result;
}

unint64_t sub_11DE64()
{
  result = qword_22CB90;
  if (!qword_22CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CB90);
  }

  return result;
}

unint64_t sub_11DEBC()
{
  result = qword_22CB98;
  if (!qword_22CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CB98);
  }

  return result;
}

unint64_t sub_11DF14()
{
  result = qword_22CBA0;
  if (!qword_22CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CBA0);
  }

  return result;
}

unint64_t sub_11DF6C()
{
  result = qword_22CBA8;
  if (!qword_22CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CBA8);
  }

  return result;
}

unint64_t sub_11DFC4()
{
  result = qword_22CBB0;
  if (!qword_22CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CBB0);
  }

  return result;
}

unint64_t sub_11E01C()
{
  result = qword_22CBB8;
  if (!qword_22CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CBB8);
  }

  return result;
}

unint64_t sub_11E074()
{
  result = qword_22CBC0;
  if (!qword_22CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CBC0);
  }

  return result;
}

unint64_t sub_11E0CC()
{
  result = qword_22CBC8;
  if (!qword_22CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CBC8);
  }

  return result;
}

unint64_t sub_11E124()
{
  result = qword_22CBD0;
  if (!qword_22CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CBD0);
  }

  return result;
}

unint64_t sub_11E17C()
{
  result = qword_22CBD8;
  if (!qword_22CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CBD8);
  }

  return result;
}

unint64_t sub_11E1D4()
{
  result = qword_22CBE0;
  if (!qword_22CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CBE0);
  }

  return result;
}

unint64_t sub_11E22C()
{
  result = qword_22CBE8;
  if (!qword_22CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CBE8);
  }

  return result;
}

unint64_t sub_11E284()
{
  result = qword_22CBF0;
  if (!qword_22CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CBF0);
  }

  return result;
}

unint64_t sub_11E2DC()
{
  result = qword_22CBF8;
  if (!qword_22CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CBF8);
  }

  return result;
}

unint64_t sub_11E334()
{
  result = qword_22CC00;
  if (!qword_22CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC00);
  }

  return result;
}

unint64_t sub_11E38C()
{
  result = qword_22CC08;
  if (!qword_22CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC08);
  }

  return result;
}

unint64_t sub_11E3E4()
{
  result = qword_22CC10;
  if (!qword_22CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC10);
  }

  return result;
}

unint64_t sub_11E43C()
{
  result = qword_22CC18;
  if (!qword_22CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC18);
  }

  return result;
}

unint64_t sub_11E494()
{
  result = qword_22CC20;
  if (!qword_22CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC20);
  }

  return result;
}

unint64_t sub_11E4EC()
{
  result = qword_22CC28;
  if (!qword_22CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC28);
  }

  return result;
}

unint64_t sub_11E544()
{
  result = qword_22CC30;
  if (!qword_22CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC30);
  }

  return result;
}

unint64_t sub_11E59C()
{
  result = qword_22CC38;
  if (!qword_22CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC38);
  }

  return result;
}

unint64_t sub_11E5F4()
{
  result = qword_22CC40;
  if (!qword_22CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC40);
  }

  return result;
}

unint64_t sub_11E64C()
{
  result = qword_22CC48;
  if (!qword_22CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC48);
  }

  return result;
}

unint64_t sub_11E6A4()
{
  result = qword_22CC50;
  if (!qword_22CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC50);
  }

  return result;
}

unint64_t sub_11E6FC()
{
  result = qword_22CC58;
  if (!qword_22CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC58);
  }

  return result;
}

unint64_t sub_11E754()
{
  result = qword_22CC60;
  if (!qword_22CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC60);
  }

  return result;
}

unint64_t sub_11E7AC()
{
  result = qword_22CC68;
  if (!qword_22CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC68);
  }

  return result;
}

unint64_t sub_11E804()
{
  result = qword_22CC70;
  if (!qword_22CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC70);
  }

  return result;
}

unint64_t sub_11E85C()
{
  result = qword_22CC78;
  if (!qword_22CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC78);
  }

  return result;
}

unint64_t sub_11E8B4()
{
  result = qword_22CC80;
  if (!qword_22CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC80);
  }

  return result;
}

unint64_t sub_11E90C()
{
  result = qword_22CC88;
  if (!qword_22CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC88);
  }

  return result;
}

unint64_t sub_11E964()
{
  result = qword_22CC90;
  if (!qword_22CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC90);
  }

  return result;
}

unint64_t sub_11E9BC()
{
  result = qword_22CC98;
  if (!qword_22CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CC98);
  }

  return result;
}

unint64_t sub_11EA14()
{
  result = qword_22CCA0;
  if (!qword_22CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCA0);
  }

  return result;
}

unint64_t sub_11EA6C()
{
  result = qword_22CCA8;
  if (!qword_22CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCA8);
  }

  return result;
}

unint64_t sub_11EAC4()
{
  result = qword_22CCB0;
  if (!qword_22CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCB0);
  }

  return result;
}

unint64_t sub_11EB1C()
{
  result = qword_22CCB8;
  if (!qword_22CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCB8);
  }

  return result;
}

unint64_t sub_11EB74()
{
  result = qword_22CCC0;
  if (!qword_22CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCC0);
  }

  return result;
}

unint64_t sub_11EBCC()
{
  result = qword_22CCC8;
  if (!qword_22CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCC8);
  }

  return result;
}

unint64_t sub_11EC24()
{
  result = qword_22CCD0;
  if (!qword_22CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCD0);
  }

  return result;
}

unint64_t sub_11EC7C()
{
  result = qword_22CCD8;
  if (!qword_22CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCD8);
  }

  return result;
}

unint64_t sub_11ECD4()
{
  result = qword_22CCE0;
  if (!qword_22CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCE0);
  }

  return result;
}

unint64_t sub_11ED2C()
{
  result = qword_22CCE8;
  if (!qword_22CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCE8);
  }

  return result;
}

unint64_t sub_11ED84()
{
  result = qword_22CCF0;
  if (!qword_22CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCF0);
  }

  return result;
}

unint64_t sub_11EDDC()
{
  result = qword_22CCF8;
  if (!qword_22CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CCF8);
  }

  return result;
}

unint64_t sub_11EE34()
{
  result = qword_22CD00;
  if (!qword_22CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CD00);
  }

  return result;
}

unint64_t sub_11EE8C()
{
  result = qword_22CD08;
  if (!qword_22CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CD08);
  }

  return result;
}

unint64_t sub_11EEE4()
{
  result = qword_22CD10;
  if (!qword_22CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CD10);
  }

  return result;
}

unint64_t sub_11EF3C()
{
  result = qword_22CD18;
  if (!qword_22CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CD18);
  }

  return result;
}

unint64_t sub_11EF94()
{
  result = qword_22CD20;
  if (!qword_22CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CD20);
  }

  return result;
}

uint64_t sub_11EFE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_11F0E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802465122 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736B6F6F62 && a2 == 0xE500000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D4FE0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x417942736B6F6F62 && a2 == 0xED0000726F687475 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000000001D4740 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x476E49736B6F6F62 && a2 == 0xEC00000065726E65 || (sub_1B5604() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000001D4760 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000001D4780 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000000001D47A0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x736569726573 && a2 == 0xE600000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65536E497478656ELL && a2 == 0xEC00000073656972 || (sub_1B5604() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65536E4965726F6DLL && a2 == 0xEC00000073656972 || (sub_1B5604() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6867696C68676968 && a2 == 0xEA00000000007374)
  {

    return 12;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_11F50C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6D6F636572 && a2 == 0xEF736E6F69746164;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000000001D7C50 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000000001D7C70 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000001D7C90 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000001D7CB0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t *sub_11F6D0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = result;
  v21 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + v15);

    v17 = sub_2AF30(v16, a4);

    if (v17)
    {
      *(v20 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_56670(v20, a2, v21, a3);
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
      return sub_56670(v20, a2, v21, a3);
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

unint64_t *sub_11F82C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_11AA34(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_11F6D0((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_11F9EC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_7A038;

  return sub_10F38C(a1, a2, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_11FADC()
{
  result = qword_22CD60;
  if (!qword_22CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CD60);
  }

  return result;
}

uint64_t sub_11FB30()
{

  if (v0[5])
  {

    if (v0[120])
    {
    }

    if (v0[123])
    {
    }

    if (v0[131])
    {
    }

    if (v0[141])
    {
    }
  }

  if (v0[155])
  {
  }

  return _swift_deallocObject(v0, 1256, 7);
}

void *sub_11FCC0(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_11FD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22CD48, &qword_1C9170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_11FE3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_11FF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22B498, &qword_1C3A60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_11FFCC()
{
  v1 = sub_1B4644();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  sub_2BF8(v0 + 4);
  sub_1201BC(*(v0 + 9), *(v0 + 10), *(v0 + 11), *(v0 + 12), *(v0 + 13), *(v0 + 14), *(v0 + 15), *(v0 + 16));

  if (*(v0 + 131))
  {
  }

  if (*(v0 + 134))
  {
  }

  if (*(v0 + 142))
  {
  }

  if (*(v0 + 152))
  {
  }

  v5 = (v3 + 1273) & ~v3;

  (*(v2 + 8))(&v0[v5], v1);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t sub_1201BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v8 = a7 >> 61;
  if ((a7 >> 61) > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        return v9;
      }
    }

    else if (v8 != 4)
    {
    }
  }
}

uint64_t sub_12025C(uint64_t a1)
{
  sub_1B4644();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 1264);
  v7 = *(v1 + 1272);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226C;

  return sub_11016C(a1, v4, v5, v1 + 32, v1 + 72, v1 + 144, v6, v7);
}

uint64_t sub_120378()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1203B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7A038;

  return sub_797FC(a1, v4);
}

unint64_t sub_120468()
{
  result = qword_22CD88;
  if (!qword_22CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CD88);
  }

  return result;
}

uint64_t sub_120518(uint64_t a1)
{
  v2 = sub_124EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_120554(uint64_t a1)
{
  v2 = sub_124EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_120618(uint64_t a1)
{
  v2 = sub_124F0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_120654(uint64_t a1)
{
  v2 = sub_124F0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_120718(uint64_t a1)
{
  v2 = sub_124F60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_120754(uint64_t a1)
{
  v2 = sub_124F60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_120818(uint64_t a1)
{
  v2 = sub_124FB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_120854(uint64_t a1)
{
  v2 = sub_124FB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_120918(uint64_t a1)
{
  v2 = sub_125008();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_120954(uint64_t a1)
{
  v2 = sub_125008();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_120A18(uint64_t a1)
{
  v2 = sub_12505C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_120A54(uint64_t a1)
{
  v2 = sub_12505C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_120B18(uint64_t a1)
{
  v2 = sub_1250B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_120B54(uint64_t a1)
{
  v2 = sub_1250B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_120C18(uint64_t a1)
{
  v2 = sub_125104();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_120C54(uint64_t a1)
{
  v2 = sub_125104();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_120D18(uint64_t a1)
{
  v2 = sub_125158();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_120D54(uint64_t a1)
{
  v2 = sub_125158();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_120E18(uint64_t a1)
{
  v2 = sub_1251AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_120E54(uint64_t a1)
{
  v2 = sub_1251AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_120F18(uint64_t a1)
{
  v2 = sub_125200();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_120F54(uint64_t a1)
{
  v2 = sub_125200();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_121018(uint64_t a1)
{
  v2 = sub_125254();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_121054(uint64_t a1)
{
  v2 = sub_125254();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_121118(uint64_t a1)
{
  v2 = sub_1252A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_121154(uint64_t a1)
{
  v2 = sub_1252A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_121218(uint64_t a1)
{
  v2 = sub_1252FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_121254(uint64_t a1)
{
  v2 = sub_1252FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_121318(uint64_t a1)
{
  v2 = sub_125350();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_121354(uint64_t a1)
{
  v2 = sub_125350();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_121418(uint64_t a1)
{
  v2 = sub_1253A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_121454(uint64_t a1)
{
  v2 = sub_1253A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_121518(uint64_t a1)
{
  v2 = sub_1253F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_121554(uint64_t a1)
{
  v2 = sub_1253F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_121618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1216A4(uint64_t a1)
{
  v2 = sub_12544C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1216E0(uint64_t a1)
{
  v2 = sub_12544C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_121760@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, double *a6@<X8>)
{
  v16 = a6;
  v9 = sub_2B0C(a2, a3);
  v17 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  sub_2698(a1, a1[3]);
  a4();
  sub_1B5864();
  if (v6)
  {
    return sub_2BF8(a1);
  }

  v12 = v16;
  sub_1B53D4();
  v14 = v13;
  (*(v17 + 8))(v11, v9);
  result = sub_2BF8(a1);
  *v12 = v14;
  return result;
}

uint64_t sub_121918(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_2B0C(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_2698(a1, a1[3]);
  a6();
  sub_1B5884();
  sub_1B5514();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_121A5C(char a1)
{
  result = 0x6E61576F54646461;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x72706D496B6F6F62;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0x637275506B6F6F62;
      break;
    case 5:
      result = 0x527361576B6F6F62;
      break;
    case 6:
      result = 0x64616F6C6E776F64;
      break;
    case 7:
      result = 0x746963696C707865;
      break;
    case 8:
      result = 0x6B6F6F4265646968;
      break;
    case 9:
      result = 0x694673416B72616DLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x676E69746172;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x615365766F6D6572;
      break;
    case 14:
      result = 0x4C74736567677573;
      break;
    case 15:
      result = 0x4D74736567677573;
      break;
    case 16:
      result = 0x6572616873;
      break;
    case 17:
      result = 0x657461726E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_121CE4(void *a1)
{
  v3 = v1;
  v5 = sub_2B0C(&qword_22CDE8, &qword_1C9460);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_2698(a1, a1[3]);
  sub_12405C();
  sub_1B5884();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_1240B0();
  sub_1B5544();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    sub_124104();
    sub_1B5544();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    sub_124158();
    sub_1B5544();
    v11 = v3[3];
    HIBYTE(v10) = 3;
    sub_1241AC();
    sub_1B5544();
    v11 = v3[4];
    HIBYTE(v10) = 4;
    sub_124200();
    sub_1B5544();
    v11 = v3[5];
    HIBYTE(v10) = 5;
    sub_124254();
    sub_1B5544();
    v11 = v3[6];
    HIBYTE(v10) = 6;
    sub_1242A8();
    sub_1B5544();
    v11 = v3[7];
    HIBYTE(v10) = 7;
    sub_1242FC();
    sub_1B5544();
    v11 = v3[8];
    HIBYTE(v10) = 8;
    sub_124350();
    sub_1B5544();
    v11 = v3[9];
    HIBYTE(v10) = 9;
    sub_1243A4();
    sub_1B5544();
    v11 = v3[10];
    HIBYTE(v10) = 10;
    sub_1243F8();
    sub_1B5544();
    v11 = v3[11];
    HIBYTE(v10) = 11;
    sub_12444C();
    sub_1B5544();
    v11 = v3[12];
    HIBYTE(v10) = 12;
    sub_1244A0();
    sub_1B5544();
    v11 = v3[13];
    HIBYTE(v10) = 13;
    sub_1244F4();
    sub_1B5544();
    v11 = v3[14];
    HIBYTE(v10) = 14;
    sub_124548();
    sub_1B5544();
    v11 = v3[15];
    HIBYTE(v10) = 15;
    sub_12459C();
    sub_1B5544();
    v11 = v3[16];
    HIBYTE(v10) = 16;
    sub_1245F0();
    sub_1B5544();
    v11 = v3[17];
    HIBYTE(v10) = 17;
    sub_124644();
    sub_1B5544();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_122280@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_123874(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1222A8(uint64_t a1)
{
  v2 = sub_12405C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1222E4(uint64_t a1)
{
  v2 = sub_12405C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_122320@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_12312C(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v8[8];
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_122394()
{
  v1 = *v0;
  v2 = 0x746E65764578616DLL;
  v3 = 0x6E6F43746E657665;
  v4 = 0x614E74757074756FLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65726E654778616DLL;
  if (v1 != 1)
  {
    v5 = 0x6F6874754178616DLL;
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

uint64_t sub_12247C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_123E3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1224A4(uint64_t a1)
{
  v2 = sub_122848();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1224E0(uint64_t a1)
{
  v2 = sub_122848();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkServiceConfiguration.EventAggregationConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2B0C(&qword_22CDA8, &unk_1C9220);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v9 = *(v3 + 8);
  v20 = *(v3 + 16);
  v21 = v9;
  v10 = *(v3 + 176);
  v19 = *(v3 + 168);
  v18 = v10;
  sub_2698(a1, a1[3]);
  sub_122848();
  sub_1B5884();
  LOBYTE(v22) = 0;
  sub_1B5534();
  if (!v2)
  {
    v11 = v19;
    v12 = v18;
    LOBYTE(v22) = 1;
    sub_1B5534();
    LOBYTE(v22) = 2;
    sub_1B5534();
    v13 = *(v3 + 104);
    v14 = *(v3 + 136);
    v28 = *(v3 + 120);
    v29 = v14;
    v30 = *(v3 + 152);
    v15 = *(v3 + 40);
    v16 = *(v3 + 72);
    v24 = *(v3 + 56);
    v25 = v16;
    v26 = *(v3 + 88);
    v27 = v13;
    v22 = *(v3 + 24);
    v23 = v15;
    v31 = 3;
    sub_12289C();
    sub_1B5544();
    *&v22 = v11;
    v31 = 4;
    sub_2B0C(&qword_228590, &qword_1B6590);
    sub_122D64(&qword_228598, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1B5544();
    *&v22 = v12;
    v31 = 5;
    sub_1B5544();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_122848()
{
  result = qword_22CDB0;
  if (!qword_22CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CDB0);
  }

  return result;
}

unint64_t sub_12289C()
{
  result = qword_22CDB8;
  if (!qword_22CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CDB8);
  }

  return result;
}

uint64_t WorkServiceConfiguration.EventAggregationConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22CDC0, &qword_1C9230);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - v7;
  v9 = a1[3];
  v61 = a1;
  sub_2698(a1, v9);
  sub_122848();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(v61);
  }

  LOBYTE(v28[0]) = 0;
  v24 = sub_1B53F4();
  LOBYTE(v28[0]) = 1;
  v23 = sub_1B53F4();
  LOBYTE(v28[0]) = 2;
  v22 = sub_1B53F4();
  v42 = 3;
  sub_122D10();
  sub_1B5404();
  v58 = v49;
  v59 = v50;
  v60 = v51;
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  sub_2B0C(&qword_228590, &qword_1B6590);
  LOBYTE(v25) = 4;
  v21[1] = sub_122D64(&qword_2285C0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1B5404();
  v10 = v28[0];
  v40 = 5;
  sub_1B5404();
  (*(v6 + 8))(v8, v5);
  *(&v26[1] + 8) = v53;
  *(&v26[2] + 8) = v54;
  *(&v26[5] + 8) = v57;
  *(&v26[6] + 8) = v58;
  *(&v26[7] + 8) = v59;
  *(&v26[8] + 8) = v60;
  *(&v26[3] + 8) = v55;
  *(&v26[4] + 8) = v56;
  v11 = v41;
  v12 = v23;
  v13 = v24;
  *&v25 = v24;
  *(&v25 + 1) = v23;
  v14 = v22;
  *&v26[0] = v22;
  *(v26 + 8) = v52;
  *(&v26[9] + 1) = v10;
  v27 = v41;
  *(a2 + 176) = v41;
  v15 = v26[8];
  *(a2 + 128) = v26[7];
  *(a2 + 144) = v15;
  v16 = v26[4];
  *(a2 + 64) = v26[3];
  *(a2 + 80) = v16;
  v17 = v26[6];
  *(a2 + 96) = v26[5];
  *(a2 + 112) = v17;
  v18 = v26[0];
  *a2 = v25;
  *(a2 + 16) = v18;
  v19 = v26[2];
  *(a2 + 32) = v26[1];
  *(a2 + 48) = v19;
  *(a2 + 160) = v26[9];
  sub_122DD0(&v25, v28);
  sub_2BF8(v61);
  v34 = v57;
  v35 = v58;
  v36 = v59;
  v37 = v60;
  v30 = v53;
  v31 = v54;
  v32 = v55;
  v33 = v56;
  v28[0] = v13;
  v28[1] = v12;
  v29 = v52;
  v28[2] = v14;
  v38 = v10;
  v39 = v11;
  return sub_122E08(v28);
}

unint64_t sub_122D10()
{
  result = qword_22CDC8;
  if (!qword_22CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CDC8);
  }

  return result;
}

uint64_t sub_122D64(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_228590, &qword_1B6590);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_122E68(uint64_t a1, __int128 *a2)
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
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_122EA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_122EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_122F68(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_122F94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_122FB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 144) = v3;
  return result;
}

unint64_t sub_123028()
{
  result = qword_22CDD0;
  if (!qword_22CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CDD0);
  }

  return result;
}

unint64_t sub_123080()
{
  result = qword_22CDD8;
  if (!qword_22CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CDD8);
  }

  return result;
}

unint64_t sub_1230D8()
{
  result = qword_22CDE0;
  if (!qword_22CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CDE0);
  }

  return result;
}

uint64_t sub_12312C@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22CE88, &qword_1C9468);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  sub_2698(a1, a1[3]);
  sub_12405C();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v53 = 0;
  sub_124698();
  sub_1B5374();
  v9 = 0.0;
  if (v52)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v51;
  }

  v53 = 1;
  sub_1246EC();
  sub_1B5374();
  if (!v52)
  {
    v9 = v51;
  }

  v53 = 2;
  sub_124740();
  sub_1B5374();
  v11 = 0.0;
  if (v52)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v51;
  }

  v53 = 3;
  sub_124794();
  sub_1B5374();
  if (!v52)
  {
    v11 = v51;
  }

  v53 = 4;
  sub_1247E8();
  sub_1B5374();
  v13 = 0.0;
  if (v52)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v51;
  }

  v53 = 5;
  sub_12483C();
  sub_1B5374();
  if (!v52)
  {
    v13 = v51;
  }

  v53 = 6;
  sub_124890();
  sub_1B5374();
  if (v52)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v51;
  }

  v53 = 7;
  sub_1248E4();
  sub_1B5374();
  v16 = v51;
  if (v52)
  {
    v16 = 0.0;
  }

  v50 = v16;
  v53 = 8;
  sub_124938();
  sub_1B5374();
  v17 = v51;
  if (v52)
  {
    v17 = 0.0;
  }

  v49 = v17;
  v53 = 9;
  sub_12498C();
  sub_1B5374();
  v18 = v51;
  if (v52)
  {
    v18 = 0.0;
  }

  v48 = v18;
  v53 = 10;
  sub_1249E0();
  sub_1B5374();
  v19 = v51;
  if (v52)
  {
    v19 = 0.0;
  }

  v47 = v19;
  v53 = 11;
  sub_124A34();
  sub_1B5374();
  v20 = v51;
  if (v52)
  {
    v20 = 0.0;
  }

  v46 = v20;
  v53 = 12;
  sub_124A88();
  sub_1B5374();
  v21 = v51;
  if (v52)
  {
    v21 = 0.0;
  }

  v45 = v21;
  v53 = 13;
  sub_124ADC();
  sub_1B5374();
  v22 = v51;
  if (v52)
  {
    v22 = 0.0;
  }

  v44 = v22;
  v53 = 14;
  sub_124B30();
  sub_1B5374();
  v23 = v51;
  if (v52)
  {
    v23 = 0.0;
  }

  v43 = v23;
  v53 = 15;
  sub_124B84();
  sub_1B5374();
  v24 = v51;
  if (v52)
  {
    v24 = 0.0;
  }

  v42 = v24;
  v53 = 16;
  sub_124BD8();
  sub_1B5374();
  v25 = v51;
  v26 = v52;
  v53 = 17;
  sub_124C2C();
  sub_1B5374();
  v28 = 0.0;
  if (!v26)
  {
    v28 = v25;
  }

  v29 = 0.0;
  v41 = v28;
  (*(v6 + 8))(v8, v5);
  if (!v52)
  {
    v29 = v51;
  }

  result = sub_2BF8(a1);
  *a2 = v10;
  a2[1] = v9;
  a2[2] = v12;
  a2[3] = v11;
  a2[4] = v14;
  a2[5] = v13;
  v31 = v49;
  v30 = v50;
  a2[6] = v15;
  a2[7] = v30;
  v33 = v47;
  v32 = v48;
  a2[8] = v31;
  a2[9] = v32;
  v35 = v45;
  v34 = v46;
  a2[10] = v33;
  a2[11] = v34;
  v37 = v43;
  v36 = v44;
  a2[12] = v35;
  a2[13] = v36;
  v38 = v41;
  v39 = v42;
  a2[14] = v37;
  a2[15] = v39;
  a2[16] = v38;
  a2[17] = v29;
  return result;
}

uint64_t sub_123874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61576F54646461 && a2 == 0xEF646165526F5474;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000001D5E80 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72706D496B6F6F62 && a2 == 0xEE006E6F69737365 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000000001D5E60 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x637275506B6F6F62 && a2 == 0xED00006465736168 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x527361576B6F6F62 && a2 == 0xEB00000000646165 || (sub_1B5604() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEE00656C706D6153 || (sub_1B5604() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xEF656E696C636544 || (sub_1B5604() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6B6F6F4265646968 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x694673416B72616DLL && a2 == 0xEE0064656873696ELL || (sub_1B5604() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000001D5E40 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000001D5E20 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x615365766F6D6572 && a2 == 0xEC000000656C706DLL || (sub_1B5604() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x4C74736567677573 && a2 == 0xEB00000000737365 || (sub_1B5604() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x4D74736567677573 && a2 == 0xEB0000000065726FLL || (sub_1B5604() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6572616873 && a2 == 0xE500000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x657461726E75 && a2 == 0xE600000000000000)
  {

    return 17;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_123E3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65764578616DLL && a2 == 0xE900000000000073;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726E654778616DLL && a2 == 0xEB00000000734449 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6874754178616DLL && a2 == 0xEC00000073444972 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F43746E657665 && a2 == 0xEF736E6F69746964 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614E74757074756FLL && a2 == 0xEB0000000073656DLL || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000001D7CD0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_12405C()
{
  result = qword_22CDF0;
  if (!qword_22CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CDF0);
  }

  return result;
}

unint64_t sub_1240B0()
{
  result = qword_22CDF8;
  if (!qword_22CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CDF8);
  }

  return result;
}

unint64_t sub_124104()
{
  result = qword_22CE00;
  if (!qword_22CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE00);
  }

  return result;
}

unint64_t sub_124158()
{
  result = qword_22CE08;
  if (!qword_22CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE08);
  }

  return result;
}

unint64_t sub_1241AC()
{
  result = qword_22CE10;
  if (!qword_22CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE10);
  }

  return result;
}

unint64_t sub_124200()
{
  result = qword_22CE18;
  if (!qword_22CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE18);
  }

  return result;
}

unint64_t sub_124254()
{
  result = qword_22CE20;
  if (!qword_22CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE20);
  }

  return result;
}

unint64_t sub_1242A8()
{
  result = qword_22CE28;
  if (!qword_22CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE28);
  }

  return result;
}

unint64_t sub_1242FC()
{
  result = qword_22CE30;
  if (!qword_22CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE30);
  }

  return result;
}

unint64_t sub_124350()
{
  result = qword_22CE38;
  if (!qword_22CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE38);
  }

  return result;
}

unint64_t sub_1243A4()
{
  result = qword_22CE40;
  if (!qword_22CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE40);
  }

  return result;
}

unint64_t sub_1243F8()
{
  result = qword_22CE48;
  if (!qword_22CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE48);
  }

  return result;
}

unint64_t sub_12444C()
{
  result = qword_22CE50;
  if (!qword_22CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE50);
  }

  return result;
}

unint64_t sub_1244A0()
{
  result = qword_22CE58;
  if (!qword_22CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE58);
  }

  return result;
}

unint64_t sub_1244F4()
{
  result = qword_22CE60;
  if (!qword_22CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE60);
  }

  return result;
}

unint64_t sub_124548()
{
  result = qword_22CE68;
  if (!qword_22CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE68);
  }

  return result;
}

unint64_t sub_12459C()
{
  result = qword_22CE70;
  if (!qword_22CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE70);
  }

  return result;
}

unint64_t sub_1245F0()
{
  result = qword_22CE78;
  if (!qword_22CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE78);
  }

  return result;
}

unint64_t sub_124644()
{
  result = qword_22CE80;
  if (!qword_22CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE80);
  }

  return result;
}

unint64_t sub_124698()
{
  result = qword_22CE90;
  if (!qword_22CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE90);
  }

  return result;
}

unint64_t sub_1246EC()
{
  result = qword_22CE98;
  if (!qword_22CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CE98);
  }

  return result;
}

unint64_t sub_124740()
{
  result = qword_22CEA0;
  if (!qword_22CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CEA0);
  }

  return result;
}

unint64_t sub_124794()
{
  result = qword_22CEA8;
  if (!qword_22CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CEA8);
  }

  return result;
}

unint64_t sub_1247E8()
{
  result = qword_22CEB0;
  if (!qword_22CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CEB0);
  }

  return result;
}

unint64_t sub_12483C()
{
  result = qword_22CEB8;
  if (!qword_22CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CEB8);
  }

  return result;
}

unint64_t sub_124890()
{
  result = qword_22CEC0;
  if (!qword_22CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CEC0);
  }

  return result;
}

unint64_t sub_1248E4()
{
  result = qword_22CEC8;
  if (!qword_22CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CEC8);
  }

  return result;
}

unint64_t sub_124938()
{
  result = qword_22CED0;
  if (!qword_22CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CED0);
  }

  return result;
}

unint64_t sub_12498C()
{
  result = qword_22CED8;
  if (!qword_22CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CED8);
  }

  return result;
}

unint64_t sub_1249E0()
{
  result = qword_22CEE0;
  if (!qword_22CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CEE0);
  }

  return result;
}

unint64_t sub_124A34()
{
  result = qword_22CEE8;
  if (!qword_22CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CEE8);
  }

  return result;
}

unint64_t sub_124A88()
{
  result = qword_22CEF0;
  if (!qword_22CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CEF0);
  }

  return result;
}

unint64_t sub_124ADC()
{
  result = qword_22CEF8;
  if (!qword_22CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CEF8);
  }

  return result;
}

unint64_t sub_124B30()
{
  result = qword_22CF00;
  if (!qword_22CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CF00);
  }

  return result;
}

unint64_t sub_124B84()
{
  result = qword_22CF08;
  if (!qword_22CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CF08);
  }

  return result;
}

unint64_t sub_124BD8()
{
  result = qword_22CF10;
  if (!qword_22CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CF10);
  }

  return result;
}

unint64_t sub_124C2C()
{
  result = qword_22CF18;
  if (!qword_22CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CF18);
  }

  return result;
}

unint64_t sub_124DB4()
{
  result = qword_22CF20;
  if (!qword_22CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CF20);
  }

  return result;
}

unint64_t sub_124E0C()
{
  result = qword_22CF28;
  if (!qword_22CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CF28);
  }

  return result;
}

unint64_t sub_124E64()
{
  result = qword_22CF30;
  if (!qword_22CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CF30);
  }

  return result;
}

unint64_t sub_124EB8()
{
  result = qword_22CF40;
  if (!qword_22CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CF40);
  }

  return result;
}

unint64_t sub_124F0C()
{
  result = qword_22CF50;
  if (!qword_22CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CF50);
  }

  return result;
}

unint64_t sub_124F60()
{
  result = qword_22CF60;
  if (!qword_22CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CF60);
  }

  return result;
}

unint64_t sub_124FB4()
{
  result = qword_22CF70;
  if (!qword_22CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CF70);
  }

  return result;
}

unint64_t sub_125008()
{
  result = qword_22CF80;
  if (!qword_22CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CF80);
  }

  return result;
}

unint64_t sub_12505C()
{
  result = qword_22CF90;
  if (!qword_22CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CF90);
  }

  return result;
}

unint64_t sub_1250B0()
{
  result = qword_22CFA0;
  if (!qword_22CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CFA0);
  }

  return result;
}

unint64_t sub_125104()
{
  result = qword_22CFB0;
  if (!qword_22CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CFB0);
  }

  return result;
}

unint64_t sub_125158()
{
  result = qword_22CFC0;
  if (!qword_22CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CFC0);
  }

  return result;
}

unint64_t sub_1251AC()
{
  result = qword_22CFD0;
  if (!qword_22CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CFD0);
  }

  return result;
}

unint64_t sub_125200()
{
  result = qword_22CFE0;
  if (!qword_22CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CFE0);
  }

  return result;
}

unint64_t sub_125254()
{
  result = qword_22CFF0;
  if (!qword_22CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22CFF0);
  }

  return result;
}